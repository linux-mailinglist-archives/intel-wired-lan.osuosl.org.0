Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B98A3EF57
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 10:01:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B02440C9B;
	Fri, 21 Feb 2025 09:01:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voQ1YoxJ1j37; Fri, 21 Feb 2025 09:01:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B931640C6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740128501;
	bh=UwYnNoDhPmLp2LRB/MupwvXiwDscd4G1TWpjxtDLSkM=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9EgyIZUusgiH0uGnWVwf2XxR/dRJaUV0UkqUlVb6qOAXx72EAbSB7JlcGU2MGjqiF
	 5tiA6GV7DnGrwcB2eF4st49T58VIvbhRvxYHhd7FCXKGE+W4OEu3l+NL6+3eQMUkQx
	 uCyw3GeLq358jYmX09Uuhub5vhTZPxTEmVctIlZEVfgLaxrXB82WlIslFWTGx5+b+4
	 LU341OpYcK+CCEQU/8hEbZt7SiBeBwrtpeMWwJaXeqoi3Bgg1G/c58AyNXTkvvRQvx
	 EzDu3wvdXDWfsPEhPRVED1z64IbUZ58anLbNIUbz25Xch259Z08l4FNc/qJxIfoSg9
	 vYIplHpQ3NNWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B931640C6C;
	Fri, 21 Feb 2025 09:01:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 06D6B6B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE2BC6087E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Abv6cjZ53nKJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 09:01:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F21CE60767
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F21CE60767
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F21CE60767
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 09:01:38 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <6ff37238-ff0e-43c9-a88d-1258fd4ce7ef@linux.intel.com>
References: <20250217-igc_mqprio_tx_mode-v1-1-3a402fe1f326@linutronix.de>
 <6ff37238-ff0e-43c9-a88d-1258fd4ce7ef@linux.intel.com>
Date: Fri, 21 Feb 2025 10:01:33 +0100
Message-ID: <87wmdj8ydu.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1740128495;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UwYnNoDhPmLp2LRB/MupwvXiwDscd4G1TWpjxtDLSkM=;
 b=u07y66J+eauJ37KDcFDyBnapa1Jzo2dpj2akzcrFdrpmxTWAop5tvZn5wS68lklRXDW/Sh
 2fNE/20efuCVZifp0fFYTjA26aIzKnj7e/VGJsROL0djKl9dbsSCq/A9PuT/NyXHGiyz7x
 6RcMZ082C8CBN+kY+rMSd9WEdDS3PQScM/3xEN/WS0OtvjmJ7lfkhkAD/oEf0ZXff1AQ+K
 f4uxsxpYPLuYVzRwNObaaGiI5m50epQvGcHEsyt78sM7Pr4JCfUXkE2x38WK+wjo5bOG88
 c9egF4bo1Fq1MGBF8EuoQz1Yzmav6KQYNG8IOKkCxilh4niPwUh5lz7VsY5iMg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1740128495;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UwYnNoDhPmLp2LRB/MupwvXiwDscd4G1TWpjxtDLSkM=;
 b=q5R1m9888X+oKhVUlab1XBjhnqVOiAkSzWy35UGyQ5gqKzCYM10r74Q20FAL1jw1TQ3NW5
 47IgEgERocOomADQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=u07y66J+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=q5R1m988
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Change Tx mode for
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

On Fri Feb 21 2025, Abdul Rahim, Faizal wrote:
> On 17/2/2025 7:45 pm, Kurt Kanzenbach wrote:
>> The current MQPRIO offload implementation uses the legacy TSN Tx mode. In
>> this mode the hardware uses four packet buffers and considers queue
>> priorities.
>>=20
>> In order to harmonize the TAPRIO implementation with MQPRIO switch to the
> Missed "," ?
> In order to harmonize the TAPRIO implementation with MQPRIO, switch to the

Ok.

>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethe=
rnet/intel/igc/igc_tsn.c
>> index 1e44374ca1ffbb86e9893266c590f318984ef574..6e4582de9602db2c6667f173=
6cc2acaa4d4b5201 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
>> @@ -47,7 +47,7 @@ static unsigned int igc_tsn_new_flags(struct igc_adapt=
er *adapter)
>>   		new_flags |=3D IGC_FLAG_TSN_QAV_ENABLED;
>>=20=20=20
>>   	if (adapter->strict_priority_enable)
>> -		new_flags |=3D IGC_FLAG_TSN_LEGACY_ENABLED;
>> +		new_flags |=3D IGC_FLAG_TSN_QBV_ENABLED;
>>=20=20=20
>>   	return new_flags;
>>   }
>
> IGC_FLAG_TSN_QBV_ENABLED is set multiple times in different lines:
>
> 	if (adapter->taprio_offload_enable)
> 		new_flags |=3D IGC_FLAG_TSN_QBV_ENABLED;
>
> 	if (is_any_launchtime(adapter))
> 		new_flags |=3D IGC_FLAG_TSN_QBV_ENABLED;
>
> 	if (is_cbs_enabled(adapter))
> 		new_flags |=3D IGC_FLAG_TSN_QAV_ENABLED;
>
> 	if (adapter->strict_priority_enable)
> 		new_flags |=3D IGC_FLAG_TSN_QBV_ENABLED;
>
> 	return new_flags;
> }
>
> We can combine the conditions to simplify:
> 	if (adapter->taprio_offload_enable ||
>              is_any_launchtime(adapter) ||
>              adapter->strict_priority_enable)
> 		new_flags |=3D IGC_FLAG_TSN_QBV_ENABLED;

Sure.

Should I send a v2 or do you want to carry this patch in your next fpe
series?

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAme4QO0THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgh0qD/9XL1gTqU5iRLiQwEpYlubwGg2K/UQY
/8aVDtneU77knwNaef98gMahwyId3kUhVVxOER9iiWYVmmj/MnAJOHdjBnkbB2Gb
Uz9G2imrxmMQotLqPfApvcs+sweMBNc+tLS7xHYQuaPf5A8cwzrncdEHOKxxKVBj
EvGH4gN3CS6rR7vf8PgsJTlNOkvNlFyn4O8Rv7BrpxhTn8frSXoqzPUW/r3bW1by
otFkXHALqdiL+BvjNtaSeQ6BxANW5zoFMVJXg7erIpVYfT+WKWACD6kDp/ht5Isr
D1GeFO3V+VxuCqSLHIwPVO5MHG0E6Qy4+T1tbNZInU0RXToFqjXj2cb3ea34I9/E
pPb7DIJ8VRSBfWPXakwUdpuWKIhiRSCxS1kIlBU07+mouTRjsmDsd1/Mv6riNfaJ
3aN5HMskynCsgAkyT2t2E76EjUqcYpyvlL9AWCcvu2PqR6BNsjan/d/KUW1gLtdN
pAdnibQ2j8ZvqnZrulcoEc79Lz0I/5zmerjd7h0yg/HfxVkDI5i/YPcJ88n/I4PI
V1IBOeGmR8KGRijf7UJGdWfZdUbZWbxHyts+TLHhQdHx3xs14kphgCfl0TDnssbM
RoOp1FuR1jA74Q88xBlU/hmb6UCrSLmk7Q0Ep6yxPJlk/OWBnOEyPRtJwNGVV6qx
SRG02XOCIL8mjw==
=ZeO1
-----END PGP SIGNATURE-----
--=-=-=--
