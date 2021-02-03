Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5ED30E069
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Feb 2021 18:02:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EEB7860F0;
	Wed,  3 Feb 2021 17:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id csHbzo-hgteK; Wed,  3 Feb 2021 17:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 53A09860B2;
	Wed,  3 Feb 2021 17:02:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A69061BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 17:02:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9CC6585FD6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 17:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 48xRkGkkvE8t for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Feb 2021 17:02:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0626285DB1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 17:02:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6DB3164E93;
 Wed,  3 Feb 2021 17:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612371755;
 bh=VKlyI8b+fpkfSoN6/xIrc7UXrAP5NPn2KWdsr8h5z7E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SltDl5y5XIoww4RrGqq40W77bU45qMMjMnwNv9bTLp5SR68zkH5OlSQG33smAlZxh
 QbMHlhAaM9mF6entY66XsG09qJYcMvfD5VFVggAJcwbhfnVeWWJz7Myqjlbayzg/8v
 WPNS4z+2+LOuD5hPZaExphTDbjldgQW3CbRHONHyxoscIXBj/EMgjXYJh9NEHb45iV
 PLYWiCn0hv/xPWAVp6edgIPfOLsLaocsZGrxJqNGAGVmNfJzveW++3p3hToy0WB6B8
 Q5frdGjYnaVF3x3++hIZiskiRUJGvDayEobnUYFade2Y7pW+5RpDriCdQPb4ksKLEl
 WVo6NBVMlqvgw==
Date: Wed, 3 Feb 2021 09:02:32 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Marek Majtyka <alardam@gmail.com>
Message-ID: <20210203090232.4a259958@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAAOQfrGqcsn3wu5oxzHYxtE8iK3=gFdTka5HSh5Fe9Hc6HWRWA@mail.gmail.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com>
 <20201209125223.49096d50@carbon>
 <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
 <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
 <cb6b6f50-7cf1-6519-a87a-6b0750c24029@gmail.com>
 <f4eb614ac91ee7623d13ea77ff3c005f678c512b.camel@kernel.org>
 <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
 <6f8c23d4ac60525830399754b4891c12943b63ac.camel@kernel.org>
 <CAAOQfrHN1-oHmbOksDv-BKWv4gDF2zHZ5dTew6R_QTh6s_1abg@mail.gmail.com>
 <87h7mvsr0e.fsf@toke.dk>
 <CAAOQfrHA+-BsikeQzXYcK_32BZMbm54x5p5YhAiBj==uaZvG1w@mail.gmail.com>
 <87bld2smi9.fsf@toke.dk>
 <20210202113456.30cfe21e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAAOQfrGqcsn3wu5oxzHYxtE8iK3=gFdTka5HSh5Fe9Hc6HWRWA@mail.gmail.com>
MIME-Version: 1.0
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>, hawk@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, Saeed Mahameed <saeed@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 jeffrey.t.kirsher@intel.com, David Ahern <dsahern@gmail.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "David S.
 Miller" <davem@davemloft.net>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAzIEZlYiAyMDIxIDEzOjUwOjU5ICswMTAwIE1hcmVrIE1hanR5a2Egd3JvdGU6Cj4g
