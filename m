Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 903ACA436AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 08:57:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 435FD811FE;
	Tue, 25 Feb 2025 07:57:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SAeC0ExHHBDS; Tue, 25 Feb 2025 07:57:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E793B811EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740470245;
	bh=72ApxW9zFAs1aHCQofOdfvyr3ZTuES6jyEc36ski0+s=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wCHVdCco0fGTswpvv99O4j4TqVpwImV8RSaSR2uurWDkOUunuXmvUit9bCelffPrq
	 MIQmk4CSB5SuSQBlPX+MS4ZazAxM1HJmm83cthMjNsZoi6amijOdizEuHrpCknOfQ9
	 j3E5Pik5WJG+77b1lFepuKhxd+zwSx9Ir8FmgdGC/d6nDWOHvebg3LsgaDa/45nPxi
	 +RriiaBYmu7wyT3eJu7V+Jcu/uTRDeE50QAF9z5jgYPvua7p6Eic2YphDRSMOzH0nX
	 mjyQqgjsFVSV6p0bpxasY1Fu7weqjU8cRbkJajrt42SU5wRZDvqZSyo80eeh0XhuIV
	 TX0SyJE7dTcmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E793B811EE;
	Tue, 25 Feb 2025 07:57:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D75292019
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 07:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4C59406E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 07:57:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZmI-1m_onjuM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 07:57:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2F1BB40613
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F1BB40613
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F1BB40613
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 07:57:21 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
In-Reply-To: <SJ0PR11MB5866961675179ABD23E97B2AE5C02@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250224-igc_mqprio_tx_mode-v2-1-9666da13c8d8@linutronix.de>
 <SJ0PR11MB5866961675179ABD23E97B2AE5C02@SJ0PR11MB5866.namprd11.prod.outlook.com>
