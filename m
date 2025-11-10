Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA14FC453DE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 08:43:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96A4E813F3;
	Mon, 10 Nov 2025 07:43:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BX2rIJMxVeG0; Mon, 10 Nov 2025 07:43:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D265813EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762760613;
	bh=dxRjKw1L3Vo4BvxG6c7a664xp8x6jBrMENa5cYkCAPg=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=haff4Wscg2C3YY0ifpCaeVbxt0CN2aUxqaI+7TW810M6Gs+TpWe9NTcX+XynlMvRu
	 gttK8ukxwZTRAMfnq13vfhbHFIj7k+BPoFqfgnyPyN+P7vE0k6ovcv5SD8AqIRqA+b
	 8n4pHq4w95EakygYKFo0obDSrEzWAhG2EKqyz59FDGh3jm4T4cmGv2H/RfqiOUrfm0
	 63G2MQUofqUR2WwcXbtwN2gqN/c2x6YDgISn+qDFTuhSp5vHyVr8PjoWhC67c+PaYb
	 cwwCN5cTWn7G352KybQe2LzMteiM33nVBY8oAa3O5uDXfn1y2Ob6Zasonccxh+qVpu
	 9VFweUYT3dhgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D265813EE;
	Mon, 10 Nov 2025 07:43:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 868911CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 07:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C9FE608DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 07:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NC_RNFUG4Cbn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 07:43:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 86819608D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86819608D9
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 86819608D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 07:43:30 +0000 (UTC)
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
In-Reply-To: <IA3PR11MB898676AC586AC4FF179A408EE5C3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de>
 <IA3PR11MB898676AC586AC4FF179A408EE5C3A@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Mon, 10 Nov 2025 08:43:22 +0100
Message-ID: <874ir272p1.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1762760604;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dxRjKw1L3Vo4BvxG6c7a664xp8x6jBrMENa5cYkCAPg=;
 b=srKgYrTI0WLWHg7muM/rvb2ilR0lKwIMa3Qt/uRJAfU5x9NbqS8uhIAlLxrDhB5TwWCLdK
 YTaKns825WFKAFIdR6pitlOvqFdgBY1bfQvC6Md5GWrwNrDWxlqW90TO7a98+t4p+zJRaY
 LbDLzPqkf6ZVMeUHsvbABteJi0BjmOmSuTg71+yTgcpnwx+4PJktDmKkrMWEsSNeNQ6fL2
 ICjBl9eyW6QzPofyL+dGt3vnKGtyzh9SviNFNM3Rh0fryYYuLCnQ0m4xwmEMxnUUQqqtVg
 y0JxAOWiJXbxxM3MOIfULs/pq2mJR7TDoaroX9RUsyRYRvp/K/LhL8D+noSdOA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1762760604;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dxRjKw1L3Vo4BvxG6c7a664xp8x6jBrMENa5cYkCAPg=;
 b=VkocBaG7rxb6oK4jdhPIfWEEsH/M6KQml/HczRbLUIAoD9ArEtyFJoPEbeiPWBOOnehQ1G
 ZuJ7TzIfQpitpOBQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=srKgYrTI; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=VkocBaG7
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
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Fri Nov 07 2025, Loktionov, Aleksandr wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Kurt Kanzenbach
>> Sent: Friday, November 7, 2025 2:32 PM
>> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>
>> Cc: Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
>> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
>> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Sebastian
>> Andrzej Siewior <bigeasy@linutronix.de>; Gomes, Vinicius
>> <vinicius.gomes@intel.com>; intel-wired-lan@lists.osuosl.org;
>> netdev@vger.kernel.org; Kurt Kanzenbach <kurt@linutronix.de>
>> Subject: [Intel-wired-lan] [PATCH iwl-next] igc: Restore default Qbv
>> schedule when changing channels
>>=20
>> The MQPRIO (and ETF) offload utilizes the TSN Tx mode. This mode is
>> always coupled to Qbv. Therefore, the driver sets a default Qbv
>> schedule of all gates opened and a cycle time of 1s. This schedule is
>> set during probe.
>>=20
> I'd recommend to explain abbreviations in the commit message:
>   =E2=80=9CMulti=E2=80=91Queue Priority (MQPRIO)=E2=80=9D
>   =E2=80=9CEarliest TxTime First (ETF)=E2=80=9D
>   =E2=80=9CTime=E2=80=91Sensitive Networking (TSN)=E2=80=9D
>   =E2=80=9CQbv=E2=80=9D =E2=86=92 =E2=80=9CIEEE 802.1Qbv time=E2=80=91awa=
re shaper (Qbv)=E2=80=9D
>
>> However, the following sequence of events lead to Tx issues:
>>=20
>>  - Boot a dual core system
>>    probe():
>>      igc_tsn_clear_schedule():
>>        -> Default Schedule is set
>>        Note: At this point the driver has allocated two Tx/Rx queues,
>> because
>>        there are only two CPU(s).
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
>>=20
>> Therefore, restore the default Qbv schedule after changing the amount
>> of channels.
>>=20
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>>  drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>=20
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index
>> 728d7ca5338bf27c3ce50a2a497b238c38cfa338..e4200fcb2682ccd5b57abb0d2b8e
>> 4eb30df117df 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -7761,6 +7761,8 @@ int igc_reinit_queues(struct igc_adapter
>> *adapter)
>>  	if (netif_running(netdev))
>>  		err =3D igc_open(netdev);
>>=20
>> +	igc_tsn_clear_schedule(adapter);
>> +
> I'm afraid you need to guard the helper call on success (or when open was=
n=E2=80=99t attempted)
> Because call made even when igc_open() fails.
> As written, igc_tsn_clear_schedule(adapter); executes unconditionally, ev=
en if igc_open()
> returned an error (e.g., rings not fully set up, device not ready).
> That could program TSN/Qbv registers while the device is in a failed/part=
ially initialized state.
> Isn't it?

