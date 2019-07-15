Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2C768633
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2019 11:21:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E89B203E6;
	Mon, 15 Jul 2019 09:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UIsmMhSXZk60; Mon, 15 Jul 2019 09:21:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B64EB2076E;
	Mon, 15 Jul 2019 09:21:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8314E1BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 09:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7D3FC825A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 09:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DfzVHiiw7AKU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2019 09:21:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B341A81DFD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 09:21:11 +0000 (UTC)
Received: from mail-pg1-f197.google.com ([209.85.215.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hmxAT-0008Rk-Gw
 for intel-wired-lan@lists.osuosl.org; Mon, 15 Jul 2019 09:21:09 +0000
Received: by mail-pg1-f197.google.com with SMTP id d187so10157851pga.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 02:21:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=K7sR63lDZ6+bfE96HoDVWneUYi62vGyC0+ZoJVjOpqo=;
 b=aWCEpMZDMOh7TYS5GGr4ozoycNYPJRGiZ4GF9q+we4OU2BFWmswGn7dHc8+EYRKFk3
 ++azc4mAWcy3JHpkwVLIgEL1cfjr4AoiWKAKMGxHpFArG2c7RNNFYlYpZL2HSC8oLXWF
 BirpiaP2BGkl0ylYp2a6TxrJ6flXS9DQxgj6IoKQxEr+TsJ030qn6Pqn6wH4oxXQpBjy
 7ZrcCItL/D7JnNMNG8YdohN9gqBDxO9OZM6Ao5jhgQXpMosFfMUdFTXWoBdcYdIZ0dER
 s+40jnmEFsG0eqtCxgi/YcxLDX85qR3msBcdgHpfzXEk9xbpxtDORTRmUEFZjH1rwdJj
 R+OA==
X-Gm-Message-State: APjAAAXkx/1McYCrPFP1LIXACjQwaMBccreO8x6AQCZzbm7PLEkSpmWe
 lrRn1/Oun/Arl3U47qlB/46xr8GIPXIfqzZ5EHCp/5fcxWRiE5TuqMhE5ywSUsXbQLqgrqWOGy4
 KabrnSF48zyXterhyugpr2+cf2wzSUhkGwJoydhesWzRcBRU=
X-Received: by 2002:a17:90a:601:: with SMTP id
 j1mr27617740pjj.96.1563182468249; 
 Mon, 15 Jul 2019 02:21:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzHwAWIe0k8hTqh9iJGtpYLSTUNN/uaDfo3XVoAz1JGLpmxyFRzJG7TI40AZpQ93ZnK+ynB3A==
X-Received: by 2002:a17:90a:601:: with SMTP id
 j1mr27617713pjj.96.1563182467961; 
 Mon, 15 Jul 2019 02:21:07 -0700 (PDT)
Received: from [10.101.46.105] (61-220-137-37.HINET-IP.hinet.net.
 [61.220.137.37])
 by smtp.gmail.com with ESMTPSA id u3sm14656829pjn.5.2019.07.15.02.21.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 02:21:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Kai Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <37a1e2af-64c6-4515-5dcc-6051e1192636@molgen.mpg.de>
Date: Mon, 15 Jul 2019 17:21:04 +0800
Message-Id: <1BD6D413-E22A-40A3-B8E8-B9B56B9B5232@canonical.com>
References: <20190715084355.9962-1-kai.heng.feng@canonical.com>
 <017771d5-f168-493a-46a1-88e513941ba1@molgen.mpg.de>
 <F9859C57-4F6D-4685-B4B6-D1D7DCB50D27@canonical.com>
 <37a1e2af-64c6-4515-5dcc-6051e1192636@molgen.mpg.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Make speed detection on
 hotplugging cable more reliable
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

YXQgNTowNiBQTSwgUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4gd3JvdGU6Cgo+
IERlYXIgS2FpIEhlbmcsCj4KPgo+ICh3aXRoIG9yIHdpdGhvdXQgaHlwaGVuPykKPgo+IE9uIDcv
MTUvMTkgMTE6MDAgQU0sIEthaSBIZW5nIEZlbmcgd3JvdGU6Cj4+IGF0IDQ6NTIgUE0sIFBhdWwg
TWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+IHdyb3RlOgo+Cj4+PiBPbiA3LzE1LzE5IDEw
OjQzIEFNLCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+Pj4+IEFmdGVyIGhvdHBsdWdnaW5nIGFuIDFH
YnBzIGV0aGVybmV0IGNhYmxlIHdpdGggMUdicHMgbGluayBwYXJ0bmVyLCB0aGUKPj4+PiBNSUlf
Qk1TUiBtYXkgcmVwb3J0cyAxME1icHMsIHJlbmRlcnMgdGhlIG5ldHdvcmsgcmF0aGVyIHNsb3cu
Cj4+Pgo+Pj4gcy9tYXkgcmVwb3J0cy9tYXkgcmVwb3J0Lwo+Pj4gcy9yZW5kZXJzL3JlbmRlcmlu
Zy8KPj4KPj4gQXBwYXJlbnRseSBFbmdsaXNoIGlzbuKAmXQgbXkgbW90aGVyIHRvbmd1ZSA7KQo+
Cj4gTm8gcHJvYmxlbS4gTWluZSBuZWl0aGVyLgo+Cj4+Pj4gVGhlIGlzc3VlIGhhcyBtdWNoIGxv
d2VyIGZhaWwgcmF0ZSBhZnRlciBjb21taXQgNTk2NTNlNjQ5N2QxICgiZTEwMDBlOgo+Pj4+IE1h
a2Ugd2F0Y2hkb2cgdXNlIGRlbGF5ZWQgd29yayIpLCB3aGljaCBlc3NzZW50aWFsbHkgaW50cm9k
dWNlcyBzb21lCj4+Pgo+Pj4gZXNzZW50aWFsbHkKPj4KPj4gT2suCj4+Cj4+Pj4gZGVsYXkgYmVm
b3JlIHJ1bm5pbmcgdGhlIHdhdGNoZG9nIHRhc2suCj4+Pj4KPj4+PiBCdXQgdGhlcmUncyBzdGls
bCBhIGNoYW5jZSB0aGF0IHRoZSBob3RwbHVnZ2luZyBldmVudCBhbmQgdGhlIHF1ZXVlZAo+Pj4+
IHdhdGNoZG9nIHRhc2sgZ2V0cyBydW4gYXQgdGhlIHNhbWUgdGltZSwgdGhlbiB0aGUgb3JpZ2lu
YWwgaXNzdWUgY2FuIGJlCj4+Pj4gb2JzZXJ2ZWQgb25jZSBhZ2Fpbi4KPj4+Pgo+Pj4+IFNvIGxl
dCdzIHVzZSBtb2RfZGVsYXllZF93b3JrKCkgdG8gYWRkIGEgZGV0ZXJtaW5pc3RpYyAxIHNlY29u
ZCBkZWxheQo+Pj4+IGJlZm9yZSBydW5uaW5nIHdhdGNoZG9nIHRhc2ssIGFmdGVyIGFuIGludGVy
cnVwdC4KPj4+Cj4+PiBJIGFtIG5vdCBjbGVhciBhYm91dCB0aGUgZWZmZWN0cyBmb3IgdGhlIHVz
ZXIuIENvdWxkIHlvdSBlbGFib3JhdGUKPj4+IHBsZWFzZT8gRG9lcyB0aGUgbGluayBub3cgY29t
ZSB1cCB1cCB0byBvbmUgc2Vjb25kIGxhdGVyPwo+Pgo+PiBZZXMsIHRoZSBsaW5rIHdpbGwgYmUg
dXAgb24gYSBmaXhlZCBvbmUgc2Vjb25kIGxhdGVyLgo+Pgo+PiBUaGUgZGVsYXkgdmFyaWVzIGJl
dHdlZW4gMCB0byAyIHNlY29uZHMgd2l0aG91dCB0aGlzIHBhdGNoLgo+Cj4gSXMgdGhlcmUgbm8g
b3RoZXIgZml4PyBSZWdhcmRpbmcgYm9vdGluZyBhIHN5c3RlbSBmYXN0IChsZXNzIHRoYW4gc2l4
Cj4gc2Vjb25kcyksIGEgZml4ZWQgb25lIHNlY29uZCBkZWxheSBpcyBxdWl0ZSBhIHJlZ3Jlc3Np
b24gb24gc3lzdGVtcyB3aGVyZQo+IGl0IHdvcmtlZCBiZWZvcmUuCgpUaGlzIG9ubHkgYWZmZWN0
cyB3aGVuIGV0aGVybmV0IGNhYmxlIGlzIGhvdCBwbHVnZ2VkLgoKS2FpLUhlbmcKCj4KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+
Cj4+Pgo+Pj4gQW55IGJ1ZyBVUkw/Cj4+Cj4+IElmIG1haW50YWluZXJzIHRoaW5rIGl04oCZcyBu
ZWNlc3NhcnkgdGhlbiBJ4oCZbGwgZmlsZSBvbmUuCj4KPiBOb3QgbmVjZXNzYXJ5LCBpZiB0aGVy
ZSBpcyBub25lLiBJIHRob3VnaHQgeW91IGhhZCBvbmUgaW4gTGF1bmNocGFkIG9yIHNvLgo+Cj4K
PiBLaW5kIHJlZ2FyZHMsCj4KPiBQYXVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
