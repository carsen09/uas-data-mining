import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load data yang dibutuhkan
spend_distribution = pd.read_csv("spend_distribution.csv", index_col=0).iloc[:, 0]
rules = pd.read_csv("association_rules.csv")  # Pastikan file tersedia

# Tambahkan gambar di sidebar
st.sidebar.image(
    "https://raw.githubusercontent.com/Leo42night/uas-data-mining/main/images/logo_v2.png",
    caption="[datamininguntan.my.id](https://datamininguntan.my.id/)"
)

# Tambahkan deskripsi proyek di sidebar
st.sidebar.caption("""
Data Mining Online Service adalah layanan untuk memudahkan pengguna dalam melakukan analisis data online. Layanan ini menyediakan fitur-fitur seperti visualisasi data, modelling, serta rekomendasi produk berdasarkan transaksi.
""")

# **Buat Menu Navigasi di Sidebar**
page = st.sidebar.radio("Pilih Halaman", ["Visualisasi", "Modelling"])

# ---------------------------------- HALAMAN VISUALISASI ----------------------------------
if page == "Visualisasi":
    st.header("📊 Visualisasi Data - E-commerce")

    # --- Visualisasi Spend Distribution ---
    st.subheader("Distribusi Pengeluaran Pelanggan", divider=True)

    # Buat layout dua kolom
    col1, col2 = st.columns(2)

    # **Bar Chart di kolom pertama**
    with col1:
        st.markdown("Distribusi Customer per Kategori")
        fig, ax = plt.subplots()
        sns.barplot(x=spend_distribution.index, y=spend_distribution.values, palette="coolwarm", ax=ax, hue=spend_distribution.index)

        # Tambahkan label nominal pada masing-masing batang
        for p in ax.patches:
            ax.annotate(f'{int(p.get_height())}', 
                        (p.get_x() + p.get_width() / 2, p.get_height()), 
                        ha='center', va='bottom', fontsize=12, fontweight='bold', color='black')
        ax.set_xlabel("Range Total Spend (IDR)")
        ax.set_ylabel("Jumlah Customer")
        ax.set_title("Distribusi Customer Berdasarkan Total Spend")
        plt.xticks(rotation=45)
        st.pyplot(fig)

    # **Pie Chart di kolom kedua**
    with col2:
        st.markdown("Persentase Customer per Kategori")

        fig = plt.figure(figsize=(6, 6))
        plt.pie(
            spend_distribution, 
            labels=spend_distribution.index, 
            autopct="%1.1f%%",
            colors=sns.color_palette("coolwarm"),
            labeldistance=1.2,  # Memindahkan label lebih jauh dari lingkaran
            pctdistance=0.8  # Memindahkan persentase ke bagian dalam
        )
        plt.title("Persentase Customer Berdasarkan Total Spend")
        plt.legend(spend_distribution.index, loc="best", bbox_to_anchor=(1, 1))
        st.pyplot(fig)

# ---------------------------------- HALAMAN MODELLING ----------------------------------
elif page == "Modelling":
    st.header("🤖 Modelling - Association Rules")
    st.caption("""
Proyek ini menggunakan **mlxtend.frequent_patterns** untuk mengidentifikasi aturan asosiasi dari transaksi e-commerce.
Pengguna dapat memasukkan produk yang dibeli, dan sistem akan merekomendasikan produk lain berdasarkan pola pembelian sebelumnya.
                """)

    # **Input Produk untuk Multi-Select**
    product_list = sorted(set(rules["antecedents"].apply(eval).explode()))  # Mendapatkan daftar produk unik
    selected_products = st.multiselect("Pilih produk yang dibeli:", product_list)

    # **Inferensi Aturan Asosiasi**
    new_transaction = set(selected_products)
    matched_rules = rules[rules["antecedents"].apply(lambda x: set(eval(x)).issubset(new_transaction))]

    st.subheader("Rekomendasi Produk Berdasarkan Transaksi")
    st.markdown("""
    - **Jika aturan ditemukan**, produk dalam *consequents* bisa direkomendasikan kepada pengguna.<br>
    - **Confidence** menunjukkan seberapa besar peluang bahwa orang yang membeli antecedent juga akan membeli consequent.<br>
    - **Lift** menunjukkan seberapa kuat hubungan antara antecedent dan consequent dibandingkan pembelian acak.<br>
    """, unsafe_allow_html=True)

    if matched_rules.empty:
        st.write("Tidak ada rekomendasi berdasarkan transaksi ini.")
    else:
        st.dataframe(matched_rules[["antecedents", "consequents", "confidence", "lift"]])

    # **Visualisasi Confidence dan Lift**
    st.subheader("Visualisasi Confidence dan Lift")
    if not matched_rules.empty:
        fig, ax = plt.subplots()
        sns.barplot(x=matched_rules["consequents"], y=matched_rules["confidence"], color="blue", label="Confidence", ax=ax)
        sns.barplot(x=matched_rules["consequents"], y=matched_rules["lift"], color="red", alpha=0.5, label="Lift", ax=ax)
        plt.xticks(rotation=45)
        plt.ylabel("Score")
        plt.xlabel("Consequents")
        plt.title("Confidence vs Lift dari Produk Rekomendasi")
        plt.legend()
        st.pyplot(fig)