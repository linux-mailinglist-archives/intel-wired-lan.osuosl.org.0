Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A511F2DFD41
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Dec 2020 16:09:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DE532152A;
	Mon, 21 Dec 2020 15:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zEy47QQpO1aT; Mon, 21 Dec 2020 15:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3B6C42152C;
	Mon, 21 Dec 2020 15:09:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 924D81BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8DE4F869DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TNfCIUhiCyZJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Dec 2020 15:09:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0E8F7869D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:09:42 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aef33.dynamic.kabel-deutschland.de
 [95.90.239.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A1EE320647853;
 Mon, 21 Dec 2020 16:09:39 +0100 (CET)
To: Todd Fujinaka <todd.fujinaka@intel.com>,
 Ben Greear <greearb@candelatech.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
 <8635a2db-0d38-c088-321b-27bc4bb21ec4@candelatech.com>
 <MN2PR11MB3614FD0C52705864C05EFDF8EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <07a977b0-c3f9-4cbe-482e-350d8b42cda7@molgen.mpg.de>
Date: Mon, 21 Dec 2020 16:09:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <MN2PR11MB3614FD0C52705864C05EFDF8EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] ixgbe: 5.10.0 kernel regression for 2.5Gbps
 link negotiation?
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBUb2RkLAoKCkkga2luZGx5IGFzayB5b3UgYWdhaW4sIHBsZWFzZSBkbyBub3QgdG9wLXBv
c3QuIEl04oCZcyBpbXBvbGl0ZSwgYW5kIG1vcmUgCmltcG9ydGFudGx5LCBpdCB3YXN0ZXMgdGhl
IHJlYWRlcnMgdGltZSBhcyBpdCBsb29zZXMgY29udGV4dCwgYW5kIApyZXN1bHRzIGluIG1pc3Vu
ZGVyc3RhbmRpbmdzLgoKQW0gMTkuMTIuMjAgdW0gMTc6MTkgc2NocmllYiBGdWppbmFrYSwgVG9k
ZDoKPiBUaGlzIGlzIGEgYmFkIGNhc2Ugd2l0aCBubyBpZGVhbCBzb2x1dGlvbi4gRGV0ZWN0aW5n
IHRoZSBjYXNlIGlzIG5vdAo+IHBvc3NpYmxlIGFzIGF1dG9uZWdvdGlhdGlvbiBoYXBwZW5zIGlu
IHRoZSBoYXJkd2FyZSB3aXRob3V0IHNvZnR3YXJlCj4gaW52b2x2ZW1lbnQuCj4gCj4gT25lIHNv
bHV0aW9uIHdhcyB0byB1cGRhdGUgdGhlIHN3aXRjaCBmaXJtd2FyZSBmb3IgdGhlIGEgc3dpdGNo
IHRoYXQKPiBpcyBpcyB0aGUgbGluayBwYXJ0bmVyIHRoYXQgZ2l2ZSB1cyB0aGUgbW9zdCB0cm91
YmxlLiBUaGUgaXNzdWUKPiBhcHBlYXJzIHRvIGJlIGluIGNvbXBldGluZyBvciBoYWxmLWltcGxl
bWVudGVkIHN0YW5kYXJkcy4gMi41RyBhbmQgNUcKPiB3ZXJlIGluaXRpYWxseSBub24tSUVFRSBz
dGFuZGFyZHMgdGhhdCBkaWZmZXJlbnQgbWFudWZhY3R1cmVycyBoYWNrZWQKPiBvbnRvIDFHIGlu
IGRpZmZlcmVudCB3YXlzLiBXZSBpbXBsZW1lbnRlZCBpdCB0byBvbmUgb2YgdGhlIHN0YW5kYXJk
cwo+IHdoaWNoIHNob3VsZCBiZSBpbnRlcm9wZXJhYmxlLCBidXQgdGhlIGNvcm5lciBjYXNlIG9m
IHRoZQo+IHdpZGVseS1kZXBsb3llZCBzd2l0Y2ggd2lsbCB0YWtlIHRoZSBsaW5rIGZyb20gMTBH
IHRvIDFHIHdpdGggbm8KPiBhdXRvbWF0ZWQgd2F5IHRvIGZpeCBpdC4KClRoYW5rIHlvdSBmb3Ig
dGhlIGJhY2tncm91bmQsIHdoaWNoIHNob3VsZCBoYXZlIGJlZW4gaW4gdGhlIGNvbW1pdCBtZXNz
YWdlLgoKQ2FuIHlvdSBwbGVhc2UgdGVsbCB1cyB0aGUgcHJvYmxlbWF0aWMgc3dpdGNoIG5hbWUg
YW5kIHRoZSBwcm9ibGVtYXRpYyAKZmlybXdhcmUgdmVyc2lvbiBhbmQgdGhlIG9uZSwgd2hlcmUg
dGhpcyBpc3N1ZXMgaXMgZml4ZWQ/Cgo+IFVwZGF0aW5nIHN3aXRjaGVzIG1lYW5zIGEgbG90IG9m
IGRvd250aW1lIGZvciBhIGxvdCBvZiBkYXRhY2VudGVycwo+IGFuZCB0aGUgT0VNcyB3ZSBkZWFs
IHdpdGggd291bGQgbm90IGFjY2VwdCB0aGF0IGFuc3dlci4KCldlbGwsIHRoZW4gcGxlYXNlIGRp
c2N1c3MgdGhlIHByb2JsZW0gYW5kIHBvc3NpYmxlIHNvbHV0aW9ucyBvbiB0aGUgCm1haWxpbmcg
bGlzdC4gQnJlYWtpbmcgb3RoZXIgcGVvcGxlcyBzZXR1cHMgaXMgdW5hY2NlcHRhYmxlLiBBIExp
bnV4IAprZXJuZWwgcnVudGltZSBwYXJhbWV0ZXIgd291bGQgYmUgb25lIHNvbHV0aW9uLCB5b3Vy
IGN1c3RvbWVycyBjb3VsZCAKaGF2ZSB1c2VkLgoKPiBPdXIgc29sdXRpb24gd2FzIHRvIGRpc2Fi
bGUgMi41RyBhbmQgNUcgYnkgZGVmYXVsdC4gVGhpcyBmaXhlcyAxMEcKPiBsaW5raW5nIGF0IDFH
IG9uIHRoYXQgc3dpdGNoLCBidXQgMi41RyBhbmQgNUcgd2lsbCBsaW5rIGF0IDFHIGJ5Cj4gZGVm
YXVsdC4gQW5kLCBhcyBJIHNhaWQsIEkndmUgaGFkIHZlcnkgbGl0dGxlIGNvbnRhY3Qgd2l0aCBw
ZW9wbGUKPiB1c2luZyAyLjVHIGFuZCA1RyBhbmQgSSdtIHRoZSBndXkgb24gYWxsIHRoZSBtYWls
aW5nIGxpc3RzLgoKVW5mb3J0dW5hdGVseSwgYSBsb3Qgb2YgdXNlcnMgYXJlIG5vdCBvbiB0aGUg
bWFpbGluZyBsaXN0LgoKPiBJIGFwb2xvZ2l6ZSBmb3IgbWFraW5nIHlvdXIgbGlmZSBoYXJkZXIs
IGJ1dCBpdCBzZWVtcyBsaWtlIGl0J3MganVzdAo+IHlvdSBzbyBmYXIuIFBhdWwgc2VlbXMgdG8g
YmUgYXJndWluZyB3aXRoIG1lIGp1c3QgZm9yIHRoZSBmdW4gb2YgaXQuCgpQbGVhc2Uga2VlcCB0
aGUgZGlzY3Vzc2lvbiByZXNwZWN0ZnVsLCBhbmQgZG8gbm90IGluc3VsdCBvdGhlcnMuCgpVbmZv
cnR1bmF0ZWx5LCBhdCB3b3JrIHdlIGhhdmUgbm93IGJlZW4gYml0dGVuIHNldmVyYWwgdGltZXMg
YnkgCnJlZ3Jlc3Npb25zIHVwZGF0aW5nIHRvIHRoZSBjdXJyZW50IG1haW5saW5lIExpbnV4IGtl
cm5lbCwgY2F1c2luZyAKZnJpY3Rpb25zIGluIHRoZSB0ZWFtIGFib3V0IHdoYXQgTGludXgga2Vy
bmVsIHRvIHVzZS4KCkkgYW0gbWlzc2luZyBhIHN0YXRlbWVudCBieSB5b3UsIGFja25vd2xlZGdp
bmcgdGhhdCB0aGUgY29tbWl0IGFuZCB0aGUgCndob2xlIGNvbW11bmljYXRpb24gd2FzIGEgYmln
IGZhaWwsIGFuZCBob3cgeW91IHdpbGwgZml4IHRoZSByZWdyZXNzaW9uLiAKQWRkaXRpb25hbGx5
LCBhbiBhbmFseXNpcyB3b3VsZCBiZSBuaWNlLCB3aGVyZSB0aGUgcHJvY2VzcyBmYWlsZWQg4oCT
IHdoeSAKd2FzIHRoZSBjb21taXQgbWVzc2FnZSBpbmNvbXBsZXRlIGFuZCB3aHkgZGlkIHRoZSB0
ZXN0IChUZXN0ZWQtYnkgCnByZXNlbnQpIG5vdCBzcG90IHRoZSBpc3N1ZSDigJMgYW5kIGhvdyB0
byBpbXByb3ZlIGl0IHRvIGF2b2lkIHN1Y2ggYSAKc2l0dWF0aW9uIGluIHRoZSBmdXR1cmUuCgoK
S2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
