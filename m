Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F1831645F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 11:54:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC06786224;
	Wed, 10 Feb 2021 10:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Imqyv0hcQ4hE; Wed, 10 Feb 2021 10:54:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7452386252;
	Wed, 10 Feb 2021 10:54:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CCB8D1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 10:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C7A4987287
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 10:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vBTkZyNRRTqE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Feb 2021 10:53:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E36278727D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 10:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612954437;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=e/OUtSqrsuTobVXb5p+5Fs8Dq4rP9VTzBQxa5aGRat0=;
 b=HVIu58kNoieWl5H0xosFmbgr4Pg1EywmjNbjEEYD7UoaSZeqLgvhHuMq0tCAnv9QW6GToW
 Tr5Ly4Qp2fH7CQJlx9GaoT+Rr2GtJQL7wciwR3Np/nUQgiNdqpT7OEqun55RQlliGgLNMs
 j3j3ETGBBwJOiHiYUk1bKd/L8JbOxXo=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-TmsJTZJlN1iluHeP1aHgQw-1; Wed, 10 Feb 2021 05:53:55 -0500
X-MC-Unique: TmsJTZJlN1iluHeP1aHgQw-1
Received: by mail-ej1-f71.google.com with SMTP id jz15so2343086ejc.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 02:53:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=QNdS4uaIcL7T8BO9ZPW9arckpg/ta/zEzSVdZa8TFqs=;
 b=oen7BzSgzRRIultZF6pvV2/7RqaohOnHDG0eVOVqgdpIvM/lUWyru2Iw7/8Lcw8sUc
 tMiN7QR0LSPz9LKfQe8kbq6gdPUeVoATragJBrO4FIVrHW70etOQseJJ6w5Ytm04cNi+
 Qk4zKA3TC1wBQK31XKKugeVnRCY3ZxlOHkXVfxyLw/CEeSESrTanC+re2rnh55b9E5tk
 ZO/ZTmJe8HbkwgHnGM/h2glFj2lkE+v3ZFZ8oh/byaoFVZN04HpqviVmH4K8JCcteQ3q
 gsZpONKEiQxtpegjOXuM1EpkAh5YkllkGAyYfBWIRMEkgph8WKE79uF6LOIXYjhiTEBu
 5utg==
X-Gm-Message-State: AOAM531XBRaeinB3SgP8xHNgZxE/KM3FWbJPq5wfotaSlwjj7drqejeC
 YLahDihj2DKfWlPW8ziKUQaJRQ8cgDvR5D2Xc8ODDukuRcrr9eqZwAJLE0PGSjZIa3bTNGw1MUY
 /fOkRGB7EE1q9O/gtZ646izBYVHzVTg==
X-Received: by 2002:a17:906:854f:: with SMTP id
 h15mr2314425ejy.2.1612954434655; 
 Wed, 10 Feb 2021 02:53:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy9kxjrkvs0lMRtZKb7eZ5+PmgxP+XOmQ4alp1vZxt2LBpsa3XZxhu0QXOHuBKYBoklVFBcjg==
X-Received: by 2002:a17:906:854f:: with SMTP id
 h15mr2314389ejy.2.1612954434350; 
 Wed, 10 Feb 2021 02:53:54 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id c6sm694540edx.62.2021.02.10.02.53.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 02:53:53 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 7B6561804EE; Wed, 10 Feb 2021 11:53:53 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>, Marek Majtyka <alardam@gmail.com>
In-Reply-To: <20210203090232.4a259958@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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
 <20210203090232.4a259958@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 10 Feb 2021 11:53:53 +0100
Message-ID: <874kikry66.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
 Jonathan Lemon <jonathan.lemon@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, Saeed Mahameed <saeed@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 jeffrey.t.kirsher@intel.com, David Ahern <dsahern@gmail.com>,
 bpf <bpf@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "David S.
 Miller" <davem@davemloft.net>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBPbiBXZWQsIDMgRmVi
