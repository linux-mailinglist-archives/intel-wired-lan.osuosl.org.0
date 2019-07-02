Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 538C85D52D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 19:26:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F41341FE0A;
	Tue,  2 Jul 2019 17:26:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pAfkZC2FaivP; Tue,  2 Jul 2019 17:26:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D58A221526;
	Tue,  2 Jul 2019 17:25:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA4E81BF97E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 13:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C276285F7C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 13:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QRV5DLYJ5T5j for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 13:58:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16B2E85F57
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 13:58:51 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id u15so12977076oiv.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Jul 2019 06:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BsQb0987y7DGJiCbM+1oRL5bU8C7dXL+HPdc6nvVup8=;
 b=BCjN6TDckKE5YwlGwOhJycynO81a7qTVY0qR/emABsFXko0iCkjX15mFts+Yoj7tnF
 LGe5ZEBwT/YSOiXukqNuRtrFIjSHNS2dKomSABWgUKrZqEFQdftHc2s+nEeLBDVNmOvG
 YJgC+t0yCbyTesZMNC45yauuRu8d4Hq/tbAPfd0DMzj8CWvXyw1JHAC0DUZ3vENbGLMg
 pB4zE96mo9QopN8oKZfr5f7k5izKsm8w4oc7Q2D9Xx8LthVwwzLArBkqCc65CGfmeIJn
 CoB2+CNytDOOv0dj9PN4Wb/u5ff5vnw9baPTjxOXsPWJSAdgdqD6q5YKC2UnQETtkP1o
 BIhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BsQb0987y7DGJiCbM+1oRL5bU8C7dXL+HPdc6nvVup8=;
 b=qUo6/sEGQUKM+Zzj8iQXYhTo0SXW/jcKM4r60xVba2A8OJqqsxXNv6AXFFXFkJ1JZx
 3M8fcF2NlvYvh/1k1XNUdeR0S8DOE843mPLJgsiUoZz+dRJQrpBFaLGhqgRLiI0gk7j4
 lB5mLNVsDw/us811UVF1NanWFjMcoN6GHzNhhJrHyXr9m127XRxGtnu62nIk+A1eNupl
 +EnrDnACimG0T7mnVasJb6bbfvoH2Rg6EXuCcO3/ZeVCTOpEoEvVCU1fiXPr9sjyEj6p
 10yY8GNxwZU7DUd446B05IjuvRvZdQw8EH7bm5gI2fHo0nl4FPIwAQsfvRShoR/e4rGz
 1x2w==
X-Gm-Message-State: APjAAAVaFg/DIIq7NaYnRnKSeJJShu11lc5Jayjx+xIzGROHka3QDoP4
 +C18m8ojUzgLVlit9HYZpoSuqYE2XhW4RM2s0uU=
X-Google-Smtp-Source: APXvYqxN5xda1GqazGPAFddIWqo5p+zXSgrM8ZaqJVN2w4UvmWOrV5+NVonOsYljFi7ERJFMUVlcNFxhO/OmBpuZwtw=
X-Received: by 2002:aca:4306:: with SMTP id q6mr3114545oia.39.1562075930038;
 Tue, 02 Jul 2019 06:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <1562059288-26773-1-git-send-email-magnus.karlsson@intel.com>
 <1562059288-26773-3-git-send-email-magnus.karlsson@intel.com>
 <d4318783-18a4-d5c1-1044-691aaebb2b0a@mellanox.com>
