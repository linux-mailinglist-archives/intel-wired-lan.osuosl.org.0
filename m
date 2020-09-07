Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A692604CC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Sep 2020 20:41:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 49B44203A0;
	Mon,  7 Sep 2020 18:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yRTd7MBv6JOy; Mon,  7 Sep 2020 18:41:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0E27D20411;
	Mon,  7 Sep 2020 18:41:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 865871BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 18:40:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7FAFC87128
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 18:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8+FYP3RqH9dk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Sep 2020 18:40:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB36F870DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 18:40:57 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2705E2067C;
 Mon,  7 Sep 2020 18:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599504057;
 bh=N9H0myqp/soa1vEOvfkx5sjWDeZabTKFYKovdFuQ+Rs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LUt0kaLdEsnqQuvG5rHGDKZG2ncFqCf7eTs+Od5gXQGHXa8xFEdYU+0zSC6aWZQHB
 IbMFZ4cc8aKyEYww7sNLSwe4/Pj8aE7ydzZazK/7wusr/d8SZXT1wRgI00IlxDnFev
 Z6eMpGU0wj4UF9HzEjon0juhH8fqHgS3Ug+qKlyY=
Date: Mon, 7 Sep 2020 11:40:55 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <20200907114055.27c95483@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <1d2e781e-b26d-4cf0-0178-25b8835dbe26@intel.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904162751.632c4443@carbon>
 <27e05518-99c6-15e2-b801-cbc0310630ef@intel.com>
 <20200904165837.16d8ecfd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <1d2e781e-b26d-4cf0-0178-25b8835dbe26@intel.com>
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

