Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47402A886D5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A912F81EDF;
	Mon, 14 Apr 2025 15:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sAv1i5HfZoMi; Mon, 14 Apr 2025 15:20:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C260819D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644037;
	bh=14vOFFZCQHiLV/92bFmMrgdRuS1SSchqrTzaRecxFAQ=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SoI9TC51+sw1rwERQox98x/pLclg3ZjV2lR+lCJHw0RsDWNwv6BE2X6yflNiUFfVj
	 taQPGvxT03lkfloFtz40sXNpHALTGI4VxnRu1tWy5kgcUlWX9zaTAEgYOMBJ2x3wuR
	 D57hZ9MHsQx7wTh2zR3F2EY4Xu0e9crVhNPcMXWQOQ/GEBBQ0rJLaSVNtISMoaan9t
	 3H+BsSHMpNkskuLfktk14HpjYNd6qCF4mOwsrbhlvuXGHQI5wtGk0Dg83PzS4j1Obg
	 Q5nngUROVPKL4Bfzw0tOJcvyS31paPivEp/72pO5o+BGkjh0kXSAElblqILl2gRMth
	 LNHHN4gLl7few==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C260819D2;
	Mon, 14 Apr 2025 15:20:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BFB17DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 12:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B007340919
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 12:26:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MOn-BVjXW1n4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 12:26:10 +0000 (UTC)
X-Greylist: delayed 458 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 14 Apr 2025 12:26:09 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F2E00403C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2E00403C9
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.12.124.148;
 helo=fout-b5-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
Received: from fout-b5-smtp.messagingengine.com
 (fout-b5-smtp.messagingengine.com [202.12.124.148])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F2E00403C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 12:26:09 +0000 (UTC)
