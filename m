Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eD/zLNAx72mb8wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 11:52:16 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CC647029C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 11:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0516242FA6;
	Mon, 27 Apr 2026 09:52:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id caLTAP-OAodd; Mon, 27 Apr 2026 09:52:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72C0C42FA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777283532;
	bh=M/pzGvVGrNFpZ3dVBpPAwuC6pUaefR8kUoPSDtUsQxk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RUUFDT4I5ERS430ehQORtwFQ4O6ed6c+ZorK1MIJZSaoEfNYlnMAWGlKvxzoW8irK
	 iar2NZvi+ArM4XSq7lq+1FafYvucfA0DSjloHhCOWYx5/2HO8yESqFTwRN74uiphTx
	 OcpoIRlaVkCWLl75JFFoABGitePprAaoa8qU56xaL6gmTtP06T5WIoE2wgcLvuOCaK
	 jRzo3e8SRRYgn7eW72j9xObfY3wopGvUE4uW1yw6tP4iJjAtvoJ6lbvnlTnFV3bXgq
	 kb6PPdwb6uhvjqCu02EnuA/aZS9H+9BH5jHeGZ9Gkh2a+7HGcaIuJxQ1ImisQRp1VD
	 lOmBuAINvx4zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72C0C42FA9;
	Mon, 27 Apr 2026 09:52:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 588742DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:52:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 49F4F6F63A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:52:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9So3lqQt6pZG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 09:52:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 260716F639
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 260716F639
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 260716F639
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:52:09 +0000 (UTC)
X-CSE-ConnectionGUID: SeshNYMITjuodeDYAI7UDQ==
X-CSE-MsgGUID: J7JBLw61Q4q/gKNhZWNgQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="81775653"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="81775653"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 02:52:10 -0700
X-CSE-ConnectionGUID: x6YF+sgUTPGQwgPOysOEng==
X-CSE-MsgGUID: 34g8Pw/aRW+Zn8ka784p5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="237916743"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.80.101])
 ([10.247.80.101])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 02:52:05 -0700
Message-ID: <7b10fe32-4f3f-4473-ae69-82af901b7a1f@linux.intel.com>
Date: Mon, 27 Apr 2026 17:52:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, KhaiWenTan <khai.wen.tan@linux.intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 faizal.abdul.rahim@intel.com, hong.aun.looi@intel.com,
 khai.wen.tan@intel.com, Looi@web.codeaurora.org
