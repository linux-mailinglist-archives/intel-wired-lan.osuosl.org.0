Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FAA27F9EB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 09:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B18822FC6;
	Thu,  1 Oct 2020 07:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dcEhSH2dPg+p; Thu,  1 Oct 2020 07:07:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9DE5523039;
	Thu,  1 Oct 2020 07:07:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 485D61BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 07:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4467F86E8A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 07:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CxzAT0mKXYgp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 07:07:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 81EEB86E89
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 07:07:01 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af404.dynamic.kabel-deutschland.de
 [95.90.244.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 852FF2064623C;
 Thu,  1 Oct 2020 09:06:59 +0200 (CEST)
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Tong Zhang <ztong0001@gmail.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200908162231.4592-1-ztong0001@gmail.com>
 <bd917092-faf6-cfb9-2713-529368e655d8@molgen.mpg.de>
Message-ID: <c23cf934-071b-8f78-a639-8906e5d054df@molgen.mpg.de>
Date: Thu, 1 Oct 2020 09:06:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <bd917092-faf6-cfb9-2713-529368e655d8@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000: do not panic on malformed
 rx_desc
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBUb25nLAoKCkFtIDAxLjEwLjIwIHVtIDA5OjAzIHNjaHJpZWIgUGF1bCBNZW56ZWw6Cgo+
IEFtIDA4LjA5LjIwIHVtIDE4OjIyIHNjaHJpZWIgVG9uZyBaaGFuZzoKPj4gbGVuZ3RoIG1heSBi
ZSBjb3JydXB0ZWQgaW4gcnhfZGVzYwo+IAo+IEhvdyBjYW4gdGhhdCBiZT8KPiAKPj4gYW5kIGxl
YWQgdG8gcGFuaWMsIHNvIGNoZWNrIHRoZSBzYW5pdHkgYmVmb3JlIHBhc3NpbmcgaXQgdG8gc2ti
X3B1dAo+Pgo+PiBbwqAgMTY3LjY2NzcwMV0gc2tidWZmOiBza2Jfb3Zlcl9wYW5pYzogdGV4dDpm
ZmZmZmZmZmIxZTMyY2MxIGxlbjo2MDIyNCBwdXQ6NjAyMjQgaGVhZDpmZmZmODg4MDU1YWM1MDAw
IGRhdGE6ZmZmZjg4ODA1NWFjNTA0MCB0YWlsOjB4ZWI4MCBlbmQ6MHg2YzAgZGV2OmV0aDAKPj4g
W8KgIDE2Ny42Njg0MjldIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+PiBb
wqAgMTY3LjY2ODY2MV0ga2VybmVsIEJVRyBhdCBuZXQvY29yZS9za2J1ZmYuYzoxMDkhCj4+IFvC
oCAxNjcuNjY4OTEwXSBpbnZhbGlkIG9wY29kZTogMDAwMCBbIzFdIFNNUCBERUJVR19QQUdFQUxM
T0MgS0FTQU4gUFRJCj4+IFvCoCAxNjcuNjY5MjIwXSBDUFU6IDEgUElEOiAxNzAgQ29tbTogc2Qt
cmVzb2x2ZSBUYWludGVkOiBHwqDCoMKgwqDCoMKgwqAgV8KgwqDCoMKgwqDCoMKgwqAgNS44LjAr
ICMxCj4+IFvCoCAxNjcuNjcwMTYxXSBSSVA6IDAwMTA6c2tiX3BhbmljKzB4YzQvMHhjNgo+PiBb
wqAgMTY3LjY3MDM2M10gQ29kZTogODkgZjAgNDggYzcgYzcgNjAgZjIgZGUgYjIgNTUgNDggOGIg
NzQgMjQgMTggNGQgODkgZjkgNTYgNDggOGIgNTQgMjQgMTggNGMgODkgZTYgNTIgNDggOGIgNDQg
MjQgMTggNGMgODkgZWEgNTAgZTggMzEgYzUgMmEgZmYgPDBmPiAwYiA0YyA4YiA2NCAyNCAxOCBl
OCBmMSBiNCA0OCBmZiA0OCBjNyBjMSAwMCBmYyBkZSBiMiA0NCA4OSBlZQo+PiBbwqAgMTY3LjY3
MTI3Ml0gUlNQOiAwMDE4OmZmZmY4ODgwNmQxMDljNjggRUZMQUdTOiAwMDAxMDI4Ngo+PiBbwqAg
MTY3LjY3MTUyN10gUkFYOiAwMDAwMDAwMDAwMDAwMDhjIFJCWDogZmZmZjg4ODA2NWU5YWY0MCBS
Q1g6IDAwMDAwMDAwMDAwMDAwMDAKPj4gW8KgIDE2Ny42NzE4NzhdIFJEWDogMWZmZmYxMTAwZGEy
NGM5MSBSU0k6IDAwMDAwMDAwMDAwMDAwMDggUkRJOiBmZmZmZWQxMDBkYTIxMzgwCj4+IFvCoCAx
NjcuNjcyMjI3XSBSQlA6IGZmZmY4ODgwNmJkZTQwMDAgUjA4OiAwMDAwMDAwMDAwMDAwMDhjIFIw
OTogZmZmZmVkMTAwZGEyNWNmYgo+PiBbwqAgMTY3LjY3MjU4M10gUjEwOiBmZmZmODg4MDZkMTJl
N2Q3IFIxMTogZmZmZmVkMTAwZGEyNWNmYSBSMTI6IGZmZmZmZmZmYjJkZWZjNDAKPj4gW8KgIDE2
Ny42NzI5MzFdIFIxMzogZmZmZmZmZmZiMWUzMmNjMSBSMTQ6IDAwMDAwMDAwMDAwMGViNDAgUjE1
OiBmZmZmODg4MDU1YWM1MDAwCj4+IFvCoCAxNjcuNjczMjg2XSBGUzrCoCAwMDAwN2ZjNWY1Mzc1
NzAwKDAwMDApIEdTOmZmZmY4ODgwNmQxMDAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAw
MAo+PiBbwqAgMTY3LjY3MzY4MV0gQ1M6wqAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAw
MDAwMDAwODAwNTAwMzMKPj4gW8KgIDE2Ny42NzM5NzNdIENSMjogMDAwMDAwMDAwMGNiMzAwOCBD
UjM6IDAwMDAwMDAwNjNkMzYwMDAgQ1I0OiAwMDAwMDAwMDAwMDAwNmUwCj4+IFvCoCAxNjcuNjc0
MzMwXSBEUjA6IDAwMDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAwMDAwIERSMjogMDAw
MDAwMDAwMDAwMDAwMAo+PiBbwqAgMTY3LjY3NDY3N10gRFIzOiAwMDAwMDAwMDAwMDAwMDAwIERS
NjogMDAwMDAwMDBmZmZlMGZmMCBEUjc6IDAwMDAwMDAwMDAwMDA0MDAKPj4gW8KgIDE2Ny42NzUw
MzVdIENhbGwgVHJhY2U6Cj4+IFvCoCAxNjcuNjc1MTY4XcKgIDxJUlE+Cj4+IFvCoCAxNjcuNjc1
MzE1XcKgID8gZTEwMDBfY2xlYW5fcnhfaXJxKzB4MzExLzB4NjMwCj4+IFvCoCAxNjcuNjg3NDU5
XcKgIHNrYl9wdXQuY29sZCsweDFmLzB4MWYKPj4gW8KgIDE2Ny42ODc2MzddwqAgZTEwMDBfY2xl
YW5fcnhfaXJxKzB4MzExLzB4NjMwCj4+IFvCoCAxNjcuNjg3ODUyXcKgIGUxMDAwZV9wb2xsKzB4
MTlhLzB4NGQwCj4+IFvCoCAxNjcuNjg4MDM4XcKgID8gZTEwMDBfd2F0Y2hkb2dfdGFzaysweDlk
MC8weDlkMAo+PiBbwqAgMTY3LjY4ODI2Ml3CoCA/IGNyZWRpdF9lbnRyb3B5X2JpdHMuY29uc3Rw
cm9wLjArMHg2Zi8weDFjMAo+PiBbwqAgMTY3LjY4ODUyN13CoCBuZXRfcnhfYWN0aW9uKzB4MjZl
LzB4NjUwCj4gCj4gT24gd2hhdCBkZXZpY2UgZGlkIHlvdSB0ZXN0IHRoaXM/Cj4gCj4+IFNpZ25l
ZC1vZmYtYnk6IFRvbmcgWmhhbmcgPHp0b25nMDAwMUBnbWFpbC5jb20+Cj4+IC0tLQo+PiDCoCBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9tYWluLmMgfCA3ICsrKysrKy0K
Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfbWFp
bi5jIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYwo+
PiBpbmRleCAxZTZlYzA4MWZkOWQuLjI5ZTJlY2IwMzU4YSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfbWFpbi5jCj4+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYwo+PiBAQCAtNDQ0MSw4ICs0NDQx
LDEzIEBAIHN0YXRpYyBib29sIGUxMDAwX2NsZWFuX3J4X2lycShzdHJ1Y3QgCj4+IGUxMDAwX2Fk
YXB0ZXIgKmFkYXB0ZXIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGVuZ3RoIC09IDQ7Cj4+IC3CoMKgwqDCoMKgwqDCoCBp
ZiAoYnVmZmVyX2luZm8tPnJ4YnVmLmRhdGEgPT0gTlVMTCkKPj4gK8KgwqDCoMKgwqDCoMKgIGlm
IChidWZmZXJfaW5mby0+cnhidWYuZGF0YSA9PSBOVUxMKcKgIHsKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgLyogY2hlY2sgbGVuZ3RoIHNhbml0eSAqLwoKSeKAmWQgcmVtb3ZlIHRoZSBjb21t
ZW50LCBhbmQg4oCmCgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoc2tiLT50YWlsICsg
bGVuZ3RoID4gc2tiLT5lbmQpIHsKPiAKPiBJdOKAmWQgYmUgZ3JlYXQsIGlmIHlvdSBjb3VsZCB1
c2UgdGhlIHNhbWUgb3JkZXIgYXMgaW4gdGhlIGFzc2lnbm1lbnQuCj4gCj4gIMKgwqDCoCBsZW5n
dGggPiBza2ItPmVuZCAtIHNrYi0+dGFpbAo+IAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGxlbmd0aCA9IHNrYi0+ZW5kIC0gc2tiLT50YWlsOwo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNrYl9wdXQoc2tiLCBsZW5n
dGgpOwoKcHJpbnQgYSB3YXJuaW5nL2FuIGVycm9yIGhlcmUsIGFzIHRoaXMgc2VlbXMgdG8gYmUg
YSBoYXJkd2FyZSBpc3N1ZS4KCj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCBlbHNlIC8qIGNvcHlicmVhayBza2IgKi8KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc2tiX3RyaW0oc2tiLCBsZW5ndGgpOwo+IAo+IEFjY29yZGluZyB0byB0aGUgY29kaW5nIHN0
eWxlLCB0aGUga2V5d29yZCBgZWxzZWAgaGFzIHRvIGJlIG9uIHRoZSBzYW1lIAo+IGxpbmUgYXMg
dGhlIGB7YCwgYW5kLCB0aGUgZWxzZSBicmFuY2ggYWxzbyBuZWVkcyB0byBiZSBwdXQgaW4ge30u
CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
