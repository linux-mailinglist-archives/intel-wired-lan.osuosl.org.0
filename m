Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1524E57A981
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 23:53:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A177E60E24;
	Tue, 19 Jul 2022 21:53:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A177E60E24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658267607;
	bh=uOP5jqlnpIxr4cv3fL2tY3MyPdHnxUT7luhkzecT4Z8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZEPm66wsenmE/MAecMLPZDcOfLxtHaJ3ZugoT6exSlWuleo5YEG/qqbU+hGQ1xsl4
	 4hjFkz0s6TR2Cf3oR77ZHFHxdHFT/NFQpdNH51OVo5IiHfQ+iq2oczD1ErEvnW5r76
	 5aRm0G2d5yhIkl2OyTWX9YZHqRlWiQYMG2G1tJn5IWvBudBCdbbBwPuoi/JydUN/F7
	 4946PAMrNwYz6nP71fjPv+ccEnC/qoOkW0gLr51NTtYKBsA2UkdIb8VBwnRuhmffuy
	 tzIJCZcwF5Lz99MwBpYOu3i1W0lwxdUOqARkMbqMMSWwO0Rah8vbskbIbueIxyrFYr
	 8UGkrofoaPJiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y0NdOCi7pSTD; Tue, 19 Jul 2022 21:53:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57B8560EFA;
	Tue, 19 Jul 2022 21:53:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57B8560EFA
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50F591BF37C
 for <intel-wired-lan@osuosl.org>; Tue, 19 Jul 2022 21:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3837382EA2
 for <intel-wired-lan@osuosl.org>; Tue, 19 Jul 2022 21:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3837382EA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D9UwtSw_vxye for <intel-wired-lan@osuosl.org>;
 Tue, 19 Jul 2022 21:53:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EA4482E5F
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0EA4482E5F
 for <intel-wired-lan@osuosl.org>; Tue, 19 Jul 2022 21:53:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="269644865"
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="269644865"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 14:53:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="843814532"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.16])
 by fmsmga006.fm.intel.com with ESMTP; 19 Jul 2022 14:53:18 -0700
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 19 Jul 2022 14:52:00 -0700
Message-Id: <20220719215200.6237-1-alan.brady@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658267600; x=1689803600;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NKO0HwsHCBfElbSjYpVgtdBzb9++mHfLMT+lCUPZ28g=;
 b=apKnz8HK4TS/udT5VbA1XqrGyPH5jBcPCYw81Ccg61FderHStbZvdco0
 9W0vS261xs7DXYdsEnYpXNRNjRTf4BZwP6gOfYeZDgSQRwyloUCDVrspf
 PLOVAd2ve1gxslGdRjJdZgMKYTfNInZm4l7xH6OmvfVHNrO+UuE3/SH6D
 puaEPkw4Hzldr3yPu9uyiiG6gjXtjSYlNH4qxJ8sxJZxMkz3/LNO6INcs
 BUBsrcNrmR2bbBn/iwIr32n8bhQRfYxmJ6RT3w8Z/bCHVJnoqLhDZEYEp
 ThgOppjQ1fDQlaZGJIttGjoEnANNGc5vu/BPxWEacL0vSztkUtv9nYZ5A
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=apKnz8HK
Subject: [Intel-wired-lan] [PATCH net-next v2] ping: support ipv6 ping
 socket flow labels
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ping sockets don't appear to make any attempt to preserve flow labels
created and set by userspace using IPV6_FLOWINFO_SEND. Instead they are
clobbered by autolabels (if enabled) or zero.

Grab the flowlabel out of the msghdr similar to how rawv6_sendmsg does
it and move the memset up so it doesn't get zeroed after.

Signed-off-by: Alan Brady <alan.brady@intel.com>
Tested-by: Gurucharan <gurucharanx.g@intel.com>
---
v2: change 'fix' to 'support' and add some selftests
---
 net/ipv6/ping.c                               |  6 +-
 tools/testing/selftests/net/ipv6_flowlabel.c  | 75 +++++++++++++++----
 tools/testing/selftests/net/ipv6_flowlabel.sh | 16 ++++
 3 files changed, 81 insertions(+), 16 deletions(-)

diff --git a/net/ipv6/ping.c b/net/ipv6/ping.c
index ecf3a553a0dc..b1179f62bd23 100644
--- a/net/ipv6/ping.c
+++ b/net/ipv6/ping.c
@@ -64,6 +64,8 @@ static int ping_v6_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)
 	if (err)
 		return err;
 
+	memset(&fl6, 0, sizeof(fl6));
+
 	if (msg->msg_name) {
 		DECLARE_SOCKADDR(struct sockaddr_in6 *, u, msg->msg_name);
 		if (msg->msg_namelen < sizeof(*u))
@@ -72,12 +74,15 @@ static int ping_v6_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)
 			return -EAFNOSUPPORT;
 		}
 		daddr = &(u->sin6_addr);
