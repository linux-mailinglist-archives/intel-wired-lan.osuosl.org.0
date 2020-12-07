Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D342D11EB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 14:28:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08A068781F;
	Mon,  7 Dec 2020 13:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ndZwIMs5h7Iu; Mon,  7 Dec 2020 13:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C99CA8783A;
	Mon,  7 Dec 2020 13:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B65211BF408
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 13:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A5A182E1F3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 13:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s48J3J-ocD8e for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 13:28:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 6A0042E1E1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 13:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607347687;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zmWE4Di/SrsoSOSW6qXuYa1KIu/jIAKq7DifFwoMfwo=;
 b=jRXrn7CzyHYB4rYN7cyWuY8mL4Ehw0D7nnpZFNK5HSTO28hdMB+2ZnlKsxKAJZKhtHrq9x
 txmdFwaqIjP+Mga3M1A1Ly1ZVGo1YYKzfDtLWJUshuthrd2k4wMNB1Ei+LXfme1fXgsAoM
 eGjPwXA41RysXmG8fRHjoMOGJRxSF0M=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-362-A9DT3AYYNU2HG6qqrc3lqg-1; Mon, 07 Dec 2020 08:28:03 -0500
X-MC-Unique: A9DT3AYYNU2HG6qqrc3lqg-1
Received: by mail-ej1-f69.google.com with SMTP id 3so3136465ejw.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Dec 2020 05:28:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zmWE4Di/SrsoSOSW6qXuYa1KIu/jIAKq7DifFwoMfwo=;
 b=AHA2D/Oke1UxcNjdMvrE6nMAuMhmYC0B80FNxjs/b51LVqkCrRh4m/ui9je++gbSNs
 AsGBVYsPh2PLKJP9W63hprtb0eAhDCwIwqKjs5uygi89hh2KatI1MPkcZFxpxBV2Qz/2
 MuwKz/bryDPAJq9Z1+7yKXIFo2t/pQdFjtLBWDOAD8J247Dk5Seq3f7YvN/Q384b1Q5e
 0v6wt5rF9KzWrn5Lq047Hm6vR9KKgkt/oygiZkytEjpQeuyishLOY13v/adUObneej9/
 4kZH5LnwqHpHwY+oUXfo43qUc3lclobg7Y0KGW9MTa60lEg+MVfH5kG3su6hjwz5CESO
 GKbw==
X-Gm-Message-State: AOAM533ZwmU33xjcxOmYATwGWsdw1WE/NstzDhpYSjIljk/Fq545fGR9
 95g0RJU+GRj1whBH2G8fGfbHXDswqdClZNLL0HZp4ex35urQ3ezrLH9KK+97G5aMWPTwetfZGlZ
 dDkql3J2cOcmET9LUkoitiNV3hWfJXw==
X-Received: by 2002:a17:906:22c7:: with SMTP id
 q7mr18854685eja.486.1607347682014; 
 Mon, 07 Dec 2020 05:28:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwEorJ0sLId/xL9w8EuO0JL3r6cc0kBtMY1HiSGC5kejytn+C5L/ToMHIPmo2of6ILKDTvCoA==
X-Received: by 2002:a17:906:22c7:: with SMTP id
 q7mr18854658eja.486.1607347681764; 
 Mon, 07 Dec 2020 05:28:01 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id oq27sm3461543ejb.108.2020.12.07.05.28.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Dec 2020 05:28:01 -0800 (PST)
To: Mario Limonciello <mario.limonciello@dell.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20201204200920.133780-1-mario.limonciello@dell.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <d0f7e565-05e1-437e-4342-55eb73daa907@redhat.com>
Date: Mon, 7 Dec 2020 14:28:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201204200920.133780-1-mario.limonciello@dell.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3 0/7] Improve s0ix flows for systems
 i219LM
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, linux-kernel@vger.kernel.org, anthony.wong@canonical.com,
 Yijun.Shen@dell.com, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 12/4/20 9:09 PM, Mario Limonciello wrote:
> commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
> disabled s0ix flows for systems that have various incarnations of the
> i219-LM ethernet controller.  This was done because of some regressions
> caused by an earlier
> commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case")
> with i219-LM controller.
> 
> Performing suspend to idle with these ethernet controllers requires a properly
> configured system.  To make enabling such systems easier, this patch
> series allows determining if enabled and turning on using ethtool.
> 
> The flows have also been confirmed to be configured correctly on Dell's Latitude
> and Precision CML systems containing the i219-LM controller, when the kernel also
> contains the fix for s0i3.2 entry previously submitted here and now part of this
> series.
> https://marc.info/?l=linux-netdev&m=160677194809564&w=2
> 
> Patches 4 through 7 will turn the behavior on by default for some of Dell's
> CML and TGL systems.

First of all thank you for working on this.

I must say though that I don't like the approach taken here very
much.

This is not so much a criticism of this series as it is a criticism
of the earlier decision to simply disable s0ix on all devices
with the i219-LM + and active ME.

AFAIK there was a perfectly acceptable patch to workaround those
broken devices, which increased a timeout:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200323191639.48826-1-aaron.ma@canonical.com/

That patch was nacked because it increased the resume time
*on broken devices*.

So it seems to me that we have a simple choice here:

1. Longer resume time on devices with an improperly configured ME
2. Higher power-consumption on all non-buggy devices

Your patches 4-7 try to workaround 2. but IMHO those are just
bandaids for getting the initial priorities *very* wrong.

Instead of penalizing non-buggy devices with a higher power-consumption,
we should default to penalizing the buggy devices with a higher
resume time. And if it is decided that the higher resume time is
a worse problem then the higher power-consumption, then there
should be a list of broken devices and s0ix can be disabled on those.

The current allow-list approach is simply never going to work well
leading to too high power-consumption on countless devices.
This is going to be an endless game of whack-a-mole and as
such really is a bad idea.

A deny-list for broken devices is a much better approach, esp.
since missing devices on that list will still work fine, they
will just have a somewhat larger resume time.

So what needs to happen IMHO is:

1. Merge your fix from patch 1 of this set
2. Merge "e1000e: bump up timeout to wait when ME un-configure ULP mode"
3. Drop the e1000e_check_me check.

Then we also do not need the new "s0ix-enabled" ethertool flag
because we do not need userspace to work-around us doing the
wrong thing by default.

Note a while ago I had access to one of the devices having suspend/resume
issues caused by the S0ix support (a Lenovo Thinkpad X1 Carbon gen 7)
and I can confirm that the "e1000e: bump up timeout to wait when ME
un-configure ULP mode" patch fixes the suspend/resume problem without
any noticeable negative side-effects.

Regards,

Hans









> 
> Changes from v2 to v3:
>  - Correct some grammar and spelling issues caught by Bjorn H.
>    * s/s0ix/S0ix/ in all commit messages
>    * Fix a typo in commit message
>    * Fix capitalization of proper nouns
>  - Add more pre-release systems that pass
>  - Re-order the series to add systems only at the end of the series
>  - Add Fixes tag to a patch in series.
> 
> Changes from v1 to v2:
>  - Directly incorporate Vitaly's dependency patch in the series
>  - Split out s0ix code into it's own file
>  - Adjust from DMI matching to PCI subsystem vendor ID/device matching
>  - Remove module parameter and sysfs, use ethtool flag instead.
>  - Export s0ix flag to ethtool private flags
>  - Include more people and lists directly in this submission chain.
> 
> Mario Limonciello (6):
>   e1000e: Move all S0ix related code into its own source file
>   e1000e: Export S0ix flags to ethtool
>   e1000e: Add Dell's Comet Lake systems into S0ix heuristics
>   e1000e: Add more Dell CML systems into S0ix heuristics
>   e1000e: Add Dell TGL desktop systems into S0ix heuristics
>   e1000e: Add another Dell TGL notebook system into S0ix heuristics
> 
> Vitaly Lifshits (1):
>   e1000e: fix S0ix flow to allow S0i3.2 subset entry
> 
>  drivers/net/ethernet/intel/e1000e/Makefile  |   2 +-
>  drivers/net/ethernet/intel/e1000e/e1000.h   |   4 +
>  drivers/net/ethernet/intel/e1000e/ethtool.c |  40 +++
>  drivers/net/ethernet/intel/e1000e/netdev.c  | 272 +----------------
>  drivers/net/ethernet/intel/e1000e/s0ix.c    | 311 ++++++++++++++++++++
>  5 files changed, 361 insertions(+), 268 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/e1000e/s0ix.c
> 
> --
> 2.25.1
> 
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
