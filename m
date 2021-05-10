Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F31E37855A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 13:23:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7B25608D2;
	Mon, 10 May 2021 11:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KKByemqGMbfi; Mon, 10 May 2021 11:23:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79B4260780;
	Mon, 10 May 2021 11:23:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F38D1BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 11:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 376E1401DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 11:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JHq1YMOU8VaZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 11:23:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E40DB400C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 11:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620645784;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wPbAIikeBMTmjzuYjQc0xwcG5q9ZPrd5u4FVVmY62e8=;
 b=MlmdSeo73+je336o3Se4y8VYt1eLYql/ZNcSitj12gmbyIUhW8pVHm68CQDScbC9mqlrt1
 MPRTZhhtgOZea/2zZhLWue5H77EJc87ooGFp55zvlXcNJUqZa/uShMlwIejBiPsdo8EaXx
 0E/CXuMyhDroGO+oVysnLrLfZjJeV0s=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-bZa2w7lsNfW9JEOr5dw2kA-1; Mon, 10 May 2021 07:22:58 -0400
X-MC-Unique: bZa2w7lsNfW9JEOr5dw2kA-1
Received: by mail-ej1-f70.google.com with SMTP id
 yd14-20020a170906dbeeb02903b8794d5e43so1030447ejb.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 04:22:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=8YReM1a+d1MF8qH1RqPBWq7lyKLZMBFgM7TkuSYkEfg=;
 b=WmrCXZ+Y15f/UrKsaW1BSKFddh8UQTFAj7SWbHm8vJ/xQKpza2gBBmN/NE163Ei5ZL
 MLmMVfjzO5qsh8yMXKWcRKoXz6mWX3FOeFkBdsxrOHfs86PdPXmHw8i7Du3JPeCrjlfm
 tC1eCnGZq7CfiXY5wzNsbJPJeC/hVxvaFXG4M9kzhApcApEPUTAo+0EaSHjJNh1pP3PU
 gv2xHS3pzHPnHX8U2SvJ2dVDoOFUR5zo88mZ0xn003NtqwL2qCwXJdOAMyQkkKf6b+eE
 7JGOEY04Wi2IqagNeVjePR95lD08J7Nfq+zAdEDHL5+KHq0q87L4dSTkD8iswqqxgD27
 ehyw==
X-Gm-Message-State: AOAM530X5gsNLjWgLEqvDKW+MUUpQW5NFjbD+WEVAbVe3p3cJaWowEeW
 pdPxbNktT6TIsqi60QXPpeQEoV3IrsqC1bOoLpHhEqHmbSmeOLAmbbuMuCdi42YQTe9VFV9lr14
 Zz2/Q7O4ppIhMMw5wn+nABAtzLkl9Gg==
X-Received: by 2002:a17:906:564f:: with SMTP id
 v15mr24572026ejr.96.1620645776844; 
 Mon, 10 May 2021 04:22:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJysz/2WfT0uGh3jgW0w0gReeejEVaKQsGCoxpsAYkWLKTIj1uKWrHn36k2xpZm2LYxMOYPsRA==
X-Received: by 2002:a17:906:564f:: with SMTP id
 v15mr24571993ejr.96.1620645776281; 
 Mon, 10 May 2021 04:22:56 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id p4sm8912154ejr.81.2021.05.10.04.22.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 May 2021 04:22:55 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 1254F1808AA; Mon, 10 May 2021 13:22:55 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <20210509155033.GB36905@ranger.igk.intel.com>
References: <CAC1LvL1NHj6n+RNYRmja2YDhkcCwREuhjaBz_k255rU1jdO8Sw@mail.gmail.com>
 <CADS2XXpjasmJKP__oHsrvv3EG8n-FjB6sqHwgQfh7QgeJ8GrrQ@mail.gmail.com>
 <CAC1LvL2Q=s8pmwKAh2615fsTFEETKp96jpoLJS+75=0ztwuLFQ@mail.gmail.com>
 <CADS2XXptoyPTBObKgp3gcRZnWzoVyZrC26tDpLWhC9YrGMSefw@mail.gmail.com>
 <CAC1LvL2zmO1ntKeAoUMkJSarJBgxNhnTva3Di4047MTKqo8rPA@mail.gmail.com>
 <CAC1LvL1Kd-TCuPk0BEQyGvEiLzgUqkZHOKQNOUnxXSY6NjFMmw@mail.gmail.com>
 <20210505130128.00006720@intel.com>
 <20210505212157.GA63266@ranger.igk.intel.com> <87fsz0w3xn.fsf@toke.dk>
 <20210509155033.GB36905@ranger.igk.intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 10 May 2021 13:22:54 +0200
