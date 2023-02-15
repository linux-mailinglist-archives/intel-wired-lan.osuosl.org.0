Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC4F69803D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 17:12:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4FB340BEC;
	Wed, 15 Feb 2023 16:12:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4FB340BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676477576;
	bh=gsbmbLUoFeYekQuoQnIJtVtqZQBmTokOXdoAkylCrO8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ylK0BhED2IqGKbSU4M9A6pv22DaxAPbV+0jKWiRsdcKGV0O+bVGY5mnNAYnP07Exe
	 n3i/gkMj880u7XOzAB2kRaTmCt670vzGRXYtbVGi5UVTMk/PElp/hSNxUnFoGoJAIj
	 9rpBXpEiyiidX56sCYQciEFJYiwMWrRx4KHyf/QSFktePDkY4/PKG2aSRMeOnnOoze
	 SFqX5HE61Ha36ebcXT3X5nq9xF0hTvH09gHgORJ/iuGdSh5Q0fe8ZyoolYwVsdUmnY
	 Y2cwrQv+BGNNsthJLTeo/AJM1soUz8PTll31/yM1f2A+edODhO+5lVnhuLi132/qx/
	 cOikqIgYwh+mA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wxePQcF3Zw2X; Wed, 15 Feb 2023 16:12:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B187140BF8;
	Wed, 15 Feb 2023 16:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B187140BF8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 64BCF1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:57:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C4DB415DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:57:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C4DB415DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BLMlE7qVOKZ4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Feb 2023 12:57:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 434B6415ED
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 434B6415ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Feb 2023 12:57:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="393822007"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="393822007"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 04:57:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="998478595"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="998478595"
Received: from unknown (HELO paamrpdk12-S2600BPB.aw.intel.com)
 ([10.228.151.145])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 04:57:48 -0800
From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Feb 2023 18:12:58 +0530
Message-Id: <20230215124305.76075-2-tirthendu.sarkar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230215124305.76075-1-tirthendu.sarkar@intel.com>
References: <20230215124305.76075-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 15 Feb 2023 16:12:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676465870; x=1708001870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NCq3T4/ETUCcEAiQq3iahvZoxp33xntOznZpGg2dWrI=;
 b=mJrJpcr5MD5vw12Mrtms847lhBOPhPDjigkvpaSp4AV5bgsZP3sg/9cD
 UZO6qFnOO7PWPOJ1pREd0E6D60NjJLQtsG7g1E+XqF9fgIfiEEJe2Dejm
 09ck4x2bDz5UyqaRPJniv7AteqjvIQfJMs9FmYC5K9y6oCiOjz8pB0xrK
 WfJbBvsliNdGzklXpghpHYMlEkErEhx50x9etwO0TDVegoRoF7i9mfAuv
 36XOv3TJ6Dk+En0QMUdfInv2NuOCgxomNxn1QXcvjHhhteT1X8hwbw5iF
 +ojHZ0VuxbUTOP3fVwguaQ4HeR9onvbXkh35IMeynOT1vT8GfqQ0A6tv6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mJrJpcr5
Subject: [Intel-wired-lan] [PATCH intel-next v4 1/8] i40e: consolidate
 maximum frame size calculation for vsi
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce new helper function to calculate max frame size for validating
and setting of vsi frame size. This is used while configuring vsi,
changing the MTU and attaching an XDP program to the vsi.

This is in preparation of the legacy rx and multi-buffer changes to be
introduced in later patches.

Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 71 +++++++++++----------
 1 file changed, 38 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 3ee00c3bc319..672038801d1d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2896,15 +2896,35 @@ static void i40e_sync_filters_subtask(struct i40e_pf *pf)
 }
 
 /**
- * i40e_max_xdp_frame_size - returns the maximum allowed frame size for XDP
+ * i40e_calculate_vsi_rx_buf_len - Calculates buffer length
+ *
+ * @vsi: VSI to calculate rx_buf_len from
+ */
+static u16 i40e_calculate_vsi_rx_buf_len(struct i40e_vsi *vsi)
+{
+	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX))
+		return I40E_RXBUFFER_2048;
+
+	return PAGE_SIZE < 8192 ? I40E_RXBUFFER_3072 : I40E_RXBUFFER_2048;
+}
+
+/**
+ * i40e_max_vsi_frame_size - returns the maximum allowed frame size for VSI
  * @vsi: the vsi
+ * @xdp_prog: XDP program
  **/
