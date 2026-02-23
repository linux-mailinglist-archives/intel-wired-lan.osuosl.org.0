Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QM+tAT51nGmwHwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 16:41:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB520178E6F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 16:41:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A5DB4058B;
	Mon, 23 Feb 2026 15:41:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sAgMVdmaUURw; Mon, 23 Feb 2026 15:41:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4FA640594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771861306;
	bh=wpRYRoQdTTvzgCL0gLx0rfebcLeLgISGS1vSEIiCgrM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FHwsGBBclySEmg/GVqnRzH4rIwp5/kKFu9OojVl+sOYfnfyz3W+uRRLRrRMoqqhbe
	 FrUYrFYyo9FakshqqSaQ9nhbJNRFeYj/z30KshTaTXePMsoAhsVRbz+QnSx4s7Ls40
	 G4Ufht/RyxBDo8JeKNM1+UzeXFbCj1OpEDFZs/utJzpegYljMXuMqUcH0wdOGnJrB5
	 co3eg9tXsaiTt6yC624O5K6D0NMxdRgmoph48IoYk3id4SDS7J1ZflvW1OHFF2+HQ6
	 8BchfLuLnsH0+/r4BBYld6FdBDbQlq3F1shr6kD/PWRZgvgjOEWfpHH4m5Plcuo6x8
	 z0evtdIb+PtQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4FA640594;
	Mon, 23 Feb 2026 15:41:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CBAC7249
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 15:41:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B13F74005A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 15:41:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xp3psSMuRGsa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 15:41:43 +0000 (UTC)
X-Greylist: delayed 488 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 23 Feb 2026 15:41:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C1F904004E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1F904004E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.149;
 helo=fout-b6-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
Received: from fout-b6-smtp.messagingengine.com
 (fout-b6-smtp.messagingengine.com [202.12.124.149])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1F904004E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 15:41:42 +0000 (UTC)
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id 355481D00066
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 10:33:33 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Mon, 23 Feb 2026 10:33:33 -0500
X-ME-Sender: <xms:THOcaTstoc519XeVukndtwJXsZwRdvUYkRCVM-Bag0b6IJd8XSvOJg>
 <xme:THOcaWevySGKdNCWTNHpSOf4MYcZ8TRd1Wokom-L6H4zXw5mWPLhJqlpzBuQ5quO8
 c9gNiqOH0sSp8xNwtGOv9qK5GKUNYH5P8mKk8c-U12Io-7gcA>
X-ME-Received: <xmr:THOcaQK63wPIzLw0ohh2_HtCeOPFUvoaTL9a4Tr7WVZHHju5kLMcrD5OgznH-oiFQGeaMeQCUSdHW4RFu410g_0xNZ9my7gzotg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvfeejiedtucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtugesghdtreertddtje
 enucfhrhhomhepofgrrhgvkhcuofgrrhgtiiihkhhofihskhhiqdfikphrvggtkhhiuceo
 mhgrrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecugg
 ftrfgrthhtvghrnhepteduteeiudevkeegvefhtdekhfelgffhhedukedvvdeuuddvjeeh
 vddtieehudfgnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhushhtvghruf
 hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrghrmhgrrhgvkhesihhnvhhi
 shhisghlvghthhhinhhgshhlrggsrdgtohhmpdhnsggprhgtphhtthhopedupdhmohguvg
 epshhmthhpohhuthdprhgtphhtthhopehinhhtvghlqdifihhrvgguqdhlrghnsehlihhs
 thhsrdhoshhuohhslhdrohhrgh
X-ME-Proxy: <xmx:THOcaUb0XH5dFV1t78Bb3SPfFdLTI_ZmfjqXOkTGJQigRgvbM9jvTQ>
 <xmx:THOcabvSPfdD16-jkmoR30tsWJUXfa_8ce6EZVkHIXdhchKWI8DcGw>
 <xmx:THOcaRvFCU4oLCxqCavO5RKrfkvoPjQPjRo2dVQ8EwUOV9VlirP5nw>
 <xmx:THOcaQfOtvhouWDiL1XkqOsBN9ct_MfPZj8OXs00QMSxoiU-qorJHA>
 <xmx:THOcaVQK2x76Ikz-ruO8gYhMYK7NImFg_lAbe1supr4nx1q2cTOKBmoq>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <intel-wired-lan@lists.osuosl.org>; Mon,
 23 Feb 2026 10:33:32 -0500 (EST)