T24gTW9uLCA3IFNlcCAyMDIwIDE1OjM3OjQwICswMjAwIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4g
ID4gSSd2ZSBiZWVuIHBvbmRlcmluZyB0aGUgZXhhY3QgcHJvYmxlbSB5b3UncmUgc29sdmluZyB3
aXRoIE1hY2llago+ICA+IHJlY2VudGx5LiBUaGUgZWZmaWNpZW5jeSBvZiBBRl9YRFAgb24gb25l
IGNvcmUgd2l0aCB0aGUgTkFQSSBwcm9jZXNzaW5nLgo+ICA+Cj4gID4gWW91ciBzb2x1dGlvbiAo
ZXZlbiB0aG91Z2ggaXQgYWRtaXR0ZWRseSBoZWxwcywgYW5kIGlzIHF1aXRlIHNpbXBsZSkKPiAg
PiBzdGlsbCBoYXMgdGhlIGFwcGxpY2F0aW9uIHBvdGVudGlhbGx5IG5vdCBhYmxlIHRvIHByb2Nl
c3MgcGFja2V0cwo+ICA+IHVudGlsIHRoZSBxdWV1ZSBmaWxscyB1cC4gVGhpcyB3aWxsIGJlIGJh
ZCBmb3IgbGF0ZW5jeS4KPiAgPgo+ICA+IFdoeSBkb24ndCB3ZSBtb3ZlIGNsb3NlciB0byBhcHBs
aWNhdGlvbiBwb2xsaW5nPyBOZXZlciByZS1hcm0gdGhlIE5BUEkKPiAgPiBhZnRlciBSWCwgbGV0
IHRoZSBhcHBsaWNhdGlvbiBhc2sgZm9yIHBhY2tldHMsIHJlLWFybSBpZiAwIHBvbGxlZC4KPiAg
PiBZb3UnZCBnZXQgbWF4IGJhdGNoaW5nLCBtaW4gbGF0ZW5jeS4KPiAgPgo+ICA+IFdobydzIHRo
ZSByYW1ibGluZyBvbmUgbm93PyA6LUQKPiAgPiAgCj4gCj4gOi1EIE5vLCB0aGVzZSBhcmUgYWxs
IHZlcnkgZ29vZCBpZGVhcyEgV2UndmUgYWN0dWFsbHkgZXhwZXJpbWVudGVkCj4gd2l0aCBpdCB3
aXRoIHRoZSBidXN5LXBvbGwgc2VyaWVzIGEgd2hpbGUgYmFjayAtLSBOQVBJIGJ1c3ktcG9sbGlu
Zwo+IGRvZXMgZXhhY3RseSAiYXBwbGljYXRpb24gcG9sbGluZyIuCj4gCj4gSG93ZXZlciwgSSB3
b25kZXIgaWYgdGhlIGJ1c3ktcG9sbGluZyB3b3VsZCBoYXZlIGJldHRlciBwZXJmb3JtYW5jZQo+
IHRoYW4gdGhlIHNjZW5hcmlvIGFib3ZlIChpLmUuIHdoZW4gdGhlIGtzb2Z0aXJxZCBuZXZlciBr
aWNrcyBpbik/Cj4gRXhlY3V0aW5nIHRoZSBOQVBJIHBvbGwgKmV4cGxpY2l0bHkqIGluIHRoZSBz
eXNjYWxsLCBvciBpbXBsaWNpdGx5Cj4gZnJvbSB0aGUgc29mdGlycS4KPiAKPiBIbW0sIHRoaW5r
aW5nIG91dCBsb3VkIGhlcmUuIEEgc2ltcGxlKHIpIHBhdGNoIGVuYWJsaW5nIGJ1c3kgcG9sbDsK
PiBFeHBvcnRpbmcgdGhlIG5hcGlfaWQgdG8gdGhlIEFGX1hEUCBzb2NrZXQgKHhkcC0+cnhxLT5u
YXBpX2lkIHRvCj4gc2stPnNrX25hcGlfaWQpLCBhbmQgZG8gdGhlIHNrX2J1c3lfcG9sbF9sb29w
KCkgaW4gc2VuZG1zZy4KPiAKPiBPciBkaWQgeW91IGhhdmUgc29tZXRoaW5nIGNvbXBsZXRlbHkg
ZGlmZmVyZW50IGluIG1pbmQ/CgpNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgYnVzeS1wb2xsaW5n
IGlzIGFsbG93aW5nIGFwcGxpY2F0aW9uIHRvIHBpY2sKdXAgcGFja2V0cyBmcm9tIHRoZSByaW5n
IGJlZm9yZSB0aGUgSVJRIGZpcmVzLgoKV2hhdCB3ZSdyZSBtb3JlIGNvbmNlcm5lZCBhYm91dCBp
cyB0aGUgSVJRIGZpcmluZyBpbiB0aGUgZmlyc3QgcGxhY2UuCgogYXBwbGljYXRpb246ICAgYnVz
eSAgICB8IG5lZWRzIHBhY2tldHMgfCBpZGxlCiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0t
LS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogICBzdGFuZGFyZCAgIHwgICAgICAg
ICB8ICAgcG9sbHMgTkFQSSAgfCBrZWVwIHBvbGxpbmc/IHNsZWVwPwogICBidXN5IHBvbGwgIHwg
SVJRIG9uICB8ICAgIElSUSBvZmYgICAgfCAgSVJRIG9mZiAgICAgIElSUSBvbgogLS0tLS0tLS0t
LS0tLSstLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAg
ICAgICAgICAgICB8ICAgICAgICAgfCAgIHBvbGxzIG9uY2UgIHwKICAgIEFGX1hEUCAgICB8IElS
USBvZmYgfCAgICBJUlEgb2ZmICAgIHwgIElSUSBvbgoKClNvIGJ1c3kgcG9sbGluZyBpcyBwcmV0
dHkgb3J0aG9nb25hbC4gSXQgb25seSBhcHBsaWVzIHRvIHRoZQoiYXBwbGljYXRpb24gbmVlZHMg
cGFja2V0cyIgdGltZS4gV2hhdCB3ZSdkIG5lZWQgaXMgZm9yIHRoZSBhcHBsaWNhdGlvbgp0byBi
ZSBhYmxlIHRvIHN1cHByZXNzIE5BUEkgcG9sbHMsIHByb21pc2luZyB0aGUga2VybmVsIHRoYXQg
aXQgd2lsbApidXN5IHBvbGwgd2hlbiBhcHByb3ByaWF0ZS4KCj4gQXMgZm9yIHRoaXMgcGF0Y2gg
c2V0LCBJIHRoaW5rIGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gcHVsbCBpdCBpbiBzaW5jZQo+IGl0
IG1ha2VzIHRoZSBzaW5nbGUtY29yZSBzY2VuYXJpbyAqbXVjaCogYmV0dGVyLCBhbmQgaXQgaXMg
cHJldHR5Cj4gc2ltcGxlLiBUaGVuIGRvIHRoZSBhcHBsaWNhdGlvbiBwb2xsaW5nIGFzIGFub3Ro
ZXIsIHBvdGVudGlhbGx5LAo+IGltcHJvdmVtZW50IHNlcmllcy4KClVwIHRvIHlvdSwgaXQncyBl
eHRyYSBjb2RlIGluIHRoZSBkcml2ZXIgc28gbW9zdGx5IHlvdXIgY29kZSB0bwptYWludGFpbi4K
CkkgdGhpbmsgdGhhdCBpZiB3ZSBpbXBsZW1lbnQgd2hhdCBJIGRlc2NyaWJlZCBhYm92ZSAtIGV2
ZXJ5b25lIHdpbGwKdXNlIHRoYXQgb24gYSBzaW5nbGUgY29yZSBzZXR1cCwgc28gdGhpcyBzZXQg
d291bGQgYmUgZGVhZCBjb2RlCihhc3N1bWluZyBSUSBpcyBzaXplZCBhcHByb3ByaWF0ZWx5KS4g
QnV0IGFnYWluLCB5b3VyIGNhbGwgOikKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
