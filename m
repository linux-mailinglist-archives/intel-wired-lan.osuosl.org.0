Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED67B9586D4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 14:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10CB681183;
	Tue, 20 Aug 2024 12:24:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E2VuPm3PLpZF; Tue, 20 Aug 2024 12:24:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D60EC81186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724156666;
	bh=uoTE5a6aWpLtaIBQRdoTYQPSHqUjfKBd4l/YRCLQ42E=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zYimNNvMCHwcXh/RS+rgze/bd+bZwPz9j5i+e8gbDFolyjFgXPfHvKXeo2sj6IMum
	 PtkWQOTlfkbsGnFSUzNiVhjfFu+0mm7dmuOTteu4m/pdkARjzon13gxY9UKg70Wwai
	 aATv8P0L0yt7mTOPlc6vCmCdz0d0FH3orwiJsV2DXICMprlwtpSnnIpz1LeKmVvFAd
	 HthowbwK86cGekyjLkU4YryUkqr/Y9VhdRXO/Q08tPL9g5zc9UnS9cyCR5c+PFmTAC
	 JGPME8AhmTDUKSsX8iqzE5gONtGbl3SIVoQ+NisQuNetMkK/uiB2/++GTIFtHRLVpR
	 5LMxwdZGqXfgQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D60EC81186;
	Tue, 20 Aug 2024 12:24:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D44B1BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 12:24:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8664C608AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 12:24:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uF5ZM8J1E-42 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 12:24:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 625FE608A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 625FE608A8
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 625FE608A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 12:24:24 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>
In-Reply-To: <AS4PR07MB84123D29A27BEB30CECC5FAA908C2@AS4PR07MB8412.eurprd07.prod.outlook.com>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
 <20240711-b4-igb_zero_copy-v6-4-4bfb68773b18@linutronix.de>
 <ZsNGf66OjbqQSTid@boxer> <87r0ak8wan.fsf@kurt.kurt.home>
 <ZsNSc9moGwySgpcU@boxer>
 <AS4PR07MB84123D29A27BEB30CECC5FAA908C2@AS4PR07MB8412.eurprd07.prod.outlook.com>
Date: Tue, 20 Aug 2024 14:24:18 +0200
Message-ID: <87frqzidql.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1724156660;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uoTE5a6aWpLtaIBQRdoTYQPSHqUjfKBd4l/YRCLQ42E=;
 b=cGEYvTXndXAP+01WmGPjfMiBag9F+jEvc8/58sZa4+RaYWYmDhjwdHRTMOGuKck4LBvszi
 k3QkO0+03L1tReUptxZ9yATfWJMKkvjzzL2TqVMojqBaoeEotrk956+mvCT8W2bcpnYyD7
 k8DY/TeeqomH/GHfPNYY3+t+22C5t25qzgZ5dr/f+1y4IWmndnUEmFprTwkHQ6YAjghtSU
 +3yOTZwwigJVRk5sP9J91TGyusB0Ad5rpUieG6Z3Vb4vNch4hBxSz0uuQnJZS9JL2/AarA
 DDPEzYg+fEaAueUX/TDIARbGEghib0h/Q9pM+9Fxmec2wJedPhVJiz/hUBXMQQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1724156660;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uoTE5a6aWpLtaIBQRdoTYQPSHqUjfKBd4l/YRCLQ42E=;
 b=Ly5HL7PTzwADtNLVLKl36kqSBDya28e805WoLgOQ4WCoPSUv4aiRVhKwVwArASRgA/DDCs
 Oc1TwXfiYMBs2dBw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=cGEYvTXn; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=Ly5HL7PT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 4/6] igb: Introduce XSK
 data structures and helpers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Georg Kunz <georg.kunz@ericsson.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

Hi Sriram,

