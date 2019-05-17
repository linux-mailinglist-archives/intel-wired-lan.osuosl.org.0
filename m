Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 802882202F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2019 00:20:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 213C686A32;
	Fri, 17 May 2019 22:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dk5_W0648KiT; Fri, 17 May 2019 22:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D959986AE3;
	Fri, 17 May 2019 22:20:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C1041BF318
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0E72A86A2B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CZNfy9wLODvt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 22:20:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com
 [209.85.166.179])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA8E5869BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:20:14 +0000 (UTC)
Received: by mail-it1-f179.google.com with SMTP id q65so14378459itg.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 15:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wj0pD51ojgB5zVKiIq4Es3I5B8O4yozAvKeClJ57Lic=;
 b=OV3qTZHWTA7Svs9DXhVorI3K9ivGPAgm8NeczpZfM3McIt3WOC0zvYyIV5UF6Dl2wb
 NF068qvC+MUkCFrY8C7i/5bEL6nbXSdBaZMF3HOzVx2VEx6Rd+KX9X9WxC3aXwVei1U2
 QovDihWeJRsI6/ghHjVatOJXwrvn1GVuXtbyL3uCJUL91h0/r07CNGOsPlvP0aC2ppYg
 G240Vw1KTD6wVlKHCIo0oWCsDHHoc8NyAT8xGCpqiZXPiPh8nlZyn0I4eEHeRgtMH+DQ
 val/OZAlzwYoCgMLyMh/2mGJFzkmagSWFlIoWc3CITUbGRD2IShP7tKVXC3P1fvaN+Na
 GvsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wj0pD51ojgB5zVKiIq4Es3I5B8O4yozAvKeClJ57Lic=;
 b=KCJVbFDBiBcYaoyGNgr2RRb67vxJ6q3ri1yHuvi/XWnHw7hi1dt/1zJU47x7q6hn4s
 H2gHfXkPSD/KXMZZ15kmu2H2WLwB/ZSozHuZlhgVVUQcbqSDdjmhXc26E2HryzB5Z3yS
 Pj0a3MuYnXiTQ1Eu3dYFaaEyrzNNFP2LedxXlHQlESHp6nUgeoZXLk+LHYXjLy1sLF1h
 LbOuQ5qXLyVCa3aKYdBRfsaff2Vj8NMegh5hnZt5enNe4KkQlfkfeU+luwhUl6bXRBi1
 80ud7fArDEMvp0BK8OVYzVSpgEpLgr2WP5gtCXq9D5l/KO/EsuboqUfxSKA9OMUU3NL3
 bFlw==
X-Gm-Message-State: APjAAAUi/mPzaXZDmgLO9U0SfYt+4fr2wxSy2oF8TrJ8aVO8Hq7SmoQi
 y1YyJRk0VaDlHqOjRqgQR+UXhosBVp3Gdix12hU=
X-Google-Smtp-Source: APXvYqzdiUl1n0BS7rw5BYLSIIDeslgMl7J0ljwWyt9VIVdxHw+yq2Y+DCOWbQnsASDGm4sYISAToRlqjN7Fp/11Kz8=
X-Received: by 2002:a02:1049:: with SMTP id 70mr36520228jay.114.1558131613863; 
 Fri, 17 May 2019 15:20:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAKgT0UcV2wCr6iUYktZ+Bju_GNpXKzR=M+NLfKhUsw4bsJSiyA@mail.gmail.com>
 <20190503205935.bg45rsso5jjj3gnx@csclub.uwaterloo.ca>
 <20190513165547.alkkgcsdelaznw6v@csclub.uwaterloo.ca>
 <CAKgT0Uf_nqZtCnHmC=-oDFz-3PuSM6=30BvJSDiAgzK062OY6w@mail.gmail.com>
 <20190514163443.glfjva3ofqcy7lbg@csclub.uwaterloo.ca>
 <CAKgT0UdPDyCBsShQVwwE5C8fBKkMcfS6_S5m3T7JP-So9fzVgA@mail.gmail.com>
 <20190516183407.qswotwyjwtjqfdqm@csclub.uwaterloo.ca>
 <20190516183705.e4zflbli7oujlbek@csclub.uwaterloo.ca>
 <CAKgT0UfSa-dM2+7xntK9tB7Zw5N8nDd3U1n4OSK0gbWbkNSKJQ@mail.gmail.com>
 <CAKgT0Ucd0s_0F5_nwqXknRngwROyuecUt+4bYzWvp1-2cNSg7g@mail.gmail.com>
 <20190517172317.amopafirjfizlgej@csclub.uwaterloo.ca>
