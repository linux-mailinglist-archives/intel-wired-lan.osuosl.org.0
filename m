Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AC89B1127
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 23:02:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C97B81F02;
	Fri, 25 Oct 2024 21:01:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ro_fJZn2tA2E; Fri, 25 Oct 2024 21:01:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 795E081F13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729890118;
	bh=F4IK84fQ8fCVS5wC4Ztz3PgyIv2ROaput9HV5iT2HWk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U2hfty8O3sRMSYkwJOWlNIPfow7K7rwqQs1pfYd+uyla+jU4G398ZUpTAApBbhewF
	 bD5SJOHU0iK2xp+y9BRXEUPJWPTom9Q4aFV/+AhHukECLdreSEyDEwL4LCiOSC0bMZ
	 NIbBzF1hvY1fBsyOjvi3NNo9+SvNp0oy5+WhMKRycYOR0DnbmaNedPNL5KqOOl7sQP
	 /kPWtNa4zc9s+sKj7XrMFA/XmWSKRbIngTKVsmHWDGnzpIJ4OQ9SsiOPdv5ju8OEvi
	 lhxx8KePgGrfNQWwWIKya54sn4iNKA+5edOF+zp+wKrpCBNAJTWQ9GHaz4IW//3wlU
	 cDB4F06wDNarg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 795E081F13;
	Fri, 25 Oct 2024 21:01:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EE1A62072
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 09:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF82260723
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 09:08:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id afDeeTtTqyE8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 09:08:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.188;
 helo=szxga02-in.huawei.com; envelope-from=yuancan@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 803066059D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 803066059D
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 803066059D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 09:08:07 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.105])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4XYNRv5KDMzfdYm;
 Wed, 23 Oct 2024 17:05:31 +0800 (CST)
Received: from dggpeml500024.china.huawei.com (unknown [7.185.36.10])
 by mail.maildlp.com (Postfix) with ESMTPS id 1094814039F;
 Wed, 23 Oct 2024 17:08:02 +0800 (CST)
Received: from [10.174.178.41] (10.174.178.41) by
 dggpeml500024.china.huawei.com (7.185.36.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 17:08:01 +0800
Message-ID: <f2c9b77d-c67c-4c11-b2f3-bcf80a22a5a9@huawei.com>
Date: Wed, 23 Oct 2024 17:08:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <cramerj@intel.com>,
 <shannon.nelson@amd.com>, <mitch.a.williams@intel.com>, <jgarzik@redhat.com>, 
 <auke-jan.h.kok@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, Alexander Duyck <alexander.duyck@gmail.com>
References: <20241022063807.37561-1-yuancan@huawei.com>
 <20241022155630.GY402847@kernel.org>
Content-Language: en-US
From: Yuan Can <yuancan@huawei.com>
In-Reply-To: <20241022155630.GY402847@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.174.178.41]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-Mailman-Approved-At: Fri, 25 Oct 2024 21:01:54 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix potential invalid memory
 access in igb_init_module()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 2024/10/22 23:56, Simon Horman wrote:
> + Alexander Duyck
>
> On Tue, Oct 22, 2024 at 02:38:07PM +0800, Yuan Can wrote:
>> The pci_register_driver() can fail and when this happened, the dca_notifier
>> needs to be unregistered, otherwise the dca_notifier can be called when
>> igb fails to install, resulting to invalid memory access.
>>
>> Fixes: fe4506b6a2f9 ("igb: add DCA support")
> I don't think this problem was introduced by the commit cited above,
> as it added the call to dca_unregister_notify() before
> pci_register_driver(). But rather by the commit cited below which reversed
> the order of these function calls.
>
> bbd98fe48a43 ("igb: Fix DCA errors and do not use context index for 82576")
>
> I'm unsure if it is necessary to repost the patch to address that.
> But if you do, and assuming we are treating this as a bug fix,
> please target it for the net (or iwl-net) tree like this:
>
> Subject: [PATCH net v2] ...
Ok, I will send a v2 patch to the net tree, thanks!
>> Signed-off-by: Yuan Can <yuancan@huawei.com>
>> ---
>>   drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>> index f1d088168723..18284a838e24 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -637,6 +637,10 @@ static int __init igb_init_module(void)
>>   	dca_register_notify(&dca_notifier);
>>   #endif
>>   	ret = pci_register_driver(&igb_driver);
>> +#ifdef CONFIG_IGB_DCA
>> +	if (ret)
>> +		dca_unregister_notify(&dca_notifier);
>> +#endif
>>   	return ret;
>>   }
>>   
>> -- 
>> 2.17.1
>>
>>
-- 
Best regards,
Yuan Can

