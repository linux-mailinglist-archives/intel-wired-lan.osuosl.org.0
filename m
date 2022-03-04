Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309E74CD94A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Mar 2022 17:41:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C06B940516;
	Fri,  4 Mar 2022 16:41:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iuPzKfRBOVd0; Fri,  4 Mar 2022 16:41:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06D21404FC;
	Fri,  4 Mar 2022 16:41:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 844051BF275
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 16:41:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E86040232
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 16:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OnrsL155DkOv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Mar 2022 16:41:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 40ED340516
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Mar 2022 16:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646412081; x=1677948081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/W+9sx9f4yC7kDCrhdj98bj2Fv4YyUyb2BuaUzRbjBo=;
 b=If0UdMd9XFYMg7t8LCMWChDLXUU1k7TKraHIkoH0n93l+BoREop305CG
 i+Eu9ng3srLr638FEeClLgflXjVJD/OF/JI10mQaFKpbe4qwooHX+6MzI
 Wn+mnJFaaf4nFnYw9ZLCmW1lwR/z7mxXCDFfvNVxRXcQui0YF1W7YUrd7
 L86zsIUmLCVSwojwDIyr3W63DjEyqT6CJhXu5oeYEpHc8lnIn7OFZ9ncr
 s4KdtFwhGF6W2mcc0u8EzqBRyHNLTK8Ki0GGADiWyjyN6MKynyQw305Px
 ToB54Eu8ZzJYjU3ndyrnXbW9JWNOuHgDXydFrn20MF2ROtwi68OVpj5zx Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="340441860"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="340441860"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 08:41:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="552280319"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 04 Mar 2022 08:41:04 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 224Gf12I020994; Fri, 4 Mar 2022 16:41:03 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Fri,  4 Mar 2022 17:40:43 +0100
Message-Id: <20220304164048.476900-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
References: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v10 2/7] gtp: Implement GTP echo
 response
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
Cc: jiri@resnulli.us, xiyou.wangcong@gmail.com,
 osmocom-net-gprs@lists.osmocom.org, jhs@mojatatu.com, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net,
 pablo@netfilter.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Adding GTP device through ip link creates the situation where
there is no userspace daemon which would handle GTP messages
(Echo Request for example). GTP-U instance which would not respond
to echo requests would violate GTP specification.

When GTP packet arrives with GTP_ECHO_REQ message type,
GTP_ECHO_RSP is send to the sender. GTP_ECHO_RSP message
should contain information element with GTPIE_RECOVERY tag and
restart counter value. For GTPv1 restart counter is not used
and should be equal to 0, for GTPv0 restart counter contains
information provided from userspace(IFLA_GTP_RESTART_COUNT).

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Suggested-by: Harald Welte <laforge@gnumonks.org>
Reviewed-by: Harald Welte <laforge@gnumonks.org>
Tested-by: Harald Welte <laforge@gnumonks.org>
---
v6: gtp0_echo_resp renamed to gtp0_send_echo_resp and
    gtp1u_echo_resp renamed to gtp1u_send_echo_resp
v10: Fix 80 char line limit
---
 drivers/net/gtp.c            | 213 ++++++++++++++++++++++++++++++++---
 include/net/gtp.h            |  31 +++++
 include/uapi/linux/if_link.h |   1 +
 3 files changed, 229 insertions(+), 16 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 25d8521897b3..bf434d79f868 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -75,6 +75,8 @@ struct gtp_dev {
 	unsigned int		hash_size;
 	struct hlist_head	*tid_hash;
 	struct hlist_head	*addr_hash;
+
+	u8			restart_count;
 };
 
 static unsigned int gtp_net_id __read_mostly;
@@ -217,6 +219,106 @@ static int gtp_rx(struct pdp_ctx *pctx, struct sk_buff *skb,
 	return -1;
 }
 
