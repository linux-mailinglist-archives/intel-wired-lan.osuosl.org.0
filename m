Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEA788E8DF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:25:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3195C8206D;
	Wed, 27 Mar 2024 15:25:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NUgj69pZ3eAq; Wed, 27 Mar 2024 15:25:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 938D08204D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711553140;
	bh=E9aerCsk4TAjcL0OZGPc73K2U4imXm5pUdss4ugcpJw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=prJ8UkmE/FAzW92/23rxh9DkUUbv8gn6ygebRgNR/q6tAPu9EwowXPktadYZ2dWyV
	 RB5csBeXR/W/n4faFUMOpxXxvjye+6tr7nCEPYck/bqP5k2tAoV84hyCvKVlCLE7YV
	 wsAtg4Zpjc0pqmk3Cd7+j+uD7W4ZqvcHblrEclU1hy+ZAUrrMrl/bkC798FrRx9Q9Z
	 5TydQPyVo9kfnS7RD0wCzk5EUxGsvmAnt9ry0WnX/NxQxXKA/IzRKZFceNmYQ1o8gB
	 suChpap57W7o3SBsRECMgMtAeI2JS9Dd+QC1fuduo5ORCpnwyP7Zu29t0CkNSrm+hb
	 lPm/mb9aAv1XQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 938D08204D;
	Wed, 27 Mar 2024 15:25:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C68F11BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEDAE6061F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ckVYW1ZAhqzD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 15:25:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7CEA2606EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CEA2606EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7CEA2606EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 15:25:35 +0000 (UTC)
X-CSE-ConnectionGUID: fQCV6odxRWiSljy/TBRukg==
X-CSE-MsgGUID: lH6f8vykQFCTmgBrQUzuBw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6518293"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6518293"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 08:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16414407"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2024 08:25:31 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 16:23:56 +0100
Message-ID: <20240327152358.2368467-20-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711553135; x=1743089135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FNlizRj+25Txh5r8np94CoF8e0eF8R/zsdiq0JKqFHE=;
 b=n24FCQuypsnya8qtzY/UGCgb+I5T/kjTcU8wJ5uUqBkMUDlz37cQ0z4F
 zm/oo6tDS59e2ZMejhEUxga/5VrSrxmDEhpIPO/Sd6pI9JKAEPl+c/aTq
 gTNoEG4DtcJB88keqZHIsTskCS/PcU7HpPyMRsO3R5hzcSvIXUdIbeL8E
 LDJ6T0g/PDKXbi//LfrR69xIzj41R6ATe6FYiGMUxMQiNvhtfPi54LacE
 5j20igA7cK2CfvjSeA64gwgGdtLEeISLtMoqxctKU2Kt3r8oaUir8CQt/
 14mD7x7JDktA95y01a8gPFN595oaTyxqbNLXs3uZo262ONCavuQFEzmvp
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n24FCQuy
Subject: [Intel-wired-lan] [PATCH net-next v6 19/21] pfcp: always set pfcp
 metadata
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Yury Norov <yury.norov@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Alexander Potapenko <glider@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

In PFCP receive path set metadata needed by flower code to do correct
classification based on this metadata.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/ip_tunnels.h       |   3 +
 include/net/pfcp.h             |  73 ++++++++++++++++++++++
 include/uapi/linux/if_tunnel.h |   3 +
 include/uapi/linux/pkt_cls.h   |  14 +++++
 drivers/net/pfcp.c             |  81 ++++++++++++++++++++++++-
 net/core/net_test.c            |   7 +--
 net/sched/cls_flower.c         | 107 +++++++++++++++++++++++++++++++++
 7 files changed, 282 insertions(+), 6 deletions(-)

diff --git a/include/net/ip_tunnels.h b/include/net/ip_tunnels.h
index ed8e48cc9054..d8f574fbb11e 100644
--- a/include/net/ip_tunnels.h
+++ b/include/net/ip_tunnels.h
@@ -216,6 +216,7 @@ static inline void ip_tunnel_set_options_present(unsigned long *flags)
 	__set_bit(IP_TUNNEL_VXLAN_OPT_BIT, present);
 	__set_bit(IP_TUNNEL_ERSPAN_OPT_BIT, present);
 	__set_bit(IP_TUNNEL_GTP_OPT_BIT, present);
