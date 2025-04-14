Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 616C3A886DB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C871610B3;
	Mon, 14 Apr 2025 15:20:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y8Je4nnS-vRH; Mon, 14 Apr 2025 15:20:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B90EA610A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644037;
	bh=ZdtjygeQwRRON2KbdpHTn72DZDHfbhRKvMnYK9WBN70=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uimpFAh3SmCm1MDLAkrY0Mdy54risu1GHs4Kn5R+bTS+5JFb3OL2vMP1/IX0c5P2Z
	 ySGHjfGubkNv6CGwV5/vd8TlJwm1QczE8UXLk0Fdx8G++77zDSmM3BpmwZ6jbeK1BO
	 ZaOrLaUwtOUeZH/zXZjNYr+evUAW4tMmieudStpFe+TrGFIrEnDQJ8MT2klXLS/xig
	 1Nu6PP5PoNybcC8urxdFHk42h6cjEGNIB+KSPT9I51X5ZuUV8XSxzvMzmVpIHzSRmA
	 sx6a9kTlmhAGacT/VrzyP17ANtxuRwefwAnwldYuRv2gtPK9mBIwGsj0tQHih1MC0Z
	 uuByAM1EWZerA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B90EA610A1;
	Mon, 14 Apr 2025 15:20:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 98E55250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 12:58:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EFA540C40
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 12:58:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N0AQmSlLnT9T for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 12:58:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.149;
 helo=fout-b6-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C716340D03
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C716340D03
Received: from fout-b6-smtp.messagingengine.com
 (fout-b6-smtp.messagingengine.com [202.12.124.149])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C716340D03
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 12:58:14 +0000 (UTC)
Received: from phl-compute-08.internal (phl-compute-08.phl.internal
 [10.202.2.48])
 by mailfout.stl.internal (Postfix) with ESMTP id 9DD0311400A8;
 Mon, 14 Apr 2025 08:58:13 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-08.internal (MEProxy); Mon, 14 Apr 2025 08:58:13 -0400
X-ME-Sender: <xms:ZQb9Z4mW49M8EELf4w9Og69C2_o-jcr7JJ9QRHX0yWxxLo6g1eKYrw>
 <xme:ZQb9Z31KaI0Au0Kb00PDX96vEsgm-d-VUy4M2v3B6PG9SzJhI_9qv1KFS4m5aGK5s
 nmRLdSWIvj_cA>
X-ME-Received: <xmr:ZQb9Z2pd8PCXbdwXL8cqCxwJB3O6Cd02uwVuD_lD5pay0t6UzWg8T0Ll-qolsSxxMieGfFo-zqPjQSmNz1FKZVXH2uoo3ZKLPA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvddtiedvucetufdoteggodetrf
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
X-ME-Proxy: <xmx:ZQb9Z0lu4NiL_ful3VhbQ4wGuUq8v6uz5XVHjJwAi2K_xo6aBDu99Q>
 <xmx:ZQb9Z21PNDD7SqkDApNtPOpOvmJ7ntvjz206t-aADhjt3vk2XKcDkQ>
 <xmx:ZQb9Z7tbBMXbuYmBsMy--HFpR9ELE3szOWMohCyMDGmG5KHd-DphYg>
 <xmx:ZQb9ZyWiRvpRyAzAOKD-QyFVtKw6cuR5B5dp_y7grP0vuMfEGGyp_w>
 <xmx:ZQb9Z4pYFe8Sq2TAt5DY4F0Pb-qIuv2BrR0XLkpyq6JINvYHWuULAMH2>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 14 Apr 2025 08:58:11 -0400 (EDT)
Date: Mon, 14 Apr 2025 14:58:09 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
 stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Message-ID: <Z_0GYR8jR-5NWZ9K@mail-itl>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="3dtuJQ5HLXloIV6T"
Content-Disposition: inline
In-Reply-To: <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com>
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm2; t=1744635493;
 x=1744721893; bh=ZdtjygeQwRRON2KbdpHTn72DZDHfbhRKvMnYK9WBN70=; b=
 SDln8aV1wIvrC+L+Eu3kFn2nWEm4gM1S4n0hdIikSpx0dIzFqSKe2L9YzorvZXSj
 J0sCy1bzHRMz9ZpLM0nh6B9BoPigX77eOs0ZKbaAnGGXKXBpQ/e9e3gr57OanASY
 joQ/Mm1SrY2dTsh/G4en4gBAYcwpScfgv7bVVdEK25T6XrkjECE0RQZG4JyXxbKH
 G8/yW9TM3e0J3DQz+YAIfQKQGmtsmCA8t+RbBVVBzQ+Ows7IMW1VsdWZ1rY0UQXn
 lbl7X7kf0qMZHpQiPCfMloJH4a71NjP4ZZ9biesaYKnSFzWsdL3M8JXe6CfxP66m
 0jF7a99BNt/Tw9NQnsN43w==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1744635493; x=1744721893; bh=ZdtjygeQwRRON2KbdpHTn72DZDHfbhRKvMn
 YK9WBN70=; b=svJeRnNi/9e2Hc2GAlXV3usuUtxKc+S5U0thcmfF6QdBNzZIBde
 Sp2xj2NyMVYAx+cuI5lUr4ZikEHQigSWnav5o6yA5LOv5sE3hzzQeK+zPoSKobfN
 GUuc0n/voEmBXj+p6Goi3cyAdcKsRtTF8tbVkMyAaoj+Mv4dOkkFrMNMxIq1CQTB
 7uFxPnEaagJ56uvWcfHlK8CyCeKT0wGz0NiWH0mUNlPAFo4xP5eCRD3rTEdvcU8i
 nz+oKymC0U7an1KMUjkrTb7L2EPLveFdKgr8WHazbI57a7zuMcmGhGj4vrejx2Gs
 3RNTxHYIvrcIUMid3zYF6Qhg9uHuDj8tWKg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm2
 header.b=SDln8aV1; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=svJeRnNi
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


