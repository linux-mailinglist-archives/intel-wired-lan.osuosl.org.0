Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CC926170E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 19:24:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5050587297;
	Tue,  8 Sep 2020 17:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CC38fXyuk7HS; Tue,  8 Sep 2020 17:24:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5E33872BA;
	Tue,  8 Sep 2020 17:24:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52A3C1BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 17:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4BD91868F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 17:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xm13k6Xvzqxx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 17:24:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 13D81868EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 17:24:43 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB959206B5;
 Tue,  8 Sep 2020 17:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599585883;
 bh=G0TuQ82fo+GvEL2cxufvVOauUBhWkmjojqObsOrnW3U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=A8EAdpexRDHFNVyoeRKruq7rvuO4/s7lZFJrsAj9lHWyN3xDZShJg0vUmdwjEmKqd
 AZVxlayjy5Skf/iTKz0yalbe/v+rDusInFU/cp6U18+gmju+KC77+8UxgnnIT6xYb2
 6dvUfcZwRmaJ8l04YCSKmjf2lR1IJW+MmtV8iBWc=
Date: Tue, 8 Sep 2020 10:24:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <20200908102438.28351aab@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <8f698ac5-916f-9bb0-cce2-f00fba6ba407@intel.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904162751.632c4443@carbon>
 <27e05518-99c6-15e2-b801-cbc0310630ef@intel.com>
 <20200904165837.16d8ecfd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <1d2e781e-b26d-4cf0-0178-25b8835dbe26@intel.com>
 <20200907114055.27c95483@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <8f698ac5-916f-9bb0-cce2-f00fba6ba407@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: exit NAPI loop when
 AF_XDP Rx ring is full
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
Cc: Eric Dumazet <eric.dumazet@gmail.com>, daniel@iogearbox.net,
 Jesper Dangaard Brouer <brouer@redhat.com>, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCA4IFNlcCAyMDIwIDA4OjU4OjMwICswMjAwIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4g
