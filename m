Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B773316EB1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 19:31:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA68686ABF;
	Wed, 10 Feb 2021 18:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PXaFiGyBA2bR; Wed, 10 Feb 2021 18:31:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EEFE586E33;
	Wed, 10 Feb 2021 18:31:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB2051BF419
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 18:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B408786ABF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 18:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0dAhQBJf8EZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Feb 2021 18:31:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DF59386D82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 18:31:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D002064DE0;
 Wed, 10 Feb 2021 18:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612981897;
 bh=gYL7BBry8rkU7z7MEWHcDU6eN+kvdSAYABlPSp3KfXU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UpS9cPxHtExw3QuFkTrbnT7c9U8Eo/DsYNner4QBtzugnojgObCwT5dQ9693Yrbca
 0yEQYRRU1JO68w1zxtZy1sZKY99wZSd630YZNVv6UI7nWqycUmoDR7ZjUlf8uyCvXK
 Ll3VEGIupaYfN5OBai6mTyQwt7/t7BdfTg8bF8e/bvwgJG4BfMHqoazdNlJGJ1vcu5
 Szn4J84FElTBg67Gw8oVt6zRaeI7oZZJJXNmqRfBcb+TimYtGoJ4TmhrygUtGG28bR
 o5ELIY1jvQbCmXYNnoeLKGNQDFas7QpGhUtisobILuBiUKX8+vLtv81BLFI/qpOR/h
 WerMv9e8kPhVQ==
Date: Wed, 10 Feb 2021 10:31:35 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Message-ID: <20210210103135.38921f85@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <874kikry66.fsf@toke.dk>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
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
 <874kikry66.fsf@toke.dk>
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
 Jonathan Lemon <jonathan.lemon@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, Saeed Mahameed <saeed@kernel.org>,
 Marek Majtyka <alardam@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 jeffrey.t.kirsher@intel.com, David Ahern <dsahern@gmail.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "David S.
 Miller" <davem@davemloft.net>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAxMCBGZWIgMjAyMSAxMTo1Mzo1MyArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gPj4gSSBhbSBhIGJpdCBjb25mdXNlZCBub3cuIERpZCB5b3UgbWVhbiB2YWxp