IDIwMjEgMTM6NTA6NTkgKzAxMDAgTWFyZWsgTWFqdHlrYSB3cm90ZToKPj4gT24gVHVlLCBGZWIg
MiwgMjAyMSBhdCA4OjM0IFBNIEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+IHdyb3Rl
Ogo+PiA+IE9uIFR1ZSwgMDIgRmViIDIwMjEgMTM6MDU6MzQgKzAxMDAgVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIHdyb3RlOiAgCj4+ID4gPiBBd2Vzb21lISBBbmQgc29ycnkgZm9yIG5vdCByZXBs
eWluZyBzdHJhaWdodCBhd2F5IC0gSSBoYXRlIGl0IHdoZW4gSQo+PiA+ID4gc2VuZCBvdXQgc29t
ZXRoaW5nIG15c2VsZiBhbmQgcmVjZWl2ZSBubyByZXBsaWVzLCBzbyBJIHN1cHBvc2UgSSBzaG91
bGQKPj4gPiA+IGdldCBiZXR0ZXIgYXQgbm90IGRvaW5nIHRoYXQgbXlzZWxmIDopCj4+ID4gPgo+
PiA+ID4gQXMgZm9yIHRoZSBpbmNsdXNpb24gb2YgdGhlIFhEUF9CQVNFIC8gWERQX0xJTUlURURf
QkFTRSBzZXRzICh3aGljaCBJCj4+ID4gPiBqdXN0IHJlYWxpc2VkIEkgZGlkbid0IHJlcGx5IHRv
KSwgSSBhbSBmaW5lIHdpdGggZGVmaW5pbmcgWERQX0JBU0UgYXMgYQo+PiA+ID4gc2hvcnRjdXQg
Zm9yIFRYL0FCT1JURUQvUEFTUy9EUk9QLCBidXQgdGhpbmsgd2Ugc2hvdWxkIHNraXAKPj4gPiA+
IFhEUF9MSU1JVEVEX0JBU0UgYW5kIGluc3RlYWQgcmVxdWlyZSBhbGwgbmV3IGRyaXZlcnMgdG8g
aW1wbGVtZW50IHRoZQo+PiA+ID4gZnVsbCBYRFBfQkFTRSBzZXQgc3RyYWlnaHQgYXdheS4gQXMg
bG9uZyBhcyB3ZSdyZSB0YWxraW5nIGFib3V0Cj4+ID4gPiBmZWF0dXJlcyAqaW1wbGVtZW50ZWQq
IGJ5IHRoZSBkcml2ZXIsIGF0IGxlYXN0OyBpLmUuLCBpdCBzaG91bGQgc3RpbGwgYmUKPj4gPiA+
IHBvc3NpYmxlIHRvICpkZWFjdGl2YXRlKiBYRFBfVFggaWYgeW91IGRvbid0IHdhbnQgdG8gdXNl
IHRoZSBIVwo+PiA+ID4gcmVzb3VyY2VzLCBidXQgSSBkb24ndCB0aGluayB0aGVyZSdzIG11Y2gg
YmVuZWZpdCBmcm9tIGRlZmluaW5nIHRoZQo+PiA+ID4gTElNSVRFRF9CQVNFIHNldCBhcyBhIHNo
b3J0Y3V0IGZvciB0aGlzIG1vZGUuLi4gIAo+PiA+Cj4+ID4gSSBzdGlsbCBoYXZlIG1peGVkIGZl
ZWxpbmdzIGFib3V0IHRoZXNlIGZsYWdzLiBUaGUgZmlyc3Qgc3RlcCBJTU8KPj4gPiBzaG91bGQg
YmUgYWRkaW5nIHZhbGlkYXRpb24gdGVzdHMuIEkgYmV0XlcgcHJheSBldmVyeSB2ZW5kb3IgaGFz
Cj4+ID4gdmFsaWRhdGlvbiB0ZXN0cyBidXQgc2luY2UgdGhleSBhcmUgbm90IHVuaWZpZWQgd2Ug
ZG9uJ3Qga25vdyB3aGF0Cj4+ID4gbGV2ZWwgb2YgaW50ZXJvcGVyYWJpbGl0eSB3ZSdyZSBhY2hp
ZXZpbmcgaW4gcHJhY3RpY2UuIFRoYXQgZG9lc24ndAo+PiA+IG1hdHRlciBmb3IgdHJpdmlhbCBm
ZWF0dXJlIGxpa2UgYmFzZSBhY3Rpb25zLCBidXQgd2UnbGwgaW5ldml0YWJseQo+PiA+IG1vdmUg
b24gdG8gZGVmaW5pbmcgbW9yZSBhZHZhbmNlZCBjYXBhYmlsaXRpZXMgYW5kIHRoZSBxdWVzdGlv
biBvZgo+PiA+ICJ3aGF0IHN1cHBvcnRpbmcgWCBhY3R1YWxseSBtZWFuIiB3aWxsIGNvbWUgdXAg
KDMgeWVhcnMgbGF0ZXIsIHdoZW4KPj4gPiB3ZSBkb24ndCByZW1lbWJlciBvdXJzZWx2ZXMpLiAg
Cj4+IAo+PiBJIGFtIGEgYml0IGNvbmZ1c2VkIG5vdy4gRGlkIHlvdSBtZWFuIHZhbGlkYXRpb24g
dGVzdHMgb2YgdGhvc2UgWERQCj4+IGZsYWdzLCB3aGljaCBJIGFtIHdvcmtpbmcgb24gb3Igc29t
ZSBvdGhlciB2YWxpZGF0aW9uIHRlc3RzPwo+PiBXaGF0IHNob3VsZCB0aGVzZSB0ZXN0cyB2ZXJp
Znk/IENhbiB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBtb3JlIG9uIHRoZQo+PiB0b3BpYywgcGxlYXNl
IC0ganVzdCBhIGZldyBzZW50ZW5jZXMgaG93IGFyZSB5b3Ugc2VlIGl0Pwo+Cj4gQ29uZm9ybWFu
Y2UgdGVzdHMgY2FuIGJlIHdyaXR0ZW4gZm9yIGFsbCBmZWF0dXJlcywgd2hldGhlciB0aGV5IGhh
dmUgCj4gYW4gZXhwbGljaXQgY2FwYWJpbGl0eSBpbiB0aGUgdUFQSSBvciBub3QuIEJ1dCBmb3Ig
dGhvc2UgdGhhdCBkbyBJTU8KPiB0aGUgdGVzdHMgc2hvdWxkIGJlIHJlcXVpcmVkLgo+Cj4gTGV0
IG1lIGdpdmUgeW91IGFuIGV4YW1wbGUuIFRoaXMgc2V0IGFkZHMgYSBiaXQgdGhhdCBzYXlzIElu
dGVsIE5JQ3MgCj4gY2FuIGRvIFhEUF9UWCBhbmQgWERQX1JFRElSRUNULCB5ZXQgd2UgYm90aCBr
bm93IG9mIHRoZSBUeCBxdWV1ZQo+IHNoZW5hbmlnYW5zLiBTbyBjYW4gaTQwZSBkbyBYRFBfUkVE
SVJFQ1Qgb3IgY2FuIGl0IG5vdD8KPgo+IElmIHdlIGhhdmUgZXhoYXVzdGl2ZSBjb25mb3JtYW5j
ZSB0ZXN0cyB3ZSBjYW4gY29uZmlkZW50bHkgYW5zd2VyIHRoYXQKPiBxdWVzdGlvbi4gQW5kIHRo
ZSBhbnN3ZXIgbWF5IG5vdCBiZSAieWVzIiBvciAibm8iLCBpdCBtYXkgYWN0dWFsbHkgYmUKPiAi
d2UgbmVlZCBtb3JlIG9wdGlvbnMgYmVjYXVzZSBtYW55IGltcGxlbWVudGF0aW9ucyBmYWxsIGlu
IGJldHdlZW4iLgo+Cj4gSSB0aGluayByZWFkYWJsZSAoSU9XIG5vdCB3cml0dGVuIGluIHNvbWUg
aW5zYW5lIERTTCkgdGVzdHMgY2FuIGFsc28gCj4gYmUgdXNlZnVsIGZvciB1c2VycyB3aG8gd2Fu
dCB0byBjaGVjayB3aGljaCBmZWF0dXJlcyB0aGVpciBwcm9ncmFtIC8KPiBkZXBsb3ltZW50IHdp
bGwgcmVxdWlyZS4KCldoaWxlIEkgZG8gYWdyZWUgdGhhdCB0aGF0IGtpbmQgb2YgY29uZm9ybWFu
Y2UgdGVzdCB3b3VsZCBiZSBncmVhdCwgSQpkb24ndCB0aGluayBpdCBoYXMgdG8gaG9sZCB1cCB0
aGlzIHNlcmllcyAodGhlIHBlcmZlY3QgYmVpbmcgdGhlIGVuZW15Cm9mIHRoZSBnb29kLCBhbmQg
YWxsIHRoYXQpLiBXZSBoYXZlIGEgcmVhbCBwcm9ibGVtIHRvZGF5IHRoYXQgdXNlcnNwYWNlCmNh
bid0IHRlbGwgaWYgYSBnaXZlbiBkcml2ZXIgaW1wbGVtZW50cywgc2F5LCBYRFBfUkVESVJFQ1Qs
IGFuZCBzbwpwZW9wbGUgdHJ5IHRvIHVzZSBpdCBhbmQgc3BlbmQgZGF5cyB3b25kZXJpbmcgd2hp
Y2ggYmxhY2sgaG9sZSB0aGVpcgpwYWNrZXRzIGRpc2FwcGVhciBpbnRvLiBBbmQgZm9yIHRoaW5n
cyBsaWtlIGNvbnRhaW5lciBtaWdyYXRpb24gd2UgbmVlZAp0byBiZSBhYmxlIHRvIHByZWRpY3Qg
d2hldGhlciBhIGdpdmVuIGhvc3Qgc3VwcG9ydHMgYSBmZWF0dXJlICpiZWZvcmUqCndlIHN0YXJ0
IHRoZSBtaWdyYXRpb24gYW5kIHRyeSB0byB1c2UgaXQuCgpJIHZpZXcgdGhlIGZlYXR1cmUgZmxh
Z3MgYXMgYSBsaXN0IG9mIGZlYXR1cmVzICppbXBsZW1lbnRlZCogYnkgdGhlCmRyaXZlci4gV2hp
Y2ggc2hvdWxkIGJlIHByZXR0eSBzdGF0aWMgaW4gYSBnaXZlbiBrZXJuZWwsIGJ1dCBtYXkgYmUK
ZGlmZmVyZW50IHRoYW4gdGhlIGZlYXR1cmVzIGN1cnJlbnRseSAqZW5hYmxlZCogb24gYSBnaXZl
biBzeXN0ZW0gKGR1ZQp0bywgZS5nLiwgdGhlIFRYIHF1ZXVlIHN0dWZmKS4KClRoZSBzaW1wbGUg
d2F5IHRvIGV4cG9zZSB0aGUgbGF0dGVyIHdvdWxkIGJlIHRvIGp1c3QgaGF2ZSBhIHNlY29uZCBz
ZXQKb2YgZmxhZ3MgaW5kaWNhdGluZyB0aGUgY3VycmVudCBjb25maWd1cmVkIHN0YXRlOyBhbmQg
Zm9yIHRoYXQgSSBndWVzcwp3ZSBzaG91bGQgYXQgbGVhc3QgYWdyZWUgd2hhdCAiZW5hYmxlZCIg
bWVhbnM7IGFuZCBhIGNvbmZvcm1hbmNlIHRlc3QKd291bGQgYmUgYSB3YXkgdG8gZG8gdGhpcywg
b2YgY291cnNlLgoKSSBkb24ndCBzZWUgd2h5IHdlIGNhbid0IGRvIHRoaXMgaW4gc3RhZ2VzLCB0
aG91Z2g7IHN0YXJ0IHdpdGggdGhlIGZpcnN0CnNldCBvZiBmbGFncyAoJ2ltcGxlbWVudGVkJyks
IG1vdmUgb24gdG8gdGhlIHNlY29uZCBvbmUgKCdlbmFibGVkJyksIGFuZAp0aGVuIHRvIHRoaW5n
cyBsaWtlIG1ha2luZyB0aGUga2VybmVsIHJlYWN0IHRvIHRoZSBmbGFncyBieSByZWplY3RpbmcK
aW5zZXJ0aW9uIGludG8gZGV2bWFwcyBmb3IgaW52YWxpZCBpbnRlcmZhY2VzLi4uCgotVG9rZQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
