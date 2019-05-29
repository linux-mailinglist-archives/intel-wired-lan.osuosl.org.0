Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F052E70A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 23:06:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BD2D8805D;
	Wed, 29 May 2019 21:06:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id joEkt56R1fQD; Wed, 29 May 2019 21:06:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B4488804A;
	Wed, 29 May 2019 21:06:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8340D1BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 21:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7F88787FD8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 21:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RdGBenuNYzGh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2019 21:06:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B93D87FC5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 21:06:27 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id x47so1013868qtk.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 14:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=MqXYXRaBFItBsHHkgU4M7KnuPXThq1x3lVkOOfoofs4=;
 b=DK0aeHls+5hd5+F5PjaYUz8T7p+gMl50xHI8x+GB4HvWsTqVxPVOlzrK4D/6+6pp43
 9IRBpx11Ir+dRZIvgT/sGloXbSGlb3OiLklrhKIDGe2Xt01T8WaIJNVnWT8f72G9VZIK
 64GlWDRfMf1yrgUsWuVHsA0aRHnF8LjKDJouSp32rGcNQ7Hafj6K8yzRxcsd1b6Fij/V
 AhfcoRGRN23XVhDxYevzrTFa0oEU1gZwTf8UnriJXJKnHktHOL067h2Q3utFo0Bzx72Q
 MWk3mBZlISZHL8AA4ruBuO63yC0xde2NTsvqNFAbyrrkWShVPnLIwgMdIFpplDZVFaa5
 hIVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=MqXYXRaBFItBsHHkgU4M7KnuPXThq1x3lVkOOfoofs4=;
 b=fbY9uCRajOrWEF3JU7xnD4aiKZ2ABKhzZ0PxITdkAUZZTMVcovXoEc6oikggufWqh4
 LVph009lLKTIK1Gv/qhsxspYxg8KIUZMCjjgkINfslOSsi2edrlHDBqwMfdHjq+zqtKg
 VyftAfN7AXk/kKuDGyaxVQWPX0vqYrPB5wK0pIoMNBOEGM5pGbuyiXfVed8NZtKwtgJO
 CHSkvKgkqt+NDB1INyv4HrLF4Ke+avrwcrQPY77YActgQWSwDbkZydUsHLmgS6+nUFBr
 D+Enq2rs3rxUj92gFNQtJg5C4nCOZ7uviFatM1ovp4hpUnbIZSv6sS6/DzEmD5XJFSW1
 N93Q==
X-Gm-Message-State: APjAAAXotKstegq4R5FgEyA548OzLfiYO15zBstpSzfpzhMkuNxxaVfC
 D0hq3jO1HyrT5nS+rvIWUnyDKg==
X-Google-Smtp-Source: APXvYqwaZFMYcRgF3kJ1Zbgoq66po7GVwgfHV6dR6e2hhP2Naz8EutD/KUw/qtneqLnPe5uQKpZVJA==
X-Received: by 2002:ac8:24f5:: with SMTP id t50mr76623qtt.285.1559163986409;
 Wed, 29 May 2019 14:06:26 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id y45sm339553qtk.75.2019.05.29.14.06.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 29 May 2019 14:06:26 -0700 (PDT)
