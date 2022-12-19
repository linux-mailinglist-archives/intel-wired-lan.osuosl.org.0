Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68813650EE8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 16:42:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 052FB410E5;
	Mon, 19 Dec 2022 15:42:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 052FB410E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671464576;
	bh=KQxK74U15Aqd3icQ6FjzbnfDZ+WOPgt6qXaGWReyycE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lbRt98psfx5hUYzj/R9kW5Jbi6bINf2rgYCUL2wPvkbpDZOjGeFu7a8j/Q12/LwLs
	 Kj/FqP4Cs7svkvuoSylWBa6sZv4ZUJfqbkpfHsw2jM0UhCDDir6hu2ol3O0pQTqRte
	 /7y0Xt89rD/cg1AFtiWTa9WK9Ps2yeAF3G5/shfLfHemsCoUcaQgF5ozzzf0LnnxXq
	 qrr3OhmKn1TfvCsB7OKUI8YREYa0xKcnbVe+POF3MQPDREaeZ3Ars535WE14lGCCqJ
	 P/Vvu88ar0IgTTSH40rwrFNNMcBAXKZLPoxdiWzIa5U/A8xkjtWWtjQONqWezwlPej
	 Q39CD7vCZ/zaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bq2saZFgYec3; Mon, 19 Dec 2022 15:42:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78C4C410A6;
	Mon, 19 Dec 2022 15:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78C4C410A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FA5F1BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF3A7401D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF3A7401D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kxte3Fr3RM1G for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 15:42:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16A084049F
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16A084049F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6C89C6102E;
 Mon, 19 Dec 2022 15:42:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B59EDC43398;
 Mon, 19 Dec 2022 15:42:42 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Mon, 19 Dec 2022 16:41:35 +0100
Message-Id: <6cce9b15a57345402bb94366434a5ac5609583b8.1671462951.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <cover.1671462950.git.lorenzo@kernel.org>
References: <cover.1671462950.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671464563;
 bh=uzUgGEhWKxfTXIAicGnMskAOI5jXVPYSOrd9yyXt3LQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OW7jKiqJrZsTqb50XmGmAj4/Q7hZKNtmhdVMeHek65EccBzLp6s019XAF3Bc8XbB8
 3yTPd0SrsrvaNbdctyz633/Iw926tvZXITTl1+Zzh4/STfasaUDgWkPOkLO/zsls7c
 hXv4A2xUOlKzSIJ4VgJFDQCNeAoU7endWt2mjKbZ9uISXFBLOkIM8n1ITklLW1wPTs
 G2py07m81MonY9VVVRbRjyvz+hTaDUxNIlB1DzZL+CKxS4owra3XCvdJWbmGfXujaK
 iBQrliNzJ0TnK0a589D1mt5XP+fl+1kuZy+Mfahov5fSW06WmM5Y+g+MoX71iGB7Qs
 n+eZbRgVhjYww==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OW7jKiqJ
Subject: [Intel-wired-lan] [RFC bpf-next 6/8] libbpf: add API to get XDP/XSK
 supported features
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
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, grygorii.strashko@ti.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kumar Kartikeya Dwivedi <memxor@gmail.com>

Add functions to get XDP/XSK supported function of netdev over route
netlink interface. These functions provide functionalities that are
going to be used in upcoming change.

The newly added bpf_xdp_query_features takes a fflags_cnt parameter,
which denotes the number of elements in the output fflags array. This
must be at least 1 and maybe greater than XDP_FEATURES_WORDS. The
function only writes to words which is min of fflags_cnt and
XDP_FEATURES_WORDS.

Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Co-developed-by: Marek Majtyka <alardam@gmail.com>
Signed-off-by: Marek Majtyka <alardam@gmail.com>
Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
---
 tools/lib/bpf/libbpf.h   |  1 +
 tools/lib/bpf/libbpf.map |  1 +
 tools/lib/bpf/netlink.c  | 62 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 64 insertions(+)

diff --git a/tools/lib/bpf/libbpf.h b/tools/lib/bpf/libbpf.h
index eee883f007f9..9d102eb5007e 100644
--- a/tools/lib/bpf/libbpf.h
+++ b/tools/lib/bpf/libbpf.h
@@ -967,6 +967,7 @@ LIBBPF_API int bpf_xdp_detach(int ifindex, __u32 flags,
 			      const struct bpf_xdp_attach_opts *opts);
 LIBBPF_API int bpf_xdp_query(int ifindex, int flags, struct bpf_xdp_query_opts *opts);
 LIBBPF_API int bpf_xdp_query_id(int ifindex, int flags, __u32 *prog_id);
