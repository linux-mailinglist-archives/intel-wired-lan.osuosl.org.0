Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 989B2928C8B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jul 2024 18:58:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3323840245;
	Fri,  5 Jul 2024 16:58:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1eHpWJuYXqkB; Fri,  5 Jul 2024 16:58:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14D0640265
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720198730;
	bh=53IWNUqv/dAAWYlqkFKigcK2SNfNDfaWpHcnGTZ50h4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KN9HKAnPbS9WNiSUcs7x+mcF+2eDQYxUEL1bguEemsEpkMiX9nCVorBol5AH+8ciu
	 yz8ij+kn2ANHBytO5n6HC5MtYfu8ZkMS8/3lLElSOhinaE4g82sAdqb9xAsfpa6+Io
	 Z/lnGf8tT1gTvugeRXJqcJG/d8FJ4kar007c7enTu/bHHr9zW0UFl0zwwtEQcoFLnm
	 rLi9R1aUp6RAVo03Gu+OPZzMjJPAD7+LJCePuGJWCo0HHjULxWg7saYJVfSMgbaco2
	 3oC6a9/RaZDjA+59caIyhNdV7DyLgfipdqnUGJFU3yi0SI+08RUpjN4TsR3dcJZm/8
	 utwOPReV75O2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14D0640265;
	Fri,  5 Jul 2024 16:58:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 702C01BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 16:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 699236062D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 16:58:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WfYvvIunHfij for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jul 2024 16:58:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 929F460612
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 929F460612
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 929F460612
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 16:58:47 +0000 (UTC)
X-CSE-ConnectionGUID: mI0qtLjIQ1+M9qo4NtIm+Q==
X-CSE-MsgGUID: tpkln+ZKT2ye/VNiHCMnZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="28649325"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="28649325"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 09:58:46 -0700
X-CSE-ConnectionGUID: TFZusHLnTp+7M7CpwAdY1w==
X-CSE-MsgGUID: XPBUW+DgTyi4UrXnOfwS9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="51518219"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.38.162])
 ([10.247.38.162])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 09:58:43 -0700
Message-ID: <5dbb95b5-96c1-4bbc-a4e0-c0616efa7ac2@linux.intel.com>
Date: Sat, 6 Jul 2024 00:58:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
 <20240702040926.3327530-2-faizal.abdul.rahim@linux.intel.com>
 <20240703150830.GO598357@kernel.org>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20240703150830.GO598357@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720198727; x=1751734727;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=oOHv5vKH1IZynVlCLLK+KNAq96qbLhSgisVIUWyYrEw=;
 b=LglkokbFeKZDd1CrkI9XuvBc079rCovaDgiABCmfugHQQR4qOv4KczjX
 kvTFsz6eA7oKgrEcfuJrhv2M2MEPTnIZLm1C1mql+mkDQo4R+FSkDOSe+
 q3KilVjPlK9JIneSpdxlYq5a2y1GHvw45AwcM9Bsn1MBSNzbBWOUJZmpz
 99pj4l7g/lNcCwirWpaEGXajTVOI25TdTlICYCGUy/SGZXZbgRxnmQEhF
 R+pF5/dcqJ6k2ktxHDx8VDB9wbx/muNAk9w2x8VcPDmil9RyHpdHVl2Wt
 KFqlvLFbs48tgjuG4nTUTRcAnf8cr5OTBOB9UmyTtwTye3wyUiYWttlMw
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LglkokbF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/4] igc: Fix
 qbv_config_change_errors logics
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, richardcochran@gmail.com,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


>> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> index 22cefb1eeedf..02dd41aff634 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> @@ -78,6 +78,17 @@ void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
>>   	wr32(IGC_GTXOFFSET, txoffset);
>>   }
>>   
>> +bool igc_tsn_is_taprio_activated_by_user(struct igc_adapter *adapter)
>> +{
>> +	struct igc_hw *hw = &adapter->hw;
>> +
>> +	if ((rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
>> +	    adapter->taprio_offload_enable)
>> +		return true;
>> +	else
>> +		return false;
> 
> As per my response to patch 2/4, I think something like this is a bit
> nicer:
> 
> (Completely untested!)
> 
> 	return (rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
> 		adapter->taprio_offload_enable;
> 
> 

Will update, thanks.

