Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBFA4CAFA6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:25:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 462B460B62;
	Wed,  2 Mar 2022 20:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8MbBoVvTY5tq; Wed,  2 Mar 2022 20:24:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1585160797;
	Wed,  2 Mar 2022 20:24:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6991F1BF307
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:24:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5669440495
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:24:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Z7_MJyGaOxl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:24:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 13E0D40493
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:24:51 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id v22so3921293ljh.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Mar 2022 12:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nbyevlod5rLp9iV4fqtAIYTPi2L+fJ94O4SZC4V93TQ=;
 b=ShRxfNr0i72pLqQ+y2cddBhYD1NXqUT/XrHE9eSrJYPtsEBUeSMHs2plEeEaiQuXAU
 maAdXJeCuBe1c8ZC5frAhw0hRur+QTlntpmjoKh7H6QHqLsUL8bbD78s3h6O/vKSirBm
 MWuavp5RDfDjg3a63YQVdPuK7+R6klZlWXXcw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nbyevlod5rLp9iV4fqtAIYTPi2L+fJ94O4SZC4V93TQ=;
 b=Q+3fCP3unwtSCdDzWU+TDmhh7x0QVmQwtfQqZHjNkk07SmgZMxO739rl2YOJ2nrP4S
 2fWEP7Q0nPN4tUhs1HnywvUB1XU2LyhxUqSGy54vDiAUrJAdhIEsRqrvhBK+bSRTi4YZ
 NJA/qn5TwTSTFO6K+mk5aebUFYYfDJW0TtDpDAWQayI7Vae4e+AYFo6yfcFOYhqhqGnN
 i6sh2vcDUXDvY19ErfpQRlm1oE+3XlBzKC9+G8OBit63fusRKV5H8OkkzC0UwOYI2TIG
 xgpnrkNxMTbcZEvWme1jiClA5FJnV6JJxBgNRbLMd9ohM9S1ezyAW6Yhgti28yMFxNaL
 KBhw==
X-Gm-Message-State: AOAM533qEPmMo2WUjG+E6uorxgj3UaBef9O2D+LPUkSvHGPFsI0PT1z/
 eyc4h3MGogkxGvj8Op8/lMz1u131VfCgMjS4s1B5MA==
X-Google-Smtp-Source: ABdhPJzXPa/xJ55CPBXKW5dr/3brw9av8EzDbKYKhJlv38wAByZ6pvI2FYv0Zn/8djNOc1tDWzhsUbrGLsCOy1pwKTc=
X-Received: by 2002:a2e:8e98:0:b0:246:3f53:6b0d with SMTP id
 z24-20020a2e8e98000000b002463f536b0dmr21914082ljk.255.1646252689539; Wed, 02
 Mar 2022 12:24:49 -0800 (PST)
MIME-Version: 1.0
References: <DM6PR11MB4657EB65F784C3E816FD27FB9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <DM6PR11MB46572510E594BF3E789AC5CF9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <CALALjgzQPDdNTjCBD+S2Adymk9XTH4qa4Sb6-kBuh96oKg+ajQ@mail.gmail.com>
 <DM6PR11MB4657CBB8B06ACCAB0CE201429B3D9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <CALALjgxJ-=WbWBS0VxxSNWA17L6mMZA7xZa-XBBeOsYy6KujEQ@mail.gmail.com>
 <DM6PR11MB46572379068898154F187F889B029@DM6PR11MB4657.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB46572379068898154F187F889B029@DM6PR11MB4657.namprd11.prod.outlook.com>
From: Joe Damato <jdamato@fastly.com>
Date: Wed, 2 Mar 2022 12:24:38 -0800
Message-ID: <CALALjgyJhZLZALV5w3C-Etus8ZCRzeCBpwYVZgF9VUQptAQMjQ@mail.gmail.com>
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

