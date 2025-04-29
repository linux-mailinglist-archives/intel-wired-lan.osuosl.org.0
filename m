Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5002CAA00A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Apr 2025 05:37:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA494406CE;
	Tue, 29 Apr 2025 03:37:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b_ba63lsGfVx; Tue, 29 Apr 2025 03:37:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4966A40704
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745897868;
	bh=HALOzhLbIm859voq5URFLigXl+gxcW4DLmGei1jJ/aQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qQbZqnbVs/F9Dk/a1zxyfkYUEDe/Se48vwHbZ1pinHiEzoptpTuE2zG4MyrsbDMeg
	 hHJCZTTmDLpk7tuuKldH0Fi65LPvmzWD/+7LAcOAggU9gIRdbtE3C4xFfeX4Rv8/TR
	 vEjzRblywOWv/QYLLce6xvBCwrdvpfo3sktX2ZtZcKcUP/NFnnV4xY+TCTCFOQnd+k
	 r76Ce8Pol/LoXW+2LdVtMeUkeA7K/7tsr2D0Zhzld8fJ+hUHnvRusD2kiQfiqE9DZ/
	 Yp8vd4/uZV2Cgf+QH86VUC8s2cWsKCddsTO2mD0bX+qxJT1ljKI7Su2mYFht8jJPVs
	 NWpr6++YdeJVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4966A40704;
	Tue, 29 Apr 2025 03:37:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C92F1E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 03:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 530D98100C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 03:37:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qkaPqRaUxrp1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Apr 2025 03:37:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9B5D380FA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B5D380FA2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B5D380FA2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 03:37:45 +0000 (UTC)
X-CSE-ConnectionGUID: pvQYZ7SuSqiP/wak+SbrKw==
X-CSE-MsgGUID: thqQSY7jS0i5H8Wzk6sc1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58873357"
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="58873357"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 20:37:44 -0700
X-CSE-ConnectionGUID: HAZIXdtSQjWvHz2KC+mD2w==
X-CSE-MsgGUID: lsT1kMi0R9KOe9J+zJsXpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="156932034"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.22.166])
 ([10.247.22.166])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 20:37:42 -0700
Message-ID: <549c15f4-8bdf-4823-ae2d-95d2861325d3@linux.intel.com>
Date: Tue, 29 Apr 2025 11:37:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chwee-Lin Choong <chwee.lin.choong@intel.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
 <20250428060225.1306986-3-faizal.abdul.rahim@linux.intel.com>
 <524a13fa-eca1-4741-aa70-265a10cf96cb@intel.com>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <524a13fa-eca1-4741-aa70-265a10cf96cb@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745897865; x=1777433865;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Lw15oqLnhXwkvSM1IfzQNus6FFUCQ7g9dkiYGODFx+s=;
 b=HnwXSCt9uw/2hlXqRg70D64qSBmufhPhErjCljmUXnCuXuSHE/YMYNrx
 PUYZA4kXVi+iaUZqqTe+sO/7L0uuJRr/pmjdr7USZx/aXPFqTIJLq5Kq/
 3VUYIXvpctTdmEUcMTkpsJoZxJnIuQHvqpocG3Mdlb2VxoMo7xpJ58OQ8
 9EguSJ9r7VPOLATI+I3YXFRBaiG9zxc3EG+vurD4jUJGq44RIV4NFcX29
 idBEF5kF2K2A2rYFM1Ll5u0etX9pSQFv51jFfqUqR5vGR8OSBOoDcKBC3
 5Kz3z1N7sDhfdN3Xcb+UcGFtxPpLmyiR6Aad7Wwfk3Ev+ZIhrng3V/qe2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HnwXSCt9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/8] igc: add TXDCTL
 prefix to related macros
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



On 28/4/2025 2:57 pm, Ruinskiy, Dima wrote:
> On 28/04/2025 9:02, Faizal Rahim wrote:
>> Rename macros to include the TXDCTL_ prefix for consistency and clarity.
>> This aligns naming with the register they configure and improves code
>> readability.
>>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc.h      | 6 +++---
>>   drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
>>   2 files changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/ 
>> intel/igc/igc.h
>> index e9d180eac015..bc37cc8deefb 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -487,10 +487,10 @@ static inline u32 igc_rss_type(const union 
>> igc_adv_rx_desc *rx_desc)
>>    */
>>   #define IGC_RX_PTHRESH            8
>>   #define IGC_RX_HTHRESH            8
>> -#define IGC_TX_PTHRESH            8
>> -#define IGC_TX_HTHRESH            1
>> +#define IGC_TXDCTL_PTHRESH        8
>> +#define IGC_TXDCTL_HTHRESH        1
>>   #define IGC_RX_WTHRESH            4
>> -#define IGC_TX_WTHRESH            16
>> +#define IGC_TXDCTL_WTHRESH        16
>>   /* Additional Transmit Descriptor Control definitions */
>>   /* Ena specific Tx Queue */
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ 
>> ethernet/intel/igc/igc_main.c
>> index 27575a1e1777..725c8f0b9f3d 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -749,9 +749,9 @@ static void igc_configure_tx_ring(struct igc_adapter 
>> *adapter,
>>       wr32(IGC_TDH(reg_idx), 0);
>>       writel(0, ring->tail);
>> -    txdctl |= IGC_TX_PTHRESH;
>> -    txdctl |= IGC_TX_HTHRESH << 8;
>> -    txdctl |= IGC_TX_WTHRESH << 16;
>> +    txdctl |= IGC_TXDCTL_PTHRESH;
>> +    txdctl |= IGC_TXDCTL_HTHRESH << 8;
>> +    txdctl |= IGC_TXDCTL_WTHRESH << 16;
>>       txdctl |= IGC_TXDCTL_QUEUE_ENABLE;
>>       wr32(IGC_TXDCTL(reg_idx), txdctl);
> 
> If you do this, I think you should apply the same change to the RXDCTL 
> macros that are right next to the TXDCTL ones. Otherwise you are trading 
> one inconsistency for another. :)

Will update

