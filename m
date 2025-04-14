Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4032AA886D7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D59BD819D2;
	Mon, 14 Apr 2025 15:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wwq4qPb8ClKI; Mon, 14 Apr 2025 15:20:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 526E481CE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644039;
	bh=FGczV9RNjMQmfxd5ITnC2B5H9+mipmvnLLOBr0rYbCM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZkCyvSDGNYJ1BRLJgoiZ14FTJBEXcfeCL90SOSiGAfyAVhmmsZbu47Cw/1gztEeVW
	 i3XCbBuaEINtggBU7h3Z8pOe1YnQizAPQaORlgOM0Yjb65qvflkXr1w+ReoTVRcd+y
	 E6LQ9J1isuecBOb+kkYb3FsvPjZaH/hyl1KhE9oSV5XKSWr29gt9U6+jVHbTn9iyTd
	 RrbUNp4domKlruEFtb6HuUPHISq+CWLnD12Qa3ljmbpSGmA6qUHky5OQ5jyla35v5s
	 l5R7QMCrzWXhRvLfDbkTVHDZwR15MQBMdKzFSnvh1hUgtIFgpivX5XQl/Rf9FxNkH6
	 xQklqKVrz8YXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 526E481CE1;
	Mon, 14 Apr 2025 15:20:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AA987108
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 14:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9853C402E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 14:27:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZY6G44o9Mpzb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 14:27:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.157;
 helo=fhigh-b6-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E91DB4040E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E91DB4040E
Received: from fhigh-b6-smtp.messagingengine.com
 (fhigh-b6-smtp.messagingengine.com [202.12.124.157])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E91DB4040E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 14:27:23 +0000 (UTC)
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id B218A2540092;
 Mon, 14 Apr 2025 10:27:22 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Mon, 14 Apr 2025 10:27:22 -0400
X-ME-Sender: <xms:Shv9Z-HDHvZB7J3iBDdUSQ-ZH4y0ki1OipAAXf4o5xFAnQRcefx5mA>
 <xme:Shv9Z_Wod2hOamRjVzLqxeUd5gvVdrTm5wTZPZA6wxi9CDX9rgxkMkOZTD71r6-q1
 XjdvOk36Pwptw>
X-ME-Received: <xmr:Shv9Z4Jm-ytIC-oRHDGWRfSpk24IcOPqJQ7e9gLNPjaBmIhoB1WXkAXSWYvp9YOxucJDY8EHeKn3AihIoqcofxDQ23eRbGbt8w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvddtjeelucetufdoteggodetrf
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
X-ME-Proxy: <xmx:Shv9Z4Hd3hjCGEhxqSrTN-ZRylr_4bd5M6TKcw8eAUwC8tpq5lTtfg>
 <xmx:Shv9Z0X6FR_S9SvvzCR2Xzd1BJr2or9LUQkBPICM2Bu8lUUEIqVb5w>
 <xmx:Shv9Z7MpuAl91ymTARkmz2H49ltLoE1-Ye4UIzEBipuYQF3qIxzdbQ>
 <xmx:Shv9Z70kgrarP4T3-kbgzpcQCe_Bh-5Vb2O450Rc19EB47Wgo46_RQ>
 <xmx:Shv9Z2IenmIynaODyFpXHB4RWhJU5kVtpLZgV5kntx7VeHSUKVGeTTaF>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 14 Apr 2025 10:27:20 -0400 (EDT)
Date: Mon, 14 Apr 2025 16:27:18 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
 stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Message-ID: <Z_0bRoXicYoDN8Yf@mail-itl>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com>
 <Z_0GYR8jR-5NWZ9K@mail-itl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="rTRxnz3WOg1FQi+e"
Content-Disposition: inline
In-Reply-To: <Z_0GYR8jR-5NWZ9K@mail-itl>
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1744640842;
 x=1744727242; bh=FGczV9RNjMQmfxd5ITnC2B5H9+mipmvnLLOBr0rYbCM=; b=
 UEvAevRoNXvAlB6qUjAuZfSlFYe2Ibhl4BhFljf1+2Nm4Ha3jEVpBG2uSY+vnrt7
 iba8gjnrbVNXWYOXsEsh3LyvkltxP1U3b4f20X/j65dN4D9DOqtwPOW+3L2h/o7/
 QsHJpdjDr9qSkVo8+AI30nqkLr2c08tp1/6Cei2QUOIHzsAAdi7JmmWdHIS3v4ff
 G0bMMITqPF13ZlfO84m14/OV1hX3kPC7RUy4H0vcmo5/i3KkYBSFPrDi784NHIjD
 FLI6OvytE+Veiq4CDcFh1LdhvNOydXphG3kfDnthXrzMqoebz+kjMuMQ0St5vrtb
 ksK99U+bsQ7O+nHFFrOIeQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1744640842; x=1744727242; bh=FGczV9RNjMQmfxd5ITnC2B5H9+mipmvnLLO
 Br0rYbCM=; b=Ft8asqhgNZHMhjVRK6nSuhT1hEzeVjLo80WQTha3IeT1kv1nqdY
 8RK8d9bqGlD2t4mgyo5/xzjKUeJ8DDqUtmIhoN+ArcuQBZlG8io+5OocvXmotAlj
 ABfcc6gmwi+GnwkPBhDG5TvWO6CVXewTvGjXcWFAxkYh5urzB7epEt5gbMpXAuw3
 M0WO4heXjoMmMKZrcuxbaShyja3bhECRElcpftxygfjeDqeLnCuUIHbHNJjJoref
 iHgesMXHQfn7kHEDDDrK7hKJpxKiaXJxG/dbwGQETwImXKUmsa0nnHGmXQraPcj+
 q7Cp2qNannKUWBSKOrBVURgdGP13ydiu/LA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm2
 header.b=UEvAevRo; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=Ft8asqhg
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


--rTRxnz3WOg1FQi+e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Apr 2025 16:27:18 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
	stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Subject: Re: [REGRESSION] e1000e heavy packet loss on Meteor Lake - 6.14.2

On Mon, Apr 14, 2025 at 02:58:09PM +0200, Marek Marczykowski-G=C3=B3recki w=
rote:
> On Mon, Apr 14, 2025 at 03:38:39PM +0300, Lifshits, Vitaly wrote:
> > Do you see the high packet loss without the virtualization?
>=20
> I can't check that easily right now, will try later.

Tried now, the same issue is without any virtualization too.

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--rTRxnz3WOg1FQi+e
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmf9G0YACgkQ24/THMrX
1yweRgf/aORxxg52KTbf5Wzyo3+4I32anJhuAiYfyvBI6iVxylb/WPaUmJpWgEyg
AbIRZ1AH+VEQBrEkp8MnHwzohTVJoujvoNxtYm3cXcyimvdTlF8Kxs0pbPJRvqYp
UJoJnJfssPcA5/SMOaggYVAbRl6YWm8V3MC+PNWyyc6p9Pk8sU7RBM/0MQZ2ev8V
G1m24gH9ZrEwKZRhJnGdPz/eUNEYzFBd2lfodkRt0rw/suep/JhzxJNm5mfcn/WC
mVZfU8/j8sJxO58tFRjIZ7Cw24W1TVorM2c8MC6NDYMbKSmn2q1odXEs9PYeRO0W
viBB/84x4D82qNVmbDS1Q96Qw93B7g==
=M5lp
-----END PGP SIGNATURE-----

--rTRxnz3WOg1FQi+e--
