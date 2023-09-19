Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F747A67B3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 17:12:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDA1961633;
	Tue, 19 Sep 2023 15:12:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDA1961633
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695136325;
	bh=/fyKRnjtldoUiPEctqRKjaplSZjnQGFm1xKPa5K2WTA=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FitSojTmqaKDKjQ4DlRLelloVGm0axiJahvI3UbjDIcauralSPNYoMwXFqr29b3Kh
	 riKorQ3OsTlhCmyVZdI7jhi5V1v47oGxjHUj/RIVlgKPwkRiYltgcq3j9ItJGRXj0d
	 cFLWM+fWh603zAxeBHglBLk5rIfNG4zk8gLi9KLZmrxeShC60Myusb6EBCetjmEZ+n
	 SBnKM2bLuJfx5RGfErOXUyTfC5sVLiKUbAttH4M0OmG0S1VHIgMzioA42qElaFr5Lg
	 qCJQzMUYo7a6TBsQbX6ql8+6YGm3aICYg5W6byXRzYjZyw+9rnUlKdgCn8slWMsS3A
	 Zb7v4Xqn7NKwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hDY9b7rbHKQJ; Tue, 19 Sep 2023 15:12:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAEA261613;
	Tue, 19 Sep 2023 15:12:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAEA261613
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 38D591BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 13:45:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F312D40C00
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 13:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F312D40C00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eZX-vJ6WgnR3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 13:45:56 +0000 (UTC)
X-Greylist: delayed 560 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 19 Sep 2023 13:45:56 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C79740165
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C79740165
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 13:45:55 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 0A3D15C00A5;
 Tue, 19 Sep 2023 09:36:34 -0400 (EDT)
Received: from imap47 ([10.202.2.97])
 by compute5.internal (MEProxy); Tue, 19 Sep 2023 09:36:34 -0400
X-ME-Sender: <xms:4KMJZbW9LbqWPcHkGh_DlPuxCBkGLtv3JnsYlVzXjKzSIeeti7RIhg>
 <xme:4KMJZTmAvH4L7z_nGaP5KdfIvqOZiks__CHr-LlmDmPx7zd2plYewMvSEyaWyUHFk
 jKbOhCbS2QMQUW6WgU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudekuddgfeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdfu
 vhgvnhcurfgvthgvrhdfuceoshhvvghnsehsvhgvnhhpvghtvghrrdguvghvqeenucggtf
 frrghtthgvrhhnpeevhedthffgffelhedujefgueduudeutdefleevvdetudelhfeihfdv
 ffelteeuudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsvhgvnhesshhvvghnphgvthgvrhdruggvvh
X-ME-Proxy: <xmx:4KMJZXYmYuvL3nH0_SgD_kNdsC7XHLClfVBAmruidR-V60B6y3P-MQ>
 <xmx:4KMJZWXQA3WzRBb5zCu-QYvcA4iZm-q-O5n5rA4kxuHe43SgaGHuSg>
 <xmx:4KMJZVk9Oi99N4mk7qm3lIUI4afyU90X7PI_XuVzNp7f82_pACbMKw>
 <xmx:4qMJZdNsFBGmk6guzMsje_BoEdpEh-d6HrZzup8N865hs4SPZgsPDA>
Feedback-ID: i51094778:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 0378AA60077; Tue, 19 Sep 2023 09:36:31 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-761-gece9e40c48-fm-20230913.001-gece9e40c
MIME-Version: 1.0
Message-Id: <aabaa49f-8988-42c0-bf8e-2266005e2155@app.fastmail.com>
In-Reply-To: <20230918131103.24119-7-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
 <20230918131103.24119-7-ilpo.jarvinen@linux.intel.com>
Date: Tue, 19 Sep 2023 15:36:10 +0200
From: "Sven Peter" <sven@svenpeter.dev>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 linux-pci@vger.kernel.org, "Bjorn Helgaas" <helgaas@kernel.org>,
 "Lorenzo Pieralisi" <lorenzo.pieralisi@arm.com>,
 "Rob Herring" <robh@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 "Lukas Wunner" <lukas@wunner.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 "Heiner Kallweit" <hkallweit1@gmail.com>,
 "Emmanuel Grumbach" <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org, "Hector Martin" <marcan@marcan.st>,
 "Alyssa Rosenzweig" <alyssa@rosenzweig.io>,
 "Marcel Holtmann" <marcel@holtmann.org>,
 "Johan Hedberg" <johan.hedberg@gmail.com>,
 "Luiz Augusto von Dentz" <luiz.dentz@gmail.com>,
 "Bjorn Helgaas" <bhelgaas@google.com>, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
