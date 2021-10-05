Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A363422284
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 11:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1672F83CE1;
	Tue,  5 Oct 2021 09:40:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ThHM0Hhli4-t; Tue,  5 Oct 2021 09:40:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1908A83B2C;
	Tue,  5 Oct 2021 09:40:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B804B1BF291
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 09:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A6CB4608DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 09:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zO4ezrgyNHyU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 09:40:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0599F608C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 09:40:22 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae91d.dynamic.kabel-deutschland.de
 [95.90.233.29])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A902861EA1903;
 Tue,  5 Oct 2021 11:40:20 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <1823864.tdWV9SEqCh@kailua>
 <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <7064659e-fe97-f222-5176-844569fb5281@twofifty.com>
 <4111f2b7-cbac-3451-593f-a154aca65263@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <b56c4c30-d393-96fb-182c-726a60a39eed@molgen.mpg.de>
Date: Tue, 5 Oct 2021 11:40:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <4111f2b7-cbac-3451-593f-a154aca65263@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Intel I350 regression 5.10 -> 5.14 ("The NVM
 Checksum Is Not Valid") [8086:1521]
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
Cc: Jakub Kicinski <kubakici@wp.pl>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Hisashi T Fujinaka <htodd@twofifty.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAwNS4xMC4yMSB1bSAwODo1MCBzY2hyaWViIFNhc2hhIE5lZnRpbjoK
PiBPbiAxMC81LzIwMjEgMDI6MzksIEhpc2FzaGkgVCBGdWppbmFrYSB3cm90ZToKPj4gT24gTW9u
LCA0IE9jdCAyMDIxLCBKYWt1YiBLaWNpbnNraSB3cm90ZToKPj4KPj4+IE9uIE1vbiwgMDQgT2N0
IDIwMjEgMTU6MDY6MzEgKzAyMDAgQW5kcmVhcyBLLiBIdWV0dGVsIHdyb3RlOgo+Pj4+IERlYXIg
YWxsLAo+Pj4+Cj4+Pj4gSSBob3BlIHRoaXMgaXMgdGhlIHJpZ2h0IHBsYWNlIHRvIGFzaywgaWYg
bm90IHBsZWFzZSBhZHZpc2UgbWUgd2hlcmUgCj4+Pj4gdG8gZ28uCj4+Pgo+Pj4gQWRkaW5nIGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnIGFuZCBTYXNoYSBhcyB3ZWxsLgo+Pj4KPj4+
PiBJIGhhdmUgYSBuZXcgRGVsbCBtYWNoaW5lIHdpdGggYm90aCBhbiBJbnRlbCBvbi1ib2FyZCBl
dGhlcm5ldCAKPj4+PiBjb250cm9sbGVyCj4+Pj4gKFs4MDg2OjE1ZjldKSBhbmQgYW4gYWRkaXRp
b25hbCAyLXBvcnQgZXh0ZW5zaW9uIGNhcmQgKFs4MDg2OjE1MjFdKS4KPj4+Pgo+Pj4+IFRoZSBz
ZWNvbmQgYWRhcHRvciwgYSAiRGVMb2NrIFBDSWUgMnhHQml0Iiwgd29ya2VkIGZpbmUgYXMgZmFy
IGFzIEkgCj4+Pj4gY291bGQKPj4+PiBzZWUgd2l0aCBMaW51eCA1LjEwLjU5LCBidXQgZmFpbHMg
dG8gaW5pdGlhbGl6ZSB3aXRoIExpbnV4IDUuMTQuOS4KPj4+Pgo+Pj4+IGRpbGZyaWRnZSB+ICMg
bHNwY2kgLW5uCj4+Pj4gWy4uLl0KPj4+PiAwMTowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXIgWzAy
MDBdOiBJbnRlbCBDb3Jwb3JhdGlvbiBJMzUwIEdpZ2FiaXQgTmV0d29yayBDb25uZWN0aW9uIFs4
MDg2OjE1MjFdIChyZXYgZmYpCj4+Pj4gMDE6MDAuMSBFdGhlcm5ldCBjb250cm9sbGVyIFswMjAw
XTogSW50ZWwgQ29ycG9yYXRpb24gSTM1MCBHaWdhYml0IE5ldHdvcmsgQ29ubmVjdGlvbiBbODA4
NjoxNTIxXSAocmV2IGZmKQo+Pj4+IFsuLi5dCj4+Pj4KPj4+PiBkaWxmcmlkZ2UgfiAjIGRtZXNn
fGdyZXAgaWdiCj4+Pj4gW8KgwqDCoCAyLjA2OTI4Nl0gaWdiOiBJbnRlbChSKSBHaWdhYml0IEV0
aGVybmV0IE5ldHdvcmsgRHJpdmVyCj4+Pj4gW8KgwqDCoCAyLjA2OTI4OF0gaWdiOiBDb3B5cmln
aHQgKGMpIDIwMDctMjAxNCBJbnRlbCBDb3Jwb3JhdGlvbi4KPj4+PiBbwqDCoMKgIDIuMDY5MzA1
XSBpZ2IgMDAwMDowMTowMC4wOiBjYW4ndCBjaGFuZ2UgcG93ZXIgc3RhdGUgZnJvbSBEM2NvbGQg
dG8gRDAgKGNvbmZpZyBzcGFjZSBpbmFjY2Vzc2libGUpCj4+Pj4gW8KgwqDCoCAyLjA2OTYyNF0g
aWdiIDAwMDA6MDE6MDAuMCAwMDAwOjAxOjAwLjAgKHVuaW5pdGlhbGl6ZWQpOiBQQ0llIGxpbmsg
bG9zdAo+Pj4+IFvCoMKgwqAgMi4zODY2NTldIGlnYiAwMDAwOjAxOjAwLjA6IFBIWSByZXNldCBp
cyBibG9ja2VkIGR1ZSB0byBTT0wvSURFUiBzZXNzaW9uLgo+Pj4+IFvCoMKgwqAgNC4xMTU1MDBd
IGlnYiAwMDAwOjAxOjAwLjA6IFRoZSBOVk0gQ2hlY2tzdW0gSXMgTm90IFZhbGlkCj4+Pj4gW8Kg
wqDCoCA0LjEzMzgwN10gaWdiOiBwcm9iZSBvZiAwMDAwOjAxOjAwLjAgZmFpbGVkIHdpdGggZXJy
b3IgLTUKPj4+PiBbwqDCoMKgIDQuMTMzODIwXSBpZ2IgMDAwMDowMTowMC4xOiBjYW4ndCBjaGFu
Z2UgcG93ZXIgc3RhdGUgZnJvbSBEM2NvbGQgdG8gRDAgKGNvbmZpZyBzcGFjZSBpbmFjY2Vzc2li
bGUpCj4+Pj4gW8KgwqDCoCA0LjEzNDA3Ml0gaWdiIDAwMDA6MDE6MDAuMSAwMDAwOjAxOjAwLjEg
KHVuaW5pdGlhbGl6ZWQpOiBQQ0llIGxpbmsgbG9zdAo+Pj4+IFvCoMKgwqAgNC40NTE2MDJdIGln
YiAwMDAwOjAxOjAwLjE6IFBIWSByZXNldCBpcyBibG9ja2VkIGR1ZSB0byBTT0wvSURFUiBzZXNz
aW9uLgo+Pj4+IFvCoMKgwqAgNi4xODAxMjNdIGlnYiAwMDAwOjAxOjAwLjE6IFRoZSBOVk0gQ2hl
Y2tzdW0gSXMgTm90IFZhbGlkCj4+Pj4gW8KgwqDCoCA2LjE4ODYzMV0gaWdiOiBwcm9iZSBvZiAw
MDAwOjAxOjAwLjEgZmFpbGVkIHdpdGggZXJyb3IgLTUKPj4+Pgo+Pj4+IEFueSBhZHZpY2Ugb24g
aG93IHRvIHByb2NlZWQ/IFdpbGxpbmcgdG8gdGVzdCBwYXRjaGVzIGFuZCBwcm92aWRlIAo+Pj4+
IGFkZGl0aW9uYWwgZGVidWcgaW5mby4KPj4KPj4gU29ycnkgdG8gcmVwbHkgZnJvbSBhIG5vbi1J
bnRlbCBhY2NvdW50LiBJIHdvdWxkIHN1Z2dlc3QgZmlyc3QKPj4gY29udGFjdGluZyBEZWxsLCBh
bmQgdGhlbiBjb250YWN0aW5nIERlTG9jay4gVGhpcyBzb3VuZHMgbGlrZSBhbiBpc3N1ZQo+PiB3
aXRoIG1vdGhlcmJvYXJkIGZpcm13YXJlIGFuZCBtb3N0IG9mIHdoYXQgSSBjYW4gaGVscCB3aXRo
IHdvdWxkIGJlIHdpdGgKPj4gdGhlIGRyaXZlci4gSSB0aGluayB0aGUgaXNzdWVzIGFyZSBwcm9i
YWJseSBiZWZvcmUgdGhpbmdzIGdldCB0byB0aGUKPj4gZHJpdmVyLgo+Pgo+IEFncmVlLiBUaGUg
ZHJpdmVyIHN0YXJ0cyB3b3JrIHdoZW4gdGhlIFBDSWUgbGluayBpbiBMMC4gUGxlYXNlLCBjaGVj
ayAKPiB3aXRoIERlbGwvRGVMb2NrIHdoYXQgaXMgUENJZSBsaW5rIHN0YXR1cyBhbmQgZW51bWVy
YXRpb24gcHJvY2VzcyAKPiBmaW5pc2hlZCBhcyBwcm9wZXJseS4ocHJvYmFibHkgeW91IHdpbGwg
bmVlZCBQQ0llIHNuaWZmZXIpCgpPZiBjb3Vyc2UsIGl04oCZZCBiZSBncmVhdCB0byBmaXggcG90
ZW50aWFsIGZpcm13YXJlIGJ1Z3MsIGJ1dCB0byBzdWdnZXN0IAp0byBhIGNvbnN1bWVyIHRvIHdv
cmsgd2l0aCBEZWxsIHRvIGZpeCB0aGUgcHJvYmxlbSBpcyB1bmZvcnR1bmF0ZWx5IG5vdCAKYSBy
ZWFsaXN0aWMgc29sdXRpb24gaWYgQW5kcmVhcyBkb2VzIG5vdCBvd24gdGhvdXNhbmRzIG9mIHRo
ZSAKcHJvYmxlbWF0aWMgc3lzdGVtLgoKTGludXggaGFzIGEgbm8tcmVncmVzc2lvbiBwb2xpY3ks
IG1lYW5pbmcgd2hlbiB1c2Vyc3BhY2UvaGFyZHdhcmUgd2l0aCAKYW4gb2xkZXIgTGludXgga2Vy
bmVsIHdvcmtlZCB0aGFuIGl0ICpoYXMgdG8qIHdvcmsgd2l0aCBhIG5ldyB2ZXJzaW9uIAp0b28u
IFNvIGJlc2lkZXMgZml4aW5nIHRoZSBmaXJtd2FyZS9zeXN0ZW0sIGl04oCZcyBhcyBpbXBvcnRh
bnQgdG8gZmluZCAKdGhlIGNvbW1pdCBpbnRyb2R1Y2luZyB0aGUgcmVncmVzc2lvbiBhbmQgZml4
IGl0LgoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
