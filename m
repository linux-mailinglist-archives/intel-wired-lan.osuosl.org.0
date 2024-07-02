Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5BF91ECC4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2024 03:40:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92A8740CAF;
	Tue,  2 Jul 2024 01:40:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lkRtKpSRAZ_O; Tue,  2 Jul 2024 01:40:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D48F40C87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719884430;
	bh=FIBmnD3Sc54ff3umUNjvwRbuNCvtNScvjVLGv8IRcu8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xf298DnKtOkWFvy20zz7WSCHCdoopD89SU1wZd12wbVAXKJmtAVhxdtVcE2UymvfV
	 FwwmM/9r5pzgY73mx2EYw/ioyQwpw0MfjclB2LRvrOkSLwQBTTtBhlIsflfcHM0ZLd
	 L90HGXRyTthyr2XtlH/X7AgP0n9IOETPdemMkXvc64az/dSA80TOomOxGYEAhno1Db
	 ENCsjEIF8pz99b8neBkfBSMehotiNmBkLJrpAWa6ZKZ3NQ/+T6ZsLxO6pQi5+iw4HE
	 3q5o89Smvl9mOznAQST2nGBTJt0x1F3cN81PDga8/96/eF3L3dCaFAIEYJcaDxn/yU
	 7vwJGmsQDwzLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D48F40C87;
	Tue,  2 Jul 2024 01:40:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BDB691BF575
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 01:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A98004036E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 01:40:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s7GZpaXS-M-G for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2024 01:40:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2119400C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2119400C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2119400C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2024 01:40:25 +0000 (UTC)
X-CSE-ConnectionGUID: SFNqZ/vETSmMqx3i9uXEew==
X-CSE-MsgGUID: 9gM7uEhjQjCFP9vKVF5GGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="28170610"
X-IronPort-AV: E=Sophos;i="6.09,177,1716274800"; d="scan'208";a="28170610"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 18:40:25 -0700
X-CSE-ConnectionGUID: bZfVIyY8QFmgdJ7w841ySA==
X-CSE-MsgGUID: KN3DL8ezQbWFQVfa63X4LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,177,1716274800"; d="scan'208";a="50168557"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.38.161])
 ([10.247.38.161])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 18:40:21 -0700
Message-ID: <d14d14ec-2d86-46f4-9a70-6a1cd3b016c5@linux.intel.com>
Date: Tue, 2 Jul 2024 09:40:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240701100058.3301229-1-faizal.abdul.rahim@linux.intel.com>
 <e981261e-77be-407b-b601-f7214a4f57dd@molgen.mpg.de>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <e981261e-77be-407b-b601-f7214a4f57dd@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719884427; x=1751420427;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3rWIcEBuDquwT65mdmMptUDstbXhoHxLkzl2I+eVtbE=;
 b=hfB1M0yWM3fgvKu+1Sy0Y5gUK1bbQBHi6/+Xp1HHNchm4aOgCMegQzdK
 1x3nQMjYvnEcby0hvYH7CENyMYsl8bmp4UjdfLgcNxeZmPBtjYzGjZKey
 IMw19UOfEiSBLPddDY48R2Udc8iwOu32a1xtTOGbiHwXcphWEKy9ZvabM
 TA7x3E0/jpP5CEHq5Kr5n3IXsfgJ4DBpzjXMmVP7swxPdxo7g7zZTZM9F
 xdTq9z2KjKcoJ/ZrbPYCHZgMBHPLaNGSdOXXF2e9KvHHoG4AWucvDcZyY
 5uyRqEdOdDrxmVBFhKI1jU1M4hTOc6FeudE6RmBiWG4BFKwyOXVcDHxcR
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hfB1M0yW
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Fix packet still
 tx after gate close by reducing i226 MAC retry buffer
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

Thanks for reviewing.

On 1/7/2024 8:42 pm, Paul Menzel wrote:
> Dear Faizal,
> 
> 
> Thank you for your patch.
> 
> Am 01.07.24 um 12:00 schrieb Faizal Rahim:
>> AVNU testing uncovered that even when the taprio gate is closed,
>> some packets still transmit.
> 
> What is AVNU? *some* would fit on the line above.

AVNU stands for "Avnu Alliance." AVNU (Audio Video Bridging Network 
Alliance) is an industry consortium that promotes and certifies 
interoperability of devices implementing IEEE 802.1 standards for 
time-sensitive applications.

This AVNU test refers to AVNU certification test plan.
Should I add this information in the commit ?

>> A known i225/6 hardware errata states traffic might overflow the planned
> 
> Do you have an idea for that errata? Please document it. (I see you added 
> it at the end. Maybe use [1] notation for referencing it.)

Sure.

>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> 
> As you Cc’ed stable@vger.kernel.org, add a Fixes: tag?

Accidentally CC'ed stable@vger.kernel.org.
Since it's a hardware bug, not software, probably Fixes: tag not needed ?
Not sure which Fixes: commit to point to hmm.

I'll remove stable kernel email and omit Fixes: tag, is that okay?

>>   /* Returns the TSN specific registers to their default values after
>>    * the adapter is reset.
>>    */
>> @@ -91,6 +100,9 @@ static int igc_tsn_disable_offload(struct igc_adapter 
>> *adapter)
>>       wr32(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);
>>       wr32(IGC_DTXMXPKTSZ, IGC_DTXMXPKTSZ_DEFAULT);
>> +    if (igc_is_device_id_i226(hw))
>> +        igc_tsn_restore_retx_default(adapter);
>> +
>>       tqavctrl = rd32(IGC_TQAVCTRL);
>>       tqavctrl &= ~(IGC_TQAVCTRL_TRANSMIT_MODE_TSN |
>>                 IGC_TQAVCTRL_ENHANCED_QAV | IGC_TQAVCTRL_FUTSCDDIS);
>> @@ -111,6 +123,25 @@ static int igc_tsn_disable_offload(struct 
>> igc_adapter *adapter)
>>       return 0;
>>   }
>> +/* To partially fix i226 HW errata, reduce MAC internal buffering from 
>> 192 Bytes
>> + * to 88 Bytes by setting RETX_CTL register using the recommendation from:
>> + * a) Ethernet Controller I225/I22 Specification Update Rev 2.1
>> + *    Item 9: TSN: Packet Transmission Might Cross the Qbv Window
>> + * b) I225/6 SW User Manual Rev 1.2.4: Section 8.11.5 Retry Buffer Control
>> + */
>> +static void igc_tsn_set_retx_qbvfullth(struct igc_adapter *adapter)
> 
> It’d put threshold in the name.

My earlier thought is that it is easier to look for the keyword "qbvfullth" 
in the i226 SW User Manual where you'll get a hit that brings you directly 
to that register. "qbvfullthreshold" would not.
There are some comments in the new code that links 'th' to 'threshold' for 
the reader.

But I'm okay to change it to "qbvfullthreshold".
Thoughts?

Regards,
Faizal
