Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EC3700BB6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:29:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2F6442C5D;
	Fri, 12 May 2023 15:29:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2F6442C5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683905375;
	bh=0MP8HoQ4MfEkr2HHT1sgP5YkaTXXtgcybkUlD5o+M7o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C/vBhisuFiddwMqZooYwpwuiR/6ROD+bhWtUqBRxG9VD+1qHSG5yGnF39FvOCwiqj
	 BrmBASOETKj64oCERmTYHcEXNtHMTP6E0qRKjx5PSn9EUX2EdM9FxIfvc5wLJkS+Z9
	 T/dVIsGC5boC7fHvYrtpzqJ2T+RVfmUA+X82ELw4BcFppF8UZ8/i72dTnSdSjMHlw7
	 il+mcNkc4Os86QxR9D1DdOUl/XiYLvWdrmOAVYLqrFAKGqFnJI3j+dLjlbe/BQqzNy
	 eqOaZziLYjgJyZ6hm/5VarKsHThiO7U2Olb7zNgCU3gsvhiqf31WAhLM2iymul3JG3
	 Xwm61Od5OkvGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S8yCDbi0ITNz; Fri, 12 May 2023 15:29:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6059342045;
	Fri, 12 May 2023 15:29:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6059342045
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50AC71BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 29CD561383
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29CD561383
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bNFCdWRXEp3M for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8437D60B42
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8437D60B42
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="349653453"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="349653453"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:29:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="1030124591"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030124591"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 08:29:00 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A719B35FB9;
 Fri, 12 May 2023 16:28:58 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:26:04 +0200
Message-Id: <20230512152607.992209-13-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512152607.992209-1-larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683905344; x=1715441344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lKsK28rErg60/rNwLMPgryg9t46tucLmP+/ktIgM2XM=;
 b=JnATgzUrbtYHLkZ4bqfs6RUOaFF9vKI8HToB1ur4egD5Yo+RY29o+UZ/
 49OG9hYnPiZVl1dsvgW5tU9Z193vUElkyhA4fjJp3VyCEvka1xYHeLNhQ
 OJwMlQZtjwlFQBDGdl+GobLZeLVg1N0UXYkaENgLsX/2BOtYLn+aKcwRi
 c7dmceDnM8tWDi3ayI0YCD/5Vd2uwHJI/pANIJPywgfXxLppI96x+yM4Z
 qjCXG4J1P7q/0cXU9v7K+6IUaNCd9vzRyqE2mVXzqws04/K4FCKSwIiU1
 3BpkfAGeKdEZOV1UHgsOtnwnaZKvvD1eW1qvzAj38kAp8hjs16tAlD+kI
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JnATgzUr
Subject: [Intel-wired-lan] [PATCH RESEND bpf-next 12/15] ice: Implement
 checksum level hint
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

Implement .xmo_rx_csum_lvl callback to allow XDP code to determine,
whether checksum was checked by hardware and on what level.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 24 ++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 39547feb6106..6a3ec925f20d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -161,6 +161,8 @@ ice_rx_csum_checked(union ice_32b_rx_flex_desc *rx_desc, u16 ptype,
 	 */
 	if (decoded.tunnel_type >= ICE_RX_PTYPE_TUNNEL_IP_GRENAT)
 		*csum_lvl_dst = 1;
+	else
+		*csum_lvl_dst = 0;
 
 	/* Only report checksum unnecessary for TCP, UDP, or SCTP */
 	switch (decoded.inner_prot) {
@@ -190,7 +192,7 @@ static void
 ice_rx_csum_into_skb(struct ice_rx_ring *ring, struct sk_buff *skb,
 		     union ice_32b_rx_flex_desc *rx_desc, u16 ptype)
 {
-	u8 csum_level = 0;
+	u8 csum_level;
 
 	/* Start with CHECKSUM_NONE and by default csum_level = 0 */
 	skb->ip_summed = CHECKSUM_NONE;
@@ -669,9 +671,29 @@ static int ice_xdp_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag)
 	return 0;
 }
 
+/**
+ * ice_xdp_rx_csum_lvl - Get level, at which HW has checked the checksum
+ * @ctx: XDP buff pointer
+ * @csum_lvl: destination address
+ *
+ * Copy HW checksum level (if was checked) to the destination address.
+ */
+static int ice_xdp_rx_csum_lvl(const struct xdp_md *ctx, u8 *csum_lvl)
+{
+	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
+	u16 ptype = ice_get_ptype(xdp_ext->eop_desc);
+
+	if (!ice_rx_csum_checked(xdp_ext->eop_desc, ptype, csum_lvl,
+				 xdp_ext->rx_ring))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 const struct xdp_metadata_ops ice_xdp_md_ops = {
 	.xmo_rx_timestamp		= ice_xdp_rx_hw_ts,
 	.xmo_rx_hash			= ice_xdp_rx_hash,
 	.xmo_rx_ctag			= ice_xdp_rx_ctag,
 	.xmo_rx_stag			= ice_xdp_rx_stag,
+	.xmo_rx_csum_lvl		= ice_xdp_rx_csum_lvl,
 };
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
