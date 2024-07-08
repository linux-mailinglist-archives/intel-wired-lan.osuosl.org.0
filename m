Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7A1929C7F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 08:51:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09F6B40204;
	Mon,  8 Jul 2024 06:51:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kWNYEclh1FkV; Mon,  8 Jul 2024 06:51:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45BF540459
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720421496;
	bh=qSogFxSiEFX+iVqpDcSRPS2yy5AUBU3Y928D6RpPBbc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mO1jpvnK+qHoUM1lw8mRhFgt79A4PlwgXbzqHDDPYDcD76Jiys7AYo2g4HjE75NPG
	 nN9UyiK/e9UQRVLYVVPuU6TNNdcirrqeu5ZkwDXqCoqEN7UhIfIx90KAEx+z6OJNxv
	 E9Gu2tUmZTaLkpHGwGw2P2I1p2Ey1/DrwONWDAFKdUZ3Hdd1Zfsq8BQAsctyFxMKz+
	 pdrhyVjD0UW2YrwfaKfZHE3Quef8Sa6wsXcq9cuF202hmPdO0lN5FyxtXzfQ+J0AQN
	 rxT+sBDQpFtpX+sUEyUS+zlbVIApjB8TXxGnvAH26XbMStty8Tr8hyID9YTQL8z/6/
	 CXbhEllSzHBAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45BF540459;
	Mon,  8 Jul 2024 06:51:36 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7069C1BF2C2
 for <intel-wired-lan@osuosl.org>; Mon,  8 Jul 2024 06:51:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5CC7381086
 for <intel-wired-lan@osuosl.org>; Mon,  8 Jul 2024 06:51:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hq4wmXfrqMFO for <intel-wired-lan@osuosl.org>;
 Mon,  8 Jul 2024 06:51:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7FD198105C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FD198105C
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7FD198105C
 for <intel-wired-lan@osuosl.org>; Mon,  8 Jul 2024 06:51:33 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>, Benjamin Steinke
 <benjamin.steinke@woks-audio.com>, Sriram Yagnaraman
 <sriram.yagnaraman@est.tech>
In-Reply-To: <AS4PR07MB8412F92231A7C6E9FFAF13ED90DF2@AS4PR07MB8412.eurprd07.prod.outlook.com>
References: <20230804084051.14194-1-sriram.yagnaraman@est.tech>
 <878qyq9838.fsf@kurt.kurt.home> <3253130.2gtjKKCVsX@desktop>
 <87cyo2fgnm.fsf@kurt.kurt.home>
 <AS4PR07MB8412F92231A7C6E9FFAF13ED90DF2@AS4PR07MB8412.eurprd07.prod.outlook.com>
Date: Mon, 08 Jul 2024 08:51:25 +0200
Message-ID: <87bk38fkb6.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1720421487;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qSogFxSiEFX+iVqpDcSRPS2yy5AUBU3Y928D6RpPBbc=;
 b=4iCZRxAAF+qNUv9U7b1oMhzCKgMFDfCUQyedzfVF4Q5hjuATLxXZ5D3o+wqniRRDHXT7PZ
 GLsOUPU3JG9oyiDWhEioJaQj5xR4YvxbLLPTi4zjPe6Jql6OkbToVIxOwxddxF/tvGGLeu
 hvXyl7vqIdmxARbwx2GZxsoid3PVTvmIRIu/pBOJ0u/AvKD0HfLCrnVR+h413xNrOBP4Nt
 9cFM6XzM5XtD2LwIenMgilIrGpRyo+tb4LZ6I5M+C2gkzPXkOePaKzUu3Z2+8nm1wqOqAQ
 3SoJ5RnZd71lSKHAVR44pF6bG9pBhRk8WH1uFsbnn3Kb+qgY1r8di7DNBImbVw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1720421487;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qSogFxSiEFX+iVqpDcSRPS2yy5AUBU3Y928D6RpPBbc=;
 b=R10/S8Mjx724FBJfCRLDH1si8XrMNAHAVza2jMd/O5K47FqJ/io+H9lSK5ohaELgjabaof
 7eTHpfq+5GZg4nDQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=4iCZRxAA; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=R10/S8Mj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/4] igb: Add support for
 AF_XDP zero-copy
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri Jul 05 2024, Sriram Yagnaraman wrote:
>> >> It seems like it hasn't been merged yet. Do you have any plans for
>> >> continuing to work on this?
>> >
>> > I can offer to do testing and debugging on real hardware if this helps.
>>=20
>> Great. Thanks!
>
> I have since changed my position at my company, and my new position
> doesn't allow me to contribute upstream to kernel unfortunately.  It
> would be great if one of you can take over this and get it delivered
> if possible.

Ok, I'll take it over.

>
> Glad that others find this patch useful as well.=20

Yeah, it's very useful :).

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmaLjG0THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgg8DD/4m6dxBxOZ97vfUSPDyC/ylGZpAyhHp
JXYgiBiEvhNInWbXTq7m+uDTRH1CPqHF3skmi63KnBtyWpte9jLu4XkOuqABdIpw
9Laq2qJKbG1iqy2pvsyJg9Vc41uaatOSvE72Dr1+6EqfOGltQiZ+Pohxgi9GTvoi
tJCs0onHuzM5OrO9tBO6HZOGnAKFYYDJYL7Cv6DVTvEyetumN56JFwCbScjBJwWm
RGA57geCepp6i3dFf8B4ex2AROZ6lO+4I2ZTTKADZd7uqNrOR6J4Ny3U+uHHvnTm
3TXIK0SzT0iJ/RAHgshm4oXpfHFwyYzNMxxmgcfj9Z6YLUNULEtq6lvVNi2CkVab
wEiaWLstW72KCaDewPFzRW1sZI6plpTPIZ+wrY6HXhXFOBnV0N3a7J9IEy6SZDYz
+oXlmfF5hCcEff6x9fAk6yppuHoMGasXAG6bWi5rUiBPsDVKrbghq6n95jENsBsv
PHUN/YnfxnRU7kAnB0SwGq5/eUzpX05Dia832XaBI5wiAsgYNsS8+jPYF3CP69YK
jEnPT3vUqrbjQzAFVCGX6Dg4yc+HV/+LriAjBQ2+rxkF2TkARS6rJ3jABX3MahYh
ejrpXrgjPO0KVSNGuoMoeXb1nLpKBOEUaPgoc+kEmLOBH68aZ8/+ate/pKRR/uTh
3v9hSKjFtK8KZg==
=upaM
-----END PGP SIGNATURE-----
--=-=-=--
