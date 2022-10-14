Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4515FEC3A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Oct 2022 12:04:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 550FE401E9;
	Fri, 14 Oct 2022 10:04:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 550FE401E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665741874;
	bh=0cOz2JT5w23FMJ3aVEKanWtyT8EdKGAG28GUyd9eEeU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ta1/02M8pnW2lCDmOp3jCPGYah4yQqXDl9Zph53g46QU/023s8hO7TTT43lnX2wX3
	 SES4Z+MXolNaRp91LpTv7sXIRNycAddk6pzI0tXEhUkpo8Qe/vBKKV0gRxnaprLbrf
	 K5qp/iDNvdqZ+zaKws7dqicIxcZCM4NR4gmOf1T8mqIOXVQkem43+eIUKFHI2XPWVa
	 M8/AipdZ8fHZRUfFufbRojdJFRQGU1W6E0+KARckhLf6UGzzhQbdgJhVPLpcQ+S13a
	 ZHv9zNIz5DPaYZViE185nZMYdPHpvnKyWbIv32x/HgqjAitWszNHXLHytfe9g45J/i
	 UAJ6rwJx1fpBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kmm6NQJNPJf8; Fri, 14 Oct 2022 10:04:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E374E40331;
	Fri, 14 Oct 2022 10:04:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E374E40331
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E658C1BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 10:04:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDACE818EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 10:04:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDACE818EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GKp2JUC2703q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Oct 2022 10:04:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFB0881678
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DFB0881678
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 10:04:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="292696810"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="292696810"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 03:04:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="660681437"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="660681437"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga001.jf.intel.com with ESMTP; 14 Oct 2022 03:04:23 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Oct 2022 06:02:32 -0400
Message-Id: <20221014100232.410542-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665741865; x=1697277865;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FYf2yx3EyLWcv36l78SCt1zn2B4IwxV4jh1ys8gHcno=;
 b=SqZNSfHgEbiChbRiywXTE2AOAA2o+IYNyOo4IBE7YfrYjiThT2fWuhYL
 WyqIIwVjCxo69sKumd5AB4SNf8cmA/TnpJANorYU4DWzCFnk9kbtG5fQk
 BhG1z/Y50gY1tgdLhRjd5NhwiSol62E3iSn9IoMCxNRe6GDLRk1fr/m31
 +JZ3nrz7NmQQbtaXZVt+UwYFrjnO5GCvGb8CXnhVswGWYb9ICB+aRjQVl
 yU1KcmeZB9GrOH/qxZoHwnmbxy9s8e2FVPPzF/TEz/a7OKS/3im7v/Hdy
 w+CWsYesrECeoMiqXLprEoxtqErWYBIOqY6WJEfV+Ulm/VTGNlTNwfogO
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SqZNSfHg
Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix xdp_redirect logs error
 message when testing with MTU=1500
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
Cc: Bartosz Staszewski <bartoszx.staszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Bartosz Staszewski <bartoszx.staszewski@intel.com>

The driver is currently logging an error message "MTU too large to enable XDP"
when trying to enable XDP on totally normal MTU.

This was caused by whenever the  interface was down, function
i40e_xdp was passing vsi->rx_buf_len field to i40e_xdp_setup()
which was equal 0. i40e_open() then  calls i40e_vsi_configure_rx()
which configures that field, but that only happens when interface is up.
When it is down, i40e_open() is not being called, thusvsi->rx_buf_len
which causes the bug is not set.

Solution for this is calculate buffer length in newly created
function - i40e_calculate_vsi_rx_buf_len() that return actual buffer
length. Buffer length is being calculated based on the same rules applied
previously in i40e_vsi_configure_rx() function.

Fixes: 613142b0bb88 ("i40e: Log error for oversized MTU on device")
Signed-off-by: Bartosz Staszewski <bartoszx.staszewski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 42 +++++++++++++++------
 1 file changed, 30 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b5dcd15ced36..2fec0cff282c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3693,6 +3693,30 @@ static int i40e_vsi_configure_tx(struct i40e_vsi *vsi)
 	return err;
 }
 
+/**
+ * i40e_calculate_vsi_rx_buf_len - Calculates buffer length
+ *
+ * @vsi: VSI to calculate rx_buf_len from
+ */
+static u16 i40e_calculate_vsi_rx_buf_len(struct i40e_vsi *vsi)
+{
+	u16 ret;
+
+	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX)) {
+		ret = I40E_RXBUFFER_2048;
+#if (PAGE_SIZE < 8192)
+	} else if (!I40E_2K_TOO_SMALL_WITH_PADDING &&
+		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
+		ret = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
+#endif
+	} else {
+		ret = (PAGE_SIZE < 8192) ? I40E_RXBUFFER_3072 :
+					   I40E_RXBUFFER_2048;
+	}
+
+	return ret;
+}
+
 /**
  * i40e_vsi_configure_rx - Configure the VSI for Rx
  * @vsi: the VSI being configured
@@ -3704,20 +3728,14 @@ static int i40e_vsi_configure_rx(struct i40e_vsi *vsi)
 	int err = 0;
 	u16 i;
 
-	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX)) {
-		vsi->max_frame = I40E_MAX_RXBUFFER;
-		vsi->rx_buf_len = I40E_RXBUFFER_2048;
+	vsi->max_frame = I40E_MAX_RXBUFFER;
+	vsi->rx_buf_len = i40e_calculate_vsi_rx_buf_len(vsi);
+
 #if (PAGE_SIZE < 8192)
-	} else if (!I40E_2K_TOO_SMALL_WITH_PADDING &&
-		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
+	if (vsi->netdev && !I40E_2K_TOO_SMALL_WITH_PADDING &&
+	    (vsi->netdev->mtu <= ETH_DATA_LEN))
 		vsi->max_frame = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
-		vsi->rx_buf_len = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
 #endif
-	} else {
-		vsi->max_frame = I40E_MAX_RXBUFFER;
-		vsi->rx_buf_len = (PAGE_SIZE < 8192) ? I40E_RXBUFFER_3072 :
-						       I40E_RXBUFFER_2048;
-	}
 
 	/* set up individual rings */
 	for (i = 0; i < vsi->num_queue_pairs && !err; i++)
@@ -13265,7 +13283,7 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 	int i;
 
 	/* Don't allow frames that span over multiple buffers */
-	if (frame_size > vsi->rx_buf_len) {
+	if (frame_size > i40e_calculate_vsi_rx_buf_len(vsi)) {
 		NL_SET_ERR_MSG_MOD(extack, "MTU too large to enable XDP");
 		return -EINVAL;
 	}
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
