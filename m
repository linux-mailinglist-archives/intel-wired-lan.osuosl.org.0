Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739B86D0C3E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 19:08:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B63341EA1;
	Thu, 30 Mar 2023 17:08:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B63341EA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680196085;
	bh=MR9uF7DTFscy2nDkspi0SqmaJIf5V+Ftp+Nf8yERQzc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E4BZBoOO2/XccrofuAAi01oLdNhF7N7mNEoSMq9NRp0hvwnK1guCh84I8Pw4vpYoE
	 A5G2fUSJCEG1UxZay0E4HIREo/LW7xBkx3SJTUnArecvYo8LDqAL6g1gP3Agx/yjlD
	 C2yrZqkd5rmj5F5jBZHqDobnvwHTgXyoxkl5wMDOFRoklMXc4P3KqjkxzGUGCqU54f
	 ++i5OGgUEZmDiY4muAnBa6Zyvq86Y7cwoRHJR7SS5RDH0I+CcvMb+4GE7jN+jIxYZn
	 uSK9TifWE1pPRpvRMMeUHNf4RV6QFVfRZa7neWEDUF4jmQ08PHe3L7ixQN1+u/OyZi
	 NCzoBZuH7q2ZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sLJMTPB5fygs; Thu, 30 Mar 2023 17:08:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAA5041E8C;
	Thu, 30 Mar 2023 17:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAA5041E8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 268471BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F24BA42056
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F24BA42056
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eGp6M9TQk4dI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 17:07:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A156F42054
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A156F42054
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:07:57 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-464-PL9fhRh3OziV1AH8E_BKTA-1; Thu, 30 Mar 2023 13:07:53 -0400
X-MC-Unique: PL9fhRh3OziV1AH8E_BKTA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2DC6F185A78B;
 Thu, 30 Mar 2023 17:07:52 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C02412166B33;
 Thu, 30 Mar 2023 17:07:51 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id D3F9B30736C72;
 Thu, 30 Mar 2023 19:07:50 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>
Date: Thu, 30 Mar 2023 19:07:50 +0200
Message-ID: <168019607082.3557870.9567318700335733457.stgit@firesoul>
In-Reply-To: <168019602958.3557870.9960387532660882277.stgit@firesoul>
References: <168019602958.3557870.9960387532660882277.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680196076;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QsEJuXGS7h5UzWyfV3tZvj1EZ/1kj1uGT+GUV/uonTg=;
 b=ZGciLBeHx5WTPkYEEjH2+oLMGDi7IJcCx+YIkNUleyQatKJliGxcFg5tCvV7ldc0js+jxX
 xyYL4FWVdrKilOxuif1VGZ/Wkxb3usanO+eD7/11RYRgqapIxE6Yz28LJ6WpTs9ETHkWzy
 wkHmWhakp4BpLbtAumT0Lb90zErZLQ4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZGciLBeH
Subject: [Intel-wired-lan] [PATCH bpf RFC-V3 2/5] mlx5:
 bpf_xdp_metadata_rx_hash add xdp rss hash type
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

Update API for bpf_xdp_metadata_rx_hash() with arg for xdp rss hash type
via mapping table.

The mlx5 hardware can also identify and RSS hash IPSEC.  This indicate
hash includes SPI (Security Parameters Index) as part of IPSEC hash.

Extend xdp core enum xdp_rss_hash_type with IPSEC hash type.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c |   63 +++++++++++++++++++++-
 include/linux/mlx5/device.h                      |   14 ++++-
 include/net/xdp.h                                |    3 +
 3 files changed, 76 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
index c5dae48b7932..0abfed0ff3e5 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
@@ -34,6 +34,7 @@
 #include <net/xdp_sock_drv.h>
 #include "en/xdp.h"
 #include "en/params.h"
+#include <linux/bitfield.h>
 
 int mlx5e_xdp_max_mtu(struct mlx5e_params *params, struct mlx5e_xsk_param *xsk)
 {
@@ -169,14 +170,72 @@ static int mlx5e_xdp_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)
 	return 0;
 }
 
