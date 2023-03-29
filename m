Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E6F6CEF5D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 18:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 002BB83F6B;
	Wed, 29 Mar 2023 16:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 002BB83F6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680107361;
	bh=H0gItH/cgYpRub7m3xWlgY+jtOFfEvN5tE6y+jccPLM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=czxPcB7MO9eazyZ+dIGdZH6KdSFTTQ23lGDQCTSY+T1z18jkIQ4jCHUi1/aZ3g9qy
	 51fvdJppDh51RJNqjIRNpNUiFmvd3Z4eV4zwz0gRsW81WPGOC5BtpMVuO3a05mgCLj
	 2nKKXlte6Vhcy8+847NAyFLRxd1ev4o4W760N8tQmtZ/PtA3hhzS+IDSh43UopsH7u
	 tB6myNqsmrUd2keywNHkJ3nWFBOWjCB1V5JG+WyhAuHPj4VaDt7UtrwPVpL4hJowls
	 46mS7Th56E7be+YolbPpNkO7RUwqMFeETZ2PGixVD1IrJ9dpto2zWDeijcNyY4GFGH
	 IKy5ACDr8zXUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z3OKpwVCwbUb; Wed, 29 Mar 2023 16:29:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D89F883D0E;
	Wed, 29 Mar 2023 16:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D89F883D0E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71A231BF294
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57D5161474
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57D5161474
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vnnv4np1B7uB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 16:29:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28EE260FE7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28EE260FE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:12 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-125-NmKGvAtlNLKqAHdQTB3maw-1; Wed, 29 Mar 2023 12:29:05 -0400
X-MC-Unique: NmKGvAtlNLKqAHdQTB3maw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6D87B885627;
 Wed, 29 Mar 2023 16:29:04 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1281C4020C83;
 Wed, 29 Mar 2023 16:29:04 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 4B4A830736C72;
 Wed, 29 Mar 2023 18:29:03 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>
Date: Wed, 29 Mar 2023 18:29:03 +0200
Message-ID: <168010734324.3039990.16454026957159811204.stgit@firesoul>
In-Reply-To: <168010726310.3039990.2753040700813178259.stgit@firesoul>
References: <168010726310.3039990.2753040700813178259.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680107351;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vnayASVoGfkPCqyQK+FSloIGuh996kv6+G+Hk7krqE4=;
 b=LqHmOMGjibwE5mbPdjF7EdrMP5ZbH73E7dML8xS/lDAuSXq/TA9732VPXaTb9r1OndJtOE
 t9foUWZLXY/Tiu5wjFxSFEJGHl2soCR8Vzf6nBg+4lJDK/iiELZq9Hy7ZdlE2ZaIOYiR5m
 oJvRgoqy48ZJk0txuGn6vO26YNZ4CaQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=LqHmOMGj
Subject: [Intel-wired-lan] [PATCH bpf RFC-V2 1/5] xdp: rss hash types
 representation
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, pabeni@redhat.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, edumazet@google.com, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The RSS hash type specifies what portion of packet data NIC hardware used
when calculating RSS hash value. The RSS types are focused on Internet
traffic protocols at OSI layers L3 and L4. L2 (e.g. ARP) often get hash
value zero and no RSS type. For L3 focused on IPv4 vs. IPv6, and L4
primarily TCP vs UDP, but some hardware supports SCTP.

Hardware RSS types are differently encoded for each hardware NIC. Most
hardware represent RSS hash type as a number. Determining L3 vs L4 often
requires a mapping table as there often isn't a pattern or sorting
according to ISO layer.

The patch introduce a XDP RSS hash type (xdp_rss_hash_type) that can both
be seen as a number that is ordered according by ISO layer, and can be bit
masked to separate IPv4 and IPv6 types for L4 protocols. Room is available
for extending later while keeping these properties. This maps and unifies
difference to hardware specific hashes.

This proposal change the kfunc API bpf_xdp_metadata_rx_hash() to return
this RSS hash type on success.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 include/net/xdp.h |   76 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 net/core/xdp.c    |    4 ++-
 2 files changed, 79 insertions(+), 1 deletion(-)

diff --git a/include/net/xdp.h b/include/net/xdp.h
index 5393b3ebe56e..1b2b17625c26 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -8,6 +8,7 @@
 
 #include <linux/skbuff.h> /* skb_shared_info */
 #include <uapi/linux/netdev.h>
