Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB7C4C21A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Feb 2022 03:16:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 845F660FC6;
	Thu, 24 Feb 2022 02:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lEM4Yq8nL3H3; Thu, 24 Feb 2022 02:16:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8101B60ABD;
	Thu, 24 Feb 2022 02:16:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 225431BF360
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 02:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A5D74165C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 02:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W_xN2TUSswzq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Feb 2022 02:16:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A11A741630
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 02:16:48 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id o6so870376ljp.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 18:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yBkmJmhCtBaFQvzalpJjWc0X1fgV2l7VqpsjQrH84No=;
 b=d8ervYbchDmDv21KuV+PKhXuvZvJHMczhvnjJkmxuzbrkq3qKIxHHpZxuiJR1flUkV
 RY1FIYVnzAx4YwxTue53Z7dmND2CSclSxOKeQV4Ej3ALZBPclhf++97e8m/8NnZuOaBd
 0f9tC0nZRYslv7qMbpYMOjwq5RTAodZiFwTYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yBkmJmhCtBaFQvzalpJjWc0X1fgV2l7VqpsjQrH84No=;
 b=qsWojvyox3jead1tQuyxlfMudoc9lPaDKMz+w/oP9n6HuBAIDkoXwMKCCSy0FexIxT
 Pcc8DfDGfX1arXyRFoUHsVddiIvWkqVwSlWkF6v8wCIrQn10Ofuf0NkpzV5K/U9g712D
 +9AMzR40XLf4zDr872qHcgwj82uBKvwil0ZZXKwKDZKIi0QW7/cGvbOz5Y0kUBzz5D6P
 JaJCO5ZErp8syO/gaHvfJnOfxqiYaF8/SbU4S8+Yg1v2F6jmMtcrS6uepPm+PNXMk9Vs
 SKz//K9jj4RCfCye3GyXW56D1YaRIJ+kFXgL46r+DlXokIq0sWos2j4URZxrbgUuWH5H
 K/fg==
X-Gm-Message-State: AOAM5313ad74IvJwAxNjgOpQ2ll6jdZVbJnGHbnoQdacg7BVGOlR014B
 E8E8yTvhvBGqtLjSxEKPpkiAIpZwt52N2lK8H8Fonw==
X-Google-Smtp-Source: ABdhPJy5kRUCnX+6u86Hg/f3VXt+ZN8yQ66TPJcFhD/p/YaHX8RZONkKJ3PpgC74i2Ztlv3EJTA7rSVlTYjvKQNhpjI=
X-Received: by 2002:a2e:3004:0:b0:223:c126:5d1a with SMTP id
 w4-20020a2e3004000000b00223c1265d1amr369659ljw.408.1645669006521; Wed, 23 Feb
 2022 18:16:46 -0800 (PST)
MIME-Version: 1.0
References: <DM6PR11MB4657EB65F784C3E816FD27FB9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <DM6PR11MB46572510E594BF3E789AC5CF9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB46572510E594BF3E789AC5CF9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
From: Joe Damato <jdamato@fastly.com>
Date: Wed, 23 Feb 2022 18:16:35 -0800
Message-ID: <CALALjgzQPDdNTjCBD+S2Adymk9XTH4qa4Sb6-kBuh96oKg+ajQ@mail.gmail.com>
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

On Wed, Feb 23, 2022 at 9:56 AM Kubalewski, Arkadiusz
<arkadiusz.kubalewski@intel.com> wrote:
>
> +Joe
>
> > Greetings:
> >
> > Does i40e (XL710) support TSO with MPLS?
> >
> > We are using firmware version: 7.10 0x80006469 1.2527.0
> >
> > We've attempted to add support for TSO+MPLS to i40e, but were unable to
> > get it working. The patch is included below for reference, but it is almost
> > certainly incorrect - and I am not clear if the hardware itself would
> > support this even if the patch was correct.
> >
> > Applying the patch below and using tcpdump shows that:
> >
> >         - packet data, as seen by the pcap filter in the kernel, is large.
> >           This suggests that the kernel is attempting to offload
> >           segmentation to the device,
> >
> >         but
> >
> >         - those large packets are not ACK'd by the client
> >
> > This suggests that either:
> >
> >         - the device does not support TSO + MPLS, and/or
> >         - the patch below is incorrect
> >
> > Does anyone working on i40e have any insight on this?
>
> Hi Joe,
>
> I have done some research for your case, good news is that we believe that 710
> hardware supports it. Currently we do not have plans to implement such feature
> ourselves, but we will do our best in reviewing if you decide to implement it.

OK, thanks. I appreciate the information and your willingness to
review. I am pleased to hear that the hardware supports it.

> Such offloads should be supported on packets with up to 2 MPLS tags before the
> IP header. For start, you might take a look for the features pre check function:
> static netdev_features_t i40e_features_check(struct sk_buff *skb, ...
> It probably requires an update after the changes you have posted.

I took a look at i40e_features_check, as you suggested, but I am
probably missing something.

My understanding is that the call graph on the xmit path is roughly:

__dev_queue_xmit which calls (in order):
1. validate_xmit_skb -- this eventually calls i40e_features_check and
harmonize_features which will use the mpls_features bitfield set in
the patch to turn on the TSO bit

2. dev_hard_start_xmit -- this delivers packets to taps, then to the driver

dev_hard_start_xmit internally hands packets to any taps installed
(for example pcap), before handing them to the driver
(i40e_lan_xmit_frame).

In our tests of the patch below, we see that tcpdump reports large
packet sizes. Since we see them in tcpdump, I think this suggests that
everything leading up to pcap delivery (including i40e_features_check)
is correct... otherwise we'd see smaller packet sizes being delivered
to pcap.

This leads me to believe the issue is somewhere in i40e_lan_xmit_frame
or below -- most likely in i40e_tso, which my patch attempts to tweak.

Let me know if I'm off track and misunderstanding your analysis, but
based on the above, I suspect the changes to i40e_tso are buggy.

Thanks,
Joe
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
