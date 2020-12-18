Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0D02DEBE2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Dec 2020 00:19:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2E9A87C6A;
	Fri, 18 Dec 2020 23:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lM-rJs4GZR+6; Fri, 18 Dec 2020 23:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8912C87C60;
	Fri, 18 Dec 2020 23:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A23E1BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 23:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83703857F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 23:19:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8XyfUcdZYjZQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 23:19:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2CC008589C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 23:19:26 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aef6e.dynamic.kabel-deutschland.de
 [95.90.239.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 29B8520646219;
 Sat, 19 Dec 2020 00:19:23 +0100 (CET)
To: Ben Greear <greearb@candelatech.com>,
 Todd Fujinaka <todd.fujinaka@intel.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
Date: Sat, 19 Dec 2020 00:19:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
Content-Language: en-US
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
Cc: Arthur F Mclean <arthur.f.mclean@intel.com>,
 Radoslaw Tyl <radoslawx.tyl@intel.com>, Greg KH <gregkh@linuxfoundation.org>,
 Piotr Skajewski <piotrx.skajewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

WytjYyBSYWRvc2xhdywgQWxla3NhbmRyLCBQaW90cl0KCkFtIDE5LjEyLjIwIHVtIDAwOjA3IHNj
aHJpZWIgQmVuIEdyZWVhcjoKPiBPbiAxMi8xOC8yMCAxMTo0MyBBTSwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cgo+PiBBbSAxOC4xMi4yMCB1bSAyMDoyNyBzY2hyaWViIEZ1amluYWthLCBUb2RkOgo+Pj4g
WWVzLCBhbmQgSSdtIHBsdWdnaW5nIHRoZSBob2xlIGluIHRoZSBSRUFETUUgcmlnaHQgbm93LiBI
ZXJlJ3MgdGhlIAo+Pj4gcHJvcG9zZWQgdGV4dDoKPj4+Cj4+PiBBZHZlcnRpc2VtZW50cyBmb3Ig
Mi41RyBhbmQgNUcgb24gdGhlIHg1NTAgd2VyZSB0dXJuZWQgb2ZmIGJ5IGRlZmF1bHQgCj4+PiBk
dWUgdG8KPj4+IGludGVyb3BlcmFiaWxpdHkgaXNzdWVzIHdpdGggY2VydGFpbiBzd2l0Y2hlcy4g
VG8gdHVybiB0aGVtIGJhY2sgb24sIHVzZQo+Pj4KPj4+IGV0aHRvb2wgLXMgPGV0aFg+IGFkdmVy
dGlzZSBOCj4+Pgo+Pj4gd2hlcmUgTiBpcyBhIGNvbWJpbmF0aW9uIG9mIHRoZSBmb2xsb3dpbmcu
Cj4+Pgo+Pj4gMTAwYmFzZVRGdWxswqDCoMKgIDB4MDA4Cj4+PiAxMDAwYmFzZVRGdWxswqDCoCAw
eDAyMAo+Pj4gMjUwMGJhc2VURnVsbMKgwqAgMHg4MDAwMDAwMDAwMDAKPj4+IDUwMDBiYXNlVEZ1
bGzCoMKgIDB4MTAwMDAwMDAwMDAwMAo+Pj4gMTAwMDBiYXNlVEZ1bGzCoCAweDEwMDAKPj4+Cj4+
PiBGb3IgZXhhbXBsZSwgdG8gdHVybiBvbiBhbGwgbW9kZXM6Cj4+PiBldGh0b29sIC1zIDxldGhY
PiBhZHZlcnRpc2UgMHgxODAwMDAwMDAxMDI4Cj4+Pgo+Pj4gRm9yIG1vcmUgZGV0YWlscyBwbGVh
c2Ugc2VlIHRoZSBldGh0b29sIG1hbiBwYWdlLgo+Pgo+PiBXaGF0IGNvbW1pdCBpbnRyb2R1Y2Vk
IHRoaXMgcmVncmVzc2lvbi4gUGxlYXNlIGJlYXIgaW4gbWluZCwgdGhhdCB0aGlzIAo+PiBjb250
cmFkaWN0cyBMaW51eOKAmSBuby1yZWdyZXNzaW9uIHBvbGljeSwgYW5kIHRoZSBjb21taXQgc2hv
dWxkIAo+PiB0aGVyZWZvcmUgYmUgcmV2ZXJ0ZWQgYXMgc29vbiBhcyBwb3NzaWJsZS4KPiAKPiBM
b29rcyBsaWtlIGl0IGlzIGF0IHRoZSBlbmQgb2YgdGhpcyBwYXRjaCwgdGhvdWdoIHRoZSBkZXNj
cmlwdGlvbiBkb2Vzbid0Cj4gbWVudGlvbiBjaGFuZ2luZyBkZWZhdWx0czoKPiAKPiBDb21taXQg
YTI5NmQ2NjVlYWUxZThlYzY0NDU2ODNiZmI5OTljODg0MDU4NDI2YQo+IEF1dGhvcjogUmFkb3Ns
YXcgVHlsIDxyYWRvc2xhd3gudHlsQGludGVsLmNvbT4KPiBEYXRlOsKgwqAgRnJpIEp1biAyNiAx
NToyODoxNCAyMDIwICswMjAwCj4gCj4gIMKgwqDCoCBpeGdiZTogQWRkIGV0aHRvb2wgc3VwcG9y
dCB0byBlbmFibGUgMi41IGFuZCA1LjAgR2JwcyBzdXBwb3J0Cj4gCj4gIMKgwqDCoCBBZGRlZCBm
dWxsIHN1cHBvcnQgZm9yIG5ldyB2ZXJzaW9uIEV0aHRvb2wgQVBJLiBOZXcgQVBJIGFsbG93IHVz
ZQo+ICDCoMKgwqAgMjUwMEdiYXNlLVQgYW5kIDUwMDBiYXNlLVQgc3VwcG9ydGVkIGFuZCBhZHZl
cnRpc2VkIGxpbmsgc3BlZWQgbW9kZXMuCj4gCj4gIMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBSYWRv
c2xhdyBUeWwgPHJhZG9zbGF3eC50eWxAaW50ZWwuY29tPgo+ICDCoMKgwqAgVGVzdGVkLWJ5OiBB
bmRyZXcgQm93ZXJzIDxhbmRyZXd4LmJvd2Vyc0BpbnRlbC5jb20+Cj4gIMKgwqDCoCBTaWduZWQt
b2ZmLWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Cj4gCj4gVGhh
bmtzLAo+IEJlbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
