Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 632D2A951B3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Apr 2025 15:31:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AA8340395;
	Mon, 21 Apr 2025 13:31:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XaXFjj_IUoLB; Mon, 21 Apr 2025 13:31:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8618402F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745242273;
	bh=zVbdfyjXXUzkgsvwIg3jwWbyVaRbh5FQH6V+d4QgSvc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pFTn2hS15ss+BtEqEACYdLBKf8yG4W2Kc3lZJHsxmvFhvykJwp3DMt/pl2rrtTZIy
	 nI8GdzvtWa5qy/9mtYXv/tPVJqkW/dFWmqyz6i0fs11N11Y/5QRk8Wobyfej75+k0v
	 gpqILkJyKjvBxgWOnKxfPOT8QGQcU+pTlN5BHne9xF0ma/Q3fkBQs7wqHNDmDQyrRw
	 P/kotVh5Fi6JzzSudqbtt3hb8JKJX51oI4jddLLquJoBlCZqx/TJEbPFpGrPhxeHN2
	 1pQHROd3z3JjOlO20261xqInxx160c/uKGIT1dG2LVt/b7Ad69YP/4yAZgNI51fY7D
	 cyHyfsupfMxgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8618402F3;
	Mon, 21 Apr 2025 13:31:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5ACEE1A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 13:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C4176085F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 13:31:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M35ktSl9moRy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Apr 2025 13:31:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.153;
 helo=fhigh-a2-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A488260A76
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A488260A76
Received: from fhigh-a2-smtp.messagingengine.com
 (fhigh-a2-smtp.messagingengine.com [103.168.172.153])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A488260A76
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 13:31:11 +0000 (UTC)
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 9CA681140247;
 Mon, 21 Apr 2025 09:19:16 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Mon, 21 Apr 2025 09:19:16 -0400
X-ME-Sender: <xms:1EUGaAOBAhZkwXwzh3HU6Yb_nouafcl3par1ACCb-ylstV0RkebMqA>
 <xme:1EUGaG-8s286vBiyLKywdyhTFoD9BxQ50tw0FjplTw2-0ja9PquDDJM_dA0XrPUW8
 VkQFe2JUEalyg>
X-ME-Received: <xmr:1EUGaHRNh_rI7INPcpx0an_JhVLQFa_I-NdJffOynRT9mEAbtF8FxPD5z6SklnV1EMr9p2ppL6iYwP7s2JZ9sg1teJxDHTWU9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvgedtleeiucetufdoteggodetrf
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
X-ME-Proxy: <xmx:1EUGaIueBX-ENHBjt7DTNYlMFF21tNKIdqI7ymi-0PO62W_vIt5P_Q>
 <xmx:1EUGaIcnPRA2UWqw-XFvbNQ-TgSEH4rgzF54qPvD21XpHmxL_rlMow>
 <xmx:1EUGaM26595kmVrL__Q2j41Nsl81BIIucpNDrV44cHhAhAdxlO0ybg>
 <xmx:1EUGaM9IGIgVs5uo11bWgEEsScsDu3HKqbUE3HuLf8quWFa4RxY1mw>
 <xmx:1EUGaORDDeFLL8wGE2OIlC6I4sQImaigSz6YR9KgFP2mgoFhIbLE106L>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 21 Apr 2025 09:19:14 -0400 (EDT)
Date: Mon, 21 Apr 2025 15:19:12 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
 stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Message-ID: <aAZF0JUKCF0UvfF6@mail-itl>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com>
 <Z_0GYR8jR-5NWZ9K@mail-itl>
 <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
 <b5d72f51-3cd0-aeca-60af-41a20ad59cd5@intel.com>
 <Z_-l2q9ZhszFxiqA@mail-itl>
 <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="FtZpEP7ZV9KwPWkb"
