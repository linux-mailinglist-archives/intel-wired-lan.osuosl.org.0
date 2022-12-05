Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D83A6428AB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 13:42:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0013281DF5;
	Mon,  5 Dec 2022 12:42:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0013281DF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670244142;
	bh=ye/lTtAuSjhjZ+9A0c4EBngmwVgab3nGQYBLLtoIo7Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AdK+iBfdLt1Y8b9NAYK3XnAWQS95z2kjyWyu2w6XJSH6GFfiMDCHVmC9wSJVeKKL2
	 9XKmdBrCE8CPD3KvxD03E5126Mh6qvsLD9eK6vwNIdSdcMYsNGeS9iWFyOWQd0ji/w
	 xjLWIeedHtD3Typ2bBkvyFQxIQVZyrcdGrY9micdgF53DTW4PvVbo2ehSTuA/vByFZ
	 GDEsO8o6nglNcXXmaqWeR82FybrJ99czFSjoOy3N/m1ztLxIeKbqfnLUJGlYDXwq4B
	 OsdmQrxLup2ChXExHsmpGxwohdB4G/wLW5tS7tV5PJj16w40ifRjJtbcauui4Fz2t4
	 /AHfl+kHVLqjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gej01CHJYWQM; Mon,  5 Dec 2022 12:42:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEECE81BF4;
	Mon,  5 Dec 2022 12:42:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEECE81BF4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A55ED1BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 12:42:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C4AC400A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 12:42:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C4AC400A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KzIzWQJar5Uy for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 12:42:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 585EF40523
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 585EF40523
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 12:42:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="296033645"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="296033645"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 04:42:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="770335586"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="770335586"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga004.jf.intel.com with ESMTP; 05 Dec 2022 04:42:10 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Dec 2022 07:39:32 -0500
Message-Id: <20221205123932.470119-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670244133; x=1701780133;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BHpYhG5Nq3B2jQXUe4ZyHSm/o4ZHDqEi3QIaAHuETM0=;
 b=Zf8s13kBDPiO/J5UVRyZFWVKVNw+e875g/A/sas03xoxbqsqSEqAvdYC
 EzUUMlaLjNRq55ltuve0/votKUwYkdUlawIiRxRl9OWVxm+Af9VBsdxxx
 YeftklYBScwyaJZCsW2SOYWuYzkHCQrUXxb1pfxeVjliCn3xXMng+V/Ic
 ivmMes3Do3/zYL+yZgDqrxNIXpg29z9VMlic+3v0VU5yTYTKLsqTYCI/F
 0mknfvKLVQr43UpZHa8MNs4NAXvakEH4bNVDN+RrRHRtlT1dA/uNrqL8H
 zqkwyZcZmYDmnBwrvLtXTizkStNKWvej5gaaxMbMTb+RrVdDvPbmbkS+d
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zf8s13kB
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix the inability to attach
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

Whenever interface was down, function
i40e_xdp was passing vsi->rx_buf_len field
to i40e_xdp_setup() which was equal 0.
i40e_open() calls i40e_vsi_configure_rx()
which configures that field, but that only
happens when interface is up. When it is
down, i40e_open() is not being called, thus
vsi->rx_buf_len is not set.

Solution for this is calculate buffer length
in newly created function - i40e_calculate_vsi_rx_buf_len()
that return actual buffer length. Buffer length is
being calculated based on the same rules applied previously in
i40e_vsi_configure_rx() function.

Fixes: 613142b0bb88 ("i40e: Log error for oversized MTU on device")
Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
Signed-off-by: "Staszewski, BartoszX" <bartoszx.staszewski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Fixed commit title and message, this patch is only for a case of
     fresh start so I believe there is no need for rx_buf_len clearance
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