+	__set_bit(IP_TUNNEL_PFCP_OPT_BIT, present);
 
 	ip_tunnel_flags_or(flags, flags, present);
 }
@@ -228,6 +229,7 @@ static inline void ip_tunnel_clear_options_present(unsigned long *flags)
 	__set_bit(IP_TUNNEL_VXLAN_OPT_BIT, present);
 	__set_bit(IP_TUNNEL_ERSPAN_OPT_BIT, present);
 	__set_bit(IP_TUNNEL_GTP_OPT_BIT, present);
+	__set_bit(IP_TUNNEL_PFCP_OPT_BIT, present);
 
 	__ipt_flag_op(bitmap_andnot, flags, flags, present);
 }
@@ -240,6 +242,7 @@ static inline bool ip_tunnel_is_options_present(const unsigned long *flags)
 	__set_bit(IP_TUNNEL_VXLAN_OPT_BIT, present);
 	__set_bit(IP_TUNNEL_ERSPAN_OPT_BIT, present);
 	__set_bit(IP_TUNNEL_GTP_OPT_BIT, present);
+	__set_bit(IP_TUNNEL_PFCP_OPT_BIT, present);
 
 	return ip_tunnel_flags_intersect(flags, present);
 }
diff --git a/include/net/pfcp.h b/include/net/pfcp.h
index 3f9ebf27a8ff..af14f970b80e 100644
--- a/include/net/pfcp.h
+++ b/include/net/pfcp.h
@@ -2,12 +2,85 @@
 #ifndef _PFCP_H_
 #define _PFCP_H_
 
+#include <uapi/linux/if_ether.h>
+#include <net/dst_metadata.h>
 #include <linux/netdevice.h>
+#include <uapi/linux/ipv6.h>
+#include <net/udp_tunnel.h>
+#include <uapi/linux/udp.h>
+#include <uapi/linux/ip.h>
 #include <linux/string.h>
 #include <linux/types.h>
+#include <linux/bits.h>
 
 #define PFCP_PORT 8805
 
