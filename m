Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C07719E46
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 15:32:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA21F842DB;
	Thu,  1 Jun 2023 13:32:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA21F842DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685626365;
	bh=kkzaWdAm+rwIfYgtxT23Kda6GrFokZIsWHsMh6U4YbU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ro0DBYetoMzw8bi5Aicgeqq7UR9uv64d/aT/Pkve4Lmln4gmcBPnDZFqzKbx8LHGw
	 IXdfowbbyKdhVVSYgm6et0lmv+E7UkiocHfYviGHSBXKFyvj2ZpZXWg7/pA2U1I88o
	 A/S7h5mzAQcyQ/sZttptFNaQU6q3fVMY979vPoA6DFHd0jIUVHCjTuIo25coNWh2Sv
	 onYCX8w6Okn5Dpq21CijacgBj1TIE5yDpbAqqJ0lq3bcB6RC5Mq0On9NIQ9GZ4v7Vi
	 kZsJss3pFuXCrnnlwInq/i0DAogo7yCO0FvSi7pielS12kIO6KJ1AARu0HNHESHVWV
	 EKlHrfKxq99EA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 96Vlw6npi9Jk; Thu,  1 Jun 2023 13:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF18F84299;
	Thu,  1 Jun 2023 13:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF18F84299
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DA791BF316
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 13:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7E3B60FAF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 13:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7E3B60FAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OZo64KUm3V3B for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 13:32:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91C9F61549
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91C9F61549
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 13:32:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="335906173"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="335906173"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 06:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="772427599"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="772427599"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jun 2023 06:32:06 -0700
Received: from giewont.igk.intel.com (giewont.igk.intel.com [10.211.8.15])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9349934911;
 Thu,  1 Jun 2023 14:32:05 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Jun 2023 15:19:27 +0200
Message-Id: <20230601131929.294667-5-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230601131929.294667-1-marcin.szycik@linux.intel.com>
References: <20230601131929.294667-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685626334; x=1717162334;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VmpKQAbiawI9jMXlpYwEemQdavwggmcRUlnieukJWf0=;
 b=hrOzoXYIFipC12dLOME9V9UnxmQcysVhtTxIipqlX33eTKUJh3vAJnab
 EKeqD/E53wchlCWQM83H8wNCUQ6Vc9sqQSBxmxf1be6/Z2Vv0ourY7nA4
 NyoIiCd9tBmbuPUHLCjOkqUoK1t4Xq8Gqy44E2aV+G+uw+HaMdoZvPO6z
 QOM8SIYEwMq+60cDIiTeFoNIk+QB8mMshAknxZtbSXhCzIVjaaA5MORtN
 29ETW8qUZVohkU0iunBdK4VVvQzDmaNaRwHgRzhmhuQ0Txke7KleijvT0
 ZCOLZd/9OLuaCH7k3hNCa5nma1GDNXN0pUp+HBe5kAvF1/ya76ii0bXyy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hrOzoXYI
Subject: [Intel-wired-lan] [RFC PATCH iwl-next 4/6] pfcp: always set pfcp
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

In PFCP receive path set metadata needed by flower code to do correct
classification based on this metadata.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/pfcp.c             |  86 +++++++++++++++++++++++++-
 include/net/ip_tunnels.h       |   2 +
 include/net/pfcp.h             |  70 +++++++++++++++++++++
 include/uapi/linux/if_tunnel.h |   3 +
 include/uapi/linux/pkt_cls.h   |  14 +++++
 net/sched/cls_flower.c         | 107 +++++++++++++++++++++++++++++++++
 6 files changed, 281 insertions(+), 1 deletion(-)

diff --git a/drivers/net/pfcp.c b/drivers/net/pfcp.c
index 3ab2e93e0b45..33729077cd0b 100644
--- a/drivers/net/pfcp.c
+++ b/drivers/net/pfcp.c
@@ -5,6 +5,7 @@
  * (C) 2022 by Wojciech Drewek <wojciech.drewek@intel.com>
  *
  * Author: Wojciech Drewek <wojciech.drewek@intel.com>
