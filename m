Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F0A4BDB35
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Feb 2022 18:19:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B036660E75;
	Mon, 21 Feb 2022 17:19:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wzsN4CZozrhJ; Mon, 21 Feb 2022 17:19:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19C9060D6E;
	Mon, 21 Feb 2022 17:19:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBA431BF339
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4D25404F0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N5HidgC5qFWP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Feb 2022 17:19:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28918404A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645463977; x=1676999977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Eka2SNc9NPCUlnPH9Pbta30JTBTxN2djSxlGSuw7MF0=;
 b=PfU/BpamVW8rkS3cymH1982wjE7nwHdASkiKYn33odSu5NeTSKG+mdZF
 VIAaiHLmYkTd+08GN8pC9ER7bar/vpHAb7xaZ2Ly8gx08aYFp/CYXnFJP
 jEsyFZXUXiuJ6PDH66PEkga0Ym2bOb88V1ffUghBrJyS3thF3W/oXJ4jr
 Mxm2JI4GbtG3f/obhQRu8qLGFnI6H2BcNYRXD+giALR6+ui47pcSNalem
 voF859ru5spXjV+atrxdrofqyFcjv/+1iH9DDT8axNy5YpopLyXTz1GDM
 UKP8ANNchVbt++/y28jLHSkb9zdM68gqo+0gGsTfjaklhoCpLrt92jpsO Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="231514174"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="231514174"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 09:19:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="636726583"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 21 Feb 2022 09:19:32 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 21LHJBnQ010069; Mon, 21 Feb 2022 17:19:31 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Mon, 21 Feb 2022 11:14:21 +0100
Message-Id: <20220221101425.19776-4-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
References: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v7 3/7] gtp: Implement GTP echo
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

All echo requests are stored in echo_hash table with the flag
(replied) which indicates if GTP echo response was recived in
response to this request. Userspace can see all echo requests
using GTP_CMD_ECHOREQ dumpit callback.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Suggested-by: Harald Welte <laforge@gnumonks.org>
---
 drivers/net/gtp.c        | 402 ++++++++++++++++++++++++++++++++++++---
 include/uapi/linux/gtp.h |   2 +
 2 files changed, 376 insertions(+), 28 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index 5ed24fa9d5b2..14e9f8053d71 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -60,6 +60,19 @@ struct pdp_ctx {
 	struct rcu_head		rcu_head;
 };
 
