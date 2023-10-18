Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCD27CE736
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 20:51:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FE6141176;
	Wed, 18 Oct 2023 18:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FE6141176
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697655073;
	bh=nGVBass5zf+Y5i4lkYllvmtoNXEBy0JSgmx3d+DyFBA=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AlHlEaxEkYQdMu/R8XxuR8SJmtVrZwmwPYZ4EEtNvEHIRjYw1OlBbO2SJVriebTI1
	 HlTHaU0uZwODEUAkS50GQauC5qKtGYrdOmROm3EctBll16rcA/vIVPLfJHj0oiP4Fa
	 cysvuyT0pjxTGS636eWyhVarZ2ILS61XJh5zTf2LO8Gqso64XBenpAJ5ykLpCx/CXI
	 1+WeCayDw3oA0fxFWuV9eeCPw1Uu1xw+yKvcPNUZahhQ9yr4FdH/ygvfk6/tL1Sf6o
	 Rp/Zrqb5yq27OcUK6kt/c2Gpt/nDTzjGAMrzcQAudavdebr1EPcue2hI15LF/I667b
	 N/D8CdEzKPAyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dsEY2nIb4api; Wed, 18 Oct 2023 18:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB07A40AFC;
	Wed, 18 Oct 2023 18:51:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB07A40AFC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30D161BF342
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA88F402E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:51:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA88F402E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Vbx28shVz0O for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 18:51:03 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3FE140102
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:51:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3FE140102
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id AE6605C0145;
 Wed, 18 Oct 2023 14:50:56 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
 by compute5.internal (MEProxy); Wed, 18 Oct 2023 14:50:56 -0400
X-ME-Sender: <xms:ECkwZZ7RzYHGOJQzWe_ZjTh2H9ZZJIKUh46I8CTptgSTiBijkCljBw>
 <xme:ECkwZW5QlLhlA06mv1KDeTZUsWUjHbd6s46vjGilJO9gdDzNaRa9a1PxG72mK5i4X
 I6tQf0vZ6dIf726mRU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjeeggdduvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepufhk
 hihlvghrucfomohnthihshgrrghrihcuoehsmhdolhhishhtshesshhkhihmrdhfiheqne
 cuggftrfgrthhtvghrnhepueduveevfeeuudeuleevgeehleffgeelteefieekfedulefg
 lefgtedufeduvddvnecuffhomhgrihhnpehvhihoshdrihhopdhkrghpshhirdhfihenuc
 evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehsmhdolhhi
 shhtshesshhkhihmrdhfih
X-ME-Proxy: <xmx:ECkwZQdrMVj3IuR63GIlWY0s3X-gBNfaVlYgQMhCk65yDw49XNQhYQ>
 <xmx:ECkwZSJIivTtBOxZCGjORoax44EPhRSr33UB13vQn93xtijK8iplyQ>
 <xmx:ECkwZdIGS5NZhDU6JrDNZ4hVYK8TC-eAxEQ-f3RdSABNbTv6nP3BRw>
 <xmx:ECkwZfxBKAnkDJFwd9C8-_reUJI64aV0uD1Z6gfZktwl5eIk742wZA>
Feedback-ID: id05146f6:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 58D4015A0092; Wed, 18 Oct 2023 14:50:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1019-ged83ad8595-fm-20231002.001-ged83ad85
MIME-Version: 1.0
Message-Id: <03c9e8a4-5adc-4293-a720-fe4342ed723b@app.fastmail.com>
In-Reply-To: <10804893-d035-4ac9-86f0-161257922be7@app.fastmail.com>
References: <ee7f6320-0742-65d4-7411-400d55daebf8@skym.fi>
 <994cebfe-c97a-4e11-8dad-b3c589e9f094@intel.com>
 <c526d946-2779-434b-b8ec-423a48f71e36@skym.fi>
 <6e48c3ba-8d17-41db-ca8d-0a7881d122c9@intel.com>
 <4330a47e-aa31-4248-9d9d-95c54f74cdd9@app.fastmail.com>
 <10804893-d035-4ac9-86f0-161257922be7@app.fastmail.com>
