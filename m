Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QoxXL/0LPWpvwQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 13:07:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AD86C4FAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 13:07:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=iHuxF6LJ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C614B60FF4;
	Thu, 25 Jun 2026 11:07:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EyhN8KIRbMx0; Thu, 25 Jun 2026 11:07:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BDAB60FF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782385659;
	bh=LBJd4hckXEGhE1VzwzoaIqo8jZmiF3akNu/sLTNhBjU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iHuxF6LJxSN+ZMolGjE2j5RMQ4BuEYoSA/GEWbEuJE45sZWusdhqMTH/10YLcTyos
	 zOvjYhYttHmqKWylekSfISF/EzC8Z6ySLKbmuCQk74myggAq+pu9XWZQH3LkHMH0I5
	 i2pN0rHLb6JMn7T6z94LLJ7U7fKDJGtmxiWoJp2O4pC3FYA8uUPeNjroM3sYzDKBqe
	 +Pu7jUZAJPvQexkRtQOoiZIbzi7rVvII3BirjhfyXAfOx+1SHRYOPRetK5oTTxzvPc
	 ZWPkLvDHjUcAu4pKu2YKMWB18cUMP3i2MMiR/BbX7sFVAImwrb01a7M/5iClTQKhSN
	 5JQB3XRJOWqcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BDAB60FF7;
	Thu, 25 Jun 2026 11:07:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E33618F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 11:07:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 33C4C4106A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 11:07:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4BeWADg9pqtx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 11:07:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 662594057B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 662594057B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 662594057B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 11:07:36 +0000 (UTC)
X-CSE-ConnectionGUID: xITUixQ0Tz2IXG/ah0/AbQ==
X-CSE-MsgGUID: Ubw1zD8jSkmXaFVs4qiPUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="93515288"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="93515288"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 04:07:36 -0700
X-CSE-ConnectionGUID: UBL7DbuESgmqSE+sM3lTCg==
X-CSE-MsgGUID: 9cqH5KWLSAODmTeGA7j2lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="250755331"
Received: from mszycik-desk.igk.intel.com (HELO [10.217.160.239])
 ([10.217.160.239])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 04:07:32 -0700
Message-ID: <f9a090bd-08ea-47e6-8dee-cf4f828fdced@linux.intel.com>
Date: Thu, 25 Jun 2026 13:07:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Florian Bezdeka <florian.bezdeka@siemens.com>,
 "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 Ding Meng <meng.ding@siemens.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "Kiszka, Jan" <jan.kiszka@siemens.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "wq.wang@siemens.com" <wq.wang@siemens.com>
References: <20260622041718.6106-1-meng.ding@siemens.com>
 <BL1PR11MB59796B99C5A7709B07000D68F3EE2@BL1PR11MB5979.namprd11.prod.outlook.com>
 <d058b0fa9ad923514084a44f51c78ae8355c4ebb.camel@siemens.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <d058b0fa9ad923514084a44f51c78ae8355c4ebb.camel@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782385657; x=1813921657;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1DKzcgPw0xfGQ3vVU4fzu+gAjQMxLf9uPhSMmZQA5UA=;
 b=J/Yw3+JwqtVQ8nchoez8ceYdz08Aslw/pgpLWlXPF1BjnAf/boEQQ4hQ
 d+sCceTskwc/PDRKksvm/xh5BbL2j6popwosgjmKsao2N7RPuSkJz9Q5e
 cx86M0D3OsdKoBpAY2yAXEGXZv40/lJ8ug+WcssKU5T3terUiGNKINB+A
 crO1Jgh7E644+2q7cSTvbTHuRWBPZtbHJwSUsCvLaP8SNQ7pcMiB8Vz0d
 jMErPi0bzIZBCeQYcaICWgghfTE1avOVTtekDuqa81lcuYW6uvPRoBTYa
 JLOfCRli5y3iC6yIWOdK9p2NuGZ6AC0YLARa+gpWT9OOqqGwKFJE/Http
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J/Yw3+Jw
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix RX HW timestamp
 reporting when NET_RX_BUSY_POLL is disabled
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:florian.bezdeka@siemens.com,m:piotr.kwapulinski@intel.com,m:meng.ding@siemens.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jan.kiszka@siemens.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:wq.wang@siemens.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39AD86C4FAB



