Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E8A4C3133
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Feb 2022 17:27:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70836402BB;
	Thu, 24 Feb 2022 16:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s29FWd90heFd; Thu, 24 Feb 2022 16:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 689034025C;
	Thu, 24 Feb 2022 16:27:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F8D91BF41D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 16:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B56340235
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 16:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iubx1o9RwRqF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Feb 2022 16:27:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1076340230
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 16:27:34 +0000 (UTC)
Received: by mail-lj1-x230.google.com with SMTP id r20so3694990ljj.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 08:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qJrF1NYIGomuWj8XltRqXPz1MA+RVyyfOjfOOCXMUcs=;
 b=mMj1GLgOc+auw4lBX5CGMr26wHd9KVVEdGnTvPYtSFPYbCFJdfBd4KLOpo8rh9TTTu
 q5l4LBOpEMANAhilv/WedjnP9VaySovxZWyCZ9M/jA/rHPVBLnTujIBrmDx8h6gF4dSr
 T7J4PJKG2g2+XoXn26JDK4wDJys7OR70zcz24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qJrF1NYIGomuWj8XltRqXPz1MA+RVyyfOjfOOCXMUcs=;
 b=F51dSoK7UN0iDuXOdT8wFmwCgwzixeI7PeMIzJGmgc9ffISdEgVYp+iieAG5+wc2sU
 5YBZCGACK5ApygwH+ygheVQkCFJitzwEyDRpRz9kQAcESd3TDroi2hzjGj6P583a3ogL
 2iysrbKRwqwW74LbT0pF30bDdUqU8WKp3yHAphjVycovxhISecr+/EnyjjxzlAktrimp
 87lPd90uZ60MH0H+HjTWiNWc9VRqLq/qrDi9nAOuSab6k0B30lE+4dbNsV95/AhTdxcg
 x5n7/TSEX84z05cwV46cT7oqjPHf8XH5sWiIPNYpB6AQZ5OMkMW/svlW4R59317RWP0/
 lBfg==
X-Gm-Message-State: AOAM530p7emUKi5CLBVhzzFix4Gfo7aqjHQ6ec78XClzFcpX91knsw/3
 wDcT08TGKMZevWXA5BBxxgmU3dHSBZZULLc8/yfpww==
X-Google-Smtp-Source: ABdhPJwUqs8T0EtsmX+WZ0Plg1ifrukw1qU7q0wn1IuRGQWNcPzv7OmcC+L5hTi1pEDZSzxJhYijArOPEcAcF3Zrlbc=
X-Received: by 2002:a2e:90d6:0:b0:246:e44:bcf6 with SMTP id
 o22-20020a2e90d6000000b002460e44bcf6mr2513526ljg.501.1645720052909; Thu, 24
 Feb 2022 08:27:32 -0800 (PST)
MIME-Version: 1.0
References: <DM6PR11MB4657EB65F784C3E816FD27FB9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <DM6PR11MB46572510E594BF3E789AC5CF9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <CALALjgzQPDdNTjCBD+S2Adymk9XTH4qa4Sb6-kBuh96oKg+ajQ@mail.gmail.com>
 <DM6PR11MB4657CBB8B06ACCAB0CE201429B3D9@DM6PR11MB4657.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB4657CBB8B06ACCAB0CE201429B3D9@DM6PR11MB4657.namprd11.prod.outlook.com>
From: Joe Damato <jdamato@fastly.com>
Date: Thu, 24 Feb 2022 08:27:22 -0800
Message-ID: <CALALjgxJ-=WbWBS0VxxSNWA17L6mMZA7xZa-XBBeOsYy6KujEQ@mail.gmail.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Subject: Re: [Intel-wired-lan] i40e and TSO with MPLS ?
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 24, 2022 at 6:28 AM Kubalewski, Arkadiusz
<arkadiusz.kubalewski@intel.com> wrote:
>
> > On Wed, Feb 23, 2022 at 9:56 AM Kubalewski, Arkadiusz
> > <arkadiusz.kubalewski@intel.com> wrote:
> > >
> > > +Joe
> > >
> > > > Greetings:
> > > >
> > > > Does i40e (XL710) support TSO with MPLS?
> > > >
> > > > We are using firmware version: 7.10 0x80006469 1.2527.0
> > > >
> > > > We've attempted to add support for TSO+MPLS to i40e, but were unable to
> > > > get it working. The patch is included below for reference, but it is almost
> > > > certainly incorrect - and I am not clear if the hardware itself would
> > > > support this even if the patch was correct.
> > > >
> > > > Applying the patch below and using tcpdump shows that:
> > > >
> > > >         - packet data, as seen by the pcap filter in the kernel, is large.
> > > >           This suggests that the kernel is attempting to offload
> > > >           segmentation to the device,
> > > >
> > > >         but
> > > >
> > > >         - those large packets are not ACK'd by the client
> > > >
> > > > This suggests that either:
> > > >
> > > >         - the device does not support TSO + MPLS, and/or
> > > >         - the patch below is incorrect
> > > >
> > > > Does anyone working on i40e have any insight on this?
> > >
> > > Hi Joe,
> > >
> > > I have done some research for your case, good news is that we believe that 710
> > > hardware supports it. Currently we do not have plans to implement such feature
> > > ourselves, but we will do our best in reviewing if you decide to implement it.
> >
> > OK, thanks. I appreciate the information and your willingness to
> > review. I am pleased to hear that the hardware supports it.
> >
> > > Such offloads should be supported on packets with up to 2 MPLS tags before the
> > > IP header. For start, you might take a look for the features pre check function:
> > > static netdev_features_t i40e_features_check(struct sk_buff *skb, ...
> > > It probably requires an update after the changes you have posted.
> >
> > I took a look at i40e_features_check, as you suggested, but I am
> > probably missing something.
> >
> > My understanding is that the call graph on the xmit path is roughly:
> >
> > __dev_queue_xmit which calls (in order):
> > 1. validate_xmit_skb -- this eventually calls i40e_features_check and
> > harmonize_features which will use the mpls_features bitfield set in
> > the patch to turn on the TSO bit
> >
> Just saying, worth to check if the required flags are already set when
> i40e_features_check was called.
>
> > 2. dev_hard_start_xmit -- this delivers packets to taps, then to the driver
> >
> > dev_hard_start_xmit internally hands packets to any taps installed
> > (for example pcap), before handing them to the driver
> > (i40e_lan_xmit_frame).
> >
> > In our tests of the patch below, we see that tcpdump reports large
> > packet sizes. Since we see them in tcpdump, I think this suggests that
> > everything leading up to pcap delivery (including i40e_features_check)
> > is correct... otherwise we'd see smaller packet sizes being delivered
> > to pcap.
> >
> > This leads me to believe the issue is somewhere in i40e_lan_xmit_frame
> > or below -- most likely in i40e_tso, which my patch attempts to tweak.
> >
> > Let me know if I'm off track and misunderstanding your analysis, but
> > based on the above, I suspect the changes to i40e_tso are buggy.
> >
>
> Seems like your understanding is correct.
> Are those packets actually sent to the wire?
> Any stats are incremented?
> Anything at all shows up on the client?

The bytes are never ACK'd by the client and are eventually re-transmit.

Based on the tcpdump output I think the packet data makes it to the
driver unsegmented (which is what we want), but due to some issue in
i40e_tso (or a hardware limitation) the NIC fails to TSO the bytes and
they are eventually re-transmit.

The retransmit shows smaller packets being handed to the pcap tap,
which are then acked by the client.

Thanks,
Joe
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
