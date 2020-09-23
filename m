Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE14A275A93
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 16:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3018D866E7;
	Wed, 23 Sep 2020 14:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dEs7VzMoc1zG; Wed, 23 Sep 2020 14:46:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B7C386700;
	Wed, 23 Sep 2020 14:46:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36FFF1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 14:46:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 32AC484E1A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 14:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eqRQfdTKgMhE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 14:46:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 73BFF84DE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 14:46:32 +0000 (UTC)
Received: from mail-pj1-f72.google.com ([209.85.216.72])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kL62Q-0008L7-Ht
 for intel-wired-lan@lists.osuosl.org; Wed, 23 Sep 2020 14:46:30 +0000
Received: by mail-pj1-f72.google.com with SMTP id i23so34943pju.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 07:46:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=IRV4DsqTHJS4UCf0ZaCBRMDHJJpdRDGlcpY0NuGhQ7g=;
 b=UYzrsO7HvHmNTblqegEdb65vYVhK3RXFs2BOXg+sWnoKM8OaV96ZGMQL7bNJ9583MG
 90tRd6a7vKpi3DE2RHBMqj2uBO12a6jZ8F5CJBN2Fcrpf4uxB3XnGMeyzQvKi8qFtM1Y
 kTJpYNZvFg3hncv3i0QcSm4yVe3IyeBsPmU0SaMBEYEiK5VpSh4zmHV0YT74sA2/rGK+
 5ctsguoF1AiPlyLeWYjzA4DnqXigcE1Qo4Ep07qVMTS8j44kT1U+mfkFhsTnofP9eg4W
 KjzG4cWMVSsuoJOVKGsy+igKUXN68VpEDwwuOi3vJPJTErgc/65l1GzvqSD+wbDFvG34
 HjIA==
X-Gm-Message-State: AOAM530DaI2aXVgxoB1KwGHwL3FNkDn40Dl78DRq3NZerObv90OgiyZt
 iW/yj+xHvAx8994+Oo7GsGFkC+Itjf+lmJJyxkeRJ0O+HIeQNVOUQJ1TF+C2b+x2dbxy8Vb6GCZ
 QM0wAM0XVDTuyEq2NDQgUlIp6aL1Vnh1ttjEDaK/ao0UrKN0=
X-Received: by 2002:a63:7d5a:: with SMTP id m26mr66981pgn.373.1600872389147;
 Wed, 23 Sep 2020 07:46:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzEca3T4aPQaV9RL6AocGE0yU0atcnRNqviEk4KyxvvK1PiNJGTRuAf0er4y9Q9pep6pePjdg==
X-Received: by 2002:a63:7d5a:: with SMTP id m26mr66963pgn.373.1600872388857;
 Wed, 23 Sep 2020 07:46:28 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id t10sm217313pgp.15.2020.09.23.07.46.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Sep 2020 07:46:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <17092088-86ff-2d31-b3de-2469419136a3@molgen.mpg.de>
Date: Wed, 23 Sep 2020 22:46:25 +0800
Message-Id: <AC6D77B8-244D-4816-8FFE-A4480378EC4C@canonical.com>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
 <17092088-86ff-2d31-b3de-2469419136a3@molgen.mpg.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: Apple Mail (2.3608.120.23.2.1)
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Power cycle phy on PM resume
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

Hi Paul,

> On Sep 23, 2020, at 21:28, Paul Menzel <pmenzel@molgen.mpg.de> wrote:
> 
> Dear Kai-Heng,
> 
> 
> Am 23.09.20 um 09:47 schrieb Kai-Heng Feng:
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
>> Since we don't know what platform firmware may do to the phy, so let's
>> power cycle the phy upon system resume to resolve the issue.
> 
> Is there a bug report or list thread for this issue?

No. That's why I sent a patch to start discussion :)

> 
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> ---
>>  drivers/net/ethernet/intel/e1000e/netdev.c | 2 ++
>>  1 file changed, 2 insertions(+)
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 664e8ccc88d2..c2a87a408102 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -6968,6 +6968,8 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
>>  	    !e1000e_check_me(hw->adapter->pdev->device))
>>  		e1000e_s0ix_exit_flow(adapter);
>>  +	e1000_power_down_phy(adapter);
>> +
>>  	rc = __e1000_resume(pdev);
>>  	if (rc)
>>  		return rc;
> 
> How much does this increase the resume time?

I didn't measure it. Because for me it's more important to have a working device.

Does it have a noticeable impact on your system's resume time?

Kai-Heng

> 
> 
> Kind regards,
> 
> Paul
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
