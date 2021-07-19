Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C132F3CD5D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jul 2021 15:40:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75B60838AB;
	Mon, 19 Jul 2021 13:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QnHm57ECtPv5; Mon, 19 Jul 2021 13:40:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 673A98380E;
	Mon, 19 Jul 2021 13:40:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DDFAE1BF32D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 08:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D9ABD83506
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 08:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yfvGYvBSIp84 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jul 2021 08:13:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A551834F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jul 2021 08:13:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5D24D60240;
 Mon, 19 Jul 2021 08:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626682422;
 bh=0TE5z1JwXY+ttzhYw+dqHxv31KAXFHmt/AZXZQRPKEk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oWbFMB5aDV3OXGYjtcSxVa7L7v6T+xq91Sy/9s0bYFGq0eORYxBMSV/Kqkx7AbvFO
 lrxlaP6M3LHNnmc+J1FFxh8jrqdEtrRcywtw0sOgZk6fwjW3tdYjhwZ+V4dipbXtbe
 nUZoSI6rI3WKqQLtNIMZqbfrPAbuwAkjEp4jZpMLn+b1nOggU4zCWAblcaFs6+d6+k
 p9Nk7EgpoCfveNsBAgEFO+GWHe5u9vMcHimhKwhzIqINvHluzEKV7S62kpPA4lQPrs
 xNqEB/4kM/owBHg8WHnJOFtzEjjJ6xg/f2rWaz0ogQ8aycQm2Aw4yOH5m8LBp3RHOK
 VC6hh9Ebms8Fw==
Received: by pali.im (Postfix)
 id E64CEADB; Mon, 19 Jul 2021 10:13:39 +0200 (CEST)