-static int mlx5e_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash)
+/* Mapping HW RSS Type bits CQE_RSS_HTYPE_IP + CQE_RSS_HTYPE_L4 into 4-bits*/
+#define RSS_TYPE_MAX_TABLE	16 /* 4-bits max 16 entries */
+#define RSS_L4		GENMASK(1,0)
+#define RSS_L3		GENMASK(3,2) /* Same as CQE_RSS_HTYPE_IP */
+
+/* Valid combinations of CQE_RSS_HTYPE_IP + CQE_RSS_HTYPE_L4 sorted numerical */
+enum mlx5_rss_hash_type {
+	RSS_TYPE_NO_HASH	= (FIELD_PREP_CONST(RSS_L3, CQE_RSS_IP_NONE)| \
+				   FIELD_PREP_CONST(RSS_L4, CQE_RSS_L4_NONE)),
+	RSS_TYPE_L3_IPV4	= (FIELD_PREP_CONST(RSS_L3, CQE_RSS_IPV4)| \
+				   FIELD_PREP_CONST(RSS_L4, CQE_RSS_L4_NONE)),
+	RSS_TYPE_L4_IPV4_TCP	= (FIELD_PREP_CONST(RSS_L3, CQE_RSS_IPV4)| \
+				   FIELD_PREP_CONST(RSS_L4, CQE_RSS_L4_TCP)),
+	RSS_TYPE_L4_IPV4_UDP	= (FIELD_PREP_CONST(RSS_L3, CQE_RSS_IPV4)| \
+				   FIELD_PREP_CONST(RSS_L4, CQE_RSS_L4_UDP)),
+	RSS_TYPE_L4_IPV4_IPSEC	= (FIELD_PREP_CONST(RSS_L3, CQE_RSS_IPV4)| \
+				   FIELD_PREP_CONST(RSS_L4, CQE_RSS_L4_IPSEC)),
+	RSS_TYPE_L3_IPV6	= (FIELD_PREP_CONST(RSS_L3, CQE_RSS_IPV6)| \
+				   FIELD_PREP_CONST(RSS_L4, CQE_RSS_L4_NONE)),
+	RSS_TYPE_L4_IPV6_TCP	= (FIELD_PREP_CONST(RSS_L3, CQE_RSS_IPV6)| \
+				   FIELD_PREP_CONST(RSS_L4, CQE_RSS_L4_TCP)),
+	RSS_TYPE_L4_IPV6_UDP	= (FIELD_PREP_CONST(RSS_L3, CQE_RSS_IPV6)| \
+				   FIELD_PREP_CONST(RSS_L4, CQE_RSS_L4_UDP)),
+	RSS_TYPE_L4_IPV6_IPSEC	= (FIELD_PREP_CONST(RSS_L3, CQE_RSS_IPV6)| \
+				   FIELD_PREP_CONST(RSS_L4, CQE_RSS_L4_IPSEC)),
+} mlx5_rss_hash_type;
+
+/* Invalid combinations will simply return zero, allows no boundry checks */
+static const enum xdp_rss_hash_type mlx5_xdp_rss_type[RSS_TYPE_MAX_TABLE] = {
+	[RSS_TYPE_NO_HASH]	= XDP_RSS_TYPE_NONE,
+	[1]			= XDP_RSS_TYPE_NONE, /* Implicit zero */
+	[2]			= XDP_RSS_TYPE_NONE, /* Implicit zero */
+	[3]			= XDP_RSS_TYPE_NONE, /* Implicit zero */
+	[RSS_TYPE_L3_IPV4]	= XDP_RSS_TYPE_L3_IPV4,
+	[RSS_TYPE_L4_IPV4_TCP]	= XDP_RSS_TYPE_L4_IPV4_TCP,
+	[RSS_TYPE_L4_IPV4_UDP]	= XDP_RSS_TYPE_L4_IPV4_UDP,
+	[RSS_TYPE_L4_IPV4_IPSEC]= XDP_RSS_TYPE_L4_IPV4_IPSEC,
+	[RSS_TYPE_L3_IPV6]	= XDP_RSS_TYPE_L3_IPV6,
+	[RSS_TYPE_L4_IPV6_TCP]	= XDP_RSS_TYPE_L4_IPV6_TCP,
+	[RSS_TYPE_L4_IPV6_UDP]  = XDP_RSS_TYPE_L4_IPV6_UDP,
+	[RSS_TYPE_L4_IPV6_IPSEC]= XDP_RSS_TYPE_L4_IPV6_IPSEC,
+	[12]			= XDP_RSS_TYPE_NONE, /* Implicit zero */
+	[13]			= XDP_RSS_TYPE_NONE, /* Implicit zero */
+	[14]			= XDP_RSS_TYPE_NONE, /* Implicit zero */
+	[15]			= XDP_RSS_TYPE_NONE, /* Implicit zero */
+};
+
+static int mlx5e_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash,
+			     enum xdp_rss_hash_type *rss_type)
 {
 	const struct mlx5e_xdp_buff *_ctx = (void *)ctx;
+	const struct mlx5_cqe64 *cqe = _ctx->cqe;
+	u32 hash_type, l4_type, ip_type, lookup;
 
 	if (unlikely(!(_ctx->xdp.rxq->dev->features & NETIF_F_RXHASH)))
 		return -ENODATA;
 
-	*hash = be32_to_cpu(_ctx->cqe->rss_hash_result);
+	*hash = be32_to_cpu(cqe->rss_hash_result);
+
+	hash_type = cqe->rss_hash_type;
+	BUILD_BUG_ON(CQE_RSS_HTYPE_IP != RSS_L3); /* same mask */
+	ip_type = hash_type & CQE_RSS_HTYPE_IP;
+	l4_type = FIELD_GET(CQE_RSS_HTYPE_L4, hash_type);
+	lookup = ip_type | l4_type;
+	*rss_type = mlx5_xdp_rss_type[lookup];
+
 	return 0;
 }
 
