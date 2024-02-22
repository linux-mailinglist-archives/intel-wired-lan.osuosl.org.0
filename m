Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0322685F57B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 11:18:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF7C741B81;
	Thu, 22 Feb 2024 10:18:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZJhMUrdSoyW; Thu, 22 Feb 2024 10:18:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D6CD41B72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708597121;
	bh=af17vFA+XR0PLVSDztuSWa2TbDGEHKWUkQWkSMZboyo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gPlNf11GtKgyIpoFE6NFGig4N99eLmh2M0hJDm01q+6BdxBPHBUuK/ydg1JIWpniF
	 tjDbxvW+KM6alDxTkt+GHNglFul/u1ddaWnSrjJRCQGSGl0wH7baOWP2B1eqBPmCbt
	 GT7cHGXH/itpaIKTE/LKSLDMv2ElVMkDcr/R5CgW/4fxZcMzh3es6z/8K5nwzOhaTd
	 YFk8ZrQhcsAScnPaq9x0Ern59480CSAtFLQXhgn6ZVhBwHwphrqDqm+gWmW5S9A6jt
	 DcipEkIwo4CUsLrPo8Z5sOKXZNuMBLZXt5vXbP82CL6KO+dGB28qpn0MEcYUXh/xR/
	 rKTw8DJCZfqDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D6CD41B72;
	Thu, 22 Feb 2024 10:18:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 92EB21BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:18:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8AFDB41856
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:18:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mcftD0b1a5xa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 10:18:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 97DD441851
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97DD441851
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 97DD441851
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:18:37 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Arnd Bergmann <arnd@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240222100324.453272-1-arnd@kernel.org>
References: <20240222100324.453272-1-arnd@kernel.org>
Date: Thu, 22 Feb 2024 11:18:33 +0100
Message-ID: <87y1bcajk6.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1708597115;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=af17vFA+XR0PLVSDztuSWa2TbDGEHKWUkQWkSMZboyo=;
 b=3qgITIenivVJDEfsgXlDnVaO8ihsP7cjE+l+89ikE3tZsXtzMFglAoQJ4XTCsjc3Bn+Ak3
 I/8JSIqEkduAsTMgsUQDaaruPiTeA5V6xtlQ4d1XYecW01D8h8/QAqTFV13Cy0I25+yf0M
 970TfJOdkHbzecg/VNYX8B/uC8skUg7ZlA/Mbf2fDKhOUyI3fdJCO58AqAPqk6+0gE5/0i
 93Ju3DPLyN+j5y8TnC4xokeoJcTNULX/au6ZP0/yHD569EsxCi1QVWLpwzWn+BCe2akj7o
 4Md8R2oyWVZXbg4LYDPNsjSGge9hAlJdAM3i4NVV8ynyta5HChClSOnegMZ5gg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1708597115;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=af17vFA+XR0PLVSDztuSWa2TbDGEHKWUkQWkSMZboyo=;
 b=TZ+jyXJpIAX6ztCb0kRdlAbld1WAkSq07gQbwTdprN//TSEisBt28LHuNkZ4E5gbQUaYA+
 GcIlL2DSCe3dZIBw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=3qgITIen; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=TZ+jyXJp
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix LEDS_CLASS dependency
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
Cc: Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

On Thu Feb 22 2024, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
>
> When IGC is built-in but LEDS_CLASS is a loadable module, there is
> a link failure:
>
> x86_64-linux-ld: drivers/net/ethernet/intel/igc/igc_leds.o: in function `igc_led_setup':
> igc_leds.c:(.text+0x75c): undefined reference to `devm_led_classdev_register_ext'
>
> Add another dependency that prevents this combination.
>
> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Ops, sorry. I tried to build all different combinations, but obviously
failed. Thanks for fixing this.

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmXXH3kTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgpgsD/wL4ALVODXchFjqCM3M42Q/Cc903SsI
C1OkwJfeXL9PHV3NRF/st5Xb9C4ijdRlvOqKe9uoGFv2Hj0vV4cXMXqeOzgHIHLp
Ka0GPGR2yYJF2l1rzXepkLVKAKkUP/UDq97rOtV8q5Z4dLcvxLOCx+HPnKV3Eo+Q
eumqHTx9BUmgrXq0ji/Z9t2AqvUoYOgJpw7BO/mQpyUCm55rwYKwJ0FCuD+7Fjfv
wTW3RhkKOSSCK3AAIXporCITQr07ZxYaNEnOfPPI/xYoNgCkBIvjovPq4ghTPWm1
Rja3kmLUOmMG0nq2mvJeUzJSuaJWL6hnngk3FaJH9QbDN5fIBdTbGY9Mr5VmoCqO
JRYcdPym5xI57ahcCtZXK9YFtUpO8FWCUAVW7pXYL+owkNtBmo2odVrhgW2fozAi
EhO3X9/5AUOjBb9WonmnOe5o3pWWT3vO/ez3f5GaWuDZ74n6u34XIC9enlrI4Z4Z
zixs1ElctrE8fll+TNraf8SQ7o3V71HTadXKgjB0tszDqn/a8Q2jxxLfP9rMTwP6
UDUrpgbHBlw2SjbINMDOkRvTbEX1wgYc2Gw7z5svwGwkeyWHDy9lHz82NGaPafxF
qlannbnjglAp6LO+A6iy8KQEkeSN/8fZpJr2rW4yjTW+WmDkHMPxbNHpLcNeth28
g38yKoe48d7Ldw==
=yN6/
-----END PGP SIGNATURE-----
--=-=-=--
