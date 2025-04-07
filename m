Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 963D3A7EFD6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 23:50:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F7A7610C2;
	Mon,  7 Apr 2025 21:50:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jgVEfjdS8EIu; Mon,  7 Apr 2025 21:50:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22295610CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744062624;
	bh=gU9lD+RqDMo0wEfUDiyRdrBfsjXAPrpF0e2SpfAHy3o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9gJYjWtUvdjQAiemWnRKu+BpicrtvclQiMrGGnmw4FVa2N1IKsIQpKYYo2tjlDgrg
	 aJ1pPdg2OrX6oKf7oNTKeYNwErg2SBv3vxga8QORX6V89fkhEbNK8UvovsOOibveyQ
	 34pzI3X2ELhIWkMnzz3wGkjLIrK1VQ8u+r+rJY2i0F/U6RmoTJTHA+sxKY69oN5lQc
	 YWriZKgz59MrESCAx6g/6MGnXJWz94ZuF3cdzaMjFyhI5E2M4GiacC89j8G746nQhW
	 6lSQmKY7OA9J8PYCxLteepIpoQHkUqyM3wzey8kVAHNJFPSyoFHnn0SYX2F29YeHN9
	 tQqWDScR5HZdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22295610CE;
	Mon,  7 Apr 2025 21:50:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AE9281DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 21:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C64340C6A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 21:50:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3RF6l7BkK6KJ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 21:50:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=199.247.17.104;
 helo=prime.voidband.net; envelope-from=oleksandr@natalenko.name;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 31FB340203
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31FB340203
Received: from prime.voidband.net (prime.voidband.net [199.247.17.104])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31FB340203
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 21:50:20 +0000 (UTC)
Received: from spock.localnet (unknown [212.20.115.26])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange x25519 server-signature ECDSA (prime256v1) server-digest SHA256)
 (No client certificate requested)
 by prime.voidband.net (Postfix) with ESMTPSA id A20EE616710F;
 Mon, 07 Apr 2025 23:50:14 +0200 (CEST)
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Josh Poimboeuf <jpoimboe@kernel.org>
Cc: linux-kernel@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Peter Zijlstra <peterz@infradead.org>
Date: Mon, 07 Apr 2025 23:49:35 +0200
Message-ID: <2983242.e9J7NaK4W3@natalenko.name>
In-Reply-To: <ficwjo5aa6enekhu6nsmsi5vfp6ms7dgyc326yqknda22pthdn@puk4cdrmem23>
References: <4970551.GXAFRqVoOG@natalenko.name>
 <5874052.DvuYhMxLoT@natalenko.name>
 <ficwjo5aa6enekhu6nsmsi5vfp6ms7dgyc326yqknda22pthdn@puk4cdrmem23>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3343055.aeNJFYEL58";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=natalenko.name; 
 s=dkim-20170712; t=1744062615;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gU9lD+RqDMo0wEfUDiyRdrBfsjXAPrpF0e2SpfAHy3o=;
 b=LC3gxE5VZ4L+DEwuwpOEE+tzW6EXFqsP2z9PdoW+xbBc6jHNK+Kw/5ptPjToRWcdggytT1
 LtD7iF+q19Ny6NbPcHiSlggLtsT/A4YojUngAdMGoLxJy6gl5op/Y2FI7bigtNMnzmi3FX
 wPdW5gI0b3YnHEZV34kX+mgbSC+J2Q0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=natalenko.name
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=natalenko.name header.i=@natalenko.name
 header.a=rsa-sha256 header.s=dkim-20170712 header.b=LC3gxE5V
Subject: Re: [Intel-wired-lan] objtool warning in ice_free_prof_mask
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

--nextPart3343055.aeNJFYEL58
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Josh Poimboeuf <jpoimboe@kernel.org>
Subject: Re: objtool warning in ice_free_prof_mask
Date: Mon, 07 Apr 2025 23:49:35 +0200
Message-ID: <2983242.e9J7NaK4W3@natalenko.name>
MIME-Version: 1.0

Hello.

On pond=C4=9Bl=C3=AD 7. dubna 2025 23:42:51, st=C5=99edoevropsk=C3=BD letn=
=C3=AD =C4=8Das Josh Poimboeuf wrote:
> On Mon, Apr 07, 2025 at 11:21:27AM +0200, Oleksandr Natalenko wrote:
> > It's not a new warning, I've observe it for several recent major kernel=
 releases already.
