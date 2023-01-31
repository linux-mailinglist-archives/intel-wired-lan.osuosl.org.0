Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 641E16837C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:45:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D05FC60BDE;
	Tue, 31 Jan 2023 20:45:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D05FC60BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675197949;
	bh=WDQZw5E28Hs0h3S+fn6bO90Lf1bNL5tkOO2e8VauIfI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xh09Y1lWkeoyvHd9X2eGLMFGE6XKs9OA8ZV7AfDoKWBPvCrR9e+sUL/2z2UrUWFXS
	 /BFdDnjCeVNV2ixxlaouOd4TxdITFmt/4DYbKq317e4ZLIVI7iKPzOnyyTNDLmxbhb
	 14I0Ivao7je2a8zXVMGrEcUn1AyFqe6v6bbIORW1yQIiNRBJqO59ZT/V0JjNyk362g
	 sTOHPGrf3+ahJoKhhhN1JjXYTyUNerRcqif+Gsb/Pwlv7RMTl3jgzwm0tyJFLOLQY9
	 nnMJec8Trix9Do8XEJW/9AEgi/re1Wm6dMTbQp4DDFCE85bD3/igYhCfJEcSTQ3biq
	 kEcs0qgHPchxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0XjQ5iluPEWd; Tue, 31 Jan 2023 20:45:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD42D60BA8;
	Tue, 31 Jan 2023 20:45:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD42D60BA8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CB871BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2676081AF6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2676081AF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ri5iUd3loAtQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76A8C81A34
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76A8C81A34
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167191"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167191"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:45:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595293"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595293"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:26 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:45:00 +0100
Message-Id: <20230131204506.219292-8-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
References: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197933; x=1706733933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ckiQmM973dMAl5oTy8Y59xEi2bspMtjYPeLZuf6LzCk=;
 b=JxIl4rGgVd5un12W8Itq+lr+ALD/jrNDL2P4fNTNhmZCURGxa9XDbTdy
 Qwx0XsB1j5hB7rjoAWN5PVpmGBnAGMGwTcNLLdOmui21L0nElonAdg+bG
 wR5w6uq6Ki+6fPXMEPnKL+N1qWn9HrlgtnPiOtT55WEY7Z1cqQ1lIP12R
 MFxmcbicnUrQjONs9cvzbWidZQpOoJXjxzvdJEzHhE0GmCu7tsuyG2a0r
 0eeQdhJufiGSJRCVNH5HyaQyihgOSX0vwCsin6fzLpPOuPIeIYfM5bjkV
 v+XfrwpXBErkH8yDadVBLRy7oT7ZsOP1fR01paa+YIiabvG6/UvTt0G0e
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JxIl4rGg
Subject: [Intel-wired-lan] [PATCH bpf-next 07/13] ice: use
 ice_max_xdp_frame_size() in ice_xdp_setup_prog()
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
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This should have been used in there from day 1, let us address that
before introducing XDP multi-buffer support for Rx side.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 28 +++++++++++------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 88b4a017990d..a9d644276dfd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2862,6 +2862,18 @@ int ice_vsi_determine_xdp_res(struct ice_vsi *vsi)
 	return 0;
 }
 
+/**
+ * ice_max_xdp_frame_size - returns the maximum allowed frame size for XDP
+ * @vsi: Pointer to VSI structure
+ */
+static int ice_max_xdp_frame_size(struct ice_vsi *vsi)
+{
+	if (test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags))
+		return ICE_RXBUF_1664;
+	else
+		return ICE_RXBUF_3072;
+}
+
 /**
  * ice_xdp_setup_prog - Add or remove XDP eBPF program
  * @vsi: VSI to setup XDP for
@@ -2872,11 +2884,11 @@ static int
 ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
 		   struct netlink_ext_ack *extack)
 {
-	int frame_size = vsi->netdev->mtu + ICE_ETH_PKT_HDR_PAD;
+	unsigned int frame_size = vsi->netdev->mtu + ICE_ETH_PKT_HDR_PAD;
 	bool if_running = netif_running(vsi->netdev);
 	int ret = 0, xdp_ring_err = 0;
 
-	if (frame_size > vsi->rx_buf_len) {
+	if (frame_size > ice_max_xdp_frame_size(vsi)) {
 		NL_SET_ERR_MSG_MOD(extack, "MTU too large for loading XDP");
 		return -EOPNOTSUPP;
 	}
@@ -7321,18 +7333,6 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	dev_err(dev, "Rebuild failed, unload and reload driver\n");
 }
 
-/**
- * ice_max_xdp_frame_size - returns the maximum allowed frame size for XDP
- * @vsi: Pointer to VSI structure
- */
-static int ice_max_xdp_frame_size(struct ice_vsi *vsi)
-{
-	if (test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags))
-		return ICE_RXBUF_1664;
-	else
-		return ICE_RXBUF_3072;
-}
-
 /**
  * ice_change_mtu - NDO callback to change the MTU
  * @netdev: network interface device structure
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
