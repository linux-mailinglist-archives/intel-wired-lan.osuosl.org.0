Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B05980CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2019 18:57:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9746F863A1;
	Wed, 21 Aug 2019 16:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9uI3bAZEsrwV; Wed, 21 Aug 2019 16:57:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 662F4863CD;
	Wed, 21 Aug 2019 16:57:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B82F31BF308
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 16:57:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF77F20446
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 16:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 99E4aQD8pheS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2019 16:57:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id AE2BC203E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 16:57:26 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id q22so6001987iog.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 09:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wCEZNrYU/5ppBxRNJA9n1HgdSaVTKFRs/1eid1avNfw=;
 b=dkRgj4Mi9Zklnd9c2qIHIa13rUDGB6PqiCoGPTawJV+toT1h8vw5oLAZOLnqbH+mGN
 gvBnQ7GKEgVj9IJVyfEFoS7lSkgdfwWj5WqtAW3+7GJHalLUJManVBxHZKXyacE+Ibc6
 6b9RO56Vz06OWsRWQwBEQ0/LKbtXsgyg0BOwabgh7Kmm8shbc7rshlxWEcRIl5t88Q43
 y/hJmwUtSm4+Q+A4zYLMrj1ROhOUmrtVYhg+gvs04C4lFh2KiDsYcPheI1CxV73VwiXW
 tdk1u0aKYY8b0VUgJ8LsDpx5StGoyqFXGLcKatH0zT3feX5IJ0eOivrwVrjCFOrc8Y5F
 Re9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wCEZNrYU/5ppBxRNJA9n1HgdSaVTKFRs/1eid1avNfw=;
 b=nJEFaeN8OgUjWDo2XqdBcZFLDB/XlBLP9fG0YgYDHfOLhwF5W8LHek6U+tVhY/OKbj
 XsDYfyUn/81rmpro8xDb1Q8+tA4AkSg/63+z1qyxk9N1IoWyGZ6IEPIpl8FH4F4CCMkY
 j8vWlJnZEzogdaNadix60uERMv9FxOcTrT0SdgVLBSGVw0dXo/6ptfx57Aj8PDbjbBz9
 YwM1LNUMu3g5dr4oc6lFIraXsFQpXE+av6KpDP72QWuWOGSQzo1mTF6wKtKY2m4rVjsH
 fjpRDynK85pQIbAWyRS83TuugDvfVhNFmHtHE7gn6rGMLJ0vbPAoGMHvYbjngQSMqVeH
 ZOiw==
X-Gm-Message-State: APjAAAXEZY/DcREqa+gUGAjrLbvYmjHpT9W1aEUM8FPniTqJvIQNJzH2
 bw4EqdAjBoAvVKG8bn3A2balH7MYxM0agZkO8ZI=
X-Google-Smtp-Source: APXvYqy5ER/jZPFQpXJhtg7vrUBIju/JR5g17iCTaerGnhqLDbkPmYKy2G/d3Owf4mg8glr1mvcKJ65SkpcrEw9ExXg=
X-Received: by 2002:a5e:8c11:: with SMTP id n17mr28082811ioj.64.1566406645836; 
 Wed, 21 Aug 2019 09:57:25 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce@eucas1p1.samsung.com>
 <20190820151611.10727-1-i.maximets@samsung.com>
 <CAKgT0Udn0D0_f=SOH2wpBRWV_u4rb1Qe2h7gguXnRNzJ_VkRzg@mail.gmail.com>
 <625791af-c656-1e42-b60e-b3a5cedcb4c4@samsung.com>
 <CAKgT0Uc27+ucd=a_sgTmv5g7_+ZTg1zK4isYJ0H7YWQj3d=Ejg@mail.gmail.com>
 <f7d0f7a5-e664-8b72-99c7-63275aff4c18@samsung.com>