igc_tsn_clear_schedule() does not write any registers. It just sets the
default parameters. The actual programming is done later by
igc_tsn_enable_offload().

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmkRl5oTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgtMLD/sH6Q+jF7eSEIA/7hyXfiM/nzniOtDq
ipfG0zzRT8RPjBiuAU1hxA32MDRdFBEU0RwdotySPFidC1SuA2OrHXr88VV48GtB
/eOYatnFv1MorYxfNRLVP8HLlER+mhuM+KEMpojGQ2KL8yUF2U4hEO70idL1zF+z
K4AkmyZejYqB0GA5RWFwNYhrXKk7B2Oxyu65X+RHP81Y+JLpqbPXJVyqXwRk58j1
WQ2t28ibql1AgG3x2wQV6IGyon/9e/IG2twERfZUOkV4xLjcpYZVjC5K0WS6favQ
Unu8DYbf6Txr113bFzxgqdy9IgVig8Ilq/rJ6BW877KY0kqvWSTIRv3g5LPV300k
o5WBSeYiF1ak1JbxjPjJx/7q/yNZJmJDJD/eFRkISAixGmJp8oJ4//JZcILm8s69
i+tcWRsTdJGZvmzuLN6uWhXbM9M8fu/VBmRLg7hie1TDJq2Qfm4kQcGyxLB/2FVW
sleIvFZ+sef7HPG4hFUNi/XZcEKCmu1xq2kqJT5UWjpRCDsAruCl++SFUoiWQ+Bm
fmZfZG3JcG/x9E+2XHxlGB3GJapZTyzPEKQBoRcDeCF0IGFhxWZAgK0AkXMIXH3/
9omPXzVBCvPiYF9BhKzXlDHUmP5KTG2eW/wUiuCJcjYCxTZnxsH/hk/0r6qdKTV8
6uH+6B1nBoIwiA==
=zShc
-----END PGP SIGNATURE-----
--=-=-=--
