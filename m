Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A5123CF45
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Aug 2020 21:18:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 43BAE84559;
	Wed,  5 Aug 2020 19:18:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8OGyU3n9gVY8; Wed,  5 Aug 2020 19:18:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D9BA8494E;
	Wed,  5 Aug 2020 19:18:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC79C1BF35D
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 19:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B74F220BF9
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 19:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K0pmBW3AbHof for <intel-wired-lan@osuosl.org>;
 Wed,  5 Aug 2020 19:18:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by silver.osuosl.org (Postfix) with ESMTPS id BB3B320407
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 19:18:24 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id t23so25471079ljc.3
 for <intel-wired-lan@osuosl.org>; Wed, 05 Aug 2020 12:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tXbCSjgJxdOJ+iszEr8xoCB1HK89Heg6fENK1fqi0bM=;
 b=E2cLCKrsTm3EvgVPd9BxE/bNN9HwaEzrPhM5WbR+Ol4BGu5i+jv6V/LHDrKs5rpN+4
 gCGgEXle1UWNgZ8Dh91uTh7tpv2+s0MvBg7nzCjx/Sm41R4wOf+M3+w0cjFm6tk2SkIN
 hyDa8oKgQemzbGddxS1YlXlXi9bwZ7tO/Ik0XeYaO2VfWBUXem6dvlht/0n6yNYwUKUU
 Qbm0WWav6RTspNwiOiSrcKklXO7IKWDXtUgs/TM2jKVp3yeaUyiaekVL1820N2xtqba+
 gJvxduGsMJqrPqZzn8KrR26hzLSAAtsuNLSYLKKBW7LTr1fO4AG3canGADPAZBiwjCqw
 0NDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tXbCSjgJxdOJ+iszEr8xoCB1HK89Heg6fENK1fqi0bM=;
 b=WBgHxT6QJ3u1jFrTFqvSd6G+AnE9gwf846Kh2+BP8dLNrTDeh4MmDxYbrg3qprRi6+
 4Kpu0PNXFC8dZ5QdO+mOgZ8ufVcxe1Q39voZzpMVh6WapMrItPpn5qYYzUzN0CqsBXlv
 smN9YeuiI41apcrIC6fPo1PBaEHF3076rkcHyBGM3pU4+HiWrK2uJpqzpkxKwOHhl0/A
 p0Klr1AVCSaO/FRCYrbplqEtW8nU4xwQgLxWYL0LGpHtayb2u14j4Rv6ERbHhCMWga7w
 hU6j3N+VcuNToYH90ei4O4fH/gQX6wvaNlZs7ufqxMHskSD1JeINVTrLoYgM6J7+tWsR
 Q9Bw==
X-Gm-Message-State: AOAM532llznlHzIKPvt3as6XWCRJNIXijHADIOYJY0Rt6CLYQvI68ZXm
 v4R8izhKNv83HHW0sa7GENZPQpSk8HBMFOBvfRerP4tL
X-Google-Smtp-Source: ABdhPJxB7UOaz2avhz/Ksu4xFIMwPcND7rrA7jXeKahdO7QtaZgO89/izqssSMbkZn9yiS2KgTZr6VDYf5p3K6sujpg=
X-Received: by 2002:a2e:d1a:: with SMTP id 26mr1979194ljn.412.1596655102590;
 Wed, 05 Aug 2020 12:18:22 -0700 (PDT)
MIME-Version: 1.0
References: <CADS+iDVjpGVQifg+RtNEQKJw4ePe6+ViUpto8U1v0Xv1HwN2-Q@mail.gmail.com>
 <013f9961-a7fc-0d60-eea3-30b5171a27e1@intel.com>
