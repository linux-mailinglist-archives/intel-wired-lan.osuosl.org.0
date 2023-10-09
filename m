Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E96637BEF66
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 02:00:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19BF2417A0;
	Tue, 10 Oct 2023 00:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19BF2417A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696896058;
	bh=MRsWIwpk7XtLh1qMj/HtidppFgCkSZGZJMzd6eCaUsE=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=03YECAqSQH47kINqtTCLG58nnzKKEQZBkFJIc5ZFi5G7TQpC5H1J4jwLcK//mqe6R
	 3A5AHNtvZ/qVe2+7bnBXtjxFqszpBFWKijYtmlMd6h0hC+Ie8lbNYqg9dK0fhhlJVp
	 AsyaG9IacPktExWOpkdx5KI8iRepB+LmOKreHgr+Au53Rx5jRjiCSoZHGmfe/rpyAb
	 hikakBhyG4PeVjsDRA7D9D9uoKteQ5u2gJJtU5P1TgRFHAATzppemF6ipLSYE3KccU
	 +lJEfryylXHKyvfc+0IeqyARy0y+Dmtt7vGbDyeqaOiVZojkxU4z6v2vutRNR3ra0l
	 cOL8mWQV3UOKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPDj7_fFBj1P; Tue, 10 Oct 2023 00:00:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF5094173A;
	Tue, 10 Oct 2023 00:00:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF5094173A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DAEB1BF427
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A47960E77
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:00:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A47960E77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_-qzzGMQqJc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 00:00:49 +0000 (UTC)
X-Greylist: delayed 574 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 10 Oct 2023 00:00:48 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3C3260E6A
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E3C3260E6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 00:00:48 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 25B205C02C5;
 Mon,  9 Oct 2023 19:51:13 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
 by compute5.internal (MEProxy); Mon, 09 Oct 2023 19:51:13 -0400
X-ME-Sender: <xms:8JEkZRIaG_G5zBq-Ig6uE9rr00acr15yd3LPMa3MJlw8DI76h_PTgQ>
 <xme:8JEkZdJhhO4aokOo_kYAqkgcx4yDQlV4EEpYzEZsq_IDW1_4n6eM68B50TVTngyN5
 umgbo2MEYDHvM2nYGU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrheeggddvhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvvefutgfgsehtqhertderreejnecuhfhrohhmpefukhih
 lhgvrhcuofomnhhthihsrggrrhhiuceoshhmodhlihhsthhssehskhihmhdrfhhiqeenuc
 ggtffrrghtthgvrhhnpeetheegleegveeugeffheeuueekffevvddvtdejffeijeffkefh
 hfeutedtteetgfenucffohhmrghinhepvhihohhsrdhiohenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsmhdolhhishhtshesshhkhihmrdhf
 ih
X-ME-Proxy: <xmx:8JEkZZuqOL_3mbwZU1w-5NXBTW_hXThv8wVRUL_mX7XQS7gdjz4Zqw>
 <xmx:8JEkZSZSL0pU9teE9G_pQ8YkNOWxLFc8r5lOxLCTrFPwlPGvwyaJdg>
 <xmx:8JEkZYbiPwW6HtgHBV5J8PDWKV4JVtUeR97khRi4ygG3KbKuMi-NZg>
 <xmx:8ZEkZRBg-O1rZp-1skYspAHEH0O74jrp-seGDBjAc4DtRBXfT8fGkQ>
Feedback-ID: id05146f6:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B0A1D15A0091; Mon,  9 Oct 2023 19:51:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-958-g1b1b911df8-fm-20230927.002-g1b1b911d
MIME-Version: 1.0
Message-Id: <4330a47e-aa31-4248-9d9d-95c54f74cdd9@app.fastmail.com>
In-Reply-To: <6e48c3ba-8d17-41db-ca8d-0a7881d122c9@intel.com>
References: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
 <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
 <c526d946-2779-434b-b8ec-423a48f71e36@skym.fi>
 <6e48c3ba-8d17-41db-ca8d-0a7881d122c9@intel.com>
Date: Tue, 10 Oct 2023 02:50:14 +0300
From: =?UTF-8?Q?Skyler_M=C3=A4ntysaari?= <sm+lists@skym.fi>
To: "Jesse Brandeburg" <jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skym.fi; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm3; t=
 1696895473; x=1696981873; bh=QPhhfuTn8dWrXfMXBvKQgAu3hMOz6o7Ef/K
 oQCq+2yo=; b=MD6s4unO6LnBJXdQJYR02PWZztYPE1l/bzv8ccaP4+MwrK1jcC6
 CZ0Qe4xC0fXvBBLYsrPVF/MMLv2/hwjM7w84FF3t3p2CJQOcWBk2maN8C67WW6RD
 8cbZOgtthEVzkk20ia36KITebzHuI8KS1f3xVLpn7loBKN1wfmpJh67mTymywfCa
 5slTDhH5H7kWAF/TLr/c+iuvszXcEPXRrjuUdLHx6Dt37sB+xtx2DsxbJTx3tbxi
 lcDUrD/oZ7f1K/Nrwc+RLjZtTZHrkTTclgJk7rVTu9oByz02LWlUoKBUwYamNLrz
 zaLWR5bfTDH3t+Kc0OAbs5N8jqhA48mcXSg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1696895473; x=1696981873; bh=QPhhfuTn8dWrXfMXBvKQgAu3hMOz6o7Ef/K
 oQCq+2yo=; b=RSSQ1nTkTFagVWv0BLqyL+KovEh17F8/IhQsARRMLNjAKkLQKAt
 abSc3kSLha9Z2RmYZzz5/a+vvBqukWHVa+yvWgBHWTkQrnltp6qww+9hv5q8RSRq
 9rkbIZoCfjNGtgWLViE4mq+/j8qPM4LWG6g24lJEwGQ1mjurce7Aq9rvjogwOBHv
 y3tvfNPn9V96hth4iQ4fn7AQjWbev5TnecP4y8MIaFNz5ZJDSPMhL9EDUYFNcyqb
 x4PjV/YdfkUuM3bh8iWqqlDw/muupBabRgoONKi4Hlh0lsR2l9JwlvoBwYG2tg9p
 tXv15E6TS87TLt4ZjXEggamZvKcapa+oV9Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=skym.fi header.i=@skym.fi
 header.a=rsa-sha256 header.s=fm3 header.b=MD6s4unO; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=RSSQ1nTk
