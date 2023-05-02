Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 325B06F4732
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 May 2023 17:29:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29B01813D8;
	Tue,  2 May 2023 15:29:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29B01813D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683041385;
	bh=KO8YZPh58EXrv4xMKDsPaz0ev+d2EmOJryMtCkwcQWE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mFaUhLofLGQp22W2TkEHFZLWjQTjxHrwt7QIR87XKiFW3YRbQyuN/7oOZd3R/tX32
	 O7jcvBkse5P3A0kooct3wbbhZ0SwC1TcmnxyY90vzHI6tyYuV4DEahRYEUx0TI8apG
	 TqfDuI2Xy3MVwSafs530wcCVDsDEOKNb4Gxkph0BmpLBsQ5vo4oUrmP5t1/sWjwmF2
	 gYzL8ysanJSaSmqLLGsw3Qtx76FQolMdyZM47h4ADqFrlliLPaCg8ibdera5F0owGt
	 qnUpLVJOJxG+HS48t4fYhV8zA+ZWWTfg2sigKoRRe0074j5B86W4SgmEIgO88ItO++
	 wcqgCNPB4DnBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ksyZ_T9bfLYa; Tue,  2 May 2023 15:29:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D779A813DD;
	Tue,  2 May 2023 15:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D779A813DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CBE941BF41B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 May 2023 15:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ADFC541916
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 May 2023 15:29:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADFC541916
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Em_f1Ha8jFN9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 May 2023 15:29:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FE18415C3
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3FE18415C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 May 2023 15:29:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="350504827"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="350504827"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:29:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="761139753"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="761139753"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.60.216])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:29:27 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 May 2023 09:29:08 -0600
Message-Id: <20230502152908.701880-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041377; x=1714577377;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TophzMNWWLgSGXGm/14wyuGAyuCyM3k1RFaAVWO+y3s=;
 b=l8Yhg93XLZf4I31Br4FY+5JGPBPQSuT8+mKgYZoO4E5XJpyhMOfeYVmh
 cmwrMdg6SCXzM0wD+WAa8SHAKwuj29v5D9qmU3Y4YqrEO3Pm4GRGmUx8S
 eTI55+nPBsuzLjAQBKD+zQZv2+lOy1e8+1pV4dBZkI9mHflbmwSxuSM2v
 ChsttHcB3wdNejOJnNyDH5YXJ5MoeZufEYjMKDAWTqNYpZsJie9xNQPdg
 XUqCNvEvy9piVXM2lyB1cqFja8Dj8w5k+pj3jvzVvGRBdrfRcbeeeeiUK
 RucjLmiB2GtK/okb1A+PqfGScXZRw8cFfpiuGyzf6/eG+JlzjGDa91Na8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l8Yhg93X
Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: remove mask from
 iavf_irq_enable_queues()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enable more than 32 IRQs by removing the u32 bit mask in
iavf_irq_enable_queues(). There is no need for the mask as there are no
callers that select individual IRQs through the bitmask. Also, if the PF
allocates more than 32 IRQs, this mask will prevent us from using all of
them.

The comment in iavf_register.h is modified to show that the maximum
number allowed for the IRQ index is 63 as per the iAVF standard 1.0 [1].

link: [1] https://www.intel.com/content/dam/www/public/us/en/documents/product-specifications/ethernet-adaptive-virtual-function-hardware-spec.pdf
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
v2: modify comment in iavf_register.h and clarify commit message
---
 drivers/net/ethernet/intel/iavf/iavf.h          |  2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 15 ++++++---------
 drivers/net/ethernet/intel/iavf/iavf_register.h |  2 +-
 3 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 9abaff1f2aff..39d0fe76a38f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -525,7 +525,7 @@ void iavf_set_ethtool_ops(struct net_device *netdev);
 void iavf_update_stats(struct iavf_adapter *adapter);
 void iavf_reset_interrupt_capability(struct iavf_adapter *adapter);
 int iavf_init_interrupt_scheme(struct iavf_adapter *adapter);
-void iavf_irq_enable_queues(struct iavf_adapter *adapter, u32 mask);
+void iavf_irq_enable_queues(struct iavf_adapter *adapter);
 void iavf_free_all_tx_resources(struct iavf_adapter *adapter);
 void iavf_free_all_rx_resources(struct iavf_adapter *adapter);
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 1ad0fe7f6dda..e18d7cacf99c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -359,21 +359,18 @@ static void iavf_irq_disable(struct iavf_adapter *adapter)
 }
 
 /**
- * iavf_irq_enable_queues - Enable interrupt for specified queues
+ * iavf_irq_enable_queues - Enable interrupt for all queues
  * @adapter: board private structure
- * @mask: bitmap of queues to enable
  **/
-void iavf_irq_enable_queues(struct iavf_adapter *adapter, u32 mask)
+void iavf_irq_enable_queues(struct iavf_adapter *adapter)
 {
 	struct iavf_hw *hw = &adapter->hw;
 	int i;
 
 	for (i = 1; i < adapter->num_msix_vectors; i++) {
-		if (mask & BIT(i - 1)) {
-			wr32(hw, IAVF_VFINT_DYN_CTLN1(i - 1),
-			     IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
-			     IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK);
-		}
+		wr32(hw, IAVF_VFINT_DYN_CTLN1(i - 1),
+		     IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
+		     IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK);
 	}
 }
 
@@ -387,7 +384,7 @@ void iavf_irq_enable(struct iavf_adapter *adapter, bool flush)
 	struct iavf_hw *hw = &adapter->hw;
 
 	iavf_misc_irq_enable(adapter);
-	iavf_irq_enable_queues(adapter, ~0);
+	iavf_irq_enable_queues(adapter);
 
 	if (flush)
 		iavf_flush(hw);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_register.h b/drivers/net/ethernet/intel/iavf/iavf_register.h
index bf793332fc9d..a19e88898a0b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_register.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_register.h
@@ -40,7 +40,7 @@
 #define IAVF_VFINT_DYN_CTL01_INTENA_MASK IAVF_MASK(0x1, IAVF_VFINT_DYN_CTL01_INTENA_SHIFT)
 #define IAVF_VFINT_DYN_CTL01_ITR_INDX_SHIFT 3
 #define IAVF_VFINT_DYN_CTL01_ITR_INDX_MASK IAVF_MASK(0x3, IAVF_VFINT_DYN_CTL01_ITR_INDX_SHIFT)
-#define IAVF_VFINT_DYN_CTLN1(_INTVF) (0x00003800 + ((_INTVF) * 4)) /* _i=0...15 */ /* Reset: VFR */
+#define IAVF_VFINT_DYN_CTLN1(_INTVF) (0x00003800 + ((_INTVF) * 4)) /* _i=0...63 */ /* Reset: VFR */
 #define IAVF_VFINT_DYN_CTLN1_INTENA_SHIFT 0
 #define IAVF_VFINT_DYN_CTLN1_INTENA_MASK IAVF_MASK(0x1, IAVF_VFINT_DYN_CTLN1_INTENA_SHIFT)
 #define IAVF_VFINT_DYN_CTLN1_SWINT_TRIG_SHIFT 2
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
