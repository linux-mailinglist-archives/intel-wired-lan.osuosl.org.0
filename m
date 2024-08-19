Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3664D956D32
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 16:28:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFEA560821;
	Mon, 19 Aug 2024 14:28:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eJwk1YDT_hMs; Mon, 19 Aug 2024 14:28:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 810FA6081D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724077683;
	bh=T4kXcrf6U1ZzhbkT3a2rP7wxyAUDvWW2UaMwpDLxAzY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VJ8MrhkCd4panWrZxM6WjQfskD+Er06FPwVOavkBagyoEuwoEvswNci6Laqz+NKyU
	 sP2q9X+fZpGe/wS50nnGbBhqaOz0sCeyKJ+UkK69/UGSRX6/LhTXPIduV5CIIQ9Mdz
	 26qjX4mibsZkh7DBZ6kWy37Nr83aBGOi75NG6HDZcrVKljtf3zEFghln7e4qE2ydrv
	 p88gxbLJv6PneLnqeF61EjThXHl/GmfwZWQQhOpeDboEpK+cHlvWXOcV+L3RRUyApB
	 RjTc3re4711t8TbScydQLqFAn7YwuZiRhup8JEsdzewNjXEAH0unFvqM3WPvcSzCGb
	 XNMFOPpkK7IHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 810FA6081D;
	Mon, 19 Aug 2024 14:28:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 914451BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 14:28:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 895F180F6B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 14:28:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LW8B3ULF75tT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 14:27:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2C36F80F0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C36F80F0F
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C36F80F0F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 14:27:59 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <ZsNSc9moGwySgpcU@boxer>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
 <20240711-b4-igb_zero_copy-v6-4-4bfb68773b18@linutronix.de>
 <ZsNGf66OjbqQSTid@boxer> <87r0ak8wan.fsf@kurt.kurt.home>
 <ZsNSc9moGwySgpcU@boxer>
Date: Mon, 19 Aug 2024 16:27:55 +0200
Message-ID: <87h6bg8u50.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1724077677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=T4kXcrf6U1ZzhbkT3a2rP7wxyAUDvWW2UaMwpDLxAzY=;
 b=mGY/s0Y+57u6UEK597/ujos/ffBufRW9eUCjC9qc5dDtLx5Uq6MS2chEL4u4fugEQaeyWW
 n1LFy9UzGgOIO++3+1i/3bRgZ8oOPsV5qEY9wo0VBS+DninOMs278lRaX64VvopviydTZ5
 AEKCeHyIdR5ikUttitPdqjeVZubrOYYgkMkS0tyvpMIhRjAhoq8YR1iXjH7Cpg68UNExJQ
 9R51NnkiHJMgKynhkYLJznOKA996LaQX/he0QXJgfzVP327KniJBOK0pkQo/cj3deXljP0
 Agzr8w/y+ajnK8ZRa6C/s4p6wtro1cKrxSCfEhoAh2mqC3rcZzbHFowbRKA2Ng==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1724077677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=T4kXcrf6U1ZzhbkT3a2rP7wxyAUDvWW2UaMwpDLxAzY=;
 b=ej0FynENLHM5oq6oeyFlle/rpZ+l0IohArldJYwavZ4ZAwo3bP/RG/GjAZom5lT0yglKHK
 m7enlCFozqmxcxDA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=mGY/s0Y+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=ej0FynEN
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Mon Aug 19 2024, Maciej Fijalkowski wrote:
> On Mon, Aug 19, 2024 at 03:41:20PM +0200, Kurt Kanzenbach wrote:
>> On Mon Aug 19 2024, Maciej Fijalkowski wrote:
>> > On Fri, Aug 16, 2024 at 11:24:03AM +0200, Kurt Kanzenbach wrote:
>> >> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
>> >>=20
>> >> Add the following ring flag:
>> >> - IGB_RING_FLAG_TX_DISABLED (when xsk pool is being setup)
>> >>=20
>> >> Add a xdp_buff array for use with XSK receive batch API, and a pointer
>> >> to xsk_pool in igb_adapter.
>> >>=20
>> >> Add enable/disable functions for TX and RX rings.
>> >> Add enable/disable functions for XSK pool.
>> >> Add xsk wakeup function.
>> >>=20
>> >> None of the above functionality will be active until
>> >> NETDEV_XDP_ACT_XSK_ZEROCOPY is advertised in netdev->xdp_features.
>> >>=20
>> >> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
>> >
>> > Sriram's mail bounces unfortunately, is it possible to grab his current
>> > address?
>>=20
>> His current email address is in the Cc list. However, i wasn't sure if
>> it's okay to update the From and SoB of these patches?
>
> Okay. Then I believe Sriram should provide a mailmap entry to map his old
> mail to a new one.
>
>>=20
>> >
>> > You could also update the copyright date in igb_xsk.c.
>>=20
>> Ditto for the copyright. It probably has to be something like
>> Copyright(c) 2023 Ericsson?
>
> It says 2018 Intel. I don't think Sriram was working under E/// employment
> as he said he was forbidden to work on this further and that's why you
> picked it up, right?
>
> My intent was not stir up the copyright pot, though. It can be left as-is
> or have something of a Linutronix/Sriram Yagnamaran mix :P

Let's see if Sriram has something to say about the copyright. If not
i'll just leave this as-is.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmbDVmsTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgos6EAClRiQ46uuQdJSoVAuRS+Oy0h7N5gSX
DLar3+UBIn0n2vd56pfsvptPA/KYR7bXnQc75LhOidWoXlrHsrP0yyDeoqvNGNM0
Syl2uEeYkok7/C8WvXsMmOtMbIXxJ2H98/0SNwfl8HYp1jzUKVaYGkioi8CyktHN
fPQqX33WMiBHyOMB3AB+Fh5MZ3BtrEc0NbiazK5Nuu0z4MD7tU82By8PS+4iBalk
00lZNcsvufAy2/DBkUx+A5PEpHqd9wUGnGESu9Dyyw5pEJqlT62DjUgA8BEnpTUE
G9iG/mA2/wFt0OIlEnrWMqRuHxO8JV4el4IkuKSrdkHbbA+zcwCnAEi2ApYhbW8s
h5YxhFHMn54jwKUIpMdpdnBlaXq/tYtDkRZqC5fOLDW1gZvcJaK7KaL0p3RT/UPM
dxnDAhMoiJO5iBOn9VgaEUudwl/QhWtGcXlKwFzpKYxZzws7Pgk0hFNFQxeNtPV/
PQDjVf541S4XYf0C+TNL6rr97ffUqTdIx84EzYafw93d1huvWjQWIaa0LzjgTfJu
rquJhAtCJLOfbbghbVao+nuTaTBl+AORwgEcGPJLPu5svP0LxP5h3ZkBRqI5Ozet
mr4WP1MZvCujFjWGRyaV/JhI78MNNF3gppPz+6KNque/G3BjmoKx7xd2+3W2YZjM
6YBuN700RJpouA==
=oq9R
-----END PGP SIGNATURE-----
--=-=-=--