Date: Mon, 23 Feb 2026 16:33:30 +0100
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <aZxzShjYvQwloZZ_@mail-itl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="yAWdszHeVGCbVJ6J"
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:content-type:content-type:date:date
 :from:from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1771860812; x=1771947212; bh=wpRYRoQdTT
 vzgCL0gLx0rfebcLeLgISGS1vSEIiCgrM=; b=JYpvLrIWetqFycx0lt5zFbEFlV
 du7AyrbEaCXU8LS1SU/wW+TqT7tNJO2BInNmj5Htn/pmiOz6oxDmms4mnMeGMp8F
 OCnm7Ce/TGcTBLyA3LQRSBoqewKrybo9INo8m6DDfrSGHrWrbJboYEGvaWCfHQIJ
 GBLtxaEWPtHU4iM1EpeOw5OBDTquVfBsxlxWTYG3rRQJDugHgQ0K31Yd/Z5aJQER
 KAibt/7LOguaYM1d3TCx3dQM2p5tShXlWkgwKwfYEuiKr2ZE3gKq7T7JyH4e685m
 9hjw2jIQwswGY5VIjBkHSa48GeErFrdqGwidACdl+J2W19h2ztCoBxP+aWGA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1771860812; x=
 1771947212; bh=wpRYRoQdTTvzgCL0gLx0rfebcLeLgISGS1vSEIiCgrM=; b=e
 FcR9IlFCztUw0KvIFwYbyxD/3MzgxyHUVEHqD7LjhZAcBGtMzr59PB8j5qyuvsCF
 qHg9nDvXqYGbuRWGdU0fAURGpRkL6Hwii7eRKmRBYpwi5AD4YEnHftM5Xh1rzcPg
 Q8KhuZdsevZlG9zh8YdlXgZejlsjcr/O6ncvx17bQ9TlNS2kPql6B+pk+DFtjcgz
 8J5fLSUeeyTL9WAxHfCT8BBGTB27kYNBZH1gE7BsbRsishY5i2Gwn8oG2BWChMWl
 7f4KVbmQU7MFhIy2Ey9lcswpeJR1AAqwsO2AtNtC+sVbYLwqXnSxCXe02pj7rGJF
 x09LkCwuN9DCje16Mn8Jg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm3
 header.b=JYpvLrIW; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=eFcR9IlF
Subject: [Intel-wired-lan] PCI Advanced Features (especially FLR) missing in
 several newer Intel integrated ethernet devices
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[invisiblethingslab.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marmarek@invisiblethingslab.com,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.987];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: DB520178E6F
X-Rspamd-Action: no action


--yAWdszHeVGCbVJ6J
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 23 Feb 2026 16:33:30 +0100
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: intel-wired-lan@lists.osuosl.org
Subject: PCI Advanced Features (especially FLR) missing in several newer
 Intel integrated ethernet devices

Hi,

I've got already at least 3 reports about e1000e device that is missing
FLR (which makes it harder to passthrough to a VM, among other things).
Interestingly, when looking at config space, the capability appears to
be there, just isn't linked to the list. For example:

    sudo lspci -nnvxxxs 00:1f.6
    00:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:57a1]
        Subsystem: Lenovo Device [17aa:512b]
        Flags: bus master, fast devsel, latency 0, IRQ 19
        Memory at ab700000 (32-bit, non-prefetchable) [size=3D128K]
        Capabilities: [c8] Power Management version 3
        Capabilities: [d0] MSI: Enable+ Count=3D1/1 Maskable- 64bit+
        Kernel driver in use: pciback
        Kernel modules: e1000e
    00: 86 80 a1 57 06 04 10 00 00 00 00 02 00 00 00 00
    10: 00 00 70 ab 00 00 00 00 00 00 00 00 00 00 00 00
    20: 00 00 00 00 00 00 00 00 00 00 00 00 aa 17 2b 51
    30: 00 00 00 00 c8 00 00 00 00 00 00 00 ff 04 00 00
    40: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    80: 28 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00
    90: 00 00 00 00 1f 00 00 00 00 00 00 00 00 00 00 00
    a0: ff ff ff ff ff ff ff ff 03 10 03 10 00 00 00 00
    b0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    c0: 00 00 00 00 00 00 00 00 01 d0 23 c8 08 20 00 00
    d0: 05 00 81 00 b8 12 e0 fe 00 00 00 00 00 00 00 00
    e0: 13 00 06 03 00 00 00 00 00 00 00 00 00 00 00 00
    f0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

As you can see, the "PCI Advanced Features" is not listed. But, if you
traverse the list manually, you can see that the capability is there at
0xe0 - it just isn't linked at 0xd1 (0xd1 has 0x00 instead of 0xe0). And
it appears it isn't just coincidence:
 - 0x03 at 0xe3 says FLR is supported (bit FLR_CAP is set)
 - writing 0x01 to 0xe4 (INITIATE_FLR) does appear to reset the device

It's even possible to link the capability manually (write 0xe0 to 0xd1)
and then Linux is happy to use it via the standard `echo 1 >
/sys/devices/.../reset` interface (but, ofc, such linking doesn't
survive the reset).

Based on reports I've received, it applies at least to devices with the
following VID:DID:
- 8086:550a
- 8086:57a1
- 8086:57a0

Some of those reports at https://github.com/QubesOS/qubes-issues/issues/106=
57

My question is: why the capability is not linked? Does it want a fix in
firmware? Or maybe a quirk in the kernel to restore working FLR?

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--yAWdszHeVGCbVJ6J
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmmcc0oACgkQ24/THMrX
1yysEAgAky7JuaTfN/0FpHZP01SgcZtXfC/Ev9Jd+goninUQkGhED8mUNgoVVdh2
+7wT1vHtBLkJH3Pw58GQsJIJklXILX92QbODu2ZEVPpMd9jVZjLIPhCOkcMPokdk
TFbt7b/eLBiaFjyilMUhcOQVriAYJCpd3GqLJzPGBG+IiAesoO5I3TXcaxxWYvmT
/Iyvg+qcegPD2AMGNc46KMnJ21KNsBroOcqMvu9NuHL7awgRshPsUlwVuRfiKOG8
FapX/tQSjhmA9C4TIAlEmTCR2RWS+9FHMxJTyBEhgteb9NuMNKEJxunt6qxkmk7U
PYEC3/NfrDYdT+d+HiduP+JgAFyOAA==
=GNto
-----END PGP SIGNATURE-----

--yAWdszHeVGCbVJ6J--