Date: Wed, 29 May 2019 14:06:20 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Patel, Vedang" <vedang.patel@intel.com>
Message-ID: <20190529140620.68fa8e64@cakuba.netronome.com>
In-Reply-To: <A9D05E0B-FC24-4904-B3E5-1E069C92A3DA@intel.com>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
 <1559065608-27888-4-git-send-email-vedang.patel@intel.com>
 <20190528154510.41b50723@cakuba.netronome.com>
 <62E2DD49-AC21-46DE-8E5B-EBC67230FA7D@intel.com>
 <20190529121440.46c40967@cakuba.netronome.com>
 <A9D05E0B-FC24-4904-B3E5-1E069C92A3DA@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/7] taprio: Add the
 skeleton to enable hardware offloading
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyOSBNYXkgMjAxOSAyMDowNToxNiArMDAwMCwgUGF0ZWwsIFZlZGFuZyB3cm90ZToK
PiBbU2VuZGluZyB0aGUgZW1haWwgYWdhaW4gc2luY2UgdGhlIGxhc3Qgb25lIHdhcyByZWplY3Rl
ZCBieSBuZXRkZXYgYmVjYXVzZSBpdCB3YXMgaHRtbC5dCj4gCj4gPiBPbiBNYXkgMjksIDIwMTks
IGF0IDEyOjE0IFBNLCBKYWt1YiBLaWNpbnNraSA8amFrdWIua2ljaW5za2lAbmV0cm9ub21lLmNv
bT4gd3JvdGU6Cj4gPiAKPiA+IE9uIFdlZCwgMjkgTWF5IDIwMTkgMTc6MDY6NDkgKzAwMDAsIFBh
dGVsLCBWZWRhbmcgd3JvdGU6ICAKPiA+Pj4gT24gTWF5IDI4LCAyMDE5LCBhdCAzOjQ1IFBNLCBK
YWt1YiBLaWNpbnNraSA8amFrdWIua2ljaW5za2lAbmV0cm9ub21lLmNvbT4gd3JvdGU6Cj4gPj4+
IE9uIFR1ZSwgMjggTWF5IDIwMTkgMTA6NDY6NDQgLTA3MDAsIFZlZGFuZyBQYXRlbCB3cm90ZTog
ICAgCj4gPj4+PiBGcm9tOiBWaW5pY2l1cyBDb3N0YSBHb21lcyA8dmluaWNpdXMuZ29tZXNAaW50
ZWwuY29tPgo+ID4+Pj4gCj4gPj4+PiBUaGlzIGFkZHMgdGhlIFVBUEkgYW5kIHRoZSBjb3JlIGJp
dHMgbmVjZXNzYXJ5IGZvciB1c2Vyc3BhY2UgdG8KPiA+Pj4+IHJlcXVlc3QgaGFyZHdhcmUgb2Zm
bG9hZGluZyB0byBiZSBlbmFibGVkLgo+ID4+Pj4gCj4gPj4+PiBUaGUgZnV0dXJlIGNvbW1pdHMg
d2lsbCBlbmFibGUgaHlicmlkIG9yIGZ1bGwgb2ZmbG9hZGluZyBmb3IgdGFwcmlvLiBUaGlzCj4g
Pj4+PiBjb21taXQgc2V0cyB1cCB0aGUgaW5mcmFzdHJ1Y3R1cmUgdG8gZW5hYmxlIGl0IHZpYSB0
aGUgbmV0bGluayBpbnRlcmZhY2UuCj4gPj4+PiAKPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IFZpbmlj
aXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+Cj4gPj4+PiBTaWduZWQt
b2ZmLWJ5OiBWZWRhbmcgUGF0ZWwgPHZlZGFuZy5wYXRlbEBpbnRlbC5jb20+ICAgIAo+ID4+PiAK
PiA+Pj4gT3RoZXIgcWRpc2NzIG9mZmxvYWQgYnkgZGVmYXVsdCwgdGhpcyBvZmZsb2FkLWxldmVs
IHNlbGVjdGlvbiBoZXJlIGlzIGEKPiA+Pj4gbGl0dGxlIGJpdCBpbmNvbnNpc3RlbnQgd2l0aCB0
aGF0IDooCj4gPj4+ICAgCj4gPj4gVGhlcmUgYXJlIDIgZGlmZmVyZW50IG9mZmxvYWQgbW9kZXMg
aW50cm9kdWNlZCBpbiB0aGlzIHBhdGNoLgo+ID4+IAo+ID4+IDEuIFR4dGltZSBvZmZsb2FkIG1v
ZGU6IFRoaXMgbW9kZSBkZXBlbmRzIG9uIHNraXBfc29ja19jaGVjayBmbGFnIGJlaW5nIHNldCBp
biB0aGUgZXRmIHFkaXNjLiBBbHNvLCBpdCByZXF1aXJlcyBzb21lIG1hbnVhbCBjb25maWd1cmF0
aW9uIHdoaWNoIG1pZ2h0IGJlIHNwZWNpZmljIHRvIHRoZSBuZXR3b3JrIGFkYXB0ZXIgY2FyZC4g
Rm9yIGV4YW1wbGUsIGZvciB0aGUgaTIxMCBjYXJkLCB0aGUgdXNlciB3aWxsIGhhdmUgdG8gcm91
dGUgYWxsIHRoZSB0cmFmZmljIHRvIHRoZSBoaWdoZXN0IHByaW9yaXR5IHF1ZXVlIGFuZCBpbnN0
YWxsIGV0ZiBxZGlzYyB3aXRoIG9mZmxvYWQgZW5hYmxlZCBvbiB0aGF0IHF1ZXVlLiBTbywgSSBk
b27igJl0IHRoaW5rIHRoaXMgbW9kZSBzaG91bGQgYmUgZW5hYmxlZCBieSBkZWZhdWx0LiAgCj4g
PiAKPiA+IEV4Y2VsbGVudCwgaXQgbG9va3MgbGlrZSB0aGVyZSB3aWxsIGJlIGRyaXZlciBwYXRj
aGVzIG5lY2Vzc2FyeSBmb3IKPiA+IHRoaXMgb2ZmbG9hZCB0byBmdW5jdGlvbiwgYWxzbyBpdCBz
ZWVtcyB5b3VyIG9mZmxvYWQgZW5hYmxlIGZ1bmN0aW9uCj4gPiBzdGlsbCBjb250YWlucyB0aGlz
IGFmdGVyIHRoZSBzZXJpZXM6Cj4gPiAKPiA+IAkvKiBGSVhNRTogZW5hYmxlIG9mZmxvYWRpbmcg
Ki8KPiA+IAo+ID4gUGxlYXNlIG9ubHkgcG9zdCBvZmZsb2FkIGluZnJhc3RydWN0dXJlIHdoZW4g
ZnVsbHkgZmxlc2hlZCBvdXQgYW5kIHdpdGgKPiA+IGRyaXZlciBwYXRjaGVzIG1ha2luZyB1c2Ug
b2YgaXQuCj4KPiBUaGUgYWJvdmUgY29tbWVudCByZWZlcnMgdG8gdGhlIGZ1bGwgb2ZmbG9hZCBt
b2RlIGRlc2NyaWJlZCBiZWxvdy4gSXQKPiBpcyBub3QgbmVlZGVkIGZvciB0eHRpbWUgb2ZmbG9h
ZCBtb2RlLiBUeHRpbWUgb2ZmbG9hZCBtb2RlIGlzCj4gZXNzZW50aWFsbHkgc2V0dGluZyB0aGUg
dHJhbnNtaXQgdGltZSBmb3IgZWFjaCBwYWNrZXQgIGRlcGVuZGluZyBvbgo+IHdoYXQgaW50ZXJ2
YWwgaXQgaXMgZ29pbmcgdG8gYmUgdHJhbnNtaXR0ZWQgaW5zdGVhZCBvZiByZWx5aW5nIG9uIHRo
ZQo+IGhydGltZXJzIHRvIG9wZW4gZ2F0ZXMgYW5kIHNlbmQgcGFja2V0cy4gTW9yZSBkZXRhaWxz
IGFib3V0IHdoeQo+IGV4YWN0bHkgdGhpcyBpcyBkb25lIGlzIG1lbnRpb25lZCBpbiBwYXRjaCAj
NVsxXSBvZiB0aGlzIHNlcmllcy4KCkZyb20gbG9va2luZyBhdCB0aGlzIHNldCBpdCBsb29rcyBs
aWtlIEkgY2FuIGFkZCB0aGF0IHFkaXNjIHRvIGFueQpuZXRkZXYgbm93ICp3aXRoKiBvZmZsb2Fk
LCBhbmQgYXMgbG9uZyBhcyB0aGUgZHJpdmVyIGhhcyBfYW55XwpuZG9fc2V0dXBfdGMgaW1wbGVt
ZW50YXRpb24gdGFwcmlvIHdpbGwgbm90IHJldHVybiBhbiBlcnJvci4gCgpQZXJoYXBzIHRoaXMg
bW9kZSBvZiBvcGVyYXRpb24gc2hvdWxkIG5vdCBiZSBjYWxsZWQgb2ZmbG9hZD8gIENhbid0IAp0
aGUgRVRGIHFkaXNjIHVuZGVybmVhdGggcnVuIGluIHNvZnR3YXJlIG1vZGU/Cgo+IFdoYXQgd2Ug
Y2FuIGRvIGlzIGp1c3QgYWRkIHRoZSB0eHRpbWUgb2ZmbG9hZCByZWxhdGVkIGZsYWcgYW5kIGFk
ZAo+IHRoZSBmdWxsIG9mZmxvYWQgZmxhZyB3aGVuZXZlciB0aGUgZHJpdmVyIGJpdHMgYXJlIHJl
YWR5LiBEb2VzIHRoYXQKPiBhZGRyZXNzIHlvdXIgY29uY2Vybj8KClRoYXQgd291bGQgYmUgYSBz
dGVwIGluIHRoZSByaWdodCBkaXJlY3Rpb24uICBBbmQgcGxlYXNlIHJlbW92ZSBhbGwgdGhlCm90
aGVyIHVudXNlZCBjb2RlIGZyb20gdGhlIHNlcmllcy4gIEFGQUlDVCB0aGlzIGlzIHdoYXQgdGhl
IGVuYWJsZQpvZmZsb2FkIGZ1bmN0aW9uIGxvb2tzIGxpa2UgYWZ0ZXIgeW91ciBzZXQgLSB3aGF0
J3MgdGhlIHBvaW50IG9mIHRoZQonZXJyJyB2YXJpYWJsZT8KCitzdGF0aWMgaW50IHRhcHJpb19l
bmFibGVfb2ZmbG9hZChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAorCQkJCSBzdHJ1Y3QgdGNfbXFw
cmlvX3FvcHQgKm1xcHJpbywKKwkJCQkgc3RydWN0IHRhcHJpb19zY2hlZCAqcSwKKwkJCQkgc3Ry
dWN0IHNjaGVkX2dhdGVfbGlzdCAqc2NoZWQsCisJCQkJIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sg
KmV4dGFjaywKKwkJCQkgdTMyIG9mZmxvYWRfZmxhZ3MpCit7CisJY29uc3Qgc3RydWN0IG5ldF9k
ZXZpY2Vfb3BzICpvcHMgPSBkZXYtPm5ldGRldl9vcHM7CisJaW50IGVyciA9IDA7CisKKwlpZiAo
VFhUSU1FX09GRkxPQURfSVNfT04ob2ZmbG9hZF9mbGFncykpCisJCWdvdG8gZG9uZTsKKworCWlm
ICghRlVMTF9PRkZMT0FEX0lTX09OKG9mZmxvYWRfZmxhZ3MpKSB7CisJCU5MX1NFVF9FUlJfTVNH
KGV4dGFjaywgIk9mZmxvYWQgbW9kZSBpcyBub3Qgc3VwcG9ydGVkIik7CisJCXJldHVybiAtRU9Q
Tk9UU1VQUDsKKwl9CisKKwlpZiAoIW9wcy0+bmRvX3NldHVwX3RjKSB7CisJCU5MX1NFVF9FUlJf
TVNHKGV4dGFjaywgIlNwZWNpZmllZCBkZXZpY2UgZG9lcyBub3Qgc3VwcG9ydCB0YXByaW8gb2Zm
bG9hZCIpOworCQlyZXR1cm4gLUVPUE5PVFNVUFA7CisJfQorCisJLyogRklYTUU6IGVuYWJsZSBv
ZmZsb2FkaW5nICovCisKK2RvbmU6CisJaWYgKGVyciA9PSAwKSB7CisJCXEtPmRlcXVldWUgPSB0
YXByaW9fZGVxdWV1ZV9vZmZsb2FkOworCQlxLT5wZWVrID0gdGFwcmlvX3BlZWtfb2ZmbG9hZDsK
KyAJCXEtPm9mZmxvYWRfZmxhZ3MgPSBvZmZsb2FkX2ZsYWdzOworCX0KKworCXJldHVybiBlcnI7
Cit9Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
