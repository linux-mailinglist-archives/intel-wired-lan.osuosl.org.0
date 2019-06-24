Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 188035107D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 17:30:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C339A857D8;
	Mon, 24 Jun 2019 15:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQVkKllCHKWh; Mon, 24 Jun 2019 15:30:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC675857E2;
	Mon, 24 Jun 2019 15:30:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D9241BF232
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:30:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8878A857D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:30:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id smSVJd9s3X1Z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 15:30:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C1423848AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 15:30:35 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id h21so14857425qtn.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 08:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uO8h/FxgnyTvba83hS63h/+pbp5njycXsHdBYpaJQgs=;
 b=UFWodPqbRC0KE4NdEPT2o5CQbkgCC6WBymgDEu9V9GQDx+RWoTMYGK7P2raA/2UOTf
 2au5U+iZbdNsJ7PTA71aH0ktHjurCYLlRLQGD8cqILGlF1e69nGWG2UF8XKXJiLGgQkx
 PA1zFx1+6TqBhBbjk3jp0MFMOebBL7E9mu+K7206BFortLXYR1UePiM2Dut6Unbe0Wl5
 SRlmt1105IrDdraYxaGEW9x5Ew/kEZ36u3+/IOTE40dEPQt5DTdeHOMi0vIcKX0u5nOK
 Qybk2WjK37Ro18y2vIQLotaVrE5sUnHaDEQmFlfyW1UBHmXX5xOQcHxr62UGOd5cGDlv
 /Cew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uO8h/FxgnyTvba83hS63h/+pbp5njycXsHdBYpaJQgs=;
 b=pB77o9VTRZkghAYQpuSwpiPM23ksLKxeIgj7TTlGoZ6gJuw9HocJWI45pPk7IBvTEJ
 nuiHkAHtilddgAxp7ltiisO6dtYe2+9aFFqKTIvuenFoc+uc6EIw57sDCelikECfbvC6
 0Tr3+iPl5T/EadeMtii9SY3KaE/oJEmLctQmZSJrPjA7m+PTEizL329aRGTAScCHrbPz
 JDScYtKdnOrtzc9XIQMYzQcuFlFWWeYCO4hbH8qzSl+69fmvCWBHDE8HdWLb8EY3iF5Y
 CUETQXwct0LS8NQ2OHFjrerhJo9zCiwBfmWJphEgvy4AiWQjCOUgFMN83+OtE6n46FEk
 OLIA==
X-Gm-Message-State: APjAAAWDxcQ4s1x0AOHCN+NXQ9TdfX410a74AVpo4WvedNtL4vptIvz+
 bPyo6YrSCXqOlrUPxwSkQ8RsfYpjj7g8ZLy1HKA=
X-Google-Smtp-Source: APXvYqzlSrEM2D9kNi0B0f4/2yLu29pfkiVe7Zz9poO72Tdgi2OEa1K9LrFdv8akj1yfUQGMnSFA6gKbzyJuR30WaZ0=
X-Received: by 2002:ac8:2f07:: with SMTP id j7mr118883469qta.359.1561390234918; 
 Mon, 24 Jun 2019 08:30:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190620090958.2135-8-kevin.laatz@intel.com>
In-Reply-To: <20190620090958.2135-8-kevin.laatz@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 24 Jun 2019 17:30:24 +0200
Message-ID: <CAJ+HfNjzXpOQPjPS4Pg6iAmOG=2H=nku-1Rt8YXN5oZf06Uefw@mail.gmail.com>
To: Kevin Laatz <kevin.laatz@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 07/11] libbpf: add flags to umem config
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

