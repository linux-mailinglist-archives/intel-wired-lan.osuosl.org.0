Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6545449BB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 13:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B7F5607D1;
	Thu,  9 Jun 2022 11:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2iPtFiBAgZMy; Thu,  9 Jun 2022 11:07:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E43460777;
	Thu,  9 Jun 2022 11:07:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 761D71BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 11:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6349941CAC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 11:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 77TVCtcKibQd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jun 2022 11:07:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E9E941CAA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 11:07:20 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A661761EA1928;
 Thu,  9 Jun 2022 13:07:16 +0200 (CEST)
Message-ID: <9d83c7c5-9699-1e21-ac8c-99ac55a75401@molgen.mpg.de>
Date: Thu, 9 Jun 2022 13:07:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Lixue Liang <lianglixuehao@126.com>
References: <20220609083904.91778-1-lianglixuehao@126.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220609083904.91778-1-lianglixuehao@126.com>
Subject: Re: [Intel-wired-lan] [PATCH v5] igb: Assign random MAC address
 instead of fail in case of invalid one
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
Cc: lianglixue@greatwall.com.cn, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaXh1ZSwKCgpUaGFuayB5b3UgZm9yIGFsbCB0aGUgaXRlcmF0aW9ucy4KCkFtIDA5LjA2
LjIyIHVtIDEwOjM5IHNjaHJpZWIgTGl4dWUgTGlhbmc6Cj4gRnJvbTogTGl4dWUgTGlhbmcgPGxp
YW5nbGl4dWVAZ3JlYXR3YWxsLmNvbS5jbj4KPiAKPiBJbiBzb21lIGNhc2VzLCB3aGVuIHRoZSB1
c2VyIHVzZXMgaWdiX3NldF9lZXByb20gdG8gbW9kaWZ5IHRoZSBNQUMgYWRkcmVzcwo+IHRvIGJl
IGludmFsaWQsIG9yIGFuIGludmFsaWQgTUFDIGFkZHJlc3MgYXBwZWFycyB3aGVuIHdpdGggdW5p
bml0aWFsaXplZAo+IHNhbXBsZXMsIHRoZSBpZ2IgZHJpdmVyIHdpbGwgZmFpbCB0byBsb2FkLiBJ
ZiB0aGVyZSBpcyBubyBuZXR3b3JrIGNhcmQKPiBkZXZpY2UsIHRoZSB1c2VyIGNvdWxkIG5vdCBj
b252ZW5pZW50bHkgbW9kaWZ5IGl0IHRvIGEgdmFsaWQgTUFDIGFkZHJlc3MsCj4gZm9yIGV4YW1w
bGUgdXNpbmcgZXRodG9vbCB0byBtb2RpZnkuCj4gCj4gVGhyb3VnaCBtb2R1bGUgcGFyYW1ldGVy
IHRvIHNldO+8jHdoZW4gdGhlIE1BQyBhZGRyZXNzIGlzIGludmFsaWQsIGEgcmFuZG9tCj4gdmFs
aWQgTUFDIGFkZHJlc3MgY2FuIGJlIHVzZWQgdG8gY29udGludWUgbG9hZGluZyBhbmQgb3V0cHV0
IHJlbGV2YW50IGxvZwo+IHJlbWluZGVycy4gSW4gdGhpcyB3YXksIHVzZXJzIGNhbiBjb252ZW5p
ZW50bHkgY29ycmVjdCBpbnZhbGlkIE1BQyBhZGRyZXNzLgoKTWF5YmU6CgpBZGQgdGhlIG1vZHVs
ZSBwYXJhbWV0ZXIgYOKApmAgdG8gY29udHJvbCB0aGUgYmVoYXZpb3IuIFdoZW4gc2V0IHRvIHRy
dWUsIAphIHJhbmRvbSBNQUMgYWRkcmVzcyBpcyBhc3NpZ25lZCwgYW5kIHRoZSBkcml2ZXIgY2Fu
IGJlIGxvYWRlZCwgYWxsb3dpbmcgCnRoZSB1c2VyIHRvIGNvcnJlY3QgdGhlIGludmFsaWQgTUFD
IGFkZHJlc3MuCgo+IAo+IFNpZ25lZC1vZmYtYnk6IExpeHVlIExpYW5nIDxsaWFuZ2xpeHVlQGdy
ZWF0d2FsbC5jb20uY24+Cj4gLS0tCgpb4oCmXQoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2IvaWdiX21haW4uYwo+IGluZGV4IDM0YjMzYjIxZTBkYy4uODE2MmU4OTk5Y2NiIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMKPiBAQCAtMjM4LDgg
KzIzOCwxMSBAQCBNT0RVTEVfTElDRU5TRSgiR1BMIHYyIik7Cj4gICAKPiAgICNkZWZpbmUgREVG
QVVMVF9NU0dfRU5BQkxFIChORVRJRl9NU0dfRFJWfE5FVElGX01TR19QUk9CRXxORVRJRl9NU0df
TElOSykKPiAgIHN0YXRpYyBpbnQgZGVidWcgPSAtMTsKPiArc3RhdGljIHVuc2lnbmVkIGludCBp
bnZhbGlkX21hY19hZGRyZXNzX2FsbG93OwoKTWFrZSBpdCBhIGJvb2xlYW4/Cgo+ICAgbW9kdWxl
X3BhcmFtKGRlYnVnLCBpbnQsIDApOwo+ICttb2R1bGVfcGFyYW0oaW52YWxpZF9tYWNfYWRkcmVz
c19hbGxvdywgdWludCwgMCk7CgpOYW1lIGl0IGBhbGxvd19pbnZhbGlkX21hY19hZGRyZXNzYD8K
Cj4gICBNT0RVTEVfUEFSTV9ERVNDKGRlYnVnLCAiRGVidWcgbGV2ZWwgKDA9bm9uZSwuLi4sMTY9
YWxsKSIpOwo+ICtNT0RVTEVfUEFSTV9ERVNDKGludmFsaWRfbWFjX2FkZHJlc3NfYWxsb3csICJB
bGxvdyBOSUMgZHJpdmVyIHRvIGJlIGxvYWRlZCB3aXRoIGludmFsaWQgTUFDIGFkZHJlc3MiKTsK
PiAgIAo+ICAgc3RydWN0IGlnYl9yZWdfaW5mbyB7Cj4gICAJdTMyIG9mczsKPiBAQCAtMzM1OSw5
ICszMzYyLDE2IEBAIHN0YXRpYyBpbnQgaWdiX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBj
b25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQo+ICAgCWV0aF9od19hZGRyX3NldChuZXRk
ZXYsIGh3LT5tYWMuYWRkcik7Cj4gICAKPiAgIAlpZiAoIWlzX3ZhbGlkX2V0aGVyX2FkZHIobmV0
ZGV2LT5kZXZfYWRkcikpIHsKPiAtCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJJbnZhbGlkIE1BQyBB
ZGRyZXNzXG4iKTsKPiAtCQllcnIgPSAtRUlPOwo+IC0JCWdvdG8gZXJyX2VlcHJvbTsKPiArCQlp
ZiAoIWludmFsaWRfbWFjX2FkZHJlc3NfYWxsb3cpIHsKPiArCQkJZGV2X2VycigmcGRldi0+ZGV2
LCAiSW52YWxpZCBNQUMgQWRkcmVzc1xuIik7CgpDb3JyZWN0IHRoZSBzcGVsbGluZyBpbiBhIHBh
dGNoIGluIGZyb250IG9mIHRoaXMgcGF0Y2g/Cgo+ICsJCQllcnIgPSAtRUlPOwo+ICsJCQlnb3Rv
IGVycl9lZXByb207Cj4gKwkJfSBlbHNlIHsKPiArCQkJZXRoX2h3X2FkZHJfcmFuZG9tKG5ldGRl
dik7Cj4gKwkJCWV0aGVyX2FkZHJfY29weShody0+bWFjLmFkZHIsIG5ldGRldi0+ZGV2X2FkZHIp
Owo+ICsJCQlkZXZfZXJyKCZwZGV2LT5kZXYsCj4gKwkJCQkiSW52YWxpZCBNQUMgYWRkcmVzcy4g
QXNzaWduZWQgcmFuZG9tIE1BQyBhZGRyZXNzXG4iKTsKPiArCQl9Cj4gICAJfQo+ICAgCj4gICAJ
aWdiX3NldF9kZWZhdWx0X21hY19maWx0ZXIoYWRhcHRlcik7CgoKS2luZCByZWdhcmRzLAoKUGF1
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
