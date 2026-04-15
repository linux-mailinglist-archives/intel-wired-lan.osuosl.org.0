Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHgnBnpO32nLRgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 10:38:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F02D5402120
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 10:38:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D4696F7F1;
	Wed, 15 Apr 2026 08:38:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KTl0KsjO6GzG; Wed, 15 Apr 2026 08:38:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6994E6F7D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776242294;
	bh=o2NGFgfPn6EU9KE6meJqj6NiC/YABatJ5iB6FIwagpg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UeXhdPhe/mOfe6auj95NZtLRE02Vi9hKZoHEl2MyQTTZ6Ry2OxdNB1HA+YVnWJD7j
	 ka2A3Seeg3SJc0TMwKg1ul49rXsdklY+7Q9v9BBo+607RJ9jNkyi3ZkAQOdEO+W+1R
	 RkmNGIQpXphCKU8WS4Q7FSaeMYxF/6ETsi/550bhFEkez+Oujvkvf/2DqFkJUWWoQb
	 p6XbmSwcQfcD/Q28KJEFHT2HpVVx95kVyPpJcTx00mEiw/xN2zXcKY0ep+IiN0K8+Y
	 NPwAnChyQfS5AFWHmgz+qh6ZVsConCnrFhZQN/sZnq7EYRLTBGoW3EortfqGIhDLUu
	 jcjTJqrz5MiAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6994E6F7D7;
	Wed, 15 Apr 2026 08:38:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3326F237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 08:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 248B16F77A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 08:38:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQScOVT5u3AU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 08:38:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C80BB6F7D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C80BB6F7D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C80BB6F7D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 08:38:11 +0000 (UTC)
X-CSE-ConnectionGUID: 9IxUt9jUR228+y8BUme/HQ==
X-CSE-MsgGUID: GfbKZs5aRqaGWOffKL5nbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="87914970"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="87914970"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 01:38:11 -0700
X-CSE-ConnectionGUID: T4ArbB4xS227m+HZRmDGeQ==
X-CSE-MsgGUID: DIzosRa5RXmyFA6P+VAa2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="223857364"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.20.182])
 ([10.247.20.182])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 01:38:06 -0700
Message-ID: <f1c6f5d0-61a7-4866-b122-ce18933d92eb@linux.intel.com>
Date: Wed, 15 Apr 2026 16:37:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, khai.wen.tan@linux.intel.com
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 faizal.abdul.rahim@intel.com, hector.blanco.alcaine@intel.com,
 hong.aun.looi@intel.com, khai.wen.tan@intel.com
References: <20260409072747.217836-1-khai.wen.tan@linux.intel.com>
 <20260413145215.718532-1-horms@kernel.org>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20260413145215.718532-1-horms@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776242292; x=1807778292;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+E24YrPrdzJ1ya9Ikgcx0KKiXJaJ4AYDwwErZxu5fG0=;
 b=WB4Rty8REWJYIHweme5mBnXmrcnwcaDDRIPu+fkQKIh74+9fG6jC9hzR
 yh7ce+lRmUtO88cZq7GkKdTYEjJD2mmTCj3tNJS7DwNzqzvvPscSn/kCC
 9/2tNjJV45rhGjt3sDEkYLmSL2MHqEKk98LYlRDN4npkuiJdvLKATrgIh
 rX8KVDEfVW9LPBRFYrKTLACmpAG9vVVY+Ojfr5pyzj6bMYidIAuyWwurg
 iARpIEQ9GXrlfCaWjSDcEWlc65I9/qELy7hP0hWqkcyRp4cnjbXRJJ+hv
 CyDFw1sAeALbiRbfk+0M6gN8W+f20liplklUhLxSwutwUhj3UuRoPCzVo
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WB4Rty8R
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/1] igc: add support for
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hector.blanco.alcaine@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F02D5402120
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 13/4/2026 10:52 pm, Simon Horman wrote:
> From: 'Simon Horman' <horms@kernel.org>
> 
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> Full review at: https://sashiko.dev
> ---
> igc: add support for forcing link speed without autonegotiation
> 
> This commit allows forcing 10/100 Mb/s link speed and duplex settings via
> ethtool when autonegotiation is disabled. It configures the MAC CTRL and
> PHY registers to bypass autonegotiation and apply the requested settings.
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index 0122009bedd03..e14771532dad8 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> [ ... ]
>> +static int igc_handle_autoneg_disabled(struct net_device *netdev, u32 speed,
>> +				       u8 duplex)
>> +{
>> +	struct igc_adapter *adapter = netdev_priv(netdev);
>> +	struct igc_mac_info *mac = &adapter->hw.mac;
>> +	enum igc_forced_speed_duplex forced_speed_duplex;
>>   
>> +	switch (speed) {
>> +	case SPEED_10:
>> +		forced_speed_duplex = (duplex == DUPLEX_FULL) ? IGC_FORCED_10F : IGC_FORCED_10H;
>> +		break;
>> +	case SPEED_100:
>> +		forced_speed_duplex = (duplex == DUPLEX_FULL) ? IGC_FORCED_100F : IGC_FORCED_100H;
>> +		break;
> 
> Does forcing a half-duplex configuration here also require setting flow
> control to none (e.g., hw->fc.requested_mode = igc_fc_none)?
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
>> index 7ac6637f8db73..16b0f2db06896 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
>> @@ -452,7 +452,7 @@ s32 igc_config_fc_after_link_up(struct igc_hw *hw)
>>   	 * so we had to force link.  In this case, we need to force the
>>   	 * configuration of the MAC to match the "fc" parameter.
>>   	 */
>> -	if (mac->autoneg_failed)
>> +	if (mac->autoneg_failed || !mac->autoneg_enabled)
>>   		ret_val = igc_force_mac_fc(hw);
> 
> If mac->autoneg_enabled is false, igc_force_mac_fc() will configure the MAC
> using the existing hw->fc.current_mode. If current_mode defaults to full flow
> control, this will enable PAUSE frames.
> 
> Since autonegotiation is disabled, the MII status check further down in this
> same function will fail and return early:
> 
> drivers/net/ethernet/intel/igc/igc_mac.c:igc_config_fc_after_link_up() {
>      ...
>      if (!(mii_status_reg & MII_SR_AUTONEG_COMPLETE)) {
>          hw_dbg("Copper PHY and Auto Neg has not completed.\n");
>          goto out;
>      }
>      ...
> }
> 
> This early return skips the half-duplex safety check at the end of
> igc_config_fc_after_link_up() which would normally clear the flow control
> settings:
> 
> drivers/net/ethernet/intel/igc/igc_mac.c:igc_config_fc_after_link_up() {
>      ...
>      if (duplex == HALF_DUPLEX)
>          hw->fc.current_mode = igc_fc_none;
> 
>      ret_val = igc_force_mac_fc(hw);
>      ...
> }
> 
> Does this leave the MAC incorrectly configured to send and receive PAUSE
> frames on a half-duplex link, violating the IEEE 802.3 specification?

Hi Simon,
Thanks for the review.

Yes, you're right, I missed that interaction.

I’ll update the code to also set the following in 
igc_handle_autoneg_disabled() when forcing half‑duplex:
hw->fc.requested_mode = igc_fc_none

I’ll test it and, if everything looks good, send out v2.

Thanks again!



