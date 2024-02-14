Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA1B854374
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 08:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99BB141745;
	Wed, 14 Feb 2024 07:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vvjyuwq-qgaQ; Wed, 14 Feb 2024 07:32:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1ADF41748
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707895933;
	bh=49aOrJr7B4Aglez3Lo4lLfv0gxXRG3P37YvD5FawF18=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d/u2XS9XD8YPhdf6e9WFxYLpHme0qxdQdHR8ZYn2lzHZ4vs5iW2zwn2uvzhiIN0yr
	 e5M1k09WYs6HYxQsncadZ/5vLf+Da6wkSi5cDOI2hqlmmWYdXPfoZBsVz/Ks/I75X8
	 WQKBnNidwutxNkDPCq93Xt2y89x9EC4XhQpGJYW80Yb2OxzOW7Uw3LTOJdGpWFB1QY
	 9uS11vkztZZlkTC0E981MZW0vh8qSqLU+P/T0N8vi2gUhKiVu0B9hYEOoJCvwaQ4bU
	 RlJtZIHXZE20FG1wtK0qxW36q4BQ+yUz5LedPETO8oWj6V8DRDNPOiJ6vz/6FkRBo9
	 igh96ZIK0qZUQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1ADF41748;
	Wed, 14 Feb 2024 07:32:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E70431BF86C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 07:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDF9382323
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 07:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2U_bIvDO8l8D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 07:32:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::529; helo=mail-ed1-x529.google.com;
 envelope-from=hkallweit1@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D79008232B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D79008232B
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D79008232B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 07:32:09 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-5638a717bf2so42995a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 23:32:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707895928; x=1708500728;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=49aOrJr7B4Aglez3Lo4lLfv0gxXRG3P37YvD5FawF18=;
 b=Jvh6Tv+1tbYffqmULFbV/JUnQISazuNkn5OR59HDHFZTKlK2Pt4FLTThPkLQ1ALIi8
 /2poQRXUNo4BMpBAD0qCbFbG8tDsJPG9LR2unuoL4fDTNHrt578k1hpypQQwttKFlwZM
 V8UKfvdbiCXlf082bW/s/0j83MM2J1VBFbKWP5B2+UD2AYOlGsFqTk3jFqQEFtbETVC0
 0cu8wAlULwyu4LacTGY7ZmSZI3ODvZAY4gjjltUFCtXfutsR36DZOYD3dOTtxjBB9Xh5
 K14SCifsr+kqDWBCSeefbAZtkA1hjhut+iaUUbLcp8OTmbX1kprgiejg9FnPMR/IYyyN
 9cWw==
X-Gm-Message-State: AOJu0YytXuDFBSe8+2/EnrH4cl5twu1MzkJ6jNe/LbpVoToeCWZvp3cr
 rYJjcsxAcqsJ5gewwdg8qv0kfcQO/d9Sh8M9+6txF9vXiTomN4rt
X-Google-Smtp-Source: AGHT+IG3c6h9gyn4zyta5HN/CDiYJ41kXKHipVWz4BRzIAxUsh2cMOT4IpKPdTSIawoEWC2bI1r/Sw==
X-Received: by 2002:aa7:d4cd:0:b0:561:fec0:cd44 with SMTP id
 t13-20020aa7d4cd000000b00561fec0cd44mr1529856edr.27.1707895927439; 
 Tue, 13 Feb 2024 23:32:07 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUsqEbnnEjEjvZGKZNSrCi6lK6tY2EY20y1CAj5okthGZgfgt1sTEfTUDyZCXGFr9MVn1mandx9pHGo29ntYpHNAso4TnvqtBt66IvIK+4UbtcTLS1DGyoX8bW+XlZjCyUmyefrX1YeczRTyu/nA+bpaSHJlQVhruHUJWBjoYct5zZ/J3hFn+brnto4A8ivspG06H+x/BY/QUjuwagx9+Q0u6S9KqMI8WDvM5bUaAo+x6t0xrRXmSO07FHUJjyPcEDoOw6XEjP0cLWjQODQiS/jGZwZQNDrYjWoVMp/RBWiO7xaMgKgRR/FBxszeVOjmCkdU5E6bhz+4KIl1Bf/zP/y
Received: from ?IPV6:2a01:c23:c153:4a00:1137:dd85:a3c6:eb6?
 (dynamic-2a01-0c23-c153-4a00-1137-dd85-a3c6-0eb6.c23.pool.telefonica.de.
 [2a01:c23:c153:4a00:1137:dd85:a3c6:eb6])
 by smtp.googlemail.com with ESMTPSA id
 bd28-20020a056402207c00b005613194b260sm4463721edb.9.2024.02.13.23.32.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 13 Feb 2024 23:32:06 -0800 (PST)
Message-ID: <f640ed12-3e72-481e-a2bd-4c6ccc092532@gmail.com>
Date: Wed, 14 Feb 2024 08:32:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Jon Maxwell <jmaxwell37@gmail.com>,
 jesse.brandeburg@intel.com
