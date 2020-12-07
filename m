Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC5A2D1B4B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 21:52:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC5B62E294;
	Mon,  7 Dec 2020 20:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K2XnBL3OBGcI; Mon,  7 Dec 2020 20:52:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 009402E278;
	Mon,  7 Dec 2020 20:52:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C9B11BF421
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 20:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 76CCE878E2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 20:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ImkOwbw3F-oE for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 20:52:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com
 [209.85.161.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 43118878DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 20:52:32 +0000 (UTC)
Received: by mail-oo1-f65.google.com with SMTP id f8so3537702oou.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Dec 2020 12:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=RklTgRBKQUgWmR6BHgH9xR8XmPcsLhO51o9sqkCp/H4=;
 b=CMcRNXX+Eon1iKbdZt+vmUOYnSJqG+HqwGVdVe+aILQmnQjMalunxEU/NDO8ZA8bhw
 oMkqduYJa5qu+ygOjqnb850ESiQhSKOg6C4GYXIcQmNuJuLuCRb6d+i3roe3HF7ORaDg
 53tVBOxJc0m7rV0+ff54qh3ACAAY8iq4MhZlR9lhiJ0hdIwgmVSSoYwcBTsvCO9EzrhL
 TpzwyMoN7a5OrrWqcmWZ4h2040CcnBtzYJZaXqJi/tJliuy8g3yJgnJFkDeldkvqVuHp
 zkc+TyC9A/c41UPGbHtETHtxN9m7BlbEiuTpmuFHtRu7kPEVj7WDWCIKxP0tZB89UEMm
 WyJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=RklTgRBKQUgWmR6BHgH9xR8XmPcsLhO51o9sqkCp/H4=;
 b=j8pPY2a1nC7h8hwfTJIW+E98KPxxJSbAD6vVoanQffmenxyx5i3KM4fwVanPWJ1MAy
 xwpxM0/0eH4G3VpGwc5Y8Q8qrbSiG9yLkvwi4yki7OzFnxyvEjapfzt+BegaVF5Rilj6
 sx++TcOOgSPOjujCnbiLr5CCd5PCzy0O9rbmVdCDEe2faa9er8gB+gTFtUUg/iai64H+
 TJadQbuiApnbqOQgTeOOjEoZQJ9//NVdLOxZ7ZyXxmGZlaTbzWdeAJquX58j3UgOUP7P
 pGWcd/fdANDj+w7QIw9Wmy9DauCa2wBLR0+s6/nQ0uQbAOg2OZCQxBEBKsVG+MtzkT7e
 LnmQ==
X-Gm-Message-State: AOAM533EaIhFDGodHPHVcVsEKxc88MYoea/CSB+JpSsTxsPD3TbmzrK8
 khxXYQYj9YNrUD8Ax2LML2Y=
X-Google-Smtp-Source: ABdhPJyWjCKxK5nBqzlnyipZHT5KIFh9+CgOw05Al+fMEW8GQsfv/bpaWw+rziV0qJ6fo9SubFtHog==
X-Received: by 2002:a4a:a7c5:: with SMTP id n5mr60131oom.9.1607374351459;
 Mon, 07 Dec 2020 12:52:31 -0800 (PST)
Received: from localhost ([184.21.204.5])
 by smtp.gmail.com with ESMTPSA id i24sm463017oot.42.2020.12.07.12.52.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 12:52:30 -0800 (PST)
Date: Mon, 07 Dec 2020 12:52:22 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, 
 Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
In-Reply-To: <20201207135433.41172202@carbon>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
Mime-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiBPbiBGcmksIDQgRGVjIDIwMjAgMTY6MjE6
MDggKzAxMDAKPiBEYW5pZWwgQm9ya21hbm4gPGRhbmllbEBpb2dlYXJib3gubmV0PiB3cm90ZToK
PiAKPiA+IE9uIDEyLzQvMjAgMTo0NiBQTSwgTWFjaWVqIEZpamFsa293c2tpIHdyb3RlOgo+ID4g
PiBPbiBGcmksIERlYyAwNCwgMjAyMCBhdCAwMToxODozMVBNICswMTAwLCBUb2tlIEjDuGlsYW5k
LUrDuHJnZW5zZW4gd3JvdGU6ICAKPiA+ID4+IGFsYXJkYW1AZ21haWwuY29tIHdyaXRlczogIAo+
ID4gPj4+IEZyb206IE1hcmVrIE1hanR5a2EgPG1hcmVreC5tYWp0eWthQGludGVsLmNvbT4KPiA+
ID4+Pgo+ID4gPj4+IEltcGxlbWVudCBzdXBwb3J0IGZvciBjaGVja2luZyB3aGF0IGtpbmQgb2Yg
eGRwIGZ1bmN0aW9uYWxpdHkgYSBuZXRkZXYKPiA+ID4+PiBzdXBwb3J0cy4gUHJldmlvdXNseSwg
dGhlcmUgd2FzIG5vIHdheSB0byBkbyB0aGlzIG90aGVyIHRoYW4gdG8gdHJ5Cj4gPiA+Pj4gdG8g
Y3JlYXRlIGFuIEFGX1hEUCBzb2NrZXQgb24gdGhlIGludGVyZmFjZSBvciBsb2FkIGFuIFhEUCBw
cm9ncmFtIGFuZCBzZWUKPiA+ID4+PiBpZiBpdCB3b3JrZWQuIFRoaXMgY29tbWl0IGNoYW5nZXMg
dGhpcyBieSBhZGRpbmcgYSBuZXcgdmFyaWFibGUgd2hpY2gKPiA+ID4+PiBkZXNjcmliZXMgYWxs
IHhkcCBzdXBwb3J0ZWQgZnVuY3Rpb25zIG9uIHByZXR0eSBkZXRhaWxlZCBsZXZlbDogIAo+ID4g
Pj4KPiA+ID4+IEkgbGlrZSB0aGUgZGlyZWN0aW9uIHRoaXMgaXMgZ29pbmchIDopCj4gCj4gKE1l
IHRvbywgZG9uJ3QgZ2V0IGRpc2NvdXJhZ2VkIGJ5IG91ciBuaXRwaWNraW5nLCBrZWVwIHdvcmtp
bmcgb24gdGhpcyEgOi0pKQo+IAo+ID4gPj4gIAo+ID4gPj4+ICAgLSBhYm9ydGVkCj4gPiA+Pj4g
ICAtIGRyb3AKPiA+ID4+PiAgIC0gcGFzcwo+ID4gPj4+ICAgLSB0eCAgCj4gPiAKPiA+IEkgc3Ry
b25nbHkgdGhpbmsgd2Ugc2hvdWxkIF9ub3RfIG1lcmdlIGFueSBuYXRpdmUgWERQIGRyaXZlciBw
YXRjaHNldAo+ID4gdGhhdCBkb2VzIG5vdCBzdXBwb3J0L2ltcGxlbWVudCB0aGUgYWJvdmUgcmV0
dXJuIGNvZGVzLiAKPiAKPiBJIGFncmVlLCB3aXRoIGFib3ZlIHN0YXRlbWVudC4KPiAKPiA+IENv
dWxkIHdlIGluc3RlYWQgZ3JvdXAgdGhlbSB0b2dldGhlciBhbmQgY2FsbCB0aGlzIHNvbWV0aGlu
ZyBsaWtlCj4gPiBYRFBfQkFTRSBmdW5jdGlvbmFsaXR5IHRvIG5vdCBnaXZlIGEgd3JvbmcgaW1w
cmVzc2lvbj8KPiAKPiBJIGRpc2FncmVlLiAgSSBjYW4gYWNjZXB0IHRoYXQgWERQX0JBU0UgaW5j
bHVkZSBhYm9ydGVkK2Ryb3ArcGFzcy4KPiAKPiBJIHRoaW5rIHdlIG5lZWQgdG8ga2VlcCBYRFBf
VFggYWN0aW9uIHNlcGFyYXRlLCBiZWNhdXNlIEkgdGhpbmsgdGhhdAo+IHRoZXJlIGFyZSB1c2Ut
Y2FzZXMgd2hlcmUgdGhlIHdlIHdhbnQgdG8gZGlzYWJsZSBYRFBfVFggZHVlIHRvIGVuZC11c2Vy
Cj4gcG9saWN5IG9yIGhhcmR3YXJlIGxpbWl0YXRpb25zLgoKSG93IGFib3V0IHdlIGRpc2NvdmVy
IHRoaXMgYXQgbG9hZCB0aW1lIHRob3VnaC4gTWVhbmluZyBpZiB0aGUgcHJvZ3JhbQpkb2Vzbid0
IHVzZSBYRFBfVFggdGhlbiB0aGUgaGFyZHdhcmUgY2FuIHNraXAgcmVzb3VyY2UgYWxsb2NhdGlv
bnMgZm9yCml0LiBJIHRoaW5rIHdlIGNvdWxkIGhhdmUgdmVyaWZpZXIgb3IgZXh0cmEgcGFzcyBk
aXNjb3ZlciB0aGUgdXNlIG9mClhEUF9UWCBhbmQgdGhlbiBwYXNzIGEgYml0IGRvd24gdG8gZHJp
dmVyIHRvIGVuYWJsZS9kaXNhYmxlIFRYIGNhcHMuCgo+IAo+IFVzZS1jYXNlKDEpOiBDbG91ZC1w
cm92aWRlciB3YW50IHRvIGdpdmUgY3VzdG9tZXJzIChydW5uaW5nIFZNcykgYWJpbGl0eQo+IHRv
IGxvYWQgWERQIHByb2dyYW0gZm9yIEREb1MgcHJvdGVjdGlvbiAob25seSksIGJ1dCBkb24ndCB3
YW50IHRvIGFsbG93Cj4gY3VzdG9tZXIgdG8gdXNlIFhEUF9UWCAodGhhdCBjYW4gaW1wbGVtZW50
IExCIG9yIGNoZWF0IHRoZWlyIFZNCj4gaXNvbGF0aW9uIHBvbGljeSkuCgpOb3QgZm9sbG93aW5n
LiBXaGF0IGludGVyZmFjZSBkbyB0aGV5IHdhbnQgdG8gYWxsb3cgbG9hZGluZyBvbj8gSWYgaXRz
CnRoZSBWTSBpbnRlcmZhY2UgdGhlbiBJIGRvbid0IHNlZSBob3cgaXQgbWF0dGVycy4gRnJvbSBv
dXRzaWRlIHRoZQpWTSB0aGVyZSBzaG91bGQgYmUgbm8gd2F5IHRvIGRpc2NvdmVyIGlmIGl0cyBk
b25lIGluIFZNIG9yIGluIHRjIG9yCnNvbWUgb3RoZXIgc3RhY2suCgpJZiBpdHMgZG9pbmcgc29t
ZSBvbmxvYWRpbmcvb2ZmbG9hZGluZyBJIHdvdWxkIGFzc3VtZSB0aGV5IG5lZWQgdG8KZW5zdXJl
IHRoZSBpc29sYXRpb24sIGV0Yy4gaXMgc3RpbGwgbWFpbnRhaW5lZCBiZWNhdXNlIHlvdSBjYW4n
dApsZXQgb25lIFZNcyBwcm9ncmFtIHdvcmsgb24gb3RoZXIgVk1zIHBhY2tldHMgc2FmZWx5LgoK
U28gd2hhdCBkaWQgSSBtaXNzLCBhYm92ZSBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gbWUuCgo+IAo+
IFVzZS1jYXNlKDIpOiBEaXNhYmxlIFhEUF9UWCBvbiBhIGRyaXZlciB0byBzYXZlIGhhcmR3YXJl
IFRYLXF1ZXVlCj4gcmVzb3VyY2VzLCBhcyB0aGUgdXNlLWNhc2UgaXMgb25seSBERG9TLiAgVG9k
YXkgd2UgaGF2ZSB0aGlzIHByb2JsZW0KPiB3aXRoIHRoZSBpeGdiZSBoYXJkd2FyZSwgdGhhdCBj
YW5ub3QgbG9hZCBYRFAgcHJvZ3JhbXMgb24gc3lzdGVtcyB3aXRoCj4gbW9yZSB0aGFuIDE5MiBD
UFVzLgoKVGhlIGl4Z2JlIGlzc3VlcyBpcyBqdXN0IGEgYnVnIG9yIG1pc3NpbmctZmVhdHVyZSBp
biBteSBvcGluaW9uLgoKSSB0aGluayB3ZSBqdXN0IGRvY3VtZW50IHRoYXQgWERQX1RYIGNvbnN1
bWVzIHJlc291cmNlcyBhbmQgaWYgdXNlcnMKY2FyZSB0aGV5IHNob3VsZG4ndCB1c2UgWERfVFgg
aW4gcHJvZ3JhbXMgYW5kIGluIHRoYXQgY2FzZSBoYXJkd2FyZQpzaG91bGQgdmlhIHByb2dyYW0g
ZGlzY292ZXJ5IG5vdCBhbGxvY2F0ZSB0aGUgcmVzb3VyY2UuIFRoaXMgc2VlbXMKY2xlYW5lciBp
biBteSBvcGluaW9uIHRoZW4gbW9yZSBiaXRzIGZvciBmZWF0dXJlcy4KCj4gCj4gCj4gPiBJZiB0
aGlzIGlzIHByb3Blcmx5IGRvY3VtZW50ZWQgdGhhdCB0aGVzZSBhcmUgYmFzaWMgbXVzdC1oYXZl
Cj4gPiBfcmVxdWlyZW1lbnRzXywgdGhlbiB1c2VycyBhbmQgZHJpdmVyIGRldmVsb3BlcnMgYm90
aCBrbm93IHdoYXQgdGhlCj4gPiBleHBlY3RhdGlvbnMgYXJlLgo+IAo+IFdlIGNhbiBzdGlsbCBk
b2N1bWVudCB0aGF0IFhEUF9UWCBpcyBhIG11c3QtaGF2ZSByZXF1aXJlbWVudCwgd2hlbiBhCj4g
ZHJpdmVyIGltcGxlbWVudHMgWERQLgoKKzEKCj4gCj4gCj4gPiA+Pj4gICAtIHJlZGlyZWN0ICAK
PiA+ID4+Cj4gCj4gCj4gLS0gCj4gQmVzdCByZWdhcmRzLAo+ICAgSmVzcGVyIERhbmdhYXJkIEJy
b3Vlcgo+ICAgTVNjLkNTLCBQcmluY2lwYWwgS2VybmVsIEVuZ2luZWVyIGF0IFJlZCBIYXQKPiAg
IExpbmtlZEluOiBodHRwOi8vd3d3LmxpbmtlZGluLmNvbS9pbi9icm91ZXIKPiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