Date: Tue, 25 Feb 2025 08:57:17 +0100
Message-ID: <87v7syzcbm.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1740470239;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=72ApxW9zFAs1aHCQofOdfvyr3ZTuES6jyEc36ski0+s=;
 b=dHkZIqm+lqEHlbZFaPWcEUl2z/gvILqA8IWLQmjXMQTuvC0O7K/RIA1oOjGfqXe7DnGVrW
 LWEQ8nNfVmjNaxKSD+EmPSnDsjirB1i1vtyp8SwDwbzKHEYrneIrCtRC6+xHdqrwMn5sfP
 bUWg0Q0WIPbse10/qmlBWFhYMRlojctuQOOmJRL+QcdWDdLRLI9hAYt8e17KVhEL6FUhij
 Vl0lteVq6y3DXB97BZ4ypKBXXF5i1gSajBExKRcGXNX6xYkh2+fhbIZaAfKq3RWldzi194
 wLEli5iJ0F9ZucFJZALDYuiXrerMmDeg0Wr99SsRBU+7r0/jBp4Z/5cdf9dPLw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1740470239;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=72ApxW9zFAs1aHCQofOdfvyr3ZTuES6jyEc36ski0+s=;
 b=Ea3VNurFXJ/F7pTBQsrU0181SMciY0RtVsOGcHRGuYGsHsqvSp5gtU4vZs5xfBpDAyB9YF
 KFo0WA8paK5Ld/BQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=dHkZIqm+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=Ea3VNurF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Change Tx mode for
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

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Mon Feb 24 2025, Loktionov, Aleksandr wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Kurt Kanzenbach
>> Sent: Monday, February 24, 2025 11:05 AM
>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Faizal Rahim
>> <faizal.abdul.rahim@linux.intel.com>
>> Cc: Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
>> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
>> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Sebastian
>> Andrzej Siewior <bigeasy@linutronix.de>; intel-wired-lan@lists.osuosl.or=
g;
>> netdev@vger.kernel.org; Kurt Kanzenbach <kurt@linutronix.de>
>> Subject: [Intel-wired-lan] [PATCH iwl-next v2] igc: Change Tx mode for
>> MQPRIO offloading
>>=20
>> The current MQPRIO offload implementation uses the legacy TSN Tx mode. In
>> this mode the hardware uses four packet buffers and considers queue
>> priorities.
>>=20
>> In order to harmonize the TAPRIO implementation with MQPRIO, switch to
>> the regular TSN Tx mode. In addition to the legacy mode, transmission is
>> always coupled to Qbv. The driver already has mechanisms to use a dummy
>> schedule of 1 second with all gates open for ETF. Simply use this for MQ=
PRIO
>> too.
>>=20
>> This reduces code and makes it easier to add support for frame preemption
>> later.
>>=20
>> While at it limit the netdev_tc calls to MQPRIO only.
>>=20
>> Tested on i225 with real time application using high priority queue, ipe=
rf3
>> using low priority queue and network TAP device.
>>=20
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>> Changes in v2:
>> - Add comma to commit message (Faizal)
>> - Simplify if condition (Faizal)
>> - Link to v1: https://lore.kernel.org/r/20250217-igc_mqprio_tx_mode-v1-1-
>> 3a402fe1f326@linutronix.de
>> ---
>>  drivers/net/ethernet/intel/igc/igc.h      |  4 +---
>>  drivers/net/ethernet/intel/igc/igc_main.c | 18 +++++++++++++-
>> drivers/net/ethernet/intel/igc/igc_tsn.c  | 40 ++-----------------------=
------
>>  3 files changed, 20 insertions(+), 42 deletions(-)
>>=20
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h
>> b/drivers/net/ethernet/intel/igc/igc.h
>> index
>> cd1d7b6c1782352094f6867a31b6958c929bbbf4..16d85bdf55a7e9c412c4
>> 7acf727bca6bc7154c61 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -388,11 +388,9 @@ extern char igc_driver_name[];
>>  #define IGC_FLAG_RX_LEGACY		BIT(16)
>>  #define IGC_FLAG_TSN_QBV_ENABLED	BIT(17)
>>  #define IGC_FLAG_TSN_QAV_ENABLED	BIT(18)
>> -#define IGC_FLAG_TSN_LEGACY_ENABLED	BIT(19)
>>=20
>>  #define IGC_FLAG_TSN_ANY_ENABLED				\
>> -	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED |
>> 	\
>> -	 IGC_FLAG_TSN_LEGACY_ENABLED)
>> +	(IGC_FLAG_TSN_QBV_ENABLED | IGC_FLAG_TSN_QAV_ENABLED)
>>=20
>>  #define IGC_FLAG_RSS_FIELD_IPV4_UDP	BIT(6)
>>  #define IGC_FLAG_RSS_FIELD_IPV6_UDP	BIT(7)
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index
>> 3044392e8ded8619434040b9ccaa6b1babdbf685..0f44b0a6c166ae8aa798
>> 93ea87f706be5d94397c 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -6678,13 +6678,14 @@ static int igc_tsn_enable_mqprio(struct
>> igc_adapter *adapter,
>>  				 struct tc_mqprio_qopt_offload *mqprio)  {
>>  	struct igc_hw *hw =3D &adapter->hw;
>> -	int i;
>> +	int err, i;
>>=20
>>  	if (hw->mac.type !=3D igc_i225)
>>  		return -EOPNOTSUPP;
>>=20
>>  	if (!mqprio->qopt.num_tc) {
>>  		adapter->strict_priority_enable =3D false;
>> +		netdev_reset_tc(adapter->netdev);
>>  		goto apply;
>>  	}
>>=20
>> @@ -6715,6 +6716,21 @@ static int igc_tsn_enable_mqprio(struct
>> igc_adapter *adapter,
>>  	igc_save_mqprio_params(adapter, mqprio->qopt.num_tc,
>>  			       mqprio->qopt.offset);
>>=20
>> +	err =3D netdev_set_num_tc(adapter->netdev, adapter->num_tc);
>> +	if (err)
>> +		return err;
>> +
>> +	for (i =3D 0; i < adapter->num_tc; i++) {
>> +		err =3D netdev_set_tc_queue(adapter->netdev, i, 1,
>> +					  adapter->queue_per_tc[i]);
>> +		if (err)
>> +			return err;
>> +	}
>> +
>> +	/* In case the card is configured with less than four queues. */
>> +	for (; i < IGC_MAX_TX_QUEUES; i++)
>> +		adapter->queue_per_tc[i] =3D i;
>> +
>>  	mqprio->qopt.hw =3D TC_MQPRIO_HW_OFFLOAD_TCS;
>>=20
>>  apply:
>> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
>> b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> index
>> 1e44374ca1ffbb86e9893266c590f318984ef574..7c28f3e7bb576f0e6a21c8
>> 83e934ede4d53096f4 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> @@ -37,18 +37,13 @@ static unsigned int igc_tsn_new_flags(struct
>> igc_adapter *adapter)  {
>>  	unsigned int new_flags =3D adapter->flags &
>> ~IGC_FLAG_TSN_ANY_ENABLED;
>>=20
>> -	if (adapter->taprio_offload_enable)
>> -		new_flags |=3D IGC_FLAG_TSN_QBV_ENABLED;
>> -
>> -	if (is_any_launchtime(adapter))
>> +	if (adapter->taprio_offload_enable || is_any_launchtime(adapter) ||
>> +	    adapter->strict_priority_enable)
> Isn't  sequence of:
> if (adapter->taprio_offload_enable || adapter->strict_priority_enable || =
is_any_launchtime(adapter))
> faster statistically?

I don't think it's faster, because it is unlikely that
strict_priority_enable is true. Most people do use taprio or
etf. Thanks.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAme9d90THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzghXuD/9bsBocShN9qZPz0pyZolow3dawuE7Y
GnrOd8xQPvlcdYN7f4Q/+wGd4d15gCAi+scc8vcnVbA9uiATzk0fxHTn5v9zWIrU
R9SfRvKJ5qSG7nXwpcrZ4IPsz05IRfwbW2uHeOXB+H+Tts3yarXTQxA5sL9FNwCK
ZEeh5zGaItr9heBrumzQrK9UqKyKGA0Mj5g8z+EYh2fdtCfz03t0cr31odaxLBIL
WHd3xr6qEW+PgeD6td53gsa//IW8leF2KrrsPUgH5j65hVD3ByXuH88iZNf5bt0j
0KDjR6aKGqlIv0iUNIYyLiCrTVWs5ill36oKYBHU/YFBo46LHmL/Ek2ZqMwEUH/R
av4NNeOLSn8EwE6ZqKJuDJ7qPGYWonzy3udUuAdJTXpH4Tw5yI3LXsotYf9hAPpW
OSAvCdSBvIngwJ9aMhJCZg0bxQX35DJ8VF46GXHsPzkDc3OTq9E89oI7yBH1h2T/
1qF4zy5MHaQWi0A79VDk7bNOSiVO57tlHtyAwz+4ZITyZBh7rg+PFC978Uvz17LS
N3OVdfVPiFk0fQAUL/PZM4590wtkdpii3Xy/sM9nYx47PBThrRGjEuZPLZOP7RAd
tgwAlKQF0cmDWfBukNGuK2wYviCyYLmwDg+NAIONFgG7Oj7G+akaP7XTnCkYj+4O
d2AWuWQUjL3KTA==
=6p91
-----END PGP SIGNATURE-----
--=-=-=--
