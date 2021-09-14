Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF5240A655
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Sep 2021 07:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5126D80EC9;
	Tue, 14 Sep 2021 05:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nqb7ezgMBYOY; Tue, 14 Sep 2021 05:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47A5B80EB9;
	Tue, 14 Sep 2021 05:56:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B635E1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 05:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFAC4607D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 05:56:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p-Dqz79G-S5K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 05:56:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7112C607C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 05:56:07 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id m9so18249903wrb.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Sep 2021 22:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=73bi6it4gjJbrBuLDIJpdXx+yqm4ktFJ0GsBXEX9Zvc=;
 b=GEj2xA3+IC3xJS5HPubduuXygw3RWFJTkVXFCVJw+n3XPauG6l1Jn9C6LASqjefgp9
 UqEs5LIAOmfknADFilJ21dqXDxJivbpqjJncphkGrwWNgn67m74hVBNEQ+x9JBHYe1zx
 W+GmLzg1YXKJDXMiK3goBYU+NI5UFRXrXJ1W8SBmx5L23yFUH1CJgSnHNECSO5CIfaGn
 5ziweN1cXuuw5Qk/2FJcAWB3XSgF70Gdx2gCd8v/ocaj4PRobHw2BlJgT5M9kRBsKECh
 qUNT9CnbHpXyqnLKQHLcCH9Ga+k5lpGtzqdz0QkhxY3ciRyz8+vtQlBx0/GJ5N+Ho6Sc
 KDOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=73bi6it4gjJbrBuLDIJpdXx+yqm4ktFJ0GsBXEX9Zvc=;
 b=tebjVW1b0tkxbBfSlxLUL7USG7tcJmx9anEqBAYWrXR45g7HCT/g23BKa302e3XDJX
 DLDuBjvbL993C1l3PTSU5yGhfPsqnbsf4MCg7glVhGE3bO52bSh8kMtPIEI6UTIkC8K5
 d8Uy96UdP+W9NbzNgyWa3iMjJoofdbt9Vnfn+T9c9MG13FxPbJvEZg6AB3+xjaQSPqXm
 q2FV4iwKmEOJJ7DwouvFNQacNPGTzA9T15sdQYWZyi7qs96ykA1kuBauLZj6rw+QF1ez
 eK8QjAbFPT+BUrb4OTdUAh8IZlof3r7EhBN++Z+qq60ekwX+MTZZMAqwRb6BpVRFR5ig
 3bqA==
X-Gm-Message-State: AOAM5327g6oCc1tyxzBsmOhvefdqP/XiPPXhxFJMHOntH8Nr8vnYvwNA
 MJiXwMrp1gNlLfABlMVRM4U=
X-Google-Smtp-Source: ABdhPJwZ6cvA3JEn4sBvohZdyDUgIeRcGsP/+NNKJLqf0RPrjWNdQ0LqDI/DYbbXyaqKgn7r6+GZ2A==
X-Received: by 2002:a05:6000:1284:: with SMTP id
 f4mr16839464wrx.88.1631598965742; 
 Mon, 13 Sep 2021 22:56:05 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f08:4500:d493:df4c:6694:d298?
 (p200300ea8f084500d493df4c6694d298.dip0.t-ipconnect.de.
 [2003:ea:8f08:4500:d493:df4c:6694:d298])
 by smtp.googlemail.com with ESMTPSA id h16sm9376626wre.52.2021.09.13.22.56.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Sep 2021 22:56:05 -0700 (PDT)
To: Dave Jones <davej@codemonkey.org.uk>
References: <CAHk-=wgbygOb3hRV+7YOpVcMPTP2oQ=iw6tf09Ydspg7o7BsWQ@mail.gmail.com>
 <20210913141818.GA27911@codemonkey.org.uk>
 <ab571d7e-0cf5-ffb3-6bbe-478a4ed749dc@gmail.com>
 <20210913201519.GA15726@codemonkey.org.uk>
 <b84b799d-0aaa-c4e1-b61b-8e2316b62bd1@gmail.com>
 <20210913203234.GA6762@codemonkey.org.uk>
 <b24d81e2-5a1e-3616-5a01-abd58c0712f7@gmail.com>
 <b4b543d4-c0c5-3c56-46b7-e17ec579edcc@twofifty.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <367cc748-d411-8cf8-ff95-07715c55e899@gmail.com>
