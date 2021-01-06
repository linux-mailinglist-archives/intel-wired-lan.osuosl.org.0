Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E582EBBC0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jan 2021 10:36:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A743986BB4;
	Wed,  6 Jan 2021 09:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAUVVuLRnz6k; Wed,  6 Jan 2021 09:36:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF00C86B58;
	Wed,  6 Jan 2021 09:36:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 044161BF34A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 09:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0026C8508E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 09:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8OOM42InKMZ2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jan 2021 09:36:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F2E584E49
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 09:36:26 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aea67.dynamic.kabel-deutschland.de
 [95.90.234.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9D43420647B5F;
 Wed,  6 Jan 2021 10:36:23 +0100 (CET)
To: Eryk Rybak <eryk.roch.rybak@intel.com>
References: <20201218165255.6393-1-eryk.roch.rybak@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <e983a9eb-3d87-8fb4-3221-1f012e04d5a6@molgen.mpg.de>
Date: Wed, 6 Jan 2021 10:36:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20201218165255.6393-1-eryk.roch.rybak@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on
 device is out of the range
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

RGVhciBFcnlrLAoKCkFtIDE4LjEyLjIwIHVtIDE3OjUyIHNjaHJpZWIgRXJ5ayBSeWJhazoKCk1h
eWJlIGEgc2hvcnRlciBzdW1tYXJ5OgoKID4gaTQwZTogTG9nIGVycm9yIGZvciBvdmVyc2l6ZWQg
TVRVIG9uIGRldmljZQoKPiBXaGVuIGF0dGVtcHRpbmcgdG8gbGluayBYRFAgcHJvZyB3aXRoIE1U
VSBsYXJnZXIgdGhhbiBzdXBwb3J0ZWQsCj4gdXNlciBpcyBub3QgaW5mb3JtZWQgd2h5IFhEUCBs
aW5raW5nIGZhaWxzLiBBZGRpbmcgcHJvcGVyCgpOaXQ6IEltcGVyYXRpdmUgbW9vZCBjb3VsZCBi
ZSB1c2VkIGluc3RlYWQ6IEFkZCBwcm9wZXIg4oCmCgo+IGVycm9yIG1lc3NhZ2UuCgpQZXJzb25h
bGx5LCB3aGVuIGFkZGluZyBuZXcgbG9nIG1lc3NhZ2UsIEkgZmluZCBpdCBuaWNlIHRvIHNlZSB0
aGVtIGluIAp0aGUgY29tbWl0IG1lc3NhZ2UgdG9vLgoKPiBTaWduZWQtb2ZmLWJ5OiBBcmthZGl1
c3ogS3ViYWxld3NraSA8YXJrYWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEVyeWsgUnliYWsgPGVyeWsucm9jaC5yeWJha0BpbnRlbC5jb20+Cj4gLS0tCj4gICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jIHwgMTEgKysrKysrKy0t
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWlu
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4gaW5kZXgg
NjMwMjU4ZS4uNGZkZWYwMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfbWFpbi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX21haW4uYwo+IEBAIC0xMjkzMyw5ICsxMjkzMywxMCBAQCBzdGF0aWMgbmV0ZGV2X2Zl
YXR1cmVzX3QgaTQwZV9mZWF0dXJlc19jaGVjayhzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+ICAgICog
aTQwZV94ZHBfc2V0dXAgLSBhZGQvcmVtb3ZlIGFuIFhEUCBwcm9ncmFtCj4gICAgKiBAdnNpOiBW
U0kgdG8gY2hhbmdlZAo+ICAgICogQHByb2c6IFhEUCBwcm9ncmFtCj4gKyAqIEBleHRhY2s6IG5l
dGxpbmsgZXh0ZW5kZWQgYWNrCj4gICAgKiovCj4gLXN0YXRpYyBpbnQgaTQwZV94ZHBfc2V0dXAo
c3RydWN0IGk0MGVfdnNpICp2c2ksCj4gLQkJCSAgc3RydWN0IGJwZl9wcm9nICpwcm9nKQo+ICtz
dGF0aWMgaW50IGk0MGVfeGRwX3NldHVwKHN0cnVjdCBpNDBlX3ZzaSAqdnNpLCBzdHJ1Y3QgYnBm
X3Byb2cgKnByb2csCj4gKwkJCSAgc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQo+ICAg
ewo+ICAgCWludCBmcmFtZV9zaXplID0gdnNpLT5uZXRkZXYtPm10dSArIEVUSF9ITEVOICsgRVRI
X0ZDU19MRU4gKyBWTEFOX0hMRU47Cj4gICAJc3RydWN0IGk0MGVfcGYgKnBmID0gdnNpLT5iYWNr
Owo+IEBAIC0xMjk0NCw4ICsxMjk0NSwxMCBAQCBzdGF0aWMgaW50IGk0MGVfeGRwX3NldHVwKHN0
cnVjdCBpNDBlX3ZzaSAqdnNpLAo+ICAgCWludCBpOwo+ICAgCj4gICAJLyogRG9uJ3QgYWxsb3cg
ZnJhbWVzIHRoYXQgc3BhbiBvdmVyIG11bHRpcGxlIGJ1ZmZlcnMgKi8KPiAtCWlmIChmcmFtZV9z
aXplID4gdnNpLT5yeF9idWZfbGVuKQo+ICsJaWYgKGZyYW1lX3NpemUgPiB2c2ktPnJ4X2J1Zl9s
ZW4pIHsKPiArCQlOTF9TRVRfRVJSX01TR19NT0QoZXh0YWNrLCAiTVRVIHRvbyBsYXJnZSB0byBl
bmFibGUgWERQIik7CgpDb3VsZCB5b3UgcGxlYXNlIGFsc28gcHJpbnQgb3V0IGJvdGggdmFsdWVz
PyBNYXliZSAodW5zdXJlIGFib3V0IHRoZSB1bml0cyk6CgogICAgTVRVIG9mICV1IGJ5dGVzKD8p
IHRvbyBsYXJnZSB0byBlbmFibGUgWERQIChtYXhpbXVtOiAldSBieXRlcykKCgpLaW5kIHJlZ2Fy
ZHMsCgpQYXVsCgoKPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gKwl9Cj4gICAKPiAgIAkvKiBXaGVu
IHR1cm5pbmcgWERQIG9uLT5vZmYvb2ZmLT5vbiB3ZSByZXNldCBhbmQgcmVidWlsZCB0aGUgcmlu
Z3MuICovCj4gICAJbmVlZF9yZXNldCA9IChpNDBlX2VuYWJsZWRfeGRwX3ZzaSh2c2kpICE9ICEh
cHJvZyk7Cj4gQEAgLTEzMjU0LDcgKzEzMjU3LDcgQEAgc3RhdGljIGludCBpNDBlX3hkcChzdHJ1
Y3QgbmV0X2RldmljZSAqZGV2LAo+ICAgCj4gICAJc3dpdGNoICh4ZHAtPmNvbW1hbmQpIHsKPiAg
IAljYXNlIFhEUF9TRVRVUF9QUk9HOgo+IC0JCXJldHVybiBpNDBlX3hkcF9zZXR1cCh2c2ksIHhk
cC0+cHJvZyk7Cj4gKwkJcmV0dXJuIGk0MGVfeGRwX3NldHVwKHZzaSwgeGRwLT5wcm9nLCB4ZHAt
PmV4dGFjayk7Cj4gICAJY2FzZSBYRFBfU0VUVVBfWFNLX1BPT0w6Cj4gICAJCXJldHVybiBpNDBl
X3hza19wb29sX3NldHVwKHZzaSwgeGRwLT54c2sucG9vbCwKPiAgIAkJCQkJICAgeGRwLT54c2su
cXVldWVfaWQpOwo+IAo+IGJhc2UtY29tbWl0OiBkMmMyYmJhZDkzYjgxODAyMDY1N2E4MjEyMWEx
NDdlOWFjZTEyMzBkCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