On Mon Aug 19 2024, Sriram Yagnaraman wrote:
>> -----Original Message-----
>> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>> Sent: Monday, 19 August 2024 16:11
>> To: Kurt Kanzenbach <kurt@linutronix.de>
>> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>; Przemek Kitszel
>> <przemyslaw.kitszel@intel.com>; David S. Miller <davem@davemloft.net>;
>> Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
>> Paolo Abeni <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>;
>> Daniel Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
>> <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>; Richard
>> Cochran <richardcochran@gmail.com>; Sriram Yagnaraman
>> <sriram.yagnaraman@ericsson.com>; Benjamin Steinke
>> <benjamin.steinke@woks-audio.com>; Sebastian Andrzej Siewior
>> <bigeasy@linutronix.de>; intel-wired-lan@lists.osuosl.org;
>> netdev@vger.kernel.org; bpf@vger.kernel.org; Sriram Yagnaraman
>> <sriram.yagnaraman@est.tech>
>> Subject: Re: [PATCH iwl-next v6 4/6] igb: Introduce XSK data structures and
>> helpers
>>
>> On Mon, Aug 19, 2024 at 03:41:20PM +0200, Kurt Kanzenbach wrote:
>> > On Mon Aug 19 2024, Maciej Fijalkowski wrote:
>> > > On Fri, Aug 16, 2024 at 11:24:03AM +0200, Kurt Kanzenbach wrote:
>> > >> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
>> > >>
>> > >> Add the following ring flag:
>> > >> - IGB_RING_FLAG_TX_DISABLED (when xsk pool is being setup)
>> > >>
>> > >> Add a xdp_buff array for use with XSK receive batch API, and a
>> > >> pointer to xsk_pool in igb_adapter.
>> > >>
>> > >> Add enable/disable functions for TX and RX rings.
>> > >> Add enable/disable functions for XSK pool.
>> > >> Add xsk wakeup function.
>> > >>
>> > >> None of the above functionality will be active until
>> > >> NETDEV_XDP_ACT_XSK_ZEROCOPY is advertised in netdev-
>> >xdp_features.
>> > >>
>> > >> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
>> > >
>> > > Sriram's mail bounces unfortunately, is it possible to grab his
>> > > current address?
>> >
>> > His current email address is in the Cc list. However, i wasn't sure if
>> > it's okay to update the From and SoB of these patches?
>>
>> Okay. Then I believe Sriram should provide a mailmap entry to map his old
>> mail to a new one.
>
> Please feel free to remove my "est.tech" address from From: and
> Signed-of-By:

Ok, I'll replace your est.tech email address with your ericsson one in
all patches. Or do you have a personal address (like gmail), which you
prefer?

What about the copyright in igb_xsk.c? Does it belong to you, or Intel
or to your previous employer?

> I am just glad that my work has not gone to waste. Thank you for that.

You're welcome.

> I will check with my company's *lawyers* to see if I can provide a
> mailmap to my current address :(

Good luck with that :-).

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmbEivITHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgsmkD/0Ty5gZjp0LX3isSDnM5Rmv66yqAmjy
ekDqKQRgrwlSw2WcYb5L/6kT0Lt4+pzEc30b+ye7X+oJiWoOTrI50kFH97h/67/Z
sMx6EXhKfCj5QE5wntyM1TtezRO3ywUoniurk3loHf/qUHvpInlchVe944kPcIJl
Clx0/EtYSUFadLifS5Ny7P3mwFKFt8gM2mDsf2GCESvIopEP/J31XInlVyaov92j
alTFaPA6Hpz9DYro3MPguAvZAin1kX0ayNL00nKDnBQyrw2CiM9/aSfzd4sKBJ46
8KDutbSiWkCW1hVz1+s2nLW0VQl9Iys91f9R1QNoH3DFvnPLVnCTD74mKnVjZ4yl
UxnHliFMzwsUga2HP7zhfp62511xLHVDvXqUTEOAE8vD+fCk/ya3J4F2rgf/FvEl
KJNykfPkt5OPf0D/B2SgmNHwO+1TtZBHvVX7ETQNtt5NQXzX8XyJLV8YNaJ5MBO1
KXv9c3FbwyV8idTxFo9LRZownb+4y7ta9/TZxpW5VBIdoQh7k2IqCfzEpWl7OXjM
qPna6tsTfcC29AKU9rGryYRDNINQGaFaKjvW2kkhN4genh8y8YXaLJjNi1Ii7eME
a9APoqh6pHFHjquyaZzMWN8lj016PDP328Eloli6XR0uGC1m3KDxJDZk2TLVa1JF
NTDaap0WIa5GSA==
=rszS
-----END PGP SIGNATURE-----
--=-=-=--