On Tue, Mar 1, 2022 at 5:58 AM Kubalewski, Arkadiusz
<arkadiusz.kubalewski@intel.com> wrote:
>
> > On Thu, Feb 24, 2022 at 6:28 AM Kubalewski, Arkadiusz
> > <arkadiusz.kubalewski@intel.com> wrote:
> > >
> > > > On Wed, Feb 23, 2022 at 9:56 AM Kubalewski, Arkadiusz
> > > > <arkadiusz.kubalewski@intel.com> wrote:
> > > > >
> > > > > +Joe
> > > > >
> > > > > > Greetings:
> > > > > >
> > > > > > Does i40e (XL710) support TSO with MPLS?
> > > > > >
> > > > > > We are using firmware version: 7.10 0x80006469 1.2527.0
> > > > > >
> > > > > > We've attempted to add support for TSO+MPLS to i40e, but were unable to
> > > > > > get it working. The patch is included below for reference, but it is almost
> > > > > > certainly incorrect - and I am not clear if the hardware itself would
> > > > > > support this even if the patch was correct.
> > > > > >
> > > > > > Applying the patch below and using tcpdump shows that:
> > > > > >
> > > > > >         - packet data, as seen by the pcap filter in the kernel, is large.
> > > > > >           This suggests that the kernel is attempting to offload
> > > > > >           segmentation to the device,
> > > > > >
> > > > > >         but
> > > > > >
> > > > > >         - those large packets are not ACK'd by the client
> > > > > >
> > > > > > This suggests that either:
> > > > > >
> > > > > >         - the device does not support TSO + MPLS, and/or
> > > > > >         - the patch below is incorrect
> > > > > >
> > > > > > Does anyone working on i40e have any insight on this?
> > > > >
> > > > > Hi Joe,
> > > > >
> > > > > I have done some research for your case, good news is that we believe that 710
> > > > > hardware supports it. Currently we do not have plans to implement such feature
> > > > > ourselves, but we will do our best in reviewing if you decide to implement it.
> > > >
> > > > OK, thanks. I appreciate the information and your willingness to
> > > > review. I am pleased to hear that the hardware supports it.
> > > >
> > > > > Such offloads should be supported on packets with up to 2 MPLS tags before the
> > > > > IP header. For start, you might take a look for the features pre check function:
> > > > > static netdev_features_t i40e_features_check(struct sk_buff *skb, ...
> > > > > It probably requires an update after the changes you have posted.
> > > >
> > > > I took a look at i40e_features_check, as you suggested, but I am
> > > > probably missing something.
> > > >
> > > > My understanding is that the call graph on the xmit path is roughly:
> > > >
> > > > __dev_queue_xmit which calls (in order):
> > > > 1. validate_xmit_skb -- this eventually calls i40e_features_check and
> > > > harmonize_features which will use the mpls_features bitfield set in
> > > > the patch to turn on the TSO bit
> > > >
> > > Just saying, worth to check if the required flags are already set when
> > > i40e_features_check was called.
> > >
> > > > 2. dev_hard_start_xmit -- this delivers packets to taps, then to the driver
> > > >
> > > > dev_hard_start_xmit internally hands packets to any taps installed
> > > > (for example pcap), before handing them to the driver
> > > > (i40e_lan_xmit_frame).
> > > >
> > > > In our tests of the patch below, we see that tcpdump reports large
> > > > packet sizes. Since we see them in tcpdump, I think this suggests that
> > > > everything leading up to pcap delivery (including i40e_features_check)
> > > > is correct... otherwise we'd see smaller packet sizes being delivered
> > > > to pcap.
> > > >
> > > > This leads me to believe the issue is somewhere in i40e_lan_xmit_frame
> > > > or below -- most likely in i40e_tso, which my patch attempts to tweak.
> > > >
> > > > Let me know if I'm off track and misunderstanding your analysis, but
> > > > based on the above, I suspect the changes to i40e_tso are buggy.
> > > >
> > >
> > > Seems like your understanding is correct.
> > > Are those packets actually sent to the wire?
> > > Any stats are incremented?
> > > Anything at all shows up on the client?
> >
> > The bytes are never ACK'd by the client and are eventually re-transmit.
> >
> > Based on the tcpdump output I think the packet data makes it to the
> > driver unsegmented (which is what we want), but due to some issue in
> > i40e_tso (or a hardware limitation) the NIC fails to TSO the bytes and
> > they are eventually re-transmit.
> >
>
> I think good place to start would be the 710 datasheet:
> https://cdrdv2.intel.com/v1/dl/getContent/332464?explicitVersion=true
> i.e. 8.4.4.3.2 Transmit Segmentation Flow
> Please verify if your change is following the expected flow,

I think I found the issue.

The original patch only modified i40e_tso, but I needed two more tweaks:

- a similar change is needed in i40e_tx_enable_csum.
- tx_flags need to be tweaked slightly so that the l4 protocol
detection works in i40e_tx_enable_csum.

Tests in my test environment show large MPLS packet TX which are now
ACK'd by the client :)

I will submit this patch to the mailing list now and CC you on it for
a formal review.

I noticed ice probably needs the same change (assuming it supports
mpls+tso), but I don't have any ice hardware to test on. I am happy to
port this change to the ice driver and submit that as well, if you
like, but I'll need to ask the ice folks to test on my behalf.

Let me know if you'd like me to submit to ice, as well.

Thanks,
Joe
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
