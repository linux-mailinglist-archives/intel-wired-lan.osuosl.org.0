Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0130A45D583
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Nov 2021 08:32:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94564825FE;
	Thu, 25 Nov 2021 07:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iWkUFABzLxLl; Thu, 25 Nov 2021 07:32:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 828E1825E8;
	Thu, 25 Nov 2021 07:32:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF8111BF36C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 07:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5A2F825E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 07:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iAKGnBB4BZyJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Nov 2021 07:32:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BEBAA82591
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Nov 2021 07:32:28 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id j3so9567240wrp.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 23:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:cc
 :references:from:subject:in-reply-to:content-transfer-encoding;
 bh=0wumoxdwiC2xVkrh3efLAeW5BPOHPs6sn4vBMFf8av4=;
 b=mktYqABrSZu2kyUYkNFaKFx5QxmJT9/Zr1CKE7CX158MekvmelS+X39CotlLzZVUC4
 f2WoCe1IS6QKuVVHb2iOdjx/nDr9JmLxeKkGnFztB2Th3ukBanmlpxG8QQVOXfLJKvco
 oV3Pv8qD8o8ZxhCbkpIT4+LZlQEJ89Q5R5DPqfvA5WpAo8qXwCCUqQZvuDJc/iqNU1Sp
 kJh4ZSHSGntQzdmK8UBlnuPeSKibmX5ghLQUuO2K2kiXt6nJNxXUsAaX/9VUwgT2xaki
 swmNOS0dm5JtwcnJXKeDNJyh7atFIIuVsvUjiZVE1gNnKF951C0qfVHr3ucjlf+CtLbM
 raQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:references:from:subject:in-reply-to
 :content-transfer-encoding;
 bh=0wumoxdwiC2xVkrh3efLAeW5BPOHPs6sn4vBMFf8av4=;
 b=il5BBTldbUAdd/P2DdtBCOamhazeHJiuLpiAQeb0D7fAobvcSizviSpJZmuB4iDmVp
 5B0GljWlm1W2FzOYESXsP+BSdOzIcCTItMzFzkZFd+f1H/eWjWjL2SJl/exSXEq4myS3
 qMpLFIpXChi8Z0dt8bN84qgQuVXrstwEu7AuR1NxxEtNRUYjXVzwZCkw6ACFvRKhIQ5w
 qBF/dUqmyl3sse5/VqHfD2/JuS8mOXXk4winI93zIIjM7hXJBR78rmIZ86iShTBRrl94
 U/4rlQgdvEPtGdX/ABcim1Aw20NksP1jyTGbzeGowtCzNZM2l8EpWjX44tDmwrkZZrkY
 jiwg==
X-Gm-Message-State: AOAM531Z3gWH4T4jwDaNud760A3PHDegRaW/MHEk577a7Y1aVZkYDz2A
 Nb6cTvr6kwto/cLTxYOc/P4=
X-Google-Smtp-Source: ABdhPJxpZLAM50YbYXZyY4ctZf7s37K7ojfjrwRe8oqZUQIqUoMNHZjCNJSz0yAAg0q8oxdFB5t2KA==
X-Received: by 2002:adf:dc8c:: with SMTP id r12mr4294940wrj.510.1637825546781; 
 Wed, 24 Nov 2021 23:32:26 -0800 (PST)
Received: from ?IPV6:2003:ea:8f1a:f00:6832:ca58:d1ea:870e?
 (p200300ea8f1a0f006832ca58d1ea870e.dip0.t-ipconnect.de.
 [2003:ea:8f1a:f00:6832:ca58:d1ea:870e])
 by smtp.googlemail.com with ESMTPSA id o4sm2414434wry.80.2021.11.24.23.32.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Nov 2021 23:32:26 -0800 (PST)
