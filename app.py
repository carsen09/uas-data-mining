import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import plotly.graph_objects as go
import networkx as nx
import re

# ----------------------------------
#              App Config
# ----------------------------------
st.set_page_config(page_title="Shop Mining Dashboard", layout="wide")

# ----------------------------------
#             Sidebar
# ----------------------------------
st.sidebar.image(
    "https://raw.githubusercontent.com/Leo42night/Leo42night/main/img/logo_shopmining.png",
    caption="[datamininguntan.my.id](https://datamininguntan.my.id/)"
)
st.sidebar.caption(
    """
    Data Mining Online Service adalah layanan untuk memudahkan pengguna dalam melakukan analisis data online.
    Layanan ini menyediakan fitur-fitur seperti visualisasi data, modelling,
    serta rekomendasi produk berdasarkan transaksi.
    """
)
page = st.sidebar.radio("Pilih Halaman", ["Visualisasi", "Modelling"])

# ---------------------------------- HALAMAN VISUALISASI ----------------------------------
if page == "Visualisasi":
    st.header("📊 Visualisasi Data E-commerce")

    # --- KPI Metrics Section ---
    st.subheader("KPI Metrics")

    # CSS for cards
    card_style = """
    <style>
    .card {
      background-color: #1e1e1e;
      padding: 1rem;
      border-radius: 0.5rem;
      text-align: center;
      margin-bottom: 1rem;
    }
    .card h3 { color: #ffffff; margin: 0; font-size: 1rem; }
    .card h2 { color: #66c0f4; margin: 0; font-size: 1.5rem; }
    </style>
    """
    st.markdown(card_style, unsafe_allow_html=True)

    c1, c2, c3, c4 = st.columns(4)
    with c1:
        st.markdown(f"""
        <div class="card">
          <h3>Total Sales</h3>
          <h2>110</h2>
        </div>
        """, unsafe_allow_html=True)
    with c2:
        st.markdown(f"""
        <div class="card">
          <h3>Total Customers</h3>
          <h2>96</h2>
        </div>
        """, unsafe_allow_html=True)
    with c3:
        st.markdown(f"""
        <div class="card">
          <h3>Total Revenue</h3>
          <h2>Rp 47.068.409</h2>
        </div>
        """, unsafe_allow_html=True)
    with c4:
        st.markdown(f"""
        <div class="card">
          <h3>Total Products</h3>
          <h2>107</h2>
        </div>
        """, unsafe_allow_html=True)

    # Load spend distribution
    df_spend = pd.read_csv("spend_distribution.csv", index_col=0)
    spend_distribution = df_spend.iloc[:, 0]

    # Dua kolom untuk Bar & Pie Chart
    col1, col2 = st.columns(2)

    with col1:
        st.subheader("Distribusi Customer per Kategori")
        fig, ax = plt.subplots()
        sns.barplot(
            x=spend_distribution.index,
            y=spend_distribution.values,
            palette="coolwarm",
            ax=ax,
            hue=spend_distribution.index,
            dodge=False,
        )
        for p in ax.patches:
            ax.annotate(
                f"{int(p.get_height())}",
                (p.get_x() + p.get_width() / 2, p.get_height()),
                ha='center', va='bottom', fontsize=12, fontweight='bold'
            )
        ax.set_xlabel("Range Total Spend (IDR)")
        ax.set_ylabel("Jumlah Customer")
        ax.set_title("Distribusi Customer Berdasarkan Total Spend")
        plt.xticks(rotation=45)
        st.pyplot(fig)

    with col2:
        st.subheader("Persentase Customer per Kategori")
        fig2 = plt.figure(figsize=(6, 6))
        plt.pie(
            spend_distribution,
            labels=spend_distribution.index,
            autopct="%1.1f%%",
            colors=sns.color_palette("coolwarm"),
            labeldistance=1.2,
            pctdistance=0.8,
        )
        plt.title("Persentase Customer Berdasarkan Total Spend")
        plt.legend(spend_distribution.index, loc="best", bbox_to_anchor=(1, 1))
        st.pyplot(fig2)

    # Bubble Cloud Chart
    st.subheader("Bubble Cloud Chart: Top 5 Produk by Total Penjualan")

    # Load & preprocess data
    df_sales = pd.read_csv('csv/fact_sales_v2.csv', sep=';')
    if df_sales['total_sales'].dtype == object:
        df_sales['total_sales'] = (
            df_sales['total_sales']
            .str.replace('.', '', regex=False)
            .str.replace(',', '.', regex=False)
            .astype(float)
        )
    dag_sales = df_sales.groupby('product_id', as_index=False)['total_sales'].sum()

    df_order_product = pd.read_csv('csv/order_product.csv', sep=';')
    df_merge1 = dag_sales.merge(
        df_order_product[['order_item_id', 'product_id']],
        on='product_id', how='left'
    )

    df_items = pd.read_csv('csv/order_items.csv', sep=';')
    df_merge2 = df_merge1.merge(
        df_items[['order_item_id', 'order_item_name']].drop_duplicates('order_item_id'),
        on='order_item_id', how='left'
    )

    df_final = df_merge2[['product_id', 'order_item_name', 'total_sales']].copy()
    df_final.columns = ['id', 'order_item_name', 'total_sales']
    df_final = df_final.drop_duplicates(subset=['id'], keep='first')

    df_top5 = df_final.sort_values('total_sales', ascending=False).head(5)
    sizes = (df_top5['total_sales'] / df_top5['total_sales'].max()) * 100 + 40

    # Atur posisi bubble
    G = nx.Graph()
    for i in range(len(df_top5)):
        G.add_node(i)
    pos = nx.spring_layout(G, k=0.5, seed=42)
    x_pos = [pos[i][0] for i in range(len(df_top5))]
    y_pos = [pos[i][1] for i in range(len(df_top5))]

    # Build Plotly figure 
    fig_bubble = go.Figure(go.Scatter(
        x=x_pos,
        y=y_pos,
        mode='markers+text',
        text=[f"{name}<br><b>{int(total):,}</b>" for name, total in zip(df_top5['order_item_name'], df_top5['total_sales'])],
        textposition='middle center',
        textfont=dict(
            color='black',  
            size=12,
            family='Arial'
        ),
        marker=dict(
            size=sizes,
            color=df_top5['total_sales'],
            colorscale='Viridis',
            showscale=True,
            line=dict(width=2, color='DarkSlateGrey'),
            sizemode='diameter',
            opacity=0.7,
        ),
        hoverinfo='text',
        hovertext=[f"{name}<br>Total Sales: {total:,.0f}" for name, total in zip(df_top5['order_item_name'], df_top5['total_sales'])]
    ))

    fig_bubble.update_layout(
        xaxis=dict(showgrid=False, zeroline=False, showticklabels=False),
        yaxis=dict(showgrid=False, zeroline=False, showticklabels=False),
        plot_bgcolor='white',
        height=600,
        width=800,
        margin=dict(l=20, r=20, t=60, b=20)
    )

    st.plotly_chart(fig_bubble, use_container_width=True)

