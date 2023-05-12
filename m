Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3861A700BAA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:29:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE70742C8D;
	Fri, 12 May 2023 15:29:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE70742C8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683905347;
	bh=Ny6E4BAy6c+/9+lA3/+E7GVmix9z11ikH6h8LwvM+Ek=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z+mUE4Fys6dyyY8JrCBEJ5LXO3oi2ONbvSxZ/tpO8mS9CMzOtxRl+RtdXA/2h9GLk
	 dHJkeIqzcLOqniD1b5yYmTtQm+aN8nMwJE0f0IA4CqZXoMFxabmWA5QE1q99KXwxdJ
	 HoyVADfxHWP+1+A2iyhTrYzm7pMsspGozm+ViWpgbe6t/rn9N35CBUtrrw7UnQP9GV
	 TG+MVmiefzHB0G77VksqIiMQ1YqWgck5ws46pOoialKRBZ6g+Uo3sKPY10XjYUns1Z
	 UXB5pW8oaHenAHuKtQd6Nv9N5dFLjOQsSp/6M3i4wbb/+rjwmEupqF0l7jG/VsrQel
	 KYK+RDzcoV4Fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A9-Lz5U3IWnu; Fri, 12 May 2023 15:29:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4901340965;
	Fri, 12 May 2023 15:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4901340965
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DB3D1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB81382098
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB81382098
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkrDdHHjMyms for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:28:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42D5981FDE
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 42D5981FDE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="349653324"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="349653324"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:28:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="1030124517"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030124517"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 08:28:44 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 21092365B4;
 Fri, 12 May 2023 16:28:43 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:25:58 +0200
Message-Id: <20230512152607.992209-7-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512152607.992209-1-larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683905329; x=1715441329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cqKMx2oSgYgFjniI/xbMp1UqCMkQn2DYgiq9853O1hY=;
 b=Sfs7PH/MrYQXgCopvZzxr2OfSnFH2LOIfhDWP5JljiX9FikjfLzar3J6
 F9mwbyEwuOVj/cqe0XgkW6Njypzwu5VnSxaw3DpOgf9e/xAG0Ci/bgvI0
 zov2jvUq+7uG6ULlsECY/yPAyHLs6QJmmGzjpjwk5J4GPolMPvDdZ/dyX
 nVToJtV1Gf1sNr7do1vb8S7DhAx8Noy7C3ukgXc4jz43KVQkyk8eKnbsN
 cBV0cYwHeZNsJrJ3KUeJqG6XP/6egX0sVuFEUuuLpIt5lq6Nso+oU7hTq
 ts8l+QAN0XN3KeipveBxyF72BzEFDHeKV/CWN0KyA4ZBD9breylk8pi45
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sfs7PH/M
Subject: [Intel-wired-lan] [PATCH RESEND bpf-next 06/15] ice: Support HW
 timestamp hint
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

Use previously refactored code and create a function
that allows XDP code to read HW timestamp.

HW timestamp is the first supported hint in the driver,
so also add xdp_metadata_ops.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          |  2 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 22 +++++++++++++++++++
 3 files changed, 25 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index aa32111afd6e..ba1bb8392db1 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -962,4 +962,6 @@ static inline void ice_clear_rdma_cap(struct ice_pf *pf)
 	set_bit(ICE_FLAG_UNPLUG_AUX_DEV, pf->flags);
 	clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
 }
+
+extern const struct xdp_metadata_ops ice_xdp_md_ops;
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1f7c8edc22f..cda6c4a80737 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3378,6 +3378,7 @@ static void ice_set_ops(struct ice_vsi *vsi)
 
 	netdev->netdev_ops = &ice_netdev_ops;
 	netdev->udp_tunnel_nic_info = &pf->hw.udp_tunnel_nic;
+	netdev->xdp_metadata_ops = &ice_xdp_md_ops;
 	ice_set_ethtool_ops(netdev);
 
 	if (vsi->type != ICE_VSI_PF)
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 2515f5f7a2b6..e9589cadf811 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -537,3 +537,25 @@ void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res,
 			spin_unlock(&xdp_ring->tx_lock);
 	}
 }
+
+/**
+ * ice_xdp_rx_hw_ts - HW timestamp XDP hint handler
+ * @ctx: XDP buff pointer
+ * @ts_ns: destination address
+ *
+ * Copy HW timestamp (if available) to the destination address.
+ */
+static int ice_xdp_rx_hw_ts(const struct xdp_md *ctx, u64 *ts_ns)
+{
+	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
+
+	if (!ice_ptp_copy_rx_hwts_from_desc(xdp_ext->rx_ring,
+					    xdp_ext->eop_desc, ts_ns))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
+const struct xdp_metadata_ops ice_xdp_md_ops = {
+	.xmo_rx_timestamp		= ice_xdp_rx_hw_ts,
+};
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
