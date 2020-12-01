Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A6F2CA6C1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Dec 2020 16:15:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3378087543;
	Tue,  1 Dec 2020 15:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5PwaS6zXa9PO; Tue,  1 Dec 2020 15:15:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9522787497;
	Tue,  1 Dec 2020 15:15:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 512711BF38C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 15:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CDA887534
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 15:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01bN-ys+Dki2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Dec 2020 15:15:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 97E5787497
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 15:15:28 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5af43d.dynamic.kabel-deutschland.de
 [95.90.244.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6773720225BD1;
 Tue,  1 Dec 2020 16:15:25 +0100 (CET)
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <3c992278-b907-29f0-6679-8174df2250fa@molgen.mpg.de>
Date: Tue, 1 Dec 2020 16:15:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [net 1/6] ice: fix FDir IPv6 flexbyte
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

RGVhciBIZW5yeSwKCgpBbSAyMS4xMS4yMCB1bSAwMTozOCBzY2hyaWViIFRvbnkgTmd1eWVuOgo+
IEZyb206IEhlbnJ5IFRpZW1hbiA8aGVucnkudy50aWVtYW5AaW50ZWwuY29tPgo+IAo+IFRoZSBw
YWNrZXQgY2xhc3NpZmllciB3b3VsZCBvY2Nhc2lvbmFsbHkgbWlzcmVjb2duaXplIGFuIElQdjYg
dHJhaW5pbmcKPiBwYWNrZXQgd2hlbiB0aGUgbmV4dCBwcm90b2NvbCBmaWVsZCB3YXMgMC4gVGhl
IGNvcnJlY3QgdmFsdWUgZm9yCj4gdW5zcGVjaWZpZWQgcHJvdG9jb2wgaXMgSVBQUk9UT19OT05F
Lgo+IAo+IEZpeGVzOiAxNjVkODBkNmFkYWIgKCJpY2U6IFN1cHBvcnQgSVB2NiBGbG93IERpcmVj
dG9yIGZpbHRlcnMiKQo+IFNpZ25lZC1vZmYtYnk6IEhlbnJ5IFRpZW1hbiA8aGVucnkudy50aWVt
YW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9ldGh0b29sX2ZkaXIuYyB8IDggKysrKysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sX2ZkaXIuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZXRodG9vbF9mZGlyLmMKPiBpbmRleCAyZDI3ZjY2YWM4NTMuLjE5Mjcy
OTU0NmJiZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2V0aHRvb2xfZmRpci5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9ldGh0b29sX2ZkaXIuYwo+IEBAIC0xNTc2LDcgKzE1NzYsMTMgQEAgaWNlX3NldF9mZGlyX2lu
cHV0X3NldChzdHJ1Y3QgaWNlX3ZzaSAqdnNpLCBzdHJ1Y3QgZXRodG9vbF9yeF9mbG93X3NwZWMg
KmZzcCwKPiAgIAkJICAgICAgIHNpemVvZihzdHJ1Y3QgaW42X2FkZHIpKTsKPiAgIAkJaW5wdXQt
PmlwLnY2Lmw0X2hlYWRlciA9IGZzcC0+aF91LnVzcl9pcDZfc3BlYy5sNF80X2J5dGVzOwo+ICAg
CQlpbnB1dC0+aXAudjYudGMgPSBmc3AtPmhfdS51c3JfaXA2X3NwZWMudGNsYXNzOwo+IC0JCWlu
cHV0LT5pcC52Ni5wcm90byA9IGZzcC0+aF91LnVzcl9pcDZfc3BlYy5sNF9wcm90bzsKPiArCj4g
KwkJLyogaWYgbm8gcHJvdG9jb2wgcmVxdWVzdGVkLCB1c2UgSVBQUk9UT19OT05FICovCj4gKwkJ
aWYgKCFmc3AtPm1fdS51c3JfaXA2X3NwZWMubDRfcHJvdG8pCj4gKwkJCWlucHV0LT5pcC52Ni5w
cm90byA9IElQUFJPVE9fTk9ORTsKPiArCQllbHNlCj4gKwkJCWlucHV0LT5pcC52Ni5wcm90byA9
IGZzcC0+aF91LnVzcl9pcDZfc3BlYy5sNF9wcm90bzsKPiArCgpJIHByZWZlciBub24tbmVnYXRp
b24gYW5kIHRoZSB0ZXJuYXJ5IG9wZXJhdG9yLCBidXQgaXTigJlzIHN1YmplY3RpdmUuCgogICAg
IGlucHV0LT5pcC52Ni5wcm90byA9IGZzcC0+aF91LnVzcl9pcDZfc3BlYy5sNF9wcm90byA/IApm
c3AtPmhfdS51c3JfaXA2X3NwZWMubDRfcHJvdG8gOiBJUFBST1RPX05PTkU7CgooR0NDIGV2ZW4g
aGFzIHRoZSBleHRlbnNpb24gYGEgPzogYmAuKQoKPiAgIAkJbWVtY3B5KGlucHV0LT5tYXNrLnY2
LmRzdF9pcCwgZnNwLT5tX3UudXNyX2lwNl9zcGVjLmlwNmRzdCwKPiAgIAkJICAgICAgIHNpemVv
ZihzdHJ1Y3QgaW42X2FkZHIpKTsKPiAgIAkJbWVtY3B5KGlucHV0LT5tYXNrLnY2LnNyY19pcCwg
ZnNwLT5tX3UudXNyX2lwNl9zcGVjLmlwNnNyYywKClJldmlld2VkLWJ5OiBQYXVsIE1lbnplbCA8
cG1lbnplbEBtb2xnZW4ubXBnLmRlPgoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
