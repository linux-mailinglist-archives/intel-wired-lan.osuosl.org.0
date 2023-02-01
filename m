Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F09686433
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 11:25:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B75E7418E7;
	Wed,  1 Feb 2023 10:25:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B75E7418E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675247147;
	bh=XmIy8AOCj5iTjuBrwHx1WAslKxp+wx7g4aM+MjoUcq8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7eQkHl/twaR2wz/XDgisaiV02aIqcdByf2rUZUO9RRXFLR5ckuCPi1yBKm2NOR11z
	 Gin8L6t6eA3tLU+CPbSdXYgGtb6fmHXyKSvJioKbgWIKpr3ntGtjNLjaICBBOMhhAU
	 C5PUtkV26judpMuc37Jt3RXdmp2PsL7Z0xQo72OLTISEuXqCrRFhW6hqPs1r6QQEuz
	 MJtSD6aI9mm9RbZi/FnBAWALtbHMq3ufhdkSiCh/RK2O7boczIfCCHRhPDYAZquzUx
	 Rg/Pvk7l4/6Ot6blUatSGlmL6CaocLrA/+XbCWwushmMKBsTnCbFUDmoIACg2xEXh2
	 rqDZYEZq39Uvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id guS7NcK-HKIF; Wed,  1 Feb 2023 10:25:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E79340981;
	Wed,  1 Feb 2023 10:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E79340981
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A37F71BF59C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C13D818A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:25:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C13D818A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 69HN8QLKKU1B for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 10:25:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE893819D6
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE893819D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:25:32 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 640D3B82153;
 Wed,  1 Feb 2023 10:25:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C3CFC433D2;
 Wed,  1 Feb 2023 10:25:21 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Wed,  1 Feb 2023 11:24:21 +0100
Message-Id: <a72609ef4f0de7fee5376c40dbf54ad7f13bfb8d.1675245258.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1675245257.git.lorenzo@kernel.org>
References: <cover.1675245257.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675247122;
 bh=XuatoF0C1fjfwbiLCUqy12M3TrkHbh/fi11jVxxkNgM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hkpzlrmlJO/ufwOOr8QhzLu8Wrq16TMx70kXiIHNWHV97ylwFDxHPXglIbtt9gdKk
 RNTn/qOPlDvzc0QTTcEmotXhKW2Ulzi7vuVKQoTHVX1N4VgsBe39EY6OjjfiysAn00
 FLJkyfYj6TDd7wTxy5vO9SR6yQK7pUBxMdp8ehqVktx9NBQK1jdJL8OmmEISbreWNW
 8zRtLDWXnAYw+1+Rq8Cg9XkyR65ozBkTJ73EKNTuOk29ZxmfsixcWgSOTn1EzfnNr3
 UfN5ZzAnNP4//XAX0yKri4a7odlh7WXKkI0posRzIKezdEwtTjiUIVjHfmlGwQD7kz
 /EY88MpcnrEZg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hkpzlrml
Subject: [Intel-wired-lan] [PATCH v5 bpf-next 5/8] libbpf: add API to get
 XDP/XSK supported features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 gerhard@engleder-embedded.com, daniel@iogearbox.net, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend bpf_xdp_query routine in order to get XDP/XSK supported features
of netdev over route netlink interface.
Extend libbpf netlink implementation in order to support netlink_generic
protocol.

Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Co-developed-by: Marek Majtyka <alardam@gmail.com>
Signed-off-by: Marek Majtyka <alardam@gmail.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 tools/lib/bpf/libbpf.h  |  3 +-
 tools/lib/bpf/netlink.c | 96 +++++++++++++++++++++++++++++++++++++++++
 tools/lib/bpf/nlattr.h  | 12 ++++++
 3 files changed, 110 insertions(+), 1 deletion(-)

diff --git a/tools/lib/bpf/libbpf.h b/tools/lib/bpf/libbpf.h
index 8777ff21ea1d..b18581277eb2 100644
--- a/tools/lib/bpf/libbpf.h
+++ b/tools/lib/bpf/libbpf.h
@@ -1048,9 +1048,10 @@ struct bpf_xdp_query_opts {
 	__u32 hw_prog_id;	/* output */
 	__u32 skb_prog_id;	/* output */
 	__u8 attach_mode;	/* output */
+	__u64 feature_flags;	/* output */
 	size_t :0;
 };
