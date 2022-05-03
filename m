Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1AF51A15A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 May 2022 15:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AE9283E17;
	Wed,  4 May 2022 13:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bITA6ho_6m63; Wed,  4 May 2022 13:50:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76F1A83DF3;
	Wed,  4 May 2022 13:50:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 534DF1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 13:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3BDD54171E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 13:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7xuRrv_noXbO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 May 2022 13:45:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from angie.orcam.me.uk (angie.orcam.me.uk [IPv6:2001:4190:8020::34])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55E634171C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 13:45:15 +0000 (UTC)
Received: by angie.orcam.me.uk (Postfix, from userid 500)
 id 86FD492009C; Tue,  3 May 2022 15:36:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by angie.orcam.me.uk (Postfix) with ESMTP id 8082392009B;
 Tue,  3 May 2022 14:36:21 +0100 (BST)
Date: Tue, 3 May 2022 14:36:21 +0100 (BST)
From: "Maciej W. Rozycki" <macro@orcam.me.uk>
To: Niklas Schnelle <schnelle@linux.ibm.com>
In-Reply-To: <867e70df01fc938abf93ffa15a3f1989a8fb136b.camel@linux.ibm.com>
Message-ID: <alpine.DEB.2.21.2205031359490.64520@angie.orcam.me.uk>
References: <20220429135108.2781579-1-schnelle@linux.ibm.com>
 <20220429135108.2781579-36-schnelle@linux.ibm.com>
 <alpine.DEB.2.21.2205012324130.9383@angie.orcam.me.uk>
 <867e70df01fc938abf93ffa15a3f1989a8fb136b.camel@linux.ibm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 04 May 2022 13:50:48 +0000
Subject: Re: [Intel-wired-lan] [RFC v2 21/39] net: add HAS_IOPORT
 dependencies
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:CAN NETWORK DRIVERS" <linux-can@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "open list:AX.25 NETWORK LAYER" <linux-hams@vger.kernel.org>,
 linux-pci@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Wolfgang Grandegger <wg@grandegger.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAzIE1heSAyMDIyLCBOaWtsYXMgU2NobmVsbGUgd3JvdGU6Cgo+ID4gIFRoZSBkcml2
