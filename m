Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E7B5D5D1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 20:01:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA70421503;
	Tue,  2 Jul 2019 18:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-xI02LTLPF0; Tue,  2 Jul 2019 18:01:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EC3C721080;
	Tue,  2 Jul 2019 18:01:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B94E41BF384
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 18:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B330C84468
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 18:01:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ck1v9MBaDKZL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 18:01:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EBFFA86C02
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 18:01:16 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E15CF21721;
 Tue,  2 Jul 2019 18:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562090476;
 bh=kIyxmE2Mr1IyGzQ4fVM/a6nCRCw2PNXuUwGbNB+MA+8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OaeHKq6Ue8uNfTzlxnZXXbihytg9QMqaUnI2S2DhsYTgdm9nOjREh0s1HoBp1xDlO
 jMLz038dAIeYfukbzvZ+QbDEhd/+8PpFGdtXSlH3SQhtX6cp5uij9hy/245ylau6iA
 Xi1Fyx+Rl6dX3GqKOxvYfoiCMYlh66VMbaFM4s7U=
Date: Tue, 2 Jul 2019 13:01:12 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kai Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20190702180112.GB128603@google.com>
References: <C4036C54-EEEB-47F3-9200-4DD1B22B4280@canonical.com>
 <3975473C-B117-4DC6-809A-6623A5A478BF@canonical.com>
 <ed4eca8e-d393-91d7-5d2f-97d42e0b75cb@intel.com>
 <1804A45E-71B5-4C41-839C-AF0CFAD0D785@canonical.com>
 <E29A2CD2-1632-4575-9910-0808BD15F4D3@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E29A2CD2-1632-4575-9910-0808BD15F4D3@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] RX CRC errors on I219-V (6) 8086:15be
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
Cc: Linux PCI <linux-pci@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Anthony Wong <anthony.wong@canonical.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBKdWwgMDIsIDIwMTkgYXQgMDQ6MjU6NTlQTSArMDgwMCwgS2FpIEhlbmcgRmVuZyB3
cm90ZToKPiArbGludXgtcGNpCj4gCj4gSGkgU2FzaGEsCj4gCj4gYXQgNjo0OSBQTSwgS2FpLUhl
bmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3cm90ZToKPiAKPiA+IGF0IDE0
OjI2LCBOZWZ0aW4sIFNhc2hhIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPiB3cm90ZToKPiA+IAo+
ID4gPiBPbiA2LzI2LzIwMTkgMDk6MTQsIEthaSBIZW5nIEZlbmcgd3JvdGU6Cj4gPiA+ID4gSGkg
U2FzaGEKPiA+ID4gPiBhdCA1OjA5IFBNLCBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNh
bm9uaWNhbC5jb20+IHdyb3RlOgo+ID4gPiA+ID4gSGkgSmVmZnJleSwKPiA+ID4gPiA+IAo+ID4g
PiA+ID4gV2XigJl2ZSBlbmNvdW50ZXJlZCBhbm90aGVyIGlzc3VlLCB3aGljaCBjYXVzZXMgbXVs
dGlwbGUgQ1JDCj4gPiA+ID4gPiBlcnJvcnMgYW5kIHJlbmRlcnMgZXRoZXJuZXQgY29tcGxldGVs
eSB1c2VsZXNzLCBoZXJl4oCZcyB0aGUKPiA+ID4gPiA+IG5ldHdvcmsgc3RhdHM6Cj4gPiA+ID4g
SSBhbHNvIHRyaWVkIGlnbm9yZV9sdHIgZm9yIHRoaXMgaXNzdWUsIHNlZW1zIGxpa2UgaXQgYWxs
ZXZpYXRlcwo+ID4gPiA+IHRoZSBzeW1wdG9tIGEgYml0IGZvciBhIHdoaWxlLCB0aGVuIHRoZSBu
ZXR3b3JrIHN0aWxsIGJlY29tZXMKPiA+ID4gPiB1c2VsZXNzIGFmdGVyIHNvbWUgdXNhZ2UuCj4g
PiA+ID4gQW5kIHllcywgaXTigJlzIGFsc28gYSBXaGlza2V5IExha2UgcGxhdGZvcm0uIFdoYXTi
gJlzIHRoZSBuZXh0IHN0ZXAKPiA+ID4gPiB0byBkZWJ1ZyB0aGlzIHByb2JsZW0/Cj4gPiA+ID4g
S2FpLUhlbmcKPiA+ID4gQ1JDIGVycm9ycyBub3QgcmVsYXRlZCB0byB0aGUgTFRSLiBQbGVhc2Us
IHRyeSB0byBkaXNhYmxlIHRoZSBNRSBvbgo+ID4gPiB5b3VyIHBsYXRmb3JtLiBIb3BlIHlvdSBo
YXZlIHRoaXMgb3B0aW9uIGluIEJJT1MuIEFub3RoZXIgd2F5IGlzIHRvCj4gPiA+IGNvbnRhY3Qg
eW91ciBQQyB2ZW5kb3IgYW5kIGFzayB0byBwcm92aWRlIE5WTSB3aXRob3V0IE1FLiBMZXQncwo+
ID4gPiBzdGFydCBkZWJ1Z2dpbmcgd2l0aCB0aGVzZSBzdGVwcy4KPiA+IAo+ID4gQWNjb3JkaW5n
IHRvIE9ETSwgdGhlIE1FIGNhbiBiZSBwaHlzaWNhbGx5IGRpc2FibGVkIGJ5IGEganVtcGVyLgo+
ID4gQnV0IGFmdGVyIGRpc2FibGluZyB0aGUgTUUgdGhlIHNhbWUgaXNzdWUgY2FuIHN0aWxsIGJl
IG9ic2VydmVkLgo+IAo+IFdl4oCZdmUgZm91bmQgdGhhdCB0aGlzIGlzc3VlIGRvZXNu4oCZdCBo
YXBwZW4gdG8gU0FUQSBTU0QsIGl0IG9ubHkgaGFwcGVucyB3aGVuCj4gTlZNZSBTU0QgaXMgaW4g
dXNlLgo+IAo+IEhlcmUgYXJlIHRoZSBzdGVwczoKPiAtIERpc2FibGUgTlZNZSBBU1BNLCBpc3N1
ZSBwZXJzaXN0cwo+IC0gbW9kcHJvYmUgLXIgZTEwMDBlICYmIG1vZHByb2JlIGUxMDAwZSwgaXNz
dWUgZG9lc27igJl0IGhhcHBlbgo+IC0gRW5hYmxpbmcgTlZNZSBBU1BNLCBpc3N1ZSBkb2VzbuKA
mXQgaGFwcGVuCj4gCj4gQXMgbG9uZyBhcyBOVk1lIEFTUE0gZ2V0cyBlbmFibGVkIGFmdGVyIGUx
MDAwZSBnZXRzIGxvYWRlZCwgdGhlIGlzc3VlCj4gZG9lc27igJl0IGhhcHBlbi4KCklJVUMgdGhl
IHByb2JsZW0gaGFwcGVucyB3aXRoIHRoZSBtYWlubGluZSBhbmQgZGV2LXF1ZXVlIGUxMDAwZQpk
cml2ZXIsIGJ1dCBub3Qgd2l0aCB0aGUgb3V0LW9mLXRyZWUgSW50ZWwgZHJpdmVyLiAgU2luY2Ug
dGhlcmUgaXMgYQp3b3JraW5nIGRyaXZlciBhbmQgdGhlcmUncyB0aGUgcG90ZW50aWFsIChhdCBs
ZWFzdCBpbiBwcmluY2lwbGUpIGZvcgp1bmlmeWluZyB0aGVtIG9yIGJpc2VjdGluZyBiZXR3ZWVu
IHRoZW0sIEkgaGF2ZSBsaW1pdGVkIGludGVyZXN0IGluCmRlYnVnZ2luZyBpdCBmcm9tIHNjcmF0
Y2guCgpJZiBpdCB0dXJucyBvdXQgdG8gYmUgYSBQQ0kgY29yZSBwcm9ibGVtLCBJIHdvdWxkIHdh
bnQgdG8ga25vdzogV2hhdCdzCnRoZSBQQ0kgdG9wb2xvZ3k/ICAibHNwY2kgLXZ2IiBvdXRwdXQg
Zm9yIHRoZSBzeXN0ZW0/ICBEb2VzIGl0IG1ha2UgYQpkaWZmZXJlbmNlIGlmIHlvdSBib290IHdp
dGggInBjaWVfYXNwbT1vZmYiPyAgQ29sbGVjdCBjb21wbGV0ZSBkbWVzZywKbWF5YmUgYXR0YWNo
IGl0IHRvIGEga2VybmVsLm9yZyBidWd6aWxsYT8KCj4gPiA+ID4gPiAvc3lzL2NsYXNzL25ldC9l
bm8xL3N0YXRpc3RpY3MkIGdyZXAgLiAqCj4gPiA+ID4gPiBjb2xsaXNpb25zOjAKPiA+ID4gPiA+
IG11bHRpY2FzdDo5NQo+ID4gPiA+ID4gcnhfYnl0ZXM6MTQ5OTg1MQo+ID4gPiA+ID4gcnhfY29t
cHJlc3NlZDowCj4gPiA+ID4gPiByeF9jcmNfZXJyb3JzOjExNjUKPiA+ID4gPiA+IHJ4X2Ryb3Bw
ZWQ6MAo+ID4gPiA+ID4gcnhfZXJyb3JzOjIzMzAKPiA+ID4gPiA+IHJ4X2ZpZm9fZXJyb3JzOjAK
PiA+ID4gPiA+IHJ4X2ZyYW1lX2Vycm9yczowCj4gPiA+ID4gPiByeF9sZW5ndGhfZXJyb3JzOjAK
PiA+ID4gPiA+IHJ4X21pc3NlZF9lcnJvcnM6MAo+ID4gPiA+ID4gcnhfbm9oYW5kbGVyOjAKPiA+
ID4gPiA+IHJ4X292ZXJfZXJyb3JzOjAKPiA+ID4gPiA+IHJ4X3BhY2tldHM6NDc4OQo+ID4gPiA+
ID4gdHhfYWJvcnRlZF9lcnJvcnM6MAo+ID4gPiA+ID4gdHhfYnl0ZXM6ODY0MzEyCj4gPiA+ID4g
PiB0eF9jYXJyaWVyX2Vycm9yczowCj4gPiA+ID4gPiB0eF9jb21wcmVzc2VkOjAKPiA+ID4gPiA+
IHR4X2Ryb3BwZWQ6MAo+ID4gPiA+ID4gdHhfZXJyb3JzOjAKPiA+ID4gPiA+IHR4X2ZpZm9fZXJy
b3JzOjAKPiA+ID4gPiA+IHR4X2hlYXJ0YmVhdF9lcnJvcnM6MAo+ID4gPiA+ID4gdHhfcGFja2V0
czo3MzcwCj4gPiA+ID4gPiB0eF93aW5kb3dfZXJyb3JzOjAKPiA+ID4gPiA+IAo+ID4gPiA+ID4g
U2FtZSBiZWhhdmlvciBjYW4gYmUgb2JzZXJ2ZWQgb24gYm90aCBtYWlubGluZSBrZXJuZWwgYW5k
IG9uCj4gPiA+ID4gPiB5b3VyIGRldi1xdWV1ZSBicmFuY2guCj4gPiA+ID4gPiBPVE9ILCB0aGUg
c2FtZSBpc3N1ZSBjYW7igJl0IGJlIG9ic2VydmVkIG9uIG91dC1vZi10cmVlIGUxMDAwZS4KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gSXMgdGhlcmUgYW55IHBsYW4gdG8gY2xvc2UgdGhlIGdhcCBiZXR3
ZWVuIHVwc3RyZWFtIGFuZAo+ID4gPiA+ID4gb3V0LW9mLXRyZWUgdmVyc2lvbj8KPiA+ID4gPiA+
IAo+ID4gPiA+ID4gS2FpLUhlbmcKPiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