References: <20240213222344.195885-1-jmaxwell37@gmail.com>
 <926b5031-47d2-42d7-938d-01fc4ebc9dc0@molgen.mpg.de>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
In-Reply-To: <926b5031-47d2-42d7-938d-01fc4ebc9dc0@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707895928; x=1708500728; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=49aOrJr7B4Aglez3Lo4lLfv0gxXRG3P37YvD5FawF18=;
 b=XkvhhzK4aTcid2uhXFWFOr3gOXO0Ku4N8JD7P0m2mYPgonTz8yLM/dPI52+MTurZW4
 gE57rfSXgsAYJ2pxhCAsbnhZvEtPMgnxdVV33d2rc7jk35LUd+bOPHvA9BzKcU1RvpZx
 ynNffgigM7BweBhuvxUZwZ/SmgBr74LWAoZ+L37ntRgqtUEHV6RCjWjT48Wg72jXGLkF
 9AwlcCzoPrK7Q1N5uzmu5V04r8NDL/meo44nKHmvWEVAiB5DTBz39SlP70CX7qORBf9s
 2iKiKOhcmVfRL+90GXJRHxfl73mOtsP9r340mBZg0tCYnLvaS8VynrYw14qv8TJcnjSS
 Lv0Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=XkvhhzK4
Subject: Re: [Intel-wired-lan] [net-next v3] intel: make module parameters
 readable in sys filesystem
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 14.02.2024 08:22, Paul Menzel wrote:
> Dear Jon,
> 
> 
> Thank you very much for your patch.
> 
> Am 13.02.24 um 11:23 PM schrieb Jon Maxwell:
>> Linux users sometimes need an easy way to check current values of module
>> parameters. For example the module may be manually reloaded with different
>> parameters. Make these visible and readable in the /sys filesystem to allow
>> that.
>>
>> Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>
>> ---
>> V2: Remove the "debug" module parameter as per Andrew Lunns suggestion.
> 
> Please mention this in the commit message, why `debug` should not be exposed.
> 
> 
> Kind regards,
> 
> Paul
> 
> 
>> V3: Correctly format v2.
>>   drivers/net/ethernet/intel/e100.c             | 4 ++--
>>   drivers/net/ethernet/intel/igb/igb_main.c     | 2 +-
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
>>   3 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
>> index 01f0f12035caeb7ca1657387538fcebf5c608322..3fcb8daaa2437fa3fe7b98ba9f606dbbb1844e58 100644
>> --- a/drivers/net/ethernet/intel/e100.c
>> +++ b/drivers/net/ethernet/intel/e100.c
>> @@ -171,8 +171,8 @@ static int debug = 3;
>>   static int eeprom_bad_csum_allow = 0;
>>   static int use_io = 0;
>>   module_param(debug, int, 0);
>> -module_param(eeprom_bad_csum_allow, int, 0);
>> -module_param(use_io, int, 0);
>> +module_param(eeprom_bad_csum_allow, int, 0444);
>> +module_param(use_io, int, 0444);
>>   MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
>>   MODULE_PARM_DESC(eeprom_bad_csum_allow, "Allow bad eeprom checksums");
>>   MODULE_PARM_DESC(use_io, "Force use of i/o access mode");
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>> index 4df8d4153aa5f5ce7ac9dd566180d552be9f5b4f..31d0a43a908c0a4eab4fe1147064a5f5677c9f0b 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -202,7 +202,7 @@ static struct notifier_block dca_notifier = {
>>   #endif
>>   #ifdef CONFIG_PCI_IOV
>>   static unsigned int max_vfs;
>> -module_param(max_vfs, uint, 0);
>> +module_param(max_vfs, uint, 0444);
>>   MODULE_PARM_DESC(max_vfs, "Maximum number of virtual functions to allocate per physical function");
>>   #endif /* CONFIG_PCI_IOV */
>>   diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> index bd541527c8c74d6922e8683e2f4493d9b361f67b..9d26ff82a397d4939cf7adea78c217e4071aa166 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -147,13 +147,13 @@ static struct notifier_block dca_notifier = {
>>     #ifdef CONFIG_PCI_IOV
>>   static unsigned int max_vfs;
>> -module_param(max_vfs, uint, 0);
>> +module_param(max_vfs, uint, 0444);
>>   MODULE_PARM_DESC(max_vfs,
>>            "Maximum number of virtual functions to allocate per physical function - default is zero and maximum value is 63. (Deprecated)");

I doubt it makes sense to expose a deprecated parameter.

>>   #endif /* CONFIG_PCI_IOV */
>>     static bool allow_unsupported_sfp;
>> -module_param(allow_unsupported_sfp, bool, 0);
>> +module_param(allow_unsupported_sfp, bool, 0444);
>>   MODULE_PARM_DESC(allow_unsupported_sfp,
>>            "Allow unsupported and untested SFP+ modules on 82599-based adapters");
>>   
> 

