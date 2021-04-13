Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A89B835E13D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 16:19:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46D9560BEE;
	Tue, 13 Apr 2021 14:19:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RArTJbhb3BFC; Tue, 13 Apr 2021 14:19:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1422960BAA;
	Tue, 13 Apr 2021 14:19:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA63D1BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 02:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A392040536
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 02:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cx470zKGnIpH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 02:17:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A99D40520
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 02:17:36 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id
 w31-20020a9d36220000b02901f2cbfc9743so14737965otb.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 19:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fSxsn65EUsOh+O13K1SDdQjwp4rSXw4cGvQZYhLTy4w=;
 b=UjhlUpEhCdk8GnfT/iFiLz0vCdgDf+MjXL8Tyd2IAmTDHUc8vHS2F3WZ2cVlSUOYHc
 LESa9Id11SXNBaS/JSkO/nM+n74ekN7S6CRLqmJLnd7FM2LRbbrb10+2LUUN9iqgTRIv
 ehUk+3/Oh22Gyhe1caE0cxSaqb8IMqiysqT81YgxTvOsEFAnWLi3ra+vxjlDktep+XyX
 mNiIwOM7YfFTaYhGokJovHc62i5B9FhisuioWuQrwUCI4N4lHooSNmZippkRTUPtzbdg
 vu8EhTm9LkWBLcDGUlk6Z9p/QpzpCZLDWKjfr9BZztvvdH1FtXdiBv78035SVAGdOi88
 QtqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fSxsn65EUsOh+O13K1SDdQjwp4rSXw4cGvQZYhLTy4w=;
 b=ZlUwBAAIr5zlpG5wuEQwTlRJIPhEu4zart9yytKtlgl2oA8Yn7q8ZQwXm60k6V75jp
 zW0l8IA06abgb+3+o+yDFy/YAyOBz8TGslyjJfpSdVPPJgFjm3tJdk/Gz19pUsm6hU6s
 NI5njHArQXI5rJZol7DMnIggn8wvt9AaMKeESa5qEYM0EzxCyecjpE5/mmyNWYr1EFR6
 qgcJvTZnNpEYidyF69bicK8rg8rSthYOx6ekkUdjtIDleOFvGZyKpy3ELcTuTphZKh48
 xiuupJG0sUAkytifKUsI+flBeaGvZVbFPq14UACVjFjCTgxsn+4F2F9H5p4KWg/CTbxD
 Me+g==
X-Gm-Message-State: AOAM533Y4tN4S7UO9b9cm+n7aMIxB3R0w/HoNqDvXRmFAaBzuc6CipDQ
 3WnZ1qHUCZxu4p4mHxruj6YykEebvb58rgtrtGc=
X-Google-Smtp-Source: ABdhPJx2SV6Eb4LfwNCWO6ws/iWrTQgLal8zMyEu58hWic1n8h9aO4mro0Kl/nTW7U6wxMcIhJpqXVMh2kHHsMg+lhI=
X-Received: by 2002:a05:6830:802:: with SMTP id
 r2mr25324193ots.110.1618280255731; 
 Mon, 12 Apr 2021 19:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210412065759.2907-1-kerneljasonxing@gmail.com>
 <20210412145229.00003e5d@intel.com>
In-Reply-To: <20210412145229.00003e5d@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Tue, 13 Apr 2021 10:17:00 +0800
Message-ID: <CAL+tcoCJZBbkszE68xLRSrtfByZ3Epg7u40e2YftccUDi4034Q@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Tue, 13 Apr 2021 14:18:41 +0000
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix the panic when running bpf
 in xdpdrv mode
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

On Tue, Apr 13, 2021 at 5:52 AM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> kerneljasonxing@gmail.com wrote:
>
> > From: Jason Xing <xingwanli@kuaishou.com>
> >
> > Re: [PATCH] i40e: fix the panic when running bpf in xdpdrv mode
>
> Please use netdev style subject lines when patching net kernel to
> indicate which kernel tree this is targeted at, "net" or "net-next"
> [PATCH net v2] i40e: ...
>
> > Fix this by add more rules to calculate the value of @rss_size_max which
>
> Fix this panic by adding ...
>
> > could be used in allocating the queues when bpf is loaded, which, however,
> > could cause the failure and then triger the NULL pointer of vsi->rx_rings.
>
> trigger
>
> > Prio to this fix, the machine doesn't care about how many cpus are online
> > and then allocates 256 queues on the machine with 32 cpus online
> > actually.
> >
> > Once the load of bpf begins, the log will go like this "failed to get
> > tracking for 256 queues for VSI 0 err -12" and this "setup of MAIN VSI
> > failed".
> >
> > Thus, I attach the key information of the crash-log here.
> >
> > BUG: unable to handle kernel NULL pointer dereference at
> > 0000000000000000
> > RIP: 0010:i40e_xdp+0xdd/0x1b0 [i40e]
> > Call Trace:
> > [2160294.717292]  ? i40e_reconfig_rss_queues+0x170/0x170 [i40e]
> > [2160294.717666]  dev_xdp_install+0x4f/0x70
> > [2160294.718036]  dev_change_xdp_fd+0x11f/0x230
> > [2160294.718380]  ? dev_disable_lro+0xe0/0xe0
> > [2160294.718705]  do_setlink+0xac7/0xe70
> > [2160294.719035]  ? __nla_parse+0xed/0x120
> > [2160294.719365]  rtnl_newlink+0x73b/0x860
> >
> > Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> > Signed-off-by: Shujin Li <lishujin@kuaishou.com>
>
> if you send to "net" - I suspect you should supply a Fixes: line, above
> the sign-offs.
> In this case however, this bug has been here since the beginning of the
> driver, but the patch will easily apply, so please supply
>
> Fixes: 41c445ff0f48 ("i40e: main driver core")
>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 521ea9d..4e9a247 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -11867,6 +11867,7 @@ static int i40e_sw_init(struct i40e_pf *pf)
> >  {
> >       int err = 0;
> >       int size;
> > +     u16 pow;
> >
> >       /* Set default capability flags */
> >       pf->flags = I40E_FLAG_RX_CSUM_ENABLED |
> > @@ -11885,6 +11886,11 @@ static int i40e_sw_init(struct i40e_pf *pf)
> >       pf->rss_table_size = pf->hw.func_caps.rss_table_size;
> >       pf->rss_size_max = min_t(int, pf->rss_size_max,
> >                                pf->hw.func_caps.num_tx_qp);
> > +
> > +     /* find the next higher power-of-2 of num cpus */
> > +     pow = roundup_pow_of_two(num_online_cpus());
> > +     pf->rss_size_max = min_t(int, pf->rss_size_max, pow);
> > +
>
> The fix itself is fine, and is correct as far as I can tell, thank you
> for sending the patch!
>

Thanks for your advice. I'm going to send the patch v2 :)

Jason

> >       if (pf->hw.func_caps.rss) {
> >               pf->flags |= I40E_FLAG_RSS_ENABLED;
> >               pf->alloc_rss_size = min_t(int, pf->rss_size_max,
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
