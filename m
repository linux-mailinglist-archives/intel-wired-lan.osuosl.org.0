Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C2A3C9977
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jul 2021 09:15:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C06BD83D59;
	Thu, 15 Jul 2021 07:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFQKjxkvjw6U; Thu, 15 Jul 2021 07:15:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3F4783D57;
	Thu, 15 Jul 2021 07:15:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A8071BF869
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 07:15:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 146A842237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 07:15:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4_KpwXmiWoua for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jul 2021 07:15:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F6C842235
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 07:15:09 +0000 (UTC)
Received: from [192.168.0.3] (unknown [95.90.235.119])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id ADF3F61E64761;
 Thu, 15 Jul 2021 09:15:06 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20210715070342.2948195-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <1f8b5f30-3f46-79eb-6b22-2b2e3da7a7bf@molgen.mpg.de>
Date: Thu, 15 Jul 2021 09:15:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210715070342.2948195-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Do not take care about
 recovery NVM checksum
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
Cc: michael.edri@intel.com, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAxNS4wNy4yMSB1bSAwOTowMyBzY2hyaWViIFNhc2hhIE5lZnRpbjoK
ClBsZWFzZSBkZXNjcmliZSB0aGUgcHJvYmxlbSBmaXJzdCAobG9ja3VwKSAobWF5YmUgYnkgc3Vt
bWFyaXppbmcgdGhlIGJ1ZyAKcmVwb3J0KS4KCj4gQWNjb3JkaW5nIHRvIHRoZSBIVyBEZSwgaW50
ZWdyYXRlZCBHYkUgc2V0cyB0byByZWFkLW9ubHkgYWZ0ZXIKClBsZWFzZSB1c2UgKmRldmVsb3Bl
cnMqLgoKPiBwcm9ncmFtbWluZyBhIHVuaXF1ZSBNQUMgYWRkcmVzcy4gVGhlIGRyaXZlciBzaG91
bGQgbm90IHRha2UgY2FyZSBvZgoKRXhjdXNlIG15IGlnbm9yYW5jZSwgd2hvIGlzIHByb2dyYW1t
aW5nIHRoZSBNQUMgYWRkcmVzcz8KCj4gTlZNIGNoZWNrc3VtIHVwZGF0aW5nIHN0YXJ0aW5nIGZy
b20gVGlnZXIgTGFrZS4KCldobyBpcyB1cGRhdGluZyB0aGUgY2hlY2tzdW0/IFBsZWFzZSByZWZl
cmVuY2Ugc29tZSBkYXRhc2hlZXQgbmFtZSwgCnJldmlzaW9uIGFuZCBzZWN0aW9uLgoKPiBCdWd6
aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTM2NjcK
PiBTdWdnZXN0ZWQtYnk6IERpbWEgUnVpbnNraXkgPGRpbWEucnVpbnNraXlAaW50ZWwuY29tPgo+
IFN1Z2dlc3RlZC1ieTogVml0YWx5IExpZnNoaXRzIDx2aXRhbHkubGlmc2hpdHNAaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNvbT4K
PiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMgfCAy
MSArKysrKysrKysrKysrLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL2ljaDhsYW4uYwo+IGluZGV4IDliYWU0OTMyYTExZC4uZTI3M2UxNGEzNDE5IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4gQEAgLTQxNDAs
MTQgKzQxNDAsMTkgQEAgc3RhdGljIHMzMiBlMTAwMF92YWxpZGF0ZV9udm1fY2hlY2tzdW1faWNo
OGxhbihzdHJ1Y3QgZTEwMDBfaHcgKmh3KQo+ICAgCWlmIChyZXRfdmFsKQo+ICAgCQlyZXR1cm4g
cmV0X3ZhbDsKPiAgIAo+IC0JaWYgKCEoZGF0YSAmIHZhbGlkX2NzdW1fbWFzaykpIHsKPiAtCQlk
YXRhIHw9IHZhbGlkX2NzdW1fbWFzazsKPiAtCQlyZXRfdmFsID0gZTEwMDBfd3JpdGVfbnZtKGh3
LCB3b3JkLCAxLCAmZGF0YSk7Cj4gLQkJaWYgKHJldF92YWwpCj4gLQkJCXJldHVybiByZXRfdmFs
Owo+IC0JCXJldF92YWwgPSBlMTAwMGVfdXBkYXRlX252bV9jaGVja3N1bShodyk7Cj4gLQkJaWYg
KHJldF92YWwpCj4gLQkJCXJldHVybiByZXRfdmFsOwo+ICsJaWYgKCEoZGF0YSAmIHZhbGlkX2Nz
dW1fbWFzaykpCj4gKwkJZV9kYmcoIk5WTSBDaGVja3N1bSBJbnZhbGlkXG4iKTsKCknigJlkIHNw
ZWxsIGl0OiBOVk0gY2hlY2tzdW0gaW52YWxpZAoKU2hvdWxkbuKAmXQgdGhpcyBiZSBhdCBsZWFz
dCBhIHdhcm5pbmc/IEl04oCZZCBiZSBnb29kIHRvIGVsYWJvcmF0ZSBmb3IgCnVzZXJzIHNlZWlu
ZyB0aGlzIG1lc3NhZ2UuIFNvbWV0aGluZyBsaWtlOiBZb3VyIGRldmljZSBtaWdodCBub3Qgd29y
ay4gClBsZWFzZSBjaGVjayB5b3VyIGZpcm13YXJlIG9yIGNvbnRhY3QgdGhlIGRldmVsb3BlcnMu
Cgo+ICsKPiArCWlmIChody0+bWFjLnR5cGUgPCBlMTAwMF9wY2hfY25wKSB7Cj4gKwkJaWYgKCEo
ZGF0YSAmIHZhbGlkX2NzdW1fbWFzaykpIHsKCkFzIGl04oCZcyB0aGUgc2FtZSBjaGVjayBhcyBh
Ym92ZSwgSeKAmWQgbW92ZSB0aGlzIHdob2xlIGJsb2NrIGludG8gdGhlIGlmIApjb25kaXRpb24g
YWJvdmUuCgo+ICsJCQlkYXRhIHw9IHZhbGlkX2NzdW1fbWFzazsKPiArCQkJcmV0X3ZhbCA9IGUx
MDAwX3dyaXRlX252bShodywgd29yZCwgMSwgJmRhdGEpOwo+ICsJCQlpZiAocmV0X3ZhbCkKPiAr
CQkJCXJldHVybiByZXRfdmFsOwo+ICsJCQlyZXRfdmFsID0gZTEwMDBlX3VwZGF0ZV9udm1fY2hl
Y2tzdW0oaHcpOwo+ICsJCQlpZiAocmV0X3ZhbCkKPiArCQkJCXJldHVybiByZXRfdmFsOwo+ICsJ
CX0KPiAgIAl9Cj4gICAKPiAgIAlyZXR1cm4gZTEwMDBlX3ZhbGlkYXRlX252bV9jaGVja3N1bV9n
ZW5lcmljKGh3KTsKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
