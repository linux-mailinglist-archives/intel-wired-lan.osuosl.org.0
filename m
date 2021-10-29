Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 610824411B6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Nov 2021 01:39:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1E2480B24;
	Mon,  1 Nov 2021 00:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bZlm4DgFQjCJ; Mon,  1 Nov 2021 00:39:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A683780B1F;
	Mon,  1 Nov 2021 00:39:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B3FA31BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 23:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A13144024E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 23:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=lynx.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TMA1lkYHgCqa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 23:11:45 +0000 (UTC)
X-Greylist: delayed 00:05:18 by SQLgrey-1.8.0
Received: from smtp83.ord1d.emailsrvr.com (smtp83.ord1d.emailsrvr.com
 [184.106.54.83])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A729740245
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 23:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lynx.com;
 s=20200402-brzttuan; t=1635548787;
 bh=i6wA730qjpc/NM4AWN0NXFvEZZ3g8ZLxhs9hkK31dmk=;
 h=Date:Subject:To:From:From;
 b=FoLIc8bDrDWnX7knXJHhW3zvOQczhjyBVdV68XVP4IeMuhWUShMVDN+yuZan7b218
 3CLHMckvoTONFblNidP+rCedEJOfNp4CYhLadMYYDErFj83ScI9GiDebor/IiE+uSI
 tmbpBFc9l3eifLIE1J/x+I4TiNnd3c2jtMv+bt14=
X-Auth-ID: cnovikov@lynx.com
Received: by smtp11.relay.ord1d.emailsrvr.com (Authenticated sender:
 cnovikov-AT-lynx.com) with ESMTPSA id 7FCAD6014A; 
 Fri, 29 Oct 2021 19:06:26 -0400 (EDT)
Message-ID: <df9504c8-bdfd-9cc0-d002-f1e59f57a79b@lynx.com>
Date: Fri, 29 Oct 2021 16:06:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <81be24c4-a7e4-0761-abf4-204f4849b6eb@lynx.com>
 <89af2e39-fe5c-c285-7805-8c7a6a5a2e51@molgen.mpg.de>