T24gVHVlLCBGZWIgMiwgMjAyMSBhdCA4OjM0IFBNIEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5l
bC5vcmc+IHdyb3RlOgo+ID4gT24gVHVlLCAwMiBGZWIgMjAyMSAxMzowNTozNCArMDEwMCBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6ICAKPiA+ID4gQXdlc29tZSEgQW5kIHNvcnJ5IGZv
ciBub3QgcmVwbHlpbmcgc3RyYWlnaHQgYXdheSAtIEkgaGF0ZSBpdCB3aGVuIEkKPiA+ID4gc2Vu
ZCBvdXQgc29tZXRoaW5nIG15c2VsZiBhbmQgcmVjZWl2ZSBubyByZXBsaWVzLCBzbyBJIHN1cHBv
c2UgSSBzaG91bGQKPiA+ID4gZ2V0IGJldHRlciBhdCBub3QgZG9pbmcgdGhhdCBteXNlbGYgOikK
PiA+ID4KPiA+ID4gQXMgZm9yIHRoZSBpbmNsdXNpb24gb2YgdGhlIFhEUF9CQVNFIC8gWERQX0xJ
TUlURURfQkFTRSBzZXRzICh3aGljaCBJCj4gPiA+IGp1c3QgcmVhbGlzZWQgSSBkaWRuJ3QgcmVw
bHkgdG8pLCBJIGFtIGZpbmUgd2l0aCBkZWZpbmluZyBYRFBfQkFTRSBhcyBhCj4gPiA+IHNob3J0
Y3V0IGZvciBUWC9BQk9SVEVEL1BBU1MvRFJPUCwgYnV0IHRoaW5rIHdlIHNob3VsZCBza2lwCj4g
PiA+IFhEUF9MSU1JVEVEX0JBU0UgYW5kIGluc3RlYWQgcmVxdWlyZSBhbGwgbmV3IGRyaXZlcnMg
dG8gaW1wbGVtZW50IHRoZQo+ID4gPiBmdWxsIFhEUF9CQVNFIHNldCBzdHJhaWdodCBhd2F5LiBB
cyBsb25nIGFzIHdlJ3JlIHRhbGtpbmcgYWJvdXQKPiA+ID4gZmVhdHVyZXMgKmltcGxlbWVudGVk
KiBieSB0aGUgZHJpdmVyLCBhdCBsZWFzdDsgaS5lLiwgaXQgc2hvdWxkIHN0aWxsIGJlCj4gPiA+
IHBvc3NpYmxlIHRvICpkZWFjdGl2YXRlKiBYRFBfVFggaWYgeW91IGRvbid0IHdhbnQgdG8gdXNl
IHRoZSBIVwo+ID4gPiByZXNvdXJjZXMsIGJ1dCBJIGRvbid0IHRoaW5rIHRoZXJlJ3MgbXVjaCBi
ZW5lZml0IGZyb20gZGVmaW5pbmcgdGhlCj4gPiA+IExJTUlURURfQkFTRSBzZXQgYXMgYSBzaG9y
dGN1dCBmb3IgdGhpcyBtb2RlLi4uICAKPiA+Cj4gPiBJIHN0aWxsIGhhdmUgbWl4ZWQgZmVlbGlu
Z3MgYWJvdXQgdGhlc2UgZmxhZ3MuIFRoZSBmaXJzdCBzdGVwIElNTwo+ID4gc2hvdWxkIGJlIGFk
ZGluZyB2YWxpZGF0aW9uIHRlc3RzLiBJIGJldF5XIHByYXkgZXZlcnkgdmVuZG9yIGhhcwo+ID4g
dmFsaWRhdGlvbiB0ZXN0cyBidXQgc2luY2UgdGhleSBhcmUgbm90IHVuaWZpZWQgd2UgZG9uJ3Qg
a25vdyB3aGF0Cj4gPiBsZXZlbCBvZiBpbnRlcm9wZXJhYmlsaXR5IHdlJ3JlIGFjaGlldmluZyBp
biBwcmFjdGljZS4gVGhhdCBkb2Vzbid0Cj4gPiBtYXR0ZXIgZm9yIHRyaXZpYWwgZmVhdHVyZSBs
aWtlIGJhc2UgYWN0aW9ucywgYnV0IHdlJ2xsIGluZXZpdGFibHkKPiA+IG1vdmUgb24gdG8gZGVm
aW5pbmcgbW9yZSBhZHZhbmNlZCBjYXBhYmlsaXRpZXMgYW5kIHRoZSBxdWVzdGlvbiBvZgo+ID4g
IndoYXQgc3VwcG9ydGluZyBYIGFjdHVhbGx5IG1lYW4iIHdpbGwgY29tZSB1cCAoMyB5ZWFycyBs
YXRlciwgd2hlbgo+ID4gd2UgZG9uJ3QgcmVtZW1iZXIgb3Vyc2VsdmVzKS4gIAo+IAo+IEkgYW0g
YSBiaXQgY29uZnVzZWQgbm93LiBEaWQgeW91IG1lYW4gdmFsaWRhdGlvbiB0ZXN0cyBvZiB0aG9z
ZSBYRFAKPiBmbGFncywgd2hpY2ggSSBhbSB3b3JraW5nIG9uIG9yIHNvbWUgb3RoZXIgdmFsaWRh
dGlvbiB0ZXN0cz8KPiBXaGF0IHNob3VsZCB0aGVzZSB0ZXN0cyB2ZXJpZnk/IENhbiB5b3UgcGxl
YXNlIGVsYWJvcmF0ZSBtb3JlIG9uIHRoZQo+IHRvcGljLCBwbGVhc2UgLSBqdXN0IGEgZmV3IHNl
bnRlbmNlcyBob3cgYXJlIHlvdSBzZWUgaXQ/CgpDb25mb3JtYW5jZSB0ZXN0cyBjYW4gYmUgd3Jp
dHRlbiBmb3IgYWxsIGZlYXR1cmVzLCB3aGV0aGVyIHRoZXkgaGF2ZSAKYW4gZXhwbGljaXQgY2Fw
YWJpbGl0eSBpbiB0aGUgdUFQSSBvciBub3QuIEJ1dCBmb3IgdGhvc2UgdGhhdCBkbyBJTU8KdGhl
IHRlc3RzIHNob3VsZCBiZSByZXF1aXJlZC4KCkxldCBtZSBnaXZlIHlvdSBhbiBleGFtcGxlLiBU
aGlzIHNldCBhZGRzIGEgYml0IHRoYXQgc2F5cyBJbnRlbCBOSUNzIApjYW4gZG8gWERQX1RYIGFu
ZCBYRFBfUkVESVJFQ1QsIHlldCB3ZSBib3RoIGtub3cgb2YgdGhlIFR4IHF1ZXVlCnNoZW5hbmln
YW5zLiBTbyBjYW4gaTQwZSBkbyBYRFBfUkVESVJFQ1Qgb3IgY2FuIGl0IG5vdD8KCklmIHdlIGhh
dmUgZXhoYXVzdGl2ZSBjb25mb3JtYW5jZSB0ZXN0cyB3ZSBjYW4gY29uZmlkZW50bHkgYW5zd2Vy
IHRoYXQKcXVlc3Rpb24uIEFuZCB0aGUgYW5zd2VyIG1heSBub3QgYmUgInllcyIgb3IgIm5vIiwg
aXQgbWF5IGFjdHVhbGx5IGJlCiJ3ZSBuZWVkIG1vcmUgb3B0aW9ucyBiZWNhdXNlIG1hbnkgaW1w
bGVtZW50YXRpb25zIGZhbGwgaW4gYmV0d2VlbiIuCgpJIHRoaW5rIHJlYWRhYmxlIChJT1cgbm90
IHdyaXR0ZW4gaW4gc29tZSBpbnNhbmUgRFNMKSB0ZXN0cyBjYW4gYWxzbyAKYmUgdXNlZnVsIGZv
ciB1c2VycyB3aG8gd2FudCB0byBjaGVjayB3aGljaCBmZWF0dXJlcyB0aGVpciBwcm9ncmFtIC8K
ZGVwbG95bWVudCB3aWxsIHJlcXVpcmUuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