In-Reply-To: <d4318783-18a4-d5c1-1044-691aaebb2b0a@mellanox.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Tue, 2 Jul 2019 15:58:38 +0200
Message-ID: <CAJ8uoz0jnR99iVCK+f3U5=Xo7JQ1SRM=Os7A0J9cTb_=8bL_Mg@mail.gmail.com>
To: Maxim Mikityanskiy <maximmi@mellanox.com>
X-Mailman-Approved-At: Tue, 02 Jul 2019 17:25:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 2/6] xsk: add support for
 need_wakeup flag in AF_XDP rings
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "maciejromanfijalkowski@gmail.com" <maciejromanfijalkowski@gmail.com>,
 "kevin.laatz@intel.com" <kevin.laatz@intel.com>,
 "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ciara.loftus@intel.com" <ciara.loftus@intel.com>,
 "qi.z.zhang@intel.com" <qi.z.zhang@intel.com>,
 "ast@kernel.org" <ast@kernel.org>,
 "xiaolong.ye@intel.com" <xiaolong.ye@intel.com>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "brouer@redhat.com" <brouer@redhat.com>,
 "bruce.richardson@intel.com" <bruce.richardson@intel.com>,
 "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "bjorn.topel@intel.com" <bjorn.topel@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 2, 2019 at 3:47 PM Maxim Mikityanskiy <maximmi@mellanox.com> wrote:
>
> On 2019-07-02 12:21, Magnus Karlsson wrote:
> >
> > +/* XDP_RING flags */
> > +#define XDP_RING_NEED_WAKEUP (1 << 0)
> > +
> >   struct xdp_ring_offset {
> >       __u64 producer;
> >       __u64 consumer;
> >       __u64 desc;
> > +     __u64 flags;
> >   };
> >
> >   struct xdp_mmap_offsets {
>
> <snip>
>
> > @@ -621,9 +692,12 @@ static int xsk_getsockopt(struct socket *sock, int level, int optname,
> >       case XDP_MMAP_OFFSETS:
> >       {
> >               struct xdp_mmap_offsets off;
> > +             bool flags_supported = true;
> >
> > -             if (len < sizeof(off))
> > +             if (len < sizeof(off) - sizeof(off.rx.flags))
> >                       return -EINVAL;
> > +             else if (len < sizeof(off))
> > +                     flags_supported = false;
> >
> >               off.rx.producer = offsetof(struct xdp_rxtx_ring, ptrs.producer);
> >               off.rx.consumer = offsetof(struct xdp_rxtx_ring, ptrs.consumer);
> > @@ -638,6 +712,16 @@ static int xsk_getsockopt(struct socket *sock, int level, int optname,
> >               off.cr.producer = offsetof(struct xdp_umem_ring, ptrs.producer);
> >               off.cr.consumer = offsetof(struct xdp_umem_ring, ptrs.consumer);
> >               off.cr.desc     = offsetof(struct xdp_umem_ring, desc);
> > +             if (flags_supported) {
> > +                     off.rx.flags = offsetof(struct xdp_rxtx_ring,
> > +                                             ptrs.flags);
> > +                     off.tx.flags = offsetof(struct xdp_rxtx_ring,
> > +                                             ptrs.flags);
> > +                     off.fr.flags = offsetof(struct xdp_umem_ring,
> > +                                             ptrs.flags);
> > +                     off.cr.flags = offsetof(struct xdp_umem_ring,
> > +                                             ptrs.flags);
> > +             }
>
> As far as I understood (correct me if I'm wrong), you are trying to
> preserve backward compatibility, so that if userspace doesn't support
> the flags field, you will determine that by looking at len and fall back
> to the old format.

That was the intention yes.

> However, two things are broken here:
>
> 1. The check `len < sizeof(off) - sizeof(off.rx.flags)` should be `len <
> sizeof(off) - 4 * sizeof(flags)`, because struct xdp_mmap_offsets
> consists of 4 structs xdp_ring_offset.
>
> 2. The old and new formats are not binary compatible, as flags are
> inserted in the middle of struct xdp_mmap_offsets.

You are correct. Since there are four copies of the xdp_ring_offset
this simple scheme will not work. I will instead create an internal
version 1 of the struct that I fill in and pass to user space if I
detect that user space is asking for the v1 size.

Thanks for catching Maxim. Keep'em coming.

/Magnus
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
