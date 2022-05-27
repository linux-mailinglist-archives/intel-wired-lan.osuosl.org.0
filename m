Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C778953622D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 14:15:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E53D42927;
	Fri, 27 May 2022 12:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xDizwpatWyiZ; Fri, 27 May 2022 12:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B921142926;
	Fri, 27 May 2022 12:15:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFFA71BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 12:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BAC51414E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 12:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k-JqGQPj8RPQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 12:15:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 173A84058D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 12:15:36 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C98F361EA192D;
 Fri, 27 May 2022 14:15:34 +0200 (CEST)
Message-ID: <6b4a6f01-dfde-e047-066f-15098633113c@molgen.mpg.de>
Date: Fri, 27 May 2022 14:15:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20220527115131.7413-1-marcin.szycik@linux.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220527115131.7413-1-marcin.szycik@linux.intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: disable stripping in default
 VSI ctx
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

RGVhciBNYXJjaW4sIGRlYXIgTWljaGFsLAoKCkFtIDI3LjA1LjIyIHVtIDEzOjUxIHNjaHJpZWIg
TWFyY2luIFN6eWNpazoKPiBGcm9tOiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtv
d3NraUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gSW4gY2FzZSB3aGVuIGRyaXZlciBpcyBpbiBlc3dp
dGNoIG1vZGUsIGhhdmluZyBWTEFOIHN0cmlwcGluZyBlbmFibGVkCj4gY2F1c2VzIGZhaWx1cmUg
aW4gY29tbXVuaWNhdGlvbi4gQWxsIFZMQU4gY29uZmlndXJhdGlvbiBjb21tYW5kcyBhcmUKPiBi
bG9ja2VkLCBiZWNhdXNlIG9mIHRoYXQgVkYgZHJpdmVyIGNhbid0IGRpc2FibGUgVkxBTiBzdHJp
cHBpbmcgYXQKCnMvYmxvY2tlZCwgYmVjYXVzZS9ibG9ja2VkLiBCZWNhdXNlLwoKPiBpbml0aWFs
aXphdGlvbi4gSXQgbGVhZHMgdG8gdGhlIHNpdHVhdGlvbiB3aGVuIFZMQU4gc3RyaXBwaW5nIG9u
IFZGIFZTSQo+IGlzIG9uLCBidXQgaW4ga2VybmVsIGl0IGlzIG9mZi4KPiAKPiBUbyBwcmV2ZW50
IHRoaXMsIHNldCBWTEFOIHN0cmlwcGluZyB0byBkaXNhYmxlZCBpbiBWU0kgaW5pdGlhbGl6YXRp
b24uCgpNYXliZTog4oCmLCBkaXNhYmxlIFZMQU4gc3RyaXBwaW5nIGluIFZTSSBpbml0aWFsaXph
dGlvbi4KCj4gSXQgZG9lc24ndCBicmVhayBvdGhlciB1c2VjYXNlcywgYmVjYXVzZSBpdCBpcyBz
ZXQgYWNjb3JkaW5nIHRvIGtlcm5lbAo+IHNldHRpbmdzLgoKUGxlYXNlIGRvY3VtZW50IHlvdXIg
dGVzdCBzZXR1cC4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCgoKPiBGaXhlczogZjA5OTAxYWE1NTRh
ICgiaWNlOiByZW1vdmUgVkxBTiByZXByZXNlbnRvciBzcGVjaWZpYyBvcHMiKQo+IFNpZ25lZC1v
ZmYtYnk6IE1pY2hhbCBTd2lhdGtvd3NraSA8bWljaGFsLnN3aWF0a293c2tpQGxpbnV4LmludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4
LmludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
bGliLmMgfCAzICsrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYwo+IGluZGV4IDcwOTYxYzAzNDNl
Ny4uYjI4ZmI4ZWFjZmZiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfbGliLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2xpYi5jCj4gQEAgLTg4Nyw2ICs4ODcsOSBAQCBzdGF0aWMgdm9pZCBpY2Vfc2V0X2RmbHRfdnNp
X2N0eChzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0IGljZV92c2lfY3R4ICpjdHh0KQo+ICAgCQkJ
KElDRV9BUV9WU0lfT1VURVJfVEFHX1ZMQU5fODEwMCA8PAo+ICAgCQkJIElDRV9BUV9WU0lfT1VU
RVJfVEFHX1RZUEVfUykgJgo+ICAgCQkJSUNFX0FRX1ZTSV9PVVRFUl9UQUdfVFlQRV9NOwo+ICsJ
CWN0eHQtPmluZm8ub3V0ZXJfdmxhbl9mbGFncyB8PQo+ICsJCQlGSUVMRF9QUkVQKElDRV9BUV9W
U0lfT1VURVJfVkxBTl9FTU9ERV9NLAo+ICsJCQkJICAgSUNFX0FRX1ZTSV9PVVRFUl9WTEFOX0VN
T0RFX05PVEhJTkcpOwo+ICAgCX0KPiAgIAkvKiBIYXZlIDE6MSBVUCBtYXBwaW5nIGZvciBib3Ro
IGluZ3Jlc3MvZWdyZXNzIHRhYmxlcyAqLwo+ICAgCXRhYmxlIHw9IElDRV9VUF9UQUJMRV9UUkFO
U0xBVEUoMCwgMCk7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
