Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB635F7560
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 10:39:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC36741900;
	Fri,  7 Oct 2022 08:39:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC36741900
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665131947;
	bh=XouKlWI42I/UPteVxPLE1ZO+TM9Rtv4Nt/xC59X5zVQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m7e0JOV5VGTcEDNY+O46m26HYbqct0poxFG3LTmrN8IXYRwzKMLSOvXiLS5L5HDpu
	 /awXRa9yKLgVu1xzdYVeyVO/7jZCYkdlPE/D7GMKsD+LbfJ46eOJpEawHV/zd+Tv+j
	 4iPNyM2prUN/tRZyGMxgfwyhYkKFl7ZfSSkQpq2A3OlQ7YbPz0T4s6s7IxZ3s/n9NU
	 XPBPRj3i3aRn6EEfVnmoqZEQ9TEIlHTlKkWkWtxqQ3LgMfjevx+pmF8ULqyzDBAHTc
	 v+9gtmADFhA8NqCsXQGPry1fJyAuT+ovdT6po9i3f0uUsfmDMqVxes23sq4/xgqfmB
	 BsQi9KXuM6JMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZTln0Q_U0BfM; Fri,  7 Oct 2022 08:39:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89DF1408D9;
	Fri,  7 Oct 2022 08:39:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89DF1408D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0DFD1BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B89D8833DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:39:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B89D8833DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id elywzOOeF1CV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 08:39:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1200B831A5
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1200B831A5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:38:59 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef11.dynamic.kabel-deutschland.de
 [95.90.239.17])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id DAD7561EA1929;
 Fri,  7 Oct 2022 10:38:56 +0200 (CEST)
