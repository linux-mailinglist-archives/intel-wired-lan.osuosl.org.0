Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE8527F9DD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 09:03:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89A3686E89;
	Thu,  1 Oct 2020 07:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oa3nYmaUjyYc; Thu,  1 Oct 2020 07:03:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7105E86E8F;
	Thu,  1 Oct 2020 07:03:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86E1A1BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 07:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 74BE987282
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 07:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3FIW0deK2NNw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 07:03:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9B33E87292
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 07:03:22 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af404.dynamic.kabel-deutschland.de
 [95.90.244.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 204402064623C;
 Thu,  1 Oct 2020 09:03:19 +0200 (CEST)
To: Tong Zhang <ztong0001@gmail.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200908162231.4592-1-ztong0001@gmail.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <bd917092-faf6-cfb9-2713-529368e655d8@molgen.mpg.de>
Date: Thu, 1 Oct 2020 09:03:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20200908162231.4592-1-ztong0001@gmail.com>
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

RGVhciBUb25nLAoKClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KCkFtIDA4LjA5LjIwIHVtIDE4
OjIyIHNjaHJpZWIgVG9uZyBaaGFuZzoKPiBsZW5ndGggbWF5IGJlIGNvcnJ1cHRlZCBpbiByeF9k
ZXNjCgpIb3cgY2FuIHRoYXQgYmU/Cgo+IGFuZCBsZWFkIHRvIHBhbmljLCBzbyBjaGVjayB0aGUg
c2FuaXR5IGJlZm9yZSBwYXNzaW5nIGl0IHRvIHNrYl9wdXQKPiAKPiBbICAxNjcuNjY3NzAxXSBz
a2J1ZmY6IHNrYl9vdmVyX3BhbmljOiB0ZXh0OmZmZmZmZmZmYjFlMzJjYzEgbGVuOjYwMjI0IHB1
dDo2MDIyNCBoZWFkOmZmZmY4ODgwNTVhYzUwMDAgZGF0YTpmZmZmODg4MDU1YWM1MDQwIHRhaWw6
MHhlYjgwIGVuZDoweDZjMCBkZXY6ZQo+IHRoMAo+IFsgIDE2Ny42Njg0MjldIC0tLS0tLS0tLS0t
LVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+IFsgIDE2Ny42Njg2NjFdIGtlcm5lbCBCVUcgYXQg
bmV0L2NvcmUvc2tidWZmLmM6MTA5IQo+IFsgIDE2Ny42Njg5MTBdIGludmFsaWQgb3Bjb2RlOiAw
MDAwIFsjMV0gU01QIERFQlVHX1BBR0VBTExPQyBLQVNBTiBQVEkKPiBbICAxNjcuNjY5MjIwXSBD
UFU6IDEgUElEOiAxNzAgQ29tbTogc2QtcmVzb2x2ZSBUYWludGVkOiBHICAgICAgICBXICAgICAg
ICAgNS44LjArICMxCj4gWyAgMTY3LjY3MDE2MV0gUklQOiAwMDEwOnNrYl9wYW5pYysweGM0LzB4
YzYKPiBbICAxNjcuNjcwMzYzXSBDb2RlOiA4OSBmMCA0OCBjNyBjNyA2MCBmMiBkZSBiMiA1NSA0
OCA4YiA3NCAyNCAxOCA0ZCA4OSBmOSA1NiA0OCA4YiA1NCAyNCAxOCA0YyA4OSBlNiA1MiA0OCA4
YiA0NCAyNCAxOCA0YyA4OSBlYSA1MCBlOCAzMSBjNSAyYSBmZiA8MGY+Cj4gMGIgNGMgOGIgNjQg
MjQgMTggZTggZjEgYjQgNDggZmYgNDggYzcgYzEgMDAgZmMgZGUgYjIgNDQgODkgZWUKPiBbICAx
NjcuNjcxMjcyXSBSU1A6IDAwMTg6ZmZmZjg4ODA2ZDEwOWM2OCBFRkxBR1M6IDAwMDEwMjg2Cj4g
WyAgMTY3LjY3MTUyN10gUkFYOiAwMDAwMDAwMDAwMDAwMDhjIFJCWDogZmZmZjg4ODA2NWU5YWY0
MCBSQ1g6IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAxNjcuNjcxODc4XSBSRFg6IDFmZmZmMTEwMGRh
MjRjOTEgUlNJOiAwMDAwMDAwMDAwMDAwMDA4IFJESTogZmZmZmVkMTAwZGEyMTM4MAo+IFsgIDE2
Ny42NzIyMjddIFJCUDogZmZmZjg4ODA2YmRlNDAwMCBSMDg6IDAwMDAwMDAwMDAwMDAwOGMgUjA5
OiBmZmZmZWQxMDBkYTI1Y2ZiCj4gWyAgMTY3LjY3MjU4M10gUjEwOiBmZmZmODg4MDZkMTJlN2Q3
IFIxMTogZmZmZmVkMTAwZGEyNWNmYSBSMTI6IGZmZmZmZmZmYjJkZWZjNDAKPiBbICAxNjcuNjcy
OTMxXSBSMTM6IGZmZmZmZmZmYjFlMzJjYzEgUjE0OiAwMDAwMDAwMDAwMDBlYjQwIFIxNTogZmZm
Zjg4ODA1NWFjNTAwMAo+IFsgIDE2Ny42NzMyODZdIEZTOiAgMDAwMDdmYzVmNTM3NTcwMCgwMDAw
KSBHUzpmZmZmODg4MDZkMTAwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKPiBbICAx
NjcuNjczNjgxXSBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUw
MDMzCj4gWyAgMTY3LjY3Mzk3M10gQ1IyOiAwMDAwMDAwMDAwY2IzMDA4IENSMzogMDAwMDAwMDA2
M2QzNjAwMCBDUjQ6IDAwMDAwMDAwMDAwMDA2ZTAKPiBbICAxNjcuNjc0MzMwXSBEUjA6IDAwMDAw
MDAwMDAwMDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAwMDAwIERSMjogMDAwMDAwMDAwMDAwMDAwMAo+
IFsgIDE2Ny42NzQ2NzddIERSMzogMDAwMDAwMDAwMDAwMDAwMCBEUjY6IDAwMDAwMDAwZmZmZTBm
ZjAgRFI3OiAwMDAwMDAwMDAwMDAwNDAwCj4gWyAgMTY3LjY3NTAzNV0gQ2FsbCBUcmFjZToKPiBb
ICAxNjcuNjc1MTY4XSAgPElSUT4KPiBbICAxNjcuNjc1MzE1XSAgPyBlMTAwMF9jbGVhbl9yeF9p
cnErMHgzMTEvMHg2MzAKPiBbICAxNjcuNjg3NDU5XSAgc2tiX3B1dC5jb2xkKzB4MWYvMHgxZgo+
IFsgIDE2Ny42ODc2MzddICBlMTAwMF9jbGVhbl9yeF9pcnErMHgzMTEvMHg2MzAKPiBbICAxNjcu
Njg3ODUyXSAgZTEwMDBlX3BvbGwrMHgxOWEvMHg0ZDAKPiBbICAxNjcuNjg4MDM4XSAgPyBlMTAw
MF93YXRjaGRvZ190YXNrKzB4OWQwLzB4OWQwCj4gWyAgMTY3LjY4ODI2Ml0gID8gY3JlZGl0X2Vu
dHJvcHlfYml0cy5jb25zdHByb3AuMCsweDZmLzB4MWMwCj4gWyAgMTY3LjY4ODUyN10gIG5ldF9y
eF9hY3Rpb24rMHgyNmUvMHg2NTAKCk9uIHdoYXQgZGV2aWNlIGRpZCB5b3UgdGVzdCB0aGlzPwoK
PiBTaWduZWQtb2ZmLWJ5OiBUb25nIFpoYW5nIDx6dG9uZzAwMDFAZ21haWwuY29tPgo+IC0tLQo+
ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDAvZTEwMDBfbWFpbi5jIHwgNyArKysr
KystCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21h
aW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYwo+IGlu
ZGV4IDFlNmVjMDgxZmQ5ZC4uMjllMmVjYjAzNThhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX21haW4uYwo+IEBAIC00NDQxLDggKzQ0NDEsMTMgQEAg
c3RhdGljIGJvb2wgZTEwMDBfY2xlYW5fcnhfaXJxKHN0cnVjdCBlMTAwMF9hZGFwdGVyICphZGFw
dGVyLAo+ICAgCQkJICovCj4gICAJCQlsZW5ndGggLT0gNDsKPiAgIAo+IC0JCWlmIChidWZmZXJf
aW5mby0+cnhidWYuZGF0YSA9PSBOVUxMKQo+ICsJCWlmIChidWZmZXJfaW5mby0+cnhidWYuZGF0
YSA9PSBOVUxMKSAgewo+ICsJCQkvKiBjaGVjayBsZW5ndGggc2FuaXR5ICovCj4gKwkJCWlmIChz
a2ItPnRhaWwgKyBsZW5ndGggPiBza2ItPmVuZCkgewoKSXTigJlkIGJlIGdyZWF0LCBpZiB5b3Ug
Y291bGQgdXNlIHRoZSBzYW1lIG9yZGVyIGFzIGluIHRoZSBhc3NpZ25tZW50LgoKICAgICBsZW5n
dGggPiBza2ItPmVuZCAtIHNrYi0+dGFpbAoKPiArCQkJCWxlbmd0aCA9IHNrYi0+ZW5kIC0gc2ti
LT50YWlsOwo+ICsJCQl9Cj4gICAJCQlza2JfcHV0KHNrYiwgbGVuZ3RoKTsKPiArCQl9Cj4gICAJ
CWVsc2UgLyogY29weWJyZWFrIHNrYiAqLwo+ICAgCQkJc2tiX3RyaW0oc2tiLCBsZW5ndGgpOwoK
QWNjb3JkaW5nIHRvIHRoZSBjb2Rpbmcgc3R5bGUsIHRoZSBrZXl3b3JkIGBlbHNlYCBoYXMgdG8g
YmUgb24gdGhlIHNhbWUgCmxpbmUgYXMgdGhlIGB7YCwgYW5kLCB0aGUgZWxzZSBicmFuY2ggYWxz
byBuZWVkcyB0byBiZSBwdXQgaW4ge30uCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
