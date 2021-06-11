Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E0F3A43FA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jun 2021 16:22:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8715A4158B;
	Fri, 11 Jun 2021 14:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id edvYeyV60K8T; Fri, 11 Jun 2021 14:22:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5307241575;
	Fri, 11 Jun 2021 14:22:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 729CA1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 11:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 618D983B2E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 11:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="A+lx1rGK";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="LAvxHejE"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5408Zi1vmq_9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jun 2021 11:01:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19634839F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 11:01:34 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1623409290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IV2HB1rj3Mgf8LkIbefXby1s5aoJTg6To1RPw79OUaQ=;
 b=A+lx1rGKNnsxXZbZWvVOUGuADrGbCwnMe1aT7pD6+yEm6UsFt8Q5dgYZksPbajF/IPeB2q
 fAXIHbEFiq4CDes/sHMFEaAkaSQeKLkBYsUP8BafBJ+e4+BO6vJMTEjnRkYzc6DDTtQZkH
 7O28v3L1Sg5UAbqRLFF4Nt1fLH8DQ7shaxy+aVPFPcnxLa3fvUzlgXG1YjAuN0aTYVIF1f
 Sd9gTaq7DVl2zgKyKcxaSVCtfqhNHVgaHitdlVlflfp0hw3TQoRj2PqFmblyyQYbEVpIC/
 1cRQOoRKFn2I5F6gvVVLAP2CrAeY3RJrmjrES5UulKC4f0Y0oB60XXzCM2dIAg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1623409290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IV2HB1rj3Mgf8LkIbefXby1s5aoJTg6To1RPw79OUaQ=;
 b=LAvxHejExh5dEzaS5wpwyU1Oh71uy1odue6iwL7Q57BRDWA5Pv7mXDkdMPeRJaNR+YcbHB
 ureDAKVervJDaUBA==
To: Paul Menzel <pmenzel@molgen.mpg.de>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>
In-Reply-To: <37283593-408d-cdfd-ed5c-f2c215af87d8@molgen.mpg.de>
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
 <20210611003924.492853-6-vinicius.gomes@intel.com>
 <37283593-408d-cdfd-ed5c-f2c215af87d8@molgen.mpg.de>
Date: Fri, 11 Jun 2021 13:01:29 +0200
Message-ID: <87lf7gmzqu.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 11 Jun 2021 14:22:07 +0000
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 5/5] igc: Export LEDs
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============4684083563774653921=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4684083563774653921==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Fri Jun 11 2021, Paul Menzel wrote:
> Dear Vinicius, dear Kurt,
>
>
> Am 11.06.21 um 02:39 schrieb Vinicius Costa Gomes:
>> From: Kurt Kanzenbach <kurt@linutronix.de>
>>=20
>> Each i225 has three LEDs. Export them via the LED class framework.
>
> Very nice. For those not familiar with the LED class framework, could=20
> you add one example how to control one of the LEDs?
>
> Also it=E2=80=99d be nice to document, how this was tested.

Each LED is controllable via sysfs. Example:

 $ cd /sys/class/leds/igc_led0
 $ cat brightness      # Current Mode
 $ cat max_brightness  # 15
 $ echo 0 > brightness # Mode 0
 $ echo 1 > brightness # Mode 1

The brightness field here reflects the different LED modes ranging from
0 to 15.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmDDQokTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRB5KluBy5jwpiL6EACHiyAk6k8xDb+4IwXqfzN1dFimEYnj
4Q8k8UOANQ2skoJCI9puhHj6YOZ0hLfbWY1YWIrR7V2XRrGecjc866ueRVo5n+zm
/cFLKQ8IAYM9SHxwT5DD8eSltV91COJDEXzsrzCQN3rCcsebL37wEyRf/E8vlHsz
0vyAYNtr2zypx2GU6quzDkon3Pz8nH9WiUpBrlz1oFndFKFpxEPaM9YpyrUmBpbz
P7hbpNOij1g1/MKWG5n7QvCMiHxvJY8LJjyzNsqq6f2GJZb8S0q222JI3jfJPBIC
2RFl752rJjIYoPU8EIxo21nw5b+3SaiUHTmnIPOxYstlQ+ZsB5nkaLfTIZtNa6Wo
QNt+w8GtVEZ/uGkJCUd4LypVeY2KNyJ0zJVa1KQCCTQTCnUY3L00MKwFVkb2dS8a
7coCn7zQx8AzXqJM+DUxCvSuTgxrIXxrTMdkW6clQK7Rh0XjjNQ0vbVTA6Bjux0a
yRDeaHHqMIV0gSShNkiGA5q0APWxHkgcvSMUjZqcqUnYd5Z33X0KY/W5qOnsABHd
KFNRLk5HfrhWvXp69hOFempkbpjlahF+toZAdSVzWhZAp+hu/7mtvSrYA831Szk3
crQK8pVhqCg9q9wK70bMTBp36XHrQpx+wrPygnhpvIcj4iFiTDGPyFHHBBVxurPt
yyU1TqazcK/tjA==
=OjeJ
-----END PGP SIGNATURE-----
--=-=-=--

--===============4684083563774653921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4684083563774653921==--