Message-ID: <a6c715b1-2c96-89ef-ee02-eb6e137e1b0e@molgen.mpg.de>
Date: Fri, 7 Oct 2022 10:38:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20221007072424.83543-1-mateusz.palczewski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221007072424.83543-1-mateusz.palczewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix failure message when
 XDP is configured in TX only mode
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBNYXRldXN6LCBkZWFyIFN5bHdlc3RlciwKCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4K
CkFtIDA3LjEwLjIyIHVtIDA5OjI0IHNjaHJpZWIgTWF0ZXVzeiBQYWxjemV3c2tpOgo+IEZyb206
IFN5bHdlc3RlciBEemllZHppdWNoIDxzeWx3ZXN0ZXJ4LmR6aWVkeml1Y2hAaW50ZWwuY29tPgo+
IAo+IFdoZW4gc3RhcnRpbmcgeGRwc29jayBwcm9ncmFtIGluIFRYIG9ubHkgbW9kZToKPiAKPiBz
YW1wbGVzL2JwZi94ZHBzb2NrIC1pIDxpbnRlcmZhY2U+IC10Cj4gCj4gdGhlcmUgd2FzIGFuIGVy
cm9yIG9uIGk0MGUgZHJpdmVyOgo+IAo+IEZhaWxlZCB0byBhbGxvY2F0ZSBzb21lIGJ1ZmZlcnMg
b24gQUZfWERQIFpDIGVuYWJsZWQgUnggcmluZyAwIChwZl9xIDgxKQo+IAo+IEl0IHdhcyBjYXVz
ZWQgYnkgdHJ5aW5nIHRvIGFsbG9jYXRlIFJYIGJ1ZmZlcnMgZXZlbiB0aG91Z2gKPiBubyBSWCBi
dWZmZXJzIGFyZSBhdmFpbGFibGUgYmVjYXVzZSB3ZSBydW4gaW4gVFggb25seSBtb2RlLgo+IAo+
IEZpeCB0aGlzIGJ5IGNoZWNraW5nIGZvciBudW1iZXIgb2YgYXZhaWxhYmxlIGJ1ZmZlcnMKPiBm
b3IgUlggcXVldWUgd2hlbiBhbGxvY2F0aW5nIGJ1ZmZlcnMgZHVyaW5nIFhEUCBzZXR1cC4KPiAK
PiBGaXhlczogMGE3MTQxODZkM2MwICgiaTQwZTogYWRkIEFGX1hEUCB6ZXJvLWNvcHkgUnggc3Vw
cG9ydCIpCj4gU2lnbmVkLW9mZi1ieTogU3lsd2VzdGVyIER6aWVkeml1Y2ggPHN5bHdlc3Rlcngu
ZHppZWR6aXVjaEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0ZXVzeiBQYWxjemV3c2tp
IDxtYXRldXN6LnBhbGN6ZXdza2lAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyB8IDYgKysrKy0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwo+IGluZGV4IGU4ZDFmYjhhOTY2Yi4uYzA2YmRj
MDNkMmY0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9tYWluLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFp
bi5jCj4gQEAgLTM1NTQsNyArMzU1NCw3IEBAIHN0YXRpYyBpbnQgaTQwZV9jb25maWd1cmVfcnhf
cmluZyhzdHJ1Y3QgaTQwZV9yaW5nICpyaW5nKQo+ICAgCXN0cnVjdCBpNDBlX2h3ICpodyA9ICZ2
c2ktPmJhY2stPmh3Owo+ICAgCXN0cnVjdCBpNDBlX2htY19vYmpfcnhxIHJ4X2N0eDsKPiAgIAlp
NDBlX3N0YXR1cyBlcnIgPSAwOwo+IC0JYm9vbCBvazsKPiArCWJvb2wgb2sgPSB0cnVlOwo+ICAg
CWludCByZXQ7Cj4gICAKPiAgIAliaXRtYXBfemVybyhyaW5nLT5zdGF0ZSwgX19JNDBFX1JJTkdf
U1RBVEVfTkJJVFMpOwo+IEBAIC0zNjUyLDcgKzM2NTIsOSBAQCBzdGF0aWMgaW50IGk0MGVfY29u
ZmlndXJlX3J4X3Jpbmcoc3RydWN0IGk0MGVfcmluZyAqcmluZykKPiAgIAo+ICAgCWlmIChyaW5n
LT54c2tfcG9vbCkgewo+ICAgCQl4c2tfcG9vbF9zZXRfcnhxX2luZm8ocmluZy0+eHNrX3Bvb2ws
ICZyaW5nLT54ZHBfcnhxKTsKPiAtCQlvayA9IGk0MGVfYWxsb2NfcnhfYnVmZmVyc196YyhyaW5n
LCBJNDBFX0RFU0NfVU5VU0VEKHJpbmcpKTsKPiArCQlpZiAocmluZy0+eHNrX3Bvb2wtPmZyZWVf
bGlzdF9jbnQpCgpJIHdvdWxkIGhhdmUgdGhvdWdodCwgdGhhdCBpbiB0aGUgZXJyb3IgY2FzZSwg
YG9rYCBzaG91bGQgYmUgaW5pdGlhbGl6ZWQgCnRvIGBmYWxzZWAgKGF0IHRoZSB0b3ApLgoKPiAr
CQkJb2sgPSBpNDBlX2FsbG9jX3J4X2J1ZmZlcnNfemMocmluZywKPiArCQkJCQkJICAgICAgSTQw
RV9ERVNDX1VOVVNFRChyaW5nKSk7CgpBcyB5b3UgcGFzcyByaW5nIHRvIGBpNDBlX2FsbG9jX3J4
X2J1ZmZlcnNfemMoKWAsIGNhbuKAmXQgdGhlIGNoZWNrIG5vdCBiZSAKZG9uZSB0aGVyZT8KCj4g
ICAJfSBlbHNlIHsKPiAgIAkJb2sgPSAhaTQwZV9hbGxvY19yeF9idWZmZXJzKHJpbmcsIEk0MEVf
REVTQ19VTlVTRUQocmluZykpOwo+ICAgCX0KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