References: <20260422155701.7420-1-khai.wen.tan@linux.intel.com>
 <20260422155701.7420-4-khai.wen.tan@linux.intel.com>
 <20260424135958.GL900403@horms.kernel.org>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20260424135958.GL900403@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777283531; x=1808819531;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3ScpVu6cd+qG8bDqwMH9nLLo7ljJEm+ttcCR8fkeroc=;
 b=a6SVi89vkph6/WFn8Dq5/hhxoQ/66kskwvooO6I/9IqJS193TRniB9ME
 V8jJJKUhMgGX0IWCYVpOotjrZdvFimQTA3pFQAuP1jZ6UzcvxPpOXSg+d
 bXlkzRnyHasXgQlP4Rk4vnpTJfGXiBTJlrJmAYlQUvp9qiHqNXIfx/fab
 tlqSngRuvrl2D3rx4TqFaOD/RPniU2WMqsk07Mq4fySTlENfktdvOr1EU
 L7a7cUr+80MJ4xjePbZ3c8SzaEABjckzj4Q4MmPN4I8beXLxtbiip7Kwg
 DFkIJkzzPypBZ7X9qphLG1fdq51UkGrOIlrDGNIZZDO0vhI4C1+AXhNOr
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a6SVi89v
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/3] igc: add support for
 forcing link speed without autonegotiation
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
X-Rspamd-Queue-Id: 71CC647029C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:Looi@web.codeaurora.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linux.intel.com:mid,osuosl.org:dkim];
	FORGED_SENDER(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[140.211.166.137:from];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



On 24/4/2026 9:59 pm, Simon Horman wrote:
> On Wed, Apr 22, 2026 at 11:57:01PM +0800, KhaiWenTan wrote:
>> From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>
>> Allow users to force 10/100 Mb/s link speed and duplex via ethtool
>> when autonegotiation is disabled. Previously, the driver rejected
>> these requests with "Force mode currently not supported.".
>>
>> Forcing at 1000 Mb/s and 2500 Mb/s is not supported.
>>
>> Reviewed-by: Looi, Hong Aun <hong.aun.looi@intel.com>
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> Signed-off-by: KhaiWenTan <khai.wen.tan@linux.intel.com>
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> 
> ...
> 
>> @@ -2000,6 +2013,41 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>>   	return 0;
>>   }
>>   
>> +/**
>> + * igc_handle_autoneg_disabled - Configure forced speed/duplex settings
>> + * @adapter: private driver structure
>> + * @speed: requested speed (must be SPEED_10 or SPEED_100)
>> + * @duplex: requested duplex
>> + *
>> + * Records forced speed/duplex when autoneg is disabled.
>> + * Caller must validate speed before calling this function.
>> + */
>> +static void igc_handle_autoneg_disabled(struct igc_adapter *adapter, u32 speed,
>> +					u8 duplex)
>> +{
>> +	struct igc_mac_info *mac = &adapter->hw.mac;
>> +
>> +	switch (speed) {
>> +	case SPEED_10:
>> +		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
>> +			IGC_FORCED_10F : IGC_FORCED_10H;
>> +		break;
>> +	case SPEED_100:
>> +		mac->forced_speed_duplex = (duplex == DUPLEX_FULL) ?
>> +			IGC_FORCED_100F : IGC_FORCED_100H;
>> +		break;
>> +	default:
>> +		WARN_ONCE(1, "Unsupported speed %u\n", speed);
>> +		return;
>> +	}
>> +
>> +	mac->autoneg_enabled = false;
>> +
>> +	/* Half-duplex cannot support flow control per IEEE 802.3 */
>> +	if (duplex != DUPLEX_FULL)
>> +		adapter->hw.fc.requested_mode = igc_fc_none;
>> +}
>> +
>>   /**
>>    * igc_handle_autoneg_enabled - Configure autonegotiation advertisement
>>    * @adapter: private driver structure
>> @@ -2038,6 +2086,7 @@ static void igc_handle_autoneg_enabled(struct igc_adapter *adapter,
>>   						  10baseT_Half))
>>   		advertised |= ADVERTISE_10_HALF;
>>   
>> +	hw->mac.autoneg_enabled = true;
>>   	hw->phy.autoneg_advertised = advertised;
>>   	if (adapter->fc_autoneg)
>>   		hw->fc.requested_mode = igc_fc_default;
>> @@ -2071,14 +2120,20 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
>>   		}
>>   	}
>>   
>> +	if (cmd->base.autoneg == AUTONEG_DISABLE &&
>> +	    cmd->base.speed != SPEED_10 && cmd->base.speed != SPEED_100) {
>> +		netdev_info(dev, "Unsupported speed for forced link\n");
>> +		return -EINVAL;
>> +	}
> 
> The condition above verifies speed only if autoneg is AUTONEG_DISABLE.
> 
>> +
>>   	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>>   		usleep_range(1000, 2000);
>>   
>> -	if (cmd->base.autoneg == AUTONEG_ENABLE) {
>> +	if (cmd->base.autoneg == AUTONEG_ENABLE)
>>   		igc_handle_autoneg_enabled(adapter, cmd);
>> -	} else {
>> -		netdev_info(dev, "Force mode currently not supported\n");
>> -	}
>> +	else
>> +		igc_handle_autoneg_disabled(adapter, cmd->base.speed,
>> +					    cmd->base.duplex);
> 
> But here igc_handle_autoneg_disabled, which relies on speed having been
> verified, is called if autoneg is not AUTONEG_ENABLE.
> 
> If autoneg is AUTONEG_DISABLE here, then all is good.
> But if it is neither AUTONEG_DISABLE nor AUTONEG_ENABLE then we
> are in trouble.
> 
> I suggest verifying autoneg is either AUTONEG_ENABLE or AUTONEG_DISABLE
> earlier in this function.

Will update, thanks.
