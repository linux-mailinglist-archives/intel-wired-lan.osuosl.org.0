Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1C3173FF7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2020 19:54:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7453586F0C;
	Fri, 28 Feb 2020 18:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PFv6v8RvTcqz; Fri, 28 Feb 2020 18:54:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7458186F0E;
	Fri, 28 Feb 2020 18:54:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A28901BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2020 18:54:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 983172038D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2020 18:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tT-8UcSfyLZp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2020 18:54:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by silver.osuosl.org (Postfix) with ESMTPS id A4EB920362
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2020 18:54:10 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id h8so4592660iob.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2020 10:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gothF0XmeP6cNGj7rIU/CzUNi9bpALC+/4legdueZHE=;
 b=epzR63TycgbLuPQ5Y45+JweRvMUaHM7TUPzksCGa7ZbTE+2zaBN4ZiZHp4K3B0QkUU
 hRTruGXpWEuIm4FSwcK5kfn06upKCaxBg260IlcbU4Opj+evmV1MNXb43onzE00yhvCi
 f8eaTjrd8Optfc4MbJqONGiSN7FEvZ6MY0tlECcf0kfLplL5EqV/nPV5s6ZyCxms7mjW
 87xagvmdinkhrwlq6z/+DEAiMjrHed7XVkSKNJ7wCYQge4/WZVLkZ3fFNADVen2xhCbI
 aTqCubM5foGCgcdKBHfDn6sFA+hQwR8scGS6RT58pw4ERwqkaH0G+Duu4lqh9XRHTFx7
 t6oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gothF0XmeP6cNGj7rIU/CzUNi9bpALC+/4legdueZHE=;
 b=FBHcbfgEpZp7r95s1s3Oxxqn1qE+b2BDmBGT8SDhm6ms4ou3v1/yA06F0Wl+8HspJT
 uKyF9oRwAlE0rI7V9V3RN8LSvBPcWpB9SFRUh7HGvlrvoZAOylBlXkz9SxcZxLifiCgf
 Z6ebeJNLo+FMCmnSThMsJal+fT9pVrYgtGn2gd6O2x+QnMi7quixj7u12a+rekWbstcd
 u6tZZW9RXYBwCPJVUWefJt+4nwqnGoxBaEsYU83wd5SApCz1PRPmUVWPVT6J0dpoSKRk
 BWFRfCGs47t8T8+wAcSy6gedQOVNRd05yGf7RrjrRrwqB/A1FW0+2ZBzyNPr/4c732Y8
 cE6w==
X-Gm-Message-State: APjAAAUYTmx2yxtcel+H+vtj9G5JSADmD4DwghaBVIEB6SI49QPKNGLf
 bjWLYy0p+eWHw0sdicNY2fMuOeFchrOkfigqYXc=
X-Google-Smtp-Source: APXvYqxijjojQVpxN3yyF+N1z+92h7uUw8VS+JklTjlG+jtKmiavixD88/T6wA8UgZPyUH1+22k/BIt4LmL93VhCirY=
X-Received: by 2002:a05:6602:154d:: with SMTP id
 h13mr4835260iow.237.1582916049682; 
 Fri, 28 Feb 2020 10:54:09 -0800 (PST)
MIME-Version: 1.0
References: <158289240414.1877500.8426359194461700361.stgit@firesoul>
In-Reply-To: <158289240414.1877500.8426359194461700361.stgit@firesoul>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 28 Feb 2020 10:53:58 -0800
Message-ID: <CAKgT0Udj=BRNh3=TkNk5XyY5zbXtY_3kw+VORspUZLhvUFDN+w@mail.gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Subject: Re: [Intel-wired-lan] [net-next PATCH] ixgbe: fix XDP redirect on
 archs with PAGE_SIZE above 4K
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 28, 2020 at 4:20 AM Jesper Dangaard Brouer
<brouer@redhat.com> wrote:
>
> The ixgbe driver have another memory model when compiled on archs with
> PAGE_SIZE above 4096 bytes. In this mode it doesn't split the page in
> two halves, but instead increment rx_buffer->page_offset by truesize of
> packet (which include headroom and tailroom for skb_shared_info).
>
> This is done correctly in ixgbe_build_skb(), but in ixgbe_rx_buffer_flip
> which is currently only called on XDP_TX and XDP_REDIRECT, it forgets
> to add the tailroom for skb_shared_info. This breaks XDP_REDIRECT, for
> veth and cpumap.  Fix by adding size of skb_shared_info tailroom.
>
> Fixes: 6453073987ba ("ixgbe: add initial support for xdp redirect")
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>

This approach to fixing it seems problematic at best. From what I can
tell there wasn't an issue until this frame gets up into the
XDP_REDIRECT path. In the case of XDP_TX the ixgbe driver has not need
for the extra shared info space. I assume you need this because you
are converting the buffer to an skbuff.

The question I have is exactly how is this failing, are we talking
about it resulting in the region being shared with the next frame, or
is it being correctly identified that there is no tailroom and the
frame is dropped? If we are seeing memory corruption due to it sharing
the memory I would say we have a problem with the design for
XDP_REDIRECT since it is assuming things about the buffer that may or
may not be true. At a minimum we are going to need to guarantee that
all XDP devices going forward provide this padding on the end of the
frame which has not been anything that was communicated up until now.

I would argue that we should not be using build_skb on XDP buffers
since it is going to lead to similar issues in the future. It would be
much better to simply add the XDP frame as a fragment and to pull the
headers as we have done in the past.

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 718931d951bc..ea6834bae04c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2254,7 +2254,8 @@ static void ixgbe_rx_buffer_flip(struct ixgbe_ring *rx_ring,
>         rx_buffer->page_offset ^= truesize;
>  #else
>         unsigned int truesize = ring_uses_build_skb(rx_ring) ?
> -                               SKB_DATA_ALIGN(IXGBE_SKB_PAD + size) :
> +                               SKB_DATA_ALIGN(IXGBE_SKB_PAD + size) +
> +                               SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) :
>                                 SKB_DATA_ALIGN(size);
>
>         rx_buffer->page_offset += truesize;
>
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
