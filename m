Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA0F4BDB2F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Feb 2022 18:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AE028145A;
	Mon, 21 Feb 2022 17:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FuOjvPr-DJUA; Mon, 21 Feb 2022 17:19:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7ACBD81455;
	Mon, 21 Feb 2022 17:19:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E152C1BF339
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D60884036A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M_8H-b8SbRci for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Feb 2022 17:19:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD06A400A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Feb 2022 17:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645463976; x=1676999976;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=arQbW9R0H9aX5z23DIDmUzOgAtFdMFRVojZo3zmuS4c=;
 b=a7vLwmglKcVWEPExN8cl86D1N89Lz4XoGsza7lxeezi//CD5WlUShLmz
 xJAs0tlzh9bIv/710PHUZVr/OPOdq8U1BdRGbqVzG7ezadyRhI8fqTjxN
 hHWAPCgbBScoltBDdyJVpsk9UG8GsY1xknSFvdMvRtcglOHJphULFu9jV
 S6Si/WWlkYN5m7E7BquI1ffhrKwKPj69IInkwGS6wYai7ohAjQKD05D5l
 4l64vUwqoE1f+bQG5DRwQ2d2zaUnd2MvOoNclsRrnyitouyqg3U5HoQPz
 wR58MSwmE2yoURStG3FlaSgT/lKej6MPzzFNs/JqSf7BOBBsRr876+tu1 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="231514167"
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="231514167"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 09:19:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,386,1635231600"; d="scan'208";a="547407365"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 21 Feb 2022 09:19:28 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 21LHJBnO010069; Mon, 21 Feb 2022 17:19:27 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: netdev@vger.kernel.org
Date: Mon, 21 Feb 2022 11:14:19 +0100
Message-Id: <20220221101425.19776-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
References: <20220221101425.19776-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v7 1/7] gtp: Allow to create GTP
 device without FDs
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

Currently, when the user wants to create GTP device, he has to
provide file handles to the sockets created in userspace (IFLA_GTP_FD0,
IFLA_GTP_FD1). This behaviour is not ideal, considering the option of
adding support for GTP device creation through ip link. Ip link
application is not a good place to create such sockets.

This patch allows to create GTP device without providing
IFLA_GTP_FD0 and IFLA_GTP_FD1 arguments. If the user sets
IFLA_GTP_CREATE_SOCKETS attribute, then GTP module takes care
of creating UDP sockets by itself. Sockets are created with the
commonly known UDP ports used for GTP protocol (GTP0_PORT and
GTP1U_PORT). In this case we don't have to provide encap_destroy
because no extra deinitialization is needed, everything is covered
by udp_tunnel_sock_release.

Note: GTP instance created with only this change applied, does
not handle GTP Echo Requests. This is implemented in the following
patch.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v4: use ntohs when creating UDP socket
v5: IFLA_GTP_CREATE_SOCKETS introduced, gtp_newlink refactor
v6: reordering refactor removed
---
 drivers/net/gtp.c            | 101 +++++++++++++++++++++++++++++------
 include/uapi/linux/if_link.h |   1 +
 2 files changed, 85 insertions(+), 17 deletions(-)

