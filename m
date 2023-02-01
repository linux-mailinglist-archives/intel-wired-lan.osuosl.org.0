Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8708F686434
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 11:25:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C12CD81DE1;
	Wed,  1 Feb 2023 10:25:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C12CD81DE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675247142;
	bh=qJYDyDgQwvYFF1e5x536hlBof4al4dAwK80O5zkC9DM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KMEzYbsv0hnzY/wuc7h8k9tLyL2mY9YsV/7WhN7ouCtx0ho86UiHZzXDj28WgNudw
	 IIpnunGV1V/uXqAlSOQuhPbFxLXS1ri4xyXuUV8m6IVCVVULqS74+wQMPS8fhsSwbh
	 xJxpjfuYsQBXDmcjD08CgMaXIS5q7m1voHirRVdPX+mayD8Jct6UMkYx71SIoyTWSf
	 XgBPxkEaojuluI35XojtgbcG0fm3PRRip30QEQ4y95xJV3l372ruIwtYyg4U1X7te3
	 iI69PBoqadSSwJif42+DXVS/R2deMAF3sJqWg2PhHa3RKYMwnPhtqe1b6UuoIGPHK3
	 HvzHSNesFF1IQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4L4HVG1ehhRA; Wed,  1 Feb 2023 10:25:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98FF08175D;
	Wed,  1 Feb 2023 10:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98FF08175D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 533671BF59C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2618F813F7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:25:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2618F813F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kqRyCzV5iTwv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 10:25:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF63581A92
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF63581A92
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:25:32 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DF827B81FDA;
 Wed,  1 Feb 2023 10:25:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 133F4C433D2;
 Wed,  1 Feb 2023 10:25:29 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Wed,  1 Feb 2023 11:24:23 +0100
Message-Id: <534550318a2c883e174811683909544c63632f05.1675245258.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1675245257.git.lorenzo@kernel.org>
References: <cover.1675245257.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675247129;
 bh=Wyzm/j2Fztu/g0ZdLHTw/uIIG8YL1taBFfM5HVIFKGI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YlMuW7VuBU4nzXhNfCxqjQxvEOYUTbzD/4W8EKDsQYkRGjaO1ebsJ9FerWwE+vLPf
 AAWcIJJU3Ah0t22HXZxnFWyK5lOocZfu+OCjvlMB0n7ADFamLnBG214QvF63maCFAd
 aUN5Xu5uTroGiS2TxpSYh5VHEb3lS7aMa1ppPld601tNukHyjB68CcVo7jooJKv5cH
 SmbjTjGf84aOTvMKshG8AzZcEuL7g2tTWQmLTnZ6LFDAEiji4oBB8MAUeXEpP21X4X
 YDPFYQK7diso6mVll/Fd7DYzi8aYCw81xjxoeDn4Do3ndaHAX2LBnP6nkhracRhk/e
 lBHpMWza2GcLg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YlMuW7Vu
Subject: [Intel-wired-lan] [PATCH v5 bpf-next 7/8] selftests/bpf: add test
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

Introduce a self-test to verify libbpf bpf_xdp_query capability to dump
the xdp-features supported by the device (lo and veth in this case).

Acked-by: Stanislav Fomichev <sdf@google.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../bpf/prog_tests/xdp_do_redirect.c          | 27 ++++++++++++++++++-
 .../selftests/bpf/prog_tests/xdp_info.c       |  8 ++++++
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/bpf/prog_tests/xdp_do_redirect.c b/tools/testing/selftests/bpf/prog_tests/xdp_do_redirect.c
index ac70e871d62f..2666c84dbd01 100644
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
@@ -96,7 +98,7 @@ void test_xdp_do_redirect(void)
 	struct test_xdp_do_redirect *skel = NULL;
 	struct nstoken *nstoken = NULL;
 	struct bpf_link *link;
-
+	LIBBPF_OPTS(bpf_xdp_query_opts, query_opts);
 	struct xdp_md ctx_in = { .data = sizeof(__u32),
 				 .data_end = sizeof(data) };
 	DECLARE_LIBBPF_OPTS(bpf_test_run_opts, opts,
@@ -157,6 +159,29 @@ void test_xdp_do_redirect(void)
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
