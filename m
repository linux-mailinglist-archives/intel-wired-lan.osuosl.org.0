Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2194E2D5D3C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 15:14:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 650DE872A0;
	Thu, 10 Dec 2020 14:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I3l8Ul6WPiFt; Thu, 10 Dec 2020 14:14:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACC6E8729E;
	Thu, 10 Dec 2020 14:14:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C9411BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 14:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3785E8729F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 14:14:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ScnTtVKniQA6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Dec 2020 14:14:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5EC528729E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 14:14:30 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q22so4172968pfk.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 06:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=utkMYoYvuRBOSIRlR5sdFRBXiLKx3YQ78N2p3n8VR0g=;
 b=oSgw2doP5ezYbWSUBM//tuFmtDNlxGa4WraoGNsoaqTHZcqQnk7XCjTDPP2BrDatAr
 ab1gxNeJbQDEwXK63hMFS94d1YXRxRNfTZ2+DYkB0qy2mXA1qba/m2R8Az3YDvQKVto4
 o3R72tb7u3z0r3bwZITkWSy8Q1G3j30zTimrcSGHgoeebYtst1xjghLo7przTr3iuNzz
 7DSAH2m8Gfw/ssB2wO4X0PBTXBOj5Q5qB4ARxxyFWHGtl/Kglyh2A6jQYdLAb6Np4bkW
 SrBzTD4C7SE1qam6dz1d+PI3kw/8FWM5UVohpbcT12l91o/dmVKFSVBWPgu4pIww4pxf
 oD2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=utkMYoYvuRBOSIRlR5sdFRBXiLKx3YQ78N2p3n8VR0g=;
 b=jY4B4FzzDgmSfxgg/OKEP3K9R3zcgiEgAYhI++i+MhbtIuBs1O1kMrM8IWPMNlR87x
 YKyJdFrNs4tb7wMdc1pQfKh+/Y79+8W2RqHrp3bWpVYGTt4Tfegd6J2sVB9Hj8rmpFRt
 umQoB4ctqoboYfbxclT6GGv5NZrI267ZUnrqFEwEHe7kcGEkRRw2JXk+ESQe7uS0GDLe
 YNDk0FqNwxo3g4JIofWNEbkWtGoyhbvFIMlWgoyT2ULeO/jLCJq7M+Ln7rlu3G9fKEuO
 B7yHbIyknhsPJ2d3Cgu9jrujRrTpT0jkW9+sMdEcHM2Nzijy/3IJ/ZkFE7bDp4dC/WS6
 ukHQ==
X-Gm-Message-State: AOAM530iZ5oNX613F3XjW00GNYJW1oywvtKFXwyIQAMy61pGN8v1TFYy
 uRzRV7ionacq76RHlBV670tV+tUdHiXwHvRRr1E=
X-Google-Smtp-Source: ABdhPJwpOKGEkBmzqiZ+xs5j8cbNTVNpz/q10l+ER6H65/hTzywjfD7lj5MPPJUCMpq0SpUqCiNOWUA5wEg0gPotJhE=
X-Received: by 2002:a62:2683:0:b029:19a:9594:1abe with SMTP id
 m125-20020a6226830000b029019a95941abemr6989185pfm.19.1607609669881; Thu, 10
 Dec 2020 06:14:29 -0800 (PST)
MIME-Version: 1.0
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com> <20201209125223.49096d50@carbon>
 <6913010d-2fd6-6713-94e9-8f5b8ad4b708@gmail.com>
 <20201210143211.2490f7f4@carbon>
In-Reply-To: <20201210143211.2490f7f4@carbon>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Thu, 10 Dec 2020 15:14:18 +0100
Message-ID: <CAJ8uoz25rtO63-4nOSV-yr8bORNbNSquiBBWiEouLs-ZUv2o=A@mail.gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Subject: Re: [Intel-wired-lan] Explaining XDP redirect bulk size design
 (Was: [PATCH v2 bpf 1/5] net: ethtool: add xdp properties flag set)
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
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, "Michael S. Tsirkin" <mst@redhat.com>,
 Network Development <netdev@vger.kernel.org>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Marek Majtyka <marekx.majtyka@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Marek Majtyka <alardam@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Frey Alfredsson <freysteinn@freysteinn.com>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>, bpf <bpf@vger.kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBEZWMgMTAsIDIwMjAgYXQgMjozMiBQTSBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyCjxi
