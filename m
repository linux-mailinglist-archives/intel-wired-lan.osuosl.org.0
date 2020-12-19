Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1452DEC78
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Dec 2020 01:47:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5564B87C96;
	Sat, 19 Dec 2020 00:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8og2cqLDEMP7; Sat, 19 Dec 2020 00:47:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA1A687C8A;
	Sat, 19 Dec 2020 00:47:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0044D1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 00:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E604987C2F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 00:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o5RYh978HY99 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Dec 2020 00:47:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
 by whitealder.osuosl.org (Postfix) with ESMTP id D02D387A2F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 00:47:07 +0000 (UTC)
Received: from [192.168.254.6] (unknown [50.46.158.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id CB8B413C2B0;
 Fri, 18 Dec 2020 16:47:06 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com CB8B413C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1608338827;
 bh=f0/Tl/d4bQW/abe1FCObS2pMzDrC3kSM7l4FXzf3gNg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=U/zhJTzVW4wfQSEYBf0EJfz+Xxf5ed1bgqxk7DwlPfiMoArswfHLECI5+cJ2+jxEh
 kP0RafiM3PAYL4gXnVp8dZfQCYAZaeJZvc4E5ZUPI35Hk+LSPpir1JSWhG6yt2Q6d7
 A1QFu9PN/pitMlvfiYBH695MZSJcmcdQq5ApGx3M=
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <8635a2db-0d38-c088-321b-27bc4bb21ec4@candelatech.com>
Date: Fri, 18 Dec 2020 16:47:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
Content-Language: en-MW
Subject: Re: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvMTgvMjAgNDowOSBQTSwgRnVqaW5ha2EsIFRvZGQgd3JvdGU6Cj4gV2hhdCBkbyB5b3Ug
Y29uc2lkZXIgYSByZWdyZXNzaW9uPyBIYXZpbmcgdG8gZW5hYmxlIDIuNUcgYW5kIDVHIHVzaW5n
IGV0aHRvb2wgd2hpY2ggY2FuIGJlIGRvbmUgYXQgYm9vdCB0aW1lPwo+IAo+IFdlIGhhZCBtb3Jl
IHRoYW4gYSBmZXcgZGF0YWNlbnRlcnMgd2l0aCBpc3N1ZXMgYmVjYXVzZSBvZiBjb21wZXRpbmcg
c3RhbmRhcmRzLiBJIGNoZWNrZWQgd2l0aCBvdXIgbWFya2V0aW5nIHBlb3BsZSBhbmQsIG9uIHRo
ZSB3aG9sZSwgbm8gb25lIGNvdWxkIHRoaW5rIG9mIGEgbGFyZ2UgbnVtYmVyIG9mIDIuNUcgb3Ig
NUcgY3VzdG9tZXJzLgo+IAo+IFdlIGhhZCBzZXZlcmFsIGVzY2FsYXRpb25zIGZyb20gbWFqb3Ig
T0VNcyBhbmQgdGhpcyB3YXMgdGhlIHNvbHV0aW9uIHRoZXkgd2FudGVkLgo+IAo+IFdlIGNvbnNp
ZGVyIHRoaXMgbmVjZXNzYXJ5IGZvciBpbnRlcm9wZXJhYmlsaXR5LgoKQ2FuIHlvdSBkZXRlY3Qg
dGhpcyBjYXNlIHNvbWVob3cgYW5kIGF1dG9tYXRpY2FsbHkgZmFsbC1iYWNrIHRvIDFHYnBzPwoK
Rm9yIG15IG93biBwdXJwb3NlcywgSSB3aWxsIGp1c3QgaGFjayB0aGF0IGNvbW1pdCwgYnV0IGl0
IGlzIGxpa2VseSB0byBiZSBjb25mdXNpbmcKdG8gb3RoZXIgcGVvcGxlIHdobyBoYWQgYSBzeXN0
ZW0gdGhhdCB3b3JrZWQgYXQgMi41IHByZXZpb3VzbHkgYW5kIHRoZW4gc3VkZGVubHkKaXQgaXMg
c2xvd2VyLiAgVGhlcmUgaXMgbm8gZWFzeSB3YXkgdG8ga25vdyBmcm9tIHRoZSBzeW1wdG9tIHRo
YXQgeW91IG5lZWQgdG8gZGlnIHVwCmFuIG9ic2N1cmUgcmVhZG1lIGFuZCBydW4gYW4gb2JzY3Vy
ZSBldGh0b29sIGNvbW1hbmQuCgpUaGFua3MsCkJlbgoKPiAKPiBUb2RkIEZ1amluYWthCj4gU29m
dHdhcmUgQXBwbGljYXRpb24gRW5naW5lZXIKPiBEYXRhIENlbnRlciBHcm91cAo+IEludGVsIENv
cnBvcmF0aW9uCj4gdG9kZC5mdWppbmFrYUBpbnRlbC5jb20KPiAKPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+Cj4g
U2VudDogRnJpZGF5LCBEZWNlbWJlciAxOCwgMjAyMCAzOjE5IFBNCj4gVG86IEJlbiBHcmVlYXIg
PGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPjsgRnVqaW5ha2EsIFRvZGQgPHRvZGQuZnVqaW5ha2FA
aW50ZWwuY29tPgo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgR3JlZyBL
SCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBCcmFuZGVidXJnLCBKZXNzZSA8amVzc2UuYnJhbmRlYnVy
Z0BpbnRlbC5jb20+OyBUeWwsIFJhZG9zbGF3WCA8cmFkb3NsYXd4LnR5bEBpbnRlbC5jb20+OyBM
b2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+OyBNY2xl
YW4sIEFydGh1ciBGIDxhcnRodXIuZi5tY2xlYW5AaW50ZWwuY29tPjsgU2thamV3c2tpLCBQaW90
clggPHBpb3RyeC5za2FqZXdza2lAaW50ZWwuY29tPgo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2ly
ZWQtbGFuXSA1LjEwLjAga2VybmVsIHJlZ3Jlc3Npb24gZm9yIDIuNUdicHMgbGluayBuZWdvdGlh
dGlvbj8KPiAKPiBbK2NjIFJhZG9zbGF3LCBBbGVrc2FuZHIsIFBpb3RyXQo+IAo+IEFtIDE5LjEy
LjIwIHVtIDAwOjA3IHNjaHJpZWIgQmVuIEdyZWVhcjoKPj4gT24gMTIvMTgvMjAgMTE6NDMgQU0s
IFBhdWwgTWVuemVsIHdyb3RlOgo+IAo+Pj4gQW0gMTguMTIuMjAgdW0gMjA6Mjcgc2NocmllYiBG
dWppbmFrYSwgVG9kZDoKPj4+PiBZZXMsIGFuZCBJJ20gcGx1Z2dpbmcgdGhlIGhvbGUgaW4gdGhl
IFJFQURNRSByaWdodCBub3cuIEhlcmUncyB0aGUKPj4+PiBwcm9wb3NlZCB0ZXh0Ogo+Pj4+Cj4+
Pj4gQWR2ZXJ0aXNlbWVudHMgZm9yIDIuNUcgYW5kIDVHIG9uIHRoZSB4NTUwIHdlcmUgdHVybmVk
IG9mZiBieQo+Pj4+IGRlZmF1bHQgZHVlIHRvIGludGVyb3BlcmFiaWxpdHkgaXNzdWVzIHdpdGgg
Y2VydGFpbiBzd2l0Y2hlcy4gVG8KPj4+PiB0dXJuIHRoZW0gYmFjayBvbiwgdXNlCj4+Pj4KPj4+
PiBldGh0b29sIC1zIDxldGhYPiBhZHZlcnRpc2UgTgo+Pj4+Cj4+Pj4gd2hlcmUgTiBpcyBhIGNv
bWJpbmF0aW9uIG9mIHRoZSBmb2xsb3dpbmcuCj4+Pj4KPj4+PiAxMDBiYXNlVEZ1bGzCoMKgwqAg
MHgwMDgKPj4+PiAxMDAwYmFzZVRGdWxswqDCoCAweDAyMAo+Pj4+IDI1MDBiYXNlVEZ1bGzCoMKg
IDB4ODAwMDAwMDAwMDAwCj4+Pj4gNTAwMGJhc2VURnVsbMKgwqAgMHgxMDAwMDAwMDAwMDAwCj4+
Pj4gMTAwMDBiYXNlVEZ1bGzCoCAweDEwMDAKPj4+Pgo+Pj4+IEZvciBleGFtcGxlLCB0byB0dXJu
IG9uIGFsbCBtb2RlczoKPj4+PiBldGh0b29sIC1zIDxldGhYPiBhZHZlcnRpc2UgMHgxODAwMDAw
MDAxMDI4Cj4+Pj4KPj4+PiBGb3IgbW9yZSBkZXRhaWxzIHBsZWFzZSBzZWUgdGhlIGV0aHRvb2wg
bWFuIHBhZ2UuCj4+Pgo+Pj4gV2hhdCBjb21taXQgaW50cm9kdWNlZCB0aGlzIHJlZ3Jlc3Npb24u
IFBsZWFzZSBiZWFyIGluIG1pbmQsIHRoYXQKPj4+IHRoaXMgY29udHJhZGljdHMgTGludXjigJkg
bm8tcmVncmVzc2lvbiBwb2xpY3ksIGFuZCB0aGUgY29tbWl0IHNob3VsZAo+Pj4gdGhlcmVmb3Jl
IGJlIHJldmVydGVkIGFzIHNvb24gYXMgcG9zc2libGUuCj4+Cj4+IExvb2tzIGxpa2UgaXQgaXMg
YXQgdGhlIGVuZCBvZiB0aGlzIHBhdGNoLCB0aG91Z2ggdGhlIGRlc2NyaXB0aW9uCj4+IGRvZXNu
J3QgbWVudGlvbiBjaGFuZ2luZyBkZWZhdWx0czoKPj4KPj4gQ29tbWl0IGEyOTZkNjY1ZWFlMWU4
ZWM2NDQ1NjgzYmZiOTk5Yzg4NDA1ODQyNmEKPj4gQXV0aG9yOiBSYWRvc2xhdyBUeWwgPHJhZG9z
bGF3eC50eWxAaW50ZWwuY29tPgo+PiBEYXRlOsKgwqAgRnJpIEp1biAyNiAxNToyODoxNCAyMDIw
ICswMjAwCj4+Cj4+ICAgwqDCoMKgIGl4Z2JlOiBBZGQgZXRodG9vbCBzdXBwb3J0IHRvIGVuYWJs
ZSAyLjUgYW5kIDUuMCBHYnBzIHN1cHBvcnQKPj4KPj4gICDCoMKgwqAgQWRkZWQgZnVsbCBzdXBw
b3J0IGZvciBuZXcgdmVyc2lvbiBFdGh0b29sIEFQSS4gTmV3IEFQSSBhbGxvdyB1c2UKPj4gICDC
oMKgwqAgMjUwMEdiYXNlLVQgYW5kIDUwMDBiYXNlLVQgc3VwcG9ydGVkIGFuZCBhZHZlcnRpc2Vk
IGxpbmsgc3BlZWQgbW9kZXMuCj4+Cj4+ICAgwqDCoMKgIFNpZ25lZC1vZmYtYnk6IFJhZG9zbGF3
IFR5bCA8cmFkb3NsYXd4LnR5bEBpbnRlbC5jb20+Cj4+ICAgwqDCoMKgIFRlc3RlZC1ieTogQW5k
cmV3IEJvd2VycyA8YW5kcmV3eC5ib3dlcnNAaW50ZWwuY29tPgo+PiAgIMKgwqDCoCBTaWduZWQt
b2ZmLWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Cj4+Cj4+IFRo
YW5rcywKPj4gQmVuCgoKLS0gCkJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPgpD
YW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cuY2FuZGVsYXRlY2guY29tCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
