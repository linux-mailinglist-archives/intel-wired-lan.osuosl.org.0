Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76370A3B29B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 08:39:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D314761190;
	Wed, 19 Feb 2025 07:39:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VQH-_RenQOd0; Wed, 19 Feb 2025 07:39:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43E4061188
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739950757;
	bh=cZyhIf6nJ9+7h9izRSQB51sdbF49s4FF9n3hIEFfuzA=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ef0B0GQRdGS1qsq+xroWQ7iOMeDfOmASeUXQxg9YQAo2+UP6jYed2tPuuEQpePcqc
	 yJJCzxuseEK//iG/2y7gv6GWnGaGues4O0eIoCs/cOeht3qlgQAs9IObqpO+0JlPsJ
	 2CV7/UsMhufpzkrDLzti/8ADtWB4HaPMYiHd2N8FVzjr49CPk6a9yrbacn4nJw+Bem
	 MZy2BZsnS6WNY50sNQghU+ho4U9BRzRVgsizbC5CiQ+VRN99o/yDwtKFwPLAyCrjw1
	 nFfTgInE6BEG0Jo5BzyYU62iNtKTUiYAq3TcBnaQ6WfaohfxM0RpzunpEQhqlpixUB
	 4kFE+hOmy3+Eg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43E4061188;
	Wed, 19 Feb 2025 07:39:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EEF8C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 07:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29FC740603
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 07:39:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gaK1Cw8-NwjJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 07:39:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DA19E400C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA19E400C0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA19E400C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 07:39:13 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, Gerhard Engleder
 <gerhard@engleder-embedded.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <Z7T5G9ZQRBb4EtdG@LQ3V64L9R2>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <Z7T5G9ZQRBb4EtdG@LQ3V64L9R2>
Date: Wed, 19 Feb 2025 08:39:08 +0100
Message-ID: <878qq22xk3.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739950750;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cZyhIf6nJ9+7h9izRSQB51sdbF49s4FF9n3hIEFfuzA=;
 b=U0PDkQz+9kP8X6+xsFhP66Z4aaQiS+vXyAx2xOLMXSJZ3ZHvMvQSCm6bcDMimvGrHf5Ngy
 goAI/XpO5gmTSKtKeb79ixIZObo/VH2Mtm6aRB6ep3VIcrpjjt34I8M6SGSDDwDiFnCZhh
 eRLJN5no9/mEuA9Wq7bzmS87OqHkLsANg2uNFwhit+lzmEbdzcBps2DlwWfUS2WcV77Ll8
 qswjujf9aoWWi15q4MYpq3yvEsfxr34Kk/B/s61JBvEi7JF19MYtbjPY9rjLsZwRkdRLBU
 StW9h53cZZ3hrVJxkbV9kNcvWl4Nj1GM82l3Z8iWTP1AtUYhR0jJldP4zfZ61Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739950750;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cZyhIf6nJ9+7h9izRSQB51sdbF49s4FF9n3hIEFfuzA=;
 b=wNW1Ivznoo31IUxaE4Eg05/hvT7XDxDJtqZNrbGq9mOxf8lyULSOs5xYeLyITf4PpcxFHR
 QBCKmO+IAkyJBvBA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=U0PDkQz+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=wNW1Ivzn
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/4] igb: XDP/ZC follow up
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

On Tue Feb 18 2025, Joe Damato wrote:
> On Mon, Feb 17, 2025 at 12:31:20PM +0100, Kurt Kanzenbach wrote:
>> This is a follow up for the igb XDP/ZC implementation. The first two=20
>> patches link the IRQs and queues to NAPI instances. This is required to=
=20
>> bring back the XDP/ZC busy polling support. The last patch removes=20
>> undesired IRQs (injected via igb watchdog) while busy polling with=20
>> napi_defer_hard_irqs and gro_flush_timeout set.
>>=20
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>> Changes in v2:
>> - Take RTNL lock in PCI error handlers (Joe)
>> - Fix typo in commit message (Gerhard)
>> - Use netif_napi_add_config() (Joe)
>> - Link to v1: https://lore.kernel.org/r/20250210-igb_irq-v1-0-bde078cdb9=
df@linutronix.de
>
> Thanks for sending a v2.

Thanks for the review.

>
> My comment from the previous series still stands, which simply that
> I have no idea if the maintainers will accept changes using this API
> or prefer to wait until Stanislav's work [1] is completed to remove
> the RTNL requirement from this API altogether.

I'd rather consider patch #2 a bugfix to restore the busy polling with
XDP/ZC. After commit 5ef44b3cb43b ("xsk: Bring back busy polling
support") it is a requirement to implement this API.

The maintainers didn't speak up on v1, so i went along and sent v2.

@Jakub: What's your preference? Would you accept this series or rather
like to wait for Stanislav's work to be finished?

>
> [1]: https://lore.kernel.org/netdev/20250218020948.160643-1-sdf@fomichev.=
me/
>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAme1ipwTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgv/gD/4gY0K9/kkjLMJzWgVHmC5XMh7QYc27
A0HdOrtjCn3hKKtAMOVdjkQGgY1b4boeBvkGE4MKJaE6+XmSEpwnN7zJj/wqcy2s
AElHtM4R2ihPzYGOXpE/OeWjW8nQ0xaPqOOl5QURe1XdEitNY+bUjMMeALbcxye5
P93UwTQxakSL+O5+gPXcs4sHshPFw0RpS0jQXy0RFm7kc+w5gmOCjrLorNnC8tMw
sG6+Yqf4f6DZ76NazVcRHXTT6Wby4e99d1silfz8LWuIO3isIYrz6lKP5F9D27XR
KblZM3D9s4mwz/udWIXmBTQtiacZ7azKlAPlRgq+gtG1msy622mukOh15ycaPNAz
jJ0VNA2mGY1srMZ1gOT15GBwkRYKoU8A1d3udEL4Xxi9ILdjfOa6ItNDUfm4CGc5
F8bVgPQzagqmQU7Kpc+zxuL7fb7TPKCNNTy3Nfdw3GZu0IJpeSg0yDpLU8pxk4h7
FgrYJE3j0hr+C+lxVQuXtLs0cJltmFuevzkmoCINhO7BjJPBtbwQciq5b512llLE
K2TDOKg/2lqEq8Ob5E8vM6NZGQ2l1QAyTHjVeYeQcp9pIhAUMycEKq/pSHWA6NPJ
0C/RZbgsjC3TmBxT6uC2hY3Z6pF512+DgFLGp6ZNqlzhF4/Knk6lbKsGP73ky+ej
O/BH8SY8Q45mvg==
=2MYZ
-----END PGP SIGNATURE-----
--=-=-=--