+/* PFCP protocol header */
+struct pfcphdr {
+	u8	flags;
+	u8	message_type;
+	__be16	message_length;
+};
+
+/* PFCP header flags */
+#define PFCP_SEID_FLAG		BIT(0)
+#define PFCP_MP_FLAG		BIT(1)
+
+#define PFCP_VERSION_MASK	GENMASK(4, 0)
+
+#define PFCP_HLEN (sizeof(struct udphdr) + sizeof(struct pfcphdr))
+
+/* PFCP node related messages */
+struct pfcphdr_node {
+	u8	seq_number[3];
+	u8	reserved;
+};
+
+/* PFCP session related messages */
+struct pfcphdr_session {
+	__be64	seid;
+	u8	seq_number[3];
+#ifdef __LITTLE_ENDIAN_BITFIELD
+	u8	message_priority:4,
+		reserved:4;
+#elif defined(__BIG_ENDIAN_BITFIELD)
+	u8	reserved:4,
+		message_priprity:4;
+#else
+#error "Please fix <asm/byteorder>"
+#endif
+};
+
+struct pfcp_metadata {
+	u8 type;
+	__be64 seid;
+} __packed;
+
+enum {
+	PFCP_TYPE_NODE		= 0,
+	PFCP_TYPE_SESSION	= 1,
+};
+
+#define PFCP_HEADROOM (sizeof(struct iphdr) + sizeof(struct udphdr) + \
+		       sizeof(struct pfcphdr) + sizeof(struct ethhdr))
+#define PFCP6_HEADROOM (sizeof(struct ipv6hdr) + sizeof(struct udphdr) + \
+			sizeof(struct pfcphdr) + sizeof(struct ethhdr))
+
+static inline struct pfcphdr *pfcp_hdr(struct sk_buff *skb)
+{
+	return (struct pfcphdr *)(udp_hdr(skb) + 1);
+}
+
+static inline struct pfcphdr_node *pfcp_hdr_node(struct sk_buff *skb)
+{
+	return (struct pfcphdr_node *)(pfcp_hdr(skb) + 1);
+}
+
+static inline struct pfcphdr_session *pfcp_hdr_session(struct sk_buff *skb)
+{
+	return (struct pfcphdr_session *)(pfcp_hdr(skb) + 1);
+}
+
 static inline bool netif_is_pfcp(const struct net_device *dev)
 {
 	return dev->rtnl_link_ops &&
diff --git a/include/uapi/linux/if_tunnel.h b/include/uapi/linux/if_tunnel.h
index 838927dd73a4..e1a246dd8c62 100644
--- a/include/uapi/linux/if_tunnel.h
+++ b/include/uapi/linux/if_tunnel.h
@@ -212,6 +212,9 @@ enum {
 	IP_TUNNEL_VTI_BIT,
 	IP_TUNNEL_SIT_ISATAP_BIT	= IP_TUNNEL_VTI_BIT,
 
+	/* Flags starting from here are not available via the old UAPI */
+	IP_TUNNEL_PFCP_OPT_BIT,		/* OPTIONS_PRESENT */
+
 	__IP_TUNNEL_FLAG_NUM,
 };
 
diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
index ea277039f89d..229fc925ec3a 100644
--- a/include/uapi/linux/pkt_cls.h
+++ b/include/uapi/linux/pkt_cls.h
@@ -587,6 +587,10 @@ enum {
 					 * TCA_FLOWER_KEY_ENC_OPT_GTP_
 					 * attributes
 					 */
+	TCA_FLOWER_KEY_ENC_OPTS_PFCP,	/* Nested
+					 * TCA_FLOWER_KEY_ENC_IPT_PFCP
+					 * attributes
+					 */
 	__TCA_FLOWER_KEY_ENC_OPTS_MAX,
 };
 
@@ -636,6 +640,16 @@ enum {
 #define TCA_FLOWER_KEY_ENC_OPT_GTP_MAX \
 		(__TCA_FLOWER_KEY_ENC_OPT_GTP_MAX - 1)
 
+enum {
+	TCA_FLOWER_KEY_ENC_OPT_PFCP_UNSPEC,
+	TCA_FLOWER_KEY_ENC_OPT_PFCP_TYPE,		/* u8 */
+	TCA_FLOWER_KEY_ENC_OPT_PFCP_SEID,		/* be64 */
+	__TCA_FLOWER_KEY_ENC_OPT_PFCP_MAX,
+};
+
+#define TCA_FLOWER_KEY_ENC_OPT_PFCP_MAX \
+		(__TCA_FLOWER_KEY_ENC_OPT_PFCP_MAX - 1)
+
 enum {
 	TCA_FLOWER_KEY_MPLS_OPTS_UNSPEC,
 	TCA_FLOWER_KEY_MPLS_OPTS_LSE,
diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
index 3f1ee0ae7111..cc5b28c5f99f 100644
--- a/drivers/net/pfcp.c
+++ b/drivers/net/pfcp.c
@@ -21,6 +21,8 @@ struct pfcp_dev {
 	struct socket		*sock;
 	struct net_device	*dev;
 	struct net		*net;
+
+	struct gro_cells	gro_cells;
 };
 
 static unsigned int pfcp_net_id __read_mostly;
@@ -29,6 +31,78 @@ struct pfcp_net {
 	struct list_head	pfcp_dev_list;
 };
 
+static void
+pfcp_session_recv(struct pfcp_dev *pfcp, struct sk_buff *skb,
+		  struct pfcp_metadata *md)
+{
+	struct pfcphdr_session *unparsed = pfcp_hdr_session(skb);
+
+	md->seid = unparsed->seid;
+	md->type = PFCP_TYPE_SESSION;
+}
+
+static void
+pfcp_node_recv(struct pfcp_dev *pfcp, struct sk_buff *skb,
+	       struct pfcp_metadata *md)
+{
+	md->type = PFCP_TYPE_NODE;
+}
+
+static int pfcp_encap_recv(struct sock *sk, struct sk_buff *skb)
+{
+	IP_TUNNEL_DECLARE_FLAGS(flags) = { };
+	struct metadata_dst *tun_dst;
+	struct pfcp_metadata *md;
+	struct pfcphdr *unparsed;
+	struct pfcp_dev *pfcp;
+
+	if (unlikely(!pskb_may_pull(skb, PFCP_HLEN)))
+		goto drop;
+
+	pfcp = rcu_dereference_sk_user_data(sk);
+	if (unlikely(!pfcp))
+		goto drop;
+
+	unparsed = pfcp_hdr(skb);
+
+	ip_tunnel_flags_zero(flags);
+	tun_dst = udp_tun_rx_dst(skb, sk->sk_family, flags, 0,
+				 sizeof(*md));
+	if (unlikely(!tun_dst))
+		goto drop;
+
+	md = ip_tunnel_info_opts(&tun_dst->u.tun_info);
+	if (unlikely(!md))
+		goto drop;
+
+	if (unparsed->flags & PFCP_SEID_FLAG)
+		pfcp_session_recv(pfcp, skb, md);
+	else
+		pfcp_node_recv(pfcp, skb, md);
+
+	__set_bit(IP_TUNNEL_PFCP_OPT_BIT, flags);
+	ip_tunnel_info_opts_set(&tun_dst->u.tun_info, md, sizeof(*md),
+				flags);
+
+	if (unlikely(iptunnel_pull_header(skb, PFCP_HLEN, skb->protocol,
+					  !net_eq(sock_net(sk),
+					  dev_net(pfcp->dev)))))
+		goto drop;
+
+	skb_dst_set(skb, (struct dst_entry *)tun_dst);
+
+	skb_reset_network_header(skb);
+	skb_reset_mac_header(skb);
+	skb->dev = pfcp->dev;
+
+	gro_cells_receive(&pfcp->gro_cells, skb);
+
+	return 0;
+drop:
+	kfree_skb(skb);
+	return 0;
+}
+
 static void pfcp_del_sock(struct pfcp_dev *pfcp)
 {
 	udp_tunnel_sock_release(pfcp->sock);
@@ -39,6 +113,7 @@ static void pfcp_dev_uninit(struct net_device *dev)
 {
 	struct pfcp_dev *pfcp = netdev_priv(dev);
 
+	gro_cells_destroy(&pfcp->gro_cells);
 	pfcp_del_sock(pfcp);
 }
 
@@ -48,7 +123,7 @@ static int pfcp_dev_init(struct net_device *dev)
 
 	pfcp->dev = dev;
 
-	return 0;
+	return gro_cells_init(&pfcp->gro_cells, dev);
 }
 
 static const struct net_device_ops pfcp_netdev_ops = {
@@ -94,6 +169,10 @@ static struct socket *pfcp_create_sock(struct pfcp_dev *pfcp)
 	if (err)
 		return ERR_PTR(err);
 
+	tuncfg.sk_user_data = pfcp;
+	tuncfg.encap_rcv = pfcp_encap_recv;
+	tuncfg.encap_type = 1;
+
 	setup_udp_tunnel_sock(net, sock, &tuncfg);
 
 	return sock;
diff --git a/net/core/net_test.c b/net/core/net_test.c
index 30062b9621e4..9c3a590865d2 100644
--- a/net/core/net_test.c
+++ b/net/core/net_test.c
@@ -335,11 +335,8 @@ static const struct ip_tunnel_flags_test ip_tunnel_flags_test[] = {
 			     ip_tunnel_flags_1),
 	IP_TUNNEL_FLAGS_TEST("conflict", ip_tunnel_flags_2_src, true,
 			     VTI_ISVTI, ip_tunnel_flags_2_exp),
-	IP_TUNNEL_FLAGS_TEST("new", ip_tunnel_flags_3_src,
-			     /* This must be set to ``false`` once
-			      * ``__IP_TUNNEL_FLAG_NUM`` goes above 17.
-			      */
-			     true, cpu_to_be16(BIT(IP_TUNNEL_VXLAN_OPT_BIT)),
+	IP_TUNNEL_FLAGS_TEST("new", ip_tunnel_flags_3_src, false,
+			     cpu_to_be16(BIT(IP_TUNNEL_VXLAN_OPT_BIT)),
 			     ip_tunnel_flags_3_exp),
 };
 
diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
index ae14d649140f..fd9a6f20b60b 100644
--- a/net/sched/cls_flower.c
+++ b/net/sched/cls_flower.c
@@ -28,6 +28,7 @@
 #include <net/vxlan.h>
 #include <net/erspan.h>
 #include <net/gtp.h>
+#include <net/pfcp.h>
 #include <net/tc_wrapper.h>
 
 #include <net/dst.h>
@@ -741,6 +742,7 @@ enc_opts_policy[TCA_FLOWER_KEY_ENC_OPTS_MAX + 1] = {
 	[TCA_FLOWER_KEY_ENC_OPTS_VXLAN]         = { .type = NLA_NESTED },
 	[TCA_FLOWER_KEY_ENC_OPTS_ERSPAN]        = { .type = NLA_NESTED },
 	[TCA_FLOWER_KEY_ENC_OPTS_GTP]		= { .type = NLA_NESTED },
+	[TCA_FLOWER_KEY_ENC_OPTS_PFCP]		= { .type = NLA_NESTED },
 };
 
 static const struct nla_policy
@@ -770,6 +772,12 @@ gtp_opt_policy[TCA_FLOWER_KEY_ENC_OPT_GTP_MAX + 1] = {
 	[TCA_FLOWER_KEY_ENC_OPT_GTP_QFI]	   = { .type = NLA_U8 },
 };
 
+static const struct nla_policy
+pfcp_opt_policy[TCA_FLOWER_KEY_ENC_OPT_PFCP_MAX + 1] = {
+	[TCA_FLOWER_KEY_ENC_OPT_PFCP_TYPE]	   = { .type = NLA_U8 },
+	[TCA_FLOWER_KEY_ENC_OPT_PFCP_SEID]	   = { .type = NLA_U64 },
+};
+
 static const struct nla_policy
 mpls_stack_entry_policy[TCA_FLOWER_KEY_MPLS_OPT_LSE_MAX + 1] = {
 	[TCA_FLOWER_KEY_MPLS_OPT_LSE_DEPTH]    = { .type = NLA_U8 },
@@ -1419,6 +1427,44 @@ static int fl_set_gtp_opt(const struct nlattr *nla, struct fl_flow_key *key,
 	return sizeof(*sinfo);
 }
 
+static int fl_set_pfcp_opt(const struct nlattr *nla, struct fl_flow_key *key,
+			   int depth, int option_len,
+			   struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[TCA_FLOWER_KEY_ENC_OPT_PFCP_MAX + 1];
+	struct pfcp_metadata *md;
+	int err;
+
+	md = (struct pfcp_metadata *)&key->enc_opts.data[key->enc_opts.len];
+	memset(md, 0xff, sizeof(*md));
+
+	if (!depth)
+		return sizeof(*md);
+
+	if (nla_type(nla) != TCA_FLOWER_KEY_ENC_OPTS_PFCP) {
+		NL_SET_ERR_MSG_MOD(extack, "Non-pfcp option type for mask");
+		return -EINVAL;
+	}
+
+	err = nla_parse_nested(tb, TCA_FLOWER_KEY_ENC_OPT_PFCP_MAX, nla,
+			       pfcp_opt_policy, extack);
+	if (err < 0)
+		return err;
+
+	if (!option_len && !tb[TCA_FLOWER_KEY_ENC_OPT_PFCP_TYPE]) {
+		NL_SET_ERR_MSG_MOD(extack, "Missing tunnel key pfcp option type");
+		return -EINVAL;
+	}
+
+	if (tb[TCA_FLOWER_KEY_ENC_OPT_PFCP_TYPE])
+		md->type = nla_get_u8(tb[TCA_FLOWER_KEY_ENC_OPT_PFCP_TYPE]);
+
+	if (tb[TCA_FLOWER_KEY_ENC_OPT_PFCP_SEID])
+		md->seid = nla_get_be64(tb[TCA_FLOWER_KEY_ENC_OPT_PFCP_SEID]);
+
+	return sizeof(*md);
+}
+
 static int fl_set_enc_opt(struct nlattr **tb, struct fl_flow_key *key,
 			  struct fl_flow_key *mask,
 			  struct netlink_ext_ack *extack)
@@ -1576,6 +1622,36 @@ static int fl_set_enc_opt(struct nlattr **tb, struct fl_flow_key *key,
 				return -EINVAL;
 			}
 			break;
+		case TCA_FLOWER_KEY_ENC_OPTS_PFCP:
+			if (key->enc_opts.dst_opt_type) {
+				NL_SET_ERR_MSG_MOD(extack, "Duplicate type for pfcp options");
+				return -EINVAL;
+			}
+			option_len = 0;
+			key->enc_opts.dst_opt_type = IP_TUNNEL_PFCP_OPT_BIT;
+			option_len = fl_set_pfcp_opt(nla_opt_key, key,
+						     key_depth, option_len,
+						     extack);
+			if (option_len < 0)
+				return option_len;
+
+			key->enc_opts.len += option_len;
+			/* At the same time we need to parse through the mask
+			 * in order to verify exact and mask attribute lengths.
+			 */
+			mask->enc_opts.dst_opt_type = IP_TUNNEL_PFCP_OPT_BIT;
+			option_len = fl_set_pfcp_opt(nla_opt_msk, mask,
+						     msk_depth, option_len,
+						     extack);
+			if (option_len < 0)
+				return option_len;
+
+			mask->enc_opts.len += option_len;
+			if (key->enc_opts.len != mask->enc_opts.len) {
+				NL_SET_ERR_MSG_MOD(extack, "Key and mask miss aligned");
+				return -EINVAL;
+			}
+			break;
 		default:
 			NL_SET_ERR_MSG(extack, "Unknown tunnel option type");
 			return -EINVAL;
@@ -3118,6 +3194,32 @@ static int fl_dump_key_gtp_opt(struct sk_buff *skb,
 	return -EMSGSIZE;
 }
 
+static int fl_dump_key_pfcp_opt(struct sk_buff *skb,
+				struct flow_dissector_key_enc_opts *enc_opts)
+{
+	struct pfcp_metadata *md;
+	struct nlattr *nest;
+
+	nest = nla_nest_start_noflag(skb, TCA_FLOWER_KEY_ENC_OPTS_PFCP);
+	if (!nest)
+		goto nla_put_failure;
+
+	md = (struct pfcp_metadata *)&enc_opts->data[0];
+	if (nla_put_u8(skb, TCA_FLOWER_KEY_ENC_OPT_PFCP_TYPE, md->type))
+		goto nla_put_failure;
+
+	if (nla_put_be64(skb, TCA_FLOWER_KEY_ENC_OPT_PFCP_SEID,
+			 md->seid, 0))
+		goto nla_put_failure;
+
+	nla_nest_end(skb, nest);
+	return 0;
+
+nla_put_failure:
+	nla_nest_cancel(skb, nest);
+	return -EMSGSIZE;
+}
+
 static int fl_dump_key_ct(struct sk_buff *skb,
 			  struct flow_dissector_key_ct *key,
 			  struct flow_dissector_key_ct *mask)
@@ -3223,6 +3325,11 @@ static int fl_dump_key_options(struct sk_buff *skb, int enc_opt_type,
 		if (err)
 			goto nla_put_failure;
 		break;
+	case IP_TUNNEL_PFCP_OPT_BIT:
+		err = fl_dump_key_pfcp_opt(skb, enc_opts);
+		if (err)
+			goto nla_put_failure;
+		break;
 	default:
 		goto nla_put_failure;
 	}
-- 
2.44.0

