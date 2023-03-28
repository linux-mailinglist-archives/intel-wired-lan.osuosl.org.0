Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 223AE6CCB3F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 22:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BDD640512;
	Tue, 28 Mar 2023 20:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BDD640512
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680034576;
	bh=pM+dDO66z1KXdM9S4Xkn4NUOpv6Chixw1RlSD2hXjHE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XetPvgFQdKYxVm9bKiFdCkT11xZsp9Fu87m07vS5fMB8l7rRL/MB8AOWt8dmxKx4b
	 r6clgVbpVeTxAz+UQmtZfkAU1O3YwjN+F2OZB52tiPAswPUblIyo35n/e203wSxIR/
	 bnX5ETcw4QcUCVCz5IclAJpRcjmf4tr90VXJ+goqrPY8Rnh+XeJd0xoaOiGNnt0l7q
	 jZU1CdFd+aT8BQ/fvXZaQQ2VA0eHwV3CrrnqCGiYXWy4r3H0c8UnJSXKSA+RifrrLS
	 nNETSyYrnSQ7g01L0DG/xJOkgeqr1nJui+bU9sdeCGHugatsn5gspgcwCUe0imc91n
	 XXDQH27zE8SNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FRw_PoGQEDZH; Tue, 28 Mar 2023 20:16:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20E774005F;
	Tue, 28 Mar 2023 20:16:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20E774005F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08AEA1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D502240059
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D502240059
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jwu_PKrNvCTL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 20:16:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB88A4005F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB88A4005F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:08 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-231-g5Rjh4JJNqSdboiLnOtOPQ-1; Tue, 28 Mar 2023 16:16:00 -0400
X-MC-Unique: g5Rjh4JJNqSdboiLnOtOPQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B3B4101A531;
 Tue, 28 Mar 2023 20:15:59 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 16548492C3E;
 Tue, 28 Mar 2023 20:15:59 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 3616E30736C72;
 Tue, 28 Mar 2023 22:15:58 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Tue, 28 Mar 2023 22:15:58 +0200
Message-ID: <168003455815.3027256.7575362149566382055.stgit@firesoul>
In-Reply-To: <168003451121.3027256.13000250073816770554.stgit@firesoul>
References: <168003451121.3027256.13000250073816770554.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680034567;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Btpaq0T95DzJARTIOQ/tKL2YaQOMLaE7wfp3COF2FTY=;
 b=g/IVm58CaLBgaVgV2fvNJTr/zpqnQmxubQZXvVCj/uqkvmuy41MeUavcaWm8zVaPULdFin
 w8G9qxlVVZEPYrH2zuPv3suDEJd75FlPfz0p+MqUp6YS+FUajG3kpldJ+gqEelTj8YbibL
 TDThD/5SeYe4UA7Fp7hKCNUQIXtYDrc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=g/IVm58C
Subject: [Intel-wired-lan] [PATCH bpf RFC 1/4] xdp: rss hash types
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
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
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
 include/net/xdp.h |   51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 net/core/xdp.c    |    4 +++-
 2 files changed, 54 insertions(+), 1 deletion(-)

diff --git a/include/net/xdp.h b/include/net/xdp.h
index 5393b3ebe56e..63f462f5ea7f 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -8,6 +8,7 @@
 
 #include <linux/skbuff.h> /* skb_shared_info */
 #include <uapi/linux/netdev.h>
+#include <linux/bitfield.h>
 
 /**
  * DOC: XDP RX-queue information
@@ -396,6 +397,56 @@ XDP_METADATA_KFUNC_xxx
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
+/* The XDP RSS hash type (xdp_rss_hash_type) can both be seen as a number that
+ * is ordered according by ISO layer, and can be bit masked to separate IPv4 and
+ * IPv6 types for L4 protocols. Room is available for extending later while
+ * keeping above properties, as this need to cover NIC hardware RSS types.
+ */
+enum xdp_rss_hash_type {
+	XDP_RSS_TYPE_NONE            = 0,
+	XDP_RSS_TYPE_L2              = XDP_RSS_TYPE_NONE,
+
+	XDP_RSS_TYPE_L3_MASK         = RSS_L3,
+	XDP_RSS_TYPE_L3_IPV4         = FIELD_PREP_CONST(RSS_L3, 1),
+	XDP_RSS_TYPE_L3_IPV6         = FIELD_PREP_CONST(RSS_L3, 2),
+	XDP_RSS_TYPE_L3_IPV6_EX      = FIELD_PREP_CONST(RSS_L3, 4),
+
+	XDP_RSS_TYPE_L4_MASK         = RSS_L4,
+	XDP_RSS_TYPE_L4_SHIFT        = __bf_shf(RSS_L4),
+	XDP_RSS_TYPE_L4_MASK_EX      = RSS_L4 | L4_IPV6_EX_BIT,
+
+	XDP_RSS_TYPE_L4_IPV4_MASK    = RSS_L4_IPV4,
+	XDP_RSS_TYPE_L4_BIT          = L4_BIT,
+	XDP_RSS_TYPE_L4_IPV4_TCP     = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV4, 1),
+	XDP_RSS_TYPE_L4_IPV4_UDP     = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV4, 2),
+	XDP_RSS_TYPE_L4_IPV4_SCTP    = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV4, 3),
+
+	XDP_RSS_TYPE_L4_IPV6_MASK    = RSS_L4_IPV6,
+	XDP_RSS_TYPE_L4_IPV6_TCP     = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV6, 1),
+	XDP_RSS_TYPE_L4_IPV6_UDP     = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV6, 2),
+	XDP_RSS_TYPE_L4_IPV6_SCTP    = L4_BIT|FIELD_PREP_CONST(RSS_L4_IPV6, 3),
+
+	XDP_RSS_TYPE_L4_IPV6_EX_MASK = L4_IPV6_EX_BIT,
+	XDP_RSS_TYPE_L4_IPV6_TCP_EX  = XDP_RSS_TYPE_L4_IPV6_TCP |L4_IPV6_EX_BIT,
+	XDP_RSS_TYPE_L4_IPV6_UDP_EX  = XDP_RSS_TYPE_L4_IPV6_UDP |L4_IPV6_EX_BIT,
+	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP|L4_IPV6_EX_BIT,
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
