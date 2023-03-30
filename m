Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484D06D0C3D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 19:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC12541E8E;
	Thu, 30 Mar 2023 17:07:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC12541E8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680196079;
	bh=OsGGWhjtYkw2EvnZgsssTxt3hGDZE/38FGPsoTFgDVE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MqkM05wxHn9IaAyaBMD2HNO8+6GfVvmjUwdgO0cQt5wZBX5TbQakeopPkjCjTY1dP
	 E6osOXm1eIVMvhVMDsS0QXi0QJagXSASa5wqoxXT92xObmTySegXyQsEdkdWoPgOH8
	 j2+mqQjbghfZfB9HQ36+reypf4CsOKT4w5IL9I48QiGGia40YEFaobrSUQz/0/Mn7x
	 wk2WU62Mm39drl93IuETRSw4tJVESku4dk262kkKERgTO3FqT7m8gxMN1LfgWbpayX
	 nds6+yom/iUR70TLU2y2vnj/UzLUTD1lPN6DUmIcE400bz4JvZ8w8BcGIiKa5x8Wye
	 fc19p6dSGxX8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0XuWmIbJVjWf; Thu, 30 Mar 2023 17:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A439F402E5;
	Thu, 30 Mar 2023 17:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A439F402E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 71C501BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:07:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 498CA42056
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:07:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 498CA42056
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uvzOxhT0GhIZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 17:07:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BA7F42054
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BA7F42054
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:07:53 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-92-HlRW_yH8MzOx7Y2koHQdJw-1; Thu, 30 Mar 2023 13:07:48 -0400
X-MC-Unique: HlRW_yH8MzOx7Y2koHQdJw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1161801210;
 Thu, 30 Mar 2023 17:07:46 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 803AF202701E;
 Thu, 30 Mar 2023 17:07:46 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id C5B1830736C72;
 Thu, 30 Mar 2023 19:07:45 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>
Date: Thu, 30 Mar 2023 19:07:45 +0200
Message-ID: <168019606574.3557870.15629824904085210321.stgit@firesoul>
In-Reply-To: <168019602958.3557870.9960387532660882277.stgit@firesoul>
References: <168019602958.3557870.9960387532660882277.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680196072;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qjkKRVN5noire8SEYVg51bRUSjWpdWfSqBmXhZUzWcE=;
 b=BcwQ3G5V/lwyklqYUD7UxeDFq/lc3xtd3w3tr79vnGa7b9UR+HbXCDg9b5OJAyMHC+I2Fa
 h4nUn00wvV6gaHMgyl7NLmd4BLbLf8xg6nxR/qNCQ5QUxI/0NxC6G2PA7bhn3CKisdpq5D
 wl3/5dsP/58JzB/UUOY6n56ACWyRsXQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BcwQ3G5V
Subject: [Intel-wired-lan] [PATCH bpf RFC-V3 1/5] xdp: rss hash types
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

The patch introduce a XDP RSS hash type (enum xdp_rss_hash_type) that
contain combinations to be used by drivers, which gets build up with bits
from enum xdp_rss_type_bits. Both enum xdp_rss_type_bits and
xdp_rss_hash_type get exposed to BPF via BTF, and it is up to the
BPF-programmer to match using these defines.

