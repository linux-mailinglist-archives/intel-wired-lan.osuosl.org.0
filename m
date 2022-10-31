Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 213A7613A15
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Oct 2022 16:34:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97A27410BD;
	Mon, 31 Oct 2022 15:34:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97A27410BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667230457;
	bh=dPKIouszL1LEuQW9qTRvLgN49vUwLMKHj9CxfZUHJGw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4zAL5ourj9v5vyGmRW8hpNbOplmpS+wZhpggnytqoPZnH51Hbn5bwBZxJeZKswRwN
	 3XhghoxKdKlqqxeg73zJuQYFElHNnAf9iMAIR6/kIQl6DjLi4uXs2+7DPvRobn/dBb
	 QBOPaMSvdmBHaPKRU9WXtOghyBKLEsFo/KgSs2AlFDMCUerYDo4PEixudyv8m8XoUu
	 UvwlxGccAXNAMJQC+7ap2JpypFKVBuEitLoiYpo1yXf9WDp3vt8SUSAopqEkSyTjZL
	 6NtIJ4C8sBn7xlD2v3bnzRmoJMatJDy7x0X+/+NvPy1xcAkbpg7NIE6vTVVxHcYvhJ
	 TeHmOOta7MipA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IQgA1q0Mzny9; Mon, 31 Oct 2022 15:34:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CAB140919;
	Mon, 31 Oct 2022 15:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CAB140919
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9BCE41BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 11:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 820B940273
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 11:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 820B940273
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZAybmj2YzN3H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Oct 2022 11:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BAB34024B
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6BAB34024B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 11:45:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 13CD1611CD;
 Mon, 31 Oct 2022 11:45:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27B98C433C1;
 Mon, 31 Oct 2022 11:44:57 +0000 (UTC)
From: "Jiri Slaby (SUSE)" <jirislaby@kernel.org>
To: jesse.brandeburg@intel.com
Date: Mon, 31 Oct 2022 12:44:56 +0100
Message-Id: <20221031114456.10482-1-jirislaby@kernel.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 31 Oct 2022 15:34:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1667216700;
 bh=adfQlcnVctTBnUDpH4VOx1zBf1snHtulVQoBO8D5+xc=;
 h=From:To:Cc:Subject:Date:From;
 b=E8mdJOctRTx3d5d28JYRXP0Q56DDiwOmrgi06SHu2QHYho5Wf1Ba2oF0nADEsQbHO
 9fFDDECbr3cusRdv/2yroG4W2Z0R8A9yS/5XoxWJSEgL3Hrjo5Rg/rP20ouW3a0hcz
 UPk6myKUQUZzMdz++6Q9sScw1xQ+9y1rN9oqcuwOlFOhpvEs5Ds88wligNm7Mbin9f
 p7IcO42Y3BwrbPd2nq+4vr7EyOVAgR5CjqqwPHjRY6EJ7wUHFDS1Ma75SuJaF2ldBd
 91dHSnflIrItYRrTXwiDvNidTdlMuHZ66FCwr5EQJcxF/eF5M96MU+TFQ7plFQVN3f
 iuCUpuhLJpNww==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=E8mdJOct
Subject: [Intel-wired-lan] [PATCH] i40e (gcc13): synchronize allocate/free
 functions return type & values
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
Cc: "Jiri Slaby \(SUSE\)" <jirislaby@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Martin Liska <mliska@suse.cz>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

i40e allocate/free functions generate a valid warning with gcc-13:
  drivers/net/ethernet/intel/i40e/i40e_main.c:129:5: error: conflicting types for 'i40e_allocate_dma_mem_d' due to enum/integer mismatch; have 'int(struct i40e_hw *, struct i40e_dma_mem *, u64,  u32)' {aka 'int(struct i40e_hw *, struct i40e_dma_mem *, long long unsigned int,  unsigned int)'} [-Werror=enum-int-mismatch]
  drivers/net/ethernet/intel/i40e/i40e_osdep.h:40:25: note: previous declaration of 'i40e_allocate_dma_mem_d' with type 'i40e_status(struct i40e_hw *, struct i40e_dma_mem *, u64,  u32)' {aka 'enum i40e_status_code(struct i40e_hw *, struct i40e_dma_mem *, long long unsigned int,  unsigned int)'}
...

I.e. the type of their return value in the definition is int, while the
declaration spell enum i40e_status. Synchronize the definitions to the
latter.

And make sure proper values are returned. I.e. I40E_SUCCESS and not 0,
I40E_ERR_NO_MEMORY and not -ENOMEM.

Cc: Martin Liska <mliska@suse.cz>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Signed-off-by: Jiri Slaby (SUSE) <jirislaby@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 25 +++++++++++----------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 1a1fab94205d..92fd4db7195f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -126,8 +126,9 @@ static void netdev_hw_addr_refcnt(struct i40e_mac_filter *f,
  * @size: size of memory requested
  * @alignment: what to align the allocation to
  **/
-int i40e_allocate_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem,
-			    u64 size, u32 alignment)
+i40e_status i40e_allocate_dma_mem_d(struct i40e_hw *hw,
+				    struct i40e_dma_mem *mem, u64 size,
+				    u32 alignment)
 {
 	struct i40e_pf *pf = (struct i40e_pf *)hw->back;
 
@@ -135,9 +136,9 @@ int i40e_allocate_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem,
 	mem->va = dma_alloc_coherent(&pf->pdev->dev, mem->size, &mem->pa,
 				     GFP_KERNEL);
 	if (!mem->va)
-		return -ENOMEM;
+		return I40E_ERR_NO_MEMORY;
 
-	return 0;
+	return I40E_SUCCESS;
 }
 
 /**
@@ -145,7 +146,7 @@ int i40e_allocate_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem,
  * @hw:   pointer to the HW structure
  * @mem:  ptr to mem struct to free
  **/
-int i40e_free_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem)
+i40e_status i40e_free_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem)
 {
 	struct i40e_pf *pf = (struct i40e_pf *)hw->back;
 
@@ -154,7 +155,7 @@ int i40e_free_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem)
 	mem->pa = 0;
 	mem->size = 0;
 
-	return 0;
+	return I40E_SUCCESS;
 }
 
 /**
@@ -163,16 +164,16 @@ int i40e_free_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem)
  * @mem:  ptr to mem struct to fill out
  * @size: size of memory requested
  **/
-int i40e_allocate_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem,
-			     u32 size)
+i40e_status i40e_allocate_virt_mem_d(struct i40e_hw *hw,
+				     struct i40e_virt_mem *mem, u32 size)
 {
 	mem->size = size;
 	mem->va = kzalloc(size, GFP_KERNEL);
 
 	if (!mem->va)
-		return -ENOMEM;
+		return I40E_ERR_NO_MEMORY;
 
-	return 0;
+	return I40E_SUCCESS;
 }
 
 /**
@@ -180,14 +181,14 @@ int i40e_allocate_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem,
  * @hw:   pointer to the HW structure
  * @mem:  ptr to mem struct to free
  **/
-int i40e_free_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem)
+i40e_status i40e_free_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem)
 {
 	/* it's ok to kfree a NULL pointer */
 	kfree(mem->va);
 	mem->va = NULL;
 	mem->size = 0;
 
-	return 0;
+	return I40E_SUCCESS;
 }
 
 /**
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