Received: from phl-compute-04.internal (phl-compute-04.phl.internal
 [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id 07F9111400A4;
 Mon, 14 Apr 2025 08:18:30 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Mon, 14 Apr 2025 08:18:30 -0400
X-ME-Sender: <xms:Ff38Z_y_8f72HC71bHOQoZbVnxtMSi799Eo1kVxjPcG36gZiQO4V4Q>
 <xme:Ff38Z3RCsYvLaW2xeXtkaaBtGbYbqg-cV3DlJf6oVuTixBYzG4R_cyviymaYzjwSN
 ihRV0atBF4sgw>
X-ME-Received: <xmr:Ff38Z5XbfY6sPl4uTnWJdsDsYZ12rTsG0d8cr5RE2XmwhFk8rNatQz4kzpB6YGVxTnSGFZA5B0tfAlAS3GsS_hIuWmnMZ7v0sQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvddtheefucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkgggtugesghdtreertddtjeen
 ucfhrhhomhepofgrrhgvkhcuofgrrhgtiiihkhhofihskhhiqdfikphrvggtkhhiuceomh
 grrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggft
 rfgrthhtvghrnhepudfggfeileeuueektdfhffelvdfhjeeffeehueeikefhleduleejje
 elgeejudffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomhdpnh
 gspghrtghpthhtohepkedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepvhhithgr
 lhihrdhlihhfshhhihhtshesihhnthgvlhdrtghomhdprhgtphhtthhopehjvghsshgvrd
 gsrhgrnhguvggsuhhrghesihhnthgvlhdrtghomhdprhgtphhtthhopegrnhhthhhonhih
 rdhlrdhnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehnvghtuggvvhesvh
 hgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehinhhtvghlqdifihhrvgguqdhl
 rghnsehlihhsthhsrdhoshhuohhslhdrohhrghdprhgtphhtthhopehrvghgrhgvshhsih
 honhhssehlihhsthhsrdhlihhnuhigrdguvghvpdhrtghpthhtohepshhtrggslhgvsehv
 ghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshgrshhhrghlsehkvghrnhgvlh
 drohhrgh
X-ME-Proxy: <xmx:Ff38Z5jIHafS9XZE4m0c-MYjzKxy7LWWkH8yZ9Q7DZrnrm5W-eQozQ>
 <xmx:Ff38ZxC9SuIEBzUbVaU5FAl8EupDR3K4sD2fv0uvtoFE__eDKXB41w>
 <xmx:Ff38ZyJ8VSseiCAAFq9VCGZQqS4e-0bCdOXMX5NC_Z_ROHrpLU3_tQ>
 <xmx:Ff38ZwD44Z5OhXxTyJmdCW44X4xa2Z9MSdcA-57bFR8PIe_FZNDxHw>
 <xmx:Ff38Z43yEnkn1sB6jgMoLYqZgmhG3keNee6NssA2ruwcXT905VrQZR3J>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 14 Apr 2025 08:18:27 -0400 (EDT)
Date: Mon, 14 Apr 2025 14:18:25 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: regressions@lists.linux.dev, stable@vger.kernel.org,
 Sasha Levin <sashal@kernel.org>
Message-ID: <Z_z9EjcKtwHCQcZR@mail-itl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="5JPjsqyE+gD2u5U8"
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:message-id:mime-version:reply-to
 :subject:subject:to:to; s=fm2; t=1744633109; x=1744719509; bh=14
 vOFFZCQHiLV/92bFmMrgdRuS1SSchqrTzaRecxFAQ=; b=neFzF5pudr2K9mQAQt
 USaEElu4vbl3JvJqoKGBCmDb3rwHFLOuiEJNmwkZ7jBU9teCxaMN+PLiACdWQBa8
 OF7N38G0zN6Yc5TK0KRywa03hgCbQ+TXomUg+uN6HilLIwlMW+o9bLnJ/Z2BecxZ
 WtmlRUi/RrofYLZLEnchuh7qKISOu5YoAO6z4luJNl3+v3aHthMMMV17on141duH
 K5VPDc6b2gqZ9KaQEBYfAzZe5txNrRODL8mCNau85VKdDCPTsVczRInLqnsMiICf
 VLSomEzB6esqYk+IDVUriIJvMfaZhlpTFaxJ1DsdVVTN3e9in2gfd90Bp9LRoHx4
 Y9OQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1744633109; x=
 1744719509; bh=14vOFFZCQHiLV/92bFmMrgdRuS1SSchqrTzaRecxFAQ=; b=h
 1deeLkRjeZScMtORyUD8FJLqe9c+7LHPc5RBz2Jooq3hI66tpNs0SMvk70erzg3u
 RFqqLnAjRXrUKxZLir7v6ax1RgrTG2sE7DQSMtLO9mKzwlOWjmCEsfupmFO+wN9d
 q7H6JXnBHTb/XM0nHod5H7mcvskQMXTWw0j93NN/qiu/QMgmSFCDaN2J5TI5N8R/
 goHI+Ul7xQJcVz9i55k+gXkE7gNG/BvQ+Anx/JNwc+Sx017U3uf/quevx81c0W7n
 UatAo/PStrzKjVP8I8PbI2qgXXgu4nZlNXDmLpp8tSJSmQmVPyQvOvwJg/WP9lH4
 5We0N5pdYePgcmK7rVt2A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm2
 header.b=neFzF5pu; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=h1deeLkR
Subject: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on Meteor
 Lake - 6.14.2
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


--5JPjsqyE+gD2u5U8
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Apr 2025 14:18:25 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
	Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: regressions@lists.linux.dev, stable@vger.kernel.org,
	Sasha Levin <sashal@kernel.org>
Subject: [REGRESSION] e1000e heavy packet loss on Meteor Lake - 6.14.2

Hi,

After updating to 6.14.2, the ethernet adapter is almost unusable, I get
over 30% packet loss.
Bisect says it's this commit:

    commit 85f6414167da39e0da30bf370f1ecda5a58c6f7b
    Author: Vitaly Lifshits <vitaly.lifshits@intel.com>
    Date:   Thu Mar 13 16:05:56 2025 +0200

        e1000e: change k1 configuration on MTP and later platforms
       =20
        [ Upstream commit efaaf344bc2917cbfa5997633bc18a05d3aed27f ]
       =20
        Starting from Meteor Lake, the Kumeran interface between the integr=
ated
        MAC and the I219 PHY works at a different frequency. This causes sp=
oradic
        MDI errors when accessing the PHY, and in rare circumstances could =
lead
        to packet corruption.
       =20
        To overcome this, introduce minor changes to the Kumeran idle
        state (K1) parameters during device initialization. Hardware reset
        reverts this configuration, therefore it needs to be applied in a f=
ew
        places.
       =20
        Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
        Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
        Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
        Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
        Signed-off-by: Sasha Levin <sashal@kernel.org>

     drivers/net/ethernet/intel/e1000e/defines.h |  3 ++
     drivers/net/ethernet/intel/e1000e/ich8lan.c | 80 +++++++++++++++++++++=
++++++--
     drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++
     3 files changed, 82 insertions(+), 5 deletions(-)

My system is Novacustom V540TU laptop with Intel Core Ultra 5 125H. And
the e1000e driver is running in a Xen HVM (with PCI passthrough).
Interestingly, I have also another one with Intel Core Ultra 7 155H
where the issue does not happen. I don't see what is different about
network adapter there, they look identical on lspci (but there are
differences about other devices)...

I see the commit above was already backported to other stable branches
too...

#regzbot introduced: 85f6414167da39e0da30bf370f1ecda5a58c6f7b

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--5JPjsqyE+gD2u5U8
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmf8/REACgkQ24/THMrX
1yypfAf+N7oPT/p3gMa3SFQmHBMe2BJBSC+RhLh+KBD8CpszZRO4TGw6f5u6ss0f
wRDbgw5f2w2SGumk/BABv0ghWH//T+PwC2IoEjjjUtUYzXM6BENGTPqk+XArMnlB
S5MPYyFcIaraR12oVMm+gUpHnO0OH/eNN6eXh1CUr8sxZ+wvRkDOZQccEfSBiAE5
yC3GGmAyAK+XcQDdVZsQe1h7d6nOuZGNLVe3yLdUcESZlUetRH6HLVuE+yM3O+IA
A/kW5vVHO07FhNwdNsgh9n/XdUmt2t1B7yvg7GRT+EHXP+mTco/UeYYq/HkGodEt
uIX8rA3eaDdORKHQU8tqIf2Lekbcyg==
=3xGN
-----END PGP SIGNATURE-----

--5JPjsqyE+gD2u5U8--