+static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
+					   const struct sock *sk,
+					   __be32 daddr, __be32 saddr)
+{
+	memset(fl4, 0, sizeof(*fl4));
+	fl4->flowi4_oif		= sk->sk_bound_dev_if;
+	fl4->daddr		= daddr;
+	fl4->saddr		= saddr;
+	fl4->flowi4_tos		= RT_CONN_FLAGS(sk);
+	fl4->flowi4_proto	= sk->sk_protocol;
+
+	return ip_route_output_key(sock_net(sk), fl4);
+}
+
+/* GSM TS 09.60. 7.3
+ * In all Path Management messages:
+ * - TID: is not used and shall be set to 0.
+ * - Flow Label is not used and shall be set to 0
+ * In signalling messages:
+ * - number: this field is not yet used in signalling messages.
+ *   It shall be set to 255 by the sender and shall be ignored
+ *   by the receiver
+ * Returns true if the echo req was correct, false otherwise.
+ */
+static bool gtp0_validate_echo_req(struct gtp0_header *gtp0)
+{
+	return !(gtp0->tid || (gtp0->flags ^ 0x1e) ||
+		gtp0->number != 0xff || gtp0->flow);
+}
+
+static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
+{
+	struct gtp0_packet *gtp_pkt;
+	struct gtp0_header *gtp0;
+	struct rtable *rt;
+	struct flowi4 fl4;
+	struct iphdr *iph;
+	__be16 seq;
+
+	gtp0 = (struct gtp0_header *)(skb->data + sizeof(struct udphdr));
+
+	if (!gtp0_validate_echo_req(gtp0))
+		return -1;
+
+	seq = gtp0->seq;
+
+	/* pull GTP and UDP headers */
+	skb_pull_data(skb, sizeof(struct gtp0_header) + sizeof(struct udphdr));
+
+	gtp_pkt = skb_push(skb, sizeof(struct gtp0_packet));
+	memset(gtp_pkt, 0, sizeof(struct gtp0_packet));
+
+	gtp_pkt->gtp0_h.flags = 0x1e; /* v0, GTP-non-prime. */
+	gtp_pkt->gtp0_h.type = GTP_ECHO_RSP;
+	gtp_pkt->gtp0_h.length =
+		htons(sizeof(struct gtp0_packet) - sizeof(struct gtp0_header));
+
+	/* GSM TS 09.60. 7.3 The Sequence Number in a signalling response
+	 * message shall be copied from the signalling request message
+	 * that the GSN is replying to.
+	 */
+	gtp_pkt->gtp0_h.seq = seq;
+
+	/* GSM TS 09.60. 7.3 In all Path Management Flow Label and TID
+	 * are not used and shall be set to 0.
+	 */
+	gtp_pkt->gtp0_h.flow = 0;
+	gtp_pkt->gtp0_h.tid = 0;
+	gtp_pkt->gtp0_h.number = 0xff;
+	gtp_pkt->gtp0_h.spare[0] = 0xff;
+	gtp_pkt->gtp0_h.spare[1] = 0xff;
+	gtp_pkt->gtp0_h.spare[2] = 0xff;
+
+	gtp_pkt->ie.tag = GTPIE_RECOVERY;
+	gtp_pkt->ie.val = gtp->restart_count;
+
+	iph = ip_hdr(skb);
+
+	/* find route to the sender,
+	 * src address becomes dst address and vice versa.
+	 */
+	rt = ip4_route_output_gtp(&fl4, gtp->sk0, iph->saddr, iph->daddr);
+	if (IS_ERR(rt)) {
+		netdev_dbg(gtp->dev, "no route for echo response from %pI4\n",
+			   &iph->saddr);
+		return -1;
+	}
+
+	udp_tunnel_xmit_skb(rt, gtp->sk0, skb,
+			    fl4.saddr, fl4.daddr,
+			    iph->tos,
+			    ip4_dst_hoplimit(&rt->dst),
+			    0,
+			    htons(GTP0_PORT), htons(GTP0_PORT),
+			    !net_eq(sock_net(gtp->sk1u),
+				    dev_net(gtp->dev)),
+			    false);
+	return 0;
+}
+
 /* 1 means pass up to the stack, -1 means drop and 0 means decapsulated. */
 static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 {
@@ -233,6 +335,13 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 	if ((gtp0->flags >> 5) != GTP_V0)
 		return 1;
 
+	/* If the sockets were created in kernel, it means that
+	 * there is no daemon running in userspace which would
+	 * handle echo request.
+	 */
+	if (gtp0->type == GTP_ECHO_REQ && gtp->sk_created)
+		return gtp0_send_echo_resp(gtp, skb);
+
 	if (gtp0->type != GTP_TPDU)
 		return 1;
 
@@ -245,6 +354,75 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 	return gtp_rx(pctx, skb, hdrlen, gtp->role);
 }
 