Date: Wed, 18 Oct 2023 21:50:35 +0300
From: =?UTF-8?Q?Skyler_M=C3=A4ntysaari?= <sm+lists@skym.fi>
To: "Jesse Brandeburg" <jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skym.fi; h=cc:cc
 :content-transfer-encoding:content-type:content-type:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm1; t=
 1697655056; x=1697741456; bh=6UXiDK5F4hL02ap4g9syLjADuw9582HbofF
 tHs675Og=; b=eq2R009keRrx9/kf+PI9nBrNvitEoRyTgRHer34JiOX6wyQ2bIl
 xnfkltdy1LYGhBvAwZROxsnZ9yaSEK+JZkBRRmPlotCl9m+gXuXBUu3HC9B0zHWJ
 dYEzQ21w6qAAtCYA60aeSz87dn6mYfLhVhdz4K+ge8YVnyg6R9NOrLg374/4yPPP
 FI0G9jmAkxlUumkASOKSzY/7qM1WbK+U6uQq85Lr2lnjeiZWInF8+uM+t1zZxlSB
 ah3wH3V9MzKDkDhFRtsPdS3YLQ5TH8FzBEMbNSIWgGT9koF+Qcf8Db6ZcxDsN3bf
 QeZJYuiCDPk1XHotwFjes069uArFMnl5Qfg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1697655056; x=1697741456; bh=6UXiDK5F4hL02ap4g9syLjADuw9582HbofF
 tHs675Og=; b=NOdSoo0IIfGLT8hyzhaDEAD7yHOPXf5U7onpibZV+6g2e+2lmdU
 WGA/TufbYBO/tGMQchIkNLfZayqEu3s1jVmmSe06tKqLJywE4kAm0gybcG00eWja
 /d9kYsvNIP4/VJVSkIIBsBM5asLQrVyMYyyBT0VlJJ2cLm0jYKBjs73P1Nhbh4Ee
 NKWqaNS/SZH8SukAZ3XXjKTRz0SR+gWxRQd5mdlHiNjtOSnpdBfl+CBIAjxT07ow
 qFqUT/iU9OXiJY9zFN2wHfpRK9sEAwYAIabu139aZepZs07s0d9ESMTZABNcnL78
 OIqciGuQyRWg4GIO9Iz/Mi1QASVLYAUELIA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=skym.fi header.i=@skym.fi
 header.a=rsa-sha256 header.s=fm1 header.b=eq2R009k; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm3 header.b=NOdSoo0I
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