Message-ID: <87h7jaq1dd.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] Dropped packets mapping IRQs for adjusted
 queue counts on i40e
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
Cc: Xdp <xdp-newbies@vger.kernel.org>, T K Sourabh <sourabhtk37@gmail.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPiB3cml0ZXM6
Cgo+IE9uIFRodSwgTWF5IDA2LCAyMDIxIGF0IDEyOjI5OjQwUE0gKzAyMDAsIFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToKPj4gTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxr
b3dza2lAaW50ZWwuY29tPiB3cml0ZXM6Cj4+IAo+PiA+IE9uIFdlZCwgTWF5IDA1LCAyMDIxIGF0
IDAxOjAxOjI4UE0gLTA3MDAsIEplc3NlIEJyYW5kZWJ1cmcgd3JvdGU6Cj4+ID4+IFp2aSBFZmZy
b24gd3JvdGU6Cj4+ID4+IAo+PiA+PiA+IE9uIFR1ZSwgTWF5IDQsIDIwMjEgYXQgNDowNyBQTSBa
dmkgRWZmcm9uIDx6ZWZmcm9uQHJpb3RnYW1lcy5jb20+IHdyb3RlOgo+PiA+PiA+ID4gSSdtIHN1
c3BlY3RpbmcgaXQncyBzb21ldGhpbmcgd2l0aCBob3cgWERQX1JFRElSRUNUIGlzIGltcGxlbWVu
dGVkIGluCj4+ID4+ID4gPiB0aGUgaTQwZSBkcml2ZXIsIGJ1dCBJIGRvbid0IGtub3cgaWYgdGhp
cyBpcyBhKSBjcm9zcyBkcml2ZXIgYmVoYXZpb3IsCj4+ID4+ID4gPiBiKSBleHBlY3RlZCBiZWhh
dmlvciwgb3IgYykgYSBidWcuCj4+ID4+ID4gSSB0aGluayBJJ3ZlIGZvdW5kIHRoZSBpc3N1ZSwg
YW5kIGl0IGFwcGVhcnMgdG8gYmUgc3BlY2lmaWMgdG8gaTQwZQo+PiA+PiA+IChhbmQgbWF5YmUg
b3RoZXIgZHJpdmVycywgdG9vLCBidXQgbm90IFhEUCBpdHNlbGYpLgo+PiA+PiA+IAo+PiA+PiA+
IFdoZW4gcGVyZm9ybWluZyB0aGUgWERQIHhtaXQsIGk0MGUgdXNlcyB0aGUgc21wX3Byb2Nlc3Nv
cl9pZCgpIHRvCj4+ID4+ID4gc2VsZWN0IHRoZSB0eCBxdWV1ZSAoc2VlCj4+ID4+ID4gaHR0cHM6
Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMTIuMS9zb3VyY2UvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYyNMMzg0NikuCj4+ID4+ID4gSSdtIG5vdCAxMDAl
IGNsZWFyIG9uIGhvdyB0aGUgQ1BVIGlzIHNlbGVjdGVkIChzaW5jZSB3ZSBkb24ndCB1c2UKPj4g
Pj4gPiBjb3JlcyAwIGFuZCAxKSwgd2UgZW5kIHVwIG9uIGEgY29yZSB3aG9zZSBpZCBpcyBoaWdo
ZXIgdGhhbiBhbnkKPj4gPj4gPiBhdmFpbGFibGUgcXVldWUuCj4+ID4+ID4gCj4+ID4+ID4gSSdt
IGdvaW5nIHRvIHRyeSB0byBtb2RpZnkgb3VyIElSUSBtYXBwaW5ncyB0byB0ZXN0IHRoaXMuCj4+
ID4+ID4gCj4+ID4+ID4gSWYgSSdtIGNvcnJlY3QsIHRoaXMgZmVlbHMgbGlrZSBhIGJ1ZyB0byBt
ZSwgc2luY2UgaXQgcmVxdWlyZXMgYSB1c2VyCj4+ID4+ID4gdG8gdW5kZXJzdGFuZCBsb3cgbGV2
ZWwgZHJpdmVyIGRldGFpbHMgdG8gZG8gSVJRIHJlbWFwcGluZywgd2hpY2ggaXMgYQo+PiA+PiA+
IGJpdCBoaWdoZXIgbGV2ZWwuIEJ1dCBpZiBpdCdzIGludGVuZGVkLCB3ZSdsbCBqdXN0IGhhdmUg
dG8gZmlndXJlIG91dAo+PiA+PiA+IGhvdyB0byB3b3JrIGFyb3VuZCB0aGlzLiAoVW5mb3J0dW5h
dGVseSwgdXNpbmcgc3BsaXQgdHggYW5kIHJ4IHF1ZXVlcwo+PiA+PiA+IGlzIG5vdCBwb3NzaWJs
ZSB3aXRoIGk0MGUsIHNvIHRoYXQgZWFzeSBzb2x1dGlvbiBpcyB1bmF2YWlsYWJsZS4pCj4+ID4+
ID4gCj4+ID4+ID4gLS1admkKPj4gPgo+PiA+IEhleSBadmksIHNvcnJ5IGZvciB0aGUgbGFjayBv
ZiBhc3Npc3RhbmNlLCB0aGVyZSBoYXMgYmVlbiBzdGF0dXRvcnkgZnJlZQo+PiA+IHRpbWUgaW4g
UG9sYW5kIGFuZCB0b2RheSBpJ20gaW4gdGhlIGJpcnRoZGF5IG1vZGUsIGJ1dCB3ZSBtYW5hZ2Vk
IHRvCj4+ID4gZGlzY3VzcyB0aGUgaXNzdWUgd2l0aCBNYWdudXMgYW5kIHdlIGZlZWwgbGlrZSB3
ZSBjb3VsZCBoYXZlIGEgc29sdXRpb24KPj4gPiBmb3IgdGhhdCwgbW9yZSBiZWxvdy4KPj4gPgo+
PiA+PiAKPj4gPj4gCj4+ID4+IEl0IHNlZW1zIGxpa2UgZm9yIEludGVsIGRyaXZlcnMsIGlnYywg
aXhnYmUsIGk0MGUsIGljZSBhbGwgaGF2ZQo+PiA+PiB0aGlzIHByb2JsZW0uCj4+ID4+IAo+PiA+
PiBOb3RhYmx5LCBpZ2IsIGZpeGVzIGl0IGxpa2UgSSB3b3VsZCBleHBlY3QuCj4+ID4KPj4gPiBp
Z2IgaXMgY29ycmVjdCBidXQgSSB0aGluayB0aGF0IHdlIHdvdWxkIGxpa2UgdG8gYXZvaWQgdGhl
IGludHJvZHVjdGlvbiBvZgo+PiA+IGxvY2tpbmcgZm9yIGhpZ2hlciBzcGVlZCBOSUNzIGluIFhE
UCBkYXRhIHBhdGguCj4+ID4KPj4gPiBXZSB0YWxrZWQgd2l0aCBNYWdudXMgdGhhdCBmb3IgaTQw
ZSBhbmQgaWNlIHRoYXQgaGF2ZSBsb3RzIG9mIEhXCj4+ID4gcmVzb3VyY2VzLCB3ZSBjb3VsZCBh
bHdheXMgY3JlYXRlIHRoZSB4ZHBfcmluZ3MgYXJyYXkgb2YgbnVtX29ubGluZV9jcHVzKCkKPj4g
PiBzaXplIGFuZCB1c2Ugc21wX3Byb2Nlc3Nvcl9pZCgpIGZvciBhY2Nlc3NlcywgcmVnYXJkbGVz
cyBvZiB0aGUgdXNlcidzCj4+ID4gY2hhbmdlcyB0byBxdWV1ZSBjb3VudC4KPj4gCj4+IFdoYXQg
aXMgImxvdHMiPyBTeXN0ZW1zIHdpdGggaHVuZHJlZHMgb2YgQ1BVcyBleGlzdCAoYW5kIEkgc2Vl
bSB0bwo+PiByZWNhbGwgYW4gaXNzdWUgd2l0aCBqdXN0IHN1Y2ggYSBzeXN0ZW0gb24gSW50ZWwg
aGFyZHdhcmUoPykpLiBBbHNvLAo+PiB3aGF0IGlmIG51bV9vbmxpbmVfY3B1cygpIGNoYW5nZXM/
Cj4KPiAiTG90cyIgaXMgMTZrIGZvciBpY2UuIEZvciBpNDBlIGRhdGFzaGVldCB0ZWxscyB0aGF0
IGl0J3Mgb25seSAxNTM2IGZvcgo+IHdob2xlIGRldmljZSwgc28gSSBiYWNrIG9mZiBmcm9tIHRo
ZSBzdGF0ZW1lbnQgdGhhdCBpNDBlIGhhcyBhIGxvdCBvZgo+IHJlc291cmNlcyA6KQo+Cj4gQWxz
bywgcy9udW1fb25saW5lX2NwdXMoKS9udW1fcG9zc2libGVfY3B1cygpLgoKT0ssIGV2ZW4gMTUz
NiBpcyBtb3JlIHRoYW4gSSBleHBlY3RlZDsgSSBmaWd1cmVkIGl0IHdvdWxkIGJlIHdheSBsb3dl
ciwKd2hpY2ggaXMgd2h5IHlvdSB3ZXJlIHN1Z2dlc3RpbmcgdG8gdXNlIG51bV9vbmxpbmVfY3B1
cygpIGluc3RlYWQ7IGJ1dAp5ZWFoLCBudW1fcG9zc2libGVfY3B1cygpIGlzIG9idmlvdXNseSBi
ZXR0ZXIsIHRoZW4gOikKCj4+ID4gVGhpcyB3YXkgdGhlIHNtcF9wcm9jZXNzb3JfaWQoKSBwcm92
aWRlcyB0aGUgc2VyaWFsaXphdGlvbiBieSBpdHNlbGYgYXMKPj4gPiB3ZSdyZSB1bmRlciBuYXBp
IG9uIGEgZ2l2ZW4gY3B1LCBzbyB0aGVyZSdzIG5vIG5lZWQgZm9yIGxvY2tpbmcKPj4gPiBpbnRy
b2R1Y3Rpb24gLSB0aGVyZSBpcyBhIHBlci1jcHUgWERQIHJpbmcgcHJvdmlkZWQuIElmIHdlIHdv
dWxkIHN0aWNrIHRvCj4+ID4gdGhlIGFwcHJvYWNoIHdoZXJlIHlvdSBhZGp1c3QgdGhlIHNpemUg
b2YgeGRwX3JpbmdzIGRvd24gdG8gdGhlIHNocmlua2VkCj4+ID4gUnggcXVldWUgY291bnQgYW5k
IHVzZSBhIHNtcF9wcm9jZXNzb3JfaWQoKSAlIHZzaS0+bnVtX3F1ZXVlX3BhaXJzIGZvcm11bGEK
Pj4gPiB0aGVuIHdlIGNvdWxkIGhhdmUgYSByZXNvdXJjZSBjb250ZW50aW9uLiBTYXkgdGhhdCB5
b3UgZGlkIG9uIGEgMTYgY29yZQo+PiA+IHN5c3RlbToKPj4gPiAkIGV0aHRvb2wgLUwgZXRoMCBj
b21iaW5lZCAyCj4+ID4KPj4gPiBhbmQgdGhlbiBtYXBwZWQgdGhlIHEwIHRvIGNwdTEgYW5kIHEx
IHRvIGNwdSAxMS4gQm90aCBxdWV1ZXMgd2lsbCBncmFiIHRoZQo+PiA+IHhkcF9yaW5nc1sxXSwg
c28gd2Ugd291bGQgaGF2ZSB0byBpbnRyb2R1Y2UgdGhlIGxvY2tpbmcuCj4+ID4KPj4gPiBQcm9w
b3NlZCBhcHByb2FjaCB3b3VsZCBqdXN0IHJlc3VsdCB3aXRoIG1vcmUgVHggcXVldWVzIHBhY2tl
ZCBvbnRvIFR4Cj4+ID4gcmluZyBjb250YWluZXIgb2YgcXVldWUgdmVjdG9yLgo+PiA+Cj4+ID4g
VGhvdWdodHM/IEFueSBjb25jZXJucz8gU2hvdWxkIHdlIGhhdmUgYSAnZmFsbGJhY2snIG1vZGUg
aWYgd2Ugd291bGQgYmUKPj4gPiBvdXQgb2YgcXVldWVzPwo+PiAKPj4gWWVzLCBwbGVhc2UgOikK
Pgo+IEhvdyB0byBoYXZlIGEgZmFsbGJhY2sgKGluIGRyaXZlcnMgdGhhdCBuZWVkIGl0KSBpbiBh
IHdheSB0aGF0IHdvdWxkbid0Cj4gaHVydCB0aGUgc2NlbmFyaW8gd2hlcmUgcXVldWUgcGVyIGNw
dSByZXF1aXJlbWVudCBpcyBzYXRpc2ZpZWQ/CgpXZWxsLCBpdCBzaG91bGQgYmUgcG9zc2libGUg
dG8gZGV0ZWN0IHRoaXMgYXQgc2V0dXAgdGltZSwgcmlnaHQ/IE5vdCB0b28KZmFtaWxpYXIgd2l0
aCB0aGUgZHJpdmVyIGNvZGUsIGJ1dCB3b3VsZCBpdCBiZSBwb3NzaWJsZSB0byBzdGF0aWNhbGx5
CmRpc3BhdGNoIHRvIGFuIGVudGlyZWx5IGRpZmZlcmVudCBjb2RlIHBhdGggaWYgdGhpcyBoYXBw
ZW5zPwoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
