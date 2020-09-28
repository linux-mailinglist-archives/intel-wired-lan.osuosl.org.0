Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0E227B5BC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 21:52:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B7BE203A3;
	Mon, 28 Sep 2020 19:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jQFAPYUlaDju; Mon, 28 Sep 2020 19:52:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 96B94204BB;
	Mon, 28 Sep 2020 19:52:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2304B1BF397
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 19:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D6FF84DFD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 19:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cms-Uqjf2Ov9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 19:51:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 06CA485817
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 19:51:18 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id y14so1780015pgf.12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 12:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=BqQM2i0VFoVIUWIR0YuEpa6Ai1/97mzRDr35j7tf8L4=;
 b=C9EUv+2wwyyFn6FJiu/VVbLVblSjg9av85L/szVbIz0Rpy3mJiykJyAX94048whYfv
 xgNsRhYsRnuF4WvxMHmC9mBSXCorfrwc5rM6jE7aNlWsJU5zF/D9ezZV/MKvR4Kgxn6c
 hGEIm89YQAmjo7R5FqdFlWCeu3xCILdpu1ABFzulST9FvrmJr9AM3bKwkoul2jbE2Un7
 e3TukRt5VX493lR24AiqxiiLA1dpjeS95yta+Vm7vPIS2bjbuAUl5C/urY6sQbqC8ysH
 Cu3NWy/mFVXd6hnN7gFAnlpYSxpFbhWjRgd6e+vMhcaM1GIbrcFd+iyfRje2wvH3zLz7
 YP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=BqQM2i0VFoVIUWIR0YuEpa6Ai1/97mzRDr35j7tf8L4=;
 b=WvNGO+8vb+5QOx1bOjU83uLeX8IEbO0VLYMTMrRCT2FaOQfy4CMEMWDVlocEVfgvtN
 DKqiMVmDtNk3cqxrn51RcVFDuaSlIepE6wCDhrd/PmGXJ8IuWNav5sNHK7tNlLRAm9pJ
 qTNVDKQIC/1eFiHdDtHApfjrH8aw3uTETX3JSc1xmMXkRBOW0mcJVFsy5jPS8xOOq89+
 /ut2NF/y3x6w3WeNKIkPzod2vLX7AkhubseMSWJpzt6kLX5l5kduSDB+c3qQOci5BaLM
 56fydjMjGrlVh929kESNsZdMNA89m5g/e8l0+TwO+f0GnFPtlGyl8kaGT2eZw7TiswNX
 tj1g==
X-Gm-Message-State: AOAM5311X9wYHXqcOHnNaTQbvUd6hzG0DpF4MzWU/7aD1qnW7kJJ4a+x
 WWlR/5MwjNg0tS7fK/zGNl4fGw==
X-Google-Smtp-Source: ABdhPJzckG5HDk1GrXpcpaQSCKZRP7ZefiC9sUCSVPJwppJZTnuH436/cYjoi7KCfletdPnr9Qi8DQ==
X-Received: by 2002:aa7:9427:0:b029:142:2501:35df with SMTP id
 y7-20020aa794270000b0290142250135dfmr818795pfo.63.1601322677478; 
 Mon, 28 Sep 2020 12:51:17 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local
 (static-50-53-47-17.bvtn.or.frontiernet.net. [50.53.47.17])
 by smtp.gmail.com with ESMTPSA id j26sm2608117pfa.160.2020.09.28.12.51.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Sep 2020 12:51:16 -0700 (PDT)
From: Shannon Nelson <snelson@pensando.io>
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
References: <20200927194846.045411263@linutronix.de>
 <20200927194920.918550822@linutronix.de>
 <5e4c3201-9d90-65b1-5c13-e2381445be1d@pensando.io>
Message-ID: <1d0950f8-cab4-9ef2-6cf7-73b71b750a8d@pensando.io>
Date: Mon, 28 Sep 2020 12:51:14 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <5e4c3201-9d90-65b1-5c13-e2381445be1d@pensando.io>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 28 Sep 2020 19:52:34 +0000
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

