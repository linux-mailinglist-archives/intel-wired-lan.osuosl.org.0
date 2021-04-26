Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2169D36C787
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Apr 2021 16:07:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5481683CB1;
	Tue, 27 Apr 2021 14:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AHSfdTWRRO6u; Tue, 27 Apr 2021 14:07:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C8C183438;
	Tue, 27 Apr 2021 14:07:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E168B1BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 14:15:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD30B402C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 14:15:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="o7XL3QKm";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="Cm/Uxjaz"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44sHIpWLTcKX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Apr 2021 14:15:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD805402C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 14:15:14 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1619446511;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5B/T1CuqWPCNqs22nVrQhItaO/mUhF7UkyKIplWE5Eo=;
 b=o7XL3QKmrmP9TtPabYq7HeJ2ZuGhekW5pGsTAR9z5oOvbYhTnn24JC1pdhGdnMOe2bzd7n
 mzEKegEHZFmTT5mT/jmRLtCmQLex1wCRGAEj370KkC823NcN1rfLdatObkMy2CjZuS/1dt
 RKiO0IUe+FDVtLDLxB44Fq03sDyEuqqupOZgafnHsCg8TALS0RLQRvCJk8yo34ibwLJYCn
 ECDkzMMSqQ/qxPqR263o1ICX8bTrefIhxCsKI4yigvjYzVLE/XeihxDD5CrMaylGCnSPt6
 poWQjkoZt1AsC7U4cTusF6NzIeIRwVJdV1B0ySRUkRWqlP5W+Gmg0dIL16L9Iw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1619446511;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5B/T1CuqWPCNqs22nVrQhItaO/mUhF7UkyKIplWE5Eo=;
 b=Cm/Uxjazk6FAgIQPwuiCr6l0Mb4hf4hOVf/uN7Hj/0KR4aNOEsRvAWxvIBGmgra2Dg5a5F
 ZqNn+nY+3QpDCACQ==
To: Tyler S <tylerjstachecki@gmail.com>
In-Reply-To: <CAMfj=-YEh1ZnLB8zye7i-5Y2S015n0qat+FQ6JW7bFKwBUHBPg@mail.gmail.com>
References: <CAMfj=-YEh1ZnLB8zye7i-5Y2S015n0qat+FQ6JW7bFKwBUHBPg@mail.gmail.com>
Date: Mon, 26 Apr 2021 16:15:08 +0200
Message-ID: <871rax9loz.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 27 Apr 2021 14:07:03 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: Fix XDP with PTP enabled
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
Cc: richardcochran@gmail.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, bigeasy@linutronix.de, ilias.apalodimas@linaro.org,
 ast@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, lorenzo@kernel.org, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============8328276962010617053=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8328276962010617053==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Sun Apr 25 2021, Tyler S wrote:
> Thanks for this work; I was having trouble using XDP on my I354 NIC until this.
>
> Hopefully I have not err'd backporting it to 5.10 -- but I'm seeing
> jumbo frames dropped after applying this (though as previously
> mentioned, non-skb/full driver XDP programs do now work).
>
> Looking at the code, I'm not sure why that is.

I'm also not sure, yet.

Can you try with version 3 of this patch [1] and see if there are still
issues with jumbo frames? Can you also share the backported patch for
v5.10?

Thanks,
Kurt

[1] - https://lkml.kernel.org/netdev/20210422052617.17267-1-kurt@linutronix.de/

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmCGyuwACgkQeSpbgcuY
8Ka3Jg/6Av5nptVlgBmPCzHPNjBzGI3hr3Q0WP40E4nSnXwQokkuP1Lal69/9oFF
xP9bRGuWNUSnkjh+CNOHhI/RZZCKQ9Ivu3UIHjh9hWrmPXX2o40gACTf//mgYOX2
YQLyFqE1Gzd40Nj1FkKUdcBX0jo2e8l/2fMhFARGev9z5ZtRRx1quGfDa5S7WsBz
gQqG5a/u3OvBtwknjSKsMj5Q5TapnhfhanX7a9KeElllF0fdPFAPqDt0JMZrvasR
W2w3L0gjZgui7AYNCg2SYdmbT+ZDpeOpe3CHvox25BFjm2Uu+NhVJgBisD3KQc1r
EZMzUjOyZEPxpyBoPC5LZTVqtGBAkf3dp3lA5h1tgbLtCubD7HsSuFYXPa8z9CZq
DBdft/Ig+c4GGpZ1oy11ikijeUL8RLzNhLGSJaPRoErIfS7jUmmjFwijoiVyyxOC
jY8BqFcWqDbgGtYnBjkUoUupFoo6BoQDXZWHneTC0shYyJvjVA1bCR9SzgdqBxry
JKkoSFQAK50tC7k8YQte4KhXg/JcoZpAwU9rDPD6kXfCYUKHEZUtD8unwPXbj8gO
euwA2tcn/WTe58A5GWUWQSOSLJZvsRv5eoho3yd2a+7fY8Qz1hKJYvcJiWoKt+z4
P1jJotIhyIgxXmZ8MFDfxOQomgpXhAekpFkuWBdBzO+uhBbUxAA=
=yT0P
-----END PGP SIGNATURE-----
--=-=-=--

--===============8328276962010617053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8328276962010617053==--
