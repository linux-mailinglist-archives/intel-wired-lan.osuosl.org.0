Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6101D67F873
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 15:07:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CF9260C03;
	Sat, 28 Jan 2023 14:07:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CF9260C03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674914845;
	bh=uJG8gOhEr9mc31ICzDnkndDym65i8OXwPanfWcrhTbc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xhqJYdaVgXTyLV6K1pit4CIIc312njKzHkKj8c2bFJoF+cxb/dG4wvs380nKyJl6P
	 GXZuj8L7DjqkHuVa6xfmNXPi80utBwjxhpJQkV1uedl6g4QQaXOfrihG8eOE+PF/+9
	 RClVD1QDvR90ScPFLcEa7xf8T05eEiiFFL/J9NpGKp2CWgIGzLtnnjhY2BS2LZOALk
	 14MbDxRPOv/Dv2s6SHNN5P8i7WugpFs8pMMrTkT5sI6uaWpZgXMKizRLHn4mJjDYzX
	 Yq01ZD/uyMAn2snyXJ1ZlQVmbwPX1aE0VMTe8drKM+LdrSCcx0tLTgoiQGf2xGtxwr
	 7XlOdMW45LAog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n08wspNiFSHW; Sat, 28 Jan 2023 14:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FB866076C;
	Sat, 28 Jan 2023 14:07:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FB866076C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9ABAF1BF232
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8215440488
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:07:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8215440488
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qFRff3Bc2MHV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 14:07:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBD6A4013B
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BBD6A4013B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:07:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1863E60C0D;
 Sat, 28 Jan 2023 14:07:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEE88C433EF;
 Sat, 28 Jan 2023 14:07:08 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Sat, 28 Jan 2023 15:06:18 +0100
Message-Id: <d50e9b3fb435e195701362395ca4f9abc00c641b.1674913191.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674913191.git.lorenzo@kernel.org>
References: <cover.1674913191.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674914829;
 bh=W8s01byzbRc000VXxRd58Th7SDPiZm1t0FHhYCKHd1s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dNXyj4rZALElbImz7EEsR15QuD0KtO+ogBm1lgaZhPErDC+/o6tUvvIx1KvI4eCwl
 iGoTU9E9BZundM/dSq1VLK1lHQGpHyxCJxcIaqlHxzeaS5HI4/FeSTJKDg+mTJt4CL
 HdJI5e7kauUSQ6gvc1s3aB13rp6pPIIm1U618mNKsMo6oqD7NT3DqzpTmV/V4ODXqf
 9+QqQZ6suASVMmHJdFyyYS8DlEIbG1Ce11N6YIWCOSEteo7ruikCSa3YIc8AVVpXqj
 vHBLVZDOcN2bEUrl4O6mMuOeBTb9HLZWSQAh/EKlyQkKffuvR4QiSccQP1hkgyLFzJ
 wFEY2qYByQtNg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=dNXyj4rZ
Subject: [Intel-wired-lan] [PATCH v4 bpf-next 7/8] selftests/bpf: add test
 for bpf_xdp_query xdp-features support
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
 daniel@iogearbox.net, andrii@kernel.org, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, martin.lau@linux.dev, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce a self-test to verify libbpf bpf_xdp_query capability to dump
the xdp-features supported by the device (lo and veth in this case).

Acked-by: Stanislav Fomichev <sdf@google.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../bpf/prog_tests/xdp_do_redirect.c          | 27 ++++++++++++++++++-
 .../selftests/bpf/prog_tests/xdp_info.c       |  8 ++++++
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/bpf/prog_tests/xdp_do_redirect.c b/tools/testing/selftests/bpf/prog_tests/xdp_do_redirect.c
index a50971c6cf4a..b7a3e476f619 100644
--- a/tools/testing/selftests/bpf/prog_tests/xdp_do_redirect.c
+++ b/tools/testing/selftests/bpf/prog_tests/xdp_do_redirect.c
@@ -4,10 +4,12 @@
 #include <net/if.h>
 #include <linux/if_ether.h>
 #include <linux/if_packet.h>