T24gOS8yOC8yMCAxMDoyNCBBTSwgU2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4gT24gOS8yNy8yMCAx
Mjo0OCBQTSwgVGhvbWFzIEdsZWl4bmVyIHdyb3RlOgo+PiBGcm9tOiBTZWJhc3RpYW4gQW5kcnpl
aiBTaWV3aW9yIDxiaWdlYXN5QGxpbnV0cm9uaXguZGU+Cj4+Cj4+IFRoZSBpbl9pbnRlcnJ1cHQo
KSB1c2FnZSBpbiB0aGlzIGRyaXZlciB0cmllcyB0byBmaWd1cmUgb3V0IHdoaWNoIAo+PiBjb250
ZXh0Cj4+IG1heSBzbGVlcCBhbmQgd2hpY2ggY29udGV4dCBtYXkgbm90IHNsZWVwLiBpbl9pbnRl
cnJ1cHQoKSBpcyBub3QgcmVhbGx5Cj4+IHN1aXRhYmxlIGFzIGl0IG1pc3NlcyBib3RoIHByZWVt
cHRpb24gZGlzYWJsZWQgYW5kIGludGVycnVwdCBkaXNhYmxlZAo+PiBpbnZvY2F0aW9ucyBmcm9t
IHRhc2sgY29udGV4dC4KPj4KPj4gQ29uZGl0aW9uYWxzIGxpa2UgdGhhdCBpbiBkcml2ZXIgY29k
ZSBhcmUgZnJvd25lZCB1cG9uIGluIGdlbmVyYWwgCj4+IGJlY2F1c2UKPj4gaW52b2NhdGlvbnMg
b2YgZnVuY3Rpb25zIGZyb20gaW52YWxpZCBjb250ZXh0cyBtaWdodCBub3QgYmUgZGV0ZWN0ZWQK
Pj4gYXMgdGhlIGNvbmRpdGlvbmFsIHBhcGVycyBvdmVyIGl0Lgo+Pgo+PiBpb25pY19saWZfYWRk
cigpIGNhbiBiZSBjYWxsZWQgZnJvbToKPj4KPj4gwqAgMSkgLT5uZG9fc2V0X3J4X21vZGUoKSB3
aGljaCBpcyB1bmRlciBuZXRpZl9hZGRyX2xvY2tfYmgoKSkgc28gaXQgCj4+IG11c3Qgbm90Cj4+
IMKgwqDCoMKgIHNsZWVwLgo+Pgo+PiDCoCAyKSBJbml0IGFuZCBzZXR1cCBmdW5jdGlvbnMgd2hp
Y2ggYXJlIGluIGZ1bGx5IHByZWVtcHRpYmxlIHRhc2sgCj4+IGNvbnRleHQuCj4+Cj4+IF9pb25p
Y19saWZfcnhfbW9kZSgpIGhhcyBvbmx5IG9uZSBjYWxsIHBhdGggd2l0aCBCSCBkaXNhYmxlZC4K
Ck5vdyB0aGF0IEkndmUgaGFkIG15IGNvZmZlZSwgbGV0J3MgbG9vayBhdCB0aGlzIGFnYWluIC0g
dGhlcmUgYXJlIAptdWx0aXBsZSBwYXRocyB0aGF0IGdldCB1cyB0byBfaW9uaWNfbGlmX3J4X21v
ZGUoKToKCi5uZG9fc2V0X3J4X21vZGUKIMKgIGlvbmljX3NldF9yeF9tb2RlLAogwqDCoMKgIF9p
b25pY19saWZfcnhfbW9kZQoKeyBpb25pY19vcGVuLCBpb25pY19saWZfaGFuZGxlX2Z3X3VwLCBp
b25pY19zdGFydF9xdWV1ZXNfcmVjb25maWcgfQogwqDCoMKgIGlvbmljX3R4cnhfaW5pdAogwqDC
oMKgwqDCoCBpb25pY19zZXRfcnhfbW9kZQogwqDCoMKgwqDCoMKgwqAgX2lvbmljX2xpZl9yeF9t
b2RlCgpXZSBtYXkgbm90IHdhbnQgdG8gY2hhbmdlIHRoaXMgb25lLgoKc2xuCgoKCj4+Cj4+IGlv
bmljX2xpbmtfc3RhdHVzX2NoZWNrX3JlcXVlc3QoKSBoYXMgdHdvIGNhbGwgcGF0aHM6Cj4+Cj4+
IMKgIDEpIE5BUEkgd2hpY2ggb2J2aW91c2x5IGNhbm5vdCBzbGVlcAo+Pgo+PiDCoCAyKSBTZXR1
cCB3aGljaCBpcyBhZ2FpbiBmdWxseSBwcmVlbXB0aWJsZSB0YXNrIGNvbnRleHQKPj4KPj4gQWRk
ICdjYW5fc2xlZXAnIGFyZ3VtZW50cyB0byB0aGUgYWZmZWN0ZWQgZnVuY3Rpb25zIGFuZCBsZXQg
dGhlIGNhbGxlcnMKPj4gcHJvdmlkZSB0aGUgY29udGV4dCBpbnN0ZWFkIG9mIGxldHRpbmcgdGhl
IGZ1bmN0aW9ucyBkZWR1Y2UgaXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBBbmRy
emVqIFNpZXdpb3IgPGJpZ2Vhc3lAbGludXRyb25peC5kZT4KPj4gU2lnbmVkLW9mZi1ieTogVGhv
bWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Cj4+IENjOiBTaGFubm9uIE5lbHNvbiA8
c25lbHNvbkBwZW5zYW5kby5pbz4KPj4gQ2M6IFBlbnNhbmRvIERyaXZlcnMgPGRyaXZlcnNAcGVu
c2FuZG8uaW8+Cj4+IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4K
Pj4gQ2M6IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+Cj4+IENjOiBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnCj4KPiBBY2tlZC1ieTogU2hhbm5vbiBOZWxzb24gPHNuZWxzb25AcGVuc2Fu
ZG8uaW8+Cj4KPj4gLS0tCj4+Cj4+IFdoaWxlIHJldmlld2luZyB0aGUgY2FsbHBhdGhzLCBhIGNv
dXBsZSBvZiB0aGluZ3Mgd2VyZSBvYnNlcnZlZCB3aGljaCAKPj4gY291bGQKPj4gYmUgaW1wcm92
ZWQ6Cj4+Cj4+IC0gaW9uaWNfbGlmX2RlZmVycmVkX3dvcmsoKSBjYW4gaXRlcmF0ZSBvdmVyIHRo
ZSBsaXN0LiBUaGVyZSBpcyBubyBuZWVkCj4+IMKgwqAgdG8gc2NoZWR1bGUgdGhlIHdvcmsgaXRl
bSBhZnRlciBlYWNoIGl0ZXJhdGlvbgo+Cj4gSSB0aGluayB0aGUgb3JpZ2luYWwgd3JpdGVyJ3Mg
aW50ZW50IHdhcyB0byBhdm9pZCBtb25vcG9saXppbmcgdGhlIAo+IHdvcmsgdGhyZWFkIGZvciB2
ZXJ5IGxvbmcgb24gYW55IG9uZSBjeWNsZSwgd2l0aCB0aGUgdGhvdWdodCB0aGF0IHdlJ2QgCj4g
YmUgbWFraW5nIG1vcmUgdXNlIG9mIHRoaXMgdGhhbiB3ZSBjdXJyZW50bHkgYXJlLsKgIEknbGwg
YWRkcmVzcyB0aGlzLgo+Cj4+Cj4+IC0gaW9uaWNfbGlua19zdGF0dXNfY2hlY2tfcmVxdWVzdCgp
IGNvdWxkIGhhdmUgaW9uaWNfZGVmZXJyZWRfd29yayAKPj4gd2l0aGluCj4+IMKgwqAgaW9uaWNf
bGlmKCkuIFRoaXMgd291bGQgYXZvaWQgbWVtb3J5IGFsbG9jYXRpb24gZnJvbSBOQVBJLiBNb3Jl
Cj4+IMKgwqAgaW1wb3J0YW50LCBvbmNlIElPTklDX0xJRl9GX0xJTktfQ0hFQ0tfUkVRVUVTVEVE
IGlzIHNldCBhbmQgdGhhdCAKPj4gYWxsb2MKPj4gwqDCoCBmYWlscywgdGhlIGxpbmsgY2hlY2sg
bmV2ZXIgaGFwcGVucy4KPgo+IFRoYW5rcywgSSdsbCBmaXggdXAgdGhhdCBlcnJvciBjb25kaXRp
b24uCj4KPj4KPj4gLSBpb25pY19saWZfaGFuZGxlX2Z3X2Rvd24oKSBzZXRzIElPTklDX0xJRl9G
X0ZXX1JFU0VULiBJbnZva2VzIHRoZW4KPj4gwqDCoCBpb25pY19saWZfZGVpbml0KCkgd2hpY2gg
b25seSBpbnZva2VzIGNhbmNlbF93b3JrX3N5bmMoKSBpZgo+PiDCoMKgIElPTklDX0xJRl9GX0ZX
X1JFU0VUIGlzIG5vdCBzZXQuIEkgdGhpbmsgdGhlIGxvZ2ljIGlzIHdyb25nIGhlcmUgYXMKPj4g
wqDCoCB0aGUgd29yayBtdXN0IGFsd2F5cyBiZSBjYW5jbGVkLiBBbHNvIHRoZSBsaXN0IHdpdGgg
aW9uaWNfZGVmZXJyZWQKPj4gwqDCoCB3b3JrIGl0ZW1zIG5lZWRzIGEgY2xlYW4gdXAuCj4KPiBJ
J2xsIGxvb2sgYXQgdGhhdCwgdGhhbmtzLgo+Cj4gc2xuCj4KPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
