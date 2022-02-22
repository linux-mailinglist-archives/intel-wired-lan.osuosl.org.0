Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7254BF82B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Feb 2022 13:42:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAE7960EC4;
	Tue, 22 Feb 2022 12:42:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N9p5CGmh9zsQ; Tue, 22 Feb 2022 12:42:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E55560EC0;
	Tue, 22 Feb 2022 12:42:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C49D61BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 12:42:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF1764023F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 12:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qUOBxp_MkGMa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Feb 2022 12:42:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8CA34405B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Feb 2022 12:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645533739; x=1677069739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nh3ewM3076G47h7US5uGY9qMgwhsVtoG2g3U1O+9SwE=;
 b=gziZ222WBl8iM0fNQ4WDAaAzGGPKT+hL/ozHoop3qjRpU3qcIbiYTflo
 y6hcWzxXY55l8trkk5jie8PsDUzxDuDbwyapYWpPu021ZrnmRUgQLXViM
 Qy3E5iBbzft5JJ5OVKcKHQCyVDLXHB5xaQf2Zg3amvamWfBFDYQ94PIxF
 lJwtNqKS0LYzDI4y3IQHh7Cjy7hKhe27nhlCaXGWZkuvYQ4H9MdgLqYjX
 uHYuu4g/C+6Dvgf4T28SdJKoKZYOiRSIjtdHc8Gp0fMzPPEiZoFPlibqz
 eyDDWzDTxaAkkXT06WNV6u3rC3ZxaNJSZ4uJA093vixdHCbERDJakkoEV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="251440259"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="251440259"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 04:42:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="507971208"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 22 Feb 2022 04:42:16 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 21MCg1xb021783; Tue, 22 Feb 2022 12:42:14 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Tue, 22 Feb 2022 13:41:48 +0100
Message-Id: <20220222124152.103039-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220222124152.103039-1-marcin.szycik@linux.intel.com>
References: <20220222124152.103039-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v8 3/7] gtp: Implement GTP echo
 request
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
Cc: jiri@resnulli.us, osmocom-net-gprs@lists.osmocom.org, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net,
 pablo@netfilter.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>

Adding GTP device through ip link creates the situation where
GTP instance is not able to send GTP echo requests.
Echo requests are used to check if GTP peer is still alive.
With this patch, gtp_genl_ops are extended by new cmd (GTP_CMD_ECHOREQ)
which allows to send echo request in the given version of GTP
protocol (v0 or v1), from the given ms address to he given
peer. TID is not inclued because in all path management
messages it should be equal to 0.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Suggested-by: Harald Welte <laforge@gnumonks.org>
---
v8: handling of GTP Echo Response removed
---
 drivers/net/gtp.c        | 163 +++++++++++++++++++++++++++++++++------
 include/uapi/linux/gtp.h |   1 +
 2 files changed, 139 insertions(+), 25 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 5ed24fa9d5b2..278e5dc716ee 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -249,6 +249,28 @@ static bool gtp0_validate_echo_req(struct gtp0_header *gtp0)
 		gtp0->number != 0xff || gtp0->flow);
 }
 
