Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7D0A44062
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 14:16:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A02281EF2;
	Tue, 25 Feb 2025 13:16:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dw_FU_9UGByg; Tue, 25 Feb 2025 13:16:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7036481E05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740489361;
	bh=LlD+ZWsWUwFy+rhO3mmdLB17Nccqo81aSrFHfM61f4E=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TIsWJDBkmvtjBGNgVCROM7V2D+Hs9YjZlKIHitBYqSjVI15SUjrpJ+FeHt2wt9NeK
	 0EKM7nxjCRugDcUwOM7iNXHu6uMU4hbCUWQMtLBxZ/jwZTIdSJMccEV6e90KUybdzF
	 1DS6Iu+MrQ3RkAWI+5r1W+FhS26beJ42m3Kfr2m+J4/1nt9PpXqG1X7annc/oNXCXe
	 O1Rc3T18GcFbQpuwYAHgw9HPwJJbpc2XzBM+K6gzmV26T0xujYS4Slh2jN5A1mDrmF
	 NPjpWkBv4Y2AYpbIJrhsHsXADLzlprRxr+3FDGbdmOYESM+wSIa9TU1UuBXE/fPFtN
	 IEpaFJVyaBRCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7036481E05;
	Tue, 25 Feb 2025 13:16:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E25B2019
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 13:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1239B40D82
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 13:15:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PIgE5WIBnevf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 13:15:58 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 195AA40669
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 195AA40669
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 195AA40669
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 13:15:57 +0000 (UTC)
X-CSE-ConnectionGUID: XxKWjKuZTTG+ONLjDxeLLA==
X-CSE-MsgGUID: aKzD26C/TN6Zbjm/64i4ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="40479067"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="40479067"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 05:15:57 -0800
X-CSE-ConnectionGUID: VrtSALc7QgOMCQQz8zPGMw==
X-CSE-MsgGUID: pQizwE4yQ2KJTkkiNjohsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="121358694"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.112.135])
 ([10.245.112.135])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 05:15:56 -0800
Message-ID: <4583cf1b-46b0-4664-a0b3-f02331685955@linux.intel.com>
Date: Tue, 25 Feb 2025 14:15:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250220150438.352642-3-martyna.szapar-mudlaw@linux.intel.com>
 <eb5e8d47-30ba-4b95-9b34-ba2de829e131@molgen.mpg.de>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <eb5e8d47-30ba-4b95-9b34-ba2de829e131@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740489358; x=1772025358;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=BilTGQVbMAK56Cu8FXenUbyVQjZzgIqhrZu3KqOSndE=;
 b=C8PnWe9A1o82b0zNP1e7fsvZ3fTfkWmC/4QidMxO7xYgKA4tbbIDtKNL
 GjkDHINjK8sec4WHD8ji0DvanurkhMWaoxxc7a3zcVLXq8mTvJ/qE55pN
 5YLr90ueZnnQMdluWhl3ZoAbAPPKxLYqnsStzBQkCQKsqmNn9rGtYAkOZ
 86Y3Z3goiXFNw0yeZznMtr0jMe22V9yvYfqu5gON5jNPssbENAcpjotyF
 TCKzcmAdPO/w14Lb/gpJTfVnvP6yqmIeNDUoLM/eRPVNr3+yt9yYVSBCF
 HWoW/d6KV2LV33OQYmm80BLyMabT+qKEArnucx6U8CZZ3iMszkvhOjUXF
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C8PnWe9A
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix fwlog after driver
 reinit
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



On 2/20/2025 9:11 PM, Paul Menzel wrote:
> Dear Martyna,
> 
> 
> Thank you for your patch.
> 
> Am 20.02.25 um 16:04 schrieb Martyna Szapar-Mudlaw:
>> Fix an issue when firmware logging stops after devlink reload action
>> driver_reinit or driver reset. Fix it by restoring fw logging when
> 
> Maybe elaborate, why/how driver reinit or reset disables fwlog.
>

ok, I can expand commit message

>> it was previously registered before these events.
> 
> I’d add a blank line between paragraphs.>

ok

>> Restoring fw logging in these cases was faultily removed with new
>> debugfs fw logging implementation.
>> Failure to init fw logging is not a critical error so it is safely
>> ignored.
> 
> How can this be tested?

By examining debugfs fwlog data file, information from fw is no longer 
logged to this file after driver reinit (devlink dev reload 
pci/{PCI_Bus} action driver_reinit). In patches 73671c3162c8 ("ice: 
enable FW logging") and 9d3535e71985 ("ice: add ability to read and 
configure FW log data") it is described how to enable and collect ice fw 
logs.
In case of failure during fwlog registration, debug prints indicating 
this are logged.

> 
>> Fixes: 73671c3162c8 ("ice: enable FW logging")
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar- 
>> mudlaw@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ 
>> ethernet/intel/ice/ice_main.c
>> index a03e1819e6d5..6d6873003bcb 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -5151,6 +5151,13 @@ int ice_load(struct ice_pf *pf)
>>       devl_assert_locked(priv_to_devlink(pf));
>> +    if (pf->hw.fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
>> +        err = ice_fwlog_register(&pf->hw);
>> +        if (err)
>> +            pf->hw.fwlog_cfg.options &=
>> +                ~ICE_FWLOG_OPTION_IS_REGISTERED;
> 
> Should an error be logged in the failure case?

ice_fwlog_register function already provides logs in case of failure

Thank you for the review,
Martyna

> 
>> +    }
>> +
>>       vsi = ice_get_main_vsi(pf);
>>       /* init channel list */
>> @@ -7701,6 +7708,13 @@ static void ice_rebuild(struct ice_pf *pf, enum 
>> ice_reset_req reset_type)
>>           goto err_init_ctrlq;
>>       }
>> +    if (hw->fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
>> +        err = ice_fwlog_register(hw);
>> +        if (err)
>> +            hw->fwlog_cfg.options &=
>> +                ~ICE_FWLOG_OPTION_IS_REGISTERED;
>> +    }
> 
> Ditto.
> 
>> +
>>       /* if DDP was previously loaded successfully */
>>       if (!ice_is_safe_mode(pf)) {
>>           /* reload the SW DB of filter tables */
> 
> 
> Kind regards,
> 
> Paul
> 