-#define bpf_xdp_query_opts__last_field attach_mode
+#define bpf_xdp_query_opts__last_field feature_flags
 
 LIBBPF_API int bpf_xdp_attach(int ifindex, int prog_fd, __u32 flags,
 			      const struct bpf_xdp_attach_opts *opts);
diff --git a/tools/lib/bpf/netlink.c b/tools/lib/bpf/netlink.c
index d2468a04a6c3..32b13b7a11b0 100644
--- a/tools/lib/bpf/netlink.c
+++ b/tools/lib/bpf/netlink.c
@@ -9,6 +9,7 @@
 #include <linux/if_ether.h>
 #include <linux/pkt_cls.h>
 #include <linux/rtnetlink.h>
+#include <linux/netdev.h>
 #include <sys/socket.h>
 #include <errno.h>
 #include <time.h>
@@ -39,6 +40,12 @@ struct xdp_id_md {
 	int ifindex;
 	__u32 flags;
 	struct xdp_link_info info;
+	__u64 feature_flags;
+};
+
+struct xdp_features_md {
+	int ifindex;
+	__u64 flags;
 };
 
 static int libbpf_netlink_open(__u32 *nl_pid, int proto)
@@ -238,6 +245,43 @@ static int libbpf_netlink_send_recv(struct libbpf_nla_req *req,
 	return ret;
 }
 
+static int parse_genl_family_id(struct nlmsghdr *nh, libbpf_dump_nlmsg_t fn,
+				void *cookie)
+{
+	struct genlmsghdr *gnl = NLMSG_DATA(nh);
+	struct nlattr *na = (struct nlattr *)((void *)gnl + GENL_HDRLEN);
+	struct nlattr *tb[CTRL_ATTR_FAMILY_ID + 1];
+	__u16 *id = cookie;
+
+	libbpf_nla_parse(tb, CTRL_ATTR_FAMILY_ID, na,
+			 NLMSG_PAYLOAD(nh, sizeof(*gnl)), NULL);
+	if (!tb[CTRL_ATTR_FAMILY_ID])
+		return NL_CONT;
+
+	*id = libbpf_nla_getattr_u16(tb[CTRL_ATTR_FAMILY_ID]);
+	return NL_DONE;
+}
+
+static int libbpf_netlink_resolve_genl_family_id(const char *name,
+						 __u16 len, __u16 *id)
+{
+	struct libbpf_nla_req req = {
+		.nh.nlmsg_len	= NLMSG_LENGTH(GENL_HDRLEN),
+		.nh.nlmsg_type	= GENL_ID_CTRL,
+		.nh.nlmsg_flags	= NLM_F_REQUEST,
+		.gnl.cmd	= CTRL_CMD_GETFAMILY,
+		.gnl.version	= 2,
+	};
+	int err;
+
+	err = nlattr_add(&req, CTRL_ATTR_FAMILY_NAME, name, len);
+	if (err < 0)
+		return err;
+
+	return libbpf_netlink_send_recv(&req, NETLINK_GENERIC,
+					parse_genl_family_id, NULL, id);
+}
+
 static int __bpf_set_link_xdp_fd_replace(int ifindex, int fd, int old_fd,
 					 __u32 flags)
 {
@@ -357,6 +401,29 @@ static int get_xdp_info(void *cookie, void *msg, struct nlattr **tb)
 	return 0;
 }
 
