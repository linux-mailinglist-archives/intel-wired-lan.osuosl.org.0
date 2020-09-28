Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0608A27B4C9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 20:48:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 668F08702C;
	Mon, 28 Sep 2020 18:48:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4sK17NjC6K4h; Mon, 28 Sep 2020 18:48:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 824A386FB7;
	Mon, 28 Sep 2020 18:48:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 504931BF362
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 484D286E1D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EX6yBUnvXT-l for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 18:21:26 +0000 (UTC)
X-Greylist: delayed 00:48:35 by SQLgrey-1.7.6
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
 [209.85.215.181])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 81E4886DEA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:21:26 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id t14so1571295pgl.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 11:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=dXB5sy6RuZTJPqx7JJLXNWe1a908CXA07ElMJ2w7R68=;
 b=sJXRxO3VX4I/D6OKhoVkZO/piViwl1rsupkYazfFzknNozgI8OsHjhRNoJktdix5sL
 XUePafekvxNj5dX2ZMNgPcxdgvjKnkbGxEJHb5M7MD6jsXR24Z16f7Q8EMF5gSrpcqV3
 6mdJsMem+f4C7b9Iy8bk9humZkeCkuU0VDUAFi3VrIZ1AvBJykcO3j/m813G3+0PUELA
 8jig6g1XAuBTfOqXNacgr0soT1uIdlZZ/QhywRu6HBMy1Ncr+lfoiCUVKIuNsV2E8yzC
 6Etpltkq/5EZsG8x+m98hzY644sBlZD9g9rlktFFEXZxJkhYAnrqwKkSvnbtDB8ytbwH
 WhHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=dXB5sy6RuZTJPqx7JJLXNWe1a908CXA07ElMJ2w7R68=;
 b=G5azVIsOyGDdMP8fAKPKll4QVb+rAEXxLH6Qbe1j7c+77JnuNU13XhNpgsriifnX4W
 bzp9L9Nq5zQx22a8lAP1KjryXQaNDWsHz3XKOJ4TNiMmvpxen8VLrpCgS3y5Bhzaq1e0
 +O+FzySrAMzAcw8ugcUi+R9ZEBPEs8eRoL9kUXp1aqP7aVc3SpiFeKLR0CkAcFnQvaXd
 zq7tjh52p2mHpf0ntC02e9LsCXWEjHPWpU/18t7Uvyr6PBK8wbpqEaKkRsXndgjduj3b
 VRVb36MO8hVJfNDC/PBSsHIvPVRcj2f4XYjfASfYuwS5wDGPQXGJAxwxLH0Zd7+vg67g
 U+sw==
X-Gm-Message-State: AOAM531+pdVDqa9hNTrW75U1FP0B/fCsOD2B22RSxIs+i0pKJUyA+FjW
 m6T5sUVawlFKYnJg8TmcJqWKK4qcADkJVJkD
X-Google-Smtp-Source: ABdhPJyoyl1fomYslG+xBdkpZIhAHLVX6EHj3huo2N9gQMS+dYAudkP3ZT0Owaa2qZhTwb+CGqQqNA==
X-Received: by 2002:a63:784:: with SMTP id 126mr121408pgh.428.1601313891289;
 Mon, 28 Sep 2020 10:24:51 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local
 (static-50-53-47-17.bvtn.or.frontiernet.net. [50.53.47.17])
 by smtp.gmail.com with ESMTPSA id u71sm2511314pfc.43.2020.09.28.10.24.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Sep 2020 10:24:50 -0700 (PDT)
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
 <20200927194920.918550822@linutronix.de>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <5e4c3201-9d90-65b1-5c13-e2381445be1d@pensando.io>