In-Reply-To: <013f9961-a7fc-0d60-eea3-30b5171a27e1@intel.com>
From: Yaroslav Isakov <yaroslav.isakov@gmail.com>
Date: Wed, 5 Aug 2020 21:18:09 +0200
Message-ID: <CADS+iDVfMUHYrhWvs5SmjKiH6wCp3M34kP80Apzaq9DspVrU5w@mail.gmail.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Subject: Re: [Intel-wired-lan] Deep package C-states cannot be reached on
 e1000e after resume from suspend
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vml0YWx5LApUaGFuayB5b3UsIEkndmUgdHJpZWQsIGJ1dCBubyBjaGFuZ2UgaW4gQy1zdGF0ZXMu
IEkgZG8gbm90IHVuZGVyc3RhbmQKd2h5IHVucGx1Z2dpbmcgYW5kIHBsdWdnaW5nIGNhYmxlIGJh
Y2sgZml4IG15IGlzc3VlLi4uCkkndmUgYWxzbyBmb3VuZCB0aGF0IGlmIEkgcGx1ZyBjYWJsZSBp
bW1lZGlhdGVseSBhZnRlciB1bnBsdWdnaW5nLCBpdAphbHNvIGRvZXNuJ3QgZml4IG15IHByb2Js
ZW0uIEkgc2hvdWxkIHVucGx1ZyBjYWJsZSwgd2FpdCB1bnRpbCB0aGVyZQphcmUgbnVtYmVycyBp
biBSQzYrIGNvbHVtbnMgaW4gdHVyYm9zdGF0LCBhbmQgb25seSB0aGVuIEkgY2FuIGluc2VydAp0
aGUgY2FibGUgYmFjay4KCtGB0YAsIDUg0LDQstCzLiAyMDIwINCzLiDQsiAxMzozNCwgVml0YWx5
IExpZnNoaXRzIDx2aXRhbHkubGlmc2hpdHNAaW50ZWwuY29tPjoKPgo+IEhlbGxvIFlhdG9zbGF2
LAo+Cj4gT24gOC81LzIwMjAgMDM6NDIsIFlhcm9zbGF2IElzYWtvdiB3cm90ZToKPiA+IEhlbGxv
ISBJJ3ZlIGZvdW5kIHRoYXQgbXkgbGFwdG9wIChUNDYwcykgY2Fubm90IHJlYWNoIFBhY2thZ2Ug
Qy1zdGF0ZXMKPiA+IGRlZXBlciB0aGFuIFBDMi4gQWZ0ZXIgc29tZSByZXNlYXJjaCwgSSd2ZSBm
b3VuZCB0aGF0IHVucGx1Z2dpbmcgY2FibGUKPiA+IGZyb20gbXkgbGFwdG9wIGFuZCBwbHVnZ2lu
ZyBpdCBiYWNrIGZpeGVzIHRoYXQsIHVudGlsIHRoZSBsYXB0b3AgaXMKPiA+IHN1c3BlbmRlZC4g
QWZ0ZXIgcmVzdW1lLCB0aGlzIHByb2JsZW0gcmV0dXJucywgYnV0IHVucGx1Z2dpbmcgYW5kCj4g
PiBwbHVnZ2luZyBmaXggaXQgYWdhaW4uCj4gPiBJJ20gdXNpbmcga2VybmVsIDUuOC4wLCBidXQg
SSd2ZSBzZWVuIHRoZSBzYW1lIGJlaGF2aW9yIG9uIHByZXZpb3VzCj4gPiBrZXJuZWwgYXMgd2Vs
bC4KPiA+Cj4gPiBIZXJlIGlzIGEgbHNwY2kgLW4gLXZ2IGV4Y2VycHQ6Cj4gPiAwMDoxZi42IDAy
MDA6IDgwODY6MTU2ZiAocmV2IDIxKQo+ID4gICAgICBTdWJzeXN0ZW06IDE3YWE6MjIzMwo+ID4g
ICAgICBDb250cm9sOiBJL08tIE1lbSsgQnVzTWFzdGVyKyBTcGVjQ3ljbGUtIE1lbVdJTlYtIFZH
QVNub29wLQo+ID4gUGFyRXJyLSBTdGVwcGluZy0gU0VSUi0gRmFzdEIyQi0gRGlzSU5UeCsKPiA+
ICAgICAgU3RhdHVzOiBDYXArIDY2TUh6LSBVREYtIEZhc3RCMkItIFBhckVyci0gREVWU0VMPWZh
c3QgPlRBYm9ydC0KPiA+IDxUQWJvcnQtIDxNQWJvcnQtID5TRVJSLSA8UEVSUi0gSU5UeC0KPiA+
ICAgICAgTGF0ZW5jeTogMAo+ID4gICAgICBJbnRlcnJ1cHQ6IHBpbiBBIHJvdXRlZCB0byBJUlEg
MTI5Cj4gPiAgICAgIFJlZ2lvbiAwOiBNZW1vcnkgYXQgZTExMDAwMDAgKDMyLWJpdCwgbm9uLXBy
ZWZldGNoYWJsZSkgW3NpemU9MTI4S10KPiA+ICAgICAgQ2FwYWJpbGl0aWVzOiBbYzhdIFBvd2Vy
IE1hbmFnZW1lbnQgdmVyc2lvbiAzCj4gPiAgICAgICAgICBGbGFnczogUE1FQ2xrLSBEU0krIEQx
LSBEMi0gQXV4Q3VycmVudD0wbUEKPiA+IFBNRShEMCssRDEtLEQyLSxEM2hvdCssRDNjb2xkKykK
PiA+ICAgICAgICAgIFN0YXR1czogRDAgTm9Tb2Z0UnN0KyBQTUUtRW5hYmxlLSBEU2VsPTAgRFNj
YWxlPTEgUE1FLQo+ID4gICAgICBDYXBhYmlsaXRpZXM6IFtkMF0gTVNJOiBFbmFibGUrIENvdW50
PTEvMSBNYXNrYWJsZS0gNjRiaXQrCj4gPiAgICAgICAgICBBZGRyZXNzOiAwMDAwMDAwMGZlZTAw
MmY4ICBEYXRhOiAwMDAwCj4gPiAgICAgIENhcGFiaWxpdGllczogW2UwXSBQQ0kgQWR2YW5jZWQg
RmVhdHVyZXMKPiA+ICAgICAgICAgIEFGQ2FwOiBUUCsgRkxSKwo+ID4gICAgICAgICAgQUZDdHJs
OiBGTFItCj4gPiAgICAgICAgICBBRlN0YXR1czogVFAtCj4gPiAgICAgIEtlcm5lbCBkcml2ZXIg
aW4gdXNlOiBlMTAwMGUKPiA+ICAgICAgS2VybmVsIG1vZHVsZXM6IGUxMDAwZQo+ID4KPiA+IC9z
eXMvYnVzL3BjaS9kZXZpY2VzLzAwMDA6MDA6MWYuNi9wb3dlci9jb250cm9sID0gb24gKEkndmUg
Y2hhbmdlZCBpdAo+ID4gdG8gYXV0bywgYnV0IG5vIGNoYW5nZSBpbiBiZWhhdm9pcikKPiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+ID4g
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cj4gPgo+Cj4gSW4gb3JkZXIgdG8gYmUgYWJsZSB0byByZWFjaCB0aGUgbG93ZXN0IHBvd2VyIHN0
YXRlIHdpdGggY29ubmVjdGVkIGNhYmxlCj4geW91IG5lZWQgdG8gc2V0IHBtYyB0byBpZ25vcmUg
bHRyIGZyb20gdGhlIEdCRS4KPgo+IFlvdSBjYW4gZG8gaXQgYnkgZXhlY3V0aW5nOgo+IGVjaG8g
MyA+IC9zeXMva2VybmVsL2RlYnVnL3BtY19jb3JlL2x0cl9pZ25vcmUKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
