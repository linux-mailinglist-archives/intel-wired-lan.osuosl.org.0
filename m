Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7182560F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 May 2019 18:51:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CF1B868CA;
	Tue, 21 May 2019 16:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sbdRpX7+KsCf; Tue, 21 May 2019 16:51:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42E1886B2B;
	Tue, 21 May 2019 16:51:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 568451BF29D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2019 16:51:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4D9C7868CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2019 16:51:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9oYQYw0A2EjJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 May 2019 16:51:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
 [209.85.166.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 60D8886A72
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2019 16:51:46 +0000 (UTC)
Received: by mail-it1-f196.google.com with SMTP id i63so5785768ita.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2019 09:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FyOEggHwGzPI5qEnDbJv+1Xb8QlwlUcmzeEqPbicyUA=;
 b=u1jKMVRbtJBmfof4As6O7aK/n5DJHoN1RkBbgLPJ12GTHexL3FSA6GqhEQOEr/S+Ei
 f8WYNH3c/dVflKHHGT7VFCxbZ7oncpC1cLiaNcdxq3ye9xdkAzRa6dGP++Uu4yISItUl
 yugJX952CTJiJilOjOTgflgIZ6JX/9kgPVa0VhXBFXonGGAPd8W3PDbw62nqC9kgEE6o
 ky+KOzsretWDUqLJGFjLO22mYHbuct+WMXRb+cTY60GEA9X74bzAV2KO2TrHwtSH2Jdp
 joseLLL1BzBoqal0FoS8rs5d0D5EaOLWZtvwr/yoQAL3SRXpquKcT5qos4aVz5xaYEKA
 oLpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FyOEggHwGzPI5qEnDbJv+1Xb8QlwlUcmzeEqPbicyUA=;
 b=bn62CMLSDlcCtz4WcBOA98sfcLQ7qxdTEGU6CW+neLF6nYv/t8KdlBADtzMRf81Aiu
 TbAGiE0YeTJ9Sg5sfM01sSrXIVID4ysiAuUnMW5uCB7xmgtLM7qz7BoytrdhYE8uxdZz
 7Vlb34lgyfrX5ZDgf7Hki51HhhhPmyrcBVdPPW8DxLBfPl1TZs5GSf1p99C0I7G2CRxg
 bhUov3KojPY3PbVEQVp1Ee2sKDJlS/Y13bIKQiYiXREYNxts1Prrino9J7Q6SVI9DsuT
 Vxo/G3gsJ7PauEhsOYpBVND3Qy6Us2Kvan7IgNFCZV6MEPjqgpm7KqkcNqf3BJUqSqcp
 mQNg==
X-Gm-Message-State: APjAAAX5d5KJQmC/w9Qn/ScnQ69m7X56LbHUF/5c9tXHmtNw0O+6717X
 ph4/1jkIE6T5hAdn0rECwhKS0c21a9oP8k+tcH0=
X-Google-Smtp-Source: APXvYqxamx5g6o4eRosmxSKjsEYvCnrZmu9IaKMISy6htP3zIasonmkK6/+9dhv2dSFq3k0NmtaTGn4dSxPzq1zIlcI=
X-Received: by 2002:a24:d145:: with SMTP id w66mr4482319itg.71.1558457505431; 
 Tue, 21 May 2019 09:51:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190513165547.alkkgcsdelaznw6v@csclub.uwaterloo.ca>
 <CAKgT0Uf_nqZtCnHmC=-oDFz-3PuSM6=30BvJSDiAgzK062OY6w@mail.gmail.com>
 <20190514163443.glfjva3ofqcy7lbg@csclub.uwaterloo.ca>
 <CAKgT0UdPDyCBsShQVwwE5C8fBKkMcfS6_S5m3T7JP-So9fzVgA@mail.gmail.com>
 <20190516183407.qswotwyjwtjqfdqm@csclub.uwaterloo.ca>
 <20190516183705.e4zflbli7oujlbek@csclub.uwaterloo.ca>
 <CAKgT0UfSa-dM2+7xntK9tB7Zw5N8nDd3U1n4OSK0gbWbkNSKJQ@mail.gmail.com>
 <CAKgT0Ucd0s_0F5_nwqXknRngwROyuecUt+4bYzWvp1-2cNSg7g@mail.gmail.com>
 <20190517172317.amopafirjfizlgej@csclub.uwaterloo.ca>
 <CAKgT0UdM28pSTCsaT=TWqmQwCO44NswS0PqFLAzgs9pmn41VeQ@mail.gmail.com>
 <20190521151537.xga4aiq3gjtiif4j@csclub.uwaterloo.ca>
In-Reply-To: <20190521151537.xga4aiq3gjtiif4j@csclub.uwaterloo.ca>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 21 May 2019 09:51:33 -0700
Message-ID: <CAKgT0UfpZ-ve3Hx26gDkb+YTDHvN3=MJ7NZd2NE7ewF5g=kHHw@mail.gmail.com>
To: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
Subject: Re: [Intel-wired-lan] i40e X722 RSS problem with NAT-Traversal
 IPsec packets
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 21, 2019 at 8:15 AM Lennart Sorensen
<lsorense@csclub.uwaterloo.ca> wrote:
>
> On Fri, May 17, 2019 at 03:20:02PM -0700, Alexander Duyck wrote:
> > I was hoping it would work too. It seemed like it should have been the
> > answer since it definitely didn't seem right. Now it has me wondering
> > about some of the other code in the driver.
> >
> > By any chance have you run anything like DPDK on any of the X722
> > interfaces on this system recently? I ask because it occurs to me that
> > if you had and it loaded something like a custom parsing profile it
> > could cause issues similar to this.
>
> I have never used DPDK on anything.  I was hoping never to do so. :)
>
> This system has so far booted Debian (with a 4.19 kernel) and our own OS
> (which has a 4.9 kernel).
>
> > A debugging step you might try would be to revert back to my earlier
> > patch that only displayed the input mask instead of changing it. Once
> > you have done that you could look at doing a full power cycle on the
> > system by either physically disconnecting the power, or using the
> > power switch on the power supply itself if one is available. It is
> > necessary to disconnect the motherboard/NIC from power in order to
> > fully clear the global state stored in the device as it is retained
> > when the system is in standby.
> >
> > What I want to verify is if the input mask that we have ran into is
> > the natural power-on input mask of if that is something that was
> > overridden by something else. The mask change I made should be reset
> > if the system loses power, and then it will either default back to the
> > value with the 6's if that is it's natural state, or it will match
> > what I had if it was not.
> >
> > Other than that I really can't think up too much else. I suppose there
> > is the possibility of the NVM either setting up a DCB setting or
> > HREGION register causing an override that is limiting the queues to 1.
> > However, the likelihood of that should be really low.
>
> Here is the register dump after a full power off:
>
> 40e: Intel(R) Ethernet Connection XL710 Network Driver - version 2.1.7-k
> i40e: Copyright (c) 2013 - 2014 Intel Corporation.
> i40e 0000:3d:00.0: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
> i40e 0000:3d:00.0: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
> i40e 0000:3d:00.0: MAC address: a4:bf:01:4e:0c:87
> i40e 0000:3d:00.0: flow_type: 63 input_mask:0x0000000000004000
> i40e 0000:3d:00.0: flow_type: 46 input_mask:0x0007fff800000000
> i40e 0000:3d:00.0: flow_type: 45 input_mask:0x0007fff800000000
> i40e 0000:3d:00.0: flow_type: 44 input_mask:0x0007ffff80000000
> i40e 0000:3d:00.0: flow_type: 43 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 42 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 41 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 40 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 39 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 36 input_mask:0x0006060000000000
> i40e 0000:3d:00.0: flow_type: 35 input_mask:0x0006060000000000
> i40e 0000:3d:00.0: flow_type: 34 input_mask:0x0006060780000000
> i40e 0000:3d:00.0: flow_type: 33 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 32 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 31 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 30 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 29 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: Features: PF-id[0] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
> i40e 0000:3d:00.1: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
> i40e 0000:3d:00.1: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
> i40e 0000:3d:00.1: MAC address: a4:bf:01:4e:0c:88
> i40e 0000:3d:00.1: flow_type: 63 input_mask:0x0000000000004000
> i40e 0000:3d:00.1: flow_type: 46 input_mask:0x0007fff800000000
> i40e 0000:3d:00.1: flow_type: 45 input_mask:0x0007fff800000000
> i40e 0000:3d:00.1: flow_type: 44 input_mask:0x0007ffff80000000
> i40e 0000:3d:00.1: flow_type: 43 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.1: flow_type: 42 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.1: flow_type: 41 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.1: flow_type: 40 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.1: flow_type: 39 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.1: flow_type: 36 input_mask:0x0006060000000000
> i40e 0000:3d:00.1: flow_type: 35 input_mask:0x0006060000000000
> i40e 0000:3d:00.1: flow_type: 34 input_mask:0x0006060780000000
> i40e 0000:3d:00.1: flow_type: 33 input_mask:0x0006060600000000
> i40e 0000:3d:00.1: flow_type: 32 input_mask:0x0006060600000000
> i40e 0000:3d:00.1: flow_type: 31 input_mask:0x0006060600000000
> i40e 0000:3d:00.1: flow_type: 30 input_mask:0x0006060600000000
> i40e 0000:3d:00.1: flow_type: 29 input_mask:0x0006060600000000
> i40e 0000:3d:00.1: Features: PF-id[1] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
> i40e 0000:3d:00.1 eth2: NIC Link is Up, 1000 Mbps Full Duplex, Flow Control: None
>
> Pretty sure that is identical to before.
>
> If I dump the registers after doing the update I see this (just did a
> reboot this time, not a power cycle):
>
> i40e: Intel(R) Ethernet Connection XL710 Network Driver - version 2.1.7-k
> i40e: Copyright (c) 2013 - 2014 Intel Corporation.
> i40e 0000:3d:00.0: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
> i40e 0000:3d:00.0: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
> i40e 0000:3d:00.0: MAC address: a4:bf:01:4e:0c:87
> i40e 0000:3d:00.0: flow_type: 63 input_mask:0x0000000000004000
> i40e 0000:3d:00.0: flow_type: 46 input_mask:0x0007fff800000000
> i40e 0000:3d:00.0: flow_type: 45 input_mask:0x0007fff800000000
> i40e 0000:3d:00.0: flow_type: 44 input_mask:0x0007ffff80000000
> i40e 0000:3d:00.0: flow_type: 43 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 42 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 41 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 40 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 39 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 36 input_mask:0x0006060000000000
> i40e 0000:3d:00.0: flow_type: 35 input_mask:0x0006060000000000
> i40e 0000:3d:00.0: flow_type: 34 input_mask:0x0006060780000000
> i40e 0000:3d:00.0: flow_type: 33 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 32 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 31 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 30 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 29 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow type: 36 update input mask from:0x0006060000000000, to:0x0001801800000000
> i40e 0000:3d:00.0: flow type: 35 update input mask from:0x0006060000000000, to:0x0001801800000000
> i40e 0000:3d:00.0: flow type: 34 update input mask from:0x0006060780000000, to:0x0001801f80000000
> i40e 0000:3d:00.0: flow type: 33 update input mask from:0x0006060600000000, to:0x0001801e00000000
> i40e 0000:3d:00.0: flow type: 32 update input mask from:0x0006060600000000, to:0x0001801e00000000
> i40e 0000:3d:00.0: flow type: 31 update input mask from:0x0006060600000000, to:0x0001801e00000000
> i40e 0000:3d:00.0: flow type: 30 update input mask from:0x0006060600000000, to:0x0001801e00000000
> i40e 0000:3d:00.0: flow type: 29 update input mask from:0x0006060600000000, to:0x0001801e00000000
> i40e 0000:3d:00.0: flow_type after update: 63 input_mask:0x0000000000004000
> i40e 0000:3d:00.0: flow_type after update: 46 input_mask:0x0007fff800000000
> i40e 0000:3d:00.0: flow_type after update: 45 input_mask:0x0007fff800000000
> i40e 0000:3d:00.0: flow_type after update: 44 input_mask:0x0007ffff80000000
> i40e 0000:3d:00.0: flow_type after update: 43 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type after update: 42 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type after update: 41 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type after update: 40 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type after update: 39 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type after update: 36 input_mask:0x0001801800000000
> i40e 0000:3d:00.0: flow_type after update: 35 input_mask:0x0001801800000000
> i40e 0000:3d:00.0: flow_type after update: 34 input_mask:0x0001801f80000000
> i40e 0000:3d:00.0: flow_type after update: 33 input_mask:0x0001801e00000000
> i40e 0000:3d:00.0: flow_type after update: 32 input_mask:0x0001801e00000000
> i40e 0000:3d:00.0: flow_type after update: 31 input_mask:0x0001801e00000000
> i40e 0000:3d:00.0: flow_type after update: 30 input_mask:0x0001801e00000000
> i40e 0000:3d:00.0: flow_type after update: 29 input_mask:0x0001801e00000000
> i40e 0000:3d:00.0: Features: PF-id[0] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
>
> So at least it appears the update did apply.
>
> --
> Len Sorensen

I think we need to narrow this down a bit more. Let's try forcing the
lookup table all to one value and see if traffic is still going to
queue 0.

Specifically what we need to is run the following command to try and
force all RSS traffic to queue 8, you can verify the result with
"ethtool -x":
ethtool -X <iface> weight 0 0 0 0 0 0 0 0 1

If that works and the IPSec traffic goes to queue 8 then we are likely
looking at some sort of input issue, either in the parsing or the
population of things like the input mask that we can then debug
further.

If traffic still goes to queue 0 then that tells us the output of the
RSS hash and lookup table are being ignored, this would imply either
some other filter is rerouting the traffic or is directing us to limit
the queue index to 0 bits.

Thanks.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