Date: Mon, 28 Sep 2020 10:24:47 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200927194920.918550822@linutronix.de>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 28 Sep 2020 18:48:47 +0000
Subject: Re: [Intel-wired-lan] [patch 11/35] net: ionic: Replace
 in_interrupt() usage.
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Amitkumar Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Christian Benvenuti <benve@cisco.com>, "David S. Miller" <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8yNy8yMCAxMjo0OCBQTSwgVGhvbWFzIEdsZWl4bmVyIHdyb3RlOgo+IEZyb206IFNlYmFz
dGlhbiBBbmRyemVqIFNpZXdpb3IgPGJpZ2Vhc3lAbGludXRyb25peC5kZT4KPgo+IFRoZSBpbl9p
bnRlcnJ1cHQoKSB1c2FnZSBpbiB0aGlzIGRyaXZlciB0cmllcyB0byBmaWd1cmUgb3V0IHdoaWNo
IGNvbnRleHQKPiBtYXkgc2xlZXAgYW5kIHdoaWNoIGNvbnRleHQgbWF5IG5vdCBzbGVlcC4gaW5f
aW50ZXJydXB0KCkgaXMgbm90IHJlYWxseQo+IHN1aXRhYmxlIGFzIGl0IG1pc3NlcyBib3RoIHBy
ZWVtcHRpb24gZGlzYWJsZWQgYW5kIGludGVycnVwdCBkaXNhYmxlZAo+IGludm9jYXRpb25zIGZy
b20gdGFzayBjb250ZXh0Lgo+Cj4gQ29uZGl0aW9uYWxzIGxpa2UgdGhhdCBpbiBkcml2ZXIgY29k
ZSBhcmUgZnJvd25lZCB1cG9uIGluIGdlbmVyYWwgYmVjYXVzZQo+IGludm9jYXRpb25zIG9mIGZ1
bmN0aW9ucyBmcm9tIGludmFsaWQgY29udGV4dHMgbWlnaHQgbm90IGJlIGRldGVjdGVkCj4gYXMg
dGhlIGNvbmRpdGlvbmFsIHBhcGVycyBvdmVyIGl0Lgo+Cj4gaW9uaWNfbGlmX2FkZHIoKSBjYW4g
YmUgY2FsbGVkIGZyb206Cj4KPiAgIDEpIC0+bmRvX3NldF9yeF9tb2RlKCkgd2hpY2ggaXMgdW5k
ZXIgbmV0aWZfYWRkcl9sb2NrX2JoKCkpIHNvIGl0IG11c3Qgbm90Cj4gICAgICBzbGVlcC4KPgo+
ICAgMikgSW5pdCBhbmQgc2V0dXAgZnVuY3Rpb25zIHdoaWNoIGFyZSBpbiBmdWxseSBwcmVlbXB0
aWJsZSB0YXNrIGNvbnRleHQuCj4KPiBfaW9uaWNfbGlmX3J4X21vZGUoKSBoYXMgb25seSBvbmUg
Y2FsbCBwYXRoIHdpdGggQkggZGlzYWJsZWQuCj4KPiBpb25pY19saW5rX3N0YXR1c19jaGVja19y
ZXF1ZXN0KCkgaGFzIHR3byBjYWxsIHBhdGhzOgo+Cj4gICAxKSBOQVBJIHdoaWNoIG9idmlvdXNs
eSBjYW5ub3Qgc2xlZXAKPgo+ICAgMikgU2V0dXAgd2hpY2ggaXMgYWdhaW4gZnVsbHkgcHJlZW1w
dGlibGUgdGFzayBjb250ZXh0Cj4KPiBBZGQgJ2Nhbl9zbGVlcCcgYXJndW1lbnRzIHRvIHRoZSBh
ZmZlY3RlZCBmdW5jdGlvbnMgYW5kIGxldCB0aGUgY2FsbGVycwo+IHByb3ZpZGUgdGhlIGNvbnRl
eHQgaW5zdGVhZCBvZiBsZXR0aW5nIHRoZSBmdW5jdGlvbnMgZGVkdWNlIGl0Lgo+Cj4gU2lnbmVk
LW9mZi1ieTogU2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRl
Pgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+
IENjOiBTaGFubm9uIE5lbHNvbiA8c25lbHNvbkBwZW5zYW5kby5pbz4KPiBDYzogUGVuc2FuZG8g
RHJpdmVycyA8ZHJpdmVyc0BwZW5zYW5kby5pbz4KPiBDYzogIkRhdmlkIFMuIE1pbGxlciIgPGRh
dmVtQGRhdmVtbG9mdC5uZXQ+Cj4gQ2M6IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+
Cj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKCkFja2VkLWJ5OiBTaGFubm9uIE5lbHNvbiA8
c25lbHNvbkBwZW5zYW5kby5pbz4KCj4gLS0tCj4KPiBXaGlsZSByZXZpZXdpbmcgdGhlIGNhbGxw
YXRocywgYSBjb3VwbGUgb2YgdGhpbmdzIHdlcmUgb2JzZXJ2ZWQgd2hpY2ggY291bGQKPiBiZSBp
bXByb3ZlZDoKPgo+IC0gaW9uaWNfbGlmX2RlZmVycmVkX3dvcmsoKSBjYW4gaXRlcmF0ZSBvdmVy
IHRoZSBsaXN0LiBUaGVyZSBpcyBubyBuZWVkCj4gICAgdG8gc2NoZWR1bGUgdGhlIHdvcmsgaXRl
bSBhZnRlciBlYWNoIGl0ZXJhdGlvbgoKSSB0aGluayB0aGUgb3JpZ2luYWwgd3JpdGVyJ3MgaW50
ZW50IHdhcyB0byBhdm9pZCBtb25vcG9saXppbmcgdGhlIHdvcmsgCnRocmVhZCBmb3IgdmVyeSBs
b25nIG9uIGFueSBvbmUgY3ljbGUsIHdpdGggdGhlIHRob3VnaHQgdGhhdCB3ZSdkIGJlIAptYWtp
bmcgbW9yZSB1c2Ugb2YgdGhpcyB0aGFuIHdlIGN1cnJlbnRseSBhcmUuwqAgSSdsbCBhZGRyZXNz
IHRoaXMuCgo+Cj4gLSBpb25pY19saW5rX3N0YXR1c19jaGVja19yZXF1ZXN0KCkgY291bGQgaGF2
ZSBpb25pY19kZWZlcnJlZF93b3JrIHdpdGhpbgo+ICAgIGlvbmljX2xpZigpLiBUaGlzIHdvdWxk
IGF2b2lkIG1lbW9yeSBhbGxvY2F0aW9uIGZyb20gTkFQSS4gTW9yZQo+ICAgIGltcG9ydGFudCwg
b25jZSBJT05JQ19MSUZfRl9MSU5LX0NIRUNLX1JFUVVFU1RFRCBpcyBzZXQgYW5kIHRoYXQgYWxs
b2MKPiAgICBmYWlscywgdGhlIGxpbmsgY2hlY2sgbmV2ZXIgaGFwcGVucy4KClRoYW5rcywgSSds
bCBmaXggdXAgdGhhdCBlcnJvciBjb25kaXRpb24uCgo+Cj4gLSBpb25pY19saWZfaGFuZGxlX2Z3
X2Rvd24oKSBzZXRzIElPTklDX0xJRl9GX0ZXX1JFU0VULiBJbnZva2VzIHRoZW4KPiAgICBpb25p
Y19saWZfZGVpbml0KCkgd2hpY2ggb25seSBpbnZva2VzIGNhbmNlbF93b3JrX3N5bmMoKSBpZgo+
ICAgIElPTklDX0xJRl9GX0ZXX1JFU0VUIGlzIG5vdCBzZXQuIEkgdGhpbmsgdGhlIGxvZ2ljIGlz
IHdyb25nIGhlcmUgYXMKPiAgICB0aGUgd29yayBtdXN0IGFsd2F5cyBiZSBjYW5jbGVkLiBBbHNv
IHRoZSBsaXN0IHdpdGggaW9uaWNfZGVmZXJyZWQKPiAgICB3b3JrIGl0ZW1zIG5lZWRzIGEgY2xl
YW4gdXAuCgpJJ2xsIGxvb2sgYXQgdGhhdCwgdGhhbmtzLgoKc2xuCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