+static int parse_xdp_features(struct nlmsghdr *nh, libbpf_dump_nlmsg_t fn,
+			      void *cookie)
+{
+	struct genlmsghdr *gnl = NLMSG_DATA(nh);
+	struct nlattr *na = (struct nlattr *)((void *)gnl + GENL_HDRLEN);
+	struct nlattr *tb[NETDEV_CMD_MAX + 1];
+	struct xdp_features_md *md = cookie;
+	__u32 ifindex;
+
+	libbpf_nla_parse(tb, NETDEV_CMD_MAX, na,
+			 NLMSG_PAYLOAD(nh, sizeof(*gnl)), NULL);
+
+	if (!tb[NETDEV_A_DEV_IFINDEX] || !tb[NETDEV_A_DEV_XDP_FEATURES])
+		return NL_CONT;
+
+	ifindex = libbpf_nla_getattr_u32(tb[NETDEV_A_DEV_IFINDEX]);
+	if (ifindex != md->ifindex)
+		return NL_CONT;
+
+	md->flags = libbpf_nla_getattr_u64(tb[NETDEV_A_DEV_XDP_FEATURES]);
+	return NL_DONE;
+}
+
 int bpf_xdp_query(int ifindex, int xdp_flags, struct bpf_xdp_query_opts *opts)
 {
 	struct libbpf_nla_req req = {
@@ -366,6 +433,10 @@ int bpf_xdp_query(int ifindex, int xdp_flags, struct bpf_xdp_query_opts *opts)
 		.ifinfo.ifi_family = AF_PACKET,
 	};
 	struct xdp_id_md xdp_id = {};
+	struct xdp_features_md md = {
+		.ifindex = ifindex,
+	};
+	__u16 id;
 	int err;
 
 	if (!OPTS_VALID(opts, bpf_xdp_query_opts))
@@ -393,6 +464,31 @@ int bpf_xdp_query(int ifindex, int xdp_flags, struct bpf_xdp_query_opts *opts)
 	OPTS_SET(opts, skb_prog_id, xdp_id.info.skb_prog_id);
 	OPTS_SET(opts, attach_mode, xdp_id.info.attach_mode);
 
+	if (!OPTS_HAS(opts, feature_flags))
+		return 0;
+
+	err = libbpf_netlink_resolve_genl_family_id("netdev", sizeof("netdev"), &id);
+	if (err < 0)
+		return libbpf_err(err);
+
+	memset(&req, 0, sizeof(req));
+	req.nh.nlmsg_len = NLMSG_LENGTH(GENL_HDRLEN);
+	req.nh.nlmsg_flags = NLM_F_REQUEST;
+	req.nh.nlmsg_type = id;
+	req.gnl.cmd = NETDEV_CMD_DEV_GET;
+	req.gnl.version = 2;
+
+	err = nlattr_add(&req, NETDEV_A_DEV_IFINDEX, &ifindex, sizeof(ifindex));
+	if (err < 0)
+		return err;
+
+	err = libbpf_netlink_send_recv(&req, NETLINK_GENERIC,
+				       parse_xdp_features, NULL, &md);
+	if (err)
+		return libbpf_err(err);
+
+	opts->feature_flags = md.flags;
+
 	return 0;
 }
 
diff --git a/tools/lib/bpf/nlattr.h b/tools/lib/bpf/nlattr.h
index 4d15ae2ff812..d92d1c1de700 100644
--- a/tools/lib/bpf/nlattr.h
+++ b/tools/lib/bpf/nlattr.h
@@ -14,6 +14,7 @@
 #include <errno.h>
 #include <linux/netlink.h>
 #include <linux/rtnetlink.h>
+#include <linux/genetlink.h>
 
 /* avoid multiple definition of netlink features */
 #define __LINUX_NETLINK_H
@@ -58,6 +59,7 @@ struct libbpf_nla_req {
 	union {
 		struct ifinfomsg ifinfo;
 		struct tcmsg tc;
+		struct genlmsghdr gnl;
 	};
 	char buf[128];
 };
@@ -89,11 +91,21 @@ static inline uint8_t libbpf_nla_getattr_u8(const struct nlattr *nla)
 	return *(uint8_t *)libbpf_nla_data(nla);
 }
 
+static inline uint16_t libbpf_nla_getattr_u16(const struct nlattr *nla)
+{
+	return *(uint16_t *)libbpf_nla_data(nla);
+}
+
 static inline uint32_t libbpf_nla_getattr_u32(const struct nlattr *nla)
 {
 	return *(uint32_t *)libbpf_nla_data(nla);
 }
 
+static inline uint64_t libbpf_nla_getattr_u64(const struct nlattr *nla)
+{
+	return *(uint64_t *)libbpf_nla_data(nla);
+}
+
 static inline const char *libbpf_nla_getattr_str(const struct nlattr *nla)
 {
 	return (const char *)libbpf_nla_data(nla);
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
