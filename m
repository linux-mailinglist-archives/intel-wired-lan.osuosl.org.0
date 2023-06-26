Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 151C273E65F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jun 2023 19:24:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFD3B60B33;
	Mon, 26 Jun 2023 17:24:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFD3B60B33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687800292;
	bh=TJf1ornm6wxT9c22k+u86Um8l8VdVZPljiicTd2v3tk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=krCj77t+EfeLLLoEO566dqd0+iRcZtykz6+K8H1zTFzQZ+fI2Nft7JGY1iPTaRT0/
	 zKl3YllBF6p7QvQiLHmf/+oaa7t+6QpJuR7Erqj/SUmRHIjtpfKDpktinJBS+JGV7v
	 /uAU/ONsjCFqBsy8oRcsmak0PnQPpi8rqwHptbVTdwkwYI1nZ/HU5eF0rltl67hUUd
	 GLDqTMURyaQvV+6qykXSxjnAR58BFqZz+6abhl/d5CcGrqCKxxot/iuxYZDLathcIT
	 1Y7E0zQB4xfCYyjf2CtCITW5Vygs+RsnBKF18xf5zLzZtqilJvI7cYZMFSAxRVSijI
	 AT61i7B0zFx9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9QNx1cg52Hwy; Mon, 26 Jun 2023 17:24:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 776AA60A70;
	Mon, 26 Jun 2023 17:24:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 776AA60A70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 958161BF37B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 17:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CB0B81CE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 17:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CB0B81CE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TQkJolD81X2C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jun 2023 17:24:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 643F181CD0
