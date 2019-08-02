Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 673527FB71
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2019 15:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26C68884EE;
	Fri,  2 Aug 2019 13:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MgrnVRKeWy7J; Fri,  2 Aug 2019 13:47:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00E828853F;
	Fri,  2 Aug 2019 13:46:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 373101BF343
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 13:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2E69F86AE1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 13:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fHgtHz3j57rz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2019 13:46:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
 [209.85.219.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9502C86A9D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 13:46:56 +0000 (UTC)
Received: by mail-yb1-f195.google.com with SMTP id a5so26873496ybo.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Aug 2019 06:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=87nWth1qwkhZ1eXAHRwTJ+WjegXhw+N8PNzvPKErqiI=;
 b=mCk6lApFIOYFCE3bZlJdfRIULk2LdKeUPxWmUybHzo0Yaxeyj+CpyB+J/wuFoVrWSF
 gzGYdcnNrMDeTW8ONpOP30VbBDbMbNXAPePMk1DVPPjNrHDPGHEfKSpba6h/3gFnh7gm
 B3C390NPInuszW/nW11OokHsjQwZRedE4pDrAUS7uJbLdEHqwn4S7jYgeuUrH0l7SV5K
 elRfwudymEVNzdFUD6Kh6NUXNbC37Hs1QM67ptqkbvATaEUz4MHpZ+pE7GCu+MoJgFrU
 qGQVBNSIaEi1LCi+GpoQ5uIrukfNuDGhy0bILWVeYFDvnUXTGr5Ar4u0xt9avya5677U
 qaXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=87nWth1qwkhZ1eXAHRwTJ+WjegXhw+N8PNzvPKErqiI=;
 b=tNI+p7hOGpXd30VybTG920gWrSzkhngvp1chqx/N9KMoBeh6XzzVU0/IEVGXnwQbFf
 dNRG6Wx5sCax1UmfvOeLqNGwKt/VZl8HZiQhpX/UgbfXnXhfNeZ0RvbiVbxZp+tM+tEB
 SjgZg9Yh5NPntpq9JcG5FiPKceIZe4Q1BDyr3IcGbtlvnzGc9q3g1BytsKwsIwgyz41V
 gCg8Wm0xbj6n3d5aqD3/IVPu+CnduExXnHkmcF4IusEvlWSXYnvmQamESbkOqSsm5G9W
 XJsoU+7XHksx9c+roCELm/M3l7TDh4e+6e+6Ccb7iJeq+nw821Hg0YslYt+m2s2gWtQ2
 zjjg==
X-Gm-Message-State: APjAAAWtCmoogY+ZD1qBu4LGD/uOoFvbx+pVwLY5giHOpdN6cVVarqhH
 jonZtaoqd5w5rd3bVYIeTy0Vg67Z
X-Google-Smtp-Source: APXvYqxV6Wc2GdIFtCbN6IhKnQ6IyZE5u+CIWBizcVwlnn2cSf/Iy6LDJXY3LTnIPqpfvCcNKjcjFg==
X-Received: by 2002:a25:6107:: with SMTP id v7mr83139530ybb.115.1564753614510; 
 Fri, 02 Aug 2019 06:46:54 -0700 (PDT)
Received: from mail-yw1-f51.google.com (mail-yw1-f51.google.com.
 [209.85.161.51])
 by smtp.gmail.com with ESMTPSA id c7sm17121754ywb.48.2019.08.02.06.46.53
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 06:46:53 -0700 (PDT)
Received: by mail-yw1-f51.google.com with SMTP id l79so27250112ywe.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Aug 2019 06:46:53 -0700 (PDT)
X-Received: by 2002:a81:4d86:: with SMTP id
 a128mr79663944ywb.291.1564753613185; 
 Fri, 02 Aug 2019 06:46:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190802105507.16650-1-hslester96@gmail.com>
In-Reply-To: <20190802105507.16650-1-hslester96@gmail.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Fri, 2 Aug 2019 09:46:17 -0400
X-Gmail-Original-Message-ID: <CA+FuTScLs-qJApj5Yw9OOjVk4++HSjn__Vdy+xX2V1rpWU8uLg@mail.gmail.com>
Message-ID: <CA+FuTScLs-qJApj5Yw9OOjVk4++HSjn__Vdy+xX2V1rpWU8uLg@mail.gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH 2/2] ixgbe: Use refcount_t for refcount
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
Cc: Network Development <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-kernel <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 2, 2019 at 6:55 AM Chuhong Yuan <hslester96@gmail.com> wrote:
>
> refcount_t is better for reference counters since its
> implementation can prevent overflows.
> So convert atomic_t ref counters to refcount_t.
>
> Also convert refcount from 0-based to 1-based.
>
> This patch depends on PATCH 1/2.
>
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 6 +++---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.h | 2 +-
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> index 00710f43cfd2..d313d00065cd 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> @@ -773,7 +773,7 @@ int ixgbe_setup_fcoe_ddp_resources(struct ixgbe_adapter *adapter)
>
>         fcoe->extra_ddp_buffer = buffer;
>         fcoe->extra_ddp_buffer_dma = dma;
> -       atomic_set(&fcoe->refcnt, 0);
> +       refcount_set(&fcoe->refcnt, 1);

Same point as in the cxgb4 driver patch: how can you just change the
initial value without modifying the condition for release?

This is not a suggestion to resubmit all these changes again with a
change to the release condition.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
