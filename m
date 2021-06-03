Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0674339A273
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Jun 2021 15:47:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44B6F405A2;
	Thu,  3 Jun 2021 13:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 84vRDTJOOM53; Thu,  3 Jun 2021 13:47:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37C154059F;
	Thu,  3 Jun 2021 13:47:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9A1B1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jun 2021 12:32:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D84D0400E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jun 2021 12:32:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0E_0zWbyDlFF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Jun 2021 12:32:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com
 [IPv6:2607:f8b0:4864:20::f2e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF599400CA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Jun 2021 12:32:47 +0000 (UTC)
Received: by mail-qv1-xf2e.google.com with SMTP id a7so3047036qvf.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Jun 2021 05:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dgzzzAH8mID5IX+kM+X46gD1kQssopr2KLjMaxfwAfQ=;
 b=pivw5khZunEhLNkShvJxudcY5u34StFUUUuBQ4dT2YRtoGk+ZajKR6j+GJC4EGvAjz
 GAFuhlfNMqLusSqUyju0h8thafVT7d3i/I9E+KmKBU5swJgPoufqlzG0KUset1zUCkHD
 fFlThKEJzjf/01c7z3kYemTUQq6xHkqXdEyIMg7+wGWO+1HbX8jcHdOrUKMmj3nVYO3b
 VswcQIfZ3bGibSi+Ck9fb8LVZF4gREFNaGZedkI6w5m6MCuG9yhnJ41e/Z3AcaulbdXy
 oKU1vlZpULNhX3sbH891/zGeSCGGPouyxdNkzVVXeIKop2MPowv87e+vBJxmdc/eCQjm
 l6mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dgzzzAH8mID5IX+kM+X46gD1kQssopr2KLjMaxfwAfQ=;
 b=B4PTjwJtYUUm1hCa/Yxaxk4itIJo3P0VvFEBYTNnKoPVBppdWIiB4Vys8kjM7qKoM2
 my3lYfHc+DLs7zdfUdBxjAWFVZdI2Vsd8aKCWmx9eHeICzX60ZY0v7TNeZN6l0wKzGxr
 ohMa2AYHcR3cho6CUpbAAOZZeL55vguH7/UFPvT+g7a22cvNIdStC9qstIln/Ysxyi38
 PY9vPbwNb6taTNggCYJ8MgZkIQjThaa2aR2fCoAUy9naZ656e00uP5oig+PsWeGsgI+2
 f6OvIlbByL7Xj42319LZDAw8r5/d525M/AOdKh00K6Q0bm8zl9JONWwx7m8to0sVJRkh
 xDLA==
X-Gm-Message-State: AOAM531ASoWST+5SW63PWLZm+T/DPn3uHw1ZGfdms0oWdrY0xyuzpjzW
 vlwZEobukqBUmeKAP5+KtuRKkYG9raHXH9Pw2A==
X-Google-Smtp-Source: ABdhPJwNPJrUuNg7AlPQ4HrNyA2pu83VdMWudd/dH0QdVuFb1BEOS/aHVdnAQMIz+r5TiO7abKEezeHlgQGJO327vXw=
X-Received: by 2002:a0c:fe6c:: with SMTP id b12mr33815218qvv.32.1622723566330; 
 Thu, 03 Jun 2021 05:32:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAHn8xckNXci+X_Eb2WMv4uVYjO2331UWB2JLtXr_58z0Av8+8A@mail.gmail.com>
 <cc58c09e-bbb5-354a-2030-bf8ebb2adc86@iogearbox.net>
 <7f048c57-423b-68ba-eede-7e194c1fea4e@arm.com>
 <CAHn8xckNt3smeQPi3dgq5i_3vP7KwU45pnP5OCF8nOV_QEdyMA@mail.gmail.com>
 <7c04eeea-22d3-c265-8e1e-b3f173f2179f@iogearbox.net>
 <705f90c3-b933-8863-2124-3fea7fdbd81a@arm.com>
In-Reply-To: <705f90c3-b933-8863-2124-3fea7fdbd81a@arm.com>
From: Jussi Maki <joamaki@gmail.com>
Date: Thu, 3 Jun 2021 14:32:35 +0200
Message-ID: <CAHn8xc=1g8bzV-uxaJAYpJ114rR7MLzth=4jyDG329ZwEG+kpg@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Mailman-Approved-At: Thu, 03 Jun 2021 13:47:05 +0000
Subject: Re: [Intel-wired-lan] Regression 5.12.0-rc4 net: ice: significant
 throughput drop
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
Cc: jroedel@suse.de, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, hch@lst.de, iommu@lists.linux-foundation.org,
 intel-wired-lan@lists.osuosl.org, suravee.suthikulpanit@amd.com,
 gregkh@linuxfoundation.org, bpf <bpf@vger.kernel.org>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 2, 2021 at 2:49 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >> Thanks for the quick response & patch. I tried it out and indeed it
> >> does solve the issue:
>
> Cool, thanks Jussi. May I infer a Tested-by tag from that?

Of course!

> Given that the race looks to have been pretty theoretical until now, I'm
> not convinced it's worth the bother of digging through the long history
> of default domain and DMA ops movement to figure where it started, much
> less attempt invasive backports. The flush queue change which made it
> apparent only landed in 5.13-rc1, so as long as we can get this in as a
> fix in the current cycle we should be golden - in the meantime, note
> that booting with "iommu.strict=0" should also restore the expected
> behaviour.
>
> FWIW I do still plan to resend the patch "properly" soon (in all honesty
> it wasn't even compile-tested!)

BTW, even with the patch there's quite a bit of spin lock contention
coming from ice_xmit_xdp_ring->dma_map_page_attrs->...->alloc_iova.
CPU load drops from 85% to 20% (~80Mpps, 64b UDP) when iommu is
disabled. Is this type of overhead to be expected?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