On Thu, 20 Jun 2019 at 19:26, Kevin Laatz <kevin.laatz@intel.com> wrote:
>
> This patch adds a 'flags' field to the umem_config and umem_reg structs.
> This will allow for more options to be added for configuring umems.
>
> The first use for the flags field is to add a flag for unaligned chunks
> mode. These flags can either be user-provided or filled with a default.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> ---
>  tools/include/uapi/linux/if_xdp.h | 4 ++++
>  tools/lib/bpf/xsk.c               | 7 +++++++
>  tools/lib/bpf/xsk.h               | 2 ++
>  3 files changed, 13 insertions(+)
>
> diff --git a/tools/include/uapi/linux/if_xdp.h b/tools/include/uapi/linux/if_xdp.h
> index caed8b1614ff..8548f2110a77 100644
> --- a/tools/include/uapi/linux/if_xdp.h
> +++ b/tools/include/uapi/linux/if_xdp.h
> @@ -17,6 +17,9 @@
>  #define XDP_COPY       (1 << 1) /* Force copy-mode */
>  #define XDP_ZEROCOPY   (1 << 2) /* Force zero-copy mode */
>
> +/* Flags for xsk_umem_config flags */
> +#define XDP_UMEM_UNALIGNED_CHUNKS (1 << 0)
> +
>  struct sockaddr_xdp {
>         __u16 sxdp_family;
>         __u16 sxdp_flags;
> @@ -52,6 +55,7 @@ struct xdp_umem_reg {
>         __u64 len; /* Length of packet data area */
>         __u32 chunk_size;
>         __u32 headroom;
> +       __u32 flags;
>  };
>
>  struct xdp_statistics {
> diff --git a/tools/lib/bpf/xsk.c b/tools/lib/bpf/xsk.c
> index 7ef6293b4fd7..df4207d4ff4a 100644
> --- a/tools/lib/bpf/xsk.c
> +++ b/tools/lib/bpf/xsk.c
> @@ -115,6 +115,7 @@ static void xsk_set_umem_config(struct xsk_umem_config *cfg,
>                 cfg->comp_size = XSK_RING_CONS__DEFAULT_NUM_DESCS;
>                 cfg->frame_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
>                 cfg->frame_headroom = XSK_UMEM__DEFAULT_FRAME_HEADROOM;
> +               cfg->flags = XSK_UMEM__DEFAULT_FLAGS;
>                 return;
>         }
>
> @@ -122,6 +123,7 @@ static void xsk_set_umem_config(struct xsk_umem_config *cfg,
>         cfg->comp_size = usr_cfg->comp_size;
>         cfg->frame_size = usr_cfg->frame_size;
>         cfg->frame_headroom = usr_cfg->frame_headroom;
> +       cfg->flags = usr_cfg->flags;
>  }
>
>  static int xsk_set_xdp_socket_config(struct xsk_socket_config *cfg,
> @@ -181,6 +183,11 @@ int xsk_umem__create(struct xsk_umem **umem_ptr, void *umem_area, __u64 size,
>         mr.len = size;
>         mr.chunk_size = umem->config.frame_size;
>         mr.headroom = umem->config.frame_headroom;
> +       mr.flags = umem->config.flags;
> +
> +       /* Headroom must be 0 for unaligned chunks */
> +       if ((mr.flags & XDP_UMEM_UNALIGNED_CHUNKS) && mr.headroom != 0)
> +               return -EINVAL;

Ah. :-) I'd prefer that this is done in the bind syscall.

>
>         err = setsockopt(umem->fd, SOL_XDP, XDP_UMEM_REG, &mr, sizeof(mr));
>         if (err) {
> diff --git a/tools/lib/bpf/xsk.h b/tools/lib/bpf/xsk.h
> index 82ea71a0f3ec..8d393873b70f 100644
> --- a/tools/lib/bpf/xsk.h
> +++ b/tools/lib/bpf/xsk.h
> @@ -170,12 +170,14 @@ LIBBPF_API int xsk_socket__fd(const struct xsk_socket *xsk);
>  #define XSK_UMEM__DEFAULT_FRAME_SHIFT    11 /* 2048 bytes */
>  #define XSK_UMEM__DEFAULT_FRAME_SIZE     (1 << XSK_UMEM__DEFAULT_FRAME_SHIFT)
>  #define XSK_UMEM__DEFAULT_FRAME_HEADROOM 0
> +#define XSK_UMEM__DEFAULT_FLAGS 0
>
>  struct xsk_umem_config {
>         __u32 fill_size;
>         __u32 comp_size;
>         __u32 frame_size;
>         __u32 frame_headroom;
> +       __u32 flags;
>  };
>
>  /* Flags for the libbpf_flags field. */
> --
> 2.17.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