This proposal change the kfunc API bpf_xdp_metadata_rx_hash() adding
a pointer value argument for provide the RSS hash type.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 include/linux/netdevice.h |    3 ++-
 include/net/xdp.h         |   46 +++++++++++++++++++++++++++++++++++++++++++++
 net/core/xdp.c            |   10 +++++++++-
 3 files changed, 57 insertions(+), 2 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 470085b121d3..c35f04f636f1 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1624,7 +1624,8 @@ struct net_device_ops {
 
 struct xdp_metadata_ops {
 	int	(*xmo_rx_timestamp)(const struct xdp_md *ctx, u64 *timestamp);
-	int	(*xmo_rx_hash)(const struct xdp_md *ctx, u32 *hash);
+	int	(*xmo_rx_hash)(const struct xdp_md *ctx, u32 *hash,
+			       enum xdp_rss_hash_type *rss_type);
 };
 
 /**
diff --git a/include/net/xdp.h b/include/net/xdp.h
index 41c57b8b1671..130091a55a6f 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -8,6 +8,7 @@
 
 #include <linux/skbuff.h> /* skb_shared_info */
 #include <uapi/linux/netdev.h>
+#include <linux/bitfield.h>
 
 /**
  * DOC: XDP RX-queue information
@@ -425,6 +426,51 @@ XDP_METADATA_KFUNC_xxx
 MAX_XDP_METADATA_KFUNC,
 };
 
+enum xdp_rss_type_bits {
+	XDP_RSS_L3_IPV4		= BIT(0),
+	XDP_RSS_L3_IPV6		= BIT(1),
+
+	/* The fixed (L3) IPv4 and IPv6 headers can both be followed by
+	 * variable/dynamic headers, IPv4 called Options and IPv6 called
+	 * Extension Headers. HW RSS type can contain this info.
+	 */
+	XDP_RSS_L3_DYNHDR	= BIT(2),
+
+	/* When RSS hash covers L4 then drivers MUST set XDP_RSS_L4 bit in
+	 * addition to the protocol specific bit.  This ease interaction with
+	 * SKBs and avoids reserving a fixed mask for future L4 protocol bits.
+	 */
+	XDP_RSS_L4		= BIT(3), /* L4 based hash, proto can be unknown */
+	XDP_RSS_L4_TCP		= BIT(4),
+	XDP_RSS_L4_UDP		= BIT(5),
+	XDP_RSS_L4_SCTP		= BIT(6),
+	XDP_RSS_L4_IPSEC	= BIT(7), /* L4 based hash include IPSEC SPI */
+};
+
+/* RSS hash type combinations used for driver HW mapping */
+enum xdp_rss_hash_type {
+	XDP_RSS_TYPE_NONE            = 0,
+	XDP_RSS_TYPE_L2              = XDP_RSS_TYPE_NONE,
+
+	XDP_RSS_TYPE_L3_IPV4         = XDP_RSS_L3_IPV4,
+	XDP_RSS_TYPE_L3_IPV6         = XDP_RSS_L3_IPV6,
+	XDP_RSS_TYPE_L3_IPV4_OPT     = XDP_RSS_L3_IPV4 | XDP_RSS_L3_DYNHDR,
+	XDP_RSS_TYPE_L3_IPV6_EX      = XDP_RSS_L3_IPV6 | XDP_RSS_L3_DYNHDR,
+
+	XDP_RSS_TYPE_L4_ANY          = XDP_RSS_L4,
+	XDP_RSS_TYPE_L4_IPV4_TCP     = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_TCP,
+	XDP_RSS_TYPE_L4_IPV4_UDP     = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_UDP,
+	XDP_RSS_TYPE_L4_IPV4_SCTP    = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_SCTP,
+
+	XDP_RSS_TYPE_L4_IPV6_TCP     = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_TCP,
+	XDP_RSS_TYPE_L4_IPV6_UDP     = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_UDP,
+	XDP_RSS_TYPE_L4_IPV6_SCTP    = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_SCTP,
+
+	XDP_RSS_TYPE_L4_IPV6_TCP_EX  = XDP_RSS_TYPE_L4_IPV6_TCP |XDP_RSS_L3_DYNHDR,
+	XDP_RSS_TYPE_L4_IPV6_UDP_EX  = XDP_RSS_TYPE_L4_IPV6_UDP |XDP_RSS_L3_DYNHDR,
+	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP|XDP_RSS_L3_DYNHDR,
+};
+
 #ifdef CONFIG_NET
 u32 bpf_xdp_metadata_kfunc_id(int id);
 bool bpf_dev_bound_kfunc_id(u32 btf_id);
diff --git a/net/core/xdp.c b/net/core/xdp.c
index 528d4b37983d..38d2dee16b47 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -734,14 +734,22 @@ __bpf_kfunc int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx, u64 *tim
  * bpf_xdp_metadata_rx_hash - Read XDP frame RX hash.
  * @ctx: XDP context pointer.
  * @hash: Return value pointer.
+ * @rss_type: Return value pointer for RSS type.
+ *
+ * The RSS hash type (@rss_type) specifies what portion of packet headers NIC
+ * hardware were used when calculating RSS hash value.  The type combinations
+ * are defined via &enum xdp_rss_hash_type and individual bits can be decoded
+ * via &enum xdp_rss_type_bits.
  *
  * Return:
  * * Returns 0 on success or ``-errno`` on error.
  * * ``-EOPNOTSUPP`` : means device driver doesn't implement kfunc
  * * ``-ENODATA``    : means no RX-hash available for this frame
  */
-__bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash)
+__bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash,
+					 enum xdp_rss_hash_type *rss_type)
 {
+	BTF_TYPE_EMIT(enum xdp_rss_type_bits);
 	return -EOPNOTSUPP;
 }
 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