> >=20
> > I do not build with CONFIG_COMPILE_TEST.
> >=20
> > I've also realised I see this warning with -O3 only. I know this is
> > unsupported, so feel free to ignore me, but I do -O3 builds for
> > finding out possible loose ends in the code, and this is the only
> > place where it breaks.
> >=20
> > > > ```
> > > > drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof=
_mask.isra.0() falls through to next function ice_free_flow_profs.cold()
> > > > drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof=
_mask.isra.0.cold() is missing an ELF size annotation
> > > > ```
> > > >=20
> > > > If I mark ice_write_prof_mask_reg() as noinline, this warning disap=
pears.
> > > >=20
> > > > Any idea what's going wrong?
>=20
> This type of error usually means some type of undefined behavior.  Can
> you share your config?  No guarantees since it is -O3 after all, but I
> can still take a look to see if it's pointing to a bug of some kind.

Sure, thank you for looking into this.

Here's my recipe to reproduce the issue:

1. expose -O3

```
diff --git a/Makefile b/Makefile
index 38689a0c36052..5ce5b44fa1496 100644
=2D-- a/Makefile
+++ b/Makefile
@@ -858,6 +858,9 @@ KBUILD_CFLAGS	+=3D -fno-delete-null-pointer-checks
 ifdef CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE
 KBUILD_CFLAGS +=3D -O2
 KBUILD_RUSTFLAGS +=3D -Copt-level=3D2
+else ifdef CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE_O3
+KBUILD_CFLAGS +=3D -O3
+KBUILD_RUSTFLAGS +=3D -Copt-level=3D3
 else ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
 KBUILD_CFLAGS +=3D -Os
 KBUILD_RUSTFLAGS +=3D -Copt-level=3Ds
diff --git a/init/Kconfig b/init/Kconfig
index dd2ea3b9a7992..03b1d768d1a55 100644
=2D-- a/init/Kconfig
+++ b/init/Kconfig
@@ -1481,6 +1481,12 @@ config CC_OPTIMIZE_FOR_PERFORMANCE
 	  with the "-O2" compiler flag for best performance and most
 	  helpful compile-time warnings.
=20
+config CC_OPTIMIZE_FOR_PERFORMANCE_O3
+	bool "Optimize more for performance (-O3)"
+	help
+	  Choosing this option will pass "-O3" to your compiler to optimize
+	  the kernel yet more for performance.
+
 config CC_OPTIMIZE_FOR_SIZE
 	bool "Optimize for size (-Os)"
 	help
```

2. use this config with v6.15-rc1: https://paste.voidband.net/2BVaYDQS.txt

3. compile:

```
$ make drivers/net/ethernet/intel/ice/ice.o
=E2=80=A6
  LD [M]  drivers/net/ethernet/intel/ice/ice.o
drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof_mask.is=
ra.0() falls through to next function ice_free_flow_profs.cold()
drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof_mask.is=
ra.0.cold() is missing an ELF size annotation
=E2=80=A6
```

=2D-=20
Oleksandr Natalenko, MSE
--nextPart3343055.aeNJFYEL58
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmf0SG8ACgkQil/iNcg8
M0vxehAA03RuT6O689+5Jdr4noiuWvqomKVkLszYT1147iwghBc2GiXu4qBx2ft4
Jq38NpHncquNMkr4I6ZHWR6dtqpdvlhYCVSFZWBzGzXQDZEGh64Yabro1FcoVszE
OGCnaJBXcs8q5vgBIg0hnRvkeyEczcrWAiywXbTcuBzNQFhLct+ewYzUJGeHyRMW
OZZ97N7lRGOzCjwbH2a5n8vqyv2rtOYRAg3BbAsIuLfVf5U6xGEXXjBvGGsGDxKM
2WeQBLzsXU4CIHZ3BXUBunDSTDCoUvdu3IppzHaptlGeVBlv481Phaanne3uGbkf
qv4kYELOm7V/FGw5lKKgQnqzwzQaMqbr6ds6aiIkABdewjQpIPi4qYpHEBqO14Bl
jBiC1OghCz2oCwK2KQtoOAobWXhLTDSQ6ykpX20BqO2YGodTG4SjWi4sTly11zSC
Cwo7dpeNTQOtwbDsBCHhiu2R5265qc9cg2cNBLM2P5UFrcOI6qVAR/r1/yXpUnoY
qKTGhb4vrqlyctCzgfqAEaJ70BUUIR33nVhmSEZ1vPmxrYLiroFzFWHc3bvkdfvC
2DFrbO5MNnnBi1anMDXlU3NIIx/i9lhjBKUnYvS/0heVnSkBapdcZPQaB4KCK0Hw
AVtDt1wPysYqWRL0JgxGf+P3BfDU307+2QhNVKbuP5JenUcFUE4=
=FX5o
-----END PGP SIGNATURE-----

--nextPart3343055.aeNJFYEL58--