# ---------------------------------- HALAMAN MODELLING ----------------------------------
elif page == "Modelling":
    st.header("🤖 Modelling - Association Rules")
    rules = pd.read_csv("association_rules.csv")

    st.caption(
        """
        Proyek ini menggunakan **mlxtend.frequent_patterns** untuk mengidentifikasi aturan asosiasi.
        Masukkan produk yang dibeli, sistem akan merekomendasikan produk lain berdasarkan pola pembelian.
        """,
        unsafe_allow_html=True
    )

    product_list = sorted(set(rules["antecedents"].apply(eval).explode()))
    selected_products = st.multiselect("Pilih produk yang dibeli:", product_list)

    new_transaction = set(selected_products)
    matched_rules = rules[rules["antecedents"].apply(lambda x: set(eval(x)).issubset(new_transaction))]

    def clean_frozenset(text):
        cleaned = re.sub(r"frozenset\(\{(.*?)\}\)", r"[\1]", text)
        return cleaned.replace("'", '"')

    matched_rules["antecedents"] = matched_rules["antecedents"].apply(clean_frozenset)
    matched_rules["consequents"] = matched_rules["consequents"].apply(clean_frozenset)

    st.subheader("Rekomendasi Produk Berdasarkan Transaksi")
    if matched_rules.empty:
        st.write("Tidak ada rekomendasi berdasarkan transaksi ini.")
    else:
        st.dataframe(matched_rules[["antecedents", "consequents", "confidence", "lift"]])

    st.subheader("Visualisasi Confidence dan Lift")
    if not matched_rules.empty:
        fig3, ax3 = plt.subplots()
        sns.barplot(
            x=matched_rules["consequents"],
            y=matched_rules["confidence"],
            color="blue",
            label="Confidence",
            ax=ax3
        )
        sns.barplot(
            x=matched_rules["consequents"],
            y=matched_rules["lift"],
            color="red",
            alpha=0.5,
            label="Lift",
            ax=ax3
        )
        plt.xticks(rotation=45)
        plt.ylabel("Score")
        plt.xlabel("Consequents")
        plt.title("Confidence vs Lift dari Produk Rekomendasi")
        plt.legend()
        st.pyplot(fig3)
