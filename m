Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 304D85D532
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 19:26:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CDD0E21526;
	Tue,  2 Jul 2019 17:26:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCRFvQxKMKo6; Tue,  2 Jul 2019 17:26:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F04AF21546;
	Tue,  2 Jul 2019 17:26:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 312FE1BF302
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 09:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2E6FF2076F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 09:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JYTvIkn942Oq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 09:22:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 545AA20763
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 09:22:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 02:22:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,442,1557212400"; d="scan'208";a="315171788"
Received: from mkarlsso-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.32.218])
 by orsmga004.jf.intel.com with ESMTP; 02 Jul 2019 02:22:49 -0700
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, brouer@redhat.com
Date: Tue,  2 Jul 2019 11:21:28 +0200
Message-Id: <1562059288-26773-7-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562059288-26773-1-git-send-email-magnus.karlsson@intel.com>
References: <1562059288-26773-1-git-send-email-magnus.karlsson@intel.com>
X-Mailman-Approved-At: Tue, 02 Jul 2019 17:26:03 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v2 6/6] samples/bpf: add use of
 need_sleep flag in xdpsock
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, maciejromanfijalkowski@gmail.com,
 bruce.richardson@intel.com, ciara.loftus@intel.com,
 ilias.apalodimas@linaro.org, xiaolong.ye@intel.com,
 intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 maciej.fijalkowski@intel.com, bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This commit adds using the need_sleep flag to the xdpsock sample
application. It is turned on by default as we think it is a feature
that seems to always produce a performance benefit, if the application
has been written taking advantage of it. It can be turned off in the
sample app by using the '-m' command line option.

The txpush and l2fwd sub applications have also been updated to
support poll() with multiple sockets.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 samples/bpf/xdpsock_user.c | 192 ++++++++++++++++++++++++++++-----------------
 1 file changed, 120 insertions(+), 72 deletions(-)

diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
index 93eaaf7..7d771af 100644
--- a/samples/bpf/xdpsock_user.c
+++ b/samples/bpf/xdpsock_user.c
@@ -67,8 +67,10 @@ static int opt_ifindex;
 static int opt_queue;
 static int opt_poll;
 static int opt_interval = 1;
-static u32 opt_xdp_bind_flags;
+static u32 opt_xdp_bind_flags = XDP_USE_NEED_WAKEUP;
 static int opt_xsk_frame_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