-static int i40e_max_xdp_frame_size(struct i40e_vsi *vsi)
+static int i40e_max_vsi_frame_size(struct i40e_vsi *vsi,
+				   struct bpf_prog *xdp_prog)
 {
-	if (PAGE_SIZE >= 8192 || (vsi->back->flags & I40E_FLAG_LEGACY_RX))
-		return I40E_RXBUFFER_2048;
+	u16 rx_buf_len = i40e_calculate_vsi_rx_buf_len(vsi);
+	u16 chain_len;
+
+	if (xdp_prog)
+		chain_len = 1;
 	else
-		return I40E_RXBUFFER_3072;
+		chain_len = I40E_MAX_CHAINED_RX_BUFFERS;
+
+	return min_t(u16, rx_buf_len * chain_len, I40E_MAX_RXBUFFER);
 }
 
 /**
@@ -2919,12 +2939,13 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
+	int frame_size;
 
-	if (i40e_enabled_xdp_vsi(vsi)) {
-		int frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
-
-		if (frame_size > i40e_max_xdp_frame_size(vsi))
-			return -EINVAL;
+	frame_size = i40e_max_vsi_frame_size(vsi, vsi->xdp_prog);
+	if (new_mtu > frame_size - I40E_PACKET_HDR_PAD) {
+		netdev_err(netdev, "Error changing mtu to %d, Max is %d\n",
+			   new_mtu, frame_size - I40E_PACKET_HDR_PAD);
+		return -EINVAL;
 	}
 
 	netdev_dbg(netdev, "changing MTU from %d to %d\n",
@@ -3693,24 +3714,6 @@ static int i40e_vsi_configure_tx(struct i40e_vsi *vsi)
 	return err;
 }
 
-/**
- * i40e_calculate_vsi_rx_buf_len - Calculates buffer length
- *
- * @vsi: VSI to calculate rx_buf_len from
- */
-static u16 i40e_calculate_vsi_rx_buf_len(struct i40e_vsi *vsi)
-{
-	if (!vsi->netdev || (vsi->back->flags & I40E_FLAG_LEGACY_RX))
-		return I40E_RXBUFFER_2048;
-
-#if (PAGE_SIZE < 8192)
-	if (!I40E_2K_TOO_SMALL_WITH_PADDING && vsi->netdev->mtu <= ETH_DATA_LEN)
-		return I40E_RXBUFFER_1536 - NET_IP_ALIGN;
-#endif
-
-	return PAGE_SIZE < 8192 ? I40E_RXBUFFER_3072 : I40E_RXBUFFER_2048;
-}
-
 /**
  * i40e_vsi_configure_rx - Configure the VSI for Rx
  * @vsi: the VSI being configured
@@ -3722,13 +3725,15 @@ static int i40e_vsi_configure_rx(struct i40e_vsi *vsi)
 	int err = 0;
 	u16 i;
 
-	vsi->max_frame = I40E_MAX_RXBUFFER;
+	vsi->max_frame = i40e_max_vsi_frame_size(vsi, vsi->xdp_prog);
 	vsi->rx_buf_len = i40e_calculate_vsi_rx_buf_len(vsi);
 
 #if (PAGE_SIZE < 8192)
 	if (vsi->netdev && !I40E_2K_TOO_SMALL_WITH_PADDING &&
-	    vsi->netdev->mtu <= ETH_DATA_LEN)
-		vsi->max_frame = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
+	    vsi->netdev->mtu <= ETH_DATA_LEN) {
+		vsi->rx_buf_len = I40E_RXBUFFER_1536 - NET_IP_ALIGN;
+		vsi->max_frame = vsi->rx_buf_len;
+	}
 #endif
 
 	/* set up individual rings */
@@ -13314,14 +13319,14 @@ static netdev_features_t i40e_features_check(struct sk_buff *skb,
 static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 			  struct netlink_ext_ack *extack)
 {
-	int frame_size = vsi->netdev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
+	int frame_size = i40e_max_vsi_frame_size(vsi, prog);
 	struct i40e_pf *pf = vsi->back;
 	struct bpf_prog *old_prog;
 	bool need_reset;
 	int i;
 
 	/* Don't allow frames that span over multiple buffers */
-	if (frame_size > i40e_calculate_vsi_rx_buf_len(vsi)) {
+	if (vsi->netdev->mtu > frame_size - I40E_PACKET_HDR_PAD) {
 		NL_SET_ERR_MSG_MOD(extack, "MTU too large to enable XDP");
 		return -EINVAL;
 	}
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