Message-ID: <1849b7a3-cdfe-f9dc-e4d1-172e8b1667d2@gmail.com>
Date: Thu, 25 Nov 2021 08:32:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Kalle Valo <kvalo@codeaurora.org>
References: <20211124144505.31e15716@hermes.local>
 <20211124164648.43c354f4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <20211124164648.43c354f4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: Re: [Intel-wired-lan] [Bug 215129] New: Linux kernel hangs during
 power down
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
Cc: Stephen Hemminger <stephen@networkplumber.org>, netdev@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 25.11.2021 01:46, Jakub Kicinski wrote:
> Adding Kalle and Hainer.
> 
> On Wed, 24 Nov 2021 14:45:05 -0800 Stephen Hemminger wrote:
>> Begin forwarded message:
>>
>> Date: Wed, 24 Nov 2021 21:14:53 +0000
>> From: bugzilla-daemon@bugzilla.kernel.org
>> To: stephen@networkplumber.org
>> Subject: [Bug 215129] New: Linux kernel hangs during power down
>>
>>
>> https://bugzilla.kernel.org/show_bug.cgi?id=215129
>>
>>             Bug ID: 215129
>>            Summary: Linux kernel hangs during power down
>>            Product: Networking
>>            Version: 2.5
>>     Kernel Version: 5.15
>>           Hardware: All
>>                 OS: Linux
>>               Tree: Mainline
>>             Status: NEW
>>           Severity: normal
>>           Priority: P1
>>          Component: Other
>>           Assignee: stephen@networkplumber.org
>>           Reporter: martin.stolpe@gmail.com
>>         Regression: No
>>
>> Created attachment 299703
>>   --> https://bugzilla.kernel.org/attachment.cgi?id=299703&action=edit    
>> Kernel log after timeout occured
>>
>> On my system the kernel is waiting for a task during shutdown which doesn't
>> complete.
>>
>> The commit which causes this behavior is:
>> [f32a213765739f2a1db319346799f130a3d08820] ethtool: runtime-resume netdev
>> parent before ethtool ioctl ops
>>
>> This bug causes also that the system gets unresponsive after starting Steam:
>> https://steamcommunity.com/app/221410/discussions/2/3194736442566303600/
>>
> 

I think the reference to ath10k_pci is misleading, Kalle isn't needed here.
The actual issue is a RTNL deadlock in igb_resume(). See log snippet:

Nov 24 18:56:19 MartinsPc kernel:  igb_resume+0xff/0x1e0 [igb 21bf6a00cb1f20e9b0e8434f7f8748a0504e93f8]
Nov 24 18:56:19 MartinsPc kernel:  pci_pm_runtime_resume+0xa7/0xd0
Nov 24 18:56:19 MartinsPc kernel:  ? pci_pm_freeze_noirq+0x110/0x110
Nov 24 18:56:19 MartinsPc kernel:  __rpm_callback+0x41/0x120
Nov 24 18:56:19 MartinsPc kernel:  ? pci_pm_freeze_noirq+0x110/0x110
Nov 24 18:56:19 MartinsPc kernel:  rpm_callback+0x35/0x70
Nov 24 18:56:19 MartinsPc kernel:  rpm_resume+0x567/0x810
Nov 24 18:56:19 MartinsPc kernel:  __pm_runtime_resume+0x4a/0x80
Nov 24 18:56:19 MartinsPc kernel:  dev_ethtool+0xd4/0x2d80

We have at least two places in net core where runtime_resume() is called
under RTNL. This conflicts with the current structure in few Intel drivers
that have something like the following in their resume path.

	rtnl_lock();
	if (!err && netif_running(netdev))
		err = __igb_open(netdev, true);

	if (!err)
		netif_device_attach(netdev);
	rtnl_unlock();

Other drivers don't do this, so it's the question whether it's actually
needed here to take RTNL. Some discussion was started [0], but it ended
w/o tangible result and since then it has been surprisingly quiet.

[0] https://www.spinics.net/lists/netdev/msg736880.html
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