+static int opt_timeout = 1000;
+static bool opt_might_sleep = true;
 static __u32 prog_id;
 
 struct xsk_umem_info {
@@ -352,6 +354,7 @@ static struct option long_options[] = {
 	{"zero-copy", no_argument, 0, 'z'},
 	{"copy", no_argument, 0, 'c'},
 	{"frame-size", required_argument, 0, 'f'},
+	{"no-might-sleep", no_argument, 0, 'm'},
 	{0, 0, 0, 0}
 };
 
@@ -372,6 +375,7 @@ static void usage(const char *prog)
 		"  -z, --zero-copy      Force zero-copy mode.\n"
 		"  -c, --copy           Force copy mode.\n"
 		"  -f, --frame-size=n   Set the frame size (must be a power of two, default is %d).\n"
+		"  -m, --no-might-sleep Turn off use of driver might sleep flag.\n"
 		"\n";
 	fprintf(stderr, str, prog, XSK_UMEM__DEFAULT_FRAME_SIZE);
 	exit(EXIT_FAILURE);
@@ -384,8 +388,9 @@ static void parse_command_line(int argc, char **argv)
 	opterr = 0;
 
 	for (;;) {
-		c = getopt_long(argc, argv, "Frtli:q:psSNn:czf:", long_options,
-				&option_index);
+
+		c = getopt_long(argc, argv, "Frtli:q:psSNn:czf:m",
+				long_options, &option_index);
 		if (c == -1)
 			break;
 
@@ -429,6 +434,9 @@ static void parse_command_line(int argc, char **argv)
 			break;
 		case 'f':
 			opt_xsk_frame_size = atoi(optarg);
+		case 'm':
+			opt_might_sleep = false;
+			opt_xdp_bind_flags &= ~XDP_USE_NEED_WAKEUP;
 			break;
 		default:
 			usage(basename(argv[0]));
@@ -459,7 +467,8 @@ static void kick_tx(struct xsk_socket_info *xsk)
 	exit_with_error(errno);
 }
 
-static inline void complete_tx_l2fwd(struct xsk_socket_info *xsk)
+static inline void complete_tx_l2fwd(struct xsk_socket_info *xsk,
+				     struct pollfd *fds)
 {
 	u32 idx_cq = 0, idx_fq = 0;
 	unsigned int rcvd;
@@ -468,7 +477,9 @@ static inline void complete_tx_l2fwd(struct xsk_socket_info *xsk)
 	if (!xsk->outstanding_tx)
 		return;
 
-	kick_tx(xsk);
+	if (!opt_might_sleep || xsk_ring_prod__needs_wakeup(&xsk->tx))
+		kick_tx(xsk);
+
 	ndescs = (xsk->outstanding_tx > BATCH_SIZE) ? BATCH_SIZE :
 		xsk->outstanding_tx;
 
@@ -482,6 +493,8 @@ static inline void complete_tx_l2fwd(struct xsk_socket_info *xsk)
 		while (ret != rcvd) {
 			if (ret < 0)
 				exit_with_error(-ret);
+			if (xsk_ring_prod__needs_wakeup(&xsk->umem->fq))
+				ret = poll(fds, num_socks, opt_timeout);
 			ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd,
 						     &idx_fq);
 		}
@@ -505,7 +518,8 @@ static inline void complete_tx_only(struct xsk_socket_info *xsk)
 	if (!xsk->outstanding_tx)
 		return;
 
-	kick_tx(xsk);
+	if (!opt_might_sleep || xsk_ring_prod__needs_wakeup(&xsk->tx))
+		kick_tx(xsk);
 
 	rcvd = xsk_ring_cons__peek(&xsk->umem->cq, BATCH_SIZE, &idx);
 	if (rcvd > 0) {
@@ -515,20 +529,25 @@ static inline void complete_tx_only(struct xsk_socket_info *xsk)
 	}
 }
 
-static void rx_drop(struct xsk_socket_info *xsk)
+static void rx_drop(struct xsk_socket_info *xsk, struct pollfd *fds)
 {
 	unsigned int rcvd, i;
 	u32 idx_rx = 0, idx_fq = 0;
 	int ret;
 
 	rcvd = xsk_ring_cons__peek(&xsk->rx, BATCH_SIZE, &idx_rx);
-	if (!rcvd)
+	if (!rcvd) {
+		if (xsk_ring_prod__needs_wakeup(&xsk->umem->fq))
+			ret = poll(fds, num_socks, opt_timeout);
 		return;
+	}
 
 	ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd, &idx_fq);
 	while (ret != rcvd) {
 		if (ret < 0)
 			exit_with_error(-ret);
+		if (xsk_ring_prod__needs_wakeup(&xsk->umem->fq))
+			ret = poll(fds, num_socks, opt_timeout);
 		ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd, &idx_fq);
 	}
 
