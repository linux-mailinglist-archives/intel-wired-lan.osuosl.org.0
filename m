Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76106A886DC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E84C60670;
	Mon, 14 Apr 2025 15:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CMyzTifzZ819; Mon, 14 Apr 2025 15:20:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7C22610A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644038;
	bh=iMO9IccfCm2xvSWEFUJlubmfDh1c2iU+/IvUT7403yc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dlmZuveAaxyxhGOoL8m1xXHmYjhL2mxM3vf+fYqZqNFLSRgqW5L+dW1DOGTfn2lC6
	 GkLcVMetOGzs0I7TQ72R/WzdN6TSlWXVaLYxUaob0Pgf/Ttt78sttMlxldo56kC/pX
	 Km/Vm2zz09Dk2a+LgRMKLhdy/ngG/MI9RIeErkOrlosJQddIXRx/wD8AoZOIKZCc4F
	 +wdij9o9YjKuVpiAjryQCK1nriv3DoR+y+bAX+bY+eZDbstGp0mqB0DjA6E474T2vX
	 51vSE3KRD9O3YZFQu77IZtoqH/rVVxt4h1vfyeikgWlB7ceXUsAIkfalsKBfQDkoAL
	 HLpJ1M+RUFC+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7C22610A0;
	Mon, 14 Apr 2025 15:20:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B6F0DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CB524078E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:29:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A6MrQv703af6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 13:29:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.156;
 helo=fhigh-b5-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A63FA40787
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A63FA40787
Received: from fhigh-b5-smtp.messagingengine.com
 (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A63FA40787
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:29:00 +0000 (UTC)
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 797D72540329;
 Mon, 14 Apr 2025 09:28:59 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Mon, 14 Apr 2025 09:28:59 -0400
X-ME-Sender: <xms:mg39Z6MO2uCp0gPH6tNK2EulZ3-WKc4wVrDOE1tewMT6SPRQCSnPDA>
 <xme:mg39Z4_JOMYHM42kmKKE5-WkTFGasCoMFbqBzeJ0RmptqzraSq2Guw7gaoKUJzAzJ
 decGJTNhFsMPA>
X-ME-Received: <xmr:mg39ZxSkeDTyuzKz_HqtNGVtjNP0K9UWHbEXIK-7Qn5QqNQiYbMGhyQ9_M9LdT570peAE_eRcw-T32ih2s6teSFqC9IvtsO8Ww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvddtieejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesghdtreertddt
 jeenucfhrhhomhepofgrrhgvkhcuofgrrhgtiiihkhhofihskhhiqdfikphrvggtkhhiuc
 eomhgrrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecu
 ggftrfgrthhtvghrnhepgfduleetfeevhfefheeiteeliefhjefhleduveetteekveettd
 dvgeeuteefjedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
 rhhomhepmhgrrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
 dpnhgspghrtghpthhtohepkedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepvhhi
 thgrlhihrdhlihhfshhhihhtshesihhnthgvlhdrtghomhdprhgtphhtthhopehjvghssh
 gvrdgsrhgrnhguvggsuhhrghesihhnthgvlhdrtghomhdprhgtphhtthhopegrnhhthhho
 nhihrdhlrdhnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehnvghtuggvvh
 esvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehinhhtvghlqdifihhrvggu
 qdhlrghnsehlihhsthhsrdhoshhuohhslhdrohhrghdprhgtphhtthhopehrvghgrhgvsh
 hsihhonhhssehlihhsthhsrdhlihhnuhigrdguvghvpdhrtghpthhtohepshhtrggslhgv
 sehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshgrshhhrghlsehkvghrnh
 gvlhdrohhrgh
X-ME-Proxy: <xmx:mg39Z6tAG5q_-mlN7TbVkEKknpZDzoH-FH1TfLkoAo_sGOMEnYA-0w>
 <xmx:mg39Zyfvmz1sVnPqkWaxWLP7aezRpvNvHDkwoah6fsBuRa6uaAKEtQ>
 <xmx:mg39Z-15HB_I08LrNCQSPUSSHFHWa2sRowet8gXQxWyzwyklTgo9Og>
 <xmx:mg39Z29pxDP62hoQfrq-pErrAo3uOVL0Jh6m9Wg3DmnfcPlZujxFmw>
 <xmx:mw39Z4T_dWr6aU2pDmSsaOokywZ5Op15EXF5ZCggmlMoh-IzJ01dpaRp>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 14 Apr 2025 09:28:57 -0400 (EDT)
Date: Mon, 14 Apr 2025 15:28:54 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
 stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Message-ID: <Z_0Nl1yD4n__oWiO@mail-itl>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com>
 <Z_0GYR8jR-5NWZ9K@mail-itl>
 <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="IB2IGAFxKW/DJnLD"
Content-Disposition: inline
In-Reply-To: <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1744637339;
 x=1744723739; bh=iMO9IccfCm2xvSWEFUJlubmfDh1c2iU+/IvUT7403yc=; b=
 J9UCMz5Ci/JXc2kD5UMu7YzqaxsTMyjl6YcPNGo4zkLwlg72sb6Znubb4OOYgr9F
 LW3OQI6++RNwHFWZjJvOAJvOUKoHj5lq9z7I1ru9xPX5a13ir8RQP3iSJy4/KeJ3
 c3Y7dxgjIWb0zrrsQf6YOfmpEA9IG/EjQvGvnNOHemSlaufNjTSXoam1Xp2Ncc46
 quAFqH3NPhFSjg6Rwhsdq4d+oRrnWR8+BgKsxaui5MGUGyju2p/rFHVXoYCKM2xC
 G0rJXk1hUrfZjGZerZlvtBrWuDSMKPLheX6i2+K+qkjT1D7xEWOsgleZOnaWjb/q
 7SuFHhJpnq4A4h4TcVXGaA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1744637339; x=1744723739; bh=iMO9IccfCm2xvSWEFUJlubmfDh1c2iU+/Iv
 UT7403yc=; b=VsF2XSoZvg+Fvp5WmnhCdfMmDw/+gqKQxfg5pNWOIyJi8ph5tvV
 Raw+fXzYWPJ2aJ5NOTpvMvhhOrTtGMy900o40Apqe/naae/u/4oMqL3PJwod+Kui
 w1knbc10IWj95mfYA3VycRivJ6BtSqynV4B+0upwk6j79qGn4Y5vA+3R0llLoZ33
 +r8ErlMADjqULs0P9Pzw9B61G581fidI/MH9Fr9POSr1njzZO21FBJtvrtgA8gtc
 8PPHehIrL475SGX2w2NCGha9tCpYvDKDnDkM+NWFC9t9k135QXnK6sBZ+r3c25PG
 2IqjngAc92qeNYQLvwPIgJ8HQuHpWFBtDog==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm2
 header.b=J9UCMz5C; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=VsF2XSoZ
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2
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


--IB2IGAFxKW/DJnLD
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Apr 2025 15:28:54 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
	stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Subject: Re: [REGRESSION] e1000e heavy packet loss on Meteor Lake - 6.14.2

On Mon, Apr 14, 2025 at 04:04:51PM +0300, Lifshits, Vitaly wrote:
> Do you have mei modules running? Can you try if disabling them make things
> better?

I do, disabling them (via module_blacklist=3Dmei) doesn't help.

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--IB2IGAFxKW/DJnLD
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmf9DZcACgkQ24/THMrX
1yyNbwf+ORoBWsb6q5Fjli64YiXuY/22Zvq/ugiuZv9CrpfLnRxkgLbkxdb9h2wv
n/YiAPxVIi/Prn8ihpS3UiMCLv9jEfMVIY8STpWr+O+gutyIaU0g43ZUECxpbyRW
cZWssO2ylXx2n83BzOEpJDFVcgZhWLQu/qjERf4Ub9BtQT6WsfkdoZ3muSK3TyuA
hTNDMAVcOa70nGwg6J9ksV3WrEHRHoD96HRwgS3IRmH8SRf2yvCQm4OWyUJqTE2A
XUzY2g1JQeWMdELJoxfFi6WlqWbIeCxXc2heLSC+NfQOAxCBmhVDK9b37Wj/Gwkk
0+SUrOc9A7ImL6/4SQivifiZRz1S0g==
=OV6S
-----END PGP SIGNATURE-----

--IB2IGAFxKW/DJnLD--