Pj4gQXMgZm9yIHRoaXMgcGF0Y2ggc2V0LCBJIHRoaW5rIGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8g
cHVsbCBpdCBpbiBzaW5jZQo+ID4+IGl0IG1ha2VzIHRoZSBzaW5nbGUtY29yZSBzY2VuYXJpbyAq
bXVjaCogYmV0dGVyLCBhbmQgaXQgaXMgcHJldHR5Cj4gPj4gc2ltcGxlLiBUaGVuIGRvIHRoZSBh
cHBsaWNhdGlvbiBwb2xsaW5nIGFzIGFub3RoZXIsIHBvdGVudGlhbGx5LAo+ID4+IGltcHJvdmVt
ZW50IHNlcmllcy4gIAo+ID4gCj4gPiBVcCB0byB5b3UsIGl0J3MgZXh0cmEgY29kZSBpbiB0aGUg
ZHJpdmVyIHNvIG1vc3RseSB5b3VyIGNvZGUgdG8KPiA+IG1haW50YWluLgo+ID4gCj4gPiBJIHRo
aW5rIHRoYXQgaWYgd2UgaW1wbGVtZW50IHdoYXQgSSBkZXNjcmliZWQgYWJvdmUgLSBldmVyeW9u
ZSB3aWxsCj4gPiB1c2UgdGhhdCBvbiBhIHNpbmdsZSBjb3JlIHNldHVwLCBzbyB0aGlzIHNldCB3
b3VsZCBiZSBkZWFkIGNvZGUKPiA+IChhc3N1bWluZyBSUSBpcyBzaXplZCBhcHByb3ByaWF0ZWx5
KS4gQnV0IGFnYWluLCB5b3VyIGNhbGwgOikKPiAKPiBOb3csIEkgYWdyZWUgdGhhdCB0aGUgYnVz
eS1wb2xsIHlvdSBkZXNjcmliZSBhYm92ZSB3b3VsZCBiZSB0aGUgYmVzdAo+IG9wdGlvbiwgYnV0
IGZyb20gbXkgcGVyc3BlY3RpdmUgaXQncyBhIG11Y2ggbGFyZ2VyIHNldCB0aGF0IGludm9sdmVz
Cj4gZXhwZXJpbWVudGluZy4gSSB3aWxsIGV4cGxvcmUgdGhhdCwgYnV0IEkgc3RpbGwgdGhpbmsg
dGhpcyBzZXJpZXMgc2hvdWxkCj4gZ28gaW4gc29vbmVyIHRvIG1ha2UgdGhlIHNpbmdsZSBjb3Jl
IHNjZW5hcmlvIHVzYWJsZSAqdG9kYXkqLgo+IAo+IE9rLCBiYWNrIHRvIHRoZSBidXN5LXBvbGwg
aWRlYXMuIEknbGwgY2FsbCB5b3VyIGlkZWEgInN0cmljdCBidXN5LXBvbGwiLAo+IGkuZS4gdGhl
IE5BUEkgbG9vcCBpcyAqb25seSogZHJpdmVuIGJ5IHVzZXJsYW5kLCBhbmQgaW50ZXJydXB0cyBz
dGF5Cj4gZGlzYWJsZWQuICJTeXNjYWxsIGRyaXZlbiBwb2xsLW1vZGUgZHJpdmVyIi4gOi0pCj4g
Cj4gT24gdGhlIGRyaXZlciBzaWRlIChhZ2Fpbiwgb25seSB0YWxraW5nIEludGVsIGhlcmUsIHNp
bmNlIHRoYXQncyB3aGF0IEkKPiBrbm93IHRoZSBkZXRhaWxzIG9mKSwgdGhlIE5BUEkgY29udGV4
dCB3b3VsZCBvbmx5IGNvdmVyIEFGX1hEUCBxdWV1ZXMsCj4gc28gdGhhdCBvdGhlciBxdWV1ZXMg
YXJlIG5vdCBzdGFydmVkLgo+IAo+IEFueSBpZGVhcyBob3cgc3RyaWN0IGJ1c3ktcG9sbCB3b3Vs
ZCBsb29rLCBBUEkvaW1wbG1lbnRhdGlvbi13aXNlPyBBbgo+IG9wdGlvbiBvbmx5IGZvciBBRl9Y
RFAgc29ja2V0cz8gV291bGQgdGhpcyBtYWtlIHNlbnNlIHRvIHJlZ3VsYXIKPiBzb2NrZXRzPyBJ
ZiBzbywgbWF5YmUgZXh0ZW5kIHRoZSBleGlzdGluZyBOQVBJIGJ1c3ktcG9sbCB3aXRoIGEgInN0
cmljdCIKPiBtb2RlPwoKRm9yIEFGX1hEUCBhbmQgb3RoZXIgc29ja2V0cyBJIHRoaW5rIGl0IHNo
b3VsZCBiZSBxdWl0ZSBzdHJhaWdodGZvcndhcmQuCgpGb3IgQUZfWERQIGp1c3QgaW1wbGVtZW50
IGN1cnJlbnQgYnVzeSBwb2xsLgoKVGhlbiBmb3IgYWxsIHNvY2tldCB0eXBlcyBhZGQgYSBuZXcg
c29ja29wdCB3aGljaCBzZXRzICJ0aW1lb3V0IiBvbiBob3cKbG9uZyB0aGUgSVJRcyBjYW4gYmUg
c3VwcHJlc3NlZCBmb3IgKHdlIGRvbid0IHdhbnQgYXBwbGljYXRpb24gY3Jhc2ggb3IKaGFuZyB0
byBrbm9jayB0aGUgc3lzdGVtIG9mZiB0aGUgbmV0d29yayksIG9yIGp1c3QgZW5hYmxlcyB0aGUg
ZmVhdHVyZQphbmQgdGhlIHRpbWVvdXQgaXMgZnJvbSBhIHN5c2N0bC4KClRoZW4gbWFrZSBzdXJl
IHRoYXQgYXQgdGhlIGVuZCBvZiBwb2xsaW5nIG5hcGkgZG9lc24ndCBnZXQgc2NoZWR1bGVkLAph
bmQgc2V0IHNvbWUgYml0IHdoaWNoIHdpbGwgcHJldmVudCBuYXBpX3NjaGVkdWxlX3ByZXAoKSBm
cm9tIGxldHRpbmcKbm9ybWFsIElSUSBwcm9jZXNzaW5nIGZyb20gc2NoZWR1bGluZyBpdCwgdG9v
LiBTZXQgYSB0aW1lciBmb3IgdGhlCnRpbWVvdXQgaGFuZGxpbmcgdG8gdW5kbyBhbGwgdGhpcy4K
CldoYXQgSSBoYXZlbid0IGZpZ3VyZWQgb3V0IGluIG15IGhlYWQgaXMgaG93L2lmIHRoaXMgcmVs
YXRlcyB0byB0aGUKb25nb2luZyB3cS90aHJlYWRlZCBOQVBJIHBvbGxpbmcgd29yayDwn6SUIGJ1
dCB0aGF0IHNob3VsZG4ndCBzdG9wIHlvdS4KCj4gSSdsbCBzdGFydCBwbGF5aW5nIGFyb3VuZCBh
IGJpdCwgYnV0IGFnYWluLCBJIHRoaW5rIHRoaXMgc2ltcGxlIHNlcmllcwo+IHNob3VsZCBnbyBp
biBqdXN0IHRvIG1ha2UgQUZfWERQIHNpbmdsZSBjb3JlIHVzYWJsZSAqdG9kYXkqLgoKTm8gb2Jq
ZWN0aW9uIGZyb20gbWUuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