+static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
+{
+	struct gtp1_header_long *gtp1u;
+	struct gtp1u_packet *gtp_pkt;
+	struct rtable *rt;
+	struct flowi4 fl4;
+	struct iphdr *iph;
+
+	gtp1u = (struct gtp1_header_long *)(skb->data + sizeof(struct udphdr));
+
+	/* 3GPP TS 29.281 5.1 - For the Echo Request, Echo Response,
+	 * Error Indication and Supported Extension Headers Notification
+	 * messages, the S flag shall be set to 1 and TEID shall be set to 0.
+	 */
+	if (!(gtp1u->flags & GTP1_F_SEQ) || gtp1u->tid)
+		return -1;
+
+	/* pull GTP and UDP headers */
+	skb_pull_data(skb,
+		      sizeof(struct gtp1_header_long) + sizeof(struct udphdr));
+
+	gtp_pkt = skb_push(skb, sizeof(struct gtp1u_packet));
+	memset(gtp_pkt, 0, sizeof(struct gtp1u_packet));
+
+	/* S flag must be set to 1 */
+	gtp_pkt->gtp1u_h.flags = 0x32;
+	gtp_pkt->gtp1u_h.type = GTP_ECHO_RSP;
+	/* seq, npdu and next should be counted to the length of the GTP packet
+	 * that's why szie of gtp1_header should be subtracted,
+	 * not why szie of gtp1_header_long.
+	 */
+	gtp_pkt->gtp1u_h.length =
+		htons(sizeof(struct gtp1u_packet) - sizeof(struct gtp1_header));
+	/* 3GPP TS 29.281 5.1 - TEID has to be set to 0 */
+	gtp_pkt->gtp1u_h.tid = 0;
+
+	/* 3GPP TS 29.281 7.7.2 - The Restart Counter value in the
+	 * Recovery information element shall not be used, i.e. it shall
+	 * be set to zero by the sender and shall be ignored by the receiver.
+	 * The Recovery information element is mandatory due to backwards
+	 * compatibility reasons.
+	 */
+	gtp_pkt->ie.tag = GTPIE_RECOVERY;
+	gtp_pkt->ie.val = 0;
+
+	iph = ip_hdr(skb);
+
+	/* find route to the sender,
+	 * src address becomes dst address and vice versa.
+	 */
+	rt = ip4_route_output_gtp(&fl4, gtp->sk1u, iph->saddr, iph->daddr);
+	if (IS_ERR(rt)) {
+		netdev_dbg(gtp->dev, "no route for echo response from %pI4\n",
+			   &iph->saddr);
+		return -1;
+	}
+
+	udp_tunnel_xmit_skb(rt, gtp->sk1u, skb,
+			    fl4.saddr, fl4.daddr,
+			    iph->tos,
+			    ip4_dst_hoplimit(&rt->dst),
+			    0,
+			    htons(GTP1U_PORT), htons(GTP1U_PORT),
+			    !net_eq(sock_net(gtp->sk1u),
+				    dev_net(gtp->dev)),
+			    false);
+	return 0;
+}
+
 static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 {
 	unsigned int hdrlen = sizeof(struct udphdr) +
@@ -260,6 +438,13 @@ static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 	if ((gtp1->flags >> 5) != GTP_V1)
 		return 1;
 
+	/* If the sockets were created in kernel, it means that
+	 * there is no daemon running in userspace which would
+	 * handle echo request.
+	 */
+	if (gtp1->type == GTP_ECHO_REQ && gtp->sk_created)
+		return gtp1u_send_echo_resp(gtp, skb);
+
 	if (gtp1->type != GTP_TPDU)
 		return 1;
 
@@ -398,20 +583,6 @@ static void gtp_dev_uninit(struct net_device *dev)
 	free_percpu(dev->tstats);
 }
 
