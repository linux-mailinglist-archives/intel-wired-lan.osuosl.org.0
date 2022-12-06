Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED066447E0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 16:21:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C714403A9;
	Tue,  6 Dec 2022 15:21:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C714403A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670340089;
	bh=E+OuXhNFOAaAYZtZ6g42HAdNN5wmgtvhN1xNs8xkc+k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ph4f+EykbUfxypFWozyXXDlnTyeJh9ESOatjeOKQRmwL88bwv9EunLO7+BtzhN9zw
	 LqVG9FmtPSOp5PnpWaAckBS1d8XmtGl6+VywymO/MyPPnyuMy3RslmHkYWG8+f4IPA
	 nPwqmeYsKJ2D9UG3lopSIXKJkzy1MmV3AxMFx691ug8DOtChEz2/COv1rbN40tGPrn
	 rsBBnfIfR47Lo+vJguZ+L55ApBKRInCiXAMqJZoBx3jdvQmiRZ0TRv9rW4FSinLFSh
	 fowpu7MFus3YeEZlSv2BFRM1LL1lDtcmso+ozo3CRV/agJ08xznEQKR/6T7/KZ6ZfP
	 5MKKMs04NAvWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fk3wqTTj3krB; Tue,  6 Dec 2022 15:21:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F3F9C40463;
	Tue,  6 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F3F9C40463
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E4551BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 15:21:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 58B4240463
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 15:21:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58B4240463
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id klpUdc1WbrYt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 15:21:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27127403A9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 27127403A9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 15:21:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="304270343"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="304270343"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 07:19:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="709705085"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="709705085"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga008.fm.intel.com with ESMTP; 06 Dec 2022 07:19:40 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Dec 2022 10:17:02 -0500
Message-Id: <20221206151702.581169-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670340082; x=1701876082;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BRB2jNRAHx0RzNV/nQBaCLPef6gybrHDdvUMPEVFBrE=;
 b=ZadGDYE5CDmbqAAcRCaLv11VbeoICFH/1TOOXLypBGHycXIQIpbb/wxe
 GMMjbDtSTI2BhXK7MRlbA5lWx1jRKdbRJHikwWDqmJHOFT8K4BZRwNHcE
 6RQknEKO425TA01Jp6kzX6T8LkRsD01pf6c7MeHy/D9p9NBG6apEBWskI
 RceUxtNKpsBRj1mRWmzQTu77mnfZhpihXolAfX/7IWuRU3XHuyH86eTTh
 z6p0pYEPc9UbvBk/SKr9y92RbLfWryxoZytlpnJImuL0OzY0oh2iuNxrt
 UJi8nyZY+EQoLFjyaAwZNSLcnwtbjwy9EDvlsmhLayt14KNGSkhYJYJdB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZadGDYE5
Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix the inability to attach
 XDP program on downed interface
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
Cc: "Staszewski, BartoszX" <bartoszx.staszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Staszewski, BartoszX" <bartoszx.staszewski@intel.com>

Whenever trying to load XDR prog on downed interface, function i40e_xdp
was passing vsi->rx_buf_len field to i40e_xdp_setup() which was equal 0.
i40e_open() calls i40e_vsi_configure_rx() which configures that field,
but that only happens when interface is up. When it is down, i40e_open()
is not being called, thus vsi->rx_buf_len is not set.

Solution for this is calculate buffer length in newly created
function - i40e_calculate_vsi_rx_buf_len() that return actual buffer
length. Buffer length is being calculated based on the same rules
applied previously in i40e_vsi_configure_rx() function.

Fixes: 613142b0bb88 ("i40e: Log error for oversized MTU on device")
Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
Signed-off-by: "Staszewski, BartoszX" <bartoszx.staszewski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 v3: Added more infomartion and reformated commit message
 v2: Fixed commit title and message, this patch is only for a case of
     fresh start so I believe there is no need for rx_buf_len clearance
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 42 +++++++++++++++------
 1 file changed, 30 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6416322d7c18..b8a8098110eb 100644
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
+	    vsi->netdev->mtu <= ETH_DATA_LEN)
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
@@ -13282,7 +13300,7 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
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
