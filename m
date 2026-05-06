Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGSTNeDe+mmGTgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 08:25:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E0E4D6915
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 08:25:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED43581F93;
	Wed,  6 May 2026 06:25:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lC1QbR4VAw3U; Wed,  6 May 2026 06:25:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E02081F5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778048734;
	bh=8dwksJ7CqZ+NxWtFT0I7GRrjXfYemxEecUr5fwiWZDE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DLMyDPiuYbLVockS3Q4A4rCs3bAmdboksZjFouaSb1Q9AzqUt//LYyZs4leCV+mf0
	 1uLqFYcN+2F7+9diwMFXi0UZq7QmK/LohIzdC35/CEyerWimSOZUhZoKiO3iDHJTwk
	 6jJnlvjNgRZWBhu9kAwNNvTzs3g+OaxGdGez1KNmK78l6DxepnU4DEnDRebFeoTrnS
	 6ce4MsKmvx/GwbuA6w+3t4QdmhKLalC1ewB8IG71gBvRjAhYBzNa/o+a9JA0i00REH
	 DZAzyPOqy6wJfOaNFV3NQFNxGu9sqTkLMt0F+GuTLKYBvlD8djn2zK4iCTaHwGStZV
	 F0d1R8Yee+qdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E02081F5B;
	Wed,  6 May 2026 06:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B86222A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 06:25:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DEF781D5C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 06:25:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dLLMp3Zk9gSd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 06:25:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 60C10811E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60C10811E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 60C10811E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 06:25:29 +0000 (UTC)
X-CSE-ConnectionGUID: OVs52t2LRKa3x2o5YKguNQ==
X-CSE-MsgGUID: 61c2JZYKQ8KVQy3j/hV2Vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="78995679"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="78995679"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 23:25:29 -0700
X-CSE-ConnectionGUID: HrPAXSirRGapphNQmPPsnQ==
X-CSE-MsgGUID: nrdfDvlkRbupitL8MziVjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="235181845"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.37.237])
 ([10.247.37.237])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 23:25:26 -0700
Message-ID: <16b18088-8fe3-4a38-9eb9-d39842e6b94f@linux.intel.com>
Date: Wed, 6 May 2026 14:25:23 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, khai.wen.tan@linux.intel.com
Cc: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, faizal.abdul.rahim@intel.com,
 hong.aun.looi@intel.com, khai.wen.tan@intel.com
References: <20260428060009.311393-4-khai.wen.tan@linux.intel.com>
 <20260430135057.1653330-1-horms@kernel.org>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20260430135057.1653330-1-horms@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778048730; x=1809584730;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=R4bPcjPlqNPWP683/yZmV5MoC5B7pmWZIA6XXvjemv0=;
 b=AY8Q68c9doVXd8zmzG/6L0aL9GFlGi1ze8HbxfG0N0+drf0uXmpmLf9E
 m6mZUiRX60HmxInI7e+zXI1nHihrMotg6ElcXwS+7yUiD+JNKolIsUN1g
 P7kfnuTPE9uAxI0j/kShw5Ahb2cAMaD+RLG28e2mChXeNPY7isMGUw/vS
 ABFIb8QsvtWhK0ssqAyrOveKXIIk1ItVNMSO6UxAT1rq5ZUY6eW7HeyUg
 s98rEivzbLMWdIUo+sRnGvGLLjSjzaAX2o//KP17SixrjEATKGqtHtBps
 18HFcmF/NlrMV5XLL0Nh84KFKAdWJlT4usyw8hvd1Qr5gYnpNUkO7Dh29
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AY8Q68c9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/3] igc: add support for
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
X-Rspamd-Queue-Id: 63E0E4D6915
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



On 30/4/2026 9:50 pm, Simon Horman wrote:
> From: 'Simon Horman' <horms@kernel.org>
> 
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> Full review at: https://sashiko.dev
> ---
> igc: add support for forcing link speed without autonegotiation
> 
> This commit allows users to force 10/100 Mb/s link speed and duplex via
> ethtool when autonegotiation is disabled. Previously, the driver rejected
> these requests.
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index cfcbf2fdad6e..9997ebbdf778 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> [ ... ]
>> @@ -2000,6 +2013,41 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>>  	return 0;
>>  }
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
> 
> Does this permanently overwrite the user's flow control preference?
> 
> If half-duplex is requested, requested_mode is set to igc_fc_none. Because
> requested_mode represents the persistent state for the user's flow control
> preference, the user might permanently lose their configuration. If they later
> switch back to full-duplex, requested_mode remains igc_fc_none, and flow
> control stays disabled.
> 
> Would it be better to dynamically override hw->fc.current_mode to
> igc_fc_none during link configuration instead of mutating requested_mode?
> 

Yes you're right, thanks, will update.

>> +}
> [ ... ]
>> @@ -2071,14 +2126,20 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
>>  		}
>>  	}
>>  
>> +	if (cmd->base.autoneg == AUTONEG_DISABLE &&
>> +	    cmd->base.speed != SPEED_10 && cmd->base.speed != SPEED_100) {
>> +		netdev_info(dev, "Unsupported speed for forced link\n");
>> +		return -EINVAL;
>> +	}
>> +
> 
> Should we also validate cmd->base.duplex here to prevent a fallback to
> half-duplex?
> 
> If a user runs a command like "ethtool -s eth0 speed 100 autoneg off" while
> the link is down, ethtool queries and preserves the current duplex value,
> which is DUPLEX_UNKNOWN (0xff).
> 
> In igc_handle_autoneg_disabled(), the code checks if duplex == DUPLEX_FULL,
> which evaluates to false, and forces the interface to 100 Mbps half-duplex.
> 
> Could we explicitly check that cmd->base.duplex is either DUPLEX_HALF or
> DUPLEX_FULL and return -EINVAL otherwise?

Will update.

> 
>>  	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>>  		usleep_range(1000, 2000);
> 
> This isn't a bug introduced by this patch, but does this ad-hoc
> synchronization loop reimplement locking without fairness or lockdep support?
> 
> According to the Networking Subsystem Guidelines, using bit operations as a
> substitute for real locks violates core kernel locking rules and introduces
> potential races.
> 
> Could this be replaced with a proper concurrency mechanism such as a mutex?
> 

Hi Simon, you've raised this issue in v2, and after discussion, you've
agreed that this change doesn't belong in this patch series.

Not sure if I missed anything?

>>  
>> -	if (cmd->base.autoneg == AUTONEG_ENABLE) {
>> +	if (cmd->base.autoneg == AUTONEG_ENABLE)
>>  		igc_handle_autoneg_enabled(adapter, cmd);
>> -	} else {
>> -		netdev_info(dev, "Force mode currently not supported\n");
>> -	}
>> +	else
>> +		igc_handle_autoneg_disabled(adapter, cmd->base.speed,
>> +					    cmd->base.duplex);
>>  
>>  	/* MDI-X => 2; MDI => 1; Auto => 3 */
>>  	if (cmd->base.eth_tp_mdix_ctrl) {
> 

