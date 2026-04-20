Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKjmGnab5WlvmAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 05:20:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0685042688F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 05:20:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD6CD4043C;
	Mon, 20 Apr 2026 03:20:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q-CECtkU5cPX; Mon, 20 Apr 2026 03:20:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26EA940483
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776655218;
	bh=CDbOcpEpwlCoe+cmcL5MxKFYd9FeAbNUbUef9MdqyjY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cd3Tws+r3mH72JwD3Mww9QTGrEcWGUYLJ11/2DH0755bb5OGnXaX3S7PJDHxIMXwP
	 Gj4evswaLGkPokAAfo0I7bZuRb4kRYyNj+HDYblPvfekrA/rRDtIzhe69qEQMn+7l4
	 LKWpebtnpv0rDTY9bokpQg7yLlWeXyww6ucM9R3jSW8sjsPXTf6zWXQ89Uq+nQVota
	 IqmgPg8fKlUGwxSFHAgKLyiJa/emYjAhlb/zCg2SEkjF09rKbc1OVnYYtLrsXXvld2
	 WVJEJtXZTmSQGImc0z30XIpWjb6WUF4+VIxDrSm7mBk1nmsKUxexyIPYF2OLec5OMF
	 ASnO3U3x7D9WQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26EA940483;
	Mon, 20 Apr 2026 03:20:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DB108355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 03:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CCA81404EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 03:20:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VMReus_E_Cf3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 03:20:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 61FD44018B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61FD44018B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 61FD44018B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 03:20:15 +0000 (UTC)
X-CSE-ConnectionGUID: eI4SSgJnS5myW+Y5Vnb4pA==
X-CSE-MsgGUID: UXeC/2seRbGjrA+0kJrMxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="89032151"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="89032151"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2026 20:20:14 -0700
X-CSE-ConnectionGUID: qPAi+K2FSGeq+PDZXEyAuw==
X-CSE-MsgGUID: eNtEGU/+Shq84y5c6COEFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="231880747"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.8.237])
 ([10.247.8.237])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2026 20:20:11 -0700
Message-ID: <3481ae84-5c36-4591-94c1-78b70fff4d7b@linux.intel.com>
Date: Mon, 20 Apr 2026 11:20:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, khai.wen.tan@linux.intel.com
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 faizal.abdul.rahim@intel.com, hong.aun.looi@intel.com, khai.wen.tan@intel.com
References: <20260416015520.6090-4-khai.wen.tan@linux.intel.com>
 <20260418164837.380985-2-horms@kernel.org>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20260418164837.380985-2-horms@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776655216; x=1808191216;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=I96x05WWbxNDXdYnL1sEhcmWSmBoa7yu/uYaLcjrTYE=;
 b=Dgj2nrWv/oNhUfvezmbOV1vr9UfQ6lED1Lef+03Lux5P6bbjcb5vXl+e
 KwZZdYQ5uRJCPwoXwcXnVUCYsFaq7gMy7Yy5o03Z7iOn0UglcNClDcU5B
 GXSPTz/RrcnYx+gRImicGxSxiJdK4QPE5uvWdhCy6eeFoGuiv/pSG1+g1
 KXDe8TOU+0rUwks6kK6fGCivr43J/7EfezIqwOTMWuOzmNvsJjtGpgI/Y
 LUeaVB8WsyBIZazgqhPfHSv5zELdun0KQjYtpGhU9607uIxo5yCPOe8ec
 EZaD/AQ6NRmt/YK/2Fh6jvU1JB9apRpxHTTrvFo/cxJ77o/2OgfJtMCkH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Dgj2nrWv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igc: add support for
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
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_SENDER(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
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
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0685042688F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 19/4/2026 12:48 am, Simon Horman wrote:
> From: 'Simon Horman' <horms@kernel.org>
> 
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> Full review at: https://sashiko.dev
> ---
> igc: add support for forcing link speed without autonegotiation
> 
> This commit adds support to allow users to force 10/100 Mb/s link speed
> and duplex via ethtool when autonegotiation is disabled.
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index cfcbf2fdad6ea..5bd37d1be1688 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> 
> [ ... ]
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
>> +	if (duplex == DUPLEX_HALF)
>> +		adapter->hw.fc.requested_mode = igc_fc_none;
>> +}
> 
> If userspace issues an ethtool command without specifying duplex, the duplex
> value can be DUPLEX_UNKNOWN. In this case, forced_speed_duplex correctly
> defaults to half-duplex since duplex == DUPLEX_FULL evaluates to false.
> 
> However, since DUPLEX_UNKNOWN is not equal to DUPLEX_HALF, the check above
> fails, and the requested flow control mode remains unchanged. Could this leave
> flow control enabled on a forced half-duplex link, violating IEEE 802.3?
> Should this check be based on the resolved mac->forced_speed_duplex state
> instead?
>

You're right, thanks for pointing that out.

That said, it feels simpler to address it with [1]:
if (duplex != DUPLEX_FULL)
     adapter->hw.fc.requested_mode = igc_fc_none;

Rather than [2]:
  if (mac->forced_speed_duplex == IGC_FORCED_10H ||
         mac->forced_speed_duplex == IGC_FORCED_100H)
         adapter->hw.fc.requested_mode = igc_fc_none;

Are you okay with [1] ?

> [ ... ]
> 
>> @@ -2071,14 +2120,20 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
>>   		}
>>   	}
>>   
>> +	if (cmd->base.autoneg == AUTONEG_DISABLE &&
>> +	    cmd->base.speed != SPEED_10 && cmd->base.speed != SPEED_100) {
>> +		netdev_info(dev, "Unsupported speed for forced link\n");
>> +		return -EINVAL;
>> +	}
>> +
>>   	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>>   		usleep_range(1000, 2000);
> 
> This isn't a bug introduced by this patch, but does this ad-hoc
> synchronization using bit flags circumvent proper locking guarantees? The
> networking subsystem guidelines forbid using bit flags as ad-hoc locks.
> 
> Using a bit flag in a polling loop bypasses lockdep analysis, fairness, and
> strict memory ordering. Could this be replaced with a real synchronization
> mechanism like a mutex?

It looks like a worthwhile cleanup. However, it likely doesn’t belong in 
this series, since the synchronization pattern predates these patches and 
is used throughout the igc driver (set_ringparam, set_pauseparam, 
set_channels, etc.). We could address it in different patch series and 
align the other code paths at the same time ?