+#include <linux/if_link.h>
 #include <linux/ipv6.h>
 #include <linux/in6.h>
 #include <linux/udp.h>
 #include <bpf/bpf_endian.h>
+#include <uapi/linux/netdev.h>
 #include "test_xdp_do_redirect.skel.h"
 
 #define SYS(fmt, ...)						\
@@ -92,7 +94,7 @@ void test_xdp_do_redirect(void)
 	struct test_xdp_do_redirect *skel = NULL;
 	struct nstoken *nstoken = NULL;
 	struct bpf_link *link;
-
+	LIBBPF_OPTS(bpf_xdp_query_opts, query_opts);
 	struct xdp_md ctx_in = { .data = sizeof(__u32),
 				 .data_end = sizeof(data) };
 	DECLARE_LIBBPF_OPTS(bpf_test_run_opts, opts,
@@ -153,6 +155,29 @@ void test_xdp_do_redirect(void)
 	    !ASSERT_NEQ(ifindex_dst, 0, "ifindex_dst"))
 		goto out;
 
+	/* Check xdp features supported by veth driver */
+	err = bpf_xdp_query(ifindex_src, XDP_FLAGS_DRV_MODE, &query_opts);
+	if (!ASSERT_OK(err, "veth_src bpf_xdp_query"))
+		goto out;
+
+	if (!ASSERT_EQ(query_opts.feature_flags,
+		       NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
+		       NETDEV_XDP_ACT_NDO_XMIT | NETDEV_XDP_ACT_RX_SG |
+		       NETDEV_XDP_ACT_NDO_XMIT_SG,
+		       "veth_src query_opts.feature_flags"))
+		goto out;
+
+	err = bpf_xdp_query(ifindex_dst, XDP_FLAGS_DRV_MODE, &query_opts);
+	if (!ASSERT_OK(err, "veth_dst bpf_xdp_query"))
+		goto out;
+
+	if (!ASSERT_EQ(query_opts.feature_flags,
+		       NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
+		       NETDEV_XDP_ACT_NDO_XMIT | NETDEV_XDP_ACT_RX_SG |
+		       NETDEV_XDP_ACT_NDO_XMIT_SG,
+		       "veth_dst query_opts.feature_flags"))
+		goto out;
+
 	memcpy(skel->rodata->expect_dst, &pkt_udp.eth.h_dest, ETH_ALEN);
 	skel->rodata->ifindex_out = ifindex_src; /* redirect back to the same iface */
 	skel->rodata->ifindex_in = ifindex_src;
diff --git a/tools/testing/selftests/bpf/prog_tests/xdp_info.c b/tools/testing/selftests/bpf/prog_tests/xdp_info.c
index cd3aa340e65e..286c21ecdc65 100644
--- a/tools/testing/selftests/bpf/prog_tests/xdp_info.c
+++ b/tools/testing/selftests/bpf/prog_tests/xdp_info.c
@@ -8,6 +8,7 @@ void serial_test_xdp_info(void)
 {
 	__u32 len = sizeof(struct bpf_prog_info), duration = 0, prog_id;
 	const char *file = "./xdp_dummy.bpf.o";
+	LIBBPF_OPTS(bpf_xdp_query_opts, opts);
 	struct bpf_prog_info info = {};
 	struct bpf_object *obj;
 	int err, prog_fd;
@@ -61,6 +62,13 @@ void serial_test_xdp_info(void)
 	if (CHECK(prog_id, "prog_id_drv", "unexpected prog_id=%u\n", prog_id))
 		goto out;
 
+	/* Check xdp features supported by lo device */
+	opts.feature_flags = ~0;
+	err = bpf_xdp_query(IFINDEX_LO, XDP_FLAGS_DRV_MODE, &opts);
+	if (!ASSERT_OK(err, "bpf_xdp_query"))
+		goto out;
+
+	ASSERT_EQ(opts.feature_flags, 0, "opts.feature_flags");
 out:
 	bpf_xdp_detach(IFINDEX_LO, 0, NULL);
 out_close:
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
