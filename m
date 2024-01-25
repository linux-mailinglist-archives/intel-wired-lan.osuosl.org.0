Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 330C683BAA5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 08:32:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D98B613BF;
	Thu, 25 Jan 2024 07:32:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D98B613BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706167926;
	bh=u0662KfdQOEoLQZUhjZ3QWxde3WlZWZoj3EEvJD5LzA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hk/DmrORzw8P+BJ+drnJ2kGkZj3foPOYF1tss4t8Ayzq/Jxb0m2lXVtqamictU5NJ
	 b91rHO0D/NCG9OtHkThn1RToni9TTVI65y6gMD23aKYNJ19f9O9eJL0QIaSAkFV96X
	 APcTzvEDHNgkcfV3Q4zRhVRA99UEc61yUZe61353agfgeNMVtFa1CzUbqxX4uMNC1+
	 FKVwtOAEF1cD42DL4YYlbEgN7EUraghafxAxgGt0QZLlzDdICkIMBb3WqsprhU8T4l
	 54SaSqxuN0gHZPjEQEVnEebyZr7M93uNmS9hYBzpg9cl/X4W7XBBeXnhFNcHOPJw55
	 YQYShRkd2DeVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4YA_PZMklZSK; Thu, 25 Jan 2024 07:32:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6176C613AF;
	Thu, 25 Jan 2024 07:32:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6176C613AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B44751BF20F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 07:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 981468258D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 07:32:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 981468258D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lEtMN5xpqANE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 07:31:58 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A46E82451
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 07:31:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A46E82451
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
In-Reply-To: <de659af0-807f-4176-a7c2-d8013d445f9e@lunn.ch>
References: <20240124082408.49138-1-kurt@linutronix.de>
 <de659af0-807f-4176-a7c2-d8013d445f9e@lunn.ch>
Date: Thu, 25 Jan 2024 08:31:54 +0100
Message-ID: <87ede5eumt.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1706167916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=u0662KfdQOEoLQZUhjZ3QWxde3WlZWZoj3EEvJD5LzA=;
 b=xY+5DeU1rnSWh/i0TMXaAQWpBgKAtL8mzj13Do4RKlgCcs41CjcDNy19LaPjmzjgmJ2u60
 TSHnU9DDoE1y7dGS7J/FdSOTyvRFvvmF+libzkt3BxzPwhcOupmUyx5Ag4pf0nmOWwwfXJ
 hbERCCP2xtYVfkdkgSCzVias+PwY9BY318cYqwaNgceSzAIG4EFw6r4k/nsQIYzAT5rIsu
 xnKKyHvXs+cYLf/wLU4R6X5qItZuXvJtnJngaHkyykN/V0hkrGBOvCIXd9qZofz9hL33Bd
 PsY/Nl5yTsiDuCHtS9c86aJOf8K1Wgz2qaZCpHXAZnA02fBkPt2JdRYNtiQ2LA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1706167916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=u0662KfdQOEoLQZUhjZ3QWxde3WlZWZoj3EEvJD5LzA=;
 b=GCdJrb8FI6n+NzGDUr9ekXOVzS39IbpEOkVEYfUjSNFaHlHxXPLJ2Cr81ua8LpnsnjPpEE
 MWuEW2TnymuqHeAw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=xY+5DeU1; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=GCdJrb8F
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next] igc: Add support for LEDs
 on i225/i226
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed Jan 24 2024, Andrew Lunn wrote:
> On Wed, Jan 24, 2024 at 09:24:08AM +0100, Kurt Kanzenbach wrote:
>> Add support for LEDs on i225/i226. The LEDs can be controlled via sysfs
>> from user space using the netdev trigger. The LEDs are named as
>> igc-<bus><device>-<led> to be easily identified.
>>=20
>> Offloading activity and link speed is supported. Tested on Intel i225.
>
> Nice to see something not driver by phylib/DSA making use of LEDs.
>
> Is there no plain on/off support? Ideally we want that for software
> blinking for when a mode is not supported.

Plain on and off is supported is supported, too. Should be possible to
implement brightness_set().

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmWyDmsTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzguiyD/9wI7NnFwQFyI+EIwhnBpOuhJ3ozKQR
VIkRlgu5lJqpib5CgVW81zHqotEVY8xkViEoOKnvMffxRepA1+sZE1zqOoQiNNi9
6BtyqbmaAqka+bUWs731orXX25xvP09PZ4UoYFqpNnXeFHFYgLGuNs6pIEf5Xaea
MUF4oi5XK2ob2oUfZu/umw210oA8TYoF84hEwntQLf+Un8reypS7CCemeim6YQzB
h2oYEe2Y+d3d3hZIoTceKfLVa5l9eyu5WmXc6tXzvTPAMlIteJzRELNe3ngJwm/d
QN4uBm7A5UJ7nN4LOfZ0nGoOvHmsGJFQCFa4Uv0lrU7AmuM6G2gvPySAkKNUsFQG
5sKREal5NgW/FZTj9pkEGekgtWMT+k+iIs8IBjN1lixMVTKu0Pu06TaKMaFkeiDR
vsMtLwc4mHO9cj8C38eCGRpoOkEfqJeUD7CwdUNEfWRV0pb7SwbXuKCbU/FDLmgF
IzCV2daYskm6BF71WQunGL/d8x3lT+2S+6ZzYmhvxF9AerU3sxcsF2F2p7L91Say
NH9v2BnwUruN2acDZRGiMx03rNOjDxWLx+hP7CpupKzjaYs39nHrqi8bWQTQOrpD
lb9xvEAN9fSRC9/XzK6GngSShTN5BFecDMa/navG4yBa1Ju00Uh5oj+P60gjWF6Z
5UkFjRoE+ieGsQ==
=Ncxy
-----END PGP SIGNATURE-----
--=-=-=--