Subject: Re: [Intel-wired-lan] The difference between linux kernel driver
 and FreeBSD's with Intel X533
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiBNb24sIE9jdCA5LCAyMDIzLCBhdCAxODozMywgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToK
PiBPbiAxMC80LzIwMjMgMTA6MDggQU0sIFNreWxlciBNw6RudHlzYWFyaSB3cm90ZToKPj4+PiBI
aSB0aGVyZSwKPj4+Pgo+Pj4+IEl0IHNlZW1zIHRoYXQgZm9yIHJlYXNvbnMgdW5rbm93biB0byBt
ZSwgbXkgSW50ZWwgWDUzMyBiYXNlZCAxMEcgU0ZQKwo+Pj4+IGRvZXNuJ3Qgd2FudCB0byB3b3Jr
IHdpdGgga2VybmVsIDYuMS41NSBpbiBWeU9TIDEuNCBub3IgRGViaWFuIDEyIGJ1dAo+Pj4+IGl0
IGRvZXMgaW4gT1BOc2Vuc2Ugd2hpY2ggaXMgYmFzZWQgb24gRnJlZUJTRCAxMy4yLgo+Pj4+Cj4+
Pj4gSG93IHdvdWxkIEkgZ28gYWJvdXQgZGVidWdnaW5nIHRoaXMgcHJvcGVybHk/IEJvdGggc2lk
ZXMgc2VlIGxpZ2h0LAo+Pj4+IGJ1dCBubyBsaW5rIHVubGVzcyBJJ20gdXNpbmcgRnJlZUJTRC4K
Pj4gaHR0cHM6Ly9mb3J1bS52eW9zLmlvL3QvMTBnLXNmcC10cm91YmxlLXdpdGgtbGlua2luZy1p
bnRlbC14NTUzLzEyMjUzLzExP3U9c2FtaXA1MzcKPgo+IEhpIFNreWxlciwKPgo+IFJlc3BvbnNl
IGZyb20gSW50ZWwgdGVhbToKPgo+IEluIHRoZSBldGh0b29sIC1tIG91dHB1dCBwYXN0ZWQgSSBz
ZWUgVFggYW5kIFJYIG9wdGljYWwgcG93ZXIgaXMgZmluZS4KPiBDb3VsZCB5b3UgcmVxdWVzdCBm
YXVsdCBzdGF0dXMgb24gYm90aCBzaWRlcz8gSnVzdCB3YW50IHRvIGNoZWNrIGlmIGxpbmsKPiBp
cyBkb3duIGJlY2F1c2Ugd2UgYXJlIGF0IGxvY2FsLWZhdWx0IG9yIGxpbmsgcGFydG5lciBpcyBh
dCBsb2NhbC1mYXVsdC4KPgo+IHJtbW9kIGl4Z2JlCj4gbW9kcHJvYmUgaXhnYmUKPiBldGh0b29s
IC1TIGV0aDAgfCBncmVwIGZhdWx0Cj4KPiBTaW5jZSBpdCBpcyAxMEcsIGlmIG91ciBzaWRlIFRY
IGlzIE9OIChwb3dlciBsZXZlbCBzYXlzIGl0IGlzKSB0aGVuIHdlCj4gc2hvdWxkIGV4cGVjdCBs
aW5rIHBhcnRuZXIgUlggdG8gYmUgbG9ja2VkIHNvIGNhbm5vdCBiZSBhdCBMb2NhbCBGYXVsdC4K
Pgo+IFNreWxlciwgcGxlYXNlIGdhdGhlciB0aGF0IGV0aHRvb2wgLVMgZGF0YSBmb3IgdXMuCj4K
PiBKZXNzZQo+Cj4KPgo+IAoKSGkgSmVzc2UsCgpBcyB0aGUgb3RoZXIgc2lkZSBvZiB0aGUgbGlu
ayBpcyBhbiBKdW5pcGVyLCBJJ20gbm90IHF1aXRlIHN1cmUgaG93IEkgd291bGQgZ2F0aGVyIHRo
ZSBzYW1lIGRhdGEgZnJvbSBpdCBhcyBpdCBkb2Vzbid0IGhhdmUgZXRodG9vbD8KCkkgaGF2ZSBh
bHNvIHNvbWV3aGF0IGdpdmVuIHVwIGhvcGUgb24gaXQgd29ya2luZyBvbiBWeU9TIGFuZCBpbnN0
ZWFkIEkgYW0gdXNpbmcgT1BOc2Vuc2UgZm9yIHRoZSBtb21lbnQgYnV0IEkgc3RpbGwgaGF2ZSBW
eU9TIGluc3RhbGxlZCBhcyB3ZWxsLgoKU2t5bGVyCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
