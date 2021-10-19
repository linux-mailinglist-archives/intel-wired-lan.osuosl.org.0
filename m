Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC5343409D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 23:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A22860706;
	Tue, 19 Oct 2021 21:28:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tcx95OeQN6q6; Tue, 19 Oct 2021 21:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BADF605CD;
	Tue, 19 Oct 2021 21:28:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 292B71BF361
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 21:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 145EA835EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 21:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Say7q4xAe5JK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 21:28:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 833A5835C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 21:28:03 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae910.dynamic.kabel-deutschland.de
 [95.90.233.16])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3E05561E5FE00;
 Tue, 19 Oct 2021 23:28:00 +0200 (CEST)
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
References: <20211019152758.58277-1-anthony.l.nguyen@intel.com>
 <c2e59ebe-4a7b-b2d7-f15d-759ad26c006b@molgen.mpg.de>
 <1494d7bcbed00caff6f6391512dd8db5256d3770.camel@intel.com>
 <bb9307c2-58d4-362e-dafb-a6d3c1afd587@molgen.mpg.de>
 <a9930feac5b27580a01b06b9b759504ce47a771b.camel@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <2f09ec24-996c-b635-ee93-826503e4a7e2@molgen.mpg.de>
Date: Tue, 19 Oct 2021 23:27:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <a9930feac5b27580a01b06b9b759504ce47a771b.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Add missing device ids
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

RGVhciBUb255LAoKCkFtIDE5LjEwLjIxIHVtIDIxOjQyIHNjaHJpZWIgTmd1eWVuLCBBbnRob255
IEw6Cj4gT24gVHVlLCAyMDIxLTEwLTE5IGF0IDIwOjQ5ICswMjAwLCBQYXVsIE1lbnplbCB3cm90
ZToKCj4+IEFtIDE5LjEwLjIxIHVtIDE5OjUzIHNjaHJpZWIgTmd1eWVuLCBBbnRob255IEw6Cj4+
PiBPbiBUdWUsIDIwMjEtMTAtMTkgYXQgMTg6MjQgKzAyMDAsIFBhdWwgTWVuemVsIHdyb3RlOgo+
PiAKPj4+PiBBbSAxOS4xMC4yMSB1bSAxNzoyNyBzY2hyaWViIFRvbnkgTmd1eWVuOgo+PiAKPj4g
W+KApl0KPj4gCj4+Pj4+IEFzIHBhcnQgb2Ygc3VwcG9ydCBmb3IgRTgxMCBYWFYgZGV2aWNlcywg
c29tZSBkZXZpY2UgaWRzIHdlcmUKPj4+Pj4gPiBpbmFkdmVydGVudGx5IGxlZnQgb3V0LiBBZGQg
dGhvc2UgbWlzc2luZyBpZHMuCj4+Pj4gUGxlYXNlIG1lbnRpb24gdGhlIHNvdXJjZSBvZiB0aGVz
ZSBJRHMuCj4+PiAKPj4+IEknbSBub3Qgc3VyZSBJIGdldCB0aGlzIGNvbW1lbnQuIFRoZXNlIGFy
ZSB0aGUgSURzIGZvciB0aGUgTklDIAo+Pj4gaXRzZWxmLgo+PiAKPj4gU29ycnksIGZvciBiZWlu
ZyB1bmNsZWFyLiBJIG1lYW50LCB5b3UgcHJvYmFibHkgZGlkbuKAmXQgZ2V0IHRoZSAKPj4gaGFy
ZHdhcmUgYW5kIHJlYWQgb3V0IHRoZSBJRHMgdXNpbmcgYGxzcGNpYCBvciBzbywgYnV0IGxvb2tl
ZCBpbgo+PiBzb21lIHNwZWNpZmljYXRpb24sIHdoYXQgSURzIGFyZSB1c2VkIGZvciB0aGUgaGFy
ZHdhcmU/Cj4gCj4gV2UgaGF2ZSBpbnRlcm5hbCBkb2N1bWVudHMgdGhhdCBwcm92aWRlIHRoZSBk
ZXZpY2UgSURzIHRpZWQgdG8gdGhlIAo+IGhhcmR3YXJlLCBidXQgYXMgZmFyIGFzIEkga25vdyB0
aGVyZSBpc24ndCBhbnl0aGluZyBwdWJsaXNoZWQKPiBwdWJsaWNseSB0aGF0IHByb3ZpZGVzIHRo
aXMgaW5mb3JtYXRpb24uIFRoZSBkYXRhIGlzIGFsc28gYXZhaWxhYmxlCj4gaW4gdGhlIFBDSSBJ
RCByZXBvc2l0b3J5IFsxXSwgYnV0IHRoYXQgaXNuJ3QgdGhlIHNvdXJjZSBvZiB0aGUKPiBpbmZv
cm1hdGlvbiwganVzdCBhbm90aGVyIHBsYWNlIHRoYXQgaXQgZ2V0cyBwdXQuCgpIYXZpbmcgdGhl
IGRvY3VtZW50IG5hbWUgYW5kIHJldmlzaW9uIGluIHRoZSBjb21taXQgbWVzc2FnZSwgZGVzcGl0
ZSAKYmVpbmcgbm9uLXB1YmxpYywgd291bGQgc3RpbGwgYmUgdXNlZnVsIGluIG15IG9waW5pb24u
IE1heWJlIHRoZSAKZG9jdW1lbnRzIGFyZSBnb2luZyB0byBnZXQgcHVibGlzaGVkLCBvciBpdCBt
YWtlcyBpdCBlYXNpZXIgZm9yIApyZXZpZXdlcnMgd2l0aCBhY2Nlc3MgdG8gdGhlc2UgZG9jdW1l
bnRzIChJbnRlbCBlbXBsb3llZXMpLgoKCktpbmQgcmVnYXJkcywKClBhdWwKCgo+IFsxXSBodHRw
czovL3BjaS1pZHMudWN3LmN6LwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