-static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
-					   const struct sock *sk,
-					   __be32 daddr)
-{
-	memset(fl4, 0, sizeof(*fl4));
-	fl4->flowi4_oif		= sk->sk_bound_dev_if;
-	fl4->daddr		= daddr;
-	fl4->saddr		= inet_sk(sk)->inet_saddr;
-	fl4->flowi4_tos		= RT_CONN_FLAGS(sk);
-	fl4->flowi4_proto	= sk->sk_protocol;
-
-	return ip_route_output_key(sock_net(sk), fl4);
-}
-
 static inline void gtp0_push_header(struct sk_buff *skb, struct pdp_ctx *pctx)
 {
 	int payload_len = skb->len;
@@ -517,7 +688,8 @@ static int gtp_build_skb_ip4(struct sk_buff *skb, struct net_device *dev,
 	}
 	netdev_dbg(dev, "found PDP context %p\n", pctx);
 
-	rt = ip4_route_output_gtp(&fl4, pctx->sk, pctx->peer_addr_ip4.s_addr);
+	rt = ip4_route_output_gtp(&fl4, pctx->sk, pctx->peer_addr_ip4.s_addr,
+				  inet_sk(pctx->sk)->inet_saddr);
 	if (IS_ERR(rt)) {
 		netdev_dbg(dev, "no route to SSGN %pI4\n",
 			   &pctx->peer_addr_ip4.s_addr);
@@ -746,6 +918,11 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 	}
 	gtp->role = role;
 
+	if (!data[IFLA_GTP_RESTART_COUNT])
+		gtp->restart_count = 0;
+	else
+		gtp->restart_count = nla_get_u8(data[IFLA_GTP_RESTART_COUNT]);
+
 	gtp->net = src_net;
 
 	err = gtp_hashtable_new(gtp, hashsize);
@@ -801,6 +978,7 @@ static const struct nla_policy gtp_policy[IFLA_GTP_MAX + 1] = {
 	[IFLA_GTP_PDP_HASHSIZE]		= { .type = NLA_U32 },
 	[IFLA_GTP_ROLE]			= { .type = NLA_U32 },
 	[IFLA_GTP_CREATE_SOCKETS]	= { .type = NLA_U8 },
+	[IFLA_GTP_RESTART_COUNT]	= { .type = NLA_U8 },
 };
 
 static int gtp_validate(struct nlattr *tb[], struct nlattr *data[],
@@ -815,7 +993,8 @@ static int gtp_validate(struct nlattr *tb[], struct nlattr *data[],
 static size_t gtp_get_size(const struct net_device *dev)
 {
 	return nla_total_size(sizeof(__u32)) + /* IFLA_GTP_PDP_HASHSIZE */
-		nla_total_size(sizeof(__u32)); /* IFLA_GTP_ROLE */
+		nla_total_size(sizeof(__u32)) + /* IFLA_GTP_ROLE */
+		nla_total_size(sizeof(__u8)); /* IFLA_GTP_RESTART_COUNT */
 }
 
 static int gtp_fill_info(struct sk_buff *skb, const struct net_device *dev)
@@ -826,6 +1005,8 @@ static int gtp_fill_info(struct sk_buff *skb, const struct net_device *dev)
 		goto nla_put_failure;
 	if (nla_put_u32(skb, IFLA_GTP_ROLE, gtp->role))
 		goto nla_put_failure;
+	if (nla_put_u8(skb, IFLA_GTP_RESTART_COUNT, gtp->restart_count))
+		goto nla_put_failure;
 
 	return 0;
 
diff --git a/include/net/gtp.h b/include/net/gtp.h
index 0e16ebb2a82d..0e12c37f2958 100644
--- a/include/net/gtp.h
+++ b/include/net/gtp.h
@@ -7,8 +7,13 @@
 #define GTP0_PORT	3386
 #define GTP1U_PORT	2152
 
+/* GTP messages types */
+#define GTP_ECHO_REQ	1	/* Echo Request */
+#define GTP_ECHO_RSP	2	/* Echo Response */
 #define GTP_TPDU	255
 
+#define GTPIE_RECOVERY	14
+
 struct gtp0_header {	/* According to GSM TS 09.60. */
 	__u8	flags;
 	__u8	type;
@@ -27,6 +32,32 @@ struct gtp1_header {	/* According to 3GPP TS 29.060. */
 	__be32	tid;
 } __attribute__ ((packed));
 
+struct gtp1_header_long {	/* According to 3GPP TS 29.060. */
+	__u8	flags;
+	__u8	type;
+	__be16	length;
+	__be32	tid;
+	__be16	seq;
+	__u8	npdu;
+	__u8	next;
+} __packed;
+
+/* GTP Information Element */
+struct gtp_ie {
+	__u8	tag;
+	__u8	val;
+} __packed;
+
+struct gtp0_packet {
+	struct gtp0_header gtp0_h;
+	struct gtp_ie ie;
+} __packed;
+
+struct gtp1u_packet {
+	struct gtp1_header_long gtp1u_h;
+	struct gtp_ie ie;
+} __packed;
+
 #define GTP1_F_NPDU	0x01
 #define GTP1_F_SEQ	0x02
 #define GTP1_F_EXTHDR	0x04
diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index ebd2aa3ef809..bd24c7dc10a2 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -888,6 +888,7 @@ enum {
 	IFLA_GTP_PDP_HASHSIZE,
 	IFLA_GTP_ROLE,
 	IFLA_GTP_CREATE_SOCKETS,
+	IFLA_GTP_RESTART_COUNT,
 	__IFLA_GTP_MAX,
 };
 #define IFLA_GTP_MAX (__IFLA_GTP_MAX - 1)
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
