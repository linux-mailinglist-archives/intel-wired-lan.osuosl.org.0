Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F642B5A59
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Nov 2020 08:38:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6EF53870EE;
	Tue, 17 Nov 2020 07:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xq72+h4MyvE2; Tue, 17 Nov 2020 07:37:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8959870E7;
	Tue, 17 Nov 2020 07:37:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 59A0F1BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 07:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52F2420422
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 07:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Cu1Gc6Mgfbu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Nov 2020 07:37:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 0695A203DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 07:37:53 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id h16so11511043pgb.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 23:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0XlitvxJRL4KwmbFX34ChheWdBor1caHiWArAv6m3Pc=;
 b=sd/GlGJt4W7e4wmb/3ie/BugebX2gYYhaySYKzzemzxcutzEGBxgDZJkDcYHcXNhUR
 2bNdEEEWN4b1HrzfIFmAE5kGtyo1JjBjwnoboHSFe7eYllP12xW+nnHJZ9APVT0F8Oxf
 KUwGKlQQWuPw134CArL+6hCBfuxsy0JjMPByzjcXJBnye+IneMt60SPeahv3NgU/wzEm
 VUHEFS1AXVZV2SFrt+oe7w2rnWjt1t7bXnZrOybnVReduL6RsZ+pg9g19I+coHUe2aDh
 IP7DGgHpdZf2rLbEdvfzep8/5FefABvqCBy35ZZu+YoygnCq1zcU9COLrPcx4i/QDvyk
 kwug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0XlitvxJRL4KwmbFX34ChheWdBor1caHiWArAv6m3Pc=;
 b=arOs/mW0mC0iYNVmBgOmrTS5UOnMd+WxKf702O2cO0FCrJKnSWjHhgahZBYRYgviwn
 MOEFUQ7qNmYfcOlKSF9l+pbk+qZ+sTDShIOn+X2GNrxubFdBdHkWKogk8f9S/rj6ROZq
 00gnOHmvlyhTXBevYWUDxTp8Bc65lYFTGhiMA4zV7qaD38SyalVIbZoiCf8KNHt0CMLu
 0Bjy54fZtzU/6Cwsw7nUICd6yoce93G9wEA2h9zq7UkS+eA5pELEPtrYMhCZoDVTG9CT
 8K3t9ojUQpqPWIacJr294aTrrNjAyMKENPYGCLzKg4tpuYfRcFD22VrS3nLx1HTOTDk5
 mnjA==
X-Gm-Message-State: AOAM531SqcOw0dhxXeCxiiM4Q7eK5a4g7qezoclOtxWoBE8VKFXh3Avu
 o00GriqOxPE82FmjyX+iJCTavap6W6xT/7UnEkU=
X-Google-Smtp-Source: ABdhPJyovQnPud3JvuEBqj7wYAR9YZ1Eghdt1KS9G6XNfPGeFIfeeh1lVEqgrAdcjkc4S8A9IYXxkvfDmPSSjOPLQeQ=
X-Received: by 2002:a62:445:0:b029:196:61fc:2756 with SMTP id
 66-20020a6204450000b029019661fc2756mr373809pfe.12.1605598672596; Mon, 16 Nov
 2020 23:37:52 -0800 (PST)
MIME-Version: 1.0
References: <20201116093452.7541-1-marekx.majtyka@intel.com>
 <875z655t80.fsf@toke.dk>
In-Reply-To: <875z655t80.fsf@toke.dk>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Tue, 17 Nov 2020 08:37:41 +0100
Message-ID: <CAJ8uoz1C7-a7A0WJqThomSxYwmdkfLpDyC5YnB8g_J+p486RXQ@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH 0/8] New netdev feature flags for XDP
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>, hawk@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Marek Majtyka <marekx.majtyka@intel.com>,
 Marek Majtyka <alardam@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMjoyNSBQTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
PHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBhbGFyZGFtQGdtYWlsLmNvbSB3cml0ZXM6Cj4K
PiA+IEZyb206IE1hcmVrIE1hanR5a2EgPG1hcmVreC5tYWp0eWthQGludGVsLmNvbT4KPiA+Cj4g
PiBJbXBsZW1lbnQgc3VwcG9ydCBmb3IgY2hlY2tpbmcgaWYgYSBuZXRkZXYgaGFzIG5hdGl2ZSBY
RFAgYW5kIEFGX1hEUCB6ZXJvCj4gPiBjb3B5IHN1cHBvcnQuIFByZXZpb3VzbHksIHRoZXJlIHdh
cyBubyB3YXkgdG8gZG8gdGhpcyBvdGhlciB0aGFuIHRvIHRyeQo+ID4gdG8gY3JlYXRlIGFuIEFG
X1hEUCBzb2NrZXQgb24gdGhlIGludGVyZmFjZSBvciBsb2FkIGFuIFhEUCBwcm9ncmFtIGFuZAo+
ID4gc2VlIGlmIGl0IHdvcmtlZC4gVGhpcyBjb21taXQgY2hhbmdlcyB0aGlzIGJ5IGV4dGVuZGlu
ZyBleGlzdGluZwo+ID4gbmV0ZGV2X2ZlYXR1cmVzIGluIHRoZSBmb2xsb3dpbmcgd2F5Ogo+ID4g
ICogeGRwICAgICAgICAtIGZ1bGwgWERQIHN1cHBvcnQgKFhEUF97VFgsIFBBU1MsIERST1AsIEFC
T1JULCBSRURJUkVDVH0pCj4gPiAgKiBhZi14ZHAtemMgIC0gQUZfWERQIHplcm8gY29weSBzdXBw
b3J0Cj4gPiBOSUNzIHN1cHBvcnRpbmcgdGhlc2UgZmVhdHVyZXMgYXJlIHVwZGF0ZWQgYnkgdHVy
bmluZyB0aGUgY29ycmVzcG9uZGluZwo+ID4gbmV0ZGV2IGZlYXR1cmUgZmxhZ3Mgb24uCj4KPiBU
aGFuayB5b3UgZm9yIHdvcmtpbmcgb24gdGhpcyEgVGhlIGxhY2sgb2YgYSB3YXkgdG8gZGlzY292
ZXIgd2hldGhlciBhbgo+IGludGVyZmFjZSBzdXBwb3J0cyBYRFAgaXMgcmVhbGx5IGFubm95aW5n
Lgo+Cj4gSG93ZXZlciwgSSBkb24ndCB0aGluayBqdXN0IGhhdmluZyB0d28gc2VwYXJhdGUgbmV0
ZGV2IGZlYXR1cmUgZmxhZ3MgZm9yCj4gWERQIGFuZCBBRl9YRFAgaXMgZ29pbmcgdG8gY3V0IGl0
LiBXaGF0ZXZlciBtZWNoYW5pc20gd2UgZW5kIHVwIHdpbGwKPiBuZWVkIHRvIGJlIGFibGUgdG8g
ZXhwcmVzcyBhdCBsZWFzdCB0aGUgZm9sbG93aW5nLCBpbiBhZGRpdGlvbiB0byB5b3VyCj4gdHdv
IGZsYWdzOgo+Cj4gLSBXaGljaCByZXR1cm4gY29kZXMgZG9lcyBpdCBzdXBwb3J0ICh3aXRoIERS
T1AvUEFTUywgVFggYW5kIFJFRElSRUNUIGFzCj4gICBzZXBhcmF0ZSBvcHRpb25zKT8KPiAtIERv
ZXMgdGhpcyBpbnRlcmZhY2UgYmUgdXNlZCBhcyBhIHRhcmdldCBmb3IgWERQX1JFRElSRUNUCj4g
ICAoc3VwcG9ydGVkL3N1cHBvcnRlZCBidXQgbm90IGVuYWJsZWQpPwo+IC0gRG9lcyB0aGUgaW50
ZXJmYWNlIHN1cHBvcnQgb2ZmbG9hZGVkIFhEUD8KCklmIHdlIHdhbnQgZmVhdHVyZSBkaXNjb3Zl
cnkgb24gdGhpcyBsZXZlbCwgd2hpY2ggc2VlbXMgdG8gYmUgYSBnb29kCmlkZWEgYW5kIGdvYWwg
dG8gaGF2ZSwgdGhlbiBpdCBpcyBhIGRlYWQgZW5kIHRvIGJ1bmNoIGFsbCBYRFAgZmVhdHVyZXMK
aW50byBvbmUuIEJ1dCBmb3J0dW5hdGVseSwgdGhpcyBjYW4gZWFzaWx5IGJlIGFkZHJlc3NlZC4K
Cj4gVGhhdCdzIGFscmVhZHkgZml2ZSBvciBzaXggbW9yZSBmbGFncywgYW5kIHdlIGNhbid0IHJ1
bGUgb3V0IHRoYXQgd2UnbGwKPiBuZWVkIG1vcmU7IHNvIEknbSBub3Qgc3VyZSBpZiBqdXN0IGRl
ZmluaW5nIGZlYXR1cmUgYml0cyBmb3IgYWxsIG9mIHRoZW0KPiBpcyBhIGdvb2QgaWRlYS4KCkkg
dGhpbmsgdGhpcyBpcyBhbiBpbXBvcnRhbnQgcXVlc3Rpb24uIElzIGV4dGVuZGluZyB0aGUgbmV0
ZGV2CmZlYXR1cmVzIGZsYWdzIHRoZSByaWdodCB3YXkgdG8gZ28/IElmIG5vdCwgaXMgdGhlcmUg
c29tZSBvdGhlcgppbnRlcmZhY2UgaW4gdGhlIGtlcm5lbCB0aGF0IGNvdWxkIGJlIHVzZWQvZXh0
ZW5kZWQgZm9yIHRoaXM/IElmIG5vbmUKb2YgdGhlc2UgYXJlIHBvc3NpYmxlLCB0aGVuIHdlICh1
bmZvcnR1bmF0ZWx5KSBuZWVkIGEgbmV3IGludGVyZmFjZQphbmQgaW4gdGhhdCBjYXNlLCB3aGF0
IHNob3VsZCBpdCBsb29rIGxpa2U/CgpUaGFua3MgZm9yIHRha2luZyBhIGxvb2sgYXQgdGhpcyBU
b2tlLgoKPiBJbiBhZGRpdGlvbiwgd2Ugc2hvdWxkIGJlIGFibGUgdG8gY2hlY2sgdGhpcyBpbiBh
IHdheSBzbyB3ZSBjYW4gcmVqZWN0Cj4gWERQIHByb2dyYW1zIHRoYXQgdXNlIGZlYXR1cmVzIHRo
YXQgYXJlIG5vdCBzdXBwb3J0ZWQuIEUuZy4sIHByb2dyYW0KPiB1c2VzIFJFRElSRUNUIHJldHVy
biBjb2RlIChvciBoZWxwZXIpLCBidXQgdGhlIGludGVyZmFjZSBkb2Vzbid0IHN1cHBvcnQKPiBp
dD8gUmVqZWN0IGF0IGF0dGFjaC9sb2FkIHRpbWUhIE9yIHRoZSB1c2VyIGF0dGVtcHRzIHRvIGlu
c2VydCBhbgo+IGludGVyZmFjZSBpbnRvIGEgcmVkaXJlY3QgbWFwLCBidXQgdGhhdCBpbnRlcmZh
Y2UgZG9lc24ndCBpbXBsZW1lbnQKPiBuZG9feGRwX3htaXQoKT8gUmVqZWN0IHRoZSBpbnNlcnQh
IEV0Yy4KPgo+IFRoYXQgbGFzdCBiaXQgY2FuIGJlIGFkZGVkIGxhdGVyLCBvZiBjb3Vyc2UsIGJ1
dCB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSB3ZQo+IGRlc2lnbiB0aGUgc3VwcG9ydCBpbiBhIHdheSB0
aGF0IGl0IGlzIHBvc3NpYmxlIHRvIGRvIHNvLi4uCj4KPiAtVG9rZQo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
