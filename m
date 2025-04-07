Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB50A7E367
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 17:11:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58C9460A6D;
	Mon,  7 Apr 2025 15:10:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P5mh8tKq8d-r; Mon,  7 Apr 2025 15:10:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C253960AA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744038658;
	bh=vlHXXG98PgWKxGxcZYLCRP/TU5pgXiI5WxEWwcpmfhA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4hG+4Waq8uBa2/b7fn8yN3cIMRpGedSlAgr6sU+gR6/tYGCjflWtP4Yjlxbg9R1N0
	 X0Fy1OvGDXUHgE6SF0MfLyErZ4BY87JKuBDbvBSm3LEHV3c6cNScUOPP6VFgj8/NIF
	 DUXvfEWgKKz2kVFnzZJS6Yx2YYVa1C9xoFJKvdxCA6eNVk7tzGnylfuze8G36RlQIP
	 pLyFuqc0Ir5nslZV/ifyw+Cyv2IpmRFAouYfks9AufezOWLOtFJEBHjoiJGh6UXRtG
	 Sk5998IXDI9eb9EfPSL8gmfdwGXm9RXUcK+mJE1WiSM9QUztPTB0A/PZXt8fUvghtw
	 9XpFs0Ly6idsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C253960AA1;
	Mon,  7 Apr 2025 15:10:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D46F1DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 09:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7BCD440603
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 09:21:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VE84M6c6X5HN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 09:21:48 +0000 (UTC)
X-Greylist: delayed 10842 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 07 Apr 2025 09:21:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EEC8E404DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEC8E404DB
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a05:f480:1800:ee:5400:4ff:feab:5961; helo=prime.voidband.net;
 envelope-from=oleksandr@natalenko.name; receiver=<UNKNOWN> 
Received: from prime.voidband.net (prime.voidband.net
 [IPv6:2a05:f480:1800:ee:5400:4ff:feab:5961])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EEC8E404DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 09:21:46 +0000 (UTC)
Received: from spock.localnet (unknown [212.20.115.26])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange x25519 server-signature ECDSA (prime256v1) server-digest SHA256)
 (No client certificate requested)
 by prime.voidband.net (Postfix) with ESMTPSA id A6A4E62DD1A0;
 Mon, 07 Apr 2025 11:21:42 +0200 (CEST)
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-kernel@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Josh Poimboeuf <jpoimboe@kernel.org>
Date: Mon, 07 Apr 2025 11:21:27 +0200
Message-ID: <5874052.DvuYhMxLoT@natalenko.name>
In-Reply-To: <fdb5d23c-8c39-4f73-a89d-32257dac389b@intel.com>
References: <4970551.GXAFRqVoOG@natalenko.name>
 <fdb5d23c-8c39-4f73-a89d-32257dac389b@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6142846.lOV4Wx5bFT";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Mailman-Approved-At: Mon, 07 Apr 2025 15:10:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=natalenko.name; 
 s=dkim-20170712; t=1744017702;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vlHXXG98PgWKxGxcZYLCRP/TU5pgXiI5WxEWwcpmfhA=;
 b=HWQ80ZTxEG5UnyG7P9JMbkv47UEZourqaoZAbgle4OKb4AEfJSo1zomrOgB+0UCTrsI0El
 qRpXGKWbr4/a2sG6UBWwEhYeNIAd95Afh+HV9ILmJwr5i1G1BZTp51y1CFGmn5fxURmwji
 rSNpV3ltsvQ+xQWX+W7qrYb8rO01WRA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=natalenko.name
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=natalenko.name header.i=@natalenko.name
 header.a=rsa-sha256 header.s=dkim-20170712 header.b=HWQ80ZTx
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

--nextPart6142846.lOV4Wx5bFT
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
Subject: Re: objtool warning in ice_free_prof_mask
Date: Mon, 07 Apr 2025 11:21:27 +0200
Message-ID: <5874052.DvuYhMxLoT@natalenko.name>
In-Reply-To: <fdb5d23c-8c39-4f73-a89d-32257dac389b@intel.com>
MIME-Version: 1.0

Hello.

On pond=C4=9Bl=C3=AD 7. dubna 2025 11:03:31, st=C5=99edoevropsk=C3=BD letn=
=C3=AD =C4=8Das Przemek Kitszel wrote:
> On 4/7/25 08:20, Oleksandr Natalenko wrote:
> > Hello.
> >=20
> > With v6.15-rc1, CONFIG_OBJTOOL_WERROR=3Dy and gcc 14.2.1 the following =
happens:
>=20
> have you COMPILE_TEST'ed whole kernel and this is the only (new) error?

It's not a new warning, I've observe it for several recent major kernel rel=
eases already.

I do not build with CONFIG_COMPILE_TEST.

I've also realised I see this warning with -O3 only. I know this is unsuppo=
rted, so feel free to ignore me, but I do -O3 builds for finding out possib=
le loose ends in the code, and this is the only place where it breaks.

> > ```
> > drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof_mas=
k.isra.0() falls through to next function ice_free_flow_profs.cold()
> > drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof_mas=
k.isra.0.cold() is missing an ELF size annotation
> > ```
> >=20
> > If I mark ice_write_prof_mask_reg() as noinline, this warning disappear=
s.
> >=20
> > Any idea what's going wrong?
>=20
> sorry, no idea
>=20
> >=20
> > Thank you.

=2D-=20
Oleksandr Natalenko, MSE
--nextPart6142846.lOV4Wx5bFT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmfzmRcACgkQil/iNcg8
M0sq2hAAgv9gMejnpHVI+Cxnx+H+zNepzIt+NeOM1RI95cqJCAWkNIFl2msIJcy5
fn5ycnUTeVCuIBFi2Rsjs3offXq3B7gARMBL5nE7qKphSjgGsg8Spo4ckSfH7kgJ
74sgXuPHwNw5n0RaWcvuq75vojemqZ5AmO/YybDdJFXElLyPfy96fDx85DN/wmw0
9jsbNW+e/p+xpOIMcJqsVrbRmWLtTDMEOYK1jCCq6LX4GHzVhtWIUT0xIZ/hdC8S
5Sbrq6sLaH0WFfVum1ibwUmqD+pcN4zDsipSorobrkZ5oPG6J9oTmeQPFS+PoO/s
M6pbP5shs+q+HDcxUTb6XaeVnj4IhFJMBmP5FPNRqhiacj9hWHcXUk7++2VxeANF
cS8HF38eYZ3DWm89uec0gZR3TGwi5+bTGXfppsbGbrY0FwThbugSMkImCRKgJlGi
lMLzAujx4S1hYo7vqoPIc7eN0ogPezI1zpY7zb7Nm5qK2X80qX+Ky5KC7piPU363
vX8Trfl+gPIN7KgKvlafM+0pRjNklrtfGod/rWsHR86lshVzopB/g0HLE47kuXkQ
0L2Ea4DYfODrXXPZBZZs258wH6IakUGDz9nXBNe52p6eGBSMqvAL/EQR+IZIGXo8
OnAOqWELkQ30ZaE+FBKfdQhjyPO7IBfyh4TtmouGyTBOQoLWjug=
=/Gz6
-----END PGP SIGNATURE-----

--nextPart6142846.lOV4Wx5bFT--



