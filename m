Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC928E0BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A99486938;
	Wed, 14 Aug 2019 22:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SssyHDRt7j_t; Wed, 14 Aug 2019 22:31:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B32C186972;
	Wed, 14 Aug 2019 22:31:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 235841BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:53:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DCD688159
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:53:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WrJCh1zvEcX6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 14:53:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C27DA88158
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 14:53:22 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id w26so8448568pfq.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=TTcgXgAeUCoMpSj0yVCrKDpOp1LAy/x47PpSs8z3E5Y=;
 b=VZTrVD7MRCNDSO0gKsULFNBqHbOmSK7FKyK30RWEgpjfcldjWWoNbx1DPV4caxKVil
 iHtEtZm/cLQCvbmxBNeP+XFKyhgiqGCE3aY/6H59no2dAlZszGZoUUqbyoVAXLATk774
 J5qqMDPjg7DAqovEpwZUon47Dy6yL16YUoK8CPw5Ode0XAzl+h5Tp1BZT7viOUuDhMAS
 DlbIw54DdEFVplaJF27eHKiY+bYg8ZoFk9xjNfnMmHD8/OkdA3SCk+sYDBRRb3V1UGDx
 uRyES7zWnjuWd94eEgK7Uoh09HxT1jzUvzqhKSiFamu3sIhflgmpMKuDAhM+bx43+EkK
 bZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=TTcgXgAeUCoMpSj0yVCrKDpOp1LAy/x47PpSs8z3E5Y=;
 b=XBWfkum8mqObdbmyAdys0mH5bvZwvoeTUYs3MiDH9G7gdRjVQVIKCYHqcAoEQ/MVZV
 IMcnZ5hLC70OvdS+8ZUb4Qc/oRc+zZI7M2jjw4WIMVIM/uyzN98tfg8oSLIhRMCkTF5a
 Ed98V25k1s8g5TnX8mo3n5wFUPkltNvS/JPF43egQqMOLj3LzCSlHIlzMxxKQej1+BFI
 pjrVfIKZV4Nu7vU/j10CR4Y3owgqzsJ/PfxOHTan6rrv36S0un2bqpAOMwoYzO47s9v2
 4ozWnPFcfoO3ROg93eSu2js+P5stWOTso84/tU61a5MHNuiVcNuMEkf+Y3MOnFQdtdzf
 bq5Q==
X-Gm-Message-State: APjAAAUUplxparQHwkS1zVRrUw+4+X1dN3bsDxzUS/yyyI3k9nXvRF+q
 joWbeEcwE4a3tUgm4L30MK8=
X-Google-Smtp-Source: APXvYqwmfzuZS5B39nSeZnKrh3k6RoFfndvFXKdtllRY0qZX5s7/0nXaKGVPyzpZVlWNBxwr5g/I5w==
X-Received: by 2002:a62:80cb:: with SMTP id j194mr295002pfd.183.1565794402330; 
 Wed, 14 Aug 2019 07:53:22 -0700 (PDT)
Received: from [172.26.122.72] ([2620:10d:c090:180::6327])
 by smtp.gmail.com with ESMTPSA id k64sm90010717pge.65.2019.08.14.07.53.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 07:53:21 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@intel.com>
Date: Wed, 14 Aug 2019 07:53:19 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <5FEB8607-9429-4B77-8C34-0F1039E287AA@gmail.com>
In-Reply-To: <1565767643-4908-7-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
 <1565767643-4908-7-git-send-email-magnus.karlsson@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 6/8] samples/bpf: add use
 of need_wakeup flag in xdpsock
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
 jakub.kicinski@netronome.com, daniel@iogearbox.net,
 maciejromanfijalkowski@gmail.com, netdev@vger.kernel.org,
 ciara.loftus@intel.com, qi.z.zhang@intel.com, ast@kernel.org,
 xiaolong.ye@intel.com, ilias.apalodimas@linaro.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 bruce.richardson@intel.com, maciej.fijalkowski@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 14 Aug 2019, at 0:27, Magnus Karlsson wrote:

