Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BAA3C9DF7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jul 2021 13:48:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D1B160B5A;
	Thu, 15 Jul 2021 11:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6NRj1Ycz-1Fl; Thu, 15 Jul 2021 11:48:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2064760758;
	Thu, 15 Jul 2021 11:48:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3178C1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 11:48:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BD2E4035F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 11:48:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zacXvNlGQ0td for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jul 2021 11:48:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B3474034E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jul 2021 11:48:41 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B1E8861E64761;
 Thu, 15 Jul 2021 13:48:38 +0200 (CEST)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20210715070342.2948195-1-sasha.neftin@intel.com>
 <1f8b5f30-3f46-79eb-6b22-2b2e3da7a7bf@molgen.mpg.de>
 <e83e4b2b-a648-cc2a-57c4-9ad56169f2f6@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <6fe5418f-65cf-c296-e3b2-818d2dd89186@molgen.mpg.de>
Date: Thu, 15 Jul 2021 13:48:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <e83e4b2b-a648-cc2a-57c4-9ad56169f2f6@intel.com>
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Tsai,
 Rex" <rex.tsai@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAxNS4wNy4yMSB1bSAwOTo1NCBzY2hyaWViIFNhc2hhIE5lZnRpbjoK
PiBPbiA3LzE1LzIwMjEgMTA6MTUsIFBhdWwgTWVuemVsIHdyb3RlOgoKPj4gQW0gMTUuMDcuMjEg
dW0gMDk6MDMgc2NocmllYiBTYXNoYSBOZWZ0aW46Cj4+Cj4+IFBsZWFzZSBkZXNjcmliZSB0aGUg
cHJvYmxlbSBmaXJzdCAobG9ja3VwKSAobWF5YmUgYnkgc3VtbWFyaXppbmcgdGhlIAo+PiBidWcg
cmVwb3J0KS4KPj4KPj4+IEFjY29yZGluZyB0byB0aGUgSFcgRGUsIGludGVncmF0ZWQgR2JFIHNl
dHMgdG8gcmVhZC1vbmx5IGFmdGVyCj4+Cj4+IFBsZWFzZSB1c2UgKmRldmVsb3BlcnMqLgo+IEkg
bWVhbnQ6IGhhcmR3YXJlIGRlc2lnbgoKSGFoLiBUaGFuayB5b3UgZm9yIHRoZSBjbGFyaWZpY2F0
aW9uLiBJdOKAmWQgYmUgZ3JlYXQsIGlmIHlvdSB1c2VkIHRoYXQgaW4gCnRoZSB2Mi4KCj4+PiBw
cm9ncmFtbWluZyBhIHVuaXF1ZSBNQUMgYWRkcmVzcy4gVGhlIGRyaXZlciBzaG91bGQgbm90IHRh
a2UgY2FyZSBvZgo+Pgo+PiBFeGN1c2UgbXkgaWdub3JhbmNlLCB3aG8gaXMgcHJvZ3JhbW1pbmcg
dGhlIE1BQyBhZGRyZXNzPyBPUyB2ZW5kb3JzIGFuZCAKPj4gUEMgdmVuZG9ycwo+Pgo+Pj4gTlZN
IGNoZWNrc3VtIHVwZGF0aW5nIHN0YXJ0aW5nIGZyb20gVGlnZXIgTGFrZS4KPj4KPj4gV2hvIGlz
IHVwZGF0aW5nIHRoZSBjaGVja3N1bT8gUGxlYXNlIHJlZmVyZW5jZSBzb21lIGRhdGFzaGVldCBu
YW1lLCAKPj4gcmV2aXNpb24gYW5kIHNlY3Rpb24uCj4gT1MgdmVuZG9ycyBhbmQgUEMgdmVuZG9y
cwo+IEl0IGlzIGRlc2NyaWJlZCBpbiBJbnRlbCBSQ1IgMTMwODI2NTgxMSAtIEkgZG8gbm90IGtu
b3cgaWYgcHVibGlzaGVkIAo+IGV4dGVybmFsbHkuIEkndmUgY2MnZCBvdXIgZnJvbnQgY3VzdG9t
ZXIgZXhwZXJ0IChSZXgpIC0gcGxlYXNlLCBhc2sgaGltIAo+IGlmIGl0IHB1Ymxpc2hlZC4KCkV2
ZW4gaWYgbm90IHB1Ymxpc2hlZCwgcGxlYXNlIHN0aWxsIHJlZmVyZW5jZSBpdC4gKFRob3VnaCBw
dWJsaWMgCmRhdGFzaGVldHMgYnkgZGVmYXVsdCB3b3VsZCBiZSBuaWNlLikKCj4+PiBCdWd6aWxs
YTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTM2NjcKPj4+
IFN1Z2dlc3RlZC1ieTogRGltYSBSdWluc2tpeSA8ZGltYS5ydWluc2tpeUBpbnRlbC5jb20+Cj4+
PiBTdWdnZXN0ZWQtYnk6IFZpdGFseSBMaWZzaGl0cyA8dml0YWx5LmxpZnNoaXRzQGludGVsLmNv
bT4KPj4+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNv
bT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhs
YW4uYyB8IDIxICsrKysrKysrKysrKystLS0tLS0tLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEz
IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMgCj4+PiBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+IGluZGV4IDliYWU0OTMyYTExZC4u
ZTI3M2UxNGEzNDE5IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL2ljaDhsYW4uYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL2ljaDhsYW4uYwo+Pj4gQEAgLTQxNDAsMTQgKzQxNDAsMTkgQEAgc3RhdGljIHMzMiAKPj4+
IGUxMDAwX3ZhbGlkYXRlX252bV9jaGVja3N1bV9pY2g4bGFuKHN0cnVjdCBlMTAwMF9odyAqaHcp
Cj4+PiDCoMKgwqDCoMKgIGlmIChyZXRfdmFsKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVy
biByZXRfdmFsOwo+Pj4gLcKgwqDCoCBpZiAoIShkYXRhICYgdmFsaWRfY3N1bV9tYXNrKSkgewo+
Pj4gLcKgwqDCoMKgwqDCoMKgIGRhdGEgfD0gdmFsaWRfY3N1bV9tYXNrOwo+Pj4gLcKgwqDCoMKg
wqDCoMKgIHJldF92YWwgPSBlMTAwMF93cml0ZV9udm0oaHcsIHdvcmQsIDEsICZkYXRhKTsKPj4+
IC3CoMKgwqDCoMKgwqDCoCBpZiAocmV0X3ZhbCkKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiByZXRfdmFsOwo+Pj4gLcKgwqDCoMKgwqDCoMKgIHJldF92YWwgPSBlMTAwMGVfdXBk
YXRlX252bV9jaGVja3N1bShodyk7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHJldF92YWwpCj4+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0X3ZhbDsKPj4+ICvCoMKgwqAgaWYg
KCEoZGF0YSAmIHZhbGlkX2NzdW1fbWFzaykpCj4+PiArwqDCoMKgwqDCoMKgwqAgZV9kYmcoIk5W
TSBDaGVja3N1bSBJbnZhbGlkXG4iKTsKPj4KPj4gSeKAmWQgc3BlbGwgaXQ6IE5WTSBjaGVja3N1
bSBpbnZhbGlkCj4+Cj4+IFNob3VsZG7igJl0IHRoaXMgYmUgYXQgbGVhc3QgYSB3YXJuaW5nPyBJ
dOKAmWQgYmUgZ29vZCB0byBlbGFib3JhdGUgZm9yIAo+PiB1c2VycyBzZWVpbmcgdGhpcyBtZXNz
YWdlLiBTb21ldGhpbmcgbGlrZTogWW91ciBkZXZpY2UgbWlnaHQgbm90IHdvcmsuIAo+PiBQbGVh
c2UgY2hlY2sgeW91ciBmaXJtd2FyZSBvciBjb250YWN0IHRoZSBkZXZlbG9wZXJzLgo+IHRvIGJl
IGNvbnNpc3RlbnQgdXNlZCBzYW1lIHdhcm5pbmcgZm9ybWF0IGFzIGluIG52bS5jOiAoIk5WTSBD
aGVja3N1bSAKPiBJbnZhbGlkXG4iKTsKCkZvciBjb25zaXN0ZW5jeSwgaXMgaXQgcG9zc2libGUg
dG8gZmFjdG9yIHRoZSBOVk0gc3R1ZmYgb3V0IGludG8gYG52bS5jYD8KCkFsc28sIHRoZSBtZXNz
YWdlIHNob3VsZCBjb250YWluLCB0aGF0IHRoZSBtYW51ZmFjdHVyZXIgaXMgYXQgZmF1bHQgYW5k
IApzaG91bGQgYmUgY29udGFjdGVkLgoKPj4+ICsKPj4+ICvCoMKgwqAgaWYgKGh3LT5tYWMudHlw
ZSA8IGUxMDAwX3BjaF9jbnApIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIShkYXRhICYgdmFs
aWRfY3N1bV9tYXNrKSkgewo+Pgo+PiBBcyBpdOKAmXMgdGhlIHNhbWUgY2hlY2sgYXMgYWJvdmUs
IEnigJlkIG1vdmUgdGhpcyB3aG9sZSBibG9jayBpbnRvIHRoZSBpZiAKPj4gY29uZGl0aW9uIGFi
b3ZlLgo+IEZvciBvbGQgZGV2aWNlcyB3aWxsIHBlcmZvcm1lZCBjaGVja3N1bSByZWNvdmVyeS4K
PiBOVk0gY2hlY2tzdW0gdmFsaWRhdGUgd2lsbCBiZSBwcm9jZXNzZWQgZm9yIGFsbC4KCkkgbWVh
bnQ6CgpgYGAKaWYgKCEoZGF0YSAmIHZhbGlkX2NzdW1fbWFzaykpIHsKCWVfZGJnKCJOVk0gQ2hl
Y2tzdW0gSW52YWxpZFxuIik7CgoJaWYgKGh3LT5tYWMudHlwZSA8IGUxMDAwX3BjaF9jbnApIHsK
CQlkYXRhIHw9IHZhbGlkX2NzdW1fbWFzazsKCQlb4oCmXQoJfQp9CnJldHVybiBlMTAwMGVfdmFs
aWRhdGVfbnZtX2NoZWNrc3VtX2dlbmVyaWMoaHcpOwpgYGAKCj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBkYXRhIHw9IHZhbGlkX2NzdW1fbWFzazsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJldF92YWwgPSBlMTAwMF93cml0ZV9udm0oaHcsIHdvcmQsIDEsICZkYXRhKTsKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXRfdmFsKQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0X3ZhbDsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldF92YWwgPSBlMTAwMGVfdXBkYXRlX252bV9jaGVja3N1bShodyk7Cj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAocmV0X3ZhbCkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIHJldF92YWw7Cj4+PiArwqDCoMKgwqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqDC
oCB9Cj4+PiDCoMKgwqDCoMKgIHJldHVybiBlMTAwMGVfdmFsaWRhdGVfbnZtX2NoZWNrc3VtX2dl
bmVyaWMoaHcpOwoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
