Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9B6700B4F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:20:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12D7842C5D;
	Fri, 12 May 2023 15:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12D7842C5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683904849;
	bh=qlk8aROzansnF+U8VyeL6j9hqblZBScGRtPDgt4L5s0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YVKzEhEbPoH1HwaAsjARnGPUa++AOrryNXJOIrjfF+niMxfYJqBkV1jxYea9XxMPy
	 4l6HUxiXdSkHkcYn3jF9KjGBk4MBAYQ9kunYZZGw0ZpyD2tpZgqVu+lzaxkhg7qR4T
	 SKkYU4j/JkGykFS7uOJFl0bKtU2hjrGhbBEAn2fZ/rJL/nKffShZXtWSkqyBrIXZwx
	 4iGQ9k3mv+0SPukvc87bE/Eb00hdIQZYDfaM78UHNnS5s0dW9jEckVVDYtfIgPvERh
	 05COSCrccfYLj8DrJYFiVVr7MimippMvt412CKpWLGilqTqmHnL3WE8D58DFFXEwwg
	 sdloHfyk32NSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id llFte_cGr-yV; Fri, 12 May 2023 15:20:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEB6942AAF;
	Fri, 12 May 2023 15:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEB6942AAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13C851BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFD2061371
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFD2061371
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pj2Z2_VPc0da for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:20:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B1F46135C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B1F46135C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="353061100"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="353061100"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="812114254"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="812114254"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 May 2023 08:20:28 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 8D5BD35FB7;
 Fri, 12 May 2023 16:20:24 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:16:32 +0200
Message-Id: <20230512151639.992033-9-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512151639.992033-1-larysa.zaremba@intel.com>
References: <20230512151639.992033-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683904841; x=1715440841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RxAZyfKvmCeKRbEnyC2VNCiFTtwsPxlmLEsjOF/q5aQ=;
 b=ex1tHYDjiCuEpNWfFB9Mhze6nr0Nry4WObUt7FzQk99CR1ogeCLPmsP/
 zM9eguo+yB84N18FwPOdCf9Nm+7b5+rQ7WwLhxzCejREagQT3AuItYlCs
 xPKpKSZmE+wu1F0ihQ9vyZcgSjdwmJ7GCZ1UN2jYbJFPYy1Nxgha304bc
 oEBRNy1Q91ho8FI7z1gcuntT6ETeScdDSyMM3/CZULBI/P9FuCXDX3f0T
 mm+fklqeoFpFWh7ceyPYUD2aePXu0Ornd6EwdR4A75XZuCXVcF6BcMwzx
 472tkqncWZvMfbFWNhd2VyGNGGtRj9N9xAXSTn2/zYmuewNM93WCOpISU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ex1tHYDj
Subject: [Intel-wired-lan] [PATCH 08/15] ice: Support XDP hints in AF_XDP ZC
 mode
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In AF_XDP ZC, xdp_buff is not stored on ring,
instead it is provided by xsk_pool.
Space for metadata sources right after such buffers was already reserved
in commit 94ecc5ca4dbf ("xsk: Add cb area to struct xdp_buff_xsk").
This makes the implementation rather straightforward.

Update AF_XDP ZC packet processing to support XDP hints.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 3b80aed5d47a..7f5ce3529666 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -708,16 +708,25 @@ static int ice_xmit_xdp_tx_zc(struct xdp_buff *xdp,
  * @xdp: xdp_buff used as input to the XDP program
  * @xdp_prog: XDP program to run
  * @xdp_ring: ring to be used for XDP_TX action
+ * @rx_desc: packet descriptor
  *
  * Returns any of ICE_XDP_{PASS, CONSUMED, TX, REDIR}
  */
 static int
 ice_run_xdp_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
-	       struct bpf_prog *xdp_prog, struct ice_tx_ring *xdp_ring)
+	       struct bpf_prog *xdp_prog, struct ice_tx_ring *xdp_ring,
+	       union ice_32b_rx_flex_desc *rx_desc)
 {
 	int err, result = ICE_XDP_PASS;
 	u32 act;
 
+	/* We can safely convert xdp_buff_xsk to ice_xdp_buff,
+	 * because there are XSK_PRIV_MAX bytes reserved in xdp_buff_xsk
+	 * right after xdp_buff, for our private use.
+	 * Macro insures we do not go above the limit.
+	 */
+	XSK_CHECK_PRIV_TYPE(struct ice_xdp_buff);
+	ice_xdp_set_meta_srcs(xdp, rx_desc, rx_ring);
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
 
 	if (likely(act == XDP_REDIRECT)) {
@@ -816,7 +825,8 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 		xsk_buff_set_size(xdp, size);
 		xsk_buff_dma_sync_for_cpu(xdp, rx_ring->xsk_pool);
 
-		xdp_res = ice_run_xdp_zc(rx_ring, xdp, xdp_prog, xdp_ring);
+		xdp_res = ice_run_xdp_zc(rx_ring, xdp, xdp_prog, xdp_ring,
+					 rx_desc);
 		if (likely(xdp_res & (ICE_XDP_TX | ICE_XDP_REDIR))) {
 			xdp_xmit |= xdp_res;
 		} else if (xdp_res == ICE_XDP_EXIT) {
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