> This commit adds using the need_wakeup flag to the xdpsock sample
> application. It is turned on by default as we think it is a feature
> that seems to always produce a performance benefit, if the application
> has been written taking advantage of it. It can be turned off in the
> sample app by using the '-m' command line option.
>
> The txpush and l2fwd sub applications have also been updated to
> support poll() with multiple sockets.
>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>

Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>


> ---
>  samples/bpf/xdpsock_user.c | 192 
> ++++++++++++++++++++++++++++-----------------
>  1 file changed, 120 insertions(+), 72 deletions(-)
>
> diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
> index 93eaaf7..da84c76 100644
> --- a/samples/bpf/xdpsock_user.c
> +++ b/samples/bpf/xdpsock_user.c
> @@ -67,8 +67,10 @@ static int opt_ifindex;
>  static int opt_queue;
>  static int opt_poll;
>  static int opt_interval = 1;
> -static u32 opt_xdp_bind_flags;
> +static u32 opt_xdp_bind_flags = XDP_USE_NEED_WAKEUP;
>  static int opt_xsk_frame_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
> +static int opt_timeout = 1000;
> +static bool opt_need_wakeup = true;
>  static __u32 prog_id;
>
>  struct xsk_umem_info {
> @@ -352,6 +354,7 @@ static struct option long_options[] = {
>  	{"zero-copy", no_argument, 0, 'z'},
>  	{"copy", no_argument, 0, 'c'},
>  	{"frame-size", required_argument, 0, 'f'},
> +	{"no-need-wakeup", no_argument, 0, 'm'},
>  	{0, 0, 0, 0}
>  };
>
> @@ -372,6 +375,7 @@ static void usage(const char *prog)
>  		"  -z, --zero-copy      Force zero-copy mode.\n"
>  		"  -c, --copy           Force copy mode.\n"
>  		"  -f, --frame-size=n   Set the frame size (must be a power of two, 
> default is %d).\n"
> +		"  -m, --no-need-wakeup Turn off use of driver need wakeup flag.\n"
>  		"\n";
>  	fprintf(stderr, str, prog, XSK_UMEM__DEFAULT_FRAME_SIZE);
>  	exit(EXIT_FAILURE);
> @@ -384,8 +388,9 @@ static void parse_command_line(int argc, char 
> **argv)
>  	opterr = 0;
>
>  	for (;;) {
> -		c = getopt_long(argc, argv, "Frtli:q:psSNn:czf:", long_options,
> -				&option_index);
> +
> +		c = getopt_long(argc, argv, "Frtli:q:psSNn:czf:m",
> +				long_options, &option_index);
>  		if (c == -1)
>  			break;
>
> @@ -429,6 +434,9 @@ static void parse_command_line(int argc, char 
> **argv)
>  			break;
>  		case 'f':
>  			opt_xsk_frame_size = atoi(optarg);
> +		case 'm':
> +			opt_need_wakeup = false;
> +			opt_xdp_bind_flags &= ~XDP_USE_NEED_WAKEUP;
>  			break;
>  		default:
>  			usage(basename(argv[0]));
> @@ -459,7 +467,8 @@ static void kick_tx(struct xsk_socket_info *xsk)
>  	exit_with_error(errno);
>  }
>
> -static inline void complete_tx_l2fwd(struct xsk_socket_info *xsk)
> +static inline void complete_tx_l2fwd(struct xsk_socket_info *xsk,
> +				     struct pollfd *fds)
>  {
>  	u32 idx_cq = 0, idx_fq = 0;
>  	unsigned int rcvd;
> @@ -468,7 +477,9 @@ static inline void complete_tx_l2fwd(struct 
> xsk_socket_info *xsk)
>  	if (!xsk->outstanding_tx)
>  		return;
>
> -	kick_tx(xsk);
> +	if (!opt_need_wakeup || xsk_ring_prod__needs_wakeup(&xsk->tx))
> +		kick_tx(xsk);
> +
>  	ndescs = (xsk->outstanding_tx > BATCH_SIZE) ? BATCH_SIZE :
>  		xsk->outstanding_tx;
>
> @@ -482,6 +493,8 @@ static inline void complete_tx_l2fwd(struct 
> xsk_socket_info *xsk)
>  		while (ret != rcvd) {
>  			if (ret < 0)
>  				exit_with_error(-ret);
> +			if (xsk_ring_prod__needs_wakeup(&xsk->umem->fq))
> +				ret = poll(fds, num_socks, opt_timeout);
>  			ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd,
>  						     &idx_fq);
>  		}
> @@ -505,7 +518,8 @@ static inline void complete_tx_only(struct 
> xsk_socket_info *xsk)
>  	if (!xsk->outstanding_tx)
>  		return;
>
> -	kick_tx(xsk);
> +	if (!opt_need_wakeup || xsk_ring_prod__needs_wakeup(&xsk->tx))
> +		kick_tx(xsk);
>
>  	rcvd = xsk_ring_cons__peek(&xsk->umem->cq, BATCH_SIZE, &idx);
>  	if (rcvd > 0) {
> @@ -515,20 +529,25 @@ static inline void complete_tx_only(struct 
> xsk_socket_info *xsk)
>  	}
>  }
>
> -static void rx_drop(struct xsk_socket_info *xsk)
> +static void rx_drop(struct xsk_socket_info *xsk, struct pollfd *fds)
>  {
>  	unsigned int rcvd, i;
>  	u32 idx_rx = 0, idx_fq = 0;
>  	int ret;
>
>  	rcvd = xsk_ring_cons__peek(&xsk->rx, BATCH_SIZE, &idx_rx);
> -	if (!rcvd)
> +	if (!rcvd) {
> +		if (xsk_ring_prod__needs_wakeup(&xsk->umem->fq))
> +			ret = poll(fds, num_socks, opt_timeout);
>  		return;
> +	}
>
>  	ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd, &idx_fq);
>  	while (ret != rcvd) {
>  		if (ret < 0)
>  			exit_with_error(-ret);
> +		if (xsk_ring_prod__needs_wakeup(&xsk->umem->fq))
> +			ret = poll(fds, num_socks, opt_timeout);
>  		ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd, &idx_fq);
>  	}

