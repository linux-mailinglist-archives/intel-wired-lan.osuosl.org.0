Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2D3A5BA62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 09:04:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 458354084A;
	Tue, 11 Mar 2025 08:04:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jRJKwhKb0LhT; Tue, 11 Mar 2025 08:04:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69375406A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741680246;
	bh=hMeLmrfySK9HcB5JMfLT2WMRmznMQ67haaYLvUJji9M=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yzX/+u63B5gwMIzOMI2dhASopKY8GZjVYNA1+3VW05v7aFQ9syppGctdg50q9Ut7O
	 Xetxw4GW7o0mj0kF8PjgsZUYJEH5sHTuzegkWmHiFfERgWrg/5uFxGQbgdmmMVjb85
	 aiAB96XBXoVpcqgchy7KrNfud9II+HQiJQmzDfAm0Hc+eLVa3n5msefmGvwipTC7So
	 cOXD/BmoWTmNpgsh69V6+vYdzxbYCREeBHHyjm0AXPBVxWTQH7PbP1eCLNsFN1lrNb
	 zeDYzgJy2oX+fPO5wowq/xEnwtqPAI4ZN+HVfGoiPuxzZxbc1vxRJNzwszoJwEZjHx
	 vIn0jIDMhFmnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69375406A0;
	Tue, 11 Mar 2025 08:04:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 80DD41DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 08:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C2FF40569
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 08:04:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c03K9kabfv5Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 08:04:03 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 520EF40B49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 520EF40B49
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 520EF40B49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 08:04:03 +0000 (UTC)
X-CSE-ConnectionGUID: v27/QgdBTvWpfQaiZHp/sA==
X-CSE-MsgGUID: +Tjta4vaSSqYmRPikjpRDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42578404"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42578404"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 01:04:02 -0700
X-CSE-ConnectionGUID: /dr7UqHmQAqqV9hHUp+3Bg==
X-CSE-MsgGUID: +NRjllwISn6ESt2MUCIVjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125292705"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.64.210])
 ([10.247.64.210])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 01:03:59 -0700
Message-ID: <5ebcf4b7-ed17-4cd6-ba1d-c35562a32899@linux.intel.com>
Date: Tue, 11 Mar 2025 16:03:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250307150231.pc3dl4aavb2vdp7i@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250307150231.pc3dl4aavb2vdp7i@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741680243; x=1773216243;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Wwj9xuWqFgi4/fNw7ALhUHz5l5PslVh8FksuTOaW3K4=;
 b=maBd35oxw3RseZGjeuYqe4YkGItRxBqPQePTyzjeHAfq2zoy6+jjHJOx
 DMt9uKpFzeeCA8onwWNpAZyKDmmbmEozrlVlgnlTKFjz3IGKkjefa7Q2z
 2vCI7GD7Y6I6+Uk6u3RPcOaNvUurnsOd02FmG42QwVtPmX3RzJM2pMLcI
 RBYp02rBeGN8z28vz7Gw6YUTJHWAZcvbFmW2IR2rlxe/MN7bKSVZ5y1cT
 +WF8hiOMR+pRu9lFcNQ4dKK4MGbqGDIKLz2+7DJq7yUawrZfbAltwZPtM
 unNPq9xEJrrYcWsTlFMqvdGUFVUKiOKQjBO0TLU4tDmj7KfZzMIXH1dwo
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=maBd35ox
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Change Tx mode for
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



On 7/3/2025 11:02 pm, Vladimir Oltean wrote:
> On Mon, Mar 03, 2025 at 10:16:33AM +0100, Kurt Kanzenbach wrote:
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
>> index cd1d7b6c1782352094f6867a31b6958c929bbbf4..16d85bdf55a7e9c412c47acf727bca6bc7154c61 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -388,11 +388,9 @@ extern char igc_driver_name[];
>>   #define IGC_FLAG_RX_LEGACY		BIT(16)
>>   #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
>>   #define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
>> -#define IGC_FLAG_TSN_LEGACY_ENABLED	BIT(19)
>>   
>>   #define IGC_FLAG_TSN_ANY_ENABLED				\
>> -	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED |	\
>> -	 IGC_FLAG_TSN_LEGACY_ENABLED)
>> +	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED)
> 
> How do you and Faizal plan to serialize your changes on these flags?
> You delete IGC_FLAG_TSN_LEGACY_ENABLED and he adds
> IGC_FLAG_TSN_PREEMPT_ENABLED.

 From what I’ve experienced before, when there’s a conflict like this, the 
Intel maintainer handles it and gets both authors to review the resolution 
(this has happened to both of us before) before they proceed to submit the 
patch.

But if one patch gets merged first, the other person can just rebase and 
submit a new version ?

