Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 806A3360B9F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 16:17:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D559460DDE;
	Thu, 15 Apr 2021 14:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k9m5xJpkgPES; Thu, 15 Apr 2021 14:17:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E477A60D9B;
	Thu, 15 Apr 2021 14:17:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F3C71BF410
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 05:17:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 221AF8469B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 05:17:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g3SRLGHOG6i8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 05:16:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com
 [IPv6:2607:f8b0:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED5AE84698
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 05:16:58 +0000 (UTC)
Received: by mail-ot1-x331.google.com with SMTP id
 c8-20020a9d78480000b0290289e9d1b7bcso7450189otm.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 22:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gxcWeNrjFCcTeKjmbsNotnTpQRzTFqaqt9nFjPnqCjA=;
 b=HljV85rUzclS3NeavfN9xrwN4+8P6rsi8WPxVPCCn/SY3DA5zrJdR8DMeDEE7ZVYXj
 LjjHl0bchiENqHDYTxH/bLMsUvi9EArsWd7nf+M2+hvl1R8kLI5Gq0KBeFVsBfMkEv1D
 1eSc0qUul43wNnzZGC/Wnln4xkgoFvzlmxPUqK6fUnvKLYZ3duz7eRMy4/eaMNS5fuVv
 LZ3+mtoU/buaKhxgwgXqRjusMeRmB/b3GGtb4zGjiDpuk9JjBCBEc0+r9KIzF8s73vyh
 MgDFUN56sRJtjh0PEYN8KcIief60O2GIffJ6zeQ1IovVj1tRHtDqr+KZwYnPimzbPE3K
 ratw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gxcWeNrjFCcTeKjmbsNotnTpQRzTFqaqt9nFjPnqCjA=;
 b=kWV4ESefS5JhAqXmioi2PGLJtkXdSrcc7U0jcTvOYznVS4tGRHMmIM5HXS3fiPnobx
 La728+GKY9rNcxC1583w8hQv/m9VdQxf8+ArHUffCirLnUZgDhIfvMOKlhFsRjFb/a+n
 FzOeu5TvR2lf6Yr5x9XBJm5Tp5TBWPHXdLu9Am+BAabTvQ8GuUcvVgxJ9XmOML5jFvRb
 qunUEgRm4h3gNMx3C5ppsTkSb6/HgbSJM4PMviqQobjdJyMXSwpQbmPGW30f1EVYysTz
 jfvilECwTuSbev+dx7ZAGjsCjnoa5/lS8T5jXJEz4jMpM1N5hdrpyoisg3Vzc7v38w8Y
 Zcig==
X-Gm-Message-State: AOAM531RNDNmwZl5QN8ILuv/OFLbeJA3TbW9paWqRkqCSOojBBfdRzcw
 YniOz6oqSW4du0qW2N7yNq8HCszwyz4gWYETqBQ=
X-Google-Smtp-Source: ABdhPJyKx6RobEXsCC6040Be2jAITs+SqWUI/vu+hz87uwHTi9bm17mC42YqhPaktVI0VUQF/gqkIxzaWMv6XlFwDDI=
X-Received: by 2002:a9d:1c7:: with SMTP id e65mr1304632ote.105.1618463818159; 
 Wed, 14 Apr 2021 22:16:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210412065759.2907-1-kerneljasonxing@gmail.com>
 <20210413025011.1251-1-kerneljasonxing@gmail.com>
 <20210413091812.0000383d@intel.com>
 <CAL+tcoBVhD1SfMYAFVn0HxZ3ig88pxtiLoha9d6Z+62yq8bWBA@mail.gmail.com>
 <20210414190837.0000085a@intel.com>
In-Reply-To: <20210414190837.0000085a@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Thu, 15 Apr 2021 13:16:22 +0800
Message-ID: <CAL+tcoAfVCJMgeVFnyHaZhEEJRiWEYc5hm5c0GOKwg2BDiVtYA@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Thu, 15 Apr 2021 14:16:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix the panic when
 running bpf in xdpdrv mode
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
Cc: songliubraving@fb.com, kafai@fb.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev <netdev@vger.kernel.org>, ast@kernel.org, andrii@kernel.org,
 Shujin Li <lishujin@kuaishou.com>, yhs@fb.com, kpsingh@kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>,
 Jason Xing <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 15, 2021 at 10:08 AM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> Jason Xing wrote:
>
> > On Wed, Apr 14, 2021 at 12:27 AM Jesse Brandeburg
> > <jesse.brandeburg@intel.com> wrote:
> > >
> > > kerneljasonxing@gmail.com wrote:
> > >
> > > > From: Jason Xing <xingwanli@kuaishou.com>
> > >
> > > Hi Jason,
> > >
> > > Sorry, I missed this on the first time: Added intel-wired-lan,
> > > please include on any future submissions for Intel drivers.
> > > get-maintainers script might help here?
> > >
> >
> > Probably I got this wrong in the last email. Did you mean that I should add
> > intel-wired-lan in the title not the cc list? It seems I should put
> > this together on
> > the next submission like this:
> >
> > [Intel-wired-lan] [PATCH net v4]
>
> Your v3 submittal was correct. My intent was to make sure
> intel-wired-lan was in CC:
>

Well, I get to know more about the whole thing.

> If Kuba or Dave wants us to take the fix in via intel-wired-lan trees,
> then we can do that, or they can apply it directly. I'll ack it on the
> v3.

Thanks, Jesse:)

Jason

>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
