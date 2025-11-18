Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11397C68B01
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 11:02:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92EB240C1D;
	Tue, 18 Nov 2025 10:02:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BMncnPJIPKRu; Tue, 18 Nov 2025 10:02:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E505940C15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763460128;
	bh=32evEixE8jldN95sVYGYo8rs8oipO2Lpfb6zAqOyAqA=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fuXOjoWEXyOnrEhRl3RPovwM6GZGAtTVd96bf4NLa7WMr+6wz5HwB2ITHwfJIJy/3
	 O3+OddmE21LXQaN82Mtxj38w5eKQpTuH3Zm44f8n377XxLm+g+IDvJsNRRa0yL7bqu
	 ZQNApJWlW70MBh8XD3CpiE49EB+x8bGP6ittD4YWczAZJBbkNJY1q4x0txLLCYsXgA
	 rXADcnA59qCYWzJSzvpEOt7i/ga/P8+OlCZj4NFtvWCVnR06mrp6/7PswgpDG6bsNb
	 ca/ZvYNwPGhObgShg8oGK6Kt96tbdrnSflni9aeESd58nA2uMbKHSMPZBp3OyEH+VE
	 42nDqZ2XAToaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E505940C15;
	Tue, 18 Nov 2025 10:02:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F6F8158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 10:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 062DA40245
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 10:02:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gTgjoKmObpBl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 10:02:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D875B40078
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D875B40078
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D875B40078
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 10:02:05 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
In-Reply-To: <IA3PR11MB89867DF16F7438B2DFF1D1C1E5D6A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251118-igc_mqprio_channels-v2-1-c32563dede2f@linutronix.de>
 <IA3PR11MB89867DF16F7438B2DFF1D1C1E5D6A@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Tue, 18 Nov 2025 11:02:00 +0100