@@ -549,42 +568,65 @@ static void rx_drop(struct xsk_socket_info *xsk)
 static void rx_drop_all(void)
 {
 	struct pollfd fds[MAX_SOCKS + 1];
-	int i, ret, timeout, nfds = 1;
+	int i, ret;
 
 	memset(fds, 0, sizeof(fds));
 
 	for (i = 0; i < num_socks; i++) {
 		fds[i].fd = xsk_socket__fd(xsks[i]->xsk);
 		fds[i].events = POLLIN;
-		timeout = 1000; /* 1sn */
 	}
 
 	for (;;) {
 		if (opt_poll) {
-			ret = poll(fds, nfds, timeout);
+			ret = poll(fds, num_socks, opt_timeout);
 			if (ret <= 0)
 				continue;
 		}
 
 		for (i = 0; i < num_socks; i++)
-			rx_drop(xsks[i]);
+			rx_drop(xsks[i], fds);
+	}
+}
+
+static void tx_only(struct xsk_socket_info *xsk, u32 frame_nb)
+{
+	u32 idx;
+
+	if (xsk_ring_prod__reserve(&xsk->tx, BATCH_SIZE, &idx) == BATCH_SIZE) {
+		unsigned int i;
+
+		for (i = 0; i < BATCH_SIZE; i++) {
+			xsk_ring_prod__tx_desc(&xsk->tx, idx + i)->addr	=
+				(frame_nb + i) << XSK_UMEM__DEFAULT_FRAME_SHIFT;
+			xsk_ring_prod__tx_desc(&xsk->tx, idx + i)->len =
+				sizeof(pkt_data) - 1;
+		}
+
+		xsk_ring_prod__submit(&xsk->tx, BATCH_SIZE);
+		xsk->outstanding_tx += BATCH_SIZE;
+		frame_nb += BATCH_SIZE;
+		frame_nb %= NUM_FRAMES;
 	}
+
+	complete_tx_only(xsk);
 }
 
-static void tx_only(struct xsk_socket_info *xsk)
+static void tx_only_all(void)
 {
-	int timeout, ret, nfds = 1;
-	struct pollfd fds[nfds + 1];
-	u32 idx, frame_nb = 0;
+	struct pollfd fds[MAX_SOCKS];
+	u32 frame_nb[MAX_SOCKS] = {};
+	int i, ret;
 
 	memset(fds, 0, sizeof(fds));
-	fds[0].fd = xsk_socket__fd(xsk->xsk);
-	fds[0].events = POLLOUT;
-	timeout = 1000; /* 1sn */
+	for (i = 0; i < num_socks; i++) {
+		fds[0].fd = xsk_socket__fd(xsks[i]->xsk);
+		fds[0].events = POLLOUT;
+	}
 
 	for (;;) {
 		if (opt_poll) {
-			ret = poll(fds, nfds, timeout);
+			ret = poll(fds, num_socks, opt_timeout);
 			if (ret <= 0)
 				continue;
 
@@ -592,69 +634,75 @@ static void tx_only(struct xsk_socket_info *xsk)
 				continue;
 		}
 
-		if (xsk_ring_prod__reserve(&xsk->tx, BATCH_SIZE, &idx) ==
-		    BATCH_SIZE) {
-			unsigned int i;
-
-			for (i = 0; i < BATCH_SIZE; i++) {
-				xsk_ring_prod__tx_desc(&xsk->tx, idx + i)->addr
-					= (frame_nb + i) * opt_xsk_frame_size;
-				xsk_ring_prod__tx_desc(&xsk->tx, idx + i)->len =
-					sizeof(pkt_data) - 1;
-			}
-
-			xsk_ring_prod__submit(&xsk->tx, BATCH_SIZE);
-			xsk->outstanding_tx += BATCH_SIZE;
-			frame_nb += BATCH_SIZE;
-			frame_nb %= NUM_FRAMES;
-		}
-
-		complete_tx_only(xsk);
+		for (i = 0; i < num_socks; i++)
+			tx_only(xsks[i], frame_nb[i]);
 	}
 }
 