+#include <linux/bitfield.h>
 
 /**
  * DOC: XDP RX-queue information
@@ -396,6 +397,81 @@ XDP_METADATA_KFUNC_xxx
 MAX_XDP_METADATA_KFUNC,
 };
 
+/* For partitioning of xdp_rss_hash_type */
+#define RSS_L3		GENMASK(2,0) /* 3-bits = values between 1-7 */
+#define L4_BIT		BIT(3)       /* 1-bit - L4 indication */
+#define RSS_L4_IPV4	GENMASK(6,4) /* 3-bits */
+#define RSS_L4_IPV6	GENMASK(9,7) /* 3-bits */
+#define RSS_L4		GENMASK(9,3) /* = 7-bits - covering L4 IPV4+IPV6 */
+#define L4_IPV6_EX_BIT	BIT(9)       /* 1-bit - L4 IPv6 with Extension hdr */
+				     /* 11-bits in total */
+
+/* Lower 4-bits value of xdp_rss_hash_type */
+enum xdp_rss_L4 {
+	XDP_RSS_L4_MASK		= GENMASK(3,0), /* 4-bits = values between 0-15 */
+	XDP_RSS_L4_NONE		= 0, /* Not L4 based hash */
+	XDP_RSS_L4_ANY		= 1, /* L4 based hash but protocol unknown */
+	XDP_RSS_L4_TCP		= 2,
+	XDP_RSS_L4_UDP		= 3,
+	XDP_RSS_L4_SCTP		= 4,
+	XDP_RSS_L4_IPSEC	= 5, /* L4 based hash include IPSEC SPI */
+/*
+ RFC: We don't care about vasting space, then we could just store the
+ protocol number (8-bits) directly. See /etc/protocols
+	XDP_RSS_L4_TCP		= 6,
+	XDP_RSS_L4_UDP		= 17,
+	XDP_RSS_L4_SCTP		= 132,
+	XDP_RSS_L4_IPSEC_ESP	= 50, // Issue: mlx5 didn't say ESP or AH
+	XDP_RSS_L4_IPSEC_AH	= 51, // both ESP+AH just include SPI in hash
+ */
+};
+
+/* Values shifted for use in xdp_rss_hash_type */
+enum xdp_rss_L3 {
+	XDP_RSS_L3_MASK		= GENMASK(5,4), /* 2-bits = values between 1-3 */
+	XDP_RSS_L3_IPV4		= FIELD_PREP_CONST(XDP_RSS_L3_MASK, 1),
+	XDP_RSS_L3_IPV6		= FIELD_PREP_CONST(XDP_RSS_L3_MASK, 2),
+};
+
+/* Bits shifted for use in xdp_rss_hash_type */
+enum xdp_rss_bit {
+	XDP_RSS_BIT_MASK	= GENMASK(7,6), /* 2-bits */
+	/* IPv6 Extension Hdr */
+	XDP_RSS_BIT_EX = FIELD_PREP_CONST(XDP_RSS_BIT_MASK, BIT(0)),
+	/* XDP_RSS_BIT_VLAN ??? = FIELD_PREP_CONST(XDP_RSS_BIT_MASK, BIT(1)), */
+};
+
+/* RSS hash type combinations used for driver HW mapping */
+enum xdp_rss_hash_type {
+	XDP_RSS_TYPE_NONE            = 0,
+	XDP_RSS_TYPE_L2              = XDP_RSS_TYPE_NONE,
+
+	XDP_RSS_TYPE_L3_MASK         = XDP_RSS_L3_MASK,
+	XDP_RSS_TYPE_L3_IPV4         = XDP_RSS_L3_IPV4,
+	XDP_RSS_TYPE_L3_IPV6         = XDP_RSS_L3_IPV6,
+	XDP_RSS_TYPE_L3_IPV6_EX      = XDP_RSS_L3_IPV6 | XDP_RSS_BIT_EX,
+
+	XDP_RSS_TYPE_L4_MASK         = XDP_RSS_L4_MASK,
+	XDP_RSS_TYPE_L4_ANY          = XDP_RSS_L4_ANY,
+	XDP_RSS_TYPE_L4_IPV4_TCP     = XDP_RSS_L3_IPV4 | XDP_RSS_L4_TCP,
+	XDP_RSS_TYPE_L4_IPV4_UDP     = XDP_RSS_L3_IPV4 | XDP_RSS_L4_UDP,
+	XDP_RSS_TYPE_L4_IPV4_SCTP    = XDP_RSS_L3_IPV4 | XDP_RSS_L4_SCTP,
+
+	XDP_RSS_TYPE_L4_IPV6_TCP     = XDP_RSS_L3_IPV6 | XDP_RSS_L4_TCP,
+	XDP_RSS_TYPE_L4_IPV6_UDP     = XDP_RSS_L3_IPV6 | XDP_RSS_L4_UDP,
+	XDP_RSS_TYPE_L4_IPV6_SCTP    = XDP_RSS_L3_IPV6 | XDP_RSS_L4_UDP,
+
+	XDP_RSS_TYPE_L4_IPV6_TCP_EX  = XDP_RSS_TYPE_L4_IPV6_TCP |XDP_RSS_BIT_EX,
+	XDP_RSS_TYPE_L4_IPV6_UDP_EX  = XDP_RSS_TYPE_L4_IPV6_UDP |XDP_RSS_BIT_EX,
+	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP|XDP_RSS_BIT_EX,
+};
+#undef RSS_L3
+#undef L4_BIT
+#undef RSS_L4_IPV4
+#undef RSS_L4_IPV6
+#undef RSS_L4
+#undef L4_IPV6_EX_BIT
+
 #ifdef CONFIG_NET
 u32 bpf_xdp_metadata_kfunc_id(int id);
 bool bpf_dev_bound_kfunc_id(u32 btf_id);
diff --git a/net/core/xdp.c b/net/core/xdp.c
index 7133017bcd74..81d41df30695 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -721,12 +721,14 @@ __bpf_kfunc int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx, u64 *tim
  * @hash: Return value pointer.
  *
  * Return:
- * * Returns 0 on success or ``-errno`` on error.
+ * * Returns (positive) RSS hash **type** on success or ``-errno`` on error.
+ * * ``enum xdp_rss_hash_type`` : RSS hash type
  * * ``-EOPNOTSUPP`` : means device driver doesn't implement kfunc
  * * ``-ENODATA``    : means no RX-hash available for this frame
  */
 __bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash)
 {
+	BTF_TYPE_EMIT(enum xdp_rss_hash_type);
 	return -EOPNOTSUPP;
 }
 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