+		if (np->sndflow)
+			fl6.flowlabel = u->sin6_flowinfo & IPV6_FLOWINFO_MASK;
 		if (__ipv6_addr_needs_scope_id(ipv6_addr_type(daddr)))
 			oif = u->sin6_scope_id;
 	} else {
 		if (sk->sk_state != TCP_ESTABLISHED)
 			return -EDESTADDRREQ;
 		daddr = &sk->sk_v6_daddr;
+		fl6.flowlabel = np->flow_label;
 	}
 
 	if (!oif)
@@ -101,7 +106,6 @@ static int ping_v6_sendmsg(struct sock *sk, struct msghdr *msg, size_t len)
 	ipc6.sockc.tsflags = sk->sk_tsflags;
 	ipc6.sockc.mark = sk->sk_mark;
 
-	memset(&fl6, 0, sizeof(fl6));
 	fl6.flowi6_oif = oif;
 
 	if (msg->msg_controllen) {
diff --git a/tools/testing/selftests/net/ipv6_flowlabel.c b/tools/testing/selftests/net/ipv6_flowlabel.c
index a7c41375374f..708a9822259d 100644
--- a/tools/testing/selftests/net/ipv6_flowlabel.c
+++ b/tools/testing/selftests/net/ipv6_flowlabel.c
@@ -9,6 +9,7 @@
 #include <errno.h>
 #include <fcntl.h>
 #include <limits.h>
+#include <linux/icmpv6.h>
 #include <linux/in6.h>
 #include <stdbool.h>
 #include <stdio.h>
@@ -29,26 +30,48 @@
 #ifndef IPV6_FLOWLABEL_MGR
 #define IPV6_FLOWLABEL_MGR 32
 #endif
+#ifndef IPV6_FLOWINFO_SEND
+#define IPV6_FLOWINFO_SEND 33
+#endif
 
 #define FLOWLABEL_WILDCARD	((uint32_t) -1)
 
 static const char cfg_data[]	= "a";
 static uint32_t cfg_label	= 1;
+static bool use_ping;
+static bool use_flowinfo_send;
+
+static struct icmp6hdr icmp6 = {
+	.icmp6_type = ICMPV6_ECHO_REQUEST
+};
+
+static struct sockaddr_in6 addr = {
+	.sin6_family = AF_INET6,
+	.sin6_addr = IN6ADDR_LOOPBACK_INIT,
+};
 
 static void do_send(int fd, bool with_flowlabel, uint32_t flowlabel)
 {
 	char control[CMSG_SPACE(sizeof(flowlabel))] = {0};
 	struct msghdr msg = {0};
-	struct iovec iov = {0};
+	struct iovec iov = {
+		.iov_base = (char *)cfg_data,
+		.iov_len = sizeof(cfg_data)
+	};
 	int ret;
 
-	iov.iov_base = (char *)cfg_data;
-	iov.iov_len = sizeof(cfg_data);
+	if (use_ping) {
+		iov.iov_base = &icmp6;
+		iov.iov_len = sizeof(icmp6);
+	}
 
 	msg.msg_iov = &iov;
 	msg.msg_iovlen = 1;
 
-	if (with_flowlabel) {
+	if (use_flowinfo_send) {
+		msg.msg_name = &addr;
+		msg.msg_namelen = sizeof(addr);
+	} else if (with_flowlabel) {
 		struct cmsghdr *cm;
 
 		cm = (void *)control;
@@ -94,6 +117,8 @@ static void do_recv(int fd, bool with_flowlabel, uint32_t expect)
 	ret = recvmsg(fd, &msg, 0);
 	if (ret == -1)
 		error(1, errno, "recv");
+	if (use_ping)
+		goto parse_cmsg;
 	if (msg.msg_flags & (MSG_TRUNC | MSG_CTRUNC))
 		error(1, 0, "recv: truncated");
 	if (ret != sizeof(cfg_data))
@@ -101,6 +126,7 @@ static void do_recv(int fd, bool with_flowlabel, uint32_t expect)
 	if (memcmp(data, cfg_data, sizeof(data)))
 		error(1, 0, "recv: data mismatch");
 
+parse_cmsg:
 	cm = CMSG_FIRSTHDR(&msg);
 	if (with_flowlabel) {
 		if (!cm)
@@ -114,9 +140,11 @@ static void do_recv(int fd, bool with_flowlabel, uint32_t expect)
 		flowlabel = ntohl(*(uint32_t *)CMSG_DATA(cm));
 		fprintf(stderr, "recv with label %u\n", flowlabel);
 
-		if (expect != FLOWLABEL_WILDCARD && expect != flowlabel)
+		if (expect != FLOWLABEL_WILDCARD && expect != flowlabel) {
 			fprintf(stderr, "recv: incorrect flowlabel %u != %u\n",
 					flowlabel, expect);
+			error(1, 0, "recv: flowlabel is wrong");
+		}
 
 	} else {
 		fprintf(stderr, "recv without label\n");
@@ -165,11 +193,17 @@ static void parse_opts(int argc, char **argv)
 {
 	int c;
 
-	while ((c = getopt(argc, argv, "l:")) != -1) {
+	while ((c = getopt(argc, argv, "l:ps")) != -1) {
 		switch (c) {
 		case 'l':
 			cfg_label = strtoul(optarg, NULL, 0);
 			break;
+		case 'p':
+			use_ping = true;
+			break;
+		case 's':
+			use_flowinfo_send = true;
+			break;
 		default:
 			error(1, 0, "%s: parse error", argv[0]);
 		}
@@ -178,27 +212,30 @@ static void parse_opts(int argc, char **argv)
 
 int main(int argc, char **argv)
 {
-	struct sockaddr_in6 addr = {
-		.sin6_family = AF_INET6,
-		.sin6_port = htons(8000),
-		.sin6_addr = IN6ADDR_LOOPBACK_INIT,
-	};
 	const int one = 1;
 	int fdt, fdr;
+	int prot = 0;
+
+	addr.sin6_port = htons(8000);
 
 	parse_opts(argc, argv);
 
-	fdt = socket(PF_INET6, SOCK_DGRAM, 0);
+	if (use_ping) {
+		fprintf(stderr, "attempting to use ping sockets\n");
+		prot = IPPROTO_ICMPV6;
+	}
+
+	fdt = socket(PF_INET6, SOCK_DGRAM, prot);
 	if (fdt == -1)
 		error(1, errno, "socket t");
 
-	fdr = socket(PF_INET6, SOCK_DGRAM, 0);
+	fdr = use_ping ? fdt : socket(PF_INET6, SOCK_DGRAM, 0);
 	if (fdr == -1)
 		error(1, errno, "socket r");
 
 	if (connect(fdt, (void *)&addr, sizeof(addr)))
 		error(1, errno, "connect");
-	if (bind(fdr, (void *)&addr, sizeof(addr)))
+	if (!use_ping && bind(fdr, (void *)&addr, sizeof(addr)))
 		error(1, errno, "bind");
 
 	flowlabel_get(fdt, cfg_label, IPV6_FL_S_EXCL, IPV6_FL_F_CREATE);
@@ -216,13 +253,21 @@ int main(int argc, char **argv)
 		do_recv(fdr, false, 0);
 	}
 
+	if (use_flowinfo_send) {
+		fprintf(stderr, "using IPV6_FLOWINFO_SEND to send label\n");
+		addr.sin6_flowinfo = htonl(cfg_label);
+		if (setsockopt(fdt, SOL_IPV6, IPV6_FLOWINFO_SEND, &one,
+			       sizeof(one)) == -1)
+			error(1, errno, "setsockopt flowinfo_send");
+	}
+
 	fprintf(stderr, "send label\n");
 	do_send(fdt, true, cfg_label);
 	do_recv(fdr, true, cfg_label);
 
 	if (close(fdr))
 		error(1, errno, "close r");
-	if (close(fdt))
+	if (!use_ping && close(fdt))
 		error(1, errno, "close t");
 
 	return 0;
diff --git a/tools/testing/selftests/net/ipv6_flowlabel.sh b/tools/testing/selftests/net/ipv6_flowlabel.sh
index d3bc6442704e..cee95e252bee 100755
--- a/tools/testing/selftests/net/ipv6_flowlabel.sh
+++ b/tools/testing/selftests/net/ipv6_flowlabel.sh
@@ -18,4 +18,20 @@ echo "TEST datapath (with auto-flowlabels)"
 ./in_netns.sh \
   sh -c 'sysctl -q -w net.ipv6.auto_flowlabels=1 && ./ipv6_flowlabel -l 1'
 
+echo "TEST datapath (with ping-sockets)"
+./in_netns.sh \
+  sh -c 'sysctl -q -w net.ipv6.flowlabel_reflect=4 && \
+    sysctl -q -w net.ipv4.ping_group_range="0 2147483647" && \
+    ./ipv6_flowlabel -l 1 -p'
+
+echo "TEST datapath (with flowinfo-send)"
+./in_netns.sh \
+  sh -c './ipv6_flowlabel -l 1 -s'
+
+echo "TEST datapath (with ping-sockets flowinfo-send)"
+./in_netns.sh \
+  sh -c 'sysctl -q -w net.ipv6.flowlabel_reflect=4 && \
+    sysctl -q -w net.ipv4.ping_group_range="0 2147483647" && \
+    ./ipv6_flowlabel -l 1 -p -s'
+
 echo OK. All tests passed
-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
