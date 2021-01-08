Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 751262EEF8F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 10:26:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC69B87318;
	Fri,  8 Jan 2021 09:25:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0YIOQ7676+A0; Fri,  8 Jan 2021 09:25:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB87187311;
	Fri,  8 Jan 2021 09:25:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D814D1BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 09:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D3A3F86BA6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 09:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ps7xrghKE9mJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 09:25:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 31FC286B90
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 09:25:55 +0000 (UTC)
Received: by mail-il1-f173.google.com with SMTP id n9so9668864ili.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Jan 2021 01:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2JJPXlq5r6kmJ9tmwIciSJ/jy5n+AhqM308ZXWIW30M=;
 b=D47lKCZYjYroRoNzd+16Yh/kEJ0twoiXZMIrSoTTE7Qm6jB+9m/VFALjOZXr9Q7D6r
 y86/0hLqhmKa9J7RWWLBBxy/+XiiYZVgZlUGZ1g1+plYYrDX/rontDNzOZoRamNBhA09
 uWKS4em1hjF0W7+1oNtFtrVy93JBUKZTCdfA6ut2RZ+E2MkuliaMFfV23ZHUgDgJU9fy
 O7h5Xw/AMz8CPyoynxNf2zivMZOF3OEnFa31ZBMZgO3Q2V5Pq09prbgks+i8les+HxWm
 +smS/cgRgyhZn7ySdeuYe8hCiZv7dkZ3eet35gDjY6abG6OyvT3dYpUvlOPx4EeUVIwY
 IY5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2JJPXlq5r6kmJ9tmwIciSJ/jy5n+AhqM308ZXWIW30M=;
 b=h7Ij1wGfWiPG8GboDiywJpqLUN+jdvIHxuuinE5Z6MUgNV+yrX139ZHAWDrJK60Xug
 k5yKM2D9cpiddlmExY+3/4getMhWUq/ACIfE8nTTuYSKiN3ovNF+bCheZ1/bPbjKx6Cy
 cf6xhgkMYQPjvCDY4nAVZYELVcjZuqjXv83q1LLYrMd9cz6HdHlO6RQNadlaBPzpoGFj
 OzIzQT4fqqxgfINWfNzseQrBmlfTSLWyV3d98xH+vFeUrt7svuoARVDGdCnWLmwgkt0+
 gQUFqgOnG5ReypY0bTGl0S3lRgm3mOn4d0WaC9oleLgva7fcvUkuPtS4M2KtsXI5OA/k
 qM0Q==
X-Gm-Message-State: AOAM533ssNhvWYuDeTzyF214BnShJ7olz3rPDrsKfJ6kP6tAeEmEDmFT
 OwTOWO5oNTEJoGet6WdeeByqfcj2BkfKTT47jGYkMA==
X-Google-Smtp-Source: ABdhPJxsPixqtwwnvlmnKvcMNRDE4QV0qctqi+7HWVM2nolb+Qc0fMZnHgYR30aSear8HP9jSUQXJR72pzTqcxt2vfQ=
X-Received: by 2002:a92:9f59:: with SMTP id u86mr3048560ili.205.1610097954232; 
 Fri, 08 Jan 2021 01:25:54 -0800 (PST)
MIME-Version: 1.0
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
In-Reply-To: <20210106215539.2103688-2-jesse.brandeburg@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 8 Jan 2021 10:25:42 +0100
Message-ID: <CANn89iLcRrmXW_MGjuMMnNxWS+kaEnY=Y79hCPuiwiDd_G9=EA@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count
 drops from GRO
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
Cc: netdev <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jamal Hadi Salim <jhs@mojatatu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 6, 2021 at 10:56 PM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> When drivers call the various receive upcalls to receive an skb
> to the stack, sometimes that stack can drop the packet. The good
> news is that the return code is given to all the drivers of
> NET_RX_DROP or GRO_DROP. The bad news is that no drivers except
> the one "ice" driver that I changed, check the stat and increment
> the dropped count. This is currently leading to packets that
> arrive at the edge interface and are fully handled by the driver
> and then mysteriously disappear.
>
> Rather than fix all drivers to increment the drop stat when
> handling the return code, emulate the already existing statistic
> update for NET_RX_DROP events for the two GRO_DROP locations, and
> increment the dev->rx_dropped associated with the skb.
>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jamal Hadi Salim <jhs@mojatatu.com>
> ---
>  net/core/dev.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/net/core/dev.c b/net/core/dev.c
> index 8fa739259041..ef34043a9550 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -6071,6 +6071,7 @@ static gro_result_t napi_skb_finish(struct napi_struct *napi,
>                 break;
>
>         case GRO_DROP:
> +               atomic_long_inc(&skb->dev->rx_dropped);
>                 kfree_skb(skb);
>                 break;
>
> @@ -6159,6 +6160,7 @@ static gro_result_t napi_frags_finish(struct napi_struct *napi,
>                 break;
>
>         case GRO_DROP:
> +               atomic_long_inc(&skb->dev->rx_dropped);
>                 napi_reuse_skb(napi, skb);
>                 break;
>


This is not needed. I think we should clean up ice instead.

Drivers are supposed to have allocated the skb (using
napi_get_frags()) before calling napi_gro_frags()

Only napi_gro_frags() would return GRO_DROP, but we supposedly could
crash at that point, since a driver is clearly buggy.

We probably can remove GRO_DROP completely, assuming lazy drivers are fixed.

diff --git a/net/core/dev.c b/net/core/dev.c
index 8fa739259041aaa03585b5a7b8ebce862f4b7d1d..c9460c9597f1de51957fdcfc7a64ca45bce5af7c
100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -6223,9 +6223,6 @@ gro_result_t napi_gro_frags(struct napi_struct *napi)
        gro_result_t ret;
        struct sk_buff *skb = napi_frags_skb(napi);

-       if (!skb)
-               return GRO_DROP;
-
        trace_napi_gro_frags_entry(skb);

        ret = napi_frags_finish(napi, skb, dev_gro_receive(napi, skb));
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