+/* msg_type has to be GTP_ECHO_REQ or GTP_ECHO_RSP */
+static void gtp0_build_echo_msg(struct gtp0_header *hdr, __u8 msg_type)
+{
+	hdr->flags = 0x1e; /* v0, GTP-non-prime. */
+	hdr->type = msg_type;
+	/* GSM TS 09.60. 7.3 In all Path Management Flow Label and TID
+	 * are not used and shall be set to 0.
+	 */
+	hdr->flow = 0;
+	hdr->tid = 0;
+	hdr->number = 0xff;
+	hdr->spare[0] = 0xff;
+	hdr->spare[1] = 0xff;
+	hdr->spare[2] = 0xff;
+
+	if (msg_type == GTP_ECHO_RSP)
+		hdr->length =
+			htons(sizeof(struct gtp0_packet) - sizeof(struct gtp0_header));
+	else
+		hdr->length = 0;
+}
+
 static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 {
 	struct gtp0_packet *gtp_pkt;
@@ -271,10 +293,7 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 	gtp_pkt = skb_push(skb, sizeof(struct gtp0_packet));
 	memset(gtp_pkt, 0, sizeof(struct gtp0_packet));
 
-	gtp_pkt->gtp0_h.flags = 0x1e; /* v0, GTP-non-prime. */
-	gtp_pkt->gtp0_h.type = GTP_ECHO_RSP;
-	gtp_pkt->gtp0_h.length =
-		htons(sizeof(struct gtp0_packet) - sizeof(struct gtp0_header));
+	gtp0_build_echo_msg(&gtp_pkt->gtp0_h, GTP_ECHO_RSP);
 
 	/* GSM TS 09.60. 7.3 The Sequence Number in a signalling response
 	 * message shall be copied from the signalling request message
@@ -282,16 +301,6 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 	 */
 	gtp_pkt->gtp0_h.seq = seq;
 
-	/* GSM TS 09.60. 7.3 In all Path Management Flow Label and TID
-	 * are not used and shall be set to 0.
-	 */
-	gtp_pkt->gtp0_h.flow = 0;
-	gtp_pkt->gtp0_h.tid = 0;
-	gtp_pkt->gtp0_h.number = 0xff;
-	gtp_pkt->gtp0_h.spare[0] = 0xff;
-	gtp_pkt->gtp0_h.spare[1] = 0xff;
-	gtp_pkt->gtp0_h.spare[2] = 0xff;
-
 	gtp_pkt->ie.tag = GTPIE_RECOVERY;
 	gtp_pkt->ie.val = gtp->restart_count;
 
@@ -354,6 +363,27 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 	return gtp_rx(pctx, skb, hdrlen, gtp->role);
 }
 