T24gVHVlLCBPY3QgMTAsIDIwMjMsIGF0IDAzOjM5LCBTa3lsZXIgTcOkbnR5c2Fhcmkgd3JvdGU6
Cj4gT24gVHVlLCBPY3QgMTAsIDIwMjMsIGF0IDAyOjUwLCBTa3lsZXIgTcOkbnR5c2Fhcmkgd3Jv
dGU6Cj4+IE9uIE1vbiwgT2N0IDksIDIwMjMsIGF0IDE4OjMzLCBKZXNzZSBCcmFuZGVidXJnIHdy
b3RlOgo+Pj4gT24gMTAvNC8yMDIzIDEwOjA4IEFNLCBTa3lsZXIgTcOkbnR5c2Fhcmkgd3JvdGU6
Cj4+Pj4+PiBIaSB0aGVyZSwKPj4+Pj4+Cj4+Pj4+PiBJdCBzZWVtcyB0aGF0IGZvciByZWFzb25z
IHVua25vd24gdG8gbWUsIG15IEludGVsIFg1MzMgYmFzZWQgMTBHIFNGUCsKPj4+Pj4+IGRvZXNu
J3Qgd2FudCB0byB3b3JrIHdpdGgga2VybmVsIDYuMS41NSBpbiBWeU9TIDEuNCBub3IgRGViaWFu
IDEyIGJ1dAo+Pj4+Pj4gaXQgZG9lcyBpbiBPUE5zZW5zZSB3aGljaCBpcyBiYXNlZCBvbiBGcmVl
QlNEIDEzLjIuCj4+Pj4+Pgo+Pj4+Pj4gSG93IHdvdWxkIEkgZ28gYWJvdXQgZGVidWdnaW5nIHRo
aXMgcHJvcGVybHk/IEJvdGggc2lkZXMgc2VlIGxpZ2h0LAo+Pj4+Pj4gYnV0IG5vIGxpbmsgdW5s
ZXNzIEknbSB1c2luZyBGcmVlQlNELgo+Pj4+IGh0dHBzOi8vZm9ydW0udnlvcy5pby90LzEwZy1z
ZnAtdHJvdWJsZS13aXRoLWxpbmtpbmctaW50ZWwteDU1My8xMjI1My8xMT91PXNhbWlwNTM3Cj4+
Pgo+Pj4gSGkgU2t5bGVyLAo+Pj4KPj4+IFJlc3BvbnNlIGZyb20gSW50ZWwgdGVhbToKPj4+Cj4+
PiBJbiB0aGUgZXRodG9vbCAtbSBvdXRwdXQgcGFzdGVkIEkgc2VlIFRYIGFuZCBSWCBvcHRpY2Fs
IHBvd2VyIGlzIGZpbmUuCj4+PiBDb3VsZCB5b3UgcmVxdWVzdCBmYXVsdCBzdGF0dXMgb24gYm90
aCBzaWRlcz8gSnVzdCB3YW50IHRvIGNoZWNrIGlmIGxpbmsKPj4+IGlzIGRvd24gYmVjYXVzZSB3
ZSBhcmUgYXQgbG9jYWwtZmF1bHQgb3IgbGluayBwYXJ0bmVyIGlzIGF0IGxvY2FsLWZhdWx0Lgo+
Pj4KPj4+IHJtbW9kIGl4Z2JlCj4+PiBtb2Rwcm9iZSBpeGdiZQo+Pj4gZXRodG9vbCAtUyBldGgw
IHwgZ3JlcCBmYXVsdAo+Pj4KPj4+IFNpbmNlIGl0IGlzIDEwRywgaWYgb3VyIHNpZGUgVFggaXMg
T04gKHBvd2VyIGxldmVsIHNheXMgaXQgaXMpIHRoZW4gd2UKPj4+IHNob3VsZCBleHBlY3QgbGlu
ayBwYXJ0bmVyIFJYIHRvIGJlIGxvY2tlZCBzbyBjYW5ub3QgYmUgYXQgTG9jYWwgRmF1bHQuCj4+
Pgo+Pj4gU2t5bGVyLCBwbGVhc2UgZ2F0aGVyIHRoYXQgZXRodG9vbCAtUyBkYXRhIGZvciB1cy4K
Pj4+Cj4+PiBKZXNzZQo+Pj4KPj4+Cj4+Pgo+Pj4gCj4+Cj4+IEhpIEplc3NlLAo+Pgo+PiBBcyB0
aGUgb3RoZXIgc2lkZSBvZiB0aGUgbGluayBpcyBhbiBKdW5pcGVyLCBJJ20gbm90IHF1aXRlIHN1
cmUgaG93IEkgCj4+IHdvdWxkIGdhdGhlciB0aGUgc2FtZSBkYXRhIGZyb20gaXQgYXMgaXQgZG9l
c24ndCBoYXZlIGV0aHRvb2w/Cj4+Cj4+IEkgaGF2ZSBhbHNvIHNvbWV3aGF0IGdpdmVuIHVwIGhv
cGUgb24gaXQgd29ya2luZyBvbiBWeU9TIGFuZCBpbnN0ZWFkIEkgCj4+IGFtIHVzaW5nIE9QTnNl
bnNlIGZvciB0aGUgbW9tZW50IGJ1dCBJIHN0aWxsIGhhdmUgVnlPUyBpbnN0YWxsZWQgYXMgCj4+
IHdlbGwuCj4+Cj4+IFNreWxlcgo+Cj4gSGkgSmVzc2UsCj4KPiBJIGRpZCB2ZXJpZnkgdGhhdCB0
aGUgZ3JlcCBkb2Vzbid0IHlpZWxkIGFueSByZXN1bHRzIG9uIHRoZSBWeU9TIGJveCAKPiBhbmQg
YWxsIG9mIHRoZSBkYXRhIHJldHVybmVkIGhhcyBhbiB2YWx1ZSBvZiAwLiBQYXN0ZSBvZiB3aGlj
aCBpcyBoZXJlOiAKPiBodHRwczovL3Aua2Fwc2kuZmkvPzRhODJjZWRiNGY0ODAxZWMjRGNFZ0ZN
Rks3Y0gxM0VxeXBzWTRaYUhTNXRhZUExelhldm1tVFNWVzNQOXgKPgo+IEkgcmVhbGx5IHRoaW5r
IHNvbWV0aGluZyB3ZWlyZCBpcyBnb2luZyBvbiB3aXRoIHRoZSBkcml2ZXIgaW4gTGludXggYXMg
Cj4gb3RoZXJ3aXNlIHRoZSBzYW1lIGV4YWN0IGNvbmZpZyBvbiBKdW5pcGVyIHdvdWxkbid0IHdv
cmsgdGhlcmUgZWl0aGVyLiAKPiBUaGUgVnlPUyBib3ggYWxzbyBzYXlzIHRoYXQgaXQncyB1bmFi
bGUgdG8gbW9kaWZ5IGF1dG9uZWcgc2V0dGluZ3MsIG9yIAo+IHNwZWVkL2R1cGxleCBvZiB0aGUg
aW50ZXJmYWNlLgo+Cj4gU2t5bGVyCgpJdCBoYXMgYmVlbiAgdmVyaWZpZWQgdGhhdCB0aGUgZHJp
dmVyIGluIGtlcm5lbCB2ZXJzaW9uIDUuNC4yNTUgc2VlbXMgdG8gd29yayBha2EgMS4zIFZ5T1Mu
ICBQb3N0IGZyb20gYW5vdGhlciB1c2VyIGluIHRoZSBzYW1lIHRocmVhZCBhYm91dCBpdDogaHR0
cHM6Ly9mb3J1bS52eW9zLmlvL3QvMTBnLXNmcC10cm91YmxlLXdpdGgtbGlua2luZy1pbnRlbC14
NTUzLzEyMjUzLzQ2CgpJIGhhdmUgYWxzbyB2ZXJpZmllZCB0aGF0IHRoZSBvdXQtb2YtdHJlZSBp
eGdiZSBkcml2ZXIgZG9lcyB3b3JrLCBidXQgaW4ta2VybmVsIGRvZXNuJ3QgaW4ga2VybmVsIDYu
MS41OC4KClBsZWFzZSBzaGFyZSB0aGVzZSBmaW5kaW5ncyB3aXRoIHRoZSBjb3JyZWN0IEludGVs
IHRlYW0gc28gdGhhdCB0aGlzIGNvdWxkIGJlIGZpeGVkLgoKLSBTa3lsZXIKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
