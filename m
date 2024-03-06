Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EA1872EFF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 07:46:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD59760F30;
	Wed,  6 Mar 2024 06:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hZIgQ8wzqoCY; Wed,  6 Mar 2024 06:46:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AD6C608FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709707590;
	bh=rkx06eo60War3khUMw7dvX/8xmVfIrV3ogV7Kmd6QaY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iYWTqXs9oM+WYoygSgEWKpbc/Kgo0hl3bEeIZ77/G//aMJXSljD8p9/AcS9gWM9st
	 WkV8a7il45Co7EJN0x3ewCR8YHTzAEpGhLVlGtKWK/jGBQB9L9PRrDKmk7Yrgzguw0
	 DqGd5Z2eX9pl/o6XKcdmI3jehzEW/xSUTmKFC13kiBrIRH+KsdYyDPLtzNtgzrt42Z
	 bbBaZLJIEAb9loMUgGGn9HaXUT5BO8RuCkI0NHFtbmNZqCW3jj239GqW3HrFbzmcAs
	 Jz4clZzZGiGZR7vg7lbAjPIRtG9LYXgCLFby+lXFkniInVc6TypMa84VpM5O464TX3
	 Bmyq9Qclj1TYQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AD6C608FD;
	Wed,  6 Mar 2024 06:46:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF5011BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 06:46:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A1BF406E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 06:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m4sZRt404X3y for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 06:46:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12e; helo=mail-lf1-x12e.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 18FC4406D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18FC4406D2
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18FC4406D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 06:46:25 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-51326436876so673146e87.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Mar 2024 22:46:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709707584; x=1710312384;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rkx06eo60War3khUMw7dvX/8xmVfIrV3ogV7Kmd6QaY=;
 b=osS5EJXyEOuOg4iFFLrzysp2vCDAKliI5fAzicYovB4KYbIn3PKnQWuQ+CQIcmQg90
 9sIJ1aN/3PczQCb6INEBAB8kbqVMrucDloIpcLlljoFoWYDK33gE1zZ+8ImDxnw9G/g0
 Z8RcYOJ2KVTdWo5ir6GlSJJYyhOkz8kQ0shdeWlgP4ugi58TvS3tqvPf3vopwvHBTYPg
 sLu3zuI5IU7djkVVdDtrS+iHCcvgjAGIouSGpViJY+mVD8X2Sk7HfMgHCETwVR6gOm+V
 uOq70tFB4WzyaSkxzpuS98F8Vur7eiSVwdaC2Bxog+C+vbsWX7QfIA6CFEflbTOGZlMG
 qLOw==
X-Gm-Message-State: AOJu0Yx3xzGV84le9qHbtWxpUI/N97eS9o7OYbf8ab1eOhNZxqeUxqJ5
 JQFQLBCmReiiMYDdln1DdV0IbdDGMzX2b/Xo9eNHVF6BputT+upf
X-Google-Smtp-Source: AGHT+IFz3g9DMenbgIR72C0GZaKsmV5ZmwQmcZ+w9CNtkSIcyOuIwBvlHumSkqIo9CKiidVTXrVIEw==
X-Received: by 2002:a05:6512:3707:b0:512:ee61:c32b with SMTP id
 z7-20020a056512370700b00512ee61c32bmr2242886lfr.43.1709707583365; 
 Tue, 05 Mar 2024 22:46:23 -0800 (PST)
Received: from ?IPV6:2a01:c22:7229:400:5983:b2b5:6877:f53a?
 (dynamic-2a01-0c22-7229-0400-5983-b2b5-6877-f53a.c22.pool.telefonica.de.
 [2a01:c22:7229:400:5983:b2b5:6877:f53a])
 by smtp.googlemail.com with ESMTPSA id
 cm26-20020a170906f59a00b00a3ca56e9bcfsm6842649ejd.187.2024.03.05.22.46.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Mar 2024 22:46:22 -0800 (PST)
