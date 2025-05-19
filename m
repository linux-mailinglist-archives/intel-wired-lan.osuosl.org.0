Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BCBABBC00
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 13:09:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98BE4613E6;
	Mon, 19 May 2025 11:08:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VNzg_PuCd2Bh; Mon, 19 May 2025 11:08:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0B92610B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747652939;
	bh=hj8839tZOZ4rGB5ggEhzkakmn1ay9lwvCE/J+Osu4ak=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ugVAjhbZSQDjd6eFL3Z6q3w9Sq9Oq63oQ/lojJnKJ+wqMj8M6zqXrEn3/Pmle485K
	 jW0u0DWait9SaEzzfFa05nIrygRgtp23agXmQFknjTp6x2kQcnOihHODUDb6nUk6vs
	 Bl3qpoRos5hDkbB9MKOGT3WmR378dd9ug8swdi982TMTW20cyRyvqrQVdseCPcz+qj
	 xbF3eO79jVw/YDWw2kcGJk8GT5URMew6XMNX5FL2pU47DkRguqHHTGxefncwKksTuC
	 O5HsbEBM5NNTq1VHR0+KWD5SShBVDfIzTIFzWRA5opReeqWtHQfaQnqOVqtce/jHkS
	 vMKephB4HpHiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0B92610B7;
	Mon, 19 May 2025 11:08:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A0E3E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:08:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36035613E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:08:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uT01JOjlohSX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 11:08:56 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 78CFD612DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78CFD612DB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78CFD612DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:08:56 +0000 (UTC)
X-CSE-ConnectionGUID: MZTz2NzFQt+O3m0xIiTwuw==
X-CSE-MsgGUID: 5/S8nS9OSsyd8DDcBQQfQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="67103227"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="67103227"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:08:55 -0700
X-CSE-ConnectionGUID: yJbzfspgTda+j3B6x+wz5A==
X-CSE-MsgGUID: ivLU9qppST2LIllAmGNA6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139832474"
Received: from cwachsma-mobl.ger.corp.intel.com (HELO [10.245.252.240])
 ([10.245.252.240])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:08:52 -0700
Message-ID: <870e9fd3-0b09-4da7-97fe-cca386fa2ca2@linux.intel.com>
Date: Mon, 19 May 2025 13:08:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>
References: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
 <31f29ba7-7731-487c-9738-1beab56b727f@intel.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <31f29ba7-7731-487c-9738-1beab56b727f@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747652937; x=1779188937;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=J7zRdUs2zjeswu6c1Gotaem54BW+/7Zj+WhK0PNZnHc=;
 b=Pcv/Hyabqx0+S6NyzL2q6RfiFs+HO+tJG4Idhu9RzvwbBfdjiSRzjR2Y
 /jJqonwCOrrH5Ac8ZWx6LaUN1ufrZhlycGzfjVk8Kb0IYImBFddYe533y
 wVD9G+iJnUAoNAWBBIMC/gCp3O3jvJkGpSRfe4vt8BuHeD/UQ5V2nVV5O
 B9G71zQfZ58lMysXO6pMrgNfYBY4XCh46+Wdn4ftXU5mvVVSL/1RfZy05
 606yX9dn4zavIABeB8/sQv8hzke/qzz5ZWtwOckt+0N+DT6qfxVldDg+Q
 LqYyg0UM0PAaa0Sp+abiJ8v5XwON3wBgVF5Xn4FO07yrTRSp2FIICbOPE
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pcv/Hyab
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add E835 device IDs
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

On 2025-05-16 7:30 PM, Tony Nguyen wrote:
> On 5/14/2025 3:46 AM, Dawid Osuchowski wrote:
>> diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/ 
>> net/ethernet/intel/ice/ice_devids.h
>> index 34fd604132f5..7761c3501174 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_devids.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_devids.h
>> @@ -36,6 +36,24 @@
>>   #define ICE_DEV_ID_E830_XXV_QSFP    0x12DD
>>   /* Intel(R) Ethernet Controller E830-XXV for SFP */
>>   #define ICE_DEV_ID_E830_XXV_SFP        0x12DE
>> +/* Intel(R) Ethernet Controller E835-CC for backplane */
>> +#define ICE_DEV_ID_E835CC_BACKPLANE    0x1248
>> +/* Intel(R) Ethernet Controller E835-CC for QSFP */
>> +#define ICE_DEV_ID_E835CC_QSFP56    0x1249
>> +/* Intel(R) Ethernet Controller E835-CC for SFP */
>> +#define ICE_DEV_ID_E835CC_SFP        0x124A
>> +/* Intel(R) Ethernet Controller E835-C for backplane */
>> +#define ICE_DEV_ID_E835C_BACKPLANE    0x1261
>> +/* Intel(R) Ethernet Controller E835-C for QSFP */
>> +#define ICE_DEV_ID_E835C_QSFP        0x1262
>> +/* Intel(R) Ethernet Controller E835-C for SFP */
>> +#define ICE_DEV_ID_E835C_SFP        0x1263
>> +/* Intel(R) Ethernet Controller E835-L for backplane */
>> +#define ICE_DEV_ID_E835_L_BACKPLANE    0x1265
>> +/* Intel(R) Ethernet Controller E835-L for QSFP */
>> +#define ICE_DEV_ID_E835_L_QSFP        0x1266
>> +/* Intel(R) Ethernet Controller E835-L for SFP */
>> +#define ICE_DEV_ID_E835_L_SFP        0x1267
>>   /* Intel(R) Ethernet Controller E810-C for backplane */
>>   #define ICE_DEV_ID_E810C_BACKPLANE    0x1591
> 
> For the most part this file is sorted by device id, could you move these 
> to the corresponding spot?

Sure, will send v2.

Best regards,
Dawid

> 
> Thanks,
> Tony
