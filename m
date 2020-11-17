Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FF52B5B62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Nov 2020 09:55:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BEED860F9;
	Tue, 17 Nov 2020 08:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y9gog2ggs4-Y; Tue, 17 Nov 2020 08:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8354786102;
	Tue, 17 Nov 2020 08:55:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6040E1BF341
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 08:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5368720386
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 08:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wv-uqYvQ4asj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Nov 2020 08:55:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 6779D20344
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 08:55:25 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id g7so16888624pfc.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 00:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1OytPDdyf7Cx7RlGoMIDG376V85V7Sf/qh4TOl3J0PI=;
 b=MXjliFwxXvtURvZKislZO/l8/YAK10b2vxeXaqBsOBJ7LG+B+LutUyFqNYsuChdDRI
 YLgDMC+Vv5Juhs4fFRLv3ncEY6dr6EIIvrGKxsA6Wj4iFww7Mt9PaSvtbpTKCCk2jb2p
 5wQK+tCxIf6H19ucFWjgHvL2JNcdQ+Lg1Mre5SsYSJ6Whgjr20pmqE9c5Of+vQvUz5z7
 Q/30rfVz7sY6EPz+LwwmJ86Q4etqQ1N+qowmYy6jhenpxIeJ9xTauJS18EJCHn7UHxVe
 WGQ6XBOFAgvST2AMhGntPcLra7hiMxUE7Gv6AiJbIPXF016ammP0mWdXCLhzVGaxO9ly
 4Ypg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1OytPDdyf7Cx7RlGoMIDG376V85V7Sf/qh4TOl3J0PI=;
 b=qofAy6l68OPubEId88uqNPlnnjOu3BcVQ39SmKPb4NbXKtSKoDq8NTAI6NvmRKdD+M
 mNHPjFZVzGtSYwqGRX70nUXPOjCcWHmc+0QeFMOCafJ+BS9gKabW6Nl2r8cEz2TEyrkI
 D1QN7ctWeVY8zWM3+Gsfcuv+VueZabIqpZIB8p5N3bxmFTXMcnAE27VUEKuwP4n56zgZ
 887eVSmSzY75IoMShap0AplsZWWLNifVuhvC4izvG7/wGEzSBz+8CCEBcXfHHCrx8WVR
 N+MU1/9NV3TiU+lvhVmbr74aPkp3405k85DVlF04MXrTYLmAJod3x7lnKiGus+jA5hgU
 4wJw==
X-Gm-Message-State: AOAM533g7t7Q9rWMEl4dHsX5rqdDK4vVKQ2bjslAqM7ij0r0QggMAb7F
 ZHQGh9ZI16CFy/Kd1xk96mvLYJKOSHM1KEM9OZU=
X-Google-Smtp-Source: ABdhPJy5HJBd3EXmRmg6LTZMhu+k1KD2jUDdBTFncRECIeY45EF4AAzQvwpqdDZmq6laqf2S+w2xvJZ9Vv5I3GMncHg=
X-Received: by 2002:a63:3c10:: with SMTP id j16mr2726953pga.140.1605603324935; 
 Tue, 17 Nov 2020 00:55:24 -0800 (PST)
MIME-Version: 1.0
References: <20201116093452.7541-1-marekx.majtyka@intel.com>
 <875z655t80.fsf@toke.dk>
 <CAJ8uoz1C7-a7A0WJqThomSxYwmdkfLpDyC5YnB8g_J+p486RXQ@mail.gmail.com>
In-Reply-To: <CAJ8uoz1C7-a7A0WJqThomSxYwmdkfLpDyC5YnB8g_J+p486RXQ@mail.gmail.com>
From: Marek Majtyka <alardam@gmail.com>
Date: Tue, 17 Nov 2020 09:55:13 +0100
Message-ID: <CAAOQfrGzfKf-vpaitfC_KLDnWDo_uJFDF_PE5X9RH_G4Yt8QHA@mail.gmail.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
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
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Marek Majtyka <marekx.majtyka@intel.com>,
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

