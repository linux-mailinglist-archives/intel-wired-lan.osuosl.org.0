Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F94A7AFE87
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 10:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3154342092;
	Wed, 27 Sep 2023 08:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3154342092
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695803530;
	bh=kXIaR6q4riGDMvQq1UoJXyzk/HkATSURNQtPlzUiTHA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h3eeglcA4kGFwySWUUHYaCU85d8+5fWD00nzN6Lq5UUNAeyYaU+qNvLLw+BBqF164
	 w/XiJmpYAU0WvKZeWOef8OTuBGRg+lKNarkdupRdMOGJrnEffJq6AqZFrFIpgtmg6Q
	 PEqeLbR+giQsZeun0wppgtSza+XUaLmbiNp0STiH3gZkNRZyg5/ovo6+SmFy3Md3Y0
	 66DM3kH10JuZ2MDqLcg3OSv2M4H2MsxlnYM/8aGCbyzGXsKwqPuqFEthakx3qoMiA3
	 lAlh1U341I2O82iPzGZ8zL0LaXJ70tGQv6SJlEaC2oEB+2KI2JMJG4vG3E+0iaRcCO
	 s6VY8eAMHMPrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dvVzk4fe_v8W; Wed, 27 Sep 2023 08:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91F1E41FB4;
	Wed, 27 Sep 2023 08:32:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91F1E41FB4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E0B51BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2796B6100D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2796B6100D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rF5m6__Qpljw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 08:31:51 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 272C660BE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 272C660BE4
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-18-7XbEVybwMKmYrUY5c7Zv_A-1; Wed, 27 Sep 2023 04:31:48 -0400
X-MC-Unique: 7XbEVybwMKmYrUY5c7Zv_A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1EA4F185A78E;
 Wed, 27 Sep 2023 08:31:48 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5DB3F2156702;
 Wed, 27 Sep 2023 08:31:46 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 27 Sep 2023 10:31:31 +0200
Message-ID: <20230927083135.3237206-6-ivecera@redhat.com>
In-Reply-To: <20230927083135.3237206-1-ivecera@redhat.com>
References: <20230927083135.3237206-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695803510;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oVzY+vMUDmnya1uDGQKz7p3/Jl99vLT/bSf/GBa8Rys=;
 b=HAgBUx8PDJWlu0etwmPzVOmozxh2WN2wlMN1vNK29MA0hA3ek92dXJi+09ZCEX82K0edU7
 GQc1CPkRKIVcjqpgwIOsb19XqtLikojaHv0mNUKJBRqepCTLG25C0kVxdPEur7dGxrEdpv
 0CNpMhFqQIX2hkDBiQct1Isu/YHetPM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HAgBUx8P
Subject: [Intel-wired-lan] [PATCH net-next v2 5/9] i40e: Simplify memory
 allocation functions
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enum i40e_memory_type enum is unused in i40e_allocate_dma_mem() thus
can be safely removed. Useless macros in i40e_alloc.h can be removed
as well.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  4 ----
 drivers/net/ethernet/intel/i40e/i40e_alloc.h  | 14 -------------
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    | 12 ++++-------
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 20 +++++++++----------
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  |  7 -------
 5 files changed, 14 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 100eb77b8dfe..e72cfe587c89 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -51,7 +51,6 @@ static int i40e_alloc_adminq_asq_ring(struct i40e_hw *hw)
 	int ret_code;
 
 	ret_code = i40e_allocate_dma_mem(hw, &hw->aq.asq.desc_buf,
-					 i40e_mem_atq_ring,
 					 (hw->aq.num_asq_entries *
 					 sizeof(struct i40e_aq_desc)),
 					 I40E_ADMINQ_DESC_ALIGNMENT);
@@ -78,7 +77,6 @@ static int i40e_alloc_adminq_arq_ring(struct i40e_hw *hw)
 	int ret_code;
 
 	ret_code = i40e_allocate_dma_mem(hw, &hw->aq.arq.desc_buf,
-					 i40e_mem_arq_ring,
 					 (hw->aq.num_arq_entries *
 					 sizeof(struct i40e_aq_desc)),
 					 I40E_ADMINQ_DESC_ALIGNMENT);
