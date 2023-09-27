Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE707AFE7E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 10:31:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC4A841FF4;
	Wed, 27 Sep 2023 08:31:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC4A841FF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695803517;
	bh=oJUj1keyM7qzVyPBPOKwAoxmNAeut8eLuSjnzPrK2hE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QDZwipPDGZcc8cOU7n9EZoCbC0irCwNueIYbo/P1AElPOFjliXoA6FeUGapLkH3UF
	 /In95KB0e6Pe04qHvUMf1IZnixXCSYF/WLTuIrDcAzU8Ys3UAXbERuUnVq5fks9eVy
	 galTPreSQFzSQm7lqjvB0jYhVyFhheeE2N3U73vJEylosPfIdYkCTUXBAfTa6oKmTA
	 7kefwFmcWrbDxdbNVHk5T9F4TApxhTTfS2awsRDx7Ig1nqkWquyrjWlrvUU9I2d4S6
	 bmqHBOgWGMixHi2kw5Y2BlPL3SXWMSiQ6rmfhUNnx+tavRzM9Ca2ympe5wHgljDuc/
	 pyx4dC6LxybBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id huM-RKzfXAlO; Wed, 27 Sep 2023 08:31:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DAF341F42;
	Wed, 27 Sep 2023 08:31:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DAF341F42
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2EDED1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 088126100D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 088126100D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aT34LoksUPX2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 08:31:46 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2437F60BE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2437F60BE4
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-216-9bfQ2AHAOD6FPXjbqiYk3w-1; Wed, 27 Sep 2023 04:31:40 -0400
X-MC-Unique: 9bfQ2AHAOD6FPXjbqiYk3w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 530B9857D0D;
 Wed, 27 Sep 2023 08:31:40 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8E73E21B2414;
 Wed, 27 Sep 2023 08:31:38 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 27 Sep 2023 10:31:27 +0200
Message-ID: <20230927083135.3237206-2-ivecera@redhat.com>
In-Reply-To: <20230927083135.3237206-1-ivecera@redhat.com>
References: <20230927083135.3237206-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695803505;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ueYP/ajTB7V4RyeLKkt5pWxuJfeWfMVAt0X1oDNjTwE=;
 b=EpqeowLHjHmCpmXI42TMqW2T43n01XmSafeD9vjfTl4wvuwcMPgb72BBwV+jIBPI702X/3
 a1Y+1IbfFG0CgtAHgOAUAWfEOyYf8a2jSprUOLXUR/B7sydWfN9NqGqWHa7/Ol5ABYY7qr
 7A+vl4Pm/kUhLadN7g5hIC9mMKAv6zw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EpqeowLH
Subject: [Intel-wired-lan] [PATCH net-next v2 1/9] i40e: Remove back pointer
 from i40e_hw structure
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

The .back field placed in i40e_hw is used to get pointer to i40e_pf
instance but it is not necessary as the i40e_hw is a part of i40e_pf
and containerof macro can be used to obtain the pointer to i40e_pf.
Remove .back field from i40e_hw structure, introduce i40e_hw_to_pf()
and i40e_hw_to_dev() helpers and use them.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h       | 11 ++++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c  | 22 ++++++++++++++------
 drivers/net/ethernet/intel/i40e/i40e_osdep.h |  8 +++----
 drivers/net/ethernet/intel/i40e/i40e_type.h  |  1 -
 4 files changed, 31 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 6e310a539467..7f79d5929be6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1321,4 +1321,15 @@ static inline u32 i40e_is_tc_mqprio_enabled(struct i40e_pf *pf)
 	return pf->flags & I40E_FLAG_TC_MQPRIO;
 }
 