T24gVHVlLCBOb3YgMTcsIDIwMjAgYXQgODozNyBBTSBNYWdudXMgS2FybHNzb24KPG1hZ251cy5r
YXJsc3NvbkBnbWFpbC5jb20+IHdyb3RlOgoKVGhhbmsgeW91IGZvciB5b3VyIHF1aWNrIGFuc3dl
cnMgYW5kIGNvbW1lbnRzLgoKPgo+IE9uIE1vbiwgTm92IDE2LCAyMDIwIGF0IDI6MjUgUE0gVG9r
ZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4KPiA+IGFs
YXJkYW1AZ21haWwuY29tIHdyaXRlczoKPiA+Cj4gPiA+IEZyb206IE1hcmVrIE1hanR5a2EgPG1h
cmVreC5tYWp0eWthQGludGVsLmNvbT4KPiA+ID4KPiA+ID4gSW1wbGVtZW50IHN1cHBvcnQgZm9y
IGNoZWNraW5nIGlmIGEgbmV0ZGV2IGhhcyBuYXRpdmUgWERQIGFuZCBBRl9YRFAgemVybwo+ID4g
PiBjb3B5IHN1cHBvcnQuIFByZXZpb3VzbHksIHRoZXJlIHdhcyBubyB3YXkgdG8gZG8gdGhpcyBv
dGhlciB0aGFuIHRvIHRyeQo+ID4gPiB0byBjcmVhdGUgYW4gQUZfWERQIHNvY2tldCBvbiB0aGUg
aW50ZXJmYWNlIG9yIGxvYWQgYW4gWERQIHByb2dyYW0gYW5kCj4gPiA+IHNlZSBpZiBpdCB3b3Jr
ZWQuIFRoaXMgY29tbWl0IGNoYW5nZXMgdGhpcyBieSBleHRlbmRpbmcgZXhpc3RpbmcKPiA+ID4g
bmV0ZGV2X2ZlYXR1cmVzIGluIHRoZSBmb2xsb3dpbmcgd2F5Ogo+ID4gPiAgKiB4ZHAgICAgICAg
IC0gZnVsbCBYRFAgc3VwcG9ydCAoWERQX3tUWCwgUEFTUywgRFJPUCwgQUJPUlQsIFJFRElSRUNU
fSkKPiA+ID4gICogYWYteGRwLXpjICAtIEFGX1hEUCB6ZXJvIGNvcHkgc3VwcG9ydAo+ID4gPiBO
SUNzIHN1cHBvcnRpbmcgdGhlc2UgZmVhdHVyZXMgYXJlIHVwZGF0ZWQgYnkgdHVybmluZyB0aGUg
Y29ycmVzcG9uZGluZwo+ID4gPiBuZXRkZXYgZmVhdHVyZSBmbGFncyBvbi4KPiA+Cj4gPiBUaGFu
ayB5b3UgZm9yIHdvcmtpbmcgb24gdGhpcyEgVGhlIGxhY2sgb2YgYSB3YXkgdG8gZGlzY292ZXIg
d2hldGhlciBhbgo+ID4gaW50ZXJmYWNlIHN1cHBvcnRzIFhEUCBpcyByZWFsbHkgYW5ub3lpbmcu
Cj4gPgo+ID4gSG93ZXZlciwgSSBkb24ndCB0aGluayBqdXN0IGhhdmluZyB0d28gc2VwYXJhdGUg
bmV0ZGV2IGZlYXR1cmUgZmxhZ3MgZm9yCj4gPiBYRFAgYW5kIEFGX1hEUCBpcyBnb2luZyB0byBj
dXQgaXQuIFdoYXRldmVyIG1lY2hhbmlzbSB3ZSBlbmQgdXAgd2lsbAo+ID4gbmVlZCB0byBiZSBh
YmxlIHRvIGV4cHJlc3MgYXQgbGVhc3QgdGhlIGZvbGxvd2luZywgaW4gYWRkaXRpb24gdG8geW91
cgo+ID4gdHdvIGZsYWdzOgo+ID4KPiA+IC0gV2hpY2ggcmV0dXJuIGNvZGVzIGRvZXMgaXQgc3Vw
cG9ydCAod2l0aCBEUk9QL1BBU1MsIFRYIGFuZCBSRURJUkVDVCBhcwo+ID4gICBzZXBhcmF0ZSBv
cHRpb25zKT8KPiA+IC0gRG9lcyB0aGlzIGludGVyZmFjZSBiZSB1c2VkIGFzIGEgdGFyZ2V0IGZv
ciBYRFBfUkVESVJFQ1QKPiA+ICAgKHN1cHBvcnRlZC9zdXBwb3J0ZWQgYnV0IG5vdCBlbmFibGVk
KT8KPiA+IC0gRG9lcyB0aGUgaW50ZXJmYWNlIHN1cHBvcnQgb2ZmbG9hZGVkIFhEUD8KPgo+IElm
IHdlIHdhbnQgZmVhdHVyZSBkaXNjb3Zlcnkgb24gdGhpcyBsZXZlbCwgd2hpY2ggc2VlbXMgdG8g
YmUgYSBnb29kCj4gaWRlYSBhbmQgZ29hbCB0byBoYXZlLCB0aGVuIGl0IGlzIGEgZGVhZCBlbmQg
dG8gYnVuY2ggYWxsIFhEUCBmZWF0dXJlcwo+IGludG8gb25lLiBCdXQgZm9ydHVuYXRlbHksIHRo
aXMgY2FuIGVhc2lseSBiZSBhZGRyZXNzZWQuCgpEbyB5b3UgdGhpbmsgdGhhdCBpcyBpdCBzdGls
bCBjb25zaWRlcmFibGUgdG8gaGF2ZSBhIHNpbmdsZSBuZXRkZXYKZmxhZyB0aGF0IG1lYW5zICJz
b21lIiBYRFAgZmVhdHVyZSBzdXBwb3J0IHdoaWNoIHdvdWxkIGFjdGl2YXRlIG5ldwpmdXJ0aGVy
IGZ1bmN0aW9uYWxpdGllcz8KCj4KPiA+IFRoYXQncyBhbHJlYWR5IGZpdmUgb3Igc2l4IG1vcmUg
ZmxhZ3MsIGFuZCB3ZSBjYW4ndCBydWxlIG91dCB0aGF0IHdlJ2xsCj4gPiBuZWVkIG1vcmU7IHNv
IEknbSBub3Qgc3VyZSBpZiBqdXN0IGRlZmluaW5nIGZlYXR1cmUgYml0cyBmb3IgYWxsIG9mIHRo
ZW0KPiA+IGlzIGEgZ29vZCBpZGVhLgo+Cj4gSSB0aGluayB0aGlzIGlzIGFuIGltcG9ydGFudCBx
dWVzdGlvbi4gSXMgZXh0ZW5kaW5nIHRoZSBuZXRkZXYKPiBmZWF0dXJlcyBmbGFncyB0aGUgcmln
aHQgd2F5IHRvIGdvPyBJZiBub3QsIGlzIHRoZXJlIHNvbWUgb3RoZXIKPiBpbnRlcmZhY2UgaW4g
dGhlIGtlcm5lbCB0aGF0IGNvdWxkIGJlIHVzZWQvZXh0ZW5kZWQgZm9yIHRoaXM/IElmIG5vbmUK
PiBvZiB0aGVzZSBhcmUgcG9zc2libGUsIHRoZW4gd2UgKHVuZm9ydHVuYXRlbHkpIG5lZWQgYSBu
ZXcgaW50ZXJmYWNlCj4gYW5kIGluIHRoYXQgY2FzZSwgd2hhdCBzaG91bGQgaXQgbG9vayBsaWtl
PwoKVG9rZSwgYXJlIHlvdSB0aGlua2luZyBhYm91dCBhbnkgcGFydGljdWxhciBleGlzdGluZyBp
bnRlcmZhY2Ugb3IgYQpuZXcgc3BlY2lmaWMgb25lPwoKPgo+IFRoYW5rcyBmb3IgdGFraW5nIGEg
bG9vayBhdCB0aGlzIFRva2UuCj4KPiA+IEluIGFkZGl0aW9uLCB3ZSBzaG91bGQgYmUgYWJsZSB0
byBjaGVjayB0aGlzIGluIGEgd2F5IHNvIHdlIGNhbiByZWplY3QKPiA+IFhEUCBwcm9ncmFtcyB0
aGF0IHVzZSBmZWF0dXJlcyB0aGF0IGFyZSBub3Qgc3VwcG9ydGVkLiBFLmcuLCBwcm9ncmFtCj4g
PiB1c2VzIFJFRElSRUNUIHJldHVybiBjb2RlIChvciBoZWxwZXIpLCBidXQgdGhlIGludGVyZmFj
ZSBkb2Vzbid0IHN1cHBvcnQKPiA+IGl0PyBSZWplY3QgYXQgYXR0YWNoL2xvYWQgdGltZSEgT3Ig
dGhlIHVzZXIgYXR0ZW1wdHMgdG8gaW5zZXJ0IGFuCj4gPiBpbnRlcmZhY2UgaW50byBhIHJlZGly
ZWN0IG1hcCwgYnV0IHRoYXQgaW50ZXJmYWNlIGRvZXNuJ3QgaW1wbGVtZW50Cj4gPiBuZG9feGRw
X3htaXQoKT8gUmVqZWN0IHRoZSBpbnNlcnQhIEV0Yy4KPiA+Cj4gPiBUaGF0IGxhc3QgYml0IGNh
biBiZSBhZGRlZCBsYXRlciwgb2YgY291cnNlLCBidXQgd2UgbmVlZCB0byBtYWtlIHN1cmUgd2UK
PiA+IGRlc2lnbiB0aGUgc3VwcG9ydCBpbiBhIHdheSB0aGF0IGl0IGlzIHBvc3NpYmxlIHRvIGRv
IHNvLi4uCj4gPgo+ID4gLVRva2UKPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+ID4g
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
