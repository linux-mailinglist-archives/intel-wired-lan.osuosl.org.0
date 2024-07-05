Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 117E5928C7F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jul 2024 18:52:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6634D410C4;
	Fri,  5 Jul 2024 16:52:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LsU7P8X4VsEO; Fri,  5 Jul 2024 16:52:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB511410C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720198359;
	bh=lHeWm0g27BZX9tG0a9ZxnrA2MYsATR4owGAKXKSuep0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SGw4UvcpJ7lmisljT4gAecmCREVI4UdgWHCmAV/HmMk2CbcBFoaOolDmbJhSlPIFZ
	 fLE4+FFhiFsAkX6LVC3lVv44UT4m+hgYo2spYAP/QW5CrhN6ETLt92UbTFH18eZ68/
	 wJopo9vMO/icr4xBTYYOvBgTWDtnJ2/GYPJkFNVRXwFpV2UDh0muKEOT0gOct+sVrZ
	 +4scUJv4lx16kE9P7uE2JOzaO7V42bT79yKPyQKxXvGzWN0DofdFUlgh2IFqAF4vN9
	 ZJp4fTULg6wcvjxXTjOTKtNAc/6LmGcC5BhCwaS1kVs1Kjspir6BG5ee0pSd9g7RM7
	 G7jUZ6vUm8azg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB511410C5;
	Fri,  5 Jul 2024 16:52:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 654961BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 16:52:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51144410D1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 16:52:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ba2WtN3rA1GT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jul 2024 16:52:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 72A5B410A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72A5B410A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72A5B410A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 16:52:35 +0000 (UTC)
X-CSE-ConnectionGUID: chKl+2r9QHeUdCFB/mlBBQ==
X-CSE-MsgGUID: V+m8g/pPTo6EIO4fBIvJfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17628329"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17628329"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 09:52:35 -0700
X-CSE-ConnectionGUID: BPtgV7+XSzyw7zOf+zxruw==
X-CSE-MsgGUID: 3AUomb7nSEuFS8hAk75H7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="47659166"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.38.162])
 ([10.247.38.162])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 09:52:32 -0700
Message-ID: <89ffac90-0293-4621-8178-99120af354ef@linux.intel.com>
Date: Sat, 6 Jul 2024 00:52:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
 <20240702040926.3327530-3-faizal.abdul.rahim@linux.intel.com>
 <20240703150318.GN598357@kernel.org>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20240703150318.GN598357@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720198357; x=1751734357;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bVhBpudNHtT6aZemL1Hlw4OKJZa6uNcfbc/AzBjAcHA=;
 b=fi48t4Bkf3UhBXW+UTlTMBQvNqdVzU6DeEIPov24lD02hXAKRBFuvBCS
 tT1rUAb/bj2x+lh+NaShZSOJOG6dJ4EzrsK7uTA/+/NyMGsXxa7UOCIEq
 Q/7X/a2TteTMBxUYQHGXnaSYtRjYq3JzkTBDaiyZamykBZDR5bsfc85+C
 lghvfKunE/Gwsjh0fbc+8JtsbpfaWf3ihH7CjdC4GGsyvGqwQ8Gii3Ymd
 8iKgr/zQh2aCcnBAnTQNLdqSoPEMWm1OWYxlQWh0gUWZaAsla7eqfM0V5
 ojQdRFcwSKJ6fZFKh+Z2y+TbDbPoPCPh+z6i6GR5vIcgpzA/9zNx4pjim
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fi48t4Bk
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/4] igc: Fix reset adapter
 logics when tx mode change
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
 intel-wired-lan@lists.osuosl.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


>> ---
>>   drivers/net/ethernet/intel/igc/igc_tsn.c | 26 +++++++++++++++++++++---
>>   1 file changed, 23 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> index 02dd41aff634..61f047ebf34d 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> @@ -49,6 +49,13 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
>>   	return new_flags;
>>   }
>>   
>> +static bool igc_tsn_is_tx_mode_in_tsn(struct igc_adapter *adapter)
>> +{
>> +	struct igc_hw *hw = &adapter->hw;
>> +
>> +	return (bool)(rd32(IGC_TQAVCTRL) & IGC_TQAVCTRL_TRANSMIT_MODE_TSN);
> 
> Perhaps it is more a question of taste than anything else.
> But my preference, FIIW, is to avoid casts.
> And I think in this case using !! is a common pattern.
> 
> (Completely untested!)
> 
> 	return !!(rd32(IGC_TQAVCTRL) & IGC_TQAVCTRL_TRANSMIT_MODE_TSN);
> 

Sure, will update.

>> +
>> +	if ((any_tsn_enabled && !igc_tsn_is_tx_mode_in_tsn(adapter)) ||
>> +	    (!any_tsn_enabled && igc_tsn_is_tx_mode_in_tsn(adapter)))
>> +		return true;
>> +	else
>> +		return false;
> 
> Likewise, this is probably more a matter of taste than anything else.
> But I think this could be expressed as:
> 
> (Completely untested!)
> 
> 	return (any_tsn_enabled && !igc_tsn_is_tx_mode_in_tsn(adapter)) ||
> 		(!any_tsn_enabled && igc_tsn_is_tx_mode_in_tsn(adapter));
> 
> Similarly in the previous patch of this series.
> 

Will update, your suggestion is better, lesser parenthesis.
Thanks.