+struct gtp_echo {
+	struct hlist_node	hlist;
+
+	struct in_addr		ms_addr_ip4;
+	struct in_addr		peer_addr_ip4;
+
+	u8			replied;
+	u8			version;
+	int			ifindex;
+
+	struct rcu_head		rcu_head;
+};
+
 /* One instance of the GTP device. */
 struct gtp_dev {
 	struct list_head	list;
@@ -75,6 +88,7 @@ struct gtp_dev {
 	unsigned int		hash_size;
 	struct hlist_head	*tid_hash;
 	struct hlist_head	*addr_hash;
+	struct hlist_head	*echo_hash;
 
 	u8			restart_count;
 };
@@ -89,6 +103,19 @@ static u32 gtp_h_initval;
 
 static void pdp_context_delete(struct pdp_ctx *pctx);
 
+static void gtp_echo_context_free(struct rcu_head *head)
+{
+	struct gtp_echo *echo = container_of(head, struct gtp_echo, rcu_head);
+
+	kfree(echo);
+}
+
+static void gtp_echo_delete(struct gtp_echo *echo)
+{
+	hlist_del_rcu(&echo->hlist);
+	call_rcu(&echo->rcu_head, gtp_echo_context_free);
+}
+
 static inline u32 gtp0_hashfn(u64 tid)
 {
 	u32 *tid32 = (u32 *) &tid;
@@ -154,6 +181,24 @@ static struct pdp_ctx *ipv4_pdp_find(struct gtp_dev *gtp, __be32 ms_addr)
 	return NULL;
 }
 
+static struct gtp_echo *gtp_find_echo(struct gtp_dev *gtp, __be32 ms_addr,
+				      __be32 peer_addr, unsigned int version)
+{
+	struct hlist_head *head;
+	struct gtp_echo *echo;
+
+	head = &gtp->echo_hash[ipv4_hashfn(ms_addr) % gtp->hash_size];
+
+	hlist_for_each_entry_rcu(echo, head, hlist) {
+		if (echo->ms_addr_ip4.s_addr == ms_addr &&
+		    echo->peer_addr_ip4.s_addr == peer_addr &&
+		    echo->version == version)
+			return echo;
+	}
+
+	return NULL;
+}
+
 static bool gtp_check_ms_ipv4(struct sk_buff *skb, struct pdp_ctx *pctx,
 				  unsigned int hdrlen, unsigned int role)
 {
@@ -243,12 +288,34 @@ static struct rtable *ip4_route_output_gtp(struct flowi4 *fl4,
  *   by the receiver
  * Returns true if the echo req was correct, false otherwise.
  */
-static bool gtp0_validate_echo_req(struct gtp0_header *gtp0)
+static bool gtp0_validate_echo_hdr(struct gtp0_header *gtp0)
 {
 	return !(gtp0->tid || (gtp0->flags ^ 0x1e) ||
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
@@ -260,7 +327,7 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 
 	gtp0 = (struct gtp0_header *)(skb->data + sizeof(struct udphdr));
 
-	if (!gtp0_validate_echo_req(gtp0))
+	if (!gtp0_validate_echo_hdr(gtp0))
 		return -1;
 
 	seq = gtp0->seq;
@@ -271,10 +338,7 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 	gtp_pkt = skb_push(skb, sizeof(struct gtp0_packet));
 	memset(gtp_pkt, 0, sizeof(struct gtp0_packet));
 
-	gtp_pkt->gtp0_h.flags = 0x1e; /* v0, GTP-non-prime. */
-	gtp_pkt->gtp0_h.type = GTP_ECHO_RSP;
-	gtp_pkt->gtp0_h.length =
-		htons(sizeof(struct gtp0_packet) - sizeof(struct gtp0_header));
+	gtp0_build_echo_msg(&gtp_pkt->gtp0_h, GTP_ECHO_RSP);
 
 	/* GSM TS 09.60. 7.3 The Sequence Number in a signalling response
 	 * message shall be copied from the signalling request message
@@ -282,16 +346,6 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
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
 
@@ -319,6 +373,31 @@ static int gtp0_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 	return 0;
 }
 
+static int gtp0_handle_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
+{
+	struct gtp0_header *gtp0;
+	struct gtp_echo *echo;
+	struct iphdr *iph;
+
+	gtp0 = (struct gtp0_header *)(skb->data + sizeof(struct udphdr));
+
+	if (!gtp0_validate_echo_hdr(gtp0))
+		return -1;
+
+	iph = ip_hdr(skb);
+
+	echo = gtp_find_echo(gtp, iph->daddr, iph->saddr, GTP_V0);
+	if (!echo) {
+		netdev_dbg(gtp->dev, "No echo request was send to %pI4, version: %u\n",
+			   &iph->saddr, GTP_V0);
+		return -1;
+	}
+
+	echo->replied = true;
+
+	return 0;
+}
+
 /* 1 means pass up to the stack, -1 means drop and 0 means decapsulated. */
 static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 {
@@ -342,6 +421,9 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 	if (gtp0->type == GTP_ECHO_REQ && gtp->sk_created)
 		return gtp0_send_echo_resp(gtp, skb);
 
+	if (gtp0->type == GTP_ECHO_RSP && gtp->sk_created)
+		return gtp0_handle_echo_resp(gtp, skb);
+
 	if (gtp0->type != GTP_TPDU)
 		return 1;
 
@@ -354,6 +436,27 @@ static int gtp0_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
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
@@ -377,17 +480,7 @@ static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
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
@@ -422,6 +515,35 @@ static int gtp1u_send_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
 	return 0;
 }
 
+static int gtp1u_handle_echo_resp(struct gtp_dev *gtp, struct sk_buff *skb)
+{
+	struct gtp1_header_long *gtp1u;
+	struct gtp_echo *echo;
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
+	iph = ip_hdr(skb);
+
+	echo = gtp_find_echo(gtp, iph->daddr, iph->saddr, GTP_V1);
+	if (!echo) {
+		netdev_dbg(gtp->dev, "No echo request was send to %pI4, version: %u\n",
+			   &iph->saddr, GTP_V1);
+		return -1;
+	}
+
+	echo->replied = true;
+
+	return 0;
+}
+
 static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 {
 	unsigned int hdrlen = sizeof(struct udphdr) +
@@ -444,6 +566,9 @@ static int gtp1u_udp_encap_recv(struct gtp_dev *gtp, struct sk_buff *skb)
 	if (gtp1->type == GTP_ECHO_REQ && gtp->sk_created)
 		return gtp1u_send_echo_resp(gtp, skb);
 
+	if (gtp1->type == GTP_ECHO_RSP && gtp->sk_created)
+		return gtp1u_handle_echo_resp(gtp, skb);
+
 	if (gtp1->type != GTP_TPDU)
 		return 1;
 
@@ -835,6 +960,7 @@ static void gtp_destructor(struct net_device *dev)
 
 	kfree(gtp->addr_hash);
 	kfree(gtp->tid_hash);
+	kfree(gtp->echo_hash);
 }
 
 static struct sock *gtp_create_sock(int type, struct gtp_dev *gtp)
@@ -954,18 +1080,23 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 out_hashtable:
 	kfree(gtp->addr_hash);
 	kfree(gtp->tid_hash);
+	kfree(gtp->echo_hash);
 	return err;
 }
 
 static void gtp_dellink(struct net_device *dev, struct list_head *head)
 {
 	struct gtp_dev *gtp = netdev_priv(dev);
+	struct gtp_echo *echo;
 	struct pdp_ctx *pctx;
 	int i;
 
-	for (i = 0; i < gtp->hash_size; i++)
+	for (i = 0; i < gtp->hash_size; i++) {
 		hlist_for_each_entry_rcu(pctx, &gtp->tid_hash[i], hlist_tid)
 			pdp_context_delete(pctx);
+		hlist_for_each_entry_rcu(echo, &gtp->echo_hash[i], hlist)
+			gtp_echo_delete(echo);
+	}
 
 	list_del_rcu(&gtp->list);
 	unregister_netdevice_queue(dev, head);
@@ -1040,13 +1171,21 @@ static int gtp_hashtable_new(struct gtp_dev *gtp, int hsize)
 	if (gtp->tid_hash == NULL)
 		goto err1;
 
+	gtp->echo_hash = kmalloc_array(hsize, sizeof(struct hlist_head),
+				       GFP_KERNEL | __GFP_NOWARN);
+	if (!gtp->echo_hash)
+		goto err2;
+
 	gtp->hash_size = hsize;
 
 	for (i = 0; i < hsize; i++) {
 		INIT_HLIST_HEAD(&gtp->addr_hash[i]);
 		INIT_HLIST_HEAD(&gtp->tid_hash[i]);
+		INIT_HLIST_HEAD(&gtp->echo_hash[i]);
 	}
 	return 0;
+err2:
+	kfree(gtp->tid_hash);
 err1:
 	kfree(gtp->addr_hash);
 	return -ENOMEM;
@@ -1583,6 +1722,205 @@ static int gtp_genl_dump_pdp(struct sk_buff *skb,
 	return skb->len;
 }
 
+static int gtp_add_echo(struct gtp_dev *gtp, __be32 src_ip, __be32 dst_ip,
+			unsigned int version)
+{
+	struct gtp_echo *echo;
+	bool found = false;
+
+	rcu_read_lock();
+	echo = gtp_find_echo(gtp, src_ip, dst_ip, version);
+	rcu_read_unlock();
+
+	if (!echo) {
+		echo = kmalloc(sizeof(*echo), GFP_ATOMIC);
+		if (!echo)
+			return -ENOMEM;
+	} else {
+		found = true;
+	}
+
+	echo->ms_addr_ip4.s_addr = src_ip;
+	echo->peer_addr_ip4.s_addr = dst_ip;
+	echo->replied = false;
+	echo->version = version;
+	echo->ifindex = gtp->dev->ifindex;
+
+	if (!found) {
+		u32 hash_ms;
+
+		hash_ms = ipv4_hashfn(src_ip) % gtp->hash_size;
+		hlist_add_head_rcu(&echo->hlist, &gtp->echo_hash[hash_ms]);
+	}
+
+	return 0;
+}
+
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
+	int err;
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
+	err = gtp_add_echo(gtp, src_ip, dst_ip, version);
+	if (err)
+		return err;
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
+static int gtp_genl_fill_echo_info(struct sk_buff *skb, u32 snd_portid, u32 snd_seq,
+				   int flags, u32 type, struct gtp_echo *echo)
+{
+	void *genlh;
+
+	genlh = genlmsg_put(skb, snd_portid, snd_seq, &gtp_genl_family, flags,
+			    type);
+	if (!genlh)
+		goto err;
+
+	if (nla_put_u32(skb, GTPA_VERSION, echo->version) ||
+	    nla_put_u32(skb, GTPA_LINK, echo->ifindex) ||
+	    nla_put_be32(skb, GTPA_PEER_ADDRESS, echo->peer_addr_ip4.s_addr) ||
+	    nla_put_be32(skb, GTPA_MS_ADDRESS, echo->ms_addr_ip4.s_addr) ||
+	    nla_put_u8(skb, GTPA_ECHO_REPLIED, echo->replied))
+		goto err;
+
+	genlmsg_end(skb, genlh);
+	return 0;
+
+err:
+	genlmsg_cancel(skb, genlh);
+	return -EMSGSIZE;
+}
+
+static int gtp_genl_dump_echo(struct sk_buff *skb,
+			      struct netlink_callback *cb)
+{
+	struct gtp_dev *last_gtp = (struct gtp_dev *)cb->args[2], *gtp;
+	int i, j, bucket = cb->args[0], skip = cb->args[1];
+	struct net *net = sock_net(skb->sk);
+	struct gtp_echo *echo;
+	struct gtp_net *gn;
+
+	gn = net_generic(net, gtp_net_id);
+
+	if (cb->args[4])
+		return 0;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(gtp, &gn->gtp_dev_list, list) {
+		if (last_gtp && last_gtp != gtp)
+			continue;
+		else
+			last_gtp = NULL;
+
+		for (i = bucket; i < gtp->hash_size; i++) {
+			j = 0;
+			hlist_for_each_entry_rcu(echo, &gtp->echo_hash[i],
+						 hlist) {
+				int ret = gtp_genl_fill_echo_info(skb,
+								  NETLINK_CB(cb->skb).portid,
+								  cb->nlh->nlmsg_seq,
+								  NLM_F_MULTI,
+								  cb->nlh->nlmsg_type, echo);
+				if (j >= skip && ret) {
+					cb->args[0] = i;
+					cb->args[1] = j;
+					cb->args[2] = (unsigned long)gtp;
+					goto out;
+				}
+				j++;
+			}
+			skip = 0;
+		}
+		bucket = 0;
+	}
+	cb->args[4] = 1;
+out:
+	rcu_read_unlock();
+	return skb->len;
+}
+
 static const struct nla_policy gtp_genl_policy[GTPA_MAX + 1] = {
 	[GTPA_LINK]		= { .type = NLA_U32, },
 	[GTPA_VERSION]		= { .type = NLA_U32, },
@@ -1593,6 +1931,7 @@ static const struct nla_policy gtp_genl_policy[GTPA_MAX + 1] = {
 	[GTPA_NET_NS_FD]	= { .type = NLA_U32, },
 	[GTPA_I_TEI]		= { .type = NLA_U32, },
 	[GTPA_O_TEI]		= { .type = NLA_U32, },
+	[GTPA_ECHO_REPLIED]	= { .type = NLA_U8, },
 };
 
 static const struct genl_small_ops gtp_genl_ops[] = {
@@ -1615,6 +1954,13 @@ static const struct genl_small_ops gtp_genl_ops[] = {
 		.dumpit = gtp_genl_dump_pdp,
 		.flags = GENL_ADMIN_PERM,
 	},
+	{
+		.cmd = GTP_CMD_ECHOREQ,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.doit = gtp_genl_send_echo_req,
+		.dumpit = gtp_genl_dump_echo,
+		.flags = GENL_ADMIN_PERM,
+	},
 };
 
 static struct genl_family gtp_genl_family __ro_after_init = {
diff --git a/include/uapi/linux/gtp.h b/include/uapi/linux/gtp.h
index 79f9191bbb24..63bb60f1e4e3 100644
--- a/include/uapi/linux/gtp.h
+++ b/include/uapi/linux/gtp.h
@@ -8,6 +8,7 @@ enum gtp_genl_cmds {
 	GTP_CMD_NEWPDP,
 	GTP_CMD_DELPDP,
 	GTP_CMD_GETPDP,
+	GTP_CMD_ECHOREQ,
 
 	GTP_CMD_MAX,
 };
@@ -29,6 +30,7 @@ enum gtp_attrs {
 	GTPA_NET_NS_FD,
 	GTPA_I_TEI,	/* for GTPv1 only */
 	GTPA_O_TEI,	/* for GTPv1 only */
+	GTPA_ECHO_REPLIED,
 	GTPA_PAD,
 	__GTPA_MAX,
 };
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