Message-ID: <87ldk37j6v.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1763460122;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=32evEixE8jldN95sVYGYo8rs8oipO2Lpfb6zAqOyAqA=;
 b=WY/acea349j+UYMCzJhVM/VkCKg1ml0W0VCZtWPhTdubvcF1ynT6GmW7rk0anAo2UyJPrR
 CxcseSVlb6wltjpYkap43YeDKYFURIDBhH8GOMTvN26Uwq+lBcwFG4fehCDfxtnhQ1PH8i
 oWc+fqrxlDyxy1ht0fVrOIi5faWCWlVdA+rkWiqcf1q4BA05Q8BqtgQ77Kq3JcCRg55288
 gOG+I9gEFVRAVwS79CZ088qezlfF+zNCJsseDE0G8zmKOg04QLFQTD6Cqi17pg+b/71p8b
 S2n+cpSxsHCTnWh8MpeTAv3O4n0mqausb+gGbYGpDUagPyXIb0knqwYNQpJtHQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1763460122;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=32evEixE8jldN95sVYGYo8rs8oipO2Lpfb6zAqOyAqA=;
 b=OojMpCjwQHphBM489deTOSAj6ml+vWBFskR25HhWxWHaCX/HnU+q7wBt/4laH28Tw/3Ld2
 ZnW+CntMqWWxLIBA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=WY/acea3; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=OojMpCjw
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Restore default Qbv
 schedule when changing channels
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
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Tue Nov 18 2025, Loktionov, Aleksandr wrote:
>> -----Original Message-----
>> From: Kurt Kanzenbach <kurt@linutronix.de>
>> Sent: Tuesday, November 18, 2025 8:29 AM
>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>
>> Cc: Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
>> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
>> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Sebastian
>> Andrzej Siewior <bigeasy@linutronix.de>; Gomes, Vinicius
>> <vinicius.gomes@intel.com>; Loktionov, Aleksandr
>> <aleksandr.loktionov@intel.com>; intel-wired-lan@lists.osuosl.org;
>> netdev@vger.kernel.org; Kurt Kanzenbach <kurt@linutronix.de>
>> Subject: [PATCH iwl-net v2] igc: Restore default Qbv schedule when
>> changing channels
>>=20
>> The Multi Queue Priority (MQPRIO) and Earliest TxTime First (ETF)
>> offload utilizes the Time Sensitive Networking (TSN) Tx mode. This
> With two items (=E2=80=9CMQPRIO and ETF=E2=80=9D), the noun phrase is plu=
ral; verb must be utilize.
> BTW kernel docs and code commonly use =E2=80=9CMulti=E2=80=91queue=E2=80=
=9D  with hyphen: "The Multi-queue Priority (MQPRIO) ..."
>
> s/Multi Queue/Multi-queue/
> s/offload/offloads/
> s/utilizes/utilize/
>
>> mode is always coupled to IEEE 802.1Qbv time aware shaper (Qbv).
>> Therefore, the driver sets a default Qbv schedule of all gates opened
>> and a cycle time of 1s. This schedule is set during probe.
>>=20
>> However, the following sequence of events lead to Tx issues:
>>=20
>>  - Boot a dual core system
>>    igc_probe():
>>      igc_tsn_clear_schedule():
>>        -> Default Schedule is set
>>        Note: At this point the driver has allocated two Tx/Rx queues,
>> because
>>        there are only two CPU(s).
> Use standard plural: 'CPUs'
>
>>=20
>>  - ethtool -L enp3s0 combined 4
>>    igc_ethtool_set_channels():
>>      igc_reinit_queues()
>>        -> Default schedule is gone, per Tx ring start and end time are
>> zero
>>=20
>>   - tc qdisc replace dev enp3s0 handle 100 parent root mqprio \
>>       num_tc 4 map 3 3 2 2 0 1 1 1 3 3 3 3 3 3 3 3 \
>>       queues 1@0 1@1 1@2 1@3 hw 1
>>     igc_tsn_offload_apply():
>>       igc_tsn_enable_offload():
>>         -> Writes zeros to IGC_STQT(i) and IGC_ENDQT(i) -> Boom
> Please avoid colloquialism in commit logs. Suggest:
> "... IGC_STQT(i) and IGC_ENDQT(i), causing TX to stall/fail."
>
>
>>=20
>> Therefore, restore the default Qbv schedule after changing the number
>> of channels.
>>=20
>> Furthermore, add a restriction to not allow queue reconfiguration when
>> TSN/Qbv is enabled, because it may lead to inconsistent states.
>>=20
>> Fixes: c814a2d2d48f ("igc: Use default cycle 'start' and 'end' values
>> for queues")
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>> Changes in v2:
>> - Explain abbreviations (Aleksandr)
>> - Only clear schedule if no error happened (Aleksandr)
>> - Add restriction to avoid inconsistent states (Vinicius)
>> - Target net tree (Vinicius)
>> - Link to v1: https://lore.kernel.org/r/20251107-igc_mqprio_channels-
>> v1-1-42415562d0f8@linutronix.de
>> ---
>>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 4 ++--
>>  drivers/net/ethernet/intel/igc/igc_main.c    | 5 +++++
>>  2 files changed, 7 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> index
>> bb783042d1af9c86f18fc033fa4c3e75abb0efe8..43aea9e53e1e79b304c2a7e41fa7
>> d52dc956bffc 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
>> @@ -1561,8 +1561,8 @@ static int igc_ethtool_set_channels(struct
>> net_device *netdev,
>>  	if (ch->other_count !=3D NON_Q_VECTORS)
>>  		return -EINVAL;
>>=20
>> -	/* Do not allow channel reconfiguration when mqprio is enabled
>> */
>> -	if (adapter->strict_priority_enable)
>> +	/* Do not allow channel reconfiguration when any TSN Qdisc is
>> enabled */
> Kernel consistently spells the queuing discipline as =E2=80=9Cqdisc=E2=80=
=9D (lowercase) in comments, Kconfig, and docs.

Sure, will update the changelog and comment in next version.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmkcRBgTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgsdHD/4+FgWkT4wB2rTRPd3geW/8NOTvjBy+
GBiTFyeUXmRwfYZrqGtdcjGRk/LYJLxbpGfjBTCjv3Dr7EMShne+pJgdQIi0Nbq+
S3M47BXXJNa0q0pXZKmcIoV5T1eFsHhyiZ0Werpz1BAeAJfkJvl0fEV9n4wHB6ZW
jdtPtGy0ihq8gKGWgwOdkXAtIEKW+3lJk7hPzOyEGUGP91E/UZic9EmSfU1BtIbH
DRGnpjuiNcXEZjeSgRQrLZ89iGX1FHUPsTkmYKCsGOVFJ+RZnxXm9f+rZ0eZ5R9P
8FYxSur8AYN57oRsiYW/xboSeoYmABwyMt2l6+HYncGyEtlM6rGnCj2sg3W7AgAU
3mJa2rHR75+ENkq9lUdRsX0xvScxQKcQxOq6Xt387quJG7CZFkhPfZATuW/cNJ3H
6cxJqur6Jui5AygpS42rd0DDL6svzt2Fs51wLOFW72/LnRv/FdumWEH8O/klNRyL
p1iOUwYd668cgnJnaGCWLgMsRMAw2zlZtErbXMSVYSChlPtUS0p3qXn8PlLA0CbD
/dEbV020K5yM0RmuUiB3zkF8JOH7aLE886W8+LI9awFm1qoue76rG6hTjqSPyw9W
VThqFsK9UNxYVMdjfRh9vT2p2J8ARYGyZ5e7uqvUPCd8Ql9iVyUYO/vc621dAI1v
/J9Y2nRflmMcqQ==
=Dtrf
-----END PGP SIGNATURE-----
--=-=-=--