--3dtuJQ5HLXloIV6T
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Apr 2025 14:58:09 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
	stable@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Subject: Re: [REGRESSION] e1000e heavy packet loss on Meteor Lake - 6.14.2

On Mon, Apr 14, 2025 at 03:38:39PM +0300, Lifshits, Vitaly wrote:
> Do you see the high packet loss without the virtualization?

I can't check that easily right now, will try later.

> Can you please share the lspci output?

Sure:

00:07.0 Ethernet controller [0200]: Intel Corporation Device [8086:550a] (r=
ev 20)
	Subsystem: CLEVO/KAPOK Computer Device [1558:a743]
	Physical Slot: 7
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Steppi=
ng- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <TAbort- =
<MAbort- >SERR- <PERR- INTx-
	Latency: 64
	Interrupt: pin D routed to IRQ 69
	Region 0: Memory at f2000000 (32-bit, non-prefetchable) [size=3D128K]
	Capabilities: [c8] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA PME(D0-,D1-,D2-,D3hot-,D3col=
d-)
		Status: D0 NoSoftRst+ PME-Enable- DSel=3D0 DScale=3D1 PME-
	Capabilities: [d0] MSI: Enable+ Count=3D1/1 Maskable- 64bit+
		Address: 00000000fee00000  Data: 0000
	Kernel driver in use: e1000e
	Kernel modules: e1000e



> Does your switch/link partner support flow control? if it is configurable
> can you try to enable it?

It does support it. Enabling it makes things much worse...

> Do you see any errors in dmesg related to the e1000e driver?

Not really.
dmesg | grep 'e1000e\|ens7':

[    3.088489] e1000e: Intel(R) PRO/1000 Network Driver
[    3.088512] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    3.093256] e1000e 0000:00:07.0: Interrupt Throttling Rate (ints/sec) se=
t to dynamic conservative mode
[    3.343378] e1000e 0000:00:07.0 0000:00:07.0 (uninitialized): registered=
 PHC clock
[    3.718946] e1000e 0000:00:07.0 eth0: (PCI Express:2.5GT/s:Width x1) d4:=
93:90:3e:0d:bb
[    3.718966] e1000e 0000:00:07.0 eth0: Intel(R) PRO/1000 Network Connecti=
on
[    3.719101] e1000e 0000:00:07.0 eth0: MAC: 16, PHY: 12, PBA No: FFFFFF-0=
FF
[    3.759444] e1000e 0000:00:07.0 ens7: renamed from eth0
[    8.632317] e1000e 0000:00:07.0 ens7: NIC Link is Up 1000 Mbps Full Dupl=
ex, Flow Control: None
[  239.458205] e1000e 0000:00:07.0 ens7: NIC Link is Down
[  242.485869] e1000e 0000:00:07.0 ens7: NIC Link is Up 1000 Mbps Full Dupl=
ex, Flow Control: Rx/Tx

(you can also see a test with flow control above)


And also ethtool output if useful:
Settings for ens7:
	Supported ports: [ TP ]
	Supported link modes:   10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Full
	Supported pause frame use: Symmetric Receive-only
	Supports auto-negotiation: Yes
	Supported FEC modes: Not reported
	Advertised link modes:  10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Full
	Advertised pause frame use: Symmetric Receive-only
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Link partner advertised link modes:  10baseT/Half 10baseT/Full
	                                     100baseT/Half 100baseT/Full
	                                     1000baseT/Full
	Link partner advertised pause frame use: No
	Link partner advertised auto-negotiation: Yes
	Link partner advertised FEC modes: Not reported
	Speed: 1000Mb/s
	Duplex: Full
	Auto-negotiation: on
	Port: Twisted Pair
	PHYAD: 1
	Transceiver: internal
	MDI-X: on (auto)
	Supports Wake-on: d
	Wake-on: d
        Current message level: 0x00000007 (7)
                               drv probe link
	Link detected: yes


--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--3dtuJQ5HLXloIV6T
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmf9BmEACgkQ24/THMrX
1ywZZQf/VzpE9UiEUa/4GQjlzqL4ic3Lfu4aN6g4RuEVdM9dIGS1ZsNSg6r5Z9Vj
qxmm/J7h6i+ma685KIK62ZaFKmK29sTYh0dq0oI0TldQeWj5g9BHKmbMJevXJdKJ
F/zdOAqnaY7U2iT3nVQ5I38dwgCwrPH7WYruF582LgFeFIgvcA23ya4EmGqIVolX
Uu/JeU3MICCM3HvEv3VvFpWSGHGVSdpc4WnCr6KoywLVwz2QCO49GmNDcykRwkjL
NbEdi9/1N7W6i1+J1ISUqrv6dLAJvpYyK3HP7bovdFjs01BQ5lXKmsX0Gn7SYa89
LuB2k2oNOpoLJgFxcjrIkGzfX/8dRA==
=+RlG
-----END PGP SIGNATURE-----

--3dtuJQ5HLXloIV6T--
