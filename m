Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA56462D10
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 07:46:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B116A81C18;
	Tue, 30 Nov 2021 06:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UTOSjld_4LEo; Tue, 30 Nov 2021 06:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CA9A8198A;
	Tue, 30 Nov 2021 06:46:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED0ED1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 06:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAF588198A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 06:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YkJbbCt6ryli for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 06:46:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E8B881882
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 06:46:32 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 r9-20020a7bc089000000b00332f4abf43fso12106550wmh.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 22:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:cc
 :references:from:subject:in-reply-to:content-transfer-encoding;
 bh=LzJx9B5J5YCMo0+jcW4XuMxWHO3fVt1lRlFh2TM0Dlg=;
 b=n3Ve/Lz+xSlrT/M3/fkhpQImIi9oKnNhAAQDzSwpxxbeW59lPwmuWqMRLezjJBJeER
 7CvnX2Wobp3vboWKp4E6Q1wZhekCaO865QBrw+vi4CXj+rSEBxUwYC2BSb7apAUTYRo2
 v2QHhoqAi+TYckTDBD/xcJivpl9RGT6sKSova6txOOhz3QhOBSqvdHDiHql3UP1byR6Z
 FWQKR5OF3AJlJlbeYBV6SPZZMgyCongo2rRW97sl7MCx9Qxu8rFv02hQgqwBbnCkve/y
 p0iNykJvvJ2JSXB0xJiHsCV8gDCAmPaCz/iie8kjj7ptSu652DOCmP1rpc1oiJnVHuxE
 qHLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:references:from:subject:in-reply-to
 :content-transfer-encoding;
 bh=LzJx9B5J5YCMo0+jcW4XuMxWHO3fVt1lRlFh2TM0Dlg=;
 b=0u1Rutd0Ydf9ARQEY57ZKyGiq1wTuONLBw3/zxXWtw/rzK3xKEcXya0JSdf4+XkSPs
 T6esChuCUL+AFuJe8qCv8GQWXaluKmZHYmZQc38gg3GkvB2md+XY3XFi4IRKO+r4K5cD
 sgqJnOLew55pr6FKDK3zKop8sQTMOV2MtCXYnuq8poaHeDAC0mc5uEkFzoC2Zxh/nhaS
 78zns/iEUF/nBOvVFH5AEm0CDTaQPyY30OO65S/Q7OgqelvARI0L/8zuC8hJ4AkQEu5Q
 eElOQkGW2aNNYt91jmBlm+LHL9bs+PUyEMidHRqR7ZwqB2UKhMj16Wmh8hyzVHtS6wXM
 Yhzg==
X-Gm-Message-State: AOAM5339pwI4laMQDPJb9qHL6tyDdWgmt6RTJ58xLdDNDTrd17h6KYtr
 j6v6A7zZMvOei0uCovOH8fo=
X-Google-Smtp-Source: ABdhPJzAefBjUQ3MuEcdl5eDxfsc6LNK9HjDgg3QAtFqjbMXauD1oX1dPrdgT5RoCjEF5YR3tf1Gwg==
X-Received: by 2002:a05:600c:4e8d:: with SMTP id
 f13mr2836514wmq.7.1638254790421; 
 Mon, 29 Nov 2021 22:46:30 -0800 (PST)
Received: from ?IPV6:2003:ea:8f1a:f00:982e:c052:6f5c:d61f?
 (p200300ea8f1a0f00982ec0526f5cd61f.dip0.t-ipconnect.de.
 [2003:ea:8f1a:f00:982e:c052:6f5c:d61f])
 by smtp.googlemail.com with ESMTPSA id e24sm11547125wra.78.2021.11.29.22.46.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 22:46:30 -0800 (PST)
Message-ID: <5675a5ef-5aa0-3f05-1c44-a91ce90d5f38@gmail.com>
Date: Tue, 30 Nov 2021 07:33:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Stephen Hemminger <stephen@networkplumber.org>
References: <6bb28d2f-4884-7696-0582-c26c35534bae@gmail.com>
 <20211129150920.4a400828@hermes.local>
From: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <20211129150920.4a400828@hermes.local>
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
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 30.11.2021 00:09, Stephen Hemminger wrote:
> On Mon, 29 Nov 2021 22:14:06 +0100
> Heiner Kallweit <hkallweit1@gmail.com> wrote:
> 
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>> index dd208930f..8073cce73 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -9254,7 +9254,7 @@ static int __maybe_unused igb_suspend(struct device *dev)
>>  	return __igb_shutdown(to_pci_dev(dev), NULL, 0);
>>  }
>>  
>> -static int __maybe_unused igb_resume(struct device *dev)
>> +static int __maybe_unused __igb_resume(struct device *dev, bool rpm)
>>  {
>>  	struct pci_dev *pdev = to_pci_dev(dev);
>>  	struct net_device *netdev = pci_get_drvdata(pdev);
>> @@ -9297,17 +9297,24 @@ static int __maybe_unused igb_resume(struct device *dev)
>>  
>>  	wr32(E1000_WUS, ~0);
>>  
>> -	rtnl_lock();
>> +	if (!rpm)
>> +		rtnl_lock();
>>  	if (!err && netif_running(netdev))
>>  		err = __igb_open(netdev, true);
>>  
>>  	if (!err)
>>  		netif_device_attach(netdev);
>> -	rtnl_unlock();
>> +	if (!rpm)
>> +		rtnl_unlock();
>>  
>>  	return err;
>>  }
>>  
>> +static int __maybe_unused igb_resume(struct device *dev)
>> +{
>> +	return __igb_resume(dev, false);
>> +}
>> +
>>  static int __maybe_unused igb_runtime_idle(struct device *dev)
>>  {
>>  	struct net_device *netdev = dev_get_drvdata(dev);
>> @@ -9326,7 +9333,7 @@ static int __maybe_unused igb_runtime_suspend(struct device *dev)
>>  
>>  static int __maybe_unused igb_runtime_resume(struct device *dev)
>>  {
>> -	return igb_resume(dev);
>> +	return __igb_resume(dev, true);
>>  }
> 
> Rather than conditional locking which is one of the seven deadly sins of SMP,
> why not just have __igb_resume() be the locked version where lock is held by caller?
> 
In this case we'd have to duplicate quite some code from igb_resume().
Even more simple alternative would be to remove RTNL from igb_resume().
Then we'd remove RTNL from RPM and system resume path. Should be ok as well.
I just didn't want to change two paths at once.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