ZGF0aW9uIHRlc3RzIG9mIHRob3NlIFhEUAo+ID4+IGZsYWdzLCB3aGljaCBJIGFtIHdvcmtpbmcg
b24gb3Igc29tZSBvdGhlciB2YWxpZGF0aW9uIHRlc3RzPwo+ID4+IFdoYXQgc2hvdWxkIHRoZXNl
IHRlc3RzIHZlcmlmeT8gQ2FuIHlvdSBwbGVhc2UgZWxhYm9yYXRlIG1vcmUgb24gdGhlCj4gPj4g
dG9waWMsIHBsZWFzZSAtIGp1c3QgYSBmZXcgc2VudGVuY2VzIGhvdyBhcmUgeW91IHNlZSBpdD8g
IAo+ID4KPiA+IENvbmZvcm1hbmNlIHRlc3RzIGNhbiBiZSB3cml0dGVuIGZvciBhbGwgZmVhdHVy
ZXMsIHdoZXRoZXIgdGhleSBoYXZlIAo+ID4gYW4gZXhwbGljaXQgY2FwYWJpbGl0eSBpbiB0aGUg
dUFQSSBvciBub3QuIEJ1dCBmb3IgdGhvc2UgdGhhdCBkbyBJTU8KPiA+IHRoZSB0ZXN0cyBzaG91
bGQgYmUgcmVxdWlyZWQuCj4gPgo+ID4gTGV0IG1lIGdpdmUgeW91IGFuIGV4YW1wbGUuIFRoaXMg
c2V0IGFkZHMgYSBiaXQgdGhhdCBzYXlzIEludGVsIE5JQ3MgCj4gPiBjYW4gZG8gWERQX1RYIGFu
ZCBYRFBfUkVESVJFQ1QsIHlldCB3ZSBib3RoIGtub3cgb2YgdGhlIFR4IHF1ZXVlCj4gPiBzaGVu
YW5pZ2Fucy4gU28gY2FuIGk0MGUgZG8gWERQX1JFRElSRUNUIG9yIGNhbiBpdCBub3Q/Cj4gPgo+
ID4gSWYgd2UgaGF2ZSBleGhhdXN0aXZlIGNvbmZvcm1hbmNlIHRlc3RzIHdlIGNhbiBjb25maWRl
bnRseSBhbnN3ZXIgdGhhdAo+ID4gcXVlc3Rpb24uIEFuZCB0aGUgYW5zd2VyIG1heSBub3QgYmUg
InllcyIgb3IgIm5vIiwgaXQgbWF5IGFjdHVhbGx5IGJlCj4gPiAid2UgbmVlZCBtb3JlIG9wdGlv
bnMgYmVjYXVzZSBtYW55IGltcGxlbWVudGF0aW9ucyBmYWxsIGluIGJldHdlZW4iLgo+ID4KPiA+
IEkgdGhpbmsgcmVhZGFibGUgKElPVyBub3Qgd3JpdHRlbiBpbiBzb21lIGluc2FuZSBEU0wpIHRl
c3RzIGNhbiBhbHNvIAo+ID4gYmUgdXNlZnVsIGZvciB1c2VycyB3aG8gd2FudCB0byBjaGVjayB3
aGljaCBmZWF0dXJlcyB0aGVpciBwcm9ncmFtIC8KPiA+IGRlcGxveW1lbnQgd2lsbCByZXF1aXJl
LiAgCj4gCj4gV2hpbGUgSSBkbyBhZ3JlZSB0aGF0IHRoYXQga2luZCBvZiBjb25mb3JtYW5jZSB0
ZXN0IHdvdWxkIGJlIGdyZWF0LCBJCj4gZG9uJ3QgdGhpbmsgaXQgaGFzIHRvIGhvbGQgdXAgdGhp
cyBzZXJpZXMgKHRoZSBwZXJmZWN0IGJlaW5nIHRoZSBlbmVteQo+IG9mIHRoZSBnb29kLCBhbmQg
YWxsIHRoYXQpLiBXZSBoYXZlIGEgcmVhbCBwcm9ibGVtIHRvZGF5IHRoYXQgdXNlcnNwYWNlCj4g
Y2FuJ3QgdGVsbCBpZiBhIGdpdmVuIGRyaXZlciBpbXBsZW1lbnRzLCBzYXksIFhEUF9SRURJUkVD
VCwgYW5kIHNvCj4gcGVvcGxlIHRyeSB0byB1c2UgaXQgYW5kIHNwZW5kIGRheXMgd29uZGVyaW5n
IHdoaWNoIGJsYWNrIGhvbGUgdGhlaXIKPiBwYWNrZXRzIGRpc2FwcGVhciBpbnRvLiBBbmQgZm9y
IHRoaW5ncyBsaWtlIGNvbnRhaW5lciBtaWdyYXRpb24gd2UgbmVlZAo+IHRvIGJlIGFibGUgdG8g
cHJlZGljdCB3aGV0aGVyIGEgZ2l2ZW4gaG9zdCBzdXBwb3J0cyBhIGZlYXR1cmUgKmJlZm9yZSoK
PiB3ZSBzdGFydCB0aGUgbWlncmF0aW9uIGFuZCB0cnkgdG8gdXNlIGl0LgoKVW5sZXNzIHlvdSBo
YXZlIGEgc3Ryb25nIGRlZmluaXRpb24gb2Ygd2hhdCBYRFBfUkVESVJFQ1QgbWVhbnMgdGhlIGZs
YWcKaXRzZWxmIGlzIG5vdCB3b3J0aCBtdWNoLiBXZSdyZSBub3QgdGFsa2luZyBhYm91dCBub3Jt
YWwgZXRodG9vbCBmZWF0dXJlCmZsYWdzIHdoaWNoIGFyZSBwcmltYXJpbHkgc3RhY2stZHJpdmVu
LCBYRFAgaXMgaW1wbGVtZW50ZWQgbW9zdGx5IGJ5CnRoZSBkcml2ZXIsIGVhY2ggdmVuZG9yIGNh
biBkbyB0aGVpciBvd24gdGhpbmcuIE1heWJlIEkndmUgc2VlbiBvbmUKdmVuZG9yIGluY29tcGF0
aWJpbGl0eSB0b28gbWFueSBhdCBteSBkYXkgam9iIHRvIGhvcGUgZm9yIHRoZSBiZXN0Li4uCgo+
IEkgdmlldyB0aGUgZmVhdHVyZSBmbGFncyBhcyBhIGxpc3Qgb2YgZmVhdHVyZXMgKmltcGxlbWVu
dGVkKiBieSB0aGUKPiBkcml2ZXIuIFdoaWNoIHNob3VsZCBiZSBwcmV0dHkgc3RhdGljIGluIGEg
Z2l2ZW4ga2VybmVsLCBidXQgbWF5IGJlCj4gZGlmZmVyZW50IHRoYW4gdGhlIGZlYXR1cmVzIGN1
cnJlbnRseSAqZW5hYmxlZCogb24gYSBnaXZlbiBzeXN0ZW0gKGR1ZQo+IHRvLCBlLmcuLCB0aGUg
VFggcXVldWUgc3R1ZmYpLgoKSG0sIG1heWJlIEknbSBub3QgYmVpbmcgY2xlYXIgZW5vdWdoLiBU
aGUgd2F5IFhEUF9SRURJUkVDVCAoeW91cgpleGFtcGxlKSBpcyBpbXBsZW1lbnRlZCBhY3Jvc3Mg
ZHJpdmVycyBkaWZmZXJzIGluIGEgbWVhbmluZ2Z1bCB3YXlzLiAKSGVuY2UgdGhlIG5lZWQgZm9y
IGNvbmZvcm1hbmNlIHRlc3RpbmcuIFdlIGRvbid0IGhhdmUgYSBnb2xkZW4gU1cKc3RhbmRhcmQg
dG8gZmFsbCBiYWNrIG9uLCBsaWtlIHdlIGRvIHdpdGggSFcgb2ZmbG9hZHMuCgpBbHNvIElESyB3
aHkgdGhvc2UgdGVzdHMgYXJlIGNvbnNpZGVyZWQgc3VjaCBhIGh1Z2UgYXNrLiBBcyBJIHNhaWQg
bW9zdAp2ZW5kb3JzIHByb2JhYmx5IGFscmVhZHkgaGF2ZSB0aGVtLCBhbmQgc28gSSdkIGd1ZXNz
IGRvIGdvb2QgZGlzdHJvcy4KU28gbGV0J3Mgd29yayB0b2dldGhlci4KCj4gVGhlIHNpbXBsZSB3
YXkgdG8gZXhwb3NlIHRoZSBsYXR0ZXIgd291bGQgYmUgdG8ganVzdCBoYXZlIGEgc2Vjb25kIHNl
dAo+IG9mIGZsYWdzIGluZGljYXRpbmcgdGhlIGN1cnJlbnQgY29uZmlndXJlZCBzdGF0ZTsgYW5k
IGZvciB0aGF0IEkgZ3Vlc3MKPiB3ZSBzaG91bGQgYXQgbGVhc3QgYWdyZWUgd2hhdCAiZW5hYmxl
ZCIgbWVhbnM7IGFuZCBhIGNvbmZvcm1hbmNlIHRlc3QKPiB3b3VsZCBiZSBhIHdheSB0byBkbyB0
aGlzLCBvZiBjb3Vyc2UuCj4gCj4gSSBkb24ndCBzZWUgd2h5IHdlIGNhbid0IGRvIHRoaXMgaW4g
c3RhZ2VzLCB0aG91Z2g7IHN0YXJ0IHdpdGggdGhlIGZpcnN0Cj4gc2V0IG9mIGZsYWdzICgnaW1w
bGVtZW50ZWQnKSwgbW92ZSBvbiB0byB0aGUgc2Vjb25kIG9uZSAoJ2VuYWJsZWQnKSwgYW5kCj4g
dGhlbiB0byB0aGluZ3MgbGlrZSBtYWtpbmcgdGhlIGtlcm5lbCByZWFjdCB0byB0aGUgZmxhZ3Mg
YnkgcmVqZWN0aW5nCj4gaW5zZXJ0aW9uIGludG8gZGV2bWFwcyBmb3IgaW52YWxpZCBpbnRlcmZh
Y2VzLi4uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