From: Cyril Novikov <cnovikov@lynx.com>
In-Reply-To: <89af2e39-fe5c-c285-7805-8c7a6a5a2e51@molgen.mpg.de>
X-Classification-ID: 4e7a5d9c-716a-4ab0-b419-b34296e8725d-1-1
X-Mailman-Approved-At: Mon, 01 Nov 2021 00:39:29 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: set X550 MDIO speed before
 talking to PHY
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
Cc: Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMjgvMjAyMSAxMTo0NyBQTSwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gRGVhciBDeXJpbCwK
PiAKPiAKPiBPbiAyOS4xMC4yMSAwMzowMywgQ3lyaWwgTm92aWtvdiB3cm90ZToKPj4gVGhlIE1E
SU8gYnVzIHNwZWVkIG11c3QgYmUgaW5pdGlhbGl6ZWQgYmVmb3JlIHRhbGtpbmcgdG8gdGhlIFBI
WSB0aGUgCj4+IGZpcnN0Cj4+IHRpbWUgaW4gb3JkZXIgdG8gYXZvaWQgdGFsa2luZyB0byBpdCB1
c2luZyBhIHNwZWVkIHRoYXQgdGhlIFBIWSBkb2Vzbid0Cj4+IHN1cHBvcnQuCj4+Cj4+IFRoaXMg
Zml4ZXMgSFcgaW5pdGlhbGl6YXRpb24gZXJyb3IgLTE3IChJWEdCRV9FUlJfUEhZX0FERFJfSU5W
QUxJRCkgb24KPj4gRGVudmVydG9uIENQVXMgKGEuay5hLiB0aGUgQXRvbSBDMzAwMCBmYW1pbHkp
IG9uIHBvcnRzIHdpdGggYSAxMEdiIAo+PiBuZXR3b3JrCj4+IHBsdWdnZWQgaW4uIE9uIHRob3Nl
IGRldmljZXMsIEhMUkVHMFtNRENTUERdIHJlc2V0cyB0byAxLCB3aGljaCBjb21iaW5lZAo+PiB3
aXRoIHRoZSAxMEdiIG5ldHdvcmsgcmVzdWx0cyBpbiBhIDI0TUh6IE1ESU8gc3BlZWQsIHdoaWNo
IGlzIGFwcGFyZW50bHkKPj4gdG9vIGZhc3QgZm9yIHRoZSBjb25uZWN0ZWQgUEhZLiBQSFkgcmVn
aXN0ZXIgcmVhZHMgb3ZlciBNRElPIGJ1cyByZXR1cm4KPj4gZ2FyYmFnZSwgbGVhZGluZyB0byBp
bml0aWFsaXphdGlvbiBmYWlsdXJlLgo+IAo+IE1heWJlIGFkZCBhIEZpeGVzIHRhZz8KClRoaXMg
aXMgbXkgZmlyc3QgcGF0Y2ggc3VibWlzc2lvbiBmb3IgTGludXgga2VybmVsLiBXaGF0IEkgcmVh
ZCBhYm91dCAKdGhlIEZpeGVzIHRhZyBzYXlzIGl0IGlkZW50aWZpZXMgYSBwcmV2aW91cyBjb21t
aXQgdGhhdCBoYWQgaW50cm9kdWNlZCAKdGhlIGJ1Zy4gSSBoYXZlIG5vIGlkZWEgd2hpY2ggY29t
bWl0IGludHJvZHVjZWQgdGhpcyBidWcuIFdlIHNhdyBpdCBpbiAKNC4xOSB3aGljaCBwcm9iYWJs
eSBtZWFucyB0aGUgYnVnIHdhcyBhbHdheXMgdGhlcmUgYW5kIGlzIG5vdCBhIApyZWdyZXNzaW9u
LiBJdCdzIGFsc28gcXVpdGUgcG9zc2libGUgdGhlIG9yaWdpbmFsIGNvbW1pdCB3YXMgY29ycmVj
dCBmb3IgCnRoZSBoYXJkd2FyZSBleGlzdGluZyBhdCB0aGF0IHRpbWUgYW5kIGl0IG9ubHkgc3Rh
cnRlZCBiZWhhdmluZyAKaW5jb3JyZWN0bHkgd2l0aCBuZXcgaGFyZHdhcmUsIHNvIGl0IHdhc24n
dCBhY3R1YWxseSBhIGJ1ZyBhdCB0aGUgdGltZSAKaXQgd2FzIHN1Ym1pdHRlZC4gSSBhbHNvIGRv
bid0IGhhdmUgdGhlIGNhcGFiaWxpdHkgb3IgdGltZSB0byBiaXNlY3QgCnRoaXMgcHJvYmxlbS4K
Cj4+IFNpZ25lZC1vZmYtYnk6IEN5cmlsIE5vdmlrb3YgPGNub3Zpa292QGx5bnguY29tPgo+PiAt
LS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeDU1MC5jIHwg
MyArKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+Pgo+PiBSZXByb2R1
Y2VkIHdpdGggTGludXgga2VybmVsIDQuMTkgYW5kIDUuMTUtcmM3LiBDYW4gYmUgcmVwcm9kdWNl
ZCB1c2luZwo+PiB0aGUgZm9sbG93aW5nIHNldHVwOgo+Pgo+PiAqIFVzZSBhbiBBdG9tIEMzMDAw
IGZhbWlseSBzeXN0ZW0gd2l0aCBhdCBsZWFzdCBvbmUgWDU1MCBMQU4gb24gdGhlIFNvQwo+PiAq
IERpc2FibGUgUFhFIG9yIG90aGVyIEJJT1MgbmV0d29yayBpbml0aWFsaXphdGlvbiBpZiBwb3Nz
aWJsZQo+PiDCoMKgICh0aGUgaW50ZXJmYWNlIG11c3Qgbm90IGJlIGluaXRpYWxpemVkIGJlZm9y
ZSBMaW51eCBib290cykKPj4gKiBDb25uZWN0IGEgbGl2ZSAxMEdiIEV0aGVybmV0IGNhYmxlIHRv
IGFuIFg1NTAgcG9ydAo+PiAqIFBvd2VyIGN5Y2xlIChub3QgcmVzZXQsIGRvZXNuJ3QgYWx3YXlz
IHdvcmspIHRoZSBzeXN0ZW0gYW5kIGJvb3QgTGludXgKPj4gKiBPYnNlcnZlOiBpeGdiZSBpbnRl
cmZhY2VzIHcvIDEwR2JFIGNhYmxlcyBwbHVnZ2VkIGluIGZhaWwgd2l0aCBlcnJvciAKPj4gLTE3
Cj4gCj4gV2h5IG5vdCBhZGQgdGhhdCB0byB0aGUgY29tbWl0IG1lc3NhZ2U/CgpJIHdhc24ndCBz
dXJlIGlmIHRoZSByZXByb2R1Y3Rpb24gc2NlbmFyaW8gYmVsb25nZWQgdG8gdGhlIGNvbW1pdCAK
bWVzc2FnZSwgYW5kIGhhdmUgbm8gcHJvYmxlbSBhZGRpbmcgaXQgaWYgeW91IGJlbGlldmUgaXQg
ZG9lcy4KCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9p
eGdiZV94NTUwLmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVf
eDU1MC5jCj4+IGluZGV4IDk3MjRmZmIxNjUxOC4uZTRiNTBjNzc4MWZmIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMKPj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeDU1MC5jCj4+IEBAIC0zNDA1
LDYgKzM0MDUsOSBAQCBzdGF0aWMgczMyIGl4Z2JlX3Jlc2V0X2h3X1g1NTBlbShzdHJ1Y3QgaXhn
YmVfaHcgCj4+ICpodykKPj4gwqDCoMKgwqDCoCAvKiBmbHVzaCBwZW5kaW5nIFR4IHRyYW5zYWN0
aW9ucyAqLwo+PiDCoMKgwqDCoMKgIGl4Z2JlX2NsZWFyX3R4X3BlbmRpbmcoaHcpOwo+PiArwqDC
oMKgIC8qIHNldCBNRElPIHNwZWVkIGJlZm9yZSB0YWxraW5nIHRvIHRoZSBQSFkgaW4gY2FzZSBp
dCdzIHRoZSAxc3QgCj4+IHRpbWUgKi8KPj4gK8KgwqDCoCBpeGdiZV9zZXRfbWRpb19zcGVlZCho
dyk7Cj4+ICsKPj4gwqDCoMKgwqDCoCAvKiBQSFkgb3BzIG11c3QgYmUgaWRlbnRpZmllZCBhbmQg
aW5pdGlhbGl6ZWQgcHJpb3IgdG8gcmVzZXQgKi8KPj4gwqDCoMKgwqDCoCBzdGF0dXMgPSBody0+
cGh5Lm9wcy5pbml0KGh3KTsKPj4gwqDCoMKgwqDCoCBpZiAoc3RhdHVzID09IElYR0JFX0VSUl9T
RlBfTk9UX1NVUFBPUlRFRCB8fAo+Pgo+IAo+IElzIGBpeGdiZV9zZXRfbWRpb19zcGVlZChodylg
IGF0IHRoZSBlbmQgb2YgdGhlIGZ1bmN0aW9uIHRoZW4gc3RpbGwgbmVlZGVkPwoKVGhlIGNvZGUg
YmV0d2VlbiB0aGUgdHdvIGNhbGxzIGlzc3VlcyBhIGdsb2JhbCByZXNldCB0byB0aGUgTUFDIGFu
ZCAKb3B0aW9uYWxseSB0aGUgbGluaywgZGVwZW5kaW5nIG9uIHNvbWUgZmxhZ3MuIFRoYXQgbWF5
IHJlc2V0IHRoZSBNRElPIApzcGVlZCBiYWNrIHRvIHRoZSB3cm9uZyB2YWx1ZSBvciwgYWNjb3Jk
aW5nIHRvIHRoZSBjb21tZW50cyBpbiB0aGUgY29kZSwgCm1heSByZXNldCB0aGUgUEhZIGFuZCBy
ZXN1bHQgaW4gcmVuZWdvdGlhdGlvbiBhbmQgYSBkaWZmZXJlbnQgbGluayAKc3BlZWQuIFNvLCB0
aGUgTURJTyBzcGVlZCBzZXR0aW5nIG1heSByZXF1aXJlIGFuIGFkanVzdG1lbnQuIEV2ZW4gaWYg
aXQgCmFjdHVhbGx5IGRvZXNuJ3QgYXQgdGhlIG1vbWVudCwgZG9pbmcgdGhlIHNlY29uZCBjYWxs
IG1ha2VzIHRoZSBjb2RlIApyb2J1c3QgdG8gZnV0dXJlIHNvZnR3YXJlIGFuZCBoYXJkd2FyZSBj
aGFuZ2VzLgoKLS0KQ3lyaWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