In-Reply-To: <20190517172317.amopafirjfizlgej@csclub.uwaterloo.ca>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 17 May 2019 15:20:02 -0700
Message-ID: <CAKgT0UdM28pSTCsaT=TWqmQwCO44NswS0PqFLAzgs9pmn41VeQ@mail.gmail.com>
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

On Fri, May 17, 2019 at 10:23 AM Lennart Sorensen
<lsorense@csclub.uwaterloo.ca> wrote:
> OK I applied that and see this:
>
> i40e: Intel(R) Ethernet Connection XL710 Network Driver - version 2.1.7-k
> i40e: Copyright (c) 2013 - 2014 Intel Corporation.
> i40e 0000:3d:00.0: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
> i40e 0000:3d:00.0: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
> i40e 0000:3d:00.0: MAC address: a4:bf:01:4e:0c:87
> i40e 0000:3d:00.0: flow type: 36 update input mask from:0x0006060000000000, to:0x0001801800000000
> i40e 0000:3d:00.0: flow type: 35 update input mask from:0x0006060000000000, to:0x0001801800000000
> i40e 0000:3d:00.0: flow type: 34 update input mask from:0x0006060780000000, to:0x0001801f80000000
> i40e 0000:3d:00.0: flow type: 33 update input mask from:0x0006060600000000, to:0x0001801e00000000
> i40e 0000:3d:00.0: flow type: 32 update input mask from:0x0006060600000000, to:0x0001801e00000000
> i40e 0000:3d:00.0: flow type: 31 update input mask from:0x0006060600000000, to:0x0001801e00000000
> i40e 0000:3d:00.0: flow type: 30 update input mask from:0x0006060600000000, to:0x0001801e00000000
> i40e 0000:3d:00.0: flow type: 29 update input mask from:0x0006060600000000, to:0x0001801e00000000
> i40e 0000:3d:00.0: Features: PF-id[0] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
> i40e 0000:3d:00.1: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
> i40e 0000:3d:00.1: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
> i40e 0000:3d:00.1: MAC address: a4:bf:01:4e:0c:88
> i40e 0000:3d:00.1: Features: PF-id[1] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
> i40e 0000:3d:00.1 eth2: NIC Link is Up, 1000 Mbps Full Duplex, Flow Control: None
>
> Unfortunately (much to my disappointment, I hoped it would work) I see
> no change in behaviour.
>
> --
> Len Sorensen

I was hoping it would work too. It seemed like it should have been the
answer since it definitely didn't seem right. Now it has me wondering
about some of the other code in the driver.

By any chance have you run anything like DPDK on any of the X722
interfaces on this system recently? I ask because it occurs to me that
if you had and it loaded something like a custom parsing profile it
could cause issues similar to this.

A debugging step you might try would be to revert back to my earlier
patch that only displayed the input mask instead of changing it. Once
you have done that you could look at doing a full power cycle on the
system by either physically disconnecting the power, or using the
power switch on the power supply itself if one is available. It is
necessary to disconnect the motherboard/NIC from power in order to
fully clear the global state stored in the device as it is retained
when the system is in standby.

What I want to verify is if the input mask that we have ran into is
the natural power-on input mask of if that is something that was
overridden by something else. The mask change I made should be reset
if the system loses power, and then it will either default back to the
value with the 6's if that is it's natural state, or it will match
what I had if it was not.

Other than that I really can't think up too much else. I suppose there
is the possibility of the NVM either setting up a DCB setting or
HREGION register causing an override that is limiting the queues to 1.
However, the likelihood of that should be really low.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