diff --git a/drivers/net/gtp.c b/drivers/net/gtp.c
index bf087171bcf0..25d8521897b3 100644
--- a/drivers/net/gtp.c
+++ b/drivers/net/gtp.c
@@ -66,8 +66,10 @@ struct gtp_dev {
 
 	struct sock		*sk0;
 	struct sock		*sk1u;
+	u8			sk_created;
 
 	struct net_device	*dev;
+	struct net		*net;
 
 	unsigned int		role;
 	unsigned int		hash_size;
@@ -320,8 +322,16 @@ static void gtp_encap_disable_sock(struct sock *sk)
 
 static void gtp_encap_disable(struct gtp_dev *gtp)
 {
-	gtp_encap_disable_sock(gtp->sk0);
-	gtp_encap_disable_sock(gtp->sk1u);
+	if (gtp->sk_created) {
+		udp_tunnel_sock_release(gtp->sk0->sk_socket);
+		udp_tunnel_sock_release(gtp->sk1u->sk_socket);
+		gtp->sk_created = false;
+		gtp->sk0 = NULL;
+		gtp->sk1u = NULL;
+	} else {
+		gtp_encap_disable_sock(gtp->sk0);
+		gtp_encap_disable_sock(gtp->sk1u);
+	}
 }
 
 /* UDP encapsulation receive handler. See net/ipv4/udp.c.
@@ -656,17 +666,69 @@ static void gtp_destructor(struct net_device *dev)
 	kfree(gtp->tid_hash);
 }
 
+static struct sock *gtp_create_sock(int type, struct gtp_dev *gtp)
+{
+	struct udp_tunnel_sock_cfg tuncfg = {};
+	struct udp_port_cfg udp_conf = {
+		.local_ip.s_addr	= htonl(INADDR_ANY),
+		.family			= AF_INET,
+	};
+	struct net *net = gtp->net;
+	struct socket *sock;
+	int err;
+
+	if (type == UDP_ENCAP_GTP0)
+		udp_conf.local_udp_port = htons(GTP0_PORT);
+	else if (type == UDP_ENCAP_GTP1U)
+		udp_conf.local_udp_port = htons(GTP1U_PORT);
+	else
+		return ERR_PTR(-EINVAL);
+
+	err = udp_sock_create(net, &udp_conf, &sock);
+	if (err)
+		return ERR_PTR(err);
+
+	tuncfg.sk_user_data = gtp;
+	tuncfg.encap_type = type;
+	tuncfg.encap_rcv = gtp_encap_recv;
+	tuncfg.encap_destroy = NULL;
+
+	setup_udp_tunnel_sock(net, sock, &tuncfg);
+
+	return sock->sk;
+}
+
+static int gtp_create_sockets(struct gtp_dev *gtp, struct nlattr *data[])
+{
+	struct sock *sk1u = NULL;
+	struct sock *sk0 = NULL;
+
+	sk0 = gtp_create_sock(UDP_ENCAP_GTP0, gtp);
+	if (IS_ERR(sk0))
+		return PTR_ERR(sk0);
+
+	sk1u = gtp_create_sock(UDP_ENCAP_GTP1U, gtp);
+	if (IS_ERR(sk1u)) {
+		udp_tunnel_sock_release(sk0->sk_socket);
+		return PTR_ERR(sk1u);
+	}
+
+	gtp->sk_created = true;
+	gtp->sk0 = sk0;
+	gtp->sk1u = sk1u;
+
+	return 0;
+}
+
 static int gtp_newlink(struct net *src_net, struct net_device *dev,
 		       struct nlattr *tb[], struct nlattr *data[],
 		       struct netlink_ext_ack *extack)
 {
+	unsigned int role = GTP_ROLE_GGSN;
 	struct gtp_dev *gtp;
 	struct gtp_net *gn;
 	int hashsize, err;
 
-	if (!data[IFLA_GTP_FD0] && !data[IFLA_GTP_FD1])
-		return -EINVAL;
-
 	gtp = netdev_priv(dev);
 
 	if (!data[IFLA_GTP_PDP_HASHSIZE]) {
@@ -677,11 +739,23 @@ static int gtp_newlink(struct net *src_net, struct net_device *dev,
 			hashsize = 1024;
 	}
 
+	if (data[IFLA_GTP_ROLE]) {
+		role = nla_get_u32(data[IFLA_GTP_ROLE]);
+		if (role > GTP_ROLE_SGSN)
+			return -EINVAL;
+	}
+	gtp->role = role;
+
+	gtp->net = src_net;
+
 	err = gtp_hashtable_new(gtp, hashsize);
 	if (err < 0)
 		return err;
 
-	err = gtp_encap_enable(gtp, data);
+	if (data[IFLA_GTP_CREATE_SOCKETS])
+		err = gtp_create_sockets(gtp, data);
+	else
+		err = gtp_encap_enable(gtp, data);
 	if (err < 0)
 		goto out_hashtable;
 
@@ -726,6 +800,7 @@ static const struct nla_policy gtp_policy[IFLA_GTP_MAX + 1] = {
 	[IFLA_GTP_FD1]			= { .type = NLA_U32 },
 	[IFLA_GTP_PDP_HASHSIZE]		= { .type = NLA_U32 },
 	[IFLA_GTP_ROLE]			= { .type = NLA_U32 },
+	[IFLA_GTP_CREATE_SOCKETS]	= { .type = NLA_U8 },
 };
 
 static int gtp_validate(struct nlattr *tb[], struct nlattr *data[],
@@ -848,7 +923,9 @@ static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[])
 {
 	struct sock *sk1u = NULL;
 	struct sock *sk0 = NULL;
-	unsigned int role = GTP_ROLE_GGSN;
+
+	if (!data[IFLA_GTP_FD0] && !data[IFLA_GTP_FD1])
+		return -EINVAL;
 
 	if (data[IFLA_GTP_FD0]) {
 		u32 fd0 = nla_get_u32(data[IFLA_GTP_FD0]);
@@ -868,18 +945,8 @@ static int gtp_encap_enable(struct gtp_dev *gtp, struct nlattr *data[])
 		}
 	}
 
-	if (data[IFLA_GTP_ROLE]) {
-		role = nla_get_u32(data[IFLA_GTP_ROLE]);
-		if (role > GTP_ROLE_SGSN) {
-			gtp_encap_disable_sock(sk0);
-			gtp_encap_disable_sock(sk1u);
-			return -EINVAL;
-		}
-	}
-
 	gtp->sk0 = sk0;
 	gtp->sk1u = sk1u;
-	gtp->role = role;
 
 	return 0;
 }
diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index e1ba2d51b717..4e338ed55e96 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -822,6 +822,7 @@ enum {
 	IFLA_GTP_FD1,
 	IFLA_GTP_PDP_HASHSIZE,
 	IFLA_GTP_ROLE,
+	IFLA_GTP_CREATE_SOCKETS,
 	__IFLA_GTP_MAX,
 };
 #define IFLA_GTP_MAX (__IFLA_GTP_MAX - 1)
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
