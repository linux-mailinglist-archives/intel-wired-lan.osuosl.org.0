Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27040700B52
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:21:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE2FA42C8C;
	Fri, 12 May 2023 15:21:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE2FA42C8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683904864;
	bh=93y8BrhOvhJow2koFPiEJkmuRJ3Qgxb75LPE91anY+g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L9oFRrv5uB0m77Tb78mfAgJRS3jVX7tKqGlkZkFVtZ6GZBywq2Pg5wLNtWv4n2Nqs
	 0zmN1MFVeXtJ7zVplUiOY6/5HzVR/eaGXNP2jeoWqzzh9xSDdIB2PX3XV62iBUVqUX
	 JNFLprNgMTrt9KTqqWPtpQQqC3ei9xmAXRGcIJ61ik6RTgiL1EEvxE2KtbktfE3eui
	 pV9pQMSbQZSPhUjtUvTRR1gUUgcUubH/hv0dIRXRCJ98EnEU8YQ8tWscEKaTjBaE2/
	 t15jPvz++roqbEpVOxAsOn3E0COHzW6zvl9zGPa2ipu1Ga0+1Ue+MUYeh8tJvhPdTu
	 C8oq9hcOkV+kw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OjKFhM1984w3; Fri, 12 May 2023 15:21:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A97942AB0;
	Fri, 12 May 2023 15:21:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A97942AB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19EA01BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E75BF83B98
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E75BF83B98
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x0INhTyOFl6U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:20:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4947083B8A
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4947083B8A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="353061188"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="353061188"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:20:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="812114413"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="812114413"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 May 2023 08:20:39 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AD00735FB7;
 Fri, 12 May 2023 16:20:35 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:16:34 +0200
Message-Id: <20230512151639.992033-11-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512151639.992033-1-larysa.zaremba@intel.com>
References: <20230512151639.992033-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683904857; x=1715440857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ca3C3CN5XD0jYqPpaEXrBQ6QBGcOSKPhdaJMaphgwXU=;
 b=gUwNJ9Bl+QLrrNp9Ea95SPw7Y5SWqStaxTD1b/jSnun5DeAPiCFtmWzJ
 3Ks5O7EYp2AMKAbYecd/VFcmBdK8VzaTjZwyMAhfPdiLinyH4OVqc9BAs
 WMwqgA/0/Eqx0Wjvv5Evr7JPFhsCjpqGStX3QojWdqyfgEya+mCOnFa/N
 ZynpwAjrzEEC2HU+y9k31yCv9LEjGAMB0zszSmbPGmRwSxzzQC4Rg/oYo
 h4fVQr1/0nga9GDo9hnDF3pAVhxn+g8tKu97EGrdMH4E7G0wTRAFOimAr
 v9LGddZMcT2J036e/bvO7XBMlKepQfHYBnS+d3KclpLSwO5Zs+PWpeDD/
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gUwNJ9Bl
Subject: [Intel-wired-lan] [PATCH 10/15] ice: Implement VLAN tag hint
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
