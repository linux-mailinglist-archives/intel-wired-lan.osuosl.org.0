Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4406510A3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 17:35:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6011F84D8A;
	Mon, 24 Jun 2019 15:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L2YbdcqZhxDM; Mon, 24 Jun 2019 15:35:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA89186E2C;
	Mon, 24 Jun 2019 15:35:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 211521BF232
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1D14C84D8A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zPZ+rfvgJDVU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 15:35:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D6E8884B6A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:35:43 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id a15so14923431qtn.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 08:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hohxhvHFahbT9huNa5K4V4H7Uc3SCWB5AlmiP498iLs=;
 b=aYOKbuRlgnx43RLkCD3lQ/My2i4Ll+uym71wU4HDBarQh4Ifr5Q/GZjLYDwNAxaiWL
 fFbupdFY5hCDWZuT+RZbpKoY3ECtliEwPE0jiA+9fzGytVdqSQyplUr0BUOxTo1FGeKO
 QoBXy622/9InTNcppRh80Rtwe3CARnPkFt5nGVgAZLNQ5NPsM1cOA3eU6QXFYZbrMo11
 1DV/gvi+m/RVLqzzzUeid41VJ/SIvz19/SbyxmOoAlkB2wL3y0el5O8kEC1OfW8tekvQ
 zmDOcCLWQVMfyKS0q7Ojepn5Dg8o2+1HXhuCD4uNB2av7cqmhs+2jSWRKmsxPRROOUoT
 xlQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hohxhvHFahbT9huNa5K4V4H7Uc3SCWB5AlmiP498iLs=;
 b=qJa6k/5y2PNVHl6E65UbbBquM+mt2r6K96/yn2QVbsyMqqe+bfDN0e6zWoA11mlohV
 8OC/KIyxbIlzd9o87bTJy6jkNCtrFqldbyPplPJR7f6I7MyENa6fmavsG3cZPaBrDPgZ
 pDAy3EIzkxjhtdpq2oHmtQdoIrARjrR+tRLYEKhcUv3Yq2J6hGp6AytWjd7OBo6CX8iS
 CSgzOD1rDhAaPfbNUpvUEnUgm0LRtnGlqd50C6iVd0YQ/XeaoSbP9UUITB+GixywSCiS
 rq5lhkcAe4Upl287E9Th7ligX8F/H5yYjwYtCjAM5od6jYnPynXb6mhtb2ZyBbwWhCc/
 gBLQ==
X-Gm-Message-State: APjAAAVBbsXIm1J1wQCW37Zt3SMInRRNVRkUxAztCRtRU/kasNUV3AIA
 LTGdFaPNt9fSwa7y4sIQnhP6V8iwk46KEtx6kz0=
X-Google-Smtp-Source: APXvYqwM73dp51VgS6NoIbJfO0RGbuFywJEmxc3rgF/r2zhNnTH5aiHJj5b29ZKvl0GyN3XaYUas+/bagx+N9CXEDFE=
X-Received: by 2002:a0c:d610:: with SMTP id c16mr59145368qvj.22.1561390542917; 
 Mon, 24 Jun 2019 08:35:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-10-kevin.laatz@intel.com>
In-Reply-To: <20190620090958.2135-10-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 17:35:31 +0200
Message-ID: <CAJ+HfNgCtpb00o8=T-UGJo6ee0_T2z+H7LKZ-DaPeFNHpcvJHg@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 09/11] samples/bpf: add buffer
 recycling for unaligned chunks to xdpsock
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 ciara.loftus@intel.com, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bruce Richardson <bruce.richardson@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 20 Jun 2019 at 19:25, Kevin Laatz <kevin.laatz@intel.com> wrote:
>
> This patch adds buffer recycling support for unaligned buffers. Since we
> don't mask the addr to 2k at umem_teg in unaligned mode, we need to make
> sure we give back the correct, original addr to the fill queue. To do this,
> we need to mask the addr with the buffer size.
>
> To pass in a buffer size, use the --buf-size=n argument.
> NOTE: For xdpsock to work in aligned chunk mode, you still need to pass
> 'power of 2' buffer size.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> ---
>  samples/bpf/xdpsock_user.c | 71 +++++++++++++++++++++++++++-----------
>  1 file changed, 51 insertions(+), 20 deletions(-)
>
> diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
> index e26f43382d01..7b4ce047deb2 100644
> --- a/samples/bpf/xdpsock_user.c
> +++ b/samples/bpf/xdpsock_user.c
> @@ -60,6 +60,10 @@ enum benchmark_type {
>         BENCH_L2FWD = 2,
>  };
>
> +#define LENGTH (256UL*1024*1024)
> +#define ADDR (void *)(0x0UL)
> +#define SHMAT_FLAGS (0)