In-Reply-To: <f7d0f7a5-e664-8b72-99c7-63275aff4c18@samsung.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 21 Aug 2019 09:57:14 -0700
Message-ID: <CAKgT0UcCKiM1Ys=vWxctprN7fzWcBCk-PCuKB-8=RThM=CqLSQ@mail.gmail.com>
To: Ilya Maximets <i.maximets@samsung.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix double clean of tx
 descriptors with xdp
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 William Tu <u9012063@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf@vger.kernel.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgOToyMiBBTSBJbHlhIE1heGltZXRzIDxpLm1heGltZXRz
QHNhbXN1bmcuY29tPiB3cm90ZToKPgo+IE9uIDIxLjA4LjIwMTkgNDoxNywgQWxleGFuZGVyIER1
eWNrIHdyb3RlOgo+ID4gT24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgODo1OCBBTSBJbHlhIE1heGlt
ZXRzIDxpLm1heGltZXRzQHNhbXN1bmcuY29tPiB3cm90ZToKPiA+Pgo+ID4+IE9uIDIwLjA4LjIw
MTkgMTg6MzUsIEFsZXhhbmRlciBEdXljayB3cm90ZToKPiA+Pj4gT24gVHVlLCBBdWcgMjAsIDIw
MTkgYXQgODoxOCBBTSBJbHlhIE1heGltZXRzIDxpLm1heGltZXRzQHNhbXN1bmcuY29tPiB3cm90
ZToKPiA+Pj4+Cj4gPj4+PiBUeCBjb2RlIGRvZXNuJ3QgY2xlYXIgdGhlIGRlc2NyaXB0b3Igc3Rh
dHVzIGFmdGVyIGNsZWFuaW5nLgo+ID4+Pj4gU28sIGlmIHRoZSBidWRnZXQgaXMgbGFyZ2VyIHRo
YW4gbnVtYmVyIG9mIHVzZWQgZWxlbXMgaW4gYSByaW5nLCBzb21lCj4gPj4+PiBkZXNjcmlwdG9y
cyB3aWxsIGJlIGFjY291bnRlZCB0d2ljZSBhbmQgeHNrX3VtZW1fY29tcGxldGVfdHggd2lsbCBt
b3ZlCj4gPj4+PiBwcm9kX3RhaWwgZmFyIGJleW9uZCB0aGUgcHJvZF9oZWFkIGJyZWFraW5nIHRo
ZSBjb21sZXRpb24gcXVldWUgcmluZy4KPiA+Pj4+Cj4gPj4+PiBGaXggdGhhdCBieSBsaW1pdGlu
ZyB0aGUgbnVtYmVyIG9mIGRlc2NyaXB0b3JzIHRvIGNsZWFuIGJ5IHRoZSBudW1iZXIKPiA+Pj4+
IG9mIHVzZWQgZGVzY3JpcHRvcnMgaW4gdGhlIHR4IHJpbmcuCj4gPj4+Pgo+ID4+Pj4gRml4ZXM6
IDgyMjFjNWViYThjMSAoIml4Z2JlOiBhZGQgQUZfWERQIHplcm8tY29weSBUeCBzdXBwb3J0IikK
PiA+Pj4+IFNpZ25lZC1vZmYtYnk6IElseWEgTWF4aW1ldHMgPGkubWF4aW1ldHNAc2Ftc3VuZy5j
b20+Cj4gPj4+Cj4gPj4+IEknbSBub3Qgc3VyZSB0aGlzIGlzIHRoZSBiZXN0IHdheSB0byBnby4g
TXkgcHJlZmVyZW5jZSB3b3VsZCBiZSB0bwo+ID4+PiBoYXZlIHNvbWV0aGluZyBpbiB0aGUgcmlu
ZyB0aGF0IHdvdWxkIHByZXZlbnQgdXMgZnJvbSByYWNpbmcgd2hpY2ggSQo+ID4+PiBkb24ndCB0
aGluayB0aGlzIHJlYWxseSBhZGRyZXNzZXMuIEkgYW0gcHJldHR5IHN1cmUgdGhpcyBjb2RlIGlz
IHNhZmUKPiA+Pj4gb24geDg2IGJ1dCBJIHdvdWxkIGJlIHdvcnJpZWQgYWJvdXQgd2VhayBvcmRl
cmVkIHN5c3RlbXMgc3VjaCBhcwo+ID4+PiBQb3dlclBDLgo+ID4+Pgo+ID4+PiBJdCBtaWdodCBt
YWtlIHNlbnNlIHRvIGxvb2sgYXQgYWRkaW5nIHRoZSBlb3BfZGVzYyBsb2dpYyBsaWtlIHdlIGhh
dmUKPiA+Pj4gaW4gdGhlIHJlZ3VsYXIgcGF0aCB3aXRoIGEgcHJvcGVyIGJhcnJpZXIgYmVmb3Jl
IHdlIHdyaXRlIGl0IGFuZCBhZnRlcgo+ID4+PiB3ZSByZWFkIGl0LiBTbyBmb3IgZXhhbXBsZSB3
ZSBjb3VsZCBob2xkIG9mIG9uIHdyaXRpbmcgdGhlIGJ5dGVjb3VudAo+ID4+PiB2YWx1ZSB1bnRp
bCB0aGUgZW5kIG9mIGFuIGl0ZXJhdGlvbiBhbmQgY2FsbCBzbXBfd21iIGJlZm9yZSB3ZSB3cml0
ZQo+ID4+PiBpdC4gVGhlbiBvbiB0aGUgY2xlYW51cCB3ZSBjb3VsZCByZWFkIGl0IGFuZCBpZiBp
dCBpcyBub24temVybyB3ZSB0YWtlCj4gPj4+IGFuIHNtcF9ybWIgYmVmb3JlIHByb2NlZWRpbmcg
ZnVydGhlciB0byBwcm9jZXNzIHRoZSBUeCBkZXNjcmlwdG9yIGFuZAo+ID4+PiBjbGVhcmluZyB0
aGUgdmFsdWUuIE90aGVyd2lzZSB0aGlzIGNvZGUgaXMgZ29pbmcgdG8ganVzdCBrZWVwIHBvcHBp
bmcKPiA+Pj4gdXAgd2l0aCBpc3N1ZXMuCj4gPj4KPiA+PiBCdXQsIHVubGlrZSByZWd1bGFyIGNh
c2UsIHhkcCB6ZXJvLWNvcHkgeG1pdCBhbmQgY2xlYW4gZm9yIHBhcnRpY3VsYXIKPiA+PiB0eCBy
aW5nIGFsd2F5cyBoYXBwZW5zIGluIHRoZSBzYW1lIE5BUEkgY29udGV4dCBhbmQgZXZlbiBvbiB0
aGUgc2FtZQo+ID4+IENQVSBjb3JlLgo+ID4+Cj4gPj4gSSBzYXcgdGhlICdlb3BfZGVzYycgbWFu
aXB1bGF0aW9ucyBpbiByZWd1bGFyIGNhc2UgYW5kIHllcywgd2UgY291bGQKPiA+PiB1c2UgJ25l
eHRfdG9fd2F0Y2gnIGZpZWxkIGp1c3QgYXMgYSBmbGFnIG9mIGRlc2NyaXB0b3IgZXhpc3RlbmNl
LAo+ID4+IGJ1dCBpdCBzZWVtcyB1bm5lY2Vzc2FyaWx5IGNvbXBsaWNhdGVkLiBBbSBJIG1pc3Np
bmcgc29tZXRoaW5nPwo+ID4+Cj4gPgo+ID4gU28gaXMgaXQgYWx3YXlzIGluIHRoZSBzYW1lIE5B
UEkgY29udGV4dD8uIEkgZm9yZ290LCBJIHdhcyB0aGlua2luZwo+ID4gdGhhdCBzb21laG93IHRo
ZSBzb2NrZXQgY291bGQgcG9zc2libHkgbWFrZSB1c2Ugb2YgWERQIGZvciB0cmFuc21pdC4KPgo+
IEFGX1hEUCBzb2NrZXQgb25seSB0cmlnZ2VycyB0eCBpbnRlcnJ1cHQgb24gbmRvX3hza19hc3lu
Y194bWl0KCkgd2hpY2gKPiBpcyB1c2VkIGluIHplcm8tY29weSBtb2RlLiBSZWFsIHhtaXQgaGFw
cGVucyBpbnNpZGUKPiBpeGdiZV9wb2xsKCkKPiAgLT4gaXhnYmVfY2xlYW5feGRwX3R4X2lycSgp
Cj4gICAgIC0+IGl4Z2JlX3htaXRfemMoKQo+Cj4gVGhpcyBzaG91bGQgYmUgbm90IHBvc3NpYmxl
IHRvIGJvdW5kIGFub3RoZXIgWERQIHNvY2tldCB0byB0aGUgc2FtZSBuZXRkZXYKPiBxdWV1ZS4K
Pgo+IEl0IGFsc28gcG9zc2libGUgdG8geG1pdCBmcmFtZXMgaW4geGRwX3Jpbmcgd2hpbGUgcGVy
Zm9ybWluZyBYRFBfVFgvUkVESVJFQ1QKPiBhY3Rpb25zLiBSRURJUkVDVCBjb3VsZCBoYXBwZW4g
ZnJvbSBkaWZmZXJlbnQgbmV0ZGV2IHdpdGggZGlmZmVyZW50IE5BUEkKPiBjb250ZXh0LCBidXQg
dGhpcyBvcGVyYXRpb24gaXMgYm91bmQgdG8gc3BlY2lmaWMgQ1BVIGNvcmUgYW5kIGVhY2ggY29y
ZSBoYXMKPiBpdHMgb3duIHhkcF9yaW5nLgo+Cj4gSG93ZXZlciwgSSdtIG5vdCBhbiBleHBlcnQg
aGVyZS4KPiBCasO2cm4sIG1heWJlIHlvdSBjb3VsZCBjb21tZW50IG9uIHRoaXM/Cj4KPiA+Cj4g
PiBBcyBmYXIgYXMgdGhlIGxvZ2ljIHRvIHVzZSBJIHdvdWxkIGJlIGdvb2Qgd2l0aCBqdXN0IHVz
aW5nIGEgdmFsdWUgeW91Cj4gPiBhcmUgYWxyZWFkeSBzZXR0aW5nIHN1Y2ggYXMgdGhlIGJ5dGVj
b3VudCB2YWx1ZS4gQWxsIHRoYXQgd291bGQgbmVlZAo+ID4gdG8gaGFwcGVuIGlzIHRvIGd1YXJh
bnRlZSB0aGF0IHRoZSB2YWx1ZSBpcyBjbGVhcmVkIGluIHRoZSBUeCBwYXRoLiBTbwo+ID4gaWYg
eW91IGNsZWFyIHRoZSBieXRlY291bnQgaW4gaXhnYmVfY2xlYW5feGRwX3R4X2lycSB5b3UgY291
bGQKPiA+IHRoZW9yZXRpY2FsbHkganVzdCB1c2UgdGhhdCBhcyB3ZWxsIHRvIGZsYWcgdGhhdCBh
IGRlc2NyaXB0b3IgaGFzIGJlZW4KPiA+IHBvcHVsYXRlZCBhbmQgaXMgcmVhZHkgdG8gYmUgY2xl
YW5lZC4gQXNzdW1pbmcgdGhlIGxvZ2ljIGFib3V0IHRoaXMKPiA+IGFsbCBiZWluZyBpbiB0aGUg
c2FtZSBOQVBJIGNvbnRleHQgYW55d2F5IHlvdSB3b3VsZG4ndCBuZWVkIHRvIG1lc3MKPiA+IHdp
dGggdGhlIGJhcnJpZXIgc3R1ZmYgSSBtZW50aW9uZWQgYmVmb3JlLgo+Cj4gQ2hlY2tpbmcgdGhl
IG51bWJlciBvZiB1c2VkIGRlc2NzLCBpLmUuIG5leHRfdG9fdXNlIC0gbmV4dF90b19jbGVhbiwK
PiBtYWtlcyBpdGVyYXRpb24gaW4gdGhpcyBmdW5jdGlvbiBsb2dpY2FsbHkgZXF1YWwgdG8gdGhl
IGl0ZXJhdGlvbiBpbnNpZGUKPiAnaXhnYmVfeHNrX2NsZWFuX3R4X3JpbmcoKScuIERvIHlvdSB0
aGluayB3ZSBuZWVkIHRvIGNoYW5nZSB0aGUgbGF0ZXIKPiBmdW5jdGlvbiB0b28gdG8gZm9sbG93
IHNhbWUgJ2J5dGVjb3VudCcgYXBwcm9hY2g/IEkgZG9uJ3QgbGlrZSBoYXZpbmcKPiB0d28gZGlm
ZmVyZW50IHdheXMgdG8gZGV0ZXJtaW5lIG51bWJlciBvZiB1c2VkIGRlc2NyaXB0b3JzIGluIHRo
ZSBzYW1lIGZpbGUuCj4KPiBCZXN0IHJlZ2FyZHMsIElseWEgTWF4aW1ldHMuCgpBcyBmYXIgYXMg
aXhnYmVfY2xlYW5feGRwX3R4X2lycSgpIHZzIGl4Z2JlX3hza19jbGVhbl90eF9yaW5nKCksIEkK
d291bGQgc2F5IHRoYXQgaWYgeW91IGdvdCByaWQgb2YgYnVkZ2V0IGFuZCBmcmFtZWQgdGhpbmdz
IG1vcmUgbGlrZQpob3cgaXhnYmVfeHNrX2NsZWFuX3R4X3Jpbmcgd2FzIGZyYW1lZCB3aXRoIHRo
ZSBudGMgIT0gbnR1IGJlaW5nCm9idmlvdXMgSSB3b3VsZCBwcmVmZXIgdG8gc2VlIHVzIGdvIHRo
YXQgcm91dGUuCgpSZWFsbHkgdGhlcmUgaXMgbm8gbmVlZCBmb3IgYnVkZ2V0IGluIGl4Z2JlX2Ns
ZWFuX3hkcF90eF9pcnEoKSBpZiB5b3UKYXJlIGdvaW5nIHRvIGJlIHdvcmtpbmcgd2l0aCBhIHN0
YXRpYyBudHUgdmFsdWUgc2luY2UgeW91IHdpbGwgb25seQpldmVyIHByb2Nlc3Mgb25lIGl0ZXJh
dGlvbiB0aHJvdWdoIHRoZSByaW5nIGFueXdheS4gSXQgbWlnaHQgbWFrZSBtb3JlCnNlbnNlIGlm
IHlvdSBqdXN0IHdlbnQgdGhyb3VnaCBhbmQgZ290IHJpZCBvZiBidWRnZXQgYW5kIGksIGFuZApp
bnN0ZWFkIHVzZWQgbnRjIGFuZCBudHUgbGlrZSB3aGF0IHdhcyBkb25lIGluCml4Z2JlX3hza19j
bGVhbl90eF9yaW5nKCkuCgpUaGFua3MuCgotIEFsZXgKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
