Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A27F2610D7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 13:37:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BF803275B0;
	Tue,  8 Sep 2020 11:37:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dx-4QlKmFfpd; Tue,  8 Sep 2020 11:37:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8D3B12751C;
	Tue,  8 Sep 2020 11:37:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E26011BF82B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD397868E6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FfwyDX0ZTDSg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 11:37:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EFD47868B7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 11:37:35 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id n14so2780331pff.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Sep 2020 04:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qZQdroSdlZPgLxB0axJE1VbD4VyjCyb0ExGeUn8jyYA=;
 b=feiWwlY5m5X/poukLCIXVUznp1v6YzwSnrYGs57mOqH1uqdlruhrRqUXK9I+yCkwZ9
 TF9cPtT9oE2gaTO+H5qgQMOhzLHULt6x95wPpYqi73TT+wh162RuJGlxgT4x5J3l2TUX
 bsPEd55MsOgYs51TVmFn7DzrVe2Bfmf2bAi33wH5MMn/0cmsigP3X/AmTWo5r/7r0wkE
 9UeTIMSmUGXeEZ++AVhACt6VwszBqAtDxBco7t032wfN79Q56dSW5aZIrCivqshweMYz
 ICQvCrqVZT2sJq4QXZbwl8HlqAVNrZZb3FL8Q/8Hf6HVOq4HtGAIy44KzVq2mX2eVPWm
 kzIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qZQdroSdlZPgLxB0axJE1VbD4VyjCyb0ExGeUn8jyYA=;
 b=PcIIvRhQQye/ORNo1g2w7kZoJ7niCU4zsJyfqoHbyKGYpRWy3cKuXQT4gsRAtX1Yh4
 3Hpu/8JW4HJZzzlWwWy3bZYN9MfrJQogwIBCmjebuV9mBhWLi+tr7Qw0d2Cgjr7Jwr88
 9GUvjfrzAEw12Fp4NnalheY38YfFx104qbt2dlu/h9y3kaA/Ho6agLjiqefLRrkeyu30
 LvdQ7XQS5URBmAHoJvB95YCfMYzCzyV7yINruHkZAwIApGtkq90k/hxzBtKHvgDKOE3/
 AdM4/QK0hkptyni9dZ7UMAIQL2psDnhHvG/9zrSq0LPPWq9FFl76B/DOaHHjLLs88iWA
 opMw==
X-Gm-Message-State: AOAM531RtEW0Cs0zkLOoKGewGE61fdGcinKQ2pUTzrK9FY5U71kuSToo
 q6WOsQu9ef5LmhBVe+Np95PNkczSrZ2xH2eet94=
X-Google-Smtp-Source: ABdhPJxvB/UAQ9/+LyteEXl5IYO+BqxIZARWPRi6EvCAUoapDZUTrScpa0vMM9G7scfpXEiQ5GcqmCkc4UEDn+aEC5k=
X-Received: by 2002:aa7:80d3:: with SMTP id a19mr24557164pfn.102.1599565055486; 
 Tue, 08 Sep 2020 04:37:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <0257f769-0f43-a5b7-176d-7c5ff8eaac3a@intel.com>
 <11f663ec-5ea7-926c-370d-0b67d3052583@nvidia.com>