cm91ZXJAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIDkgRGVjIDIwMjAgMDg6NDQ6MzMg
LTA3MDAKPiBEYXZpZCBBaGVybiA8ZHNhaGVybkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gPiBPbiAx
Mi85LzIwIDQ6NTIgQU0sIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4gPiA+IEJ1dCBJ
IGhhdmUgcmVkZXNpZ25lZCB0aGUgbmRvX3hkcF94bWl0IGNhbGwgdG8gdGFrZSBhIGJ1bGsgb2Yg
cGFja2V0cwo+ID4gPiAodXAtdG8gMTYpIHNvIGl0IHNob3VsZCBub3QgYmUgYSBwcm9ibGVtIHRv
IHNvbHZlIHRoaXMgYnkgc2hhcmluZwo+ID4gPiBUWC1xdWV1ZSBhbmQgdGFsa2luZyBhIGxvY2sg
cGVyIDE2IHBhY2tldHMuICBJIHN0aWxsIHJlY29tbWVuZCB0aGF0LAo+ID4gPiBmb3IgZmFsbGJh
Y2sgY2FzZSwgIHlvdSBhbGxvY2F0ZWQgYSBudW1iZXIgYSBUWC1xdWV1ZSBhbmQgZGlzdHJpYnV0
ZQo+ID4gPiB0aGlzIGFjcm9zcyBDUFVzIHRvIGF2b2lkIGhpdHRpbmcgYSBjb25nZXN0ZWQgbG9j
ayAoYWJvdmUgbWVhc3VyZW1lbnRzCj4gPiA+IGFyZSB0aGUgb3B0aW1hbCBub24tY29uZ2VzdGVk
IGF0b21pYyBsb2NrIG9wZXJhdGlvbikKPiA+Cj4gPiBJIGhhdmUgYmVlbiBtZWFuaW5nIHRvIGFz
ayB5b3Ugd2h5IDE2IGZvciB0aGUgWERQIGJhdGNoaW5nPyBJZiB0aGUKPiA+IG5ldGRldiBidWRn
ZXQgaXMgNjQsIHdoeSBub3Qgc29tZXRoaW5nIGhpZ2hlciBsaWtlIDMyIG9yIDY0Pwo+Cj4gVGhh
bmtzIHlvdSBmb3IgYXNraW5nIGFzIHRoZXJlIGFyZSBtdWx0aXBsZSBnb29kIHJlYXNvbnMgYW5k
Cj4gY29uc2lkZXJhdGlvbiBmb3IgdGhpcyAxNiBiYXRjaCBzaXplLiAgTm90aWNlIGNwdW1hcCBo
YXZlIGJhdGNoIHNpemUgOCwKPiB3aGljaCBpcyBhbHNvIGFuIGV4cGxpY2l0IGNob2ljZS4gIEFu
ZCBBRl9YRFAgd2VudCBpbiB0aGUgd3JvbmcKPiBkaXJlY3Rpb24gSU1ITyBhbmQgSSB0aGluayBo
YXZlIDI1Ni4gIEkgZGVzaWduZWQgdGhpcyB0byBiZSBhIGNob2ljZSBpbgo+IHRoZSBtYXAgY29k
ZSwgZm9yIHRoZSBsZXZlbCBvZiBidWxraW5nIGl0IG5lZWRzL3dhbnRzLgoKRllJLCBhcyBmYXIg
YXMgSSBrbm93LCB0aGVyZSBpcyBub3RoaW5nIGluIEFGX1hEUCB0aGF0IHNheXMgYnVsa2luZwpz
aG91bGQgYmUgMjU2LiBUaGVyZSBpcyBhIDI1NiBudW1iZXIgaW4gdGhlIGk0MGUgZHJpdmVyIHRo
YXQgc3RhdGVzCnRoZSBtYXhpbXVtIG51bWJlciBvZiBwYWNrZXRzIHRvIGJlIHNlbnQgd2l0aGlu
IG9uZSBuYXBpX3BvbGwgbG9vcC4KQnV0IHRoaXMgaXMganVzdCBhIG1heGltdW0gbnVtYmVyIGFu
ZCBvbmx5IGZvciB0aGF0IGRyaXZlci4gKEluIGNhc2UKeW91IHdvbmRlciwgdGhhdCBudW1iZXIg
d2FzIGluaGVyaXRlZCBmcm9tIHRoZSBvcmlnaW5hbCBza2IgVHgKaW1wbGVtZW50YXRpb24gaW4g
dGhlIGRyaXZlci4pIFRoZSBhY3R1YWwgYmF0Y2ggc2l6ZSBpcyBjb250cm9sbGVkIGJ5CnRoZSBh
cHBsaWNhdGlvbi4gSWYgaXQgcHV0cyAxIHBhY2tldCBpbiB0aGUgVHggcmluZyBhbmQgY2FsbHMg
c2VuZCgpLAp0aGUgYmF0Y2ggc2l6ZSB3aWxsIGJlIDEuIElmIGl0IHB1dHMgMTI4IHBhY2tldHMg
aW4gdGhlIFR4IHJpbmcgYW5kCmNhbGxzIHNlbmQoKSwgeW91IGdldCBhIGJhdGNoIHNpemUgb2Yg
MTI4LCBhbmQgc28gb24uIEl0IGlzIGZsZXhpYmxlLApzbyB5b3UgY2FuIHRyYWRlLW9mZiBsYXRl
bmN5IHdpdGggdGhyb3VnaHB1dCBpbiB0aGUgd2F5IHRoZQphcHBsaWNhdGlvbiBkZXNpcmVzLiBS
eCBiYXRjaCBzaXplIGhhcyBhbHNvIGJlY29tZSBmbGV4aWJsZSBub3cgd2l0aAp0aGUgaW50cm9k
dWN0aW9uIG9mIEJqw7ZybidzIHByZWZlcl9idXN5X3BvbGwgcGF0Y2ggc2V0IFsxXS4KClsxXSBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMDExMzAxODUyMDUuMTk2MDI5LTEtYmpv
cm4udG9wZWxAZ21haWwuY29tLwoKPiBUaGUgbG93IGxldmVsIGV4cGxhbmF0aW9uIGlzIHRoYXQg
dGhlc2UgOCBhbmQgMTYgYmF0Y2ggc2l6ZXMgYXJlCj4gb3B0aW1pemVkIHRvd2FyZHMgY2FjaGUg
c2l6ZXMgYW5kIEludGVsJ3MgTGluZS1GaWxsLUJ1ZmZlciAocHJlZmV0Y2hlcgo+IHdpdGggMTAg
ZWxlbWVudHMpLiAgSSdtIGJldHRpbmcgb24gdGhhdCBtZW1vcnkgYmFja2luZyB0aGVzZSA4IG9y
IDE2Cj4gcGFja2V0cyBoYXZlIGhpZ2hlciBjaGFuY2UgdG8gcmVtYWluL2JlaW5nIGluIGNhY2hl
LCBhbmQgSSBjYW4gcHJlZmV0Y2gKPiB0aGVtIHdpdGhvdXQgZXZpY3RpbmcgdGhlbSBmcm9tIGNh
Y2hlIGFnYWluLiAgSW4gc29tZSBjYXNlcyB0aGUgcG9pbnRlcgo+IHRvIHRoZXNlIHBhY2tldHMg
YXJlIHF1ZXVlZCBpbnRvIGEgcHRyX3JpbmcsIGFuZCBpdCBpcyBtb3JlIG9wdGltYWwgdG8KPiB3
cml0ZSBjYWNoZWxpbmUgc2l6ZXMgMSAoOCBwb2ludGVycykgb3IgMiAoMTYgcG9pbnRlcnMpIGlu
dG8gdGhlIHB0cl9yaW5nLgo+Cj4gVGhlIGdlbmVyYWwgZXhwbGFuYXRpb24gaXMgbXkgZ29hbCB0
byBkbyBidWxraW5nIHdpdGhvdXQgYWRkaW5nIGxhdGVuY3kuCj4gVGhpcyBpcyBleHBsaWNpdGx5
IHN0YXRlZCBpbiBteSBwcmVzZW50YXRpb25bMV0gYXMgb2YgRmViIDIwMTYsIHNsaWRlIDIwLgo+
IFN1cmUsIHlvdS93ZSBjYW4gbGlrZWx5IG1ha2UgdGhlIG1pY3JvLWJlbmNobWFya3MgbG9vayBi
ZXR0ZXIgYnkgdXNpbmcKPiA2NCBiYXRjaCBzaXplLCBidXQgdGhhdCB3aWxsIGludHJvZHVjZSBh
ZGRlZCBsYXRlbmN5IGFuZCBsaWtlbHkgc2hvb3QKPiBvdXItc2VsdmVzIGluIHRoZSBmb290IGZv
ciByZWFsIHdvcmtsb2Fkcy4gIFdpdGggZXhwZXJpZW5jZSBmcm9tCj4gYnVmZmVyYmxvYXQgYW5k
IHJlYWwgbmV0d29ya3MsIHdlIGtub3cgdGhhdCBtYXNzaXZlIFRYIGJ1bGtpbmcgaGF2ZSBiYWQK
PiBlZmZlY3RzLiAgU3RpbGwgWERQLXJlZGlyZWN0IGRvZXMgbWFzc2l2ZSBidWxraW5nIChOSUMg
Zmx1c2ggaXMgYWZ0ZXIKPiBmdWxsIDY0IGJ1ZGdldCkgYW5kIHdlIGRvbid0IGhhdmUgcHVzaGJh
Y2sgb3IgYSBxdWV1ZSBtZWNoYW5pc20gKHNvIEkKPiBrbm93IHdlIGFyZSBhbHJlYWR5IHNob290
aW5nIG91cnNlbHZlcyBpbiB0aGUgZm9vdCkgLi4uICBGb3J0dW5hdGVseSB3ZQo+IG5vdyBoYXZl
IGEgUGhEIHN0dWRlbnQgd29ya2luZyBvbiBxdWV1aW5nIGZvciBYRFAuCj4KPiBJdCBpcyBhbHNv
IGltcG9ydGFudCB0byB1bmRlcnN0YW5kIHRoYXQgdGhpcyBpcyBhbiBhZGFwdGl2ZSBidWxraW5n
Cj4gc2NoZW1lLCB3aGljaCBjb21lcyBmcm9tIE5BUEkuICBXZSBkb24ndCB3YWl0IGZvciBwYWNr
ZXRzIGFycml2aW5nCj4gc2hvcnRseSwgd2UgcGlja3VwIHdoYXQgTklDIGhhdmUgYXZhaWxhYmxl
LCBidXQgYnkgb25seSB0YWtpbmcgOCBvciAxNgo+IHBhY2tldHMgKGluc3RlYWQgb2YgZW1wdHlp
bmcgdGhlIGVudGlyZSBSWC1xdWV1ZSksIGFuZCB0aGVuIHNwZW5kaW5nCj4gc29tZSB0aW1lIHRv
IHNlbmQgdGhlbSBhbG9uZywgSSdtIGhvcGluZyB0aGF0IE5JQyBjb3VsZCBoYXZlIGdvdHRlbgo+
IHNvbWUgbW9yZSBmcmFtZS4gIEZvciBjcHVtYXAgYW5kIHZldGggKGluLXNvbWUtY2FzZXMpIHRo
ZXkgY2FuIHN0YXJ0IHRvCj4gY29uc3VtZSBwYWNrZXRzIGZyb20gdGhlc2UgYmF0Y2hlcywgYnV0
IE5JQyBkcml2ZXJzIGdldHMgWERQX1hNSVRfRkxVU0gKPiBzaWduYWwgYXQgTkFQSS1lbmQgKHhk
cF9kb19mbHVzaCkuIFN0aWxsIGRlc2lnbiBhbGxvd3MgTklDIGRyaXZlcnMgdG8KPiB1cGRhdGUg
dGhlaXIgaW50ZXJuYWwgcXVldWUgc3RhdGUgKGFuZCBCUUwpLCBhbmQgaWYgaXQgZ2V0cyBjbG9z
ZSB0bwo+IGZ1bGwgdGhleSBjYW4gY2hvb3NlIHRvIGZsdXNoL2Rvb3JiZWxsIHRoZSBOSUMgZWFy
bGllci4gIFdoZW4gZG9pbmcKPiBxdWV1aW5nIGZvciBYRFAgd2UgbmVlZCB0byBleHBvc2UgdGhl
c2UgTklDIHF1ZXVlIHN0YXRlcywgYW5kIGhhdmluZyA0Cj4gY2FsbHMgd2l0aCAxNiBwYWNrZXRz
ICg2NCBidWRnZXQpIGFsc28gZ2l2ZXMgdXMgbW9yZSBjaGFuY2VzIHRvIGdldCBOSUMKPiBxdWV1
ZSBzdGF0ZSBpbmZvIHdoaWNoIHRoZSBOSUMgYWxyZWFkeSB0b3VjaC4KPgo+Cj4gWzFdIGh0dHBz
Oi8vcGVvcGxlLm5ldGZpbHRlci5vcmcvaGF3ay9wcmVzZW50YXRpb25zL2RldmNvbmYyMDE2L25l
dF9zdGFja19jaGFsbGVuZ2VzXzEwMEdfRmViMjAxNi5wZGYKPiAtLQo+IEJlc3QgcmVnYXJkcywK
PiAgIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPiAgIE1TYy5DUywgUHJpbmNpcGFsIEtlcm5lbCBF
bmdpbmVlciBhdCBSZWQgSGF0Cj4gICBMaW5rZWRJbjogaHR0cDovL3d3dy5saW5rZWRpbi5jb20v
aW4vYnJvdWVyCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