On 24/06/2026 11:05, Florian Bezdeka via Intel-wired-lan wrote:
> On Tue, 2026-06-23 at 09:46 +0000, Kwapulinski, Piotr wrote:
>>> -----Original Message-----
>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ding Meng via Intel-wired-lan
>>> Sent: Monday, June 22, 2026 6:13 AM
>>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Kiszka, Jan <jan.kiszka@siemens.com>; Bezdeka, Florian <florian.bezdeka@siemens.com>
>>> Cc: intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org; netdev@vger.kernel.org; meng.ding@siemens.com; wq.wang@siemens.com
>>> Subject: [Intel-wired-lan] [PATCH net] igc: Fix RX HW timestamp reporting when NET_RX_BUSY_POLL is disabled
>>>
>>> When CONFIG_NET_RX_BUSY_POLL is deactivated, fetching RX HW timestamps from the NIC no longer works as expected.
>>>
>>> This occurs because disabling CONFIG_NET_RX_BUSY_POLL disables the SKB NAPI mapping in __skb_mark_napi_id(). Consequently, get_timestamp() fails to perform its driver lookup, and the igc driver's struct net_device_ops::ndo_get_tstamp is never invoked.
>>>
>>> Instead, get_timestamp() falls back to use shhwtstamps(skb)->hwtstamp, a field that the driver has not populated.
>>>
>>> Fix this by populating the hwtstamp field with the correct timestamp in the default timer when CONFIG_NET_RX_BUSY_POLL is disabled.
>>>
>>> Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
>>> Co-developed-by: Florian Bezdeka <florian.bezdeka@siemens.com>
>>> Signed-off-by: Florian Bezdeka <florian.bezdeka@siemens.com>
>>> Signed-off-by: Ding Meng <meng.ding@siemens.com>
>>> ---
>>> drivers/net/ethernet/intel/igc/igc_main.c | 38 ++++++++++++++++-------
>>> 1 file changed, 26 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>>> index 8ac16808023..1da8d7aa76d 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>> @@ -1992,7 +1992,26 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
>>> 	return skb;
>>> }
>>>
>>> -static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
>>> +static void igc_construct_skb_timestamps(struct igc_adapter *adapter,
>>> +					 struct sk_buff *skb,
>>> +					 struct igc_xdp_buff *ctx)
>>> +{
>>> +	if (!ctx->rx_ts)
>>> +		return;
>>> +#ifdef CONFIG_NET_RX_BUSY_POLL
>>> +	skb_shinfo(skb)->tx_flags |= SKBTX_HW_TSTAMP_NETDEV;
>>> +	skb_hwtstamps(skb)->netdev_data = ctx->rx_ts; #else
>>> +	struct igc_inline_rx_tstamps *tstamps;
>> Please move at the top of the function and add:
> 
> That would trigger a "unused variable" warning in the
> CONFIG_NET_RX_BUSY_POLL case.

Put it under #ifndef CONFIG_NET_RX_BUSY_POLL. Variable declarations
need to be on top.

Thanks,
Marcin

> Btw: I was really confused that the #else statement moved to the end of
> the previous line. Might someone be using a wrongly configured mail
> client here?
> 
> Florian
> 
>> Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com
>>
>>> +
>>> +	tstamps = ctx->rx_ts;
>>> +	skb_hwtstamps(skb)->hwtstamp = igc_ptp_rx_pktstamp(adapter,
>>> +							   tstamps->timer0);
>>> +#endif
>>> +}
>>> +
> 
> [snip]

