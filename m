Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 804CBAA009C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Apr 2025 05:37:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 343A0403BB;
	Tue, 29 Apr 2025 03:37:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7xw94gzXTaDN; Tue, 29 Apr 2025 03:37:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A2F8403EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745897825;
	bh=8/vIV67PmACAkGn6XKFeocjiUfJ9TpwART6PyHAiWmA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bwixnokikJ34MgImzqreFel8KF55W7fFjNsdl0NVhB5MR/3to9AHv+vPoFrZhkBkx
	 Gl6cJ2Zv0K4zlU2+Y2ofDvslYaX/fKhuaZbYKQNDfQu40/vrq78451RSUXgDCsPLpo
	 VMJiLOh6lRGUQ/mUHVat5tURmPvNc025bCtbVVQPj6f0O4hllvd4eTHIpBQqGXOHfO
	 FXK5mBz3ivXAYqy32BWbfnZWB9pqaSAq2EQ1xzHL1RfRJJgWIkDCC1GRW8SEwkgVUU
	 ut7f3q3u6aHg9h6upy16qBF1ZCSmB17QYcXuTCMNyNgkDd9NzL5QKzJo9WfuWl0wIS
	 S21E3SmlBVqwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A2F8403EC;
	Tue, 29 Apr 2025 03:37:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A92A11E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 03:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8FD5540198
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 03:37:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QrUYzCavofZN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Apr 2025 03:37:04 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 93421400C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93421400C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93421400C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 03:37:03 +0000 (UTC)
X-CSE-ConnectionGUID: QV12eqQjSnOAsaOdL6fEpw==
X-CSE-MsgGUID: nYybN2o2Tb2l491C+f98GA==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="47598867"
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="47598867"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 20:37:02 -0700
X-CSE-ConnectionGUID: 0qgXs45zTyKuUWwhvF7+ug==
X-CSE-MsgGUID: 5bB2k/8qQU22LGzgpyvGdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="156932012"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.22.166])
 ([10.247.22.166])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 20:37:00 -0700
Message-ID: <dd046c43-1491-4d2c-b4f2-5946ac55441e@linux.intel.com>
Date: Tue, 29 Apr 2025 11:36:43 +0800
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
 <20250428060225.1306986-2-faizal.abdul.rahim@linux.intel.com>
 <cabea2f2-49f7-40f8-a305-2c102ceb4012@intel.com>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <cabea2f2-49f7-40f8-a305-2c102ceb4012@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745897824; x=1777433824;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=J8ow/rnNH8xEu4UhfA9BOL3uvWtte0jR7ktfsoarV38=;
 b=Xs/2bTbedEA6iJ9Lgj2j/wNTy/F/BtWeO0BT7fFvSHojoqhzTsYVxkMI
 T+cKF68XD7ZVxT2LyGhGjjMMJphAzTJr4N48iKLuJrOZ8N1xNGkMxsg7y
 HLc8V2vGNjM1KEceEHuXseYaO2zm2f7klSyYsJxEoA5gc9b0Ml8ZZi0QR
 gLykejDJynwnVARny+I1//F3fQKdbWu+JbvXYsAhKby+wbijipjan3vTY
 xvMDflWcAAssPtqA/UWXROGss2uzV6Uzkn9BNBFodOdI7XMZFyPslcrF3
 FS8z7kWuMJUEyEdyyLii0/tWfvbZtTtKNEr4r8VlyAUUg1cf6LpxQeps5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xs/2bTbe
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/8] igc: move
 IGC_TXDCTL_QUEUE_ENABLE and IGC_TXDCTL_SWFLUSH
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



On 28/4/2025 3:01 pm, Ruinskiy, Dima wrote:
> On 28/04/2025 9:02, Faizal Rahim wrote:
>> Consolidate TXDCTL-related macros for better organization and readability.
>>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc.h      | 6 ++++++
>>   drivers/net/ethernet/intel/igc/igc_base.h | 4 ----
>>   2 files changed, 6 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/ 
>> intel/igc/igc.h
>> index 859a15e4ccba..e9d180eac015 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -492,6 +492,12 @@ static inline u32 igc_rss_type(const union 
>> igc_adv_rx_desc *rx_desc)
>>   #define IGC_RX_WTHRESH            4
>>   #define IGC_TX_WTHRESH            16
>> +/* Additional Transmit Descriptor Control definitions */
>> +/* Ena specific Tx Queue */
>> +#define IGC_TXDCTL_QUEUE_ENABLE    0x02000000
>> +/* Transmit Software Flush */
>> +#define IGC_TXDCTL_SWFLUSH    0x04000000
>> +
>>   #define IGC_RX_DMA_ATTR \
>>       (DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING)
>> diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ 
>> ethernet/intel/igc/igc_base.h
>> index 6320eabb72fe..4a56c634977b 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_base.h
>> +++ b/drivers/net/ethernet/intel/igc/igc_base.h
>> @@ -86,10 +86,6 @@ union igc_adv_rx_desc {
>>       } wb;  /* writeback */
>>   };
>> -/* Additional Transmit Descriptor Control definitions */
>> -#define IGC_TXDCTL_QUEUE_ENABLE    0x02000000 /* Ena specific Tx Queue */
>> -#define IGC_TXDCTL_SWFLUSH    0x04000000 /* Transmit Software Flush */
>> -
>>   /* Additional Receive Descriptor Control definitions */
>>   #define IGC_RXDCTL_QUEUE_ENABLE    0x02000000 /* Ena specific Rx Queue */
>>   #define IGC_RXDCTL_SWFLUSH        0x04000000 /* Receive Software Flush */
> 
> Is there an intrinsic value for moving these definitions from one H file to 
> another? And if so, why move the Tx defs and leave the Rx defs where they are?

Hi Dima,

I moved and refactored the TXDCTL macros because this patch series
modifies the TXDCTL register, specifically setting new bitfields.
Consolidating `IGC_TXDCTL_QUEUE_ENABLE` and `IGC_TXDCTL_SWFLUSH`
alongside the existing TXDCTL macros improves readability and makes it
easier to cross-reference the TXDCTL bitfield mapping, as documented in
Section 8.11.16 of the i226 Software User Manual. The grouping now
matches that layout directly:

#define IGC_TXDCTL_PTHRESH_MASK       GENMASK(4, 0)
#define IGC_TXDCTL_HTHRESH_MASK        GENMASK(12, 8)
#define IGC_TXDCTL_WTHRESH_MASK        GENMASK(20, 16)
#define IGC_TXDCTL_QUEUE_ENABLE_MASK   GENMASK(25, 25)
#define IGC_TXDCTL_SWFLUSH_MASK        GENMASK(26, 26)
#define IGC_TXDCTL_PRIORITY_MASK       GENMASK(27, 27)

Since RXDCTL is a separate register with its own bitfield mapping
section in the i226 Software User Manual, and this patch series does
not modify it, I left the RXDCTL macros untouched. They are used
independently in separate functions within the driver.

That said, I can move the RXDCTL macros as well for consistency.

