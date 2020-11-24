Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B531D2C2BB3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Nov 2020 16:47:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69E3086088;
	Tue, 24 Nov 2020 15:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cKuYy9r_lo1X; Tue, 24 Nov 2020 15:47:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4ABBC86160;
	Tue, 24 Nov 2020 15:47:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 661B91BF44C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 15:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 615C487298
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 15:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1MNOweVqqo3F for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Nov 2020 15:47:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE87B86FF7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Nov 2020 15:47:34 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af1dc.dynamic.kabel-deutschland.de
 [95.90.241.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5A77420646221;
 Tue, 24 Nov 2020 16:47:31 +0100 (CET)
To: Chen Yu <yu.c.chen@intel.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Len Brown <len.brown@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20201124153221.11265-1-yu.c.chen@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <a8058c17-141d-986e-903d-462dc72999f1@molgen.mpg.de>
Date: Tue, 24 Nov 2020 16:47:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201124153221.11265-1-yu.c.chen@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Assign DPM_FLAG_SMART_SUSPEND
 and DPM_FLAG_MAY_SKIP_RESUME to speed up s2ram
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
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBDaGVuLAoKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKQW0gMjQuMTEuMjAgdW0gMTY6
MzIgc2NocmllYiBDaGVuIFl1Ogo+IFRoZSBOSUMgaXMgcHV0IGluIHJ1bnRpbWUgc3VzcGVuZCBz
dGF0dXMgd2hlbiB0aGVyZSBpcyBubyB3aXJlIGNvbm5lY3RlZC4KPiBBcyBhIHJlc3VsdCwgaXQg
aXMgc2FmZSB0byBrZWVwIHRoaXMgTklDIGluIHJ1bnRpbWUgc3VzcGVuZGVkIGR1cmluZyBzMnJh
bQo+IGJlY2F1c2UgdGhlIHN5c3RlbSBkb2VzIG5vdCByZWx5IG9uIHRoZSBOSUMgcGx1ZyBldmVu
dCBub3IgV09MIHRvIHdha2UgdXAKPiB0aGUgc3lzdGVtLiBVbmxpa2UgdGhlIHMyaWRsZSwgczJy
YW0gZG9lcyBub3QgbmVlZCB0byBtYW5pcHVsYXRlIFMwaXggc2V0dGluZ3MKPiBkdXJpbmcgc3Vz
cGVuZC4KCndoYXQgaGFwcGVucywgd2hlbiBJIHBsdWcgaW4gYSBjYWJsZSwgd2hlbiB0aGUgc3Vz
cGVuZCBpcyBpbiBBQ1BJIFMzIApzdGF0ZT8gSSBndWVzcyBpdOKAmXMgaWdub3JlZD8KCj4gVGhp
cyBwYXRjaCBhc3NpZ25zIERQTV9GTEFHX1NNQVJUX1NVU1BFTkQgYW5kIERQTV9GTEFHX01BWV9T
S0lQX1JFU1VNRQo+IHRvIHRoZSBlMTAwMGUgZHJpdmVyIHNvIHRoYXQgdGhlIHMycmFtIGNvdWxk
IHNraXAgdGhlIC5zdXNwZW5kX2xhdGUoKSwKPiAuc3VzcGVuZF9ub2lycSgpIGFuZCAucmVzdW1l
X25vaXJxKCkgLnJlc3VtZV9lYXJseSgpIHdoZW4gcG9zc2libGUuCj4gQWxzbyBza2lwIC5zdXNw
ZW5kKCkgYW5kIC5yZXN1bWUoKSBpZiBkZXZfcG1fc2tpcF9zdXNwZW5kKCkgYW5kCj4gZGV2X3Bt
X3NraXBfcmVzdW1lKCkgcmV0dXJuIHRydWUsIHNvIGFzIHRvIHNwZWVkIHVwIHRoZSBzMnJhbS4K
CldoYXQgaXMgc3BlZCB1cD8gU3VzcGVuZCBvciByZXN1bWU/CgpQbGVhc2UgYWxzbyBkb2N1bWVu
dCwgd2hhdCBzeXN0ZW0geW91IHRlc3RlZCB0aGlzIG9uLCBhbmQgd2hhdCB0aGUgCm51bWJlcnMg
YmVmb3JlIGFuZCBhZnRlciBhcmUuCgpJZiB0aGVyZSBpcyBhIGJ1ZyByZXBvcnQsIHBsZWFzZSBu
b3RlIGl0IHRvby4KCj4gU2lnbmVkLW9mZi1ieTogQ2hlbiBZdSA8eXUuYy5jaGVuQGludGVsLmNv
bT4KPiAtLS0KPiAgIGRyaXZlcnMvYmFzZS9wb3dlci9tYWluLmMgICAgICAgICAgICAgICAgICB8
ICAyICsrCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgfCAx
NCArKysrKysrKysrKysrLQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvYmFzZS9wb3dlci9tYWluLmMg
Yi9kcml2ZXJzL2Jhc2UvcG93ZXIvbWFpbi5jCj4gaW5kZXggYzdhYzQ5MDQyY2VlLi45Y2Q4YWJi
YTg2MTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9iYXNlL3Bvd2VyL21haW4uYwo+ICsrKyBiL2Ry
aXZlcnMvYmFzZS9wb3dlci9tYWluLmMKPiBAQCAtNTgwLDYgKzU4MCw3IEBAIGJvb2wgZGV2X3Bt
X3NraXBfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgIAo+ICAgCXJldHVybiAhZGV2LT5w
b3dlci5tdXN0X3Jlc3VtZTsKPiAgIH0KPiArRVhQT1JUX1NZTUJPTF9HUEwoZGV2X3BtX3NraXBf
cmVzdW1lKTsKPiAgIAo+ICAgLyoqCj4gICAgKiBkZXZpY2VfcmVzdW1lX25vaXJxIC0gRXhlY3V0
ZSBhICJub2lycSByZXN1bWUiIGNhbGxiYWNrIGZvciBnaXZlbiBkZXZpY2UuCj4gQEAgLTIwMTAs
MyArMjAxMSw0IEBAIGJvb2wgZGV2X3BtX3NraXBfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYp
Cj4gICAJcmV0dXJuIGRldl9wbV90ZXN0X2RyaXZlcl9mbGFncyhkZXYsIERQTV9GTEFHX1NNQVJU
X1NVU1BFTkQpICYmCj4gICAJCXBtX3J1bnRpbWVfc3RhdHVzX3N1c3BlbmRlZChkZXYpOwo+ICAg
fQo+ICtFWFBPUlRfU1lNQk9MX0dQTChkZXZfcG1fc2tpcF9zdXNwZW5kKTsKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gaW5kZXggYjMwZjAwODkxYzAzLi5k
NzlmZGRhYmM1NTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL25ldGRldi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25l
dGRldi5jCj4gQEAgLTY5NjUsNiArNjk2NSwxNCBAQCBzdGF0aWMgX19tYXliZV91bnVzZWQgaW50
IGUxMDAwZV9wbV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgIAlzdHJ1Y3QgZTEwMDBf
aHcgKmh3ID0gJmFkYXB0ZXItPmh3Owo+ICAgCWludCByYzsKPiAgIAo+ICsJLyogUnVudGltZSBz
dXNwZW5kZWQgbWVhbnMgdGhhdCB0aGVyZSBpcyBubyB3aXJlZCBjb25uZWN0aW9uCgpNYXliZSBl
eHBsaWNpdGx5IHVzZSAqY2FibGUqIGluIGhlcmUgdG8gYXZvaWQgY29uZnVzaW9uPwoKPiArCSAq
IGFuZCBpdCBoYXMgbm90aGluZyB0byBkbyB3aXRoIFdPTCB0aGF0LCB3ZSBkb24ndCBuZWVkIHRv
CgpNb3ZlIHRoZSBjb21tYSBiZWZvcmUgKnRoYXQqPwoKPiArCSAqIGFkanVzdCB0aGUgV09MIHNl
dHRpbmdzLiBTbyBpdCBpcyBzYWZlIHRvIHB1dCBOSUMgaW4KPiArCSAqIHJ1bnRpbWUgc3VzcGVu
ZCB3aGlsZSBkb2luZyBzeXN0ZW0gc3VzcGVuZC4KCkkgdW5kZXJzdG9vZCwgdGhhdCB0aGUgTklD
IGlzIGFscmVhZHkgaW4gcnVudGltZSBzdXNwZW5kPyBDb3VsZCB5b3UgCnBsZWFzZSBjbGFyaWZ5
IHRoZSBjb21tZW50PwoKPiArCSAqLwo+ICsJaWYgKGRldl9wbV9za2lwX3N1c3BlbmQoZGV2KSkK
PiArCQlyZXR1cm4gMDsKPiArCj4gICAJZTEwMDBlX2ZsdXNoX2xwaWMocGRldik7Cj4gICAKPiAg
IAllMTAwMGVfcG1fZnJlZXplKGRldik7Cj4gQEAgLTY5ODksNiArNjk5Nyw5IEBAIHN0YXRpYyBf
X21heWJlX3VudXNlZCBpbnQgZTEwMDBlX3BtX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4g
ICAJc3RydWN0IGUxMDAwX2h3ICpodyA9ICZhZGFwdGVyLT5odzsKPiAgIAlpbnQgcmM7Cj4gICAK
PiArCWlmIChkZXZfcG1fc2tpcF9yZXN1bWUoZGV2KSkKPiArCQlyZXR1cm4gMDsKPiArCj4gICAJ
LyogSW50cm9kdWNlIFMwaXggaW1wbGVtZW50YXRpb24gKi8KPiAgIAlpZiAoaHctPm1hYy50eXBl
ID49IGUxMDAwX3BjaF9jbnAgJiYKPiAgIAkgICAgIWUxMDAwZV9jaGVja19tZShody0+YWRhcHRl
ci0+cGRldi0+ZGV2aWNlKSkKPiBAQCAtNzY2NSw3ICs3Njc2LDggQEAgc3RhdGljIGludCBlMTAw
MF9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQg
KmVudCkKPiAgIAo+ICAgCWUxMDAwX3ByaW50X2RldmljZV9pbmZvKGFkYXB0ZXIpOwo+ICAgCj4g
LQlkZXZfcG1fc2V0X2RyaXZlcl9mbGFncygmcGRldi0+ZGV2LCBEUE1fRkxBR19OT19ESVJFQ1Rf
Q09NUExFVEUpOwo+ICsJZGV2X3BtX3NldF9kcml2ZXJfZmxhZ3MoJnBkZXYtPmRldiwgRFBNX0ZM
QUdfTk9fRElSRUNUX0NPTVBMRVRFIHwKPiArCQkJCURQTV9GTEFHX1NNQVJUX1NVU1BFTkQgfCBE
UE1fRkxBR19NQVlfU0tJUF9SRVNVTUUpOwo+ICAgCj4gICAJaWYgKHBjaV9kZXZfcnVuX3dha2Uo
cGRldikgJiYgaHctPm1hYy50eXBlIDwgZTEwMDBfcGNoX2NucCkKPiAgIAkJcG1fcnVudGltZV9w
dXRfbm9pZGxlKCZwZGV2LT5kZXYpOwoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
