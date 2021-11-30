Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD4D46404E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 22:35:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00B85404B6;
	Tue, 30 Nov 2021 21:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5YJILTa1aVst; Tue, 30 Nov 2021 21:35:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADA4740177;
	Tue, 30 Nov 2021 21:35:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6325A1BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 514B682741
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id suFNPzfeOz4Y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 21:35:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8894981C6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 21:35:36 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id u1so47405768wru.13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 13:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:cc
 :references:from:subject:in-reply-to:content-transfer-encoding;
 bh=IISOlbFN0oDJ3K09m0ZKnHAoRqSPjkWaG/WFAfjkZ80=;
 b=RK6O82/aMnGNfKKTkf97w7zooeYE4HGv/91C/vMk2co1bG9QrQGZvxAjDrD/lWPd9Q
 yJpwWlMsb7tjruYx75kae90Dyn2VHXQEJ7fzvUqbL+3DcSM03rOwiCr28es6NrqKYJ4B
 RGhP3m++Dw+/xjAcghQnyfvIMF/i8cso88M9UulJ5wfVTOnrtZMkj2wi8TZiu3drUiy+
 C8n5Ke0AJhdRZBE6Z8rJi8XYF+rmnvakBhrlmFGrLVoaJFRVcnik2qu2lASJym6+RYpS
 LkKO4xSxLDXsqjuZU1ph4T9AwiPS0VS4D2Yz6bP+xKrOCYXp+Oqcpk+Zk33vMHrqvbY7
 IQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:references:from:subject:in-reply-to
 :content-transfer-encoding;
 bh=IISOlbFN0oDJ3K09m0ZKnHAoRqSPjkWaG/WFAfjkZ80=;
 b=1PNobXCJ6CC8e7b/EUsF3F6TvkPSEE1PDXUud1EHC6nkNUmgqfKax6hfqrnxpHvt2W
 MkcD2gawhLAboCbfgRafTLJaW+OW74i0DMSHTXFP7ZGh/HvOSOX1pEVXo9pzko7bTEGY
 Hk8LoaswaCnpa86rkebkoTtMwGh1L79FPpBVAcP1Lelj7SasGCCPtLol8HUsrEfBEaN6
 FzBADVHEOD9m2rI6Y+aDX/52TZA5aDziGMkjPz+579cGFvj3rdNpAYJ2EyWbXn1QfZCU
 XTbrgFjhh/Vh/7VZBEFrzh1XeuI66ePwfoz/zFJWFT07NSzt+UBwx63Od1IZ69QFDqy0
 GRYQ==
X-Gm-Message-State: AOAM531/MaB+kMRtg4BOBiSn7w8u8Rf3rykYY6mtd4mSJGgdIpKoWpuU
 G8P/nOmZ/cdux9pEXmET3Fw=
X-Google-Smtp-Source: ABdhPJw+Ni8pb7eqQNgkIjQX+H84OsR2Q/Eo8b82uZVjh1TmhUm6W7dMAgaAsr8axbevov/usPulMA==
X-Received: by 2002:a5d:5385:: with SMTP id d5mr1720412wrv.132.1638308134716; 
 Tue, 30 Nov 2021 13:35:34 -0800 (PST)
Received: from ?IPV6:2003:ea:8f1a:f00:cdea:1258:1cb4:5e92?
 (p200300ea8f1a0f00cdea12581cb45e92.dip0.t-ipconnect.de.
 [2003:ea:8f1a:f00:cdea:1258:1cb4:5e92])
 by smtp.googlemail.com with ESMTPSA id s63sm3787729wme.22.2021.11.30.13.35.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Nov 2021 13:35:34 -0800 (PST)
Message-ID: <c6f3caef-dac2-cc4a-b5b5-70e7fa54d73f@gmail.com>
Date: Tue, 30 Nov 2021 22:35:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
 <20211129171712.500e37cb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <6edc23a1-5907-3a41-7b46-8d53c5664a56@gmail.com>
 <20211130091206.488a541f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <20211130091206.488a541f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix deadlock caused by
 taking RTNL in RPM resume path
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 30.11.2021 18:12, Jakub Kicinski wrote:
> On Tue, 30 Nov 2021 07:46:22 +0100 Heiner Kallweit wrote:
>> On 30.11.2021 02:17, Jakub Kicinski wrote:
>>> On Mon, 29 Nov 2021 22:14:06 +0100 Heiner Kallweit wrote:  
>>>> -	rtnl_lock();
>>>> +	if (!rpm)
>>>> +		rtnl_lock();  
>>>
>>> Is there an ASSERT_RTNL() hidden in any of the below? Can we add one?
>>> Unless we're 100% confident nobody will RPM resume without rtnl held..
>>>   
>>
>> Not sure whether igb uses RPM the same way as r8169. There the device
>> is runtime-suspended (D3hot) w/o link. Once cable is plugged in the PHY
>> triggers a PME, and PCI core runtime-resumes the device (MAC).
>> In this case RTNL isn't held by the caller. Therefore I don't think
>> it's safe to assume that all callers hold RTNL.
> 
> No, no - I meant to leave the locking in but add ASSERT_RTNL() to catch
> if rpm == true && rtnl_held() == false.
> 
This is a valid case. Maybe it's not my day today, I still don't get
how we would benefit from adding an ASSERT_RTNL().

Based on the following I think that RPM resume and device open()
can't collide, because RPM resume is finished before open()
starts its actual work.

static int __igb_open(struct net_device *netdev, bool resuming)
{
...
if (!resuming)
		pm_runtime_get_sync(&pdev->dev);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
