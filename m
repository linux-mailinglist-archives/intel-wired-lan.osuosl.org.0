Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C10A27762C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 18:04:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEAC586C22;
	Thu, 24 Sep 2020 16:04:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NQfWa7YVVlyR; Thu, 24 Sep 2020 16:04:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E0E7A86C19;
	Thu, 24 Sep 2020 16:04:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83D761BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 16:04:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7FDED87508
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 16:04:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g8Hq8zbt0J7X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 16:04:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BE0B5873F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 16:04:49 +0000 (UTC)
Received: from mail-pl1-f197.google.com ([209.85.214.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kLTjk-0001Yz-6P
 for intel-wired-lan@lists.osuosl.org; Thu, 24 Sep 2020 16:04:48 +0000
Received: by mail-pl1-f197.google.com with SMTP id w5so2408926ply.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 09:04:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=nX0zpP5nDZf1hQGaqFM3MqAFuvNA8lFVZJI9qMupKJw=;
 b=eKmqb6kkjE+nc8JxQ3/HHFwTwESHeNql/geFiG5wuz5IGadatuP6PjDlUzY8Zhj9Z2
 VTPu/2PxXSY8h/lXHNv+r+9nGHzyYDO4SxYFUAxD+YF2vgoWXuoZ4vkWjqPIcr4tujZT
 erRKtzqZYJpViDBlxaj9w58+B8HXvpDfsg6y6b5u5v+BdRp4srL2G9GvIYQHpVylDlRH
 MhF3Vxd0UI4zPbJCwFm2vl/d8YMOEFWQUb0UgSgE6z2L7kbxxPGw/Z8qN8Ap8azImfFT
 wsfiP1JQ2OrQCiJRx+vliz2v/TrB19ra/3RHXzVL/8ShrxGX0keLhVK8hzVxbpU5jwFs
 De5w==
X-Gm-Message-State: AOAM532nZZH3tosfJBamb41z+zZ5CThua+cv3/ePnUFAuuZ93j0wzBvY
 lOCVTntTDFymuZvSRMpFOC5a4KVZ3l8TPIaLMIxiZjSKWM54ecazi+2LxCa2EjqzAjM/FrHc/DP
 H9y0F6zQBHC2e3kNAMO7n1NbwxyCxfHeCi8+ReQjRPCh1Ko0=
X-Received: by 2002:a63:5d66:: with SMTP id o38mr288816pgm.366.1600963486508; 
 Thu, 24 Sep 2020 09:04:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx/Z6+blTP/nNHPLJX3sXwCCgS+0nZJs30Wu1jnBGl3cA5mTL3aXN2iwDQxwt8FGjPWygNqSQ==
X-Received: by 2002:a63:5d66:: with SMTP id o38mr288785pgm.366.1600963486116; 
 Thu, 24 Sep 2020 09:04:46 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id x4sm3268556pff.57.2020.09.24.09.04.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Sep 2020 09:04:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20200924155355.GC3821492@lunn.ch>
Date: Fri, 25 Sep 2020 00:04:25 +0800
Message-Id: <8A08B3A7-8368-48EC-A2DD-B5D5F3EA94C5@canonical.com>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
 <20200924150958.18016-1-kai.heng.feng@canonical.com>
 <20200924155355.GC3821492@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailer: Apple Mail (2.3608.120.23.2.1)
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Increase iteration on
 polling MDIC ready bit
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Andrew,

> On Sep 24, 2020, at 23:53, Andrew Lunn <andrew@lunn.ch> wrote:
> 
> On Thu, Sep 24, 2020 at 11:09:58PM +0800, Kai-Heng Feng wrote:
>> We are seeing the following error after S3 resume:
>> [  704.746874] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.844232] e1000e 0000:00:1f.6 eno1: MDI Write did not complete
>> [  704.902817] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.903075] e1000e 0000:00:1f.6 eno1: reading PHY page 769 (or 0x6020 shifted) reg 0x17
>> [  704.903281] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.903486] e1000e 0000:00:1f.6 eno1: writing PHY page 769 (or 0x6020 shifted) reg 0x17
>> [  704.943155] e1000e 0000:00:1f.6 eno1: MDI Error
>> ...
>> [  705.108161] e1000e 0000:00:1f.6 eno1: Hardware Error
>> 
>> As Andrew Lunn pointed out, MDIO has nothing to do with phy, and indeed
>> increase polling iteration can resolve the issue.
>> 
>> While at it, also move the delay to the end of loop, to potentially save
>> 50 us.
> 
> You are unlikely to save any time. 64 bits at 2.5MHz is 25.6uS. So it
> is very unlikely doing a read directly after setting is going is going
> to have E1000_MDIC_READY set. So this change likely causes an addition
> read on MDIC. Did you profile this at all, for the normal case?

You are right, it's actually may add an additional read.
Let me send a v3.

> 
> I also don't fully understand the fix. You are now looping up to 6400
> times, each with a delay of 50uS. So that is around 12800 times more
> than it actually needs to transfer the 64 bits! I've no idea how this
> hardware works, but my guess would be, something is wrong with the
> clock setup?

It's probably caused by Intel ME. This is not something new, you can find many polling codes in e1000e driver are for ME, especially after S3 resume.

Unless Intel is willing to open up ME, being patient and wait for a longer while is the best approach we got.

Kai-Heng

> 
>     Andrew

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
