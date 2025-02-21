Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14016A3F091
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 10:39:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA27E81228;
	Fri, 21 Feb 2025 09:39:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OXZOX0g5UWdg; Fri, 21 Feb 2025 09:39:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3F7E8114D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740130756;
	bh=Y3XbXtPDOSQc3Ud9gYAOTQNFm76FYGOTsYqGLsAJFmI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nZe13vFHPk8uGdApl1VrGd+3yFbq4OIMvK61X2CG9hhbi5IJTzqAeq7bSMP6EHKnX
	 +BWQ3t3eTFFK2OM2e1hZrsFE6wNeM2oOjl7pfrQJ6kfALKPvg8iEWj2SdpOn6m+EeF
	 TEJzpH6gSXGhuI8RNnUqauh1WqRTy77Q3tiNnUsF4F3B+aPYXbTMUSRXwFRMkXWyhl
	 LQ3ExH5IRc9WTP4TDSRKwR2z6YJmiG1pTMtMkSF4fHIv27JcHhDco6CQjZXMnGLkI1
	 FdZl06W6HCILx9GBgvyBdwgYgPqRoaGWEgOFmS9FCox+j7mHICghabpV87QIkSgb1+
	 ErR4zcCA3xCSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3F7E8114D;
	Fri, 21 Feb 2025 09:39:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 12EE3194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:39:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0200260703
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:39:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u8jq0KTTs-UR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 09:39:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1430560619
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1430560619
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1430560619
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:39:12 +0000 (UTC)
X-CSE-ConnectionGUID: nkg36b2LTeS0hseXIOIJKw==
X-CSE-MsgGUID: tX2k6r3rT5a9Wp9egs9Qgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52374636"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52374636"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 01:39:12 -0800
X-CSE-ConnectionGUID: sCJgPV6FSh+R2T0LS+EcWA==
X-CSE-MsgGUID: BNtqYb15R5CPtswph0+OVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="115276416"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.60.175])
 ([10.247.60.175])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 01:39:09 -0800
Message-ID: <d831ac5e-96b9-47de-93ed-3d4f10a8b2aa@linux.intel.com>
Date: Fri, 21 Feb 2025 17:39:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250217-igc_mqprio_tx_mode-v1-1-3a402fe1f326@linutronix.de>
 <6ff37238-ff0e-43c9-a88d-1258fd4ce7ef@linux.intel.com>
 <87wmdj8ydu.fsf@kurt.kurt.home>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <87wmdj8ydu.fsf@kurt.kurt.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740130753; x=1771666753;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ypHSjeMhvEL6lzT/9gZtGZLdCaUojf6hRPWXsKHq6cA=;
 b=MtaTkVs2XTGkFiJQ2GLjGnchnSppr0b1CGZ+gDzEmQ4twh/7UFVcz2GM
 TWsh8P70ad0KjwdM7bN+L9zPjxsBOjHZFBaBJGJEg4/O0my1VchvEOukp
 Mc9Fql3YND2rA4Xp7N8ywQJtNvjQZQqNARVh4HcPP/YPsqnwj/w0rGwD7
 knDX7MDlJ1HYxJWdpgiu7zyM9zJLSL6RmqD9vRL9KrTnhZbGPEgDzp3Ri
 mFU11BgkUX60kj/imrHm450yDWaOZVYcm5v5ZSmfzPGgsiW5Go2sj3yPH
 5S929ppexpIZemUWe6d9EQtnzIrarAbdqsDoLPgH64gzG83sCWACufe8V
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MtaTkVs2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Change Tx mode for
 MQPRIO offloading
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


>>> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
>>> index 1e44374ca1ffbb86e9893266c590f318984ef574..6e4582de9602db2c6667f1736cc2acaa4d4b5201 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
>>> @@ -47,7 +47,7 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
>>>    		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
>>>    
>>>    	if (adapter->strict_priority_enable)
>>> -		new_flags |= IGC_FLAG_TSN_LEGACY_ENABLED;
>>> +		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
>>>    
>>>    	return new_flags;
>>>    }
>>
>> IGC_FLAG_TSN_QBV_ENABLED is set multiple times in different lines:
>>
>> 	if (adapter->taprio_offload_enable)
>> 		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
>>
>> 	if (is_any_launchtime(adapter))
>> 		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
>>
>> 	if (is_cbs_enabled(adapter))
>> 		new_flags |= IGC_FLAG_TSN_QAV_ENABLED;
>>
>> 	if (adapter->strict_priority_enable)
>> 		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
>>
>> 	return new_flags;
>> }
>>
>> We can combine the conditions to simplify:
>> 	if (adapter->taprio_offload_enable ||
>>               is_any_launchtime(adapter) ||
>>               adapter->strict_priority_enable)
>> 		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
> 
> Sure.
> 
> Should I send a v2 or do you want to carry this patch in your next fpe
> series?

I think you can go ahead with v2. It shouldn’t conflict much with the next 
fpe series, and if my future series gets stalled, at least yours won’t be 
affected.