Date: Mon, 19 Jul 2021 10:13:39 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Oliver O'Halloran <oohall@gmail.com>
Message-ID: <20210719081339.52inudhug3rgpbed@pali>
References: <CAOSf1CGVpogQGAatuY_N0db6OL2BFegGtj6VTLA9KFz0TqYBQg@mail.gmail.com>
 <20210708154550.GA1019947@bjorn-Precision-5520>
 <CAOSf1CHtHLyEHC58jwemZS6j=jAU2OrrYitkUYmdisJtuFu4dw@mail.gmail.com>
 <20210718225059.hd3od4k4on3aopcu@pali>
 <CAOSf1CHOrUBfibO0t6Zr2=SZ7GjLTiAzfoKBeZL8RXdcC+Ou3A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSf1CHOrUBfibO0t6Zr2=SZ7GjLTiAzfoKBeZL8RXdcC+Ou3A@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Mailman-Approved-At: Mon, 19 Jul 2021 13:40:09 +0000
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 netdev@vger.kernel.org, linux-pci <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uZGF5IDE5IEp1bHkgMjAyMSAxMjo0OToxOCBPbGl2ZXIgTydIYWxsb3JhbiB3cm90ZToK
PiBPbiBNb24sIEp1bCAxOSwgMjAyMSBhdCA4OjUxIEFNIFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5l
bC5vcmc+IHdyb3RlOgo+ID4KPiA+IEFuZCBkbyB3ZSBoYXZlIHNvbWUgc29sdXRpb24gZm9yIHRo
aXMga2luZCBvZiBpc3N1ZT8gVGhlcmUgYXJlIG1vcmUgUENJZQo+ID4gY29udHJvbGxlcnMgLyBw
bGF0Zm9ybXMgd2hpY2ggZG8gbm90IGxpa2UgTU1JTyByZWFkL3dyaXRlIG9wZXJhdGlvbiB3aGVu
Cj4gPiBjYXJkIC8gbGluayBpcyBub3QgY29ubmVjdGVkLgo+IAo+IERvIHlvdSBoYXZlIHNvbWUg
YWN0dWFsIGV4YW1wbGVzPyBUaGUgZmV3IHRpbWVzIEkndmUgc2VlbiB0aG9zZQo+IGNyYXNoZXMg
d2VyZSBkdWUgdG8gYnJva2VuIGZpcm13YXJlLWZpcnN0IGVycm9yIGhhbmRsaW5nLiBUaGUgQUVS
Cj4gbm90aWZpY2F0aW9ucyB3b3VsZCBiZSBlc2NhbGF0ZWQgaW50byBzb21lIGtpbmQgb2YgQUNQ
SSBlcnJvciB3aGljaAo+IHRoZSBrZXJuZWwgZGlkbid0IGhhdmUgYSBnb29kIHdheSBvZiBkZWFs
aW5nIHdpdGggc28gaXQgcGFuaWNrZWQKPiBpbnN0ZWFkLgoKSSBoYXZlIGV4cGVyaWVuY2UgYW5k
IGV4YW1wbGVzIHdpdGggcGNpIGFhcmR2YXJrIGNvbnRyb2xsZXIuIFdoZW4gY2FyZAppcyBkaXNj
b25uZWN0ZWQgaXQgc2VuZHMgc3luY2hyb25vdXMgYWJvcnQgdG8gQ1BVIHdoZW4gZG9pbmcgTU1J
TyByZWFkCm9wZXJhdGlvbi4gT25lIGV4YW1wbGUgaXMgaW4gdGhpcyBsaW51eC11c2IgdGhyZWFk
OgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtdXNiLzIwMjEwNTA1MTIwMTE3LjR3cG1v
NmZodnp6bmYzd3ZAcGFsaS90LyN1CgpJIGNhbiB0cmlnZ2VyIHRoaXMgaXNzdWUgYXQgbGVhc3Qg
Zm9yIHhoY2ksIG52bWUgYW5kIGF0aCBkcml2ZXJzLgoKPiBBc3N1bWluZyBpdCBpcyBhIHJlYWwg
cHJvYmxlbSB0aGVuIGFzIEJqb3JuIHBvaW50ZWQgb3V0IHRoaXMgc29ydCBvZgo+IGhhY2sgZG9l
c24ndCByZWFsbHkgZml4IHRoZSBpc3N1ZSBiZWNhdXNlIGhvdHBsdWcgYW5kIEFFUgo+IG5vdGlm
aWNhdGlvbnMgYXJlIGZ1bmRhbWVudGFsbHkgYXN5bmNocm9ub3VzLgoKSW4gY2FzZSBvZiBwY2kg
YWFyZHZhcmsgaXQgaXMgbm90IEFFUiBub3RpZmljYXRpb24uIEFuZCBmb3IgTU1JTyByZWFkIGl0
CmlzIHN5bmNocm9ub3VzIGFib3J0LgoKQW55d2F5LCBob3RwbHVnIGV2ZW50cyBhcmUgcmVhbGx5
IGFzeW5jaHJvbm91cywgYnV0IHRoZXJlIGlzIG1haW4gaXNzdWUKdGhhdCB0aGlzIGhvdHBsdWcg
ZGlzY29ubmVjdCBldmVudCBpbnN0cnVjdCBkZXZpY2UgZHJpdmVyIHRvICJ1bmJpbmQiCmFuZCBl
LmcuIHRoZXNlIGV0aGVybmV0IG9yIHVzYiBjb250cm9sbGVycyB0cnkgdG8gZG8gTU1JTyBvcGVy
YXRpb25zIGluCnRoZWlyIGNsZWFudXAgLyByZW1vdmUgLyB1bmJpbmQgcGhhc2UsIGV2ZW4gd2hl
biBjYXJkIGlzIGFscmVhZHkKImRpc2Nvbm5lY3RlZCIgaW4gUENJIHN1YnN5c3RlbS4KCj4gSWYg
dGhlIGRyaXZlciBpcwo+IGFjdGl2ZWx5IHVzaW5nIHRoZSBkZXZpY2Ugd2hlbiB0aGUgZXJyb3Ig
LyByZW1vdmFsIGhhcHBlbnMgdGhlbiB0aGUKPiBwY2lfZGV2X2lzX2Rpc2Nvbm5lY3RlZCgpIGNo
ZWNrIHdpbGwgcGFzcyBhbmQgdGhlIE1NSU8gd2lsbCBnbwo+IHRocm91Z2guIElmIHRoZSBNTUlP
IGlzIHBvaXNvbm91cyBiZWNhdXNlIG9mIGR1bWIgaGFyZHdhcmUgdGhlbiB0aGlzCj4gc29ydCBv
ZiBoYWNrIHdpbGwgb25seSBwYXBlciBvdmVyIHRoZSBpc3N1ZS4KPiAKPiA+IElmIHdlIGRvIG5v
dCBwcm92aWRlIGEgd2F5IGhvdyB0byBzb2x2ZSB0aGVzZSBwcm9ibGVtcyB0aGVuIHdlIGNhbgo+
ID4gZXhwZWN0IHRoYXQgcGVvcGxlIHdvdWxkIGp1c3QgaGFjayBldGhlcm5ldCAvIHdpZmkgLyAu
Li4gZGV2aWNlIGRyaXZlcnMKPiA+IHdoaWNoIGFyZSBjdXJyZW50bHkgY3Jhc2hpbmcgYnkgcGF0
Y2hlcyBsaWtlIGluIHRoaXMgdGhyZWFkLgo+ID4KPiA+IE1heWJlIFBDSSBzdWJzeXN0ZW0gY291
bGQgcHJvdmlkZSB3cmFwcGVyIGZ1bmN0aW9uIHdoaWNoIGltcGxlbWVudHMKPiA+IGFib3ZlIHBh
dHRlcm4gYW5kIHdoaWNoIGNhbiBiZSB1c2VkIGJ5IGRldmljZSBkcml2ZXJzPwo+IAo+IFdlIGNv
dWxkIGRvIHRoYXQgYW5kIEkgdGhpbmsgdGhlcmUgd2FzIGEgcHJvcG9zYWwgdG8gYWRkIHNvbWUK
PiBwY2lfcmVhZGwocGRldiwgPGFkZHI+KSBzdHlsZSB3cmFwcGVycyBhdCBvbmUgcG9pbnQuIE9u
IHBvd2VycGMKPiB0aGVyZSdzIGhvb2tzIGluIHRoZSBhcmNoIHByb3ZpZGVkIE1NSU8gZnVuY3Rp
b25zIHRvIGRldGVjdCBlcnJvcgo+IHJlc3BvbnNlcyBhbmQga2ljayBvZmYgdGhlIGVycm9yIGhh
bmRsaW5nIG1hY2hpbmVyeSB3aGVuIGEgcHJvYmxlbSBpcwo+IGRldGVjdGVkLiBUaG9zZSBob29r
cyBhcmUgbWFpbmx5IHRoZXJlIHRvIGhlbHAgdGhlIHBsYXRmb3JtIGRldGVjdAo+IGVycm9ycyB0
aG91Z2ggYW5kIHRoZXkgZG9uJ3QgbWFrZSBsaWZlIG11Y2ggZWFzaWVyIGZvciBkcml2ZXJzLiBE
dWUgdG8KPiBsb2NraW5nIGNvbmNlcm5zIHRoZSBkcml2ZXIncyAuZXJyb3JfZGV0ZWN0ZWQoKSBj
YWxsYmFjayBjYW5ub3QgYmUKPiBjYWxsZWQgaW4gdGhlIE1NSU8gaG9vayBzbyBldmVuIHdoZW4g
dGhlIHBsYXRmb3JtIGRldGVjdHMgZXJyb3JzCj4gc3luY2hyb25vdXNseSB0aGUgZHJpdmVyIG5v
dGlmaWNhdGlvbnMgbXVzdCBoYXBwZW4gYXN5bmNocm9ub3VzbHkuIEluCj4gdGhlIG1lYW53aGls
ZSB0aGUgZHJpdmVyIHN0aWxsIG5lZWRzIHRvIGhhbmRsZSB0aGUgMHhGRnMgcmVzcG9uc2UKPiBz
YWZlbHkgYW5kIHRoZXJlJ3Mgbm90IG11Y2ggd2UgY2FuIGRvIGZyb20gdGhlIHBsYXRmb3JtIHNp
ZGUgdG8gaGVscAo+IHRoZXJlLgo+IAo+IE9saXZlcgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