X-Mailman-Approved-At: Tue, 19 Sep 2023 15:11:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=svenpeter.dev; 
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to;
 s=fm2; t=1695130594; x=1695216994; bh=G3Kkrzt0AGrrY/tjL0EyntUuI
 Bb8mCCGj+mtTnmx+Q8=; b=UnODe/CFFm/fKyGaSWbPPfJGyccMgh1Fl4ql7J8B2
 9jTTCbW7SBL9mmZVXktU9NHHOKE59vNmIt0/3PhYLyfB2ct9PpB2TtdW2GrTNk0N
 p54KxQZhj60LKixvUfYSDQa4v3EbvN8Xt+LCAGQGVQ26IZGNwzMCGuce3Gghezi+
 NDemRIJWikj5y3YJh93ZKtlx/6vlOGJnSRujwbi6RlScOarSzktohPxAwVVayDgE
 wc1G63LzMMrc7gbgXgfjjE3fjf+QuIdkFrVuooWiII9CtYxJ0KGYCqtctLBBxlXB
 a0MaGet4EcXXzcNEDj0hlAAITshodNu2ZUQSCM82e95IQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1695130594; x=1695216994; bh=G3Kkrzt0AGrrY/tjL0EyntUuIBb8mCCGj+m
 tTnmx+Q8=; b=Ki98uDeNfz0jsUIT+QrBfvj6hR3UdAj0JGP0Kk0m3is6XGITVnc
 DitfO8Z+GtWWohKTB22DWPAWKANFWZvwpnHoOdj68y6C4Z7ADQwwOPv0cl9n2b+x
 ySjituYs4vc8wTr6657lSCf6nuZlPaevwRT+ZlC5EloYB2OJvQKrFkiBrlsDjKms
 R/4JDdefME8w8YDPy5+wnxG2+Fya9/liDAL5qCMMKpXum+43+FmCAvT5DhfpQlfI
 HT3jt59lJiwFge+hvLDqbVFgQ4bt7cNR/bPeevGW7CpYG9z9TksRHzzWy5ZpkhSc
 +qvxWapAs7q7hQNor2DKBFbtWnh42FwH2mg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=svenpeter.dev
 header.i=@svenpeter.dev header.a=rsa-sha256 header.s=fm2 header.b=UnODe/CF; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=Ki98uDeN
Subject: Re: [Intel-wired-lan] [PATCH v2 06/13] Bluetooth: hci_bcm4377:
 Convert aspm disable to quirk
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
Cc: ath12k@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 linux-rdma@vger.kernel.org, linux-mediatek@lists.infradead.org,
 intel-wired-lan@lists.osuosl.org, ath11k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpPbiBNb24sIFNlcCAxOCwgMjAyMywgYXQgMTU6MTAsIElscG8gSsOkcnZpbmVuIHdyb3Rl
Ogo+IHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoKSB3YXMgbWFkZSByZWxpYWJsZSByZWdhcmRsZXNz
IG9mIEFTUE0gQ09ORklHCj4gYW5kIE9TIGJlaW5nIGRpc2FsbG93ZWQgdG8gY2hhbmdlIEFTUE0g
c3RhdGVzIHRvIGFsbG93IGRyaXZlcnMgdG8gcmVseQo+IG9uIHBjaV9kaXNhYmxlX2xpbmtfc3Rh
dGUoKSB3b3JraW5nLgo+Cj4gUmVtb3ZlIGRyaXZlciB3b3JraW5nIGFyb3VuZCB1bnJlbGlhYmxl
IHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoKSBmcm9tCj4gaGNpX2JjbTQzNzcgZHJpdmVyIGFuZCBh
ZGQgYSBQQ0kgcXVpcmsgdG8gZGlzYWJsZSBBU1BNLgo+Cj4gU2lnbmVkLW9mZi1ieTogSWxwbyBK
w6RydmluZW4gPGlscG8uamFydmluZW5AbGludXguaW50ZWwuY29tPgo+IC0tLQoKQWNrZWQtYnk6
IFN2ZW4gUGV0ZXIgPHN2ZW5Ac3ZlbnBldGVyLmRldj4KCgpUaGFua3MsCgpTdmVuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