+ *	   Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
  */
 
 #include <linux/module.h>
@@ -22,6 +23,8 @@ struct pfcp_dev {
 	struct socket		*sock;
 	struct net_device	*dev;
 	struct net		*net;
+
+	struct gro_cells	gro_cells;
 };
 
 static unsigned int pfcp_net_id __read_mostly;
@@ -30,6 +33,82 @@ struct pfcp_net {
 	struct list_head	pfcp_dev_list;
 };
 
+static int
+pfcp_session_recv(struct pfcp_dev *pfcp, struct sk_buff *skb,
+		  struct pfcp_metadata *md)
+{
+	struct pfcphdr_session *unparsed = pfcp_hdr_session(skb);
+
+	md->seid = unparsed->seid;
+	md->type = PFCP_TYPE_SESSION;
+
+	return 0;
+}
+
+static int
+pfcp_node_recv(struct pfcp_dev *pfcp, struct sk_buff *skb,
+	       struct pfcp_metadata *md)
+{
+	md->type = PFCP_TYPE_NODE;
+
+	return 0;
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
+	bitmap_zero(flags, __IP_TUNNEL_FLAG_NUM);
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
@@ -40,6 +119,7 @@ static void pfcp_dev_uninit(struct net_device *dev)
 {
 	struct pfcp_dev *pfcp = netdev_priv(dev);
 
+	gro_cells_destroy(&pfcp->gro_cells);
 	pfcp_del_sock(pfcp);
 }
 
@@ -49,7 +129,7 @@ static int pfcp_dev_init(struct net_device *dev)
 
 	pfcp->dev = dev;
 
-	return 0;
+	return gro_cells_init(&pfcp->gro_cells, dev);
 }
 
 static const struct net_device_ops pfcp_netdev_ops = {
@@ -95,6 +175,10 @@ static struct socket *pfcp_create_sock(struct pfcp_dev *pfcp)
 	if (err)
 		return ERR_PTR(err);
 
+	tuncfg.sk_user_data = pfcp;
+	tuncfg.encap_rcv = pfcp_encap_recv;
+	tuncfg.encap_type = 1;
+
 	setup_udp_tunnel_sock(net, sock, &tuncfg);
 
 	return sock;
diff --git a/include/net/ip_tunnels.h b/include/net/ip_tunnels.h
index 7113ed79617d..c40ac6d68456 100644
--- a/include/net/ip_tunnels.h
+++ b/include/net/ip_tunnels.h
@@ -198,6 +198,7 @@ static inline void ip_tunnel_set_options_present(unsigned long *flags)
 	__set_bit(IP_TUNNEL_VXLAN_OPT_BIT, flags);
 	__set_bit(IP_TUNNEL_ERSPAN_OPT_BIT, flags);
 	__set_bit(IP_TUNNEL_GTP_OPT_BIT, flags);
+	__set_bit(IP_TUNNEL_PFCP_OPT_BIT, flags);
 }
 
 static inline void ip_tunnel_clear_options_present(unsigned long *flags)
@@ -206,6 +207,7 @@ static inline void ip_tunnel_clear_options_present(unsigned long *flags)
 	__clear_bit(IP_TUNNEL_VXLAN_OPT_BIT, flags);
 	__clear_bit(IP_TUNNEL_ERSPAN_OPT_BIT, flags);
 	__clear_bit(IP_TUNNEL_GTP_OPT_BIT, flags);
+	__clear_bit(IP_TUNNEL_PFCP_OPT_BIT, flags);
 }
 
 static inline bool ip_tunnel_is_options_present(const unsigned long *flags)
diff --git a/include/net/pfcp.h b/include/net/pfcp.h
index 88f0815e40d2..8be8051fa41f 100644
--- a/include/net/pfcp.h
+++ b/include/net/pfcp.h
@@ -2,8 +2,78 @@
 #ifndef _PFCP_H_
 #define _PFCP_H_
 
