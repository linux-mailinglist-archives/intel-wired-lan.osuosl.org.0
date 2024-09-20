Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC7A97D616
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 15:24:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAF3E84D49;
	Fri, 20 Sep 2024 13:24:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4KIYo_kLnEwJ; Fri, 20 Sep 2024 13:24:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2455884C63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726838654;
	bh=FxeGyfr611mz/2ClRpcZ7acUWoalXY4blaw/SX3VKm0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6Fj3HDRv2E+HoLdzLAqXUtbaJ9dhiEy87idNUhx6pIIn0bk01km178fkkeKNhn529
	 lXZbdeEm5qc0b0JQCCPPchT5NxsuIRG1PC5xKvLg3iCSUG8Kylia5jgLwKed0LaPZ0
	 pWmuDvLC46h0FeYfQD1nN+vHcmBAR008rrr7CqUmttlpzViXcDntkOQdRHvM00Fnau
	 tFkl9nozA5EnxKBoCBM+wssOp3M6LDs+ObHhtllSSF3i8ws7nP9g8vWmbSSyIh1wsJ
	 FbD6usGWjhcLfa6v+X1TZr01DeWxFUUANGY0vVB3P/ZPSmfc7GFC4nZzcktiIhUkMZ
	 CLHpGkC+CSzSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2455884C63;
	Fri, 20 Sep 2024 13:24:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05C1A1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 13:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0002D40475
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 13:24:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SD1AF0_GOqxn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 13:24:12 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C3E34416C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C3E34416C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3E34416C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 13:24:11 +0000 (UTC)
X-CSE-ConnectionGUID: OEi+wAyjS3a8wongNzBzVw==
X-CSE-MsgGUID: bmkHfpLhTcO0QwWx7RGRGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="29739329"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="29739329"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 06:24:10 -0700
X-CSE-ConnectionGUID: r8pw3CUvSdeOuqFgM4Hv8w==
X-CSE-MsgGUID: X2HeuNvARQmLTPgDFtr2uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="75079955"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.245.84.198])
 ([10.245.84.198])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 06:24:08 -0700
Message-ID: <3981c288-e3d2-43cd-aff9-ce68d022aa04@linux.intel.com>
Date: Fri, 20 Sep 2024 15:24:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20240920115508.3168-3-marcin.szycik@linux.intel.com>
 <Zu1kelo0Wd20pyjf@boxer>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <Zu1kelo0Wd20pyjf@boxer>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726838652; x=1758374652;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=iNttmDk6M4upK4RyVeUA+xSpDsBCgXRWzX79zm4E8Q8=;
 b=XK9pjwR17KFU5FfY/48mgz4mcwnxdfgfbBwh7qRLd6Tl/RiHjeBy/cCo
 yBcWmDfSPb2MGOXlTYGQFtY7JO/qKicUcXz2OiGhGOTYMAJTaHy+DNYjv
 k2Bq6ikleDV+leMfoAQGynd766D0V20kT+mp43g31ewjOB3W7Z8lucAkO
 DWzMADwpMrPizVFGew+Zc7pzbUcjAeBkTS9padleSCBnvou6mZeJoD1OB
 6sQu/fo5izcziEwca0US6sEJCN6XvfDFfDtJy7XLBljsUeE7KTprxxXfQ
 7/PNQyZCsL0hzOGfbltWp1Eyx8QGFjVvp3LDvjnKiNzSBBarme+CPm4pg
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XK9pjwR1
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix entering Safe
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
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 20.09.2024 14:03, Maciej Fijalkowski wrote:
> On Fri, Sep 20, 2024 at 01:55:09PM +0200, Marcin Szycik wrote:
>> If DDP package is missing or corrupted, the driver should enter Safe Mode.
>> Instead, an error is returned and probe fails.
>>
>> Don't check return value of ice_init_ddp_config() to fix this.
> 
> no one else checks the retval after your fix so adjust it to return void.

Thanks, will fix in v2.

>>
>> Repro:
>> * Remove or rename DDP package (/lib/firmware/intel/ice/ddp/ice.pkg)
>> * Load ice
>>
>> Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_main.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 0f5c9d347806..7b6725d652e1 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -4748,9 +4748,7 @@ int ice_init_dev(struct ice_pf *pf)
>>  
>>  	ice_init_feature_support(pf);
>>  
>> -	err = ice_init_ddp_config(hw, pf);
>> -	if (err)
>> -		return err;
>> +	ice_init_ddp_config(hw, pf);
>>  
>>  	/* if ice_init_ddp_config fails, ICE_FLAG_ADV_FEATURES bit won't be
>>  	 * set in pf->state, which will cause ice_is_safe_mode to return
>> -- 
>> 2.45.0
>>
>>

