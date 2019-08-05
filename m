Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 631C382743
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2019 00:02:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EEA992042C;
	Mon,  5 Aug 2019 22:02:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ttulpgnZEy1n; Mon,  5 Aug 2019 22:02:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9550D20445;
	Mon,  5 Aug 2019 22:02:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03B921BF392
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 22:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F420B2042C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 22:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RYENIQoWDsFY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2019 22:02:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 2BD2720107
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2019 22:02:45 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id o101so87566077ota.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Aug 2019 15:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1tYFj8fLEfMucFF88WzuLX+YfDkZb2Hei2792mPapEA=;
 b=dptrY0t5pMgCYUoU0pESnqQ5UM9jOt5iigO6nTkHPQNcBELPmcM/xsv0wr1xloTm3f
 FLqo5NSxho98GOZVrMedryjkRaCi9DiSOle1yJrARAgpZ7pX9GMr58QXu3CrFMdtZgxu
 reEe96SAXlXyL2AxZMrKo68Z3C8W0qtYLPqdCZXjeFuIJTLf+cnsEbwpW2i4TVqFJIok
 UER3EJXGE6Dpi00oHVWRQNLVhXhZdC9ZP4tv8BbKpZQe964U/rMPv8tEkZbX/mYGXINN
 TsS7IuJ/g2hcr0t/ZVnrKxZgPd+60GkxcL2t2TOqCyDwcQVJOa6TgRrL2ZC3EwU9HIlG
 cC4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1tYFj8fLEfMucFF88WzuLX+YfDkZb2Hei2792mPapEA=;
 b=fhmFLTWgRAiAeKA3hKt6bhQrF/3T9diPPI60pQ4qukZ/CDGPJGMo7/dYVaCKOWtZru
 58JmtJUU58ZmIlLev6WDSvXTcbwXtmG/kGKGIvCiz+lmKpND7UN5pBe9ZZyJKQioPAOf
 PfaWs2i4Gtt8uUus9LMb8lc3GCHrkAMbFJoIVMw7hOMRKv5qJE/2TkcZzW6fNnzvwhwW
 7PII3VZ2NRqvJkQe/IuR+emkQPhM6Y2PpNuu7RSv7mrb4jnPWDYFSCcxZ0iqck2LP1S9
 1PeOy9hqLln1EaqtykkrRIq9hFOlVsn2flD4LvVCofsUWJZNWFhJsILDP4Iykxlx0hSx
 uusw==
X-Gm-Message-State: APjAAAW8Mr1MJ6hrlGBOxpneFMel+62lgpksDey+rCK1eSofbi7BRv8j
 VzaDKgvaPKMhUb3Xv7BYKGJavgt6aGVxrzCyyos=
X-Google-Smtp-Source: APXvYqy9X+tohvgSCeqle3zPcWlHn3jIxWB/KLj21S/fW+vvOlI8Ew2GtXL+aBv4RLlPVHZuD7HPl9yYE3D0kWomYbw=
X-Received: by 2002:a6b:5106:: with SMTP id f6mr193333iob.15.1565042564192;
 Mon, 05 Aug 2019 15:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190802105507.16650-1-hslester96@gmail.com>
 <CA+FuTScLs-qJApj5Yw9OOjVk4++HSjn__Vdy+xX2V1rpWU8uLg@mail.gmail.com>
In-Reply-To: <CA+FuTScLs-qJApj5Yw9OOjVk4++HSjn__Vdy+xX2V1rpWU8uLg@mail.gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 5 Aug 2019 15:02:33 -0700
Message-ID: <CAKgT0UdzUChE36pYEj4x72vjMkBhjqWd33_B75FhmaYePSgDUw@mail.gmail.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
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
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 2, 2019 at 6:47 AM Willem de Bruijn
<willemdebruijn.kernel@gmail.com> wrote:
>
> On Fri, Aug 2, 2019 at 6:55 AM Chuhong Yuan <hslester96@gmail.com> wrote:
> >
> > refcount_t is better for reference counters since its
> > implementation can prevent overflows.
> > So convert atomic_t ref counters to refcount_t.
> >
> > Also convert refcount from 0-based to 1-based.
> >
> > This patch depends on PATCH 1/2.
> >
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 6 +++---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.h | 2 +-
> >  2 files changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> > index 00710f43cfd2..d313d00065cd 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> > @@ -773,7 +773,7 @@ int ixgbe_setup_fcoe_ddp_resources(struct ixgbe_adapter *adapter)
> >
> >         fcoe->extra_ddp_buffer = buffer;
> >         fcoe->extra_ddp_buffer_dma = dma;
> > -       atomic_set(&fcoe->refcnt, 0);
> > +       refcount_set(&fcoe->refcnt, 1);
>
> Same point as in the cxgb4 driver patch: how can you just change the
> initial value without modifying the condition for release?
>
> This is not a suggestion to resubmit all these changes again with a
> change to the release condition.

So I am pretty sure this patch is badly broken. It doesn't make any
sense to be resetting with the refcnt in
ixgbe_setup_fcoe_ddp_resources. The value is initialized to zero when
the adapter structure was allocated.

Consider this a NAK from me.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