Received: from mail-ua1-x92a.google.com (mail-ua1-x92a.google.com
 [IPv6:2607:f8b0:4864:20::92a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 643F181CD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 17:24:45 +0000 (UTC)
Received: by mail-ua1-x92a.google.com with SMTP id
 a1e0cc1a2514c-791c27bb91dso2704088241.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 10:24:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687800284; x=1690392284;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dujPk+6duNP2d1uQS/BC+afoRfdG4+lHXiKhSULvjm4=;
 b=UY8iS9o9EABxJdbI++j6wrvyRcyHbp04Ug/x0qI6Hh/5Eb3Z2QQ5EdZUpkNiktE2X+
 2hwD7tY6EYCvYuvNywkOt0AOM3XcACqYvPOR53rH+893JfJCqKIHwbwYPu9C3bu9lhko
 0fOL6TFaSvdvX9v5JVghTqQbMs+pp/O03pvBQ2dKubwOXxUe2SLQDSNCH7f75iRaznLT
 MlIWpkQxuZ0YmVIRfOnBlRFqADGuL7WTuwwpd0KRwYTpsbyRWBlLVYVGjq8631jREBaD
 w2qoW7QqZ5OVuT+ju64XL+5FBXW2aV3CozrTC/Sjokc2vYNfwZk5VSTZQfasv5yeKYLv
 dc0w==
X-Gm-Message-State: AC+VfDxyo2XtIbR4Hm5+qxnPTe53f1S7k7g6GPD26mPE5oOisj4E4bB3
 1oHtcW2Di2ceAWesNLFb6XCLNUIRVg+k+UwME/E=
X-Google-Smtp-Source: ACHHUZ4CguV7XgsKSOUJIQqgdZwYCRCvfxWYx7/7i2VzgRfv4+5VoGDlRRxb8amVE4sJFFWZFXdjJHQGzOm9h5BErfY=
X-Received: by 2002:a05:6102:458f:b0:440:a8a6:333e with SMTP id
 dx15-20020a056102458f00b00440a8a6333emr7201338vsb.9.1687800284081; Mon, 26
 Jun 2023 10:24:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
 <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
In-Reply-To: <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Mon, 26 Jun 2023 19:24:32 +0200
Message-ID: <CAA85sZti1=ET=Tc3MoqCX0FqthHLf6MSxGNAhJUNiMms1TfoKA@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687800284; x=1690392284;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dujPk+6duNP2d1uQS/BC+afoRfdG4+lHXiKhSULvjm4=;
 b=qULknWVGqlfHHFE6RKEofS3iqzTgUK1xS362rivCouyzRDp0EpzPCCTp5qra30NsHh
 R2DfV0fErw+8uM8c0M4MvgGCHTcj4UP4gm5WgJPJSio442Gui8KSfpSwydB7oRK1Bvzo
 ybH1gQjnamNO3685GnrDaDfds3R50w6y7sCAzj/+q/+yt5KyHhCW2If9hc91DKd4mfl/
 TezrTiSKAJVGN+Th9660Qlin5VaYyNvOVyDxlakamCPiSealD0oSxgBkWJg2JltyzcvO
 Ga0V4gAFh0MJuNahgW8IqmB+XuGvkqLEjtiMQOY1Wee1S314kWPFOaRFdlVRXrQGXbDp
 I74g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=qULknWVG
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBKdW4gMjYsIDIwMjMgYXQgNzoxNeKAr1BNIEFsZXhhbmRlciBMb2Jha2luCjxhbGVr
c2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPiB3cm90ZToKPgo+IEZyb206IElhbiBLdW1saWVuIDxp
YW4ua3VtbGllbkBnbWFpbC5jb20+Cj4gRGF0ZTogTW9uLCAyNiBKdW4gMjAyMyAxNjoyNToyNCAr
MDIwMAo+Cj4gPiBPbiBNb24sIEp1biAyNiwgMjAyMyBhdCA0OjE44oCvUE0gQWxleGFuZGVyIExv
YmFraW4KPiA+IDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPiB3cm90ZToKPiA+Pgo+ID4+
IEZyb206IElhbiBLdW1saWVuIDxpYW4ua3VtbGllbkBnbWFpbC5jb20+Cj4gPj4gRGF0ZTogU3Vu
LCAyNSBKdW4gMjAyMyAxMjo1OTo1NCArMDIwMAo+ID4+Cj4gPj4+IEl0IGNvdWxkIGFjdHVhbGx5
IGJlIHRoYXQgaXQncyByZWxhdGVkIHRvOiByeC1ncm8tbGlzdCBidXQKPiA+Pj4gcngtdWRwLWdy
by1mb3J3YXJkaW5nIG1ha2VzIGl0IHRyaWdnZXIgcXVpY2tlci4uLiAgSSBoYXZlIHlldCB0bwo+
ID4+PiB0cmlnZ2VyIGl0IG9uIGlnYgo+ID4+Cj4gPj4gSGksIHRoZSByeC11ZHAtZ3JvLWZvcndh
cmRpbmcgYXV0aG9yIGhlcmUuCj4gPj4KPiA+PiAoZ29vZCB0aGluZyB0aGlzIGFwcGVhcmVkIG9u
IElXTCwgd2hpY2ggSSByZWFkIHRpbWUgdG8gdGltZSwgYnV0IHBsZWFzZQo+ID4+ICBDYyBuZXRk
ZXYgbmV4dCB0aW1lKQo+ID4+ICh0aHVzICtDYyBKYWt1YiwgRXJpYywgYW5kIG5ldGRldikKPiA+
Cj4gPiBXZWxsLCB0d28gdGhpbmdzLCBpdCBzZWVtcyBsaWtlIHJ4LXVkcC1ncm8tZm9yd2FyZGlu
ZyBhY2NlbGVyYXRlcyBpdAo+ID4gYnV0IHRoZSBpc3N1ZSBpcyBhY3R1YWxseSBpbjogcngtZ3Jv
LWxpc3QKPgo+IERvIHlvdSBlbmFibGUgdGhlbSBzaW11bHRhbmVvdXNseT8gSSByZW1lbWJlciwg
d2hlbiBJIHdhcyBhZGRpbmcKPiBncm8tZndkLCBpdCB3YXMgd29ya2luZyAoYW5kIHdvcmtpbmcg
Z29vZCkgYXMgZm9sbG93czoKPgo+IDEuIGdyby1md2Qgb24sIGdyby1saXN0IG9mZjogZ3JvLWZ3
ZAo+IDIuIGdyby1md2Qgb2ZmLCBncm8tbGlzdCBvbjogZ3JvLWxpc3QKPiAzLiBncm8tZndkIG9u
LCBncm8tbGlzdCBvbjogZ3JvLWxpc3QKPgo+IE5vdGUgdGhhdCB0aGVpciByZWNlaXZlIHBhdGhz
IGFyZSBpbmRlcGVuZGVudFswXTogc2tiX2dyb19yZWNlaXZlX2xpc3QoKQo+IHZzIHNrYl9ncm9f
cmVjZWl2ZSgpLCB0aHVzIEknbSBzdGlsbCBub3QgcmVhbGx5IHN1cmUgaG93IGdyby1md2QgY2Fu
Cj4gdHJpZ2dlciBncm8tbGlzdCdzIGJ1Zy4KCk5laXRoZXIgYW0gSS4uLiBJIGhhdmUgZW5hYmxl
ZCBzb2wgdmlhIGlwbWl0b29sIG5vdywgd2lsbCB0cnkgdG8gZ2V0IGEKYmV0dGVyIGNhcHR1cmUK
Cj4gPiBBbmQgc2luY2UgaSd2ZSBvbmx5IGJlZW4gYWJsZSB0byB0cmlnZ2VyIGl0IGluIGl4Z2Jl
IGkgdGhvdWdodCBpdAo+ID4gbWlnaHQgYmUgYSBkcml2ZXIgaXNzdWUgPSkKPgo+IFlvdXIgc2Ny
ZWVuc2hvdCBzYXlzICJfX3VkcF9nc29fc2VnbWVudCIsIHdoaWNoIG1lYW5zIHRoYXQgdGhlCj4g
cHJvYmxlbWF0aWMgVURQIEdSTyBwYWNrZXQgaGl0cyB0aGUgVHggcGF0aC4gUnggaXMgaW4gZ2Vu
ZXJhbAo+IGRyaXZlci1pbmRlcGVuZGVudC4gVHggaGFzIHNlcGFyYXRlIG5ldGRldiBmZWF0dXJl
ICgidHgtZ3NvLWxpc3QiKSwgYnV0Cj4gaXQncyBub3Qgc3VwcG9ydGVkIGJ5IGFueSBkcml2ZXIs
IGp1c3Qgc29mdHdhcmUgc3RhY2suIEl0IG1pZ2h0IGJlIHRoYXQKPiB5b3VyIHRyYWZmaWMgZ29l
cyB0aHJvdWdoIGEgYnJpZGdlIG9yIHR1bm5lbCBvciBhbnl0aGluZyBlbHNlIHRoYXQKPiB0cmln
Z2VycyBHU08gYW5kIHNvZnR3YXJlIHNlZ21lbnRhdGlvbiB0aGVuIGJvb21zIGZvciBzb21lIHJl
YXNvbi4KPiBCVFcsIF9fdWRwX2dzb19zZWdtZW50KCkgaXMgb25lLWxpbmVyIHdoZW4gdGhlIHBh
c3NlZCBza2Igd2FzCj4gZ3JvLWxpc3RlZFsxXSwgc28gaGF2aW5nIGl0IGluIHRoZSBidWcgc3Bs
YXQgY291bGQgbWVhbiB0aGUgc2tiIGRpZG4ndAo+IHRha2UgdGhhdCByb3V0ZS4gQnV0IGhhcmQg
dG8gc2F5IHdpdGggbm8gZnVsbCBzdGFja3RyYWNlLgoKSSBkbyBoYXZlIGEgVURQIHR1bm5lbCwg
aW4gd2lyZWd1YXJkLCB3aWxsIGRpc2FibGUgaXQuCgpCZXlvbmQgdGhhdCBzb21lIGJyaWRnZXMg
YW5kIHZldGggaW50ZXJmYWNlcywgYnV0IGxldHMgd2FpdCBmb3IgYSBmdWxsIHRyYWNlCgo+IFsu
Li5dCj4KPiA+Pj4+IEJ1dCBjb3JyZWxhdGluZyB0aGF0IHdpdGggdGhlIHNvdXJjZSBpcyBiZXlv
bmQgbWUsIGl0IGNvdWxkIGJlIGdlbmVyaWMKPiA+Pj4+IGJ1dCBpIHRob3VnaHQgaSdkIHNlbmQg
aXQgeW91IGZpcnN0IHNpbmNlIGl0J3MgcGFydCBvZiB0aGUgcmVkaGF0Cj4gPj4+PiBndWlkZSB0
byBzcGVlZGluZyB1cCB1ZHAgdHJhZmZpYwo+ID4+IFswXQo+ID4+IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL25ldGRldi9mODNkNzlkNi1mOGQ3LWEyMjktOTQxYS03ZDc0Mjc5NzUxNjBAbnZpZGlh
LmNvbQo+ID4+Cj4gPj4gVGhhbmtzLAo+ID4+IE9sZWsKPgo+IFswXQo+IGh0dHBzOi8vZWxpeGly
LmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvbmV0L2lwdjQvdWRwX29mZmxvYWQuYyNM
NTE4Cj4gWzFdCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJj
ZS9uZXQvaXB2NC91ZHBfb2ZmbG9hZC5jI0wyNzcKPgo+IFRoYW5rcywKPiBPbGVrCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
