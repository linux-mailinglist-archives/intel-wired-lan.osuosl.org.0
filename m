Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 798453D5A6A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jul 2021 15:35:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09CFB607AE;
	Mon, 26 Jul 2021 13:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1q6udLu1O69E; Mon, 26 Jul 2021 13:35:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0CFB605E0;
	Mon, 26 Jul 2021 13:35:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D3861BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jul 2021 02:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4621A60789
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jul 2021 02:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UxR_FnlH-fpF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jul 2021 02:42:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com
 [IPv6:2607:f8b0:4864:20::229])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6456E60769
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jul 2021 02:42:27 +0000 (UTC)
Received: by mail-oi1-x229.google.com with SMTP id u10so9356962oiw.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jul 2021 19:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ztv+vaeNFDWFSj27feVlmDxlPGi8rjcvHx09kepNWQs=;
 b=WX1kg+xop5RCpBXFHd/MVWMNkNc+JntZGtx7xxx3BuRz+d/ZonJmvNi9ee9zyoNTbh
 5B0KmFuoTXUs8bEptPWWgX1XV+YQJKj3MSAzmC4blje54QNe5jekUzFCXiCg9eG3vLpP
 5VzoOnhTQva9WZsM2qbi5NBmAF/zBUcT35aT+aBuaxbLy0cPzFTH0JMJhSto2UtrU/Kf
 YHy2jowYkjnTfU00IfyiB/0X2t/D1cbrh3ym/bLs0YUpTHZgh9puiyGW6SwpA2sDMFhG
 FS1mUyY7l9bMBSB9Br+ssqoE4G++o3TxOV7eUqN2/gPStPAg42tr3oHmPkM/MpK0TzLl
 sOhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ztv+vaeNFDWFSj27feVlmDxlPGi8rjcvHx09kepNWQs=;
 b=mHtSwHDyIlTn9+Np8XiuFcjSyy5AJHLXPmABYJm2lZhazdDuAtSxDTp+Jq5Jt9XM7G
 7AmXka/A6PnJc7CAULwwCsM6zhZI5StmUojQllnwnp7jtQMlV15OeVZBj+ndCR1qIfjF
 kZa2h2UTNsBEsMXei5A5M9BkGdMUUOV2t76a323FKaizJyVVfq0EfarX75jwCt8vqxOe
 eXZLX6xqnCFippiekT3jsulD+JXwRFL73htkKneUM0EEqBQEzTkgCuhfkSXFRJLWNkc1
 GTfI9TktT9YvFrBxOkgAi8WcY1SGiOieXl6wuLVrrEbSQWfpfadu00U8cv5uWRCxLOwG
 YQ7A==
X-Gm-Message-State: AOAM533/hgfynCCqcU/y+yuQjN6+qJhasVB49MPuMXVBgNir1HU9/pZO
 X+XQ4bflIVjT3t7A5lnrS8Ft2hdtYkfmxV5h1Gg=
X-Google-Smtp-Source: ABdhPJx3Uz5w/BUgxXpHkxpDqtXzcSycOHCp0aEZKLiuQYVgvi8noh6Sprs5LzJYrgAJAlHZsku6YdvzSBwZZul3yRE=
X-Received: by 2002:aca:da02:: with SMTP id r2mr9376423oig.141.1627267346487; 
 Sun, 25 Jul 2021 19:42:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210707094133.24597-1-kerneljasonxing@gmail.com>
 <CAL+tcoCc+r96Bv8aDXTwY5h_OYTz8sHxdpPW7OuNfdDz+ssYYg@mail.gmail.com>
 <03b846e9906d27ef7a6e84196a0840fdd54ca13d.camel@intel.com>
 <CAL+tcoAtFTmFtKR2QLY_UdQWkc9Avyw3ZtaA_cD_4cXAGXRBDQ@mail.gmail.com>
In-Reply-To: <CAL+tcoAtFTmFtKR2QLY_UdQWkc9Avyw3ZtaA_cD_4cXAGXRBDQ@mail.gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Mon, 26 Jul 2021 10:41:50 +0800
Message-ID: <CAL+tcoBk=s_QZv08wetLG8jeUCX-ECddOWeOgeLnPB_X41juvw@mail.gmail.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
X-Mailman-Approved-At: Mon, 26 Jul 2021 13:35:41 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: introduce pseudo number of
 cpus for compatibility
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
Cc: "songliubraving@fb.com" <songliubraving@fb.com>,
 "lishujin@kuaishou.com" <lishujin@kuaishou.com>,
 "ast@kernel.org" <ast@kernel.org>, "hawk@kernel.org" <hawk@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "andrii@kernel.org" <andrii@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "yhs@fb.com" <yhs@fb.com>, "kpsingh@kernel.org" <kpsingh@kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "kafai@fb.com" <kafai@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "xingwanli@kuaishou.com" <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Anthony L,

Do you have any progress or any idea on the final patch? Or you could
point out some more detailed method to rework the calculation of the
queue pile.

I think it's critical and has an impact on all the old nics, which
means thousands of machines would crash if xdp-drv program is loaded.

Thanks,
Jason

On Thu, Jul 15, 2021 at 10:33 AM Jason Xing <kerneljasonxing@gmail.com> wrote:
>
> On Thu, Jul 15, 2021 at 4:52 AM Nguyen, Anthony L
> <anthony.l.nguyen@intel.com> wrote:
> >
> > On Fri, 2021-07-09 at 15:13 +0800, Jason Xing wrote:
> > > Oh, one more thing I missed in the last email is that all the
> > > failures
> > > are happening on the combination of X722 10GbE and 1GbE. So the value
> > > of @num_tx_qp  the driver fetches is 384 while the value is 768
> > > without x722 1GbE.
> > >
> > > I get that information back here:
> > > $ lspci | grep -i ether
> > > 5a:00.0 Ethernet controller: Intel Corporation Ethernet Connection
> > > X722 for 10GbE SFP+ (rev 09)
> > > 5a:00.1 Ethernet controller: Intel Corporation Ethernet Connection
> > > X722 for 10GbE SFP+ (rev 09)
> > > 5a:00.2 Ethernet controller: Intel Corporation Ethernet Connection
> > > X722 for 1GbE (rev 09)
> > > 5a:00.3 Ethernet controller: Intel Corporation Ethernet Connection
> > > X722 for 1GbE (rev 09)
> > >
> > > I know it's really stupid to control the number of online cpus, but
> > > finding a good way only to limit the @alloc_queue_pairs is not easy
> > > to
> > > go. So could someone point out a better way to fix this issue and
> > > take
> > > care of some relatively old nics with the number of cpus increasing?
> >
> > Hi Jason,
> >
> > Sorry for the slow response; I was trying to talk to the i40e team
> > about this.
>
> Thanks for your kind help really. It indeed has a big impact on thousands
> of machines.
>
> >
> > I agree, the limiting of number of online CPUs doesn't seem like a
> > solution we want to pursue. The team is working on a patch that deals
>
> As I said above, if the machine is equipped with only 10GbE nic, the maximum
> online cpus would be 256 and so on. For now, it depends on the num of cpus.
>
> > with the same, or similiar, issue; it is reworking the allocations of
> > the queue pile. I'll make sure that they add you on the patch when it
>
> It's not easy to cover all kinds of cases. But I still believe it's
> the only proper
> way to fix the issue. Looking forward to your patch :)
>
> > is sent so that you can try this and see if it resolves your issue.
> >
>
> Yeah, sure, I will double-check and then see if it's really fixed.
>
> Thanks,
> Jason
>
> > Thanks,
> > Tony
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
