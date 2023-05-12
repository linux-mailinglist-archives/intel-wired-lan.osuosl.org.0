Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 865F4700BB2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:29:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19B9E42CB4;
	Fri, 12 May 2023 15:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19B9E42CB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683905367;
	bh=93y8BrhOvhJow2koFPiEJkmuRJ3Qgxb75LPE91anY+g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xcj/gIuk5fgMRzXh/GWLRVQWtoiDm8TBlQ9YzlN7zlOGtL6xsxEMlMttojLXBD7qT
	 olt7KXaqnzm66zAzeW1+IP13VDJebq2UuF/Ncf/ncVKqvsaxkOWwfBzeNaLv/lGT+9
	 RZuWZxgZSBxnNF0EnBwnZQXSE57bqLnIUKT0wIs76XvMeIslpSai0uDvQQ0SLej5uX
	 CAObDZzN2wVbU3owXZJwmRkXsN2FEFu7geld2d/ZLZgGsoQ19kLYU+8JmFyEIdC/yq
	 r1QHtIEmhpS3dwCV6oXgvjQ8dulPfk1t362jCUTq/vWHInnKQQ2w+FDo8sCmsmvw/R
	 QbAiSphUeksFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O8IHM5i3o2N7; Fri, 12 May 2023 15:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B959142045;
	Fri, 12 May 2023 15:29:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B959142045
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C2BE1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E98C46137C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E98C46137C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 29awoLcJ51ux for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:28:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4579860B42
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4579860B42
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="349653409"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="349653409"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="1030124568"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030124568"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 08:28:54 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1EF1A35FB7;
 Fri, 12 May 2023 16:28:53 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:26:02 +0200
Message-Id: <20230512152607.992209-11-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512152607.992209-1-larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683905339; x=1715441339;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ca3C3CN5XD0jYqPpaEXrBQ6QBGcOSKPhdaJMaphgwXU=;
 b=jqJD7T1vqbHKe5t8h7mQB0lEJlIbqy2VxjT/I8dpSGCZL1TPdR1VFJk4
 p4VbL5XIjICJORWKCtdEb/JgLZspk36YyjrubJglEthBjC3aNJ6Qv0OIN
 VGcPtlDyV+2kP4/SsrNk8r+0EYSSEbeQZ365sCuQOqeaU4Tx3/JeChlqa
 JDmUGbWt+LOigemnapXn0Nstd4FRfqlMEjeNb0LZxLPr4/Aytqvga4AQr
 FqI5Wjs/qmuum5kGP+6fdfoYmiQm59IRQrJQkPi+DuRyEftkQa4BCHQaL
 AvxPRMOtYcg14oLtCsT7lRsa4JXROt4GOHrp3NCbIZoosT6cddvIYorme
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jqJD7T1v
Subject: [Intel-wired-lan] [PATCH RESEND bpf-next 10/15] ice: Implement VLAN
 tag hint
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

Implement .xmo_rx_vlan_tag callback to allow XDP code to read
packet's VLAN tag.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 1caa73644e7b..39547feb6106 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -627,7 +627,51 @@ static int ice_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash,
 	return 0;
 }
 
+/**
+ * ice_xdp_rx_ctag - VLAN tag XDP hint handler
+ * @ctx: XDP buff pointer
+ * @vlan_tag: destination address
+ *
+ * Copy VLAN tag (if was stripped) to the destination address.
+ */
+static int ice_xdp_rx_ctag(const struct xdp_md *ctx, u16 *vlan_tag)
+{
+	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
+	netdev_features_t features;
+
+	features = xdp_ext->rx_ring->netdev->features;
+
+	if (!(features & NETIF_F_HW_VLAN_CTAG_RX))
+		return -EINVAL;
+
+	*vlan_tag = ice_get_vlan_tag_from_rx_desc(xdp_ext->eop_desc);
+	return 0;
+}
+
+/**
+ * ice_xdp_rx_stag - VLAN s-tag XDP hint handler
+ * @ctx: XDP buff pointer
+ * @vlan_tag: destination address
+ *
+ * Copy VLAN s-tag (if was stripped) to the destination address.
+ */
+static int ice_xdp_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag)
+{
+	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
+	netdev_features_t features;
+
+	features = xdp_ext->rx_ring->netdev->features;
+
+	if (!(features & NETIF_F_HW_VLAN_STAG_RX))
+		return -EINVAL;
+
+	*vlan_tag = ice_get_vlan_tag_from_rx_desc(xdp_ext->eop_desc);
+	return 0;
+}
+
 const struct xdp_metadata_ops ice_xdp_md_ops = {
 	.xmo_rx_timestamp		= ice_xdp_rx_hw_ts,
 	.xmo_rx_hash			= ice_xdp_rx_hash,
+	.xmo_rx_ctag			= ice_xdp_rx_ctag,
+	.xmo_rx_stag			= ice_xdp_rx_stag,
 };
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