Not used.

> +
>  static enum benchmark_type opt_bench = BENCH_RXDROP;
>  static u32 opt_xdp_flags = XDP_FLAGS_UPDATE_IF_NOEXIST;
>  static const char *opt_if = "";
> @@ -67,6 +71,7 @@ static int opt_ifindex;
>  static int opt_queue;
>  static int opt_poll;
>  static int opt_interval = 1;
> +static u64 opt_buffer_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
>  static u32 opt_umem_flags;
>  static int opt_unaligned_chunks;
>  static u32 opt_xdp_bind_flags;
> @@ -287,7 +292,7 @@ static struct xsk_umem_info *xsk_configure_umem(void *buffer, u64 size)
>
>         umem_cfg.fill_size = XSK_RING_PROD__DEFAULT_NUM_DESCS;
>         umem_cfg.comp_size = XSK_RING_CONS__DEFAULT_NUM_DESCS;
> -       umem_cfg.frame_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
> +       umem_cfg.frame_size = opt_buffer_size;
>         umem_cfg.frame_headroom = XSK_UMEM__DEFAULT_FRAME_HEADROOM;
>         umem_cfg.flags = opt_umem_flags;
>
> @@ -334,8 +339,8 @@ static struct xsk_socket_info *xsk_configure_socket(struct xsk_umem_info *umem)
>                 exit_with_error(-ret);
>         for (i = 0;
>              i < XSK_RING_PROD__DEFAULT_NUM_DESCS *
> -                    XSK_UMEM__DEFAULT_FRAME_SIZE;
> -            i += XSK_UMEM__DEFAULT_FRAME_SIZE)
> +                    opt_buffer_size;
> +            i += opt_buffer_size)
>                 *xsk_ring_prod__fill_addr(&xsk->umem->fq, idx++) = i;
>         xsk_ring_prod__submit(&xsk->umem->fq,
>                               XSK_RING_PROD__DEFAULT_NUM_DESCS);
> @@ -356,6 +361,7 @@ static struct option long_options[] = {
>         {"zero-copy", no_argument, 0, 'z'},
>         {"copy", no_argument, 0, 'c'},
>         {"unaligned", no_argument, 0, 'u'},
> +       {"buf-size", required_argument, 0, 'b'},
>         {0, 0, 0, 0}
>  };
>
> @@ -376,6 +382,7 @@ static void usage(const char *prog)
>                 "  -z, --zero-copy      Force zero-copy mode.\n"
>                 "  -c, --copy           Force copy mode.\n"
>                 "  -u, --unaligned      Enable unaligned chunk placement\n"
> +               "  -b, --buf-size=n     Specify the buffer size to use\n"
>                 "\n";
>         fprintf(stderr, str, prog);
>         exit(EXIT_FAILURE);
> @@ -388,7 +395,7 @@ static void parse_command_line(int argc, char **argv)
>         opterr = 0;
>
>         for (;;) {
> -               c = getopt_long(argc, argv, "Frtli:q:psSNn:czu", long_options,
> +               c = getopt_long(argc, argv, "Frtli:q:psSNn:czub", long_options,
>                                 &option_index);
>                 if (c == -1)
>                         break;
> @@ -432,6 +439,9 @@ static void parse_command_line(int argc, char **argv)
>                         opt_umem_flags |= XDP_UMEM_UNALIGNED_CHUNKS;
>                         opt_unaligned_chunks = 1;
>                         break;
> +               case 'b':
> +                       opt_buffer_size = atoi(optarg);
> +                       break;
>                 case 'F':
>                         opt_xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
>                         break;
> @@ -483,13 +493,22 @@ static inline void complete_tx_l2fwd(struct xsk_socket_info *xsk)
>                 while (ret != rcvd) {
>                         if (ret < 0)
>                                 exit_with_error(-ret);
> -                       ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd,
> -                                                    &idx_fq);
> +                       ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd, &idx_fq);
> +               }
> +
> +               if (opt_umem_flags & XDP_UMEM_UNALIGNED_CHUNKS) {
> +                       for (i = 0; i < rcvd; i++) {
> +                               u64 comp_addr = *xsk_ring_cons__comp_addr(&xsk->umem->cq,
> +                                               idx_cq++);
> +                               u64 masked_comp = (comp_addr & ~((u64)opt_buffer_size-1));
> +                               *xsk_ring_prod__fill_addr(&xsk->umem->fq, idx_fq++) =
> +                                               masked_comp;
> +                       }
> +               } else {
> +                       for (i = 0; i < rcvd; i++)
> +                               *xsk_ring_prod__fill_addr(&xsk->umem->fq, idx_fq++) =
> +                                               *xsk_ring_cons__comp_addr(&xsk->umem->cq, idx_cq++);
>                 }
> -               for (i = 0; i < rcvd; i++)
> -                       *xsk_ring_prod__fill_addr(&xsk->umem->fq, idx_fq++) =
> -                               *xsk_ring_cons__comp_addr(&xsk->umem->cq,
> -                                                         idx_cq++);
>
>                 xsk_ring_prod__submit(&xsk->umem->fq, rcvd);
>                 xsk_ring_cons__release(&xsk->umem->cq, rcvd);
> @@ -533,13 +552,25 @@ static void rx_drop(struct xsk_socket_info *xsk)
>                 ret = xsk_ring_prod__reserve(&xsk->umem->fq, rcvd, &idx_fq);
>         }
>
> -       for (i = 0; i < rcvd; i++) {
> -               u64 addr = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx)->addr;
> -               u32 len = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx++)->len;
> -               char *pkt = xsk_umem__get_data(xsk->umem->buffer, addr);
> +       if (opt_umem_flags & XDP_UMEM_UNALIGNED_CHUNKS) {
> +               for (i = 0; i < rcvd; i++) {
> +                       u64 addr = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx)->addr;
> +                       u32 len = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx++)->len;
> +                       char *pkt = xsk_umem__get_data(xsk->umem->buffer, addr);
> +                       u64 masked_addr = (addr & ~((u64)opt_buffer_size-1));
> +
> +                       hex_dump(pkt, len, addr);
> +                       *xsk_ring_prod__fill_addr(&xsk->umem->fq, idx_fq++) = masked_addr;
> +               }
> +       } else {
> +               for (i = 0; i < rcvd; i++) {
> +                       u64 addr = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx)->addr;
> +                       u32 len = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx++)->len;
> +                       char *pkt = xsk_umem__get_data(xsk->umem->buffer, addr);
>
> -               hex_dump(pkt, len, addr);
> -               *xsk_ring_prod__fill_addr(&xsk->umem->fq, idx_fq++) = addr;
> +                       hex_dump(pkt, len, addr);
> +                       *xsk_ring_prod__fill_addr(&xsk->umem->fq, idx_fq++) = addr;
> +               }
>         }
>
>         xsk_ring_prod__submit(&xsk->umem->fq, rcvd);
> @@ -677,20 +708,20 @@ int main(int argc, char **argv)
>         }
>
>         ret = posix_memalign(&bufs, getpagesize(), /* PAGE_SIZE aligned */
> -                            NUM_FRAMES * XSK_UMEM__DEFAULT_FRAME_SIZE);
> +                            NUM_FRAMES * opt_buffer_size);
>         if (ret)
>                 exit_with_error(ret);
>
>         /* Create sockets... */
>         umem = xsk_configure_umem(bufs,
> -                                 NUM_FRAMES * XSK_UMEM__DEFAULT_FRAME_SIZE);
> +                                 NUM_FRAMES * opt_buffer_size);
>         xsks[num_socks++] = xsk_configure_socket(umem);
>
>         if (opt_bench == BENCH_TXONLY) {
>                 int i;
>
> -               for (i = 0; i < NUM_FRAMES * XSK_UMEM__DEFAULT_FRAME_SIZE;
> -                    i += XSK_UMEM__DEFAULT_FRAME_SIZE)
> +               for (i = 0; i < NUM_FRAMES * opt_buffer_size;
> +                    i += opt_buffer_size)
>                         (void)gen_eth_frame(umem, i);
>         }
>
> --
> 2.17.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
