Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FE497E99D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2024 12:14:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56F7060891;
	Mon, 23 Sep 2024 10:14:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uXILVnPgoREY; Mon, 23 Sep 2024 10:14:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CF786075B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727086450;
	bh=gsSKbUPFuGR9WrIxHgSXvL7mUo2I72w+5OM/i/P4S+U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0VpK4RJIp4eR7qW6QqAN+/1WY9lmLJv7jyhiYXOPC4DXbHRZl51Q54vaQDsaXRBjK
	 wqzhOPERCChJJe/HP7QUS2G3R9TBZBsvksaS+9/3j/PIaJR6rOk6xzAzvTkKO3Bh2m
	 0ETjV84Ux3bFC42IRLZsAN24+GO22zy6MElpeDotaMVMsxVTpyKmMB2/Kv+nr6nWoP
	 a2lmN+V3nCbZpvgxpQrbZt5qE28bbkwn+AwtH0fpdQJVFB02Ki3dkZNmm6FNZPAzJH
	 nCXVxZSujDgixUxbPIIz5Sg7PAc98c49O1wYvlcb0spZ3Qgx94fSYbS/UmM0V+FJqG
	 MhhezDsrIdTtg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CF786075B;
	Mon, 23 Sep 2024 10:14:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5AB601BF307
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 10:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34DB7605FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 10:14:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jPxZmlJnC0mi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2024 10:14:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3A971605A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A971605A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A971605A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 10:14:04 +0000 (UTC)
X-CSE-ConnectionGUID: hlhiW+0uQaqOsLjNoeNU+g==
X-CSE-MsgGUID: ar68wdYDTjKTgrZqVkQsfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="29747953"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="29747953"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 03:14:04 -0700
X-CSE-ConnectionGUID: Zb6YVVJWS4mXEqQzo05cPA==
X-CSE-MsgGUID: rNh90k91REKm5TsT+6h0Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="75962603"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.26.245])
 ([10.246.26.245])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 03:14:03 -0700
Message-ID: <3ecfcc55-f31f-40ee-b7f2-49b567c3e8a2@linux.intel.com>
Date: Mon, 23 Sep 2024 12:13:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Brett Creeley <bcreeley@amd.com>, intel-wired-lan@lists.osuosl.org
References: <20240920165916.9592-3-marcin.szycik@linux.intel.com>
 <5cda9974-6c19-4216-9139-0ac83c95303c@amd.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <5cda9974-6c19-4216-9139-0ac83c95303c@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727086445; x=1758622445;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=p5o1Jo6U3AZKAQbTtFOZi3I5CXN3bA3pd+Y097tFe/4=;
 b=ZUARyK4MroLCI1poW1Wz6C/2YWuS0PuiYaCG9YjJ8hVMDx3FEcFtdfC4
 y/pyIqg/iJXWVdG2q0NtCZoe3o820SKS+iYpDgQ83m2cwHtvNlbId87XE
 uKIM3Igw8oCaJcxeXuTro/0jW7eVu5b+amly392cQfAj4xRw4CjggurIy
 ELB7jOxa9UraX6ruvQrj/3wNhxq8l+bBhctXa9iFzSRb3wMobN7fgkjHj
 MthVdFWxHKwd3gfuicodAohMej/z5L4edcHcjU5REWuX2nQgboFz5BQVj
 7G+8bobb6i7VgE9ZtmaeBigTHdHxwbtufR/DPs3UgTgNhBGzZ/V6LToKj
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZUARyK4M
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ice: Fix entering Safe
 Mode
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
Cc: netdev@vger.kernel.org, mateusz.polchlopek@intel.com,
 maciej.fijalkowski@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 20.09.2024 19:14, Brett Creeley wrote:
> 
> 
> On 9/20/2024 9:59 AM, Marcin Szycik wrote:
>> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
>>
>>
>> If DDP package is missing or corrupted, the driver should enter Safe Mode.
>> Instead, an error is returned and probe fails.
>>
>> Don't check return value of ice_init_ddp_config() to fix this.
>>
>> Change ice_init_ddp_config() type to void, as now its return is never
>> checked.
>>
>> Repro:
>> * Remove or rename DDP package (/lib/firmware/intel/ice/ddp/ice.pkg)
>> * Load ice
>>
>> Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> ---
>> v2: Change ice_init_ddp_config() type to void
>> ---
>>   drivers/net/ethernet/intel/ice/ice_main.c | 15 +++------------
>>   1 file changed, 3 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 0f5c9d347806..aeebf4ae25ae 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -4548,34 +4548,27 @@ ice_init_tx_topology(struct ice_hw *hw, const struct firmware *firmware)
>>    *
>>    * This function loads DDP file from the disk, then initializes Tx
>>    * topology. At the end DDP package is loaded on the card.
>> - *
>> - * Return: zero when init was successful, negative values otherwise.
>>    */
>> -static int ice_init_ddp_config(struct ice_hw *hw, struct ice_pf *pf)
>> +static void ice_init_ddp_config(struct ice_hw *hw, struct ice_pf *pf)
>>   {
>>          struct device *dev = ice_pf_to_dev(pf);
>>          const struct firmware *firmware = NULL;
>>          int err;
>>
>>          err = ice_request_fw(pf, &firmware);
>> -       if (err) {
>> +       if (err)
>>                  dev_err(dev, "Fail during requesting FW: %d\n", err);
>> -               return err;
>> -       }
>>
>>          err = ice_init_tx_topology(hw, firmware);
>>          if (err) {
>>                  dev_err(dev, "Fail during initialization of Tx topology: %d\n",
>>                          err);
>>                  release_firmware(firmware);
>> -               return err;
>>          }
>>
>>          /* Download firmware to device */
>>          ice_load_pkg(firmware, pf);
>>          release_firmware(firmware);
>> -
>> -       return 0;
>>   }
>>
>>   /**
>> @@ -4748,9 +4741,7 @@ int ice_init_dev(struct ice_pf *pf)
>>
>>          ice_init_feature_support(pf);
>>
>> -       err = ice_init_ddp_config(hw, pf);
>> -       if (err)
>> -               return err;
>> +       ice_init_ddp_config(hw, pf);
> 
> I just commented this on v1 as I didn't expect it to be resent. I'm also okay with Maciej's suggestion, but I wanted to offer an alternative option.
> 
> As an alternative solution you could potentially do the following, which
> would make the flow more readable:
> 
> err = ice_init_ddp_config(hw, pf);
> if (err || ice_is_safe_mode(pf))
>        ice_set_safe_mode_caps(hw);

This sounds reasonable, I'll change it if there will be no more comments.

> Also, should there be some sort of messaging if the device goes into
> safe mode? I wonder if a dev_dbg() would be better than nothing. If ice_init_ddp_config() fails, then it will print an error message, so maybe a dev_warn/info() is warranted if (err)? Of course this would depend on ice_init_ddp_config() to return a non-void value.

ice_request_fw() already prints a dev_err() message when entering safe mode, so I don't think it's necessary here.

Thanks,
Marcin
> 
> Thanks,
> 
> Brett
> 
>>
>>          /* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
>>           * set in pf->state, which will cause ice_is_safe_mode to return
>> -- 
>> 2.45.0
>>
>>