+LIBBPF_API int bpf_xdp_query_features(int ifindex, __u32 *fflags, __u32 *fflags_cnt);
 
 /* TC related API */
 enum bpf_tc_attach_point {
diff --git a/tools/lib/bpf/libbpf.map b/tools/lib/bpf/libbpf.map
index 71bf5691a689..9c2abb58fa4b 100644
--- a/tools/lib/bpf/libbpf.map
+++ b/tools/lib/bpf/libbpf.map
@@ -362,6 +362,7 @@ LIBBPF_1.0.0 {
 		bpf_program__set_autoattach;
 		btf__add_enum64;
 		btf__add_enum64_value;
+		bpf_xdp_query_features;
 		libbpf_bpf_attach_type_str;
 		libbpf_bpf_link_type_str;
 		libbpf_bpf_map_type_str;
diff --git a/tools/lib/bpf/netlink.c b/tools/lib/bpf/netlink.c
index 35104580870c..6fd424cde58b 100644
--- a/tools/lib/bpf/netlink.c
+++ b/tools/lib/bpf/netlink.c
@@ -9,6 +9,7 @@
 #include <linux/if_ether.h>
 #include <linux/pkt_cls.h>
 #include <linux/rtnetlink.h>
+#include <linux/xdp_features.h>
 #include <sys/socket.h>
 #include <errno.h>
 #include <time.h>
@@ -41,6 +42,12 @@ struct xdp_id_md {
 	struct xdp_link_info info;
 };
 
+struct xdp_features_md {
+	int ifindex;
+	__u32 *flags;
+	__u32 *flags_cnt;
+};
+
 static int libbpf_netlink_open(__u32 *nl_pid)
 {
 	struct sockaddr_nl sa;
@@ -357,6 +364,39 @@ static int get_xdp_info(void *cookie, void *msg, struct nlattr **tb)
 	return 0;
 }
 
+static int bpf_get_xdp_features(void *cookie, void *msg, struct nlattr **tb)
+{
+	struct nlattr *xdp_tb[IFLA_XDP_FEATURES_BITS_WORD + 1];
+	struct xdp_features_md *md = cookie;
+	struct ifinfomsg *ifinfo = msg;
+	int ret, i, words;
+
+	if (md->ifindex && md->ifindex != ifinfo->ifi_index)
+		return 0;
+
+	if (!tb[IFLA_XDP_FEATURES])
+		return 0;
+
+	words = min(XDP_FEATURES_WORDS, *md->flags_cnt);
+	for (i = 0; i < words; ++i)
+		md->flags[i] = 0;
+
+	ret = libbpf_nla_parse_nested(xdp_tb, XDP_FEATURES_WORDS,
+				      tb[IFLA_XDP_FEATURES], NULL);
+	if (ret)
+		return ret;
+
+	*md->flags_cnt = words;
+	for (i = 0; i < words; ++i) {
+		if (!xdp_tb[IFLA_XDP_FEATURES_BITS_WORD])
+			continue;
+
+		md->flags[i] = libbpf_nla_getattr_u32(xdp_tb[IFLA_XDP_FEATURES_BITS_WORD]);
+	}
+
+	return 0;
+}
+
 int bpf_xdp_query(int ifindex, int xdp_flags, struct bpf_xdp_query_opts *opts)
 {
 	struct libbpf_nla_req req = {
@@ -421,6 +461,28 @@ int bpf_xdp_query_id(int ifindex, int flags, __u32 *prog_id)
 	return 0;
 }
 
+int bpf_xdp_query_features(int ifindex, __u32 *xdp_fflags, __u32 *fflags_cnt)
+{
+	struct libbpf_nla_req req = {
+		.nh.nlmsg_len		= NLMSG_LENGTH(sizeof(struct ifinfomsg)),
+		.nh.nlmsg_type		= RTM_GETLINK,
+		.nh.nlmsg_flags		= NLM_F_DUMP | NLM_F_REQUEST,
+		.ifinfo.ifi_family	= AF_PACKET,
+	};
+	struct xdp_features_md md = {};
+	int ret;
+
+	if (!xdp_fflags || !fflags_cnt)
+		return -EINVAL;
+
+	md.ifindex = ifindex;
+	md.flags = xdp_fflags;
+	md.flags_cnt = fflags_cnt;
+
+	ret = libbpf_netlink_send_recv(&req, __dump_link_nlmsg,
+				       bpf_get_xdp_features, &md);
+	return libbpf_err(ret);
+}
 
 typedef int (*qdisc_config_t)(struct libbpf_nla_req *req);
 
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