Date: Tue, 14 Sep 2021 07:51:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <b4b543d4-c0c5-3c56-46b7-e17ec579edcc@twofifty.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Linux 5.15-rc1 - 82599ES VPD access isue
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
Cc: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Hisashi T Fujinaka <htodd@twofifty.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTQuMDkuMjAyMSAwMTozMiwgSGlzYXNoaSBUIEZ1amluYWthIHdyb3RlOgo+IE9uIE1vbiwg
MTMgU2VwIDIwMjEsIEhlaW5lciBLYWxsd2VpdCB3cm90ZToKPiAKPj4gT24gMTMuMDkuMjAyMSAy
MjozMiwgRGF2ZSBKb25lcyB3cm90ZToKPj4KPj4gKyBKZXNzZSBhbmQgVG9ueSBhcyBJbnRlbCBO
SUMgbWFpbnRhaW5lcnMKPj4KPj4+IE9uIE1vbiwgU2VwIDEzLCAyMDIxIGF0IDEwOjIyOjU3UE0g
KzAyMDAsIEhlaW5lciBLYWxsd2VpdCB3cm90ZToKPj4+Cj4+PiA+PiBUaGlzIGRpZG4ndCBoZWxw
IEknbSBhZnJhaWQgOigKPj4+ID4+IEl0IGNoYW5nZWQgdGhlIFZQRCB3YXJuaW5nLCBidXQgdGhh
dCdzIGFib3V0IGl0Li4uCj4+PiA+Pgo+Pj4gPj4gW8KgIDE4NC4yMzU0OTZdIHBjaSAwMDAwOjAy
OjAwLjA6IGNhbGxpbmfCoCBxdWlya19ibGFja2xpc3RfdnBkKzB4MC8weDIyIEAgMQo+Pj4gPj4g
W8KgIDE4NC4yMzU0OTldIHBjaSAwMDAwOjAyOjAwLjA6IFtGaXJtd2FyZSBCdWddOiBkaXNhYmxp
bmcgVlBEIGFjY2VzcyAoY2FuJ3QgZGV0ZXJtaW5lIHNpemUgb2Ygbm9uLXN0YW5kYXJkIFZQRCBm
b3JtYXQpCj4+PiA+PiBbwqAgMTg0LjIzNTUwMV0gcGNpIDAwMDA6MDI6MDAuMDogcXVpcmtfYmxh
Y2tsaXN0X3ZwZCsweDAvMHgyMiB0b29rIDAgdXNlY3MKPj4+ID4+Cj4+PiA+IFdpdGggdGhpcyBw
YXRjaCB0aGVyZSdzIG5vIFZQRCBhY2Nlc3MgdG8gdGhpcyBkZXZpY2UgYW55IGxvbmdlci4gU28g
dGhpcyBjYW4ndCBiZQo+Pj4gPiB0aGUgcm9vdCBjYXVzZS4gRG8geW91IGhhdmUgYW55IG90aGVy
IFBDSSBkZXZpY2UgdGhhdCBoYXMgVlBEIGNhcGFiaWxpdHk/Cj4+PiA+IC0+IENhcGFiaWxpdGll
czogWy4uLl0gVml0YWwgUHJvZHVjdCBEYXRhCj4+Pgo+Pj4KPj4+IDAxOjAwLjAgRXRoZXJuZXQg
Y29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gODI1OTlFUyAxMC1HaWdhYml0IFNGSS9TRlAr
IE5ldHdvcmsgQ29ubmVjdGlvbiAocmV2IDAxKQo+Pj4gwqDCoMKgwqDCoMKgwqAgU3Vic3lzdGVt
OiBEZXZpY2UgMWRjZjowMzBhCj4+PiDCoMKgwqDCoC4uLgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBDYXBhYmlsaXRpZXM6IFtlMF0gVml0YWwgUHJvZHVjdCBEYXRhCj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgVW5rbm93biBzbWFsbCByZXNvdXJjZSB0eXBlIDA2LCB3aWxs
IG5vdCBkZWNvZGUgbW9yZS4KPj4+Cj4+Cj4+IFdoZW4gc2VhcmNoaW5nIEkgZm91bmQgdGhlIHNh
bWUgc3ltcHRvbSBvZiBpbnZhbGlkIFZQRCBkYXRhIGZvciA4MjU5OUVCLgo+PiBEbyB0aGVzZSBh
ZGFwdGVycyBoYXZlIG5vbi1WUEQgZGF0YSBpbiBWUEQgYWRkcmVzcyBzcGFjZT8gT3IgaXMgdGhl
IGFjdHVhbAo+PiBWUEQgZGF0YSBhdCBhbm90aGVyIG9mZnNldCB0aGFuIDA/IEkga25vdyB0aGF0
IGZldyBDaGVsc2lvIGRldmljZXMgaGF2ZQo+PiBzdWNoIGEgbm9uLXN0YW5kYXJkIFZQRCBzdHJ1
Y3R1cmUuCj4+Cj4+Pgo+Pj4gSSdsbCBhZGQgdGhhdCB0byB0aGUgcXVpcmsgbGlzdCBhbmQgc2Vl
IGlmIHRoYXQgaGVscHMuCj4+Pgo+Pj4gwqDCoMKgwqBEYXZlCj4+Pgo+PiBIZWluZXIKPiAKPiBT
b3JyeSB0byByZXBseSBmcm9tIG15IHBlcnNvbmFsIGFjY291bnQuIElmIEkgZGlkIGl0IGZyb20g
bXkgd29yawo+IGFjY291bnQgSSdkIGJlIHRvcC1wb3N0aW5nIGJlY2F1c2Ugb2YgT3V0bG9vayBh
bmQgdGhhdCBnb2VzIG92ZXIgbGlrZSBhCj4gbGVhZCBiYWxsb29uLgo+IAo+IEFueXdheSwgY2Fu
IHlvdSBzZW5kIHVzIGEgZHVtcCBvZiB5b3VyIGVlcHJvbSB1c2luZyBldGh0b29sIC1lPyBZb3Ug
Y2FuCj4gZWl0aGVyIHNlbmQgaXQgdmlhIGEgYnVnIG9uIGUxMDAwLnNvdXJjZWZvcmdlLm5ldCBv
ciB0cnkgc2VuZGluZyBpdCB0bwo+IHRvZGQuZnVqaW5ha2FAaW50ZWwuY29tCj4gCj4gVGhlIG90
aGVyIHRoaW5nIGlzIEknbSB3b25kZXJpbmcgaXMgd2hhdCB0aGUgc3VidmVuZG9yIGRldmljZSBJ
RCB5b3UKPiBoYXZlIGlzIHJlZmVycmluZyB0byBiZWNhdXNlIGl0J3Mgbm90IGluIHRoZSBwY2kg
ZGF0YWJhc2UuIFNvbWUgT0RNcwo+IGxpa2UgZ2V0dGluZyBjcmVhdGl2ZSB3aXRoIHdoYXQgdGhl
eSBwdXQgaW4gdGhlIE5WTS4KPiAKPiBUb2RkIEZ1amluYWthICh0b2RkLmZ1amluYWthQGludGVs
LmNvbSkKClRoYW5rcyBmb3IgdGhlIHByb21wdCByZXBseS4gRGF2ZSwgY291bGQgeW91IHBsZWFz
ZSBwcm92aWRlIHRoZSByZXF1ZXN0ZWQKaW5mb3JtYXRpb24/Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
