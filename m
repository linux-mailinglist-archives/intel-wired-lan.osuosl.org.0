Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E628956C56
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 15:41:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7891760811;
	Mon, 19 Aug 2024 13:41:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fDriniv77XgD; Mon, 19 Aug 2024 13:41:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC8BA607E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724074887;
	bh=pUQ16/btL6LsJgdEorngz/acoyyiJzWSh+XrIvmYTy8=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J1fay3cfrcL8ROgBcq7sxb9vqoaSMH/7iBvOfvm+sEFX1LEjGLHuHW3AWTqPrvR1A
	 MuPawdUy6BUaiV/CiqVQIvrVUFfvlBWjzj38JcHnr6kFbIdLyXFRPwwXpGo3OwWZOT
	 2UX/9L1Tbje9NZd47xlVsEfv2XH+KyOQDt5lIq+vk/n5KiJwsUHAqbfD6699UaUSpf
	 zDFbyx1Z/YUcoTScSkDC0KiCOMMAPapzleKqEPMNjyep+yiiBz2phwear7AQFhJUMC
	 FNq92n674PlmQzXwdRJHH2nt12L804RLujzxINC9czqI5J51z4qXzOv43mShYyoUB8
	 GhefjXNTvXdhw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC8BA607E4;
	Mon, 19 Aug 2024 13:41:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 836801BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 13:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A9D180C4D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 13:41:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8j8C8iADypwt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 13:41:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A17FB80C12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A17FB80C12
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A17FB80C12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 13:41:24 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <ZsNGf66OjbqQSTid@boxer>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
 <20240711-b4-igb_zero_copy-v6-4-4bfb68773b18@linutronix.de>
 <ZsNGf66OjbqQSTid@boxer>
Date: Mon, 19 Aug 2024 15:41:20 +0200
Message-ID: <87r0ak8wan.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1724074882;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pUQ16/btL6LsJgdEorngz/acoyyiJzWSh+XrIvmYTy8=;
 b=m2XorCVzHsJPQV1Kc6zSBLjJ53sMA5fko1vIF2CyOwIMT+fVEhwvCcvOR7b5tjYnv6X4rv
 F74+9HOGIHBQKmmjgDBhI9rlmcdlhyKEbSUcwyuWwYkmMIP45/YZ5QRMD9wZl3tGeeagw7
 QxwJ0f5yr7byGtikAHIoOehZifQTNkw+tRkmaHW6sqxs3cL/8Br+8VO9/4Y85KVwsJAcHQ
 AFQ2r+upd8X6qDOSIza67nuG5GNB3oYpnm+0G41CMEenAsP6hLtAoeANPojQQWTo00NIqr
 JdxwJLzTed8ZWYqJEzJAagewK1guQLnieBuYBGeNkgG5A47W2dS8X92VyB+ivg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1724074882;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pUQ16/btL6LsJgdEorngz/acoyyiJzWSh+XrIvmYTy8=;
 b=jNJUkd5BRM0hucGXYCtGhedWJYGlPnaFtdVEVO8eskSF+8x+N0jNz1u0v0F92RVfq1/jTN
 mwyu2oGWqaDC7iCw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=m2XorCVz; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=jNJUkd5B
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
> On Fri, Aug 16, 2024 at 11:24:03AM +0200, Kurt Kanzenbach wrote:
>> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
>>=20
>> Add the following ring flag:
>> - IGB_RING_FLAG_TX_DISABLED (when xsk pool is being setup)
>>=20
>> Add a xdp_buff array for use with XSK receive batch API, and a pointer
>> to xsk_pool in igb_adapter.
>>=20
>> Add enable/disable functions for TX and RX rings.
>> Add enable/disable functions for XSK pool.
>> Add xsk wakeup function.
>>=20
>> None of the above functionality will be active until
>> NETDEV_XDP_ACT_XSK_ZEROCOPY is advertised in netdev->xdp_features.
>>=20
>> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
>
> Sriram's mail bounces unfortunately, is it possible to grab his current
> address?

His current email address is in the Cc list. However, i wasn't sure if
it's okay to update the From and SoB of these patches?

>
> You could also update the copyright date in igb_xsk.c.

Ditto for the copyright. It probably has to be something like
Copyright(c) 2023 Ericsson?

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmbDS4ATHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgtwLD/wMYoKgJ1Pa0gm0Q9aimGe57wpD4Sbj
AZrRXoMdsGzmtxopJ3+E5Mm7Unktmm2917I6EAK/c8mkvRZpEfztA4mZBs2RyB5J
dZf65q7R+NqrPYuKuwbzAlzsVOW7NKmfmvpgrZUZwuYfVkOvjfhaktX2wqo2uiVR
nEMWZeNJ8YY2qkkfJYYXo9Fj4r9RloKXRM6W2gdUm5hVtMgBzCkztXP25LwxJ4+k
7xG+DaafDuh7aZnHT9D+pacurZnHVnEIvEnRw5GZdqoh7FQVzWRODSBTRnN17Tru
8sEdw7ixTHSOLKcguU/LlZl6uGXKeDYwub/cLEZEPEoxDZ3EXeuVKD6drrZ7yD0R
5oZ5YgFSuJwXNYwvv6s7qJbkC3hg9AUSFGn1spuM8TCGrY3FpJbvmq5olgJO7hus
mlrhxybXySGN0OVnHjJgCjAVkSs19btO1fgA/5tfHYu9ElGCTCvxvy5RkU5vyvqj
sguYTT31Hw8JcsHXTm5C3iRO4/ioIZpk9SCSdLWg6vK0kW2PaHK07kmUn4Utu1yD
m4BdJ0rqaAh893VyIgnLuT1bDen2z/W1xCsc/mJXHGs6OiPr0V/CyuK169V+/lyN
YX65UAYwFx3brkoogTwezeOg9yGOYWPdo17eeRgMlglC5RVDW6pXw7yXw+yStNAA
KY41tZQEKrfLxg==
=wTs0
-----END PGP SIGNATURE-----
--=-=-=--