Content-Disposition: inline
In-Reply-To: <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1745241556;
 x=1745327956; bh=zVbdfyjXXUzkgsvwIg3jwWbyVaRbh5FQH6V+d4QgSvc=; b=
 MrbIe4s3pdaO7DysJAHQIpmTwPlQv69KKw52uSk0OzmgnV8RuwrGEXUEc7HyhNlV
 8ccAU/EWcSAf1tgIjuGNlqNGUCQSdirl2FJlK3utznREFFZ8xwepZDgePKjaKdPK
 DEG3I+akFUaMepkP2xssYZh6gU+TDZhiMgMd4z18j+No4bK7qC5EGOtSR/PZcNlM
 bxXfKLZeO36BjJ6XGVpAJ4lz6uAGDP1Vvb4Fv81/FiUgrdwiEOE2KDUS2O+TJgIz
 4ZuEd/ESo4JpDKZjfEp5splwh/dSkpP+zEMgFd+chqUbiMsvFx3a9golsyNCmpEx
 zIC0PDUrhP/vIN1/I8O20w==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1745241556; x=1745327956; bh=zVbdfyjXXUzkgsvwIg3jwWbyVaRbh5FQH6V
 +d4QgSvc=; b=e9j+OPzzFw0c/WfO5vtzydbJNlOm1jp+0KzcfRpTpbM0EFzEy+0
 nbucO3P6Lx4CCupQvtsat7JapPgtzP7cLlB3g7osJwx+GZHNGrJz+K9A46DKYvCl
 DAbOxNVcK8WI7urCxh/tM9SLml9a5XS6TJ0oDN3fJnmHiPv8e8gi+f0eHtkbuP/z
 NjQHQJplVrzdi7I7csrhQ8/L4zWGchXlqG4MRVSyaAum4EwiVZK3Ki/bR1EQAVre
 u0jmPJgo0avxPanY+XBtayNiMU/SsrahDtFXqc59pnTReU95WRlCheHuoMtrvHkh
 SnUDwo1yu1ZOAoqlDJQRMPkc0uhx1yqz8ow==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm2
 header.b=MrbIe4s3; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=e9j+OPzz
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


--FtZpEP7ZV9KwPWkb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 21 Apr 2025 15:19:12 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
	stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2

On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vitaly wrote:
>=20
>=20
> On 4/16/2025 3:43 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vitaly wrote:
> > > Can you please also share the output of ethtool -i? I would like to k=
now the
> > > NVM version that you have on your device.
> >=20
> > driver: e1000e
> > version: 6.14.1+
> > firmware-version: 1.1-4
> > expansion-rom-version:
> > bus-info: 0000:00:1f.6
> > supports-statistics: yes
> > supports-test: yes
> > supports-eeprom-access: yes
> > supports-register-dump: yes
> > supports-priv-flags: yes
> >=20
>=20
> Your firmware version is not the latest, can you check with the board
> manufacturer if there is a BIOS update to your system?

I can check, but still, it's a regression in the Linux driver - old
kernel did work perfectly well on this hw. Maybe new driver tries to use
some feature that is missing (or broken) in the old firmware?

> Also, you mentioned that on another system this issue doesn't reproduce, =
do
> they have the same firmware version?

The other one has also 1.1-4 firmware. And I re-checked, e1000e from
6.14.2 works fine there.

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--FtZpEP7ZV9KwPWkb
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmgGRdAACgkQ24/THMrX
1yxLeAf8DvKL+foWSoIwDphGGhQZ3unGbl5ca72JDBQ6KcM6JxaNauYhY9mpzz+C
ZESupbqixbb+HLmbIbEQLVlDyfxAW6x6y4sBV+8c3fy8678Z+c2PcHIgiX8YV0a1
Ntrjn9GRZBWi2e6RmJSCHijHtRlfQsjDxSWiwT1WxjuNVROgsLOW9LXPZmXvasnp
UDTqgIhH6jcNFhaQ/pQcoGyZ31vG6pVLeloePXDOlJ35Gb+4Cts6jTeqBxxyF0R8
O1TMVSAYc3G6wlH7o1eSQ4pLeORMY0H8m/kf1dMOLj7osPorfDauk5KLXVm2WWJh
VEKHuDwHUdeCHvG8BvsOAKR9tsuung==
=gE/2
-----END PGP SIGNATURE-----

--FtZpEP7ZV9KwPWkb--