ZXIgd29ya3MganVzdCBmaW5lIHdpdGggTU1JTyB3aGVyZSBhdmFpbGFibGUsIHNvIGlmIGBpbmIn
L2BvdXRiJyAKPiA+IGRvIGdldCByZW1vdmVkLCB0aGVuIG9ubHkgcGFydHMgdGhhdCByZWx5IG9u
IHBvcnQgSS9PIG5lZWQgdG8gYmUgZGlzYWJsZWQuICAKPiA+IEluIGZhY3QgdGhlcmUncyBhbHJl
YWR5IHN1Y2ggcHJvdmlzaW9uIHRoZXJlIGluIGRyaXZlcnMvbmV0L2ZkZGkvZGVmeHguYyAKPiA+
IGZvciBUVVJCT2NoYW5uZWwgc3lzdGVtcyAoQ09ORklHX1RDKSwgd2hpY2ggaGF2ZSBubyBwb3J0
IEkvTyBzcGFjZSBlaXRoZXI6Cj4gPiAKPiA+ICNpZiBkZWZpbmVkKENPTkZJR19FSVNBKSB8fCBk
ZWZpbmVkKENPTkZJR19QQ0kpCj4gPiAjZGVmaW5lIGRmeF91c2VfbW1pbyBicC0+bW1pbwo+ID4g
I2Vsc2UKPiA+ICNkZWZpbmUgZGZ4X3VzZV9tbWlvIHRydWUKPiA+ICNlbmRpZgo+ID4gCj4gPiBz
byBJIGd1ZXNzIGl0J3MganVzdCB0aGUgY29uZGl0aW9uYWwgdGhhdCB3aWxsIGhhdmUgdG8gYmUg
Y2hhbmdlZCB0bzoKPiA+IAo+ID4gI2lmZGVmIENPTkZJR19IQVNfSU9QT1JUCj4gPiAKPiA+IHJl
cGxhY2luZyB0aGUgY3VycmVudCBleHBsaWNpdCBidXMgZGVwZW5kZW5jeSBsaXN0LiAgVGhlIGNv
bXBpbGVyIHdpbGwgCj4gPiB0aGVuIG9wdGltaXNlIGF3YXkgYWxsIHRoZSBwb3J0IEkvTyBzdHVm
ZiAodGhvdWdoIEkgc3VzcGVjdCBkdW1teSBmdW5jdGlvbiAKPiA+IGRlY2xhcmF0aW9ucyBtYXkg
YmUgcmVxdWlyZWQgZm9yIGBpbmInL2BvdXRiJywgZXRjLikuClsuLi5dCj4gV2l0aCBkZnhfdXNl
X21taW8gY2hhbmdlZCBhcyB5b3UgcHJvcG9zZSBhYm92ZSB0aGluZ3MgY29tcGlsZSBvbiBzMzkw
Cj4gd2hpY2ggcHJldmlvdXNseSByYW4gaW50byBtaXNzaW5nIChub3cgX19jb21waWxlX2Vycm9y
KCkpIGlubCgpIHZpYQo+IGRmeF9wb3J0X3JlYWRfbG9uZygpIC0+IGRmeF9pbmwoKSAtPiAgaW5s
KCkuCgogR3JlYXQsIHRoYW5rcyBmb3IgY2hlY2tpbmchICBBbmQgSSBub3RlIHJlZmVycmluZyBg
X19jb21waWxlX2Vycm9yJyBpcyAKcm91Z2hseSBlcXVpdmFsZW50IHRvIGEgZHVtbXkgZGVjbGFy
YXRpb24sIHNvIHlvdSd2ZSBnb3QgdGhhdCBwYXJ0IHNvcnRlZC4KCj4gTG9va2luZyBhdCB0aGUg
b3RoZXIgdXNlcyBvZiBkZnhfdXNlX21taW8gSSBub3RpY2UgaG93ZXZlciB0aGF0IGluCj4gZGZ4
X2dldF9iYXJzKCksIGluYigpIGFjdHVhbGx5IGdldHMgY2FsbGVkIHdoZW4gZGZ4X3VzZV9tbWlv
IGlzIHRydWUuCj4gVGhpcyBoYXBwZW5zIGlmIGRmeF9idXNfZWlzYSBpcyBhbHNvIHRydWUuIE5v
dyB0aGF0IHZhcmlhYmxlIGlzIGp1c3QKPiB0aGUgY2FjaGVkIHJlc3VsdCBvZiBERlhfQlVTX0VJ
U0EoZGV2KSB3aGljaCBpcyBkZWZpbmVkIHRvIDAgaWYKPiBDT05GSUdfRUlTQSBpcyB1bnNldC4g
SSdtIG5vdCAxMDAlIHN1cmUgaWYgZ29pbmcgdGhyb3VnaCBhIGxvY2FsCj4gdmFyaWFibGUgaXMg
c3RpbGwgY29uc2lkZXJlZCB0cml2aWFsIGVub3VnaCBkZWFkIGNvZGUgZWxpbWluYXRpb24sIGF0
Cj4gbGVhc3QgaXQgd29ya3MgZm9yIG1l4oSiLiBJIGRpZCBhbHNvIGNoZWNrIHRoZSBHQ0MgZG9j
cyBhbmQgdGhleQo+IGV4cGxpY2l0bHkgc2F5IHRoYXQgX19hdHRyaWJ1dGVfXyhlcnJvcikgaXMg
c3VwcG9zZWQgdG8gYmUgdXNlZCB3aGVuCj4gZGVhZCBjb2RlIGVsaW1pbmF0aW9uIGdldHMgcmlk
IG9mIHRoZSBlcnJvciBwYXRocy4KCiBZZWFoLCBkZWFkIGNvZGUgZWxpbWluYXRpb24gaXMgc3Vw
cG9zZWQgdG8gaGFuZGxlIHN1Y2ggY2FzZXMuICBUaGUgbG9jYWwKYXV0b21hdGljIHZhcmlhYmxl
IGlzIGVzc2VudGlhbGx5IGEgc3ludGFjdGljIGZlYXR1cmUgbm90IHRvIHVzZSB0aGUgc2FtZSAK
ZXhwcmVzc2lvbiBpbmxpbmUgb3ZlciBhbmQgb3ZlciB0aHJvdWdob3V0IGEgZnVuY3Rpb24gKGZv
ciBjbGFyaXR5IHRoZSAKdmFyaWFibGUgc2hvdWxkIHByb2JhYmx5IGJlIGRlY2xhcmVkIGBjb25z
dCcsIGJ1dCB0aGF0IGlzIG5vdCBlc3NlbnRpYWwpIAphbmQgaXQgaXMgdXAgdG8gdGhlIGNvbXBp
bGVyIHdoZXRoZXIgdG8gcmV1c2UgdGhlIHZhbHVlIHByZXZpb3VzbHkgCmNhbGN1bGF0ZWQgb3Ig
dG8gcmUtZXZhbHVhdGUgdGhlIGV4cHJlc3Npb24uCgo+IEkgdGhpbmsgd2UgYWxzbyBuZWVkIGEg
ImRlcGVuZHMgb24gSEFTX0lPUE9SVCIgZm9yICJjb25maWcgSEFWRV9FSVNBIgo+IGp1c3QgYXMg
SSdtIGFkZGluZyBmb3IgImNvbmZpZyBJU0EiLgoKIE9oIGFic29sdXRlbHkhICBUaGVyZSdzIHRo
ZSBzbG90LXNwZWNpZmljIHBvcnQgSS9PIHNwYWNlIHRoYXQgaXMgdXNlZCB0byAKaWRlbnRpZnkg
RUlTQSBvcHRpb24gY2FyZHMgaW4gZGV2aWNlIGRpc2NvdmVyeSwgc28gbm8gRUlTQSBkZXZpY2Ug
d2lsbCAKZXZlciB3b3JrIHdpdGhvdXQgcG9ydCBJL08uICBIYXZlIGEgbG9vayBhdCBgZGVjb2Rl
X2Vpc2Ffc2lnJyBpbiAKZHJpdmVycy9laXNhL2Vpc2EtYnVzLmMgZm9yIHRoZSB2ZXJ5IG9idmlv
dXMgY29kZS4gIE5vdGUgdGhhdCBzb21lIElTQSAKY2FyZHMgY2FuIGJlIGNvbmZpZ3VyZWQgdG8g
YXBwZWFyIGFzIEVJU0EgZGV2aWNlcyBhcyB3ZWxsIChJIGhhdmUgYSAzYzUwOUIgCkV0aGVybmV0
IE5JQyBzZXQgdXAgdGhhdCB3YXkpLgoKICBNYWNpZWoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