Message-ID: <8e2ef99f-1a3d-44b6-9b3d-c612e43a33c4@gmail.com>
Date: Wed, 6 Mar 2024 07:46:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20240306025023.800029-1-jesse.brandeburg@intel.com>
 <20240306025023.800029-2-jesse.brandeburg@intel.com>
 <788f0d6b-107b-4d7b-813d-89db82a78e59@molgen.mpg.de>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
In-Reply-To: <788f0d6b-107b-4d7b-813d-89db82a78e59@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709707584; x=1710312384; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=rkx06eo60War3khUMw7dvX/8xmVfIrV3ogV7Kmd6QaY=;
 b=JeqGXrw7JEaICJUGIIE5rB0LDB67q7smKHgfaoJOJMNQNgObvMxun5WgJA8dWmEQ+R
 iKVJJ+5eOAlxjY2CaFxS9JRZULPphXyTiZyysgW4gpSRGDVYJzRiqhMENG0eaSoodTNb
 eIINIk9Cz+83nbiTUyDyD/yBC0sUViJrzON6RNaXm+iwO5WCX9vtMu58rsYscEpMG12U
 3JoGBy5j4cc2VYoXXZXX7HJrTd1ipIWQtmtRH/3tCofTmIp+z8W74b11LHEZL4aP86M2
 pJgx7laAc5VVZbBwMvj/LRrVVbAnXvluXq+tIWCD4iuWneNez0GB5V9AKduBe8FLkTvb
 wWPw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=JeqGXrw7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] igb: simplify pci ops
 declaration
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
Cc: netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Alan Brady <alan.brady@intel.com>, horms@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06.03.2024 07:24, Paul Menzel wrote:
> [Cc: +linux-pci@vger.kernel.org]
> 
> 
> Dear Jesse,
> 
> 
> Am 06.03.24 um 03:50 schrieb Jesse Brandeburg:
>> The igb driver was pre-declaring tons of functions just so that it could
>> have an early declaration of the pci_driver struct.
>>
>> Delete a bunch of the declarations and move the struct to the bottom of the
>> file, after all the functions are declared.
>>
>> Reviewed-by: Alan Brady <alan.brady@intel.com>
>> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> ---
>> v2: address compilation failure when CONFIG_PM=n, which is then updated
>>      in patch 2/2, fix alignment.
>>      changes in v1 reviewed by Simon Horman
>>      changes in v1 reviewed by Paul Menzel
>> v1: original net-next posting
>> ---
>>   drivers/net/ethernet/intel/igb/igb_main.c | 53 ++++++++++-------------
>>   1 file changed, 24 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>> index 518298bbdadc..e749bf5164b8 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -106,8 +106,6 @@ static int igb_setup_all_rx_resources(struct igb_adapter *);
>>   static void igb_free_all_tx_resources(struct igb_adapter *);
>>   static void igb_free_all_rx_resources(struct igb_adapter *);
>>   static void igb_setup_mrqc(struct igb_adapter *);
>> -static int igb_probe(struct pci_dev *, const struct pci_device_id *);
>> -static void igb_remove(struct pci_dev *pdev);
>>   static void igb_init_queue_configuration(struct igb_adapter *adapter);
>>   static int igb_sw_init(struct igb_adapter *);
>>   int igb_open(struct net_device *);
>> @@ -178,20 +176,6 @@ static int igb_vf_configure(struct igb_adapter *adapter, int vf);
>>   static int igb_disable_sriov(struct pci_dev *dev, bool reinit);
>>   #endif
>>   -static int igb_suspend(struct device *);
>> -static int igb_resume(struct device *);
>> -static int igb_runtime_suspend(struct device *dev);
>> -static int igb_runtime_resume(struct device *dev);
>> -static int igb_runtime_idle(struct device *dev);
>> -#ifdef CONFIG_PM
>> -static const struct dev_pm_ops igb_pm_ops = {
>> -    SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
>> -    SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
>> -            igb_runtime_idle)
>> -};
>> -#endif
>> -static void igb_shutdown(struct pci_dev *);
>> -static int igb_pci_sriov_configure(struct pci_dev *dev, int num_vfs);
>>   #ifdef CONFIG_IGB_DCA
>>   static int igb_notify_dca(struct notifier_block *, unsigned long, void *);
>>   static struct notifier_block dca_notifier = {
>> @@ -219,19 +203,6 @@ static const struct pci_error_handlers igb_err_handler = {
>>     static void igb_init_dmac(struct igb_adapter *adapter, u32 pba);
>>   -static struct pci_driver igb_driver = {
>> -    .name     = igb_driver_name,
>> -    .id_table = igb_pci_tbl,
>> -    .probe    = igb_probe,
>> -    .remove   = igb_remove,
>> -#ifdef CONFIG_PM
>> -    .driver.pm = &igb_pm_ops,
>> -#endif
>> -    .shutdown = igb_shutdown,
>> -    .sriov_configure = igb_pci_sriov_configure,
>> -    .err_handler = &igb_err_handler
>> -};
>> -
>>   MODULE_AUTHOR("Intel Corporation, <e1000-devel@lists.sourceforge.net>");
>>   MODULE_DESCRIPTION("Intel(R) Gigabit Ethernet Network Driver");
>>   MODULE_LICENSE("GPL v2");
> 
> A lot of other drivers also have this at the end.
> 
>> @@ -647,6 +618,8 @@ struct net_device *igb_get_hw_dev(struct e1000_hw *hw)
>>       return adapter->netdev;
>>   }
>>   +static struct pci_driver igb_driver;
>> +
>>   /**
>>    *  igb_init_module - Driver Registration Routine
>>    *
>> @@ -10170,4 +10143,26 @@ static void igb_nfc_filter_restore(struct igb_adapter *adapter)
>>         spin_unlock(&adapter->nfc_lock);
>>   }
>> +
>> +#ifdef CONFIG_PM
>> +static const struct dev_pm_ops igb_pm_ops = {
>> +    SET_SYSTEM_SLEEP_PM_OPS(igb_suspend, igb_resume)
>> +    SET_RUNTIME_PM_OPS(igb_runtime_suspend, igb_runtime_resume,
>> +               igb_runtime_idle)
>> +};
>> +#endif
>> +
>> +static struct pci_driver igb_driver = {
>> +    .name     = igb_driver_name,
>> +    .id_table = igb_pci_tbl,
>> +    .probe    = igb_probe,
>> +    .remove   = igb_remove,
>> +#ifdef CONFIG_PM
>> +    .driver.pm = &igb_pm_ops,
>> +#endif
>> +    .shutdown = igb_shutdown,
>> +    .sriov_configure = igb_pci_sriov_configure,
>> +    .err_handler = &igb_err_handler
>> +};
>> +
>>   /* igb_main.c */
> 
> I looked through `drivers/` and .driver.pm is unguarded there. Example `drivers/video/fbdev/geode/gxfb_core.c`:
> 
>     static const struct dev_pm_ops gxfb_pm_ops = {
>     #ifdef CONFIG_PM_SLEEP
>             .suspend        = gxfb_suspend,
>             .resume         = gxfb_resume,
>             .freeze         = NULL,
>             .thaw           = gxfb_resume,
>             .poweroff       = NULL,
>             .restore        = gxfb_resume,
>     #endif
>     };
> 
>     static struct pci_driver gxfb_driver = {
>             .name           = "gxfb",
>             .id_table       = gxfb_id_table,
>             .probe          = gxfb_probe,
>             .remove         = gxfb_remove,
>             .driver.pm      = &gxfb_pm_ops,
>     };
> 
> No idea, what driver follows the best practices though, and if it would belong into a separate commit.
> 
The geode fbdev driver may be a bad example as it's ancient.
There's pm_sleep_ptr, SYSTEM_SLEEP_PM_OPS et al to avoid the conditional
compiling and use of __maybe_unused. And yes, I also think this should be
a separate patch.

> 
> Kind regards,
> 
> Paul
> 