+/**
+ * i40e_hw_to_pf - get pf pointer from the hardware structure
+ * @hw: pointer to the device HW structure
+ **/
+static inline struct i40e_pf *i40e_hw_to_pf(struct i40e_hw *hw)
+{
+	return container_of(hw, struct i40e_pf, hw);
+}
+
+struct device *i40e_hw_to_dev(struct i40e_hw *hw);
+
 #endif /* _I40E_H_ */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 00ca2b88165c..c19d1b4cc32b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -119,6 +119,17 @@ static void netdev_hw_addr_refcnt(struct i40e_mac_filter *f,
 	}
 }
 
+/**
+ * i40e_hw_to_dev - get device pointer from the hardware structure
+ * @hw: pointer to the device HW structure
+ **/
+struct device *i40e_hw_to_dev(struct i40e_hw *hw)
+{
+	struct i40e_pf *pf = i40e_hw_to_pf(hw);
+
+	return &pf->pdev->dev;
+}
+
 /**
  * i40e_allocate_dma_mem_d - OS specific memory alloc for shared code
  * @hw:   pointer to the HW structure
@@ -129,7 +140,7 @@ static void netdev_hw_addr_refcnt(struct i40e_mac_filter *f,
 int i40e_allocate_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem,
 			    u64 size, u32 alignment)
 {
-	struct i40e_pf *pf = (struct i40e_pf *)hw->back;
+	struct i40e_pf *pf = i40e_hw_to_pf(hw);
 
 	mem->size = ALIGN(size, alignment);
 	mem->va = dma_alloc_coherent(&pf->pdev->dev, mem->size, &mem->pa,
@@ -147,7 +158,7 @@ int i40e_allocate_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem,
  **/
 int i40e_free_dma_mem_d(struct i40e_hw *hw, struct i40e_dma_mem *mem)
 {
-	struct i40e_pf *pf = (struct i40e_pf *)hw->back;
+	struct i40e_pf *pf = i40e_hw_to_pf(hw);
 
 	dma_free_coherent(&pf->pdev->dev, mem->size, mem->va, mem->pa);
 	mem->va = NULL;
@@ -15623,10 +15634,10 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
  **/
 static inline void i40e_set_subsystem_device_id(struct i40e_hw *hw)
 {
-	struct pci_dev *pdev = ((struct i40e_pf *)hw->back)->pdev;
+	struct i40e_pf *pf = i40e_hw_to_pf(hw);
 
-	hw->subsystem_device_id = pdev->subsystem_device ?
-		pdev->subsystem_device :
+	hw->subsystem_device_id = pf->pdev->subsystem_device ?
+		pf->pdev->subsystem_device :
 		(ushort)(rd32(hw, I40E_PFPCI_SUBSYSID) & USHRT_MAX);
 }
 
@@ -15696,7 +15707,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	set_bit(__I40E_DOWN, pf->state);
 
 	hw = &pf->hw;
-	hw->back = pf;
 
 	pf->ioremap_len = min_t(int, pci_resource_len(pdev, 0),
 				I40E_MAX_CSR_SPACE);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_osdep.h b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
index 2bd4de03dafa..997569a4ad57 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_osdep.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
@@ -18,10 +18,10 @@
  * actual OS primitives
  */
 
-#define hw_dbg(hw, S, A...)							\
-do {										\
-	dev_dbg(&((struct i40e_pf *)hw->back)->pdev->dev, S, ##A);		\
-} while (0)
+struct i40e_hw;
+struct device *i40e_hw_to_dev(struct i40e_hw *hw);
+
+#define hw_dbg(hw, S, A...) dev_dbg(i40e_hw_to_dev(hw), S, ##A)
 
 #define wr32(a, reg, value)	writel((value), ((a)->hw_addr + (reg)))
 #define rd32(a, reg)		readl((a)->hw_addr + (reg))
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 232131bedc3e..658bc8913278 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -525,7 +525,6 @@ struct i40e_dcbx_config {
 /* Port hardware description */
 struct i40e_hw {
 	u8 __iomem *hw_addr;
-	void *back;
 
 	/* subsystem structs */
 	struct i40e_phy_info phy;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
