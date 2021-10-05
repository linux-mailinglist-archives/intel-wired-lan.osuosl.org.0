Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D231422267
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 11:34:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4B62608F0;
	Tue,  5 Oct 2021 09:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zlejif9tT0bz; Tue,  5 Oct 2021 09:34:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5C8D608DF;
	Tue,  5 Oct 2021 09:34:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 503151BF291
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 09:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E36B608DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 09:34:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nza8lbiDeNgP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 09:34:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB1E3608C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 09:34:26 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae91d.dynamic.kabel-deutschland.de
 [95.90.233.29])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C4DE161E64846;
 Tue,  5 Oct 2021 11:34:23 +0200 (CEST)
To: "Andreas K. Huettel" <andreas.huettel@ur.de>
References: <1823864.tdWV9SEqCh@kailua>
 <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <35dfc9e8-431c-362d-450e-4c6ac1e55434@molgen.mpg.de>
Date: Tue, 5 Oct 2021 11:34:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBbmRyZWFzLAoKCkFtIDA0LjEwLjIxIHVtIDE2OjQ4IHNjaHJpZWIgSmFrdWIgS2ljaW5z
a2k6Cj4gT24gTW9uLCAwNCBPY3QgMjAyMSAxNTowNjozMSArMDIwMCBBbmRyZWFzIEsuIEh1ZXR0
ZWwgd3JvdGU6Cgo+PiBJIGhvcGUgdGhpcyBpcyB0aGUgcmlnaHQgcGxhY2UgdG8gYXNrLCBpZiBu
b3QgcGxlYXNlIGFkdmlzZSBtZSB3aGVyZSB0byBnby4KPiAKPiBBZGRpbmcgaW50ZWwtd2lyZWQt
bGFuQGxpc3RzLm9zdW9zbC5vcmcgYW5kIFNhc2hhIGFzIHdlbGwuCj4gCj4+IEkgaGF2ZSBhIG5l
dyBEZWxsIG1hY2hpbmUgd2l0aCBib3RoIGFuIEludGVsIG9uLWJvYXJkIGV0aGVybmV0IGNvbnRy
b2xsZXIKPj4gKFs4MDg2OjE1ZjldKSBhbmQgYW4gYWRkaXRpb25hbCAyLXBvcnQgZXh0ZW5zaW9u
IGNhcmQgKFs4MDg2OjE1MjFdKS4KPj4KPj4gVGhlIHNlY29uZCBhZGFwdG9yLCBhICJEZUxvY2sg
UENJZSAyeEdCaXQiLCB3b3JrZWQgZmluZSBhcyBmYXIgYXMgSSBjb3VsZAo+PiBzZWUgd2l0aCBM
aW51eCA1LjEwLjU5LCBidXQgZmFpbHMgdG8gaW5pdGlhbGl6ZSB3aXRoIExpbnV4IDUuMTQuOS4K
Pj4KPj4gZGlsZnJpZGdlIH4gIyBsc3BjaSAtbm4KPj4gWy4uLl0KPj4gMDE6MDAuMCBFdGhlcm5l
dCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRpb24gSTM1MCBHaWdhYml0IE5ldHdv
cmsgQ29ubmVjdGlvbiBbODA4NjoxNTIxXSAocmV2IGZmKQo+PiAwMTowMC4xIEV0aGVybmV0IGNv
bnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBDb3Jwb3JhdGlvbiBJMzUwIEdpZ2FiaXQgTmV0d29yayBD
b25uZWN0aW9uIFs4MDg2OjE1MjFdIChyZXYgZmYpCj4+IFsuLi5dCj4+Cj4+IGRpbGZyaWRnZSB+
ICMgZG1lc2d8Z3JlcCBpZ2IKPj4gWyAgICAyLjA2OTI4Nl0gaWdiOiBJbnRlbChSKSBHaWdhYml0
IEV0aGVybmV0IE5ldHdvcmsgRHJpdmVyCj4+IFsgICAgMi4wNjkyODhdIGlnYjogQ29weXJpZ2h0
IChjKSAyMDA3LTIwMTQgSW50ZWwgQ29ycG9yYXRpb24uCj4+IFsgICAgMi4wNjkzMDVdIGlnYiAw
MDAwOjAxOjAwLjA6IGNhbid0IGNoYW5nZSBwb3dlciBzdGF0ZSBmcm9tIEQzY29sZCB0byBEMCAo
Y29uZmlnIHNwYWNlIGluYWNjZXNzaWJsZSkKPj4gWyAgICAyLjA2OTYyNF0gaWdiIDAwMDA6MDE6
MDAuMCAwMDAwOjAxOjAwLjAgKHVuaW5pdGlhbGl6ZWQpOiBQQ0llIGxpbmsgbG9zdAo+PiBbICAg
IDIuMzg2NjU5XSBpZ2IgMDAwMDowMTowMC4wOiBQSFkgcmVzZXQgaXMgYmxvY2tlZCBkdWUgdG8g
U09ML0lERVIgc2Vzc2lvbi4KPj4gWyAgICA0LjExNTUwMF0gaWdiIDAwMDA6MDE6MDAuMDogVGhl
IE5WTSBDaGVja3N1bSBJcyBOb3QgVmFsaWQKPj4gWyAgICA0LjEzMzgwN10gaWdiOiBwcm9iZSBv
ZiAwMDAwOjAxOjAwLjAgZmFpbGVkIHdpdGggZXJyb3IgLTUKPj4gWyAgICA0LjEzMzgyMF0gaWdi
IDAwMDA6MDE6MDAuMTogY2FuJ3QgY2hhbmdlIHBvd2VyIHN0YXRlIGZyb20gRDNjb2xkIHRvIEQw
IChjb25maWcgc3BhY2UgaW5hY2Nlc3NpYmxlKQo+PiBbICAgIDQuMTM0MDcyXSBpZ2IgMDAwMDow
MTowMC4xIDAwMDA6MDE6MDAuMSAodW5pbml0aWFsaXplZCk6IFBDSWUgbGluayBsb3N0Cj4+IFsg
ICAgNC40NTE2MDJdIGlnYiAwMDAwOjAxOjAwLjE6IFBIWSByZXNldCBpcyBibG9ja2VkIGR1ZSB0
byBTT0wvSURFUiBzZXNzaW9uLgo+PiBbICAgIDYuMTgwMTIzXSBpZ2IgMDAwMDowMTowMC4xOiBU
aGUgTlZNIENoZWNrc3VtIElzIE5vdCBWYWxpZAo+PiBbICAgIDYuMTg4NjMxXSBpZ2I6IHByb2Jl
IG9mIDAwMDA6MDE6MDAuMSBmYWlsZWQgd2l0aCBlcnJvciAtNQoKV2hhdCBtZXNzYWdlcyBhcmUg
bmV3IGNvbXBhcmVkIHRvIHRoZSB3b3JraW5nIExpbnV4IDUuMTAuNTk/Cgo+PiBBbnkgYWR2aWNl
IG9uIGhvdyB0byBwcm9jZWVkPyBXaWxsaW5nIHRvIHRlc3QgcGF0Y2hlcyBhbmQgcHJvdmlkZSBh
ZGRpdGlvbmFsIGRlYnVnIGluZm8uCgpXaXRob3V0IGFueSBpZGVhcyBhYm91dCB0aGUgaXNzdWUs
IHBsZWFzZSBiaXNlY3QgdGhlIGlzc3VlIHRvIGZpbmQgdGhlIApjb21taXQgaW50cm9kdWNpbmcg
dGhlIHJlZ3Jlc3Npb24sIHNvIGl0IGNhbiBiZSByZXZlcnRlZC9maXhlZCB0byBub3QgCnZpb2xh
dGUgTGludXjigJkgbm8tcmVncmVzc2lvbiBwb2xpY3kuCgoKS2luZCByZWdhcmRzLAoKUGF1bApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
