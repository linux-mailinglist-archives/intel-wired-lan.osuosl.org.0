Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB558C565B1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 09:50:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76B1E826EA;
	Thu, 13 Nov 2025 08:50:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lkjMilg-QjY2; Thu, 13 Nov 2025 08:50:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B56E0827D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763023847;
	bh=y1IFQ2dg0dPJUWdefma4qi4mC63g7swvV+DrRqzNNKw=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J/g8Yk298zgzm5PjV+xJ8sB8nPfcmP1qOJhjwLHtK9Qm+31n2NxL6quS7UAqhrsM0
	 Fmd9J9ZURTVPRgV6a3EtlQ4xEd3Q8odL2ihY5MjfjWA6I9oBoVgdydSleOOBAezmix
	 kKWoXoAn2zunY5lMNV6ochKPBHDfV65LtyhE/7YPCxh8cuUID1NT/Z7QniuHRrvTK+
	 KpSV/ylejP5g1crpnD4+8eYTPD9Mb7OZPPA9qTPZmqsUVLMUcLIZTfkRU8MsxL+fxk
	 +qr6s0AgiJqVhTMiAVS7mg91WBwKQS6gYCniyjmYAHqLCdA71gaCTH+N4Eyx+9jQpa
	 HCnbv0esvahfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B56E0827D9;
	Thu, 13 Nov 2025 08:50:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 54A8D342
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B15E605BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:50:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TcOKUFqkTefG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 08:50:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1DD59600B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DD59600B8
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1DD59600B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:50:44 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <87ldkblyhd.fsf@intel.com>
References: <20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de>
 <87ldkblyhd.fsf@intel.com>
Date: Thu, 13 Nov 2025 09:50:38 +0100
Message-ID: <87bjl6l3j5.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1763023839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=y1IFQ2dg0dPJUWdefma4qi4mC63g7swvV+DrRqzNNKw=;
 b=MMMQmJQ8o4QbY9TBBZghK0g8PhH+oeiSTaOehHoRx6d/Icw2555qjAI7pY8rtv4ha32oon
 C8Tr0ARP7MaL9T8Jc19TNlTtVVbK+YfoVFid+7KdD1jMTgqaxdaDmd+/rxI4v0ySn8CJWo
 lT0Vn80sdSDcbVNGDdpwWZUGmyW0oTz8ERzLeLcqAB4Cgbjz1E7utfnVjKIvRoNQzJlMbz
 Awg5luUUC51P4Atm8iRKsasDA1IffVbx8ytvPVF08if4LdbQ+7qJD6lW8Pd2DcaJXr7smk
 Z4zidAiU2gSuzMt4r+Q7R/l92a23He++pVaWJHj2emCeqgVHxP6Ksqms0wUe1A==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1763023839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=y1IFQ2dg0dPJUWdefma4qi4mC63g7swvV+DrRqzNNKw=;
 b=eN8MHjZkrux92Wbtj4FBA6km95T+17b8daMb10DwgZlP85Cn+ffmnPtfHtrHxcQInxj8yQ
 KEra8+HcIkpPMaAA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=MMMQmJQ8; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=eN8MHjZk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Restore default Qbv
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
Content-Type: text/plain

On Wed Nov 12 2025, Vinicius Costa Gomes wrote:
> Hi,
>
> Kurt Kanzenbach <kurt@linutronix.de> writes:
>
>> The MQPRIO (and ETF) offload utilizes the TSN Tx mode. This mode is always
>> coupled to Qbv. Therefore, the driver sets a default Qbv schedule of all gates
>> opened and a cycle time of 1s. This schedule is set during probe.
>>
>> However, the following sequence of events lead to Tx issues:
>>
>>  - Boot a dual core system
>>    probe():
>>      igc_tsn_clear_schedule():
>>        -> Default Schedule is set
>>        Note: At this point the driver has allocated two Tx/Rx queues, because
>>        there are only two CPU(s).
>>
>>  - ethtool -L enp3s0 combined 4
>>    igc_ethtool_set_channels():
>>      igc_reinit_queues()
>>        -> Default schedule is gone, per Tx ring start and end time are zero
>>
>>   - tc qdisc replace dev enp3s0 handle 100 parent root mqprio \
>>       num_tc 4 map 3 3 2 2 0 1 1 1 3 3 3 3 3 3 3 3 \
>>       queues 1@0 1@1 1@2 1@3 hw 1
>>     igc_tsn_offload_apply():
>>       igc_tsn_enable_offload():
>>         -> Writes zeros to IGC_STQT(i) and IGC_ENDQT(i) -> Boom
>>
>> Therefore, restore the default Qbv schedule after changing the amount of
>> channels.
>>
>
> Couple of questions:
>  - Would it make sense to mark this patch as a fix?

This only happens if a user uses ETF or MQPRIO and a dual/single core
system. So I didn't see the need to mark it as a fix.

>
>  - What would happen if the user added a Qbv schedule (not the default
>    one) and then changed the number of queues? My concern is that 'tc
>    qdisc' would show the custom user schedule and the hardware would be
>    "running" the default schedule, this inconsistency is not ideal. In
>    any case, it would be a separate patch.

Excellent point. Honestly I'm not sure what to expect when changing the
number of queues after a user Qbv schedule is added. For MQPRIO we added
a restriction [1] especially for that case. I'm leaning towards the same
solution here. What do you think?

Thanks,
Kurt

[1] - https://elixir.bootlin.com/linux/v6.18-rc5/source/drivers/net/ethernet/intel/igc/igc_ethtool.c#L1564

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmkVm94THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgjIuEAChqQ+nRVq5ukbl7W1RZuG8ZU/XzOgm
X95Ynd2cAdxMEhTPx3CEVG2/t9nhH4eUv6OI6V2XuDKnm3/FQ8UA7F6VK7R3mfSr
Crt4RVtODUtET0s6TeHFLAN/ldplPMk3WehEpQJuC5QhJLkhTTzwLcts84tiDjWX
5erY0MVEnAD0vjOiI6v/k6YrZX1X0IhU7k70V0bHFCUlsRgnvmj2fco8Cy8TJTiP
Snj5M8syMPnE0pLnEBLklyTt3doUX0bOFUnR45MbTs2Jg6GMQj9QzmSYRKA56qcL
d2ampDOMECmd0qJUDQz9g/8/d2/6yk2jcqrg27sQsEeOkN0A/wykIkHf0B9hTjrX
1/AkKsKuvbtqCQSSSvvec4TnT8Tb+aF413UmSTtNQHweTx3FgEm606Neo/N4Boqw
aPt0qPeqozLH6Mg+X3ODm6D/kIipeWTpwN+/3xIO40ppU3oU89sNQKJUj4ucARfM
LOrQy3OUyXj+3wn/mvK4OfHnmXXpgB0ga+DLmSOpc50f1kayvXQNlg5bvykr9J/S
VXVrwUJPwCNtfify7ZL81LN/KuVwlItkMbPg3fjQwf2fphmPL4al+iDOXW4wWfTn
JytB5bvEHPXFrM78vKDy8PL0ecvdxKrdxWIV9ZibpCN9oZTRAvij9++ivjyj5foe
BVu7g3dH+PlmfA==
=PsfW
-----END PGP SIGNATURE-----
--=-=-=--