@@ -136,7 +134,6 @@ static int i40e_alloc_arq_bufs(struct i40e_hw *hw)
 	for (i = 0; i < hw->aq.num_arq_entries; i++) {
 		bi = &hw->aq.arq.r.arq_bi[i];
 		ret_code = i40e_allocate_dma_mem(hw, bi,
-						 i40e_mem_arq_buf,
 						 hw->aq.arq_buf_size,
 						 I40E_ADMINQ_DESC_ALIGNMENT);
 		if (ret_code)
@@ -198,7 +195,6 @@ static int i40e_alloc_asq_bufs(struct i40e_hw *hw)
 	for (i = 0; i < hw->aq.num_asq_entries; i++) {
 		bi = &hw->aq.asq.r.asq_bi[i];
 		ret_code = i40e_allocate_dma_mem(hw, bi,
-						 i40e_mem_asq_buf,
 						 hw->aq.asq_buf_size,
 						 I40E_ADMINQ_DESC_ALIGNMENT);
 		if (ret_code)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_alloc.h b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
index a6c9a9e343d1..4b2d8da048c6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_alloc.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
@@ -6,23 +6,9 @@
 
 struct i40e_hw;
 
-/* Memory allocation types */
-enum i40e_memory_type {
-	i40e_mem_arq_buf = 0,		/* ARQ indirect command buffer */
-	i40e_mem_asq_buf = 1,
-	i40e_mem_atq_buf = 2,		/* ATQ indirect command buffer */
-	i40e_mem_arq_ring = 3,		/* ARQ descriptor ring */
-	i40e_mem_atq_ring = 4,		/* ATQ descriptor ring */
-	i40e_mem_pd = 5,		/* Page Descriptor */
-	i40e_mem_bp = 6,		/* Backing Page - 4KB */
-	i40e_mem_bp_jumbo = 7,		/* Backing Page - > 4KB */
-	i40e_mem_reserved
-};
-
 /* prototype for functions used for dynamic memory allocation */
 int i40e_allocate_dma_mem(struct i40e_hw *hw,
 			  struct i40e_dma_mem *mem,
-			  enum i40e_memory_type type,
 			  u64 size, u32 alignment);
 int i40e_free_dma_mem(struct i40e_hw *hw,
 		      struct i40e_dma_mem *mem);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
index 96ee63aca7a1..7451d346ae83 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
@@ -22,7 +22,6 @@ int i40e_add_sd_table_entry(struct i40e_hw *hw,
 			    enum i40e_sd_entry_type type,
 			    u64 direct_mode_sz)
 {
-	enum i40e_memory_type mem_type __attribute__((unused));
 	struct i40e_hmc_sd_entry *sd_entry;
 	bool dma_mem_alloc_done = false;
 	struct i40e_dma_mem mem;
@@ -43,16 +42,13 @@ int i40e_add_sd_table_entry(struct i40e_hw *hw,
 
 	sd_entry = &hmc_info->sd_table.sd_entry[sd_index];
 	if (!sd_entry->valid) {
-		if (I40E_SD_TYPE_PAGED == type) {
-			mem_type = i40e_mem_pd;
+		if (type == I40E_SD_TYPE_PAGED)
 			alloc_len = I40E_HMC_PAGED_BP_SIZE;
-		} else {
-			mem_type = i40e_mem_bp_jumbo;
+		else
 			alloc_len = direct_mode_sz;
-		}
 
 		/* allocate a 4K pd page or 2M backing page */
-		ret_code = i40e_allocate_dma_mem(hw, &mem, mem_type, alloc_len,
+		ret_code = i40e_allocate_dma_mem(hw, &mem, alloc_len,
 						 I40E_HMC_PD_BP_BUF_ALIGNMENT);
 		if (ret_code)
 			goto exit;
@@ -140,7 +136,7 @@ int i40e_add_pd_table_entry(struct i40e_hw *hw,
 			page = rsrc_pg;
 		} else {
 			/* allocate a 4K backing page */
-			ret_code = i40e_allocate_dma_mem(hw, page, i40e_mem_bp,
+			ret_code = i40e_allocate_dma_mem(hw, page,
 						I40E_HMC_PAGED_BP_SIZE,
 						I40E_HMC_PD_BP_BUF_ALIGNMENT);
 			if (ret_code)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index c19d1b4cc32b..40237c778c63 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -131,14 +131,14 @@ struct device *i40e_hw_to_dev(struct i40e_hw *hw)
 }
 
 /**
- * i40e_allocate_dma_mem_d - OS specific memory alloc for shared code
+ * i40e_allocate_dma_mem - OS specific memory alloc for shared code
  * @hw:   pointer to the HW structure
  * @mem:  ptr to mem struct to fill out
  * @size: size of memory requested
  * @alignment: what to align the allocation to
  **/
-int i40e_allocate_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem,
-			    u64 size, u32 alignment)
+int i40e_allocate_dma_mem(struct i40e_hw *hw, struct i40e_dma_mem *mem,
+			  u64 size, u32 alignment)
 {
 	struct i40e_pf *pf = i40e_hw_to_pf(hw);
 
@@ -152,11 +152,11 @@ int i40e_allocate_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem,
 }
 
 /**
- * i40e_free_dma_mem_d - OS specific memory free for shared code
+ * i40e_free_dma_mem - OS specific memory free for shared code
  * @hw:   pointer to the HW structure
  * @mem:  ptr to mem struct to free
  **/
-int i40e_free_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem)
+int i40e_free_dma_mem(struct i40e_hw *hw, struct i40e_dma_mem *mem)
 {
 	struct i40e_pf *pf = i40e_hw_to_pf(hw);
 
@@ -169,13 +169,13 @@ int i40e_free_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem)
 }
 
 /**
- * i40e_allocate_virt_mem_d - OS specific memory alloc for shared code
+ * i40e_allocate_virt_mem - OS specific memory alloc for shared code
  * @hw:   pointer to the HW structure
  * @mem:  ptr to mem struct to fill out
  * @size: size of memory requested
  **/
-int i40e_allocate_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem,
-			     u32 size)
+int i40e_allocate_virt_mem(struct i40e_hw *hw, struct i40e_virt_mem *mem,
+			   u32 size)
 {
 	mem->size = size;
 	mem->va = kzalloc(size, GFP_KERNEL);
@@ -187,11 +187,11 @@ int i40e_allocate_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem,
 }
 
 /**
- * i40e_free_virt_mem_d - OS specific memory free for shared code
+ * i40e_free_virt_mem - OS specific memory free for shared code
  * @hw:   pointer to the HW structure
  * @mem:  ptr to mem struct to free
  **/
-int i40e_free_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem)
+int i40e_free_virt_mem(struct i40e_hw *hw, struct i40e_virt_mem *mem)
 {
 	/* it's ok to kfree a NULL pointer */
 	kfree(mem->va);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_osdep.h b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
index 997569a4ad57..70cac3bb31ec 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_osdep.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
@@ -36,18 +36,11 @@ struct i40e_dma_mem {
 	u32 size;
 };
 
-#define i40e_allocate_dma_mem(h, m, unused, s, a) \
-			i40e_allocate_dma_mem_d(h, m, s, a)
-#define i40e_free_dma_mem(h, m) i40e_free_dma_mem_d(h, m)
-
 struct i40e_virt_mem {
 	void *va;
 	u32 size;
 };
 
-#define i40e_allocate_virt_mem(h, m, s) i40e_allocate_virt_mem_d(h, m, s)
-#define i40e_free_virt_mem(h, m) i40e_free_virt_mem_d(h, m)
-
 #define i40e_debug(h, m, s, ...)				\
 do {								\
 	if (((m) & (h)->debug_mask))				\
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