+/* msg_type has to be GTP_ECHO_REQ or GTP_ECHO_RSP */
+static void gtp1u_build_echo_msg(struct gtp1_header_long *hdr, __u8 msg_type)
+{
+	/* S flag must be set to 1 */
+	hdr->flags = 0x32; /* v1, GTP-non-prime. */
+	hdr->type = msg_type;
+	/* 3GPP TS 29.281 5.1 - TEID has to be set to 0 */
+	hdr->tid = 0;
+
+	/* seq, npdu and next should be counted to the length of the GTP packet
+	 * that's why szie of gtp1_header should be subtracted,
+	 * not size of gtp1_header_long.
+	 */
+	if (msg_type == GTP_ECHO_RSP)
+		hdr->length =
+			htons(sizeof(struct gtp1u_packet) - sizeof(struct gtp1_header));
+	else
+		hdr->length =
+			htons(sizeof(struct gtp1_header_long) - sizeof(struct gtp1_header));
+}
+
 static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 {
 	struct gtp1_header_long *gtp1u;
@@ -377,17 +407,7 @@ static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 	gtp_pkt = skb_push(skb, sizeof(struct gtp1u_packet));
 	memset(gtp_pkt, 0, sizeof(struct gtp1u_packet));
 
-	/* S flag must be set to 1 */
-	gtp_pkt->gtp1u_h.flags = 0x32;
-	gtp_pkt->gtp1u_h.type = GTP_ECHO_RSP;
-	/* seq, npdu and next should be counted to the length of the GTP packet
-	 * that's why szie of gtp1_header should be subtracted,
-	 * not why szie of gtp1_header_long.
-	 */
-	gtp_pkt->gtp1u_h.length =
-		htons(sizeof(struct gtp1u_packet) - sizeof(struct gtp1_header));
-	/* 3GPP TS 29.281 5.1 - TEID has to be set to 0 */
-	gtp_pkt->gtp1u_h.tid = 0;
+	gtp1u_build_echo_msg(&gtp_pkt->gtp1u_h, GTP_ECHO_RSP);
 
 	/* 3GPP TS 29.281 7.7.2 - The Restart Counter value in the
 	 * Recovery information element shall not be used, i.e. it shall
@@ -1583,6 +1603,93 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
 	return skb->len;
 }
 
+static int gtp_genl_send_echo_req(struct sk_buff *skb, struct genl_info *info)
+{
+	struct sk_buff *skb_to_send;
+	__be32 src_ip, dst_ip;
+	unsigned int version;
+	struct gtp_dev *gtp;
+	struct flowi4 fl4;
+	struct rtable *rt;
+	struct sock *sk;
+	__be16 port;
+	int len;
+
+	if (!info->attrs[GTPA_VERSION] ||
+	    !info->attrs[GTPA_LINK] ||
+	    !info->attrs[GTPA_PEER_ADDRESS] ||
+	    !info->attrs[GTPA_MS_ADDRESS])
+		return -EINVAL;
+
+	version = nla_get_u32(info->attrs[GTPA_VERSION]);
+	dst_ip = nla_get_be32(info->attrs[GTPA_PEER_ADDRESS]);
+	src_ip = nla_get_be32(info->attrs[GTPA_MS_ADDRESS]);
+
+	gtp = gtp_find_dev(sock_net(skb->sk), info->attrs);
+	if (!gtp)
+		return -ENODEV;
+
+	if (!gtp->sk_created)
+		return -EOPNOTSUPP;
+	if (!(gtp->dev->flags & IFF_UP))
+		return -ENETDOWN;
+
+	if (version == GTP_V0) {
+		struct gtp0_header *gtp0_h;
+
+		len = LL_RESERVED_SPACE(gtp->dev) + sizeof(struct gtp0_header) +
+			sizeof(struct iphdr) + sizeof(struct udphdr);
+
+		skb_to_send = netdev_alloc_skb_ip_align(gtp->dev, len);
+		if (!skb_to_send)
+			return -ENOMEM;
+
+		sk = gtp->sk0;
+		port = htons(GTP0_PORT);
+
+		gtp0_h = skb_push(skb_to_send, sizeof(struct gtp0_header));
+		memset(gtp0_h, 0, sizeof(struct gtp0_header));
+		gtp0_build_echo_msg(gtp0_h, GTP_ECHO_REQ);
+	} else if (version == GTP_V1) {
+		struct gtp1_header_long *gtp1u_h;
+
+		len = LL_RESERVED_SPACE(gtp->dev) + sizeof(struct gtp1_header_long) +
+			sizeof(struct iphdr) + sizeof(struct udphdr);
+
+		skb_to_send = netdev_alloc_skb_ip_align(gtp->dev, len);
+		if (!skb_to_send)
+			return -ENOMEM;
+
+		sk = gtp->sk1u;
+		port = htons(GTP1U_PORT);
+
+		gtp1u_h = skb_push(skb_to_send, sizeof(struct gtp1_header_long));
+		memset(gtp1u_h, 0, sizeof(struct gtp1_header_long));
+		gtp1u_build_echo_msg(gtp1u_h, GTP_ECHO_REQ);
+	} else {
+		return -ENODEV;
+	}
+
+	rt = ip4_route_output_gtp(&fl4, sk, dst_ip, src_ip);
+	if (IS_ERR(rt)) {
+		netdev_dbg(gtp->dev, "no route for echo request to %pI4\n",
+			   &dst_ip);
+			   kfree_skb(skb_to_send);
+		return -ENODEV;
+	}
+
+	udp_tunnel_xmit_skb(rt, sk, skb_to_send,
+			    fl4.saddr, fl4.daddr,
+			    fl4.flowi4_tos,
+			    ip4_dst_hoplimit(&rt->dst),
+			    0,
+			    port, port,
+			    !net_eq(sock_net(sk),
+				    dev_net(gtp->dev)),
+			    false);
+	return 0;
+}
+
 static const struct nla_policy gtp_genl_policy[GTPA_MAX + 1] = {
 	[GTPA_LINK]		= { .type = NLA_U32, },
 	[GTPA_VERSION]		= { .type = NLA_U32, },
@@ -1615,6 +1722,12 @@ static const struct genl_small_ops gtp_genl_ops[] = {
 		.dumpit = gtp_genl_dump_pdp,
 		.flags = GENL_ADMIN_PERM,
 	},
+	{
+		.cmd = GTP_CMD_ECHOREQ,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.doit = gtp_genl_send_echo_req,
+		.flags = GENL_ADMIN_PERM,
+	},
 };
 
 static struct genl_family gtp_genl_family __ro_after_init = {
diff --git a/include/uapi/linux/gtp.h b/include/uapi/linux/gtp.h
index 79f9191bbb24..2f61298a7b77 100644
--- a/include/uapi/linux/gtp.h
+++ b/include/uapi/linux/gtp.h
@@ -8,6 +8,7 @@ enum gtp_genl_cmds {
 	GTP_CMD_NEWPDP,
 	GTP_CMD_DELPDP,
 	GTP_CMD_GETPDP,
+	GTP_CMD_ECHOREQ,
 
 	GTP_CMD_MAX,
 };
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
