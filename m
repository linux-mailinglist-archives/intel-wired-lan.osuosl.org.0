Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA503BBB28
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 12:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7281A40482;
	Mon,  5 Jul 2021 10:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id neSepgZQD5Wl; Mon,  5 Jul 2021 10:22:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 676E54047D;
	Mon,  5 Jul 2021 10:22:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EAC581BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 10:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D466060681
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 10:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IfvEcneIkLJW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 10:22:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5043F605A0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 10:22:20 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeda9.dynamic.kabel-deutschland.de
 [95.90.237.169])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 77C9C61E64761;
 Mon,  5 Jul 2021 12:22:16 +0200 (CEST)
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
 <20210622212134.341728-2-michal.swiatkowski@linux.intel.com>
 <f1083357-9eb9-3bbb-baa5-0b4392ca4d4f@molgen.mpg.de>
 <YNKtdJjFpyiZG1YJ@localhost.localdomain>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <85e1e813-bb82-d2f4-6082-87205ab494a7@molgen.mpg.de>
Date: Mon, 5 Jul 2021 12:22:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YNKtdJjFpyiZG1YJ@localhost.localdomain>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 01/12] ice: basic support
 for eswitch mode management
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNaWNoYWwsCgoKQW0gMjMuMDYuMjEgdW0gMDU6NDEgc2NocmllYiBNaWNoYWwgU3dpYXRr
b3dza2k6Cj4gT24gV2VkLCBKdW4gMjMsIDIwMjEgYXQgMDc6NTg6MDBBTSArMDIwMCwgUGF1bCBN
ZW56ZWwgd3JvdGU6Cgo+PiBBbSAyMi4wNi4yMSB1bSAyMzoyMSBzY2hyaWViIE1pY2hhbCBTd2lh
dGtvd3NraToKClvigKZdCgo+Pj4gLSByZXN0b3JlICdsZWdhY3knIG1vZGUKPj4+IFtyb290QGxv
Y2FsaG9zdF0jIGRldmxpbmsgZGV2IGVzd2l0Y2ggc2V0IHBjaS8wMDAwOjAzOjAwLjEgbW9kZSBs
ZWdhY3kKPj4+IFtyb290QGxvY2FsaG9zdF0jIGRldmxpbmsgZGV2IGVzd2l0Y2ggc2hvdyBwY2kv
MDAwMDowMzowMC4xCj4+Pj4gcGNpLzAwMDA6MDM6MDAuMTogbW9kZSBsZWdhY3kKPj4KPj4gVGhh
bmsgeW91IGZvciBhZGRpbmcgdGhlc2UgZXhhbXBsZXMgdG8gdGhlIGNvbW1pdCBtZXNzYWdlLiBJ
4oCZZCBwdXQgc29tZSBvZgo+PiB0aGVtIGludG8gdGhlIEtjb25maWcgZGVzY3JpcHRpb24gb2Yg
YElDRV9TV0lUQ0hERVZgLgoKPiBZb3UgbWVhbiBwdXR0aW5nIHRoaXMgZGV2bGluayBjb21tYW5k
IHRvIGhlbHAgc2VjdGlvbiBvZiBLY29uZmlnPwo+IFNvbWV0aGluZyBsaWtlOgo+IFRvIGdvIHRv
IEUtc3dpdGNoIG1vZGUgdHlwZToKPiBkZXZsaW5rIGRldiBlc3dpdGNoIHNldCBwY2kvMDAwMDow
MzowMC4xIG1vZGUgc3dpdGNoZGV2Cj4gCj4gSXMgdGhpcyByaWdodCBwbGFjZSBmb3IgdGhpcyBr
aW5kIG9mIGluZm9ybWF0aW9uPyBJIGhhdmUgc2VlbiB0aGF0Cj4gTWVsbGFub3ggZG9lc24ndCBo
YXZlIGNvbW1hbmQgZXhhbXBsZSBpbiBLY29uZmlnIGZvciBzd2l0Y2hkZXYuCgpJbmRlZWQuIFRo
ZXJlIGlzIApgRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJzL2V0aGVybmV0
L21lbGxhbm94L21seDUucnN0YC4gQXMgCmxvbmcgYXMgdGhlcmUgaXMgbm8gZG9jdW1lbnRhdGlv
biwgSeKAmWQgcHV0IGl0IGludG8gdGhlIEtjb25maWcgCmRlc2NyaXB0aW9uLiBJZiB5b3UgYWRk
IGRvY3VtZW50YXRpb24sIHRoZW4ganVzdCByZWZlciB0byB0aGF0IGZyb20gdGhlIApLY29uZmln
IGRlc2NyaXB0aW9uLgoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