-static void l2fwd(struct xsk_socket_info *xsk)
+static void l2fwd(struct xsk_socket_info *xsk, struct pollfd *fds)
 {
-	for (;;) {
-		unsigned int rcvd, i;
-		u32 idx_rx = 0, idx_tx = 0;
-		int ret;
+	unsigned int rcvd, i;
+	u32 idx_rx = 0, idx_tx = 0;
+	int ret;
 
-		for (;;) {
-			complete_tx_l2fwd(xsk);
+	complete_tx_l2fwd(xsk, fds);
 
-			rcvd = xsk_ring_cons__peek(&xsk->rx, BATCH_SIZE,
-						   &idx_rx);
-			if (rcvd > 0)
-				break;
-		}
+	rcvd = xsk_ring_cons__peek(&xsk->rx, BATCH_SIZE, &idx_rx);
+	if (!rcvd) {
+		if (xsk_ring_prod__needs_wakeup(&xsk->umem->fq))
+			ret = poll(fds, num_socks, opt_timeout);
+		return;
+	}
 
+	ret = xsk_ring_prod__reserve(&xsk->tx, rcvd, &idx_tx);
+	while (ret != rcvd) {
+		if (ret < 0)
+			exit_with_error(-ret);
+		if (xsk_ring_prod__needs_wakeup(&xsk->tx))
+			kick_tx(xsk);
 		ret = xsk_ring_prod__reserve(&xsk->tx, rcvd, &idx_tx);
-		while (ret != rcvd) {
-			if (ret < 0)
-				exit_with_error(-ret);
-			ret = xsk_ring_prod__reserve(&xsk->tx, rcvd, &idx_tx);
-		}
+	}
+
+	for (i = 0; i < rcvd; i++) {
+		u64 addr = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx)->addr;
+		u32 len = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx++)->len;
+		char *pkt = xsk_umem__get_data(xsk->umem->buffer, addr);
+
+		swap_mac_addresses(pkt);
 
-		for (i = 0; i < rcvd; i++) {
-			u64 addr = xsk_ring_cons__rx_desc(&xsk->rx,
-							  idx_rx)->addr;
-			u32 len = xsk_ring_cons__rx_desc(&xsk->rx,
-							 idx_rx++)->len;
-			char *pkt = xsk_umem__get_data(xsk->umem->buffer, addr);
+		hex_dump(pkt, len, addr);
+		xsk_ring_prod__tx_desc(&xsk->tx, idx_tx)->addr = addr;
+		xsk_ring_prod__tx_desc(&xsk->tx, idx_tx++)->len = len;
+	}
 
-			swap_mac_addresses(pkt);
+	xsk_ring_prod__submit(&xsk->tx, rcvd);
+	xsk_ring_cons__release(&xsk->rx, rcvd);
 
-			hex_dump(pkt, len, addr);
-			xsk_ring_prod__tx_desc(&xsk->tx, idx_tx)->addr = addr;
-			xsk_ring_prod__tx_desc(&xsk->tx, idx_tx++)->len = len;
-		}
+	xsk->rx_npkts += rcvd;
+	xsk->outstanding_tx += rcvd;
+}
+
+static void l2fwd_all(void)
+{
+	struct pollfd fds[MAX_SOCKS];
+	int i, ret;
+
+	memset(fds, 0, sizeof(fds));
+
+	for (i = 0; i < num_socks; i++) {
+		fds[i].fd = xsk_socket__fd(xsks[i]->xsk);
+		fds[i].events = POLLOUT | POLLIN;
+	}
 
-		xsk_ring_prod__submit(&xsk->tx, rcvd);
-		xsk_ring_cons__release(&xsk->rx, rcvd);
+	for (;;) {
+		if (opt_poll) {
+			ret = poll(fds, num_socks, opt_timeout);
+			if (ret <= 0)
+				continue;
+		}
 
-		xsk->rx_npkts += rcvd;
-		xsk->outstanding_tx += rcvd;
+		for (i = 0; i < num_socks; i++)
+			l2fwd(xsks[i], fds);
 	}
 }
 
@@ -705,9 +753,9 @@ int main(int argc, char **argv)
 	if (opt_bench == BENCH_RXDROP)
 		rx_drop_all();
 	else if (opt_bench == BENCH_TXONLY)
-		tx_only(xsks[0]);
+		tx_only_all();
 	else
-		l2fwd(xsks[0]);
+		l2fwd_all();
 
 	return 0;
 }
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