+#include <net/udp_tunnel.h>
+#include <net/dst_metadata.h>
+
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
+#define PFCP_VERSION_SHIFT	5
+#define PFCP_VERSION_MASK	((1 << PFCP_VERSION_SHIFT) - 1)
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
+/* IP header + UDP + PFCP + Ethernet header */
+#define PFCP_HEADROOM (20 + 8 + 4 + 14)
+/* IPv6 header + UDP + PFCP + Ethernet header */
+#define PFCP6_HEADROOM (40 + 8 + 4 + 14)
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
index d222e70d8621..378669f3ad36 100644
--- a/include/uapi/linux/if_tunnel.h
+++ b/include/uapi/linux/if_tunnel.h
@@ -212,6 +212,9 @@ enum {
 	IP_TUNNEL_VTI_BIT		= 16U,
 	IP_TUNNEL_SIT_ISATAP_BIT	= IP_TUNNEL_VTI_BIT,
 
+	/* Flags starting from here are available only via new bitmap cmds */
+	IP_TUNNEL_PFCP_OPT_BIT		= 17U,		/* OPTIONS_PRESENT */
+
 	__IP_TUNNEL_FLAG_NUM,
 };
 
diff --git a/include/uapi/linux/pkt_cls.h b/include/uapi/linux/pkt_cls.h
index 00933dda7b10..a1b219451ebe 100644
--- a/include/uapi/linux/pkt_cls.h
+++ b/include/uapi/linux/pkt_cls.h
@@ -629,6 +629,10 @@ enum {
 					 * TCA_FLOWER_KEY_ENC_OPT_GTP_
 					 * attributes
 					 */
+	TCA_FLOWER_KEY_ENC_OPTS_PFCP,	/* Nested
+					 * TCA_FLOWER_KEY_ENC_IPT_PFCP
+					 * attributes
+					 */
 	__TCA_FLOWER_KEY_ENC_OPTS_MAX,
 };
 
@@ -678,6 +682,16 @@ enum {
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
diff --git a/net/sched/cls_flower.c b/net/sched/cls_flower.c
index 8994c6fd547d..392d7028449c 100644
--- a/net/sched/cls_flower.c
+++ b/net/sched/cls_flower.c
@@ -27,6 +27,7 @@
 #include <net/vxlan.h>
 #include <net/erspan.h>
 #include <net/gtp.h>
+#include <net/pfcp.h>
 #include <net/tc_wrapper.h>
 
 #include <net/dst.h>
@@ -735,6 +736,7 @@ enc_opts_policy[TCA_FLOWER_KEY_ENC_OPTS_MAX + 1] = {
 	[TCA_FLOWER_KEY_ENC_OPTS_VXLAN]         = { .type = NLA_NESTED },
 	[TCA_FLOWER_KEY_ENC_OPTS_ERSPAN]        = { .type = NLA_NESTED },
 	[TCA_FLOWER_KEY_ENC_OPTS_GTP]		= { .type = NLA_NESTED },
+	[TCA_FLOWER_KEY_ENC_OPTS_PFCP]		= { .type = NLA_NESTED },
 };
 
 static const struct nla_policy
@@ -764,6 +766,12 @@ gtp_opt_policy[TCA_FLOWER_KEY_ENC_OPT_GTP_MAX + 1] = {
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
@@ -1375,6 +1383,44 @@ static int fl_set_gtp_opt(const struct nlattr *nla, struct fl_flow_key *key,
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
@@ -1532,6 +1578,36 @@ static int fl_set_enc_opt(struct nlattr **tb, struct fl_flow_key *key,
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
@@ -2993,6 +3069,32 @@ static int fl_dump_key_gtp_opt(struct sk_buff *skb,
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
@@ -3061,6 +3163,11 @@ static int fl_dump_key_options(struct sk_buff *skb, int enc_opt_type,
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
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