In-Reply-To: <11f663ec-5ea7-926c-370d-0b67d3052583@nvidia.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Tue, 8 Sep 2020 13:37:24 +0200
Message-ID: <CAJ8uoz3WbS7E1OiC5p8x+o48vwkN43R9JxMwvRvgVk4n3SNiZg@mail.gmail.com>
To: Maxim Mikityanskiy <maximmi@nvidia.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>, hawk@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Network Development <netdev@vger.kernel.org>, kuba@kernel.org,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBTZXAgOCwgMjAyMCBhdCAxMjozMyBQTSBNYXhpbSBNaWtpdHlhbnNraXkgPG1heGlt
bWlAbnZpZGlhLmNvbT4gd3JvdGU6Cj4KPiBPbiAyMDIwLTA5LTA0IDE2OjU5LCBCasO2cm4gVMO2
cGVsIHdyb3RlOgo+ID4gT24gMjAyMC0wOS0wNCAxNTo1MywgQmrDtnJuIFTDtnBlbCB3cm90ZToK
PiA+PiBUaGlzIHNlcmllcyBhZGRyZXNzZXMgYSBwcm9ibGVtIHRoYXQgYXJpc2VzIHdoZW4gQUZf
WERQIHplcm8tY29weSBpcwo+ID4+IGVuYWJsZWQsIGFuZCB0aGUga2VybmVsIHNvZnRpcnEgUngg
cHJvY2Vzc2luZyBhbmQgdXNlcmxhbmQgcHJvY2Vzcwo+ID4+IGlzIHJ1bm5pbmcgb24gdGhlIHNh
bWUgY29yZS4KPiA+Pgo+ID4gWy4uLl0KPiA+Pgo+ID4KPiA+IEBNYXhpbSBJJ20gbm90IHdlbGwg
dmVyc2VkIGluIE1lbGxhbm94IGRyaXZlcnMuIFdvdWxkIHRoaXMgYmUgcmVsZXZhbnQKPiA+IHRv
IG1seDUgYXMgd2VsbD8KPgo+IFRoYW5rcyBmb3IgbGV0dGluZyBtZSBrbm93IGFib3V0IHRoaXMg
c2VyaWVzISBTbyB0aGUgYmFzaWMgaWRlYSBpcyB0bwo+IHN0b3AgcHJvY2Vzc2luZyBoYXJkd2Fy
ZSBjb21wbGV0aW9ucyBpZiB0aGUgUlggcmluZyBnZXRzIGZ1bGwsIGJlY2F1c2UKPiB0aGUgYXBw
bGljYXRpb24gZGlkbid0IGhhdmUgY2hhbmNlIHRvIHJ1bj8gWWVzLCBJIHRoaW5rIGl0J3MgYWxz
bwo+IHJlbGV2YW50IHRvIG1seDUsIHRoZSBpc3N1ZSBpcyBub3QgZHJpdmVyLXNwZWNpZmljLCBh
bmQgYSBzaW1pbGFyIGZpeCBpcwo+IGFwcGxpY2FibGUuIEhvd2V2ZXIsIGl0IG1heSBsZWFkIHRv
IGNvbXBsZXRpb24gcXVldWUgb3ZlcmZsb3dzIC0gc29tZQo+IGFuYWx5c2lzIGlzIG5lZWRlZCB0
byB1bmRlcnN0YW5kIHdoYXQgaGFwcGVucyB0aGVuIGFuZCBob3cgdG8gaGFuZGxlIGl0Lgo+Cj4g
UmVnYXJkaW5nIHRoZSBmZWF0dXJlLCBJIHRoaW5rIGl0IHNob3VsZCBiZSBvcHQtaW4gKGRpc2Fi
bGVkIGJ5Cj4gZGVmYXVsdCksIGJlY2F1c2Ugb2xkIGFwcGxpY2F0aW9ucyBtYXkgbm90IHdha2V1
cCBSWCBhZnRlciB0aGV5IHByb2Nlc3MKPiBwYWNrZXRzIGluIHRoZSBSWCByaW5nLgoKSG93IGFi
b3V0IG5lZWRfd2FrZXVwIGVuYWJsZS9kaXNhYmxlIGF0IGJpbmQgdGltZSBiZWluZyB0aGF0IG9w
dC1pbiwKaW5zdGVhZCBvZiBhIG5ldyBvcHRpb24/IEl0IGlzIG9mZiBieSBkZWZhdWx0LCBhbmQg
d2hlbiBpdCBpcyBvZmYsIHRoZQpkcml2ZXIgYnVzeS1zcGlucyBvbiB0aGUgUnggcmluZyB1bnRp
bCBpdCBjYW4gcHV0IGFuIGVudHJ5IHRoZXJlLiBJdAp3aWxsIG5vdCB5aWVsZCB0byB0aGUgYXBw
bGljYXRpb24gYnkgcmV0dXJuaW5nIHNvbWV0aGluZyBsZXNzIHRoYW4KYnVkZ2V0LiBBcHBsaWNh
dGlvbnMgbmVlZCBub3QgY2hlY2sgdGhlIG5lZWRfd2FrZXVwIGZsYWcuIElmCm5lZWRfd2FrZXVw
IGlzIGVuYWJsZWQgYnkgdGhlIHVzZXIsIHRoZSBjb250cmFjdCBpcyB0aGF0IHVzZXItc3BhY2UK
bmVlZHMgdG8gY2hlY2sgdGhlIG5lZWRfd2FrZXVwIGZsYWcgYW5kIGFjdCBvbiBpdC4gSWYgaXQg
ZG9lcyBub3QsCnRoZW4gdGhhdCBpcyBhIHByb2dyYW1taW5nIGVycm9yIGFuZCBpdCBjYW4gYmUg
c2V0IGZvciBhbnkgdW5zcGVjaWZpZWQKcmVhc29uLiBObyByZWFzb24gdG8gbW9kaWZ5IHRoZSBh
cHBsaWNhdGlvbiwgaWYgaXQgY2hlY2tzIG5lZWRfd2FrZXVwLgpCdXQgaWYgdGhpcyBwYXRjaCBi
ZWhhdmVzIGxpa2UgdGhhdCBJIGhhdmUgbm90IGNoZWNrZWQuCgpHb29kIHBvaW50cyBpbiB0aGUg
cmVzdCBvZiB0aGUgbWFpbCwgdGhhdCBJIHRoaW5rIHNob3VsZCBiZSBhZGRyZXNzZWQuCgovTWFn
bnVzCgo+IElzIGl0IHJlcXVpcmVkIHRvIGNoYW5nZSB4ZHBzb2NrIGFjY29yZGluZ2x5Pwo+IEFs
c28sIHdoZW4gbmVlZF93YWtldXAgaXMgZGlzYWJsZWQsIHlvdXIgZHJpdmVyIGltcGxlbWVudGF0
aW9uIHNlZW1zIHRvCj4gcXVpdCBOQVBJIGFueXdheSwgYnV0IGl0IHNob3VsZG4ndCBoYXBwZW4s
IGJlY2F1c2Ugbm8gb25lIHdpbGwgc2VuZCBhCj4gd2FrZXVwLgo+Cj4gV2FpdGluZyB1bnRpbCB0
aGUgUlggcmluZyBmaWxscyB1cCwgdGhlbiBwYXNzaW5nIGNvbnRyb2wgdG8gdGhlCj4gYXBwbGlj
YXRpb24gYW5kIHdhaXRpbmcgdW50aWwgdGhlIGhhcmR3YXJlIGNvbXBsZXRpb24gcXVldWUgZmls
bHMgdXAsCj4gYW5kIHNvIG9uIGluY3JlYXNlcyBsYXRlbmN5IC0gdGhlIGJ1c3kgcG9sbGluZyBh
cHByb2FjaCBzb3VuZHMgbW9yZQo+IGxlZ2l0IGhlcmUuCj4KPiBUaGUgYmVoYXZpb3IgbWF5IGJl
IGRpZmZlcmVudCBkZXBlbmRpbmcgb24gdGhlIGRyaXZlciBpbXBsZW1lbnRhdGlvbjoKPgo+IDEu
IElmIHlvdSBhcm0gdGhlIGNvbXBsZXRpb24gcXVldWUgYW5kIGxlYXZlIGludGVycnVwdHMgZW5h
YmxlZCBvbiBlYXJseQo+IGV4aXQgdG9vLCB0aGUgYXBwbGljYXRpb24gd2lsbCBzb29uIGJlIGlu
dGVycnVwdGVkIGFueXdheSBhbmQgd29uJ3QgaGF2ZQo+IG11Y2ggdGltZSB0byBwcm9jZXNzIG1h
bnkgcGFja2V0cywgbGVhZGluZyB0byBhcHAgPC0+IE5BUEkgcGluZy1wb25nIG9uZQo+IHBhY2tl
dCBhdCBhIHRpbWUsIG1ha2luZyBOQVBJIGluZWZmaWNpZW50Lgo+Cj4gMi4gSWYgeW91IGRvbid0
IGFybSB0aGUgY29tcGxldGlvbiBxdWV1ZSBvbiBlYXJseSBleGl0IGFuZCB3YWl0IGZvciB0aGUK
PiBleHBsaWNpdCB3YWtldXAgZnJvbSB0aGUgYXBwbGljYXRpb24sIGl0IHdpbGwgZWFzaWx5IG92
ZXJmbG93IHRoZQo+IGhhcmR3YXJlIGNvbXBsZXRpb24gcXVldWUsIGJlY2F1c2Ugd2UgZG9uJ3Qg
aGF2ZSBhIHN5bW1ldHJpYyBtZWNoYW5pc20KPiB0byBzdG9wIHRoZSBhcHBsaWNhdGlvbiBvbiBp
bW1pbmVudCBoYXJkd2FyZSBxdWV1ZSBvdmVyZmxvdy4gSXQgZG9lc24ndAo+IGZlZWwgY29ycmVj
dCBhbmQgbWF5IGJlIHRyaWNraWVyIHRvIGhhbmRsZTogaWYgdGhlIGFwcGxpY2F0aW9uIGlzIHRv
bwo+IHNsb3csIHN1Y2ggZHJvcHMgc2hvdWxkIGhhcHBlbiBvbiBkcml2ZXIva2VybmVsIGxldmVs
LCBub3QgaW4gaGFyZHdhcmUuCj4KPiBXaGljaCBiZWhhdmlvciBpcyB1c2VkIGluIHlvdXIgZHJp
dmVycz8gT3IgYW0gSSBtaXNzaW5nIHNvbWUgbW9yZSBvcHRpb25zPwo+Cj4gQlRXLCBpdCBzaG91
bGQgYmUgYmV0dGVyIHRvIHBhc3MgY29udHJvbCB0byB0aGUgYXBwbGljYXRpb24gYmVmb3JlIHRo
ZQo+IGZpcnN0IGRyb3BwZWQgcGFja2V0LCBub3QgYWZ0ZXIgaXQgaGFzIGJlZW4gZHJvcHBlZC4K
Pgo+IFNvbWUgd29ya2xvYWRzIGRpZmZlcmVudCBmcm9tIHB1cmUgQUZfWERQLCBmb3IgZXhhbXBs
ZSwgNTAvNTAgQUZfWERQIGFuZAo+IFhEUF9UWCBtYXkgc3VmZmVyIGZyb20gc3VjaCBiZWhhdmlv
ciwgc28gaXQncyBhbm90aGVyIHBvaW50IHRvIG1ha2UgYQo+IGtub2Igb24gdGhlIGFwcGxpY2F0
aW9uIGxheWVyIHRvIGVuYWJsZS9kaXNhYmxlIGl0Lgo+Cj4gIEZyb20gdGhlIGRyaXZlciBBUEkg
cGVyc3BlY3RpdmUsIEkgd291bGQgcHJlZmVyIHRvIHNlZSBhIHNpbXBsZXIgQVBJIGlmCj4gcG9z
c2libGUuIFRoZSBjdXJyZW50IEFQSSBleHBvc2VzIHRoaW5ncyB0aGF0IHRoZSBkcml2ZXIgc2hv
dWxkbid0IGtub3cKPiAoQlBGIG1hcCB0eXBlKSwgYW5kIHJlcXVpcmVzIFhTSy1zcGVjaWZpYyBo
YW5kbGluZy4gSXQgd291bGQgYmUgYmV0dGVyCj4gaWYgc29tZSBzcGVjaWZpYyBlcnJvciBjb2Rl
IHJldHVybmVkIGZyb20geGRwX2RvX3JlZGlyZWN0IHdhcyByZXNlcnZlZAo+IHRvIG1lYW4gImV4
aXQgTkFQSSBlYXJseSBpZiB5b3Ugc3VwcG9ydCBpdCIuIFRoaXMgd2F5IHdlIHdvdWxkbid0IG5l
ZWQKPiB0d28gbmV3IGhlbHBlcnMsIHR3byB4ZHBfZG9fcmVkaXJlY3QgZnVuY3Rpb25zLCBhbmQg
dGhpcyBhcHByb2FjaCB3b3VsZAo+IGJlIGV4dGVuc2libGUgdG8gb3RoZXIgbm9uLVhTSyB1c2Ug
Y2FzZXMgd2l0aG91dCBmdXJ0aGVyIGNoYW5nZXMgaW4gdGhlCj4gZHJpdmVyLCBhbmQgYWxzbyB0
aGUgbG9naWMgdG8gb3B0LWluIHRoZSBmZWF0dXJlIGNvdWxkIGJlIHB1dCBpbnNpZGUgdGhlCj4g
a2VybmVsLgo+Cj4gVGhhbmtzLAo+IE1heAo+Cj4gPgo+ID4gQ2hlZXJzLAo+ID4gQmrDtnJuCj4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
