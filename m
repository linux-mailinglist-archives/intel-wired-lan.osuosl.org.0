Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA9325E46E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Sep 2020 01:58:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B549084D74;
	Fri,  4 Sep 2020 23:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bsAPedfCG0Fw; Fri,  4 Sep 2020 23:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CFF5484DD4;
	Fri,  4 Sep 2020 23:58:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18E731BF42D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 23:58:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0CA6384D74
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 23:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 22-iXj8Fc--9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 23:58:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9AB52849B8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 23:58:39 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD6E3206CB;
 Fri,  4 Sep 2020 23:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599263919;
 bh=XtGzJW4VFXok9FC1vkT42Cwb4ib3m7FQWch4BrbhHT0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=yZWxdRYeR3vwcHTj/rE42tWZGXJKfNFCfIv7XzRAL7QCl3lliRU/7i7RJNd672ort
 Z4tpPBjXFVF2bOI8w2OJz3PeakkQoD5aHAC24dZAvoLnSKahL7Dq5UKQR55hHK0GNb
 v7v4Fk/RpE3BEMcpk8LHqde9lz8IFGXhyX/TXCqE=
Date: Fri, 4 Sep 2020 16:58:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <20200904165837.16d8ecfd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <27e05518-99c6-15e2-b801-cbc0310630ef@intel.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
 <20200904162751.632c4443@carbon>
 <27e05518-99c6-15e2-b801-cbc0310630ef@intel.com>
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

T24gRnJpLCA0IFNlcCAyMDIwIDE2OjMyOjU2ICswMjAwIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4g
T24gMjAyMC0wOS0wNCAxNjoyNywgSmVzcGVyIERhbmdhYXJkIEJyb3VlciB3cm90ZToKPiA+IE9u
IEZyaSwgIDQgU2VwIDIwMjAgMTU6NTM6MjUgKzAyMDAKPiA+IEJqw7ZybiBUw7ZwZWwgPGJqb3Ju
LnRvcGVsQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiAgIAo+ID4+IE9uIG15IG1hY2hpbmUgdGhlICJv
bmUgY29yZSBzY2VuYXJpbyBSeCBkcm9wIiBwZXJmb3JtYW5jZSB3ZW50IGZyb20KPiA+PiB+NjVL
cHBzIHRvIDIxTXBwcy4gSW4gb3RoZXIgd29yZHMsIGZyb20gIm5vdCB1c2FibGUiIHRvCj4gPj4g
InVzYWJsZSIuIFlNTVYuICAKPiA+IAo+ID4gV2UgaGF2ZSBvYnNlcnZlZCB0aGlzIGtpbmQgb2Yg
ZHJvcHBpbmcgb2ZmIGFuIGVkZ2UgYmVmb3JlIHdpdGggc29mdGlycQo+ID4gKHdoZW4gdXNlcnNw
YWNlIHByb2Nlc3MgcnVucyBvbiBzYW1lIFJYLUNQVSksIGJ1dCBJIHRob3VnaHQgdGhhdCBFcmlj
Cj4gPiBEdW1hemV0IHNvbHZlZCBpdCBpbiA0Y2QxM2MyMWIyMDcgKCJzb2Z0aXJxOiBMZXQga3Nv
ZnRpcnFkIGRvIGl0cyBqb2IiKS4KPiA+IAo+ID4gSSB3b25kZXIgd2hhdCBtYWtlcyBBRl9YRFAg
ZGlmZmVyZW50IG9yIGlmIHRoZSBwcm9ibGVtIGhhdmUgY29tZSBiYWNrPwo+ID4gICAKPiAKPiBJ
IHdvdWxkIHNheSB0aGlzIGlzIG5vdCB0aGUgc2FtZSBpc3N1ZS4gVGhlIHByb2JsZW0gaXMgdGhh
dCB0aGUgc29mdGlycSAKPiBpcyBidXN5IGRyb3BwaW5nIHBhY2tldHMgc2luY2UgdGhlIEFGX1hE
UCBSeCBpcyBmdWxsLiBTbywgdGhlIGN5Y2xlcyAKPiAqYXJlKiBzcGxpdCA1MC81MCwgd2hpY2gg
aXMgbm90IHdoYXQgd2Ugd2FudCBpbiB0aGlzIGNhc2UuIDotKQo+IAo+IFRoaXMgaXNzdWUgaXMg
bW9yZSBvZiBhICJJbnRlbCBBRl9YRFAgWkMgZHJpdmVycyBkb2VzIHN0dXBpZCB3b3JrIiwgdGhh
biAKPiBmYWlybmVzcy4gSWYgdGhlIFJ4IHJpbmcgaXMgZnVsbCwgdGhlbiB0aGVyZSBpcyByZWFs
bHkgbm8gdXNlIHRvIGxldCB0aGUgCj4gTkFQSSBsb29wIGNvbnRpbnVlLgo+IAo+IFdvdWxkIHlv
dSBhZ3JlZSwgb3IgYW0gSSByYW1ibGluZz8gOi1QCgpJIHdvbmRlciBpZiBrc29mdGlycWQgbmV2
ZXIga2lja3MgaW4gYmVjYXVzZSB3ZSBhcmUgYWJsZSB0byBkaXNjYXJkIAp0aGUgZW50aXJlIHJp
bmcgYmVmb3JlIHdlIHJ1biBvdXQgb2Ygc29mdGlycSAic2xpY2UiLgoKCkkndmUgYmVlbiBwb25k
ZXJpbmcgdGhlIGV4YWN0IHByb2JsZW0geW91J3JlIHNvbHZpbmcgd2l0aCBNYWNpZWoKcmVjZW50
bHkuIFRoZSBlZmZpY2llbmN5IG9mIEFGX1hEUCBvbiBvbmUgY29yZSB3aXRoIHRoZSBOQVBJIHBy
b2Nlc3NpbmcuCgpZb3VyIHNvbHV0aW9uIChldmVuIHRob3VnaCBpdCBhZG1pdHRlZGx5IGhlbHBz
LCBhbmQgaXMgcXVpdGUgc2ltcGxlKQpzdGlsbCBoYXMgdGhlIGFwcGxpY2F0aW9uIHBvdGVudGlh
bGx5IG5vdCBhYmxlIHRvIHByb2Nlc3MgcGFja2V0cyAKdW50aWwgdGhlIHF1ZXVlIGZpbGxzIHVw
LiBUaGlzIHdpbGwgYmUgYmFkIGZvciBsYXRlbmN5LgoKV2h5IGRvbid0IHdlIG1vdmUgY2xvc2Vy
IHRvIGFwcGxpY2F0aW9uIHBvbGxpbmc/IE5ldmVyIHJlLWFybSB0aGUgTkFQSSAKYWZ0ZXIgUlgs
IGxldCB0aGUgYXBwbGljYXRpb24gYXNrIGZvciBwYWNrZXRzLCByZS1hcm0gaWYgMCBwb2xsZWQu
IApZb3UnZCBnZXQgbWF4IGJhdGNoaW5nLCBtaW4gbGF0ZW5jeS4KCldobydzIHRoZSByYW1ibGlu
ZyBvbmUgbm93PyA6LUQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