diff --git a/include/linux/mlx5/device.h b/include/linux/mlx5/device.h
index 71b06ebad402..27aa9ae10996 100644
--- a/include/linux/mlx5/device.h
+++ b/include/linux/mlx5/device.h
@@ -36,6 +36,7 @@
 #include <linux/types.h>
 #include <rdma/ib_verbs.h>
 #include <linux/mlx5/mlx5_ifc.h>
+#include <linux/bitfield.h>
 
 #if defined(__LITTLE_ENDIAN)
 #define MLX5_SET_HOST_ENDIANNESS	0
@@ -980,14 +981,23 @@ enum {
 };
 
 enum {
-	CQE_RSS_HTYPE_IP	= 0x3 << 2,
+	CQE_RSS_HTYPE_IP	= GENMASK(3,2),
 	/* cqe->rss_hash_type[3:2] - IP destination selected for hash
 	 * (00 = none,  01 = IPv4, 10 = IPv6, 11 = Reserved)
 	 */
-	CQE_RSS_HTYPE_L4	= 0x3 << 6,
+	CQE_RSS_IP_NONE		= 0x0,
+	CQE_RSS_IPV4		= 0x1,
+	CQE_RSS_IPV6		= 0x2,
+	CQE_RSS_RESERVED	= 0x3,
+
+	CQE_RSS_HTYPE_L4	= GENMASK(7,6),
 	/* cqe->rss_hash_type[7:6] - L4 destination selected for hash
 	 * (00 = none, 01 = TCP. 10 = UDP, 11 = IPSEC.SPI
 	 */
+	CQE_RSS_L4_NONE		= 0x0,
+	CQE_RSS_L4_TCP		= 0x1,
+	CQE_RSS_L4_UDP		= 0x2,
+	CQE_RSS_L4_IPSEC	= 0x3,
 };
 
 enum {
diff --git a/include/net/xdp.h b/include/net/xdp.h
index 130091a55a6f..0260e680006a 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -461,14 +461,17 @@ enum xdp_rss_hash_type {
 	XDP_RSS_TYPE_L4_IPV4_TCP     = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_TCP,
 	XDP_RSS_TYPE_L4_IPV4_UDP     = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_UDP,
 	XDP_RSS_TYPE_L4_IPV4_SCTP    = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_SCTP,
+	XDP_RSS_TYPE_L4_IPV4_IPSEC   = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_IPSEC,
 
 	XDP_RSS_TYPE_L4_IPV6_TCP     = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_TCP,
 	XDP_RSS_TYPE_L4_IPV6_UDP     = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_UDP,
 	XDP_RSS_TYPE_L4_IPV6_SCTP    = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_SCTP,
+	XDP_RSS_TYPE_L4_IPV6_IPSEC   = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_IPSEC,
 
 	XDP_RSS_TYPE_L4_IPV6_TCP_EX  = XDP_RSS_TYPE_L4_IPV6_TCP |XDP_RSS_L3_DYNHDR,
 	XDP_RSS_TYPE_L4_IPV6_UDP_EX  = XDP_RSS_TYPE_L4_IPV6_UDP |XDP_RSS_L3_DYNHDR,
 	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP|XDP_RSS_L3_DYNHDR,
+	XDP_RSS_TYPE_L4_IPV6_IPSEC_EX= XDP_RSS_TYPE_L4_IPV6_IPSEC|XDP_RSS_L3_DYNHDR,
 };
 
 #ifdef CONFIG_NET


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