I'll just point out that it seems a little odd that if one ring
needs a wakeup, all the rings get polled again.  However, I suppose
that it does amortize costs of a kernel call.
-- 
Jonathan


> @@ -549,42 +568,65 @@ static void rx_drop(struct xsk_socket_info *xsk)
>  static void rx_drop_all(void)
>  {
>  	struct pollfd fds[MAX_SOCKS + 1];
> -	int i, ret, timeout, nfds = 1;
> +	int i, ret;
>
>  	memset(fds, 0, sizeof(fds));
>
>  	for (i = 0; i < num_socks; i++) {
>  		fds[i].fd = xsk_socket__fd(xsks[i]->xsk);
>  		fds[i].events = POLLIN;
> -		timeout = 1000; /* 1sn */
>  	}
>
>  	for (;;) {
>  		if (opt_poll) {
> -			ret = poll(fds, nfds, timeout);
> +			ret = poll(fds, num_socks, opt_timeout);
>  			if (ret <= 0)
>  				continue;
>  		}
>
>  		for (i = 0; i < num_socks; i++)
> -			rx_drop(xsks[i]);
> +			rx_drop(xsks[i], fds);
> +	}
> +}
> +
> +static void tx_only(struct xsk_socket_info *xsk, u32 frame_nb)
> +{
> +	u32 idx;
> +
> +	if (xsk_ring_prod__reserve(&xsk->tx, BATCH_SIZE, &idx) == 
> BATCH_SIZE) {
> +		unsigned int i;
> +
> +		for (i = 0; i < BATCH_SIZE; i++) {
> +			xsk_ring_prod__tx_desc(&xsk->tx, idx + i)->addr	=
> +				(frame_nb + i) << XSK_UMEM__DEFAULT_FRAME_SHIFT;
> +			xsk_ring_prod__tx_desc(&xsk->tx, idx + i)->len =
> +				sizeof(pkt_data) - 1;
> +		}
> +
> +		xsk_ring_prod__submit(&xsk->tx, BATCH_SIZE);
> +		xsk->outstanding_tx += BATCH_SIZE;
> +		frame_nb += BATCH_SIZE;
> +		frame_nb %= NUM_FRAMES;
>  	}
> +
> +	complete_tx_only(xsk);
>  }
>
> -static void tx_only(struct xsk_socket_info *xsk)
> +static void tx_only_all(void)
>  {
> -	int timeout, ret, nfds = 1;
> -	struct pollfd fds[nfds + 1];
> -	u32 idx, frame_nb = 0;
> +	struct pollfd fds[MAX_SOCKS];
> +	u32 frame_nb[MAX_SOCKS] = {};
> +	int i, ret;
>
>  	memset(fds, 0, sizeof(fds));
> -	fds[0].fd = xsk_socket__fd(xsk->xsk);
> -	fds[0].events = POLLOUT;
> -	timeout = 1000; /* 1sn */
> +	for (i = 0; i < num_socks; i++) {
> +		fds[0].fd = xsk_socket__fd(xsks[i]->xsk);
> +		fds[0].events = POLLOUT;
> +	}
>
>  	for (;;) {
>  		if (opt_poll) {
> -			ret = poll(fds, nfds, timeout);
> +			ret = poll(fds, num_socks, opt_timeout);
>  			if (ret <= 0)
>  				continue;
>
> @@ -592,69 +634,75 @@ static void tx_only(struct xsk_socket_info *xsk)
>  				continue;
>  		}
>
> -		if (xsk_ring_prod__reserve(&xsk->tx, BATCH_SIZE, &idx) ==
> -		    BATCH_SIZE) {
> -			unsigned int i;
> -
> -			for (i = 0; i < BATCH_SIZE; i++) {
> -				xsk_ring_prod__tx_desc(&xsk->tx, idx + i)->addr
> -					= (frame_nb + i) * opt_xsk_frame_size;
> -				xsk_ring_prod__tx_desc(&xsk->tx, idx + i)->len =
> -					sizeof(pkt_data) - 1;
> -			}
> -
> -			xsk_ring_prod__submit(&xsk->tx, BATCH_SIZE);
> -			xsk->outstanding_tx += BATCH_SIZE;
> -			frame_nb += BATCH_SIZE;
> -			frame_nb %= NUM_FRAMES;
> -		}
> -
> -		complete_tx_only(xsk);
> +		for (i = 0; i < num_socks; i++)
> +			tx_only(xsks[i], frame_nb[i]);
>  	}
>  }
>
> -static void l2fwd(struct xsk_socket_info *xsk)
> +static void l2fwd(struct xsk_socket_info *xsk, struct pollfd *fds)
>  {
> -	for (;;) {
> -		unsigned int rcvd, i;
> -		u32 idx_rx = 0, idx_tx = 0;
> -		int ret;
> +	unsigned int rcvd, i;
> +	u32 idx_rx = 0, idx_tx = 0;
> +	int ret;
>
> -		for (;;) {
> -			complete_tx_l2fwd(xsk);
> +	complete_tx_l2fwd(xsk, fds);
>
> -			rcvd = xsk_ring_cons__peek(&xsk->rx, BATCH_SIZE,
> -						   &idx_rx);
> -			if (rcvd > 0)
> -				break;
> -		}
> +	rcvd = xsk_ring_cons__peek(&xsk->rx, BATCH_SIZE, &idx_rx);
> +	if (!rcvd) {
> +		if (xsk_ring_prod__needs_wakeup(&xsk->umem->fq))
> +			ret = poll(fds, num_socks, opt_timeout);
> +		return;
> +	}
>
> +	ret = xsk_ring_prod__reserve(&xsk->tx, rcvd, &idx_tx);
> +	while (ret != rcvd) {
> +		if (ret < 0)
> +			exit_with_error(-ret);
> +		if (xsk_ring_prod__needs_wakeup(&xsk->tx))
> +			kick_tx(xsk);
>  		ret = xsk_ring_prod__reserve(&xsk->tx, rcvd, &idx_tx);
> -		while (ret != rcvd) {
> -			if (ret < 0)
> -				exit_with_error(-ret);
> -			ret = xsk_ring_prod__reserve(&xsk->tx, rcvd, &idx_tx);
> -		}
> +	}
> +
> +	for (i = 0; i < rcvd; i++) {
> +		u64 addr = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx)->addr;
> +		u32 len = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx++)->len;
> +		char *pkt = xsk_umem__get_data(xsk->umem->buffer, addr);
> +
> +		swap_mac_addresses(pkt);
>
> -		for (i = 0; i < rcvd; i++) {
> -			u64 addr = xsk_ring_cons__rx_desc(&xsk->rx,
> -							  idx_rx)->addr;
> -			u32 len = xsk_ring_cons__rx_desc(&xsk->rx,
> -							 idx_rx++)->len;
> -			char *pkt = xsk_umem__get_data(xsk->umem->buffer, addr);
> +		hex_dump(pkt, len, addr);
> +		xsk_ring_prod__tx_desc(&xsk->tx, idx_tx)->addr = addr;
> +		xsk_ring_prod__tx_desc(&xsk->tx, idx_tx++)->len = len;
> +	}
>
> -			swap_mac_addresses(pkt);
> +	xsk_ring_prod__submit(&xsk->tx, rcvd);
> +	xsk_ring_cons__release(&xsk->rx, rcvd);
>
> -			hex_dump(pkt, len, addr);
> -			xsk_ring_prod__tx_desc(&xsk->tx, idx_tx)->addr = addr;
> -			xsk_ring_prod__tx_desc(&xsk->tx, idx_tx++)->len = len;
> -		}
> +	xsk->rx_npkts += rcvd;
> +	xsk->outstanding_tx += rcvd;
> +}
> +
> +static void l2fwd_all(void)
> +{
> +	struct pollfd fds[MAX_SOCKS];
> +	int i, ret;
> +
> +	memset(fds, 0, sizeof(fds));
> +
> +	for (i = 0; i < num_socks; i++) {
> +		fds[i].fd = xsk_socket__fd(xsks[i]->xsk);
> +		fds[i].events = POLLOUT | POLLIN;
> +	}
>
> -		xsk_ring_prod__submit(&xsk->tx, rcvd);
> -		xsk_ring_cons__release(&xsk->rx, rcvd);
> +	for (;;) {
> +		if (opt_poll) {
> +			ret = poll(fds, num_socks, opt_timeout);
> +			if (ret <= 0)
> +				continue;
> +		}
>
> -		xsk->rx_npkts += rcvd;
> -		xsk->outstanding_tx += rcvd;
> +		for (i = 0; i < num_socks; i++)
> +			l2fwd(xsks[i], fds);
>  	}
>  }
>
> @@ -705,9 +753,9 @@ int main(int argc, char **argv)
>  	if (opt_bench == BENCH_RXDROP)
>  		rx_drop_all();
>  	else if (opt_bench == BENCH_TXONLY)
> -		tx_only(xsks[0]);
> +		tx_only_all();
>  	else
> -		l2fwd(xsks[0]);
> +		l2fwd_all();
>
>  	return 0;
>  }
> -- 
> 2.7.4
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
