Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88979536313
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 15:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06A6084B54;
	Fri, 27 May 2022 13:01:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y4bEjcUUSxMr; Fri, 27 May 2022 13:01:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F402D84B51;
	Fri, 27 May 2022 13:01:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 615701BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 13:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53A0442948
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 13:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ers6NHg_aaWq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 13:01:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A5CD42946
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 13:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653656474; x=1685192474;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0Ejyxw1UfSWpCcyxJwQ2oF5zE+givAW1+EFz3vFA+t0=;
 b=I+PsobwWlqoTD1M9bgOYliwmkvEmYFkWwdf+55iHeS7Em/4yHYTAUbrv
 d3N/tziS+SrjDKsWIKn3Sn41nobmNd7b+rnH5AB2StudogA5fWkGgtT+w
 9IyMVuNOFzNaFYsbruOnTg6S25HouFdPtIkc1R9QBxijxuMOoi2ZwFN+g
 Y2levU/mPiuPmmGad1sc7NOYJXKl+6az2vL+YOqqyZaZv6yGWJK8JkU80
 pQT8BoygJOq2vUsQx1EpBOLSpccahKImzr3ncFZvUGaGbbj8hWcCRHSlq
 UgYdx31LynYPyFmAiJJqEtlfdd9+2kEcS+62x0RbVVh+o46umgxlcCrmk A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="273286898"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="273286898"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 06:01:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="603871828"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.249.150.185])
 ([10.249.150.185])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 06:01:12 -0700
Message-ID: <3fab057b-ef21-3bda-6535-a19e5c4c96ec@linux.intel.com>
Date: Fri, 27 May 2022 15:01:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20220527115131.7413-1-marcin.szycik@linux.intel.com>
 <6b4a6f01-dfde-e047-066f-15098633113c@molgen.mpg.de>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <6b4a6f01-dfde-e047-066f-15098633113c@molgen.mpg.de>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwKCk9uIDI3LU1heS0yMiAxNDoxNSwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gRGVhciBN
YXJjaW4sIGRlYXIgTWljaGFsLAo+IAo+IAo+IEFtIDI3LjA1LjIyIHVtIDEzOjUxIHNjaHJpZWIg
TWFyY2luIFN6eWNpazoKPj4gRnJvbTogTWljaGFsIFN3aWF0a293c2tpIDxtaWNoYWwuc3dpYXRr
b3dza2lAbGludXguaW50ZWwuY29tPgo+Pgo+PiBJbiBjYXNlIHdoZW4gZHJpdmVyIGlzIGluIGVz
d2l0Y2ggbW9kZSwgaGF2aW5nIFZMQU4gc3RyaXBwaW5nIGVuYWJsZWQKPj4gY2F1c2VzIGZhaWx1
cmUgaW4gY29tbXVuaWNhdGlvbi4gQWxsIFZMQU4gY29uZmlndXJhdGlvbiBjb21tYW5kcyBhcmUK
Pj4gYmxvY2tlZCwgYmVjYXVzZSBvZiB0aGF0IFZGIGRyaXZlciBjYW4ndCBkaXNhYmxlIFZMQU4g
c3RyaXBwaW5nIGF0Cj4gCj4gcy9ibG9ja2VkLCBiZWNhdXNlL2Jsb2NrZWQuIEJlY2F1c2UvCgpT
b3JyeSwgYnV0IEkgZG9uJ3QgdW5kZXJzdGFuZCB3aGF0IHRvIGNoYW5nZSBoZXJlLiBDb3VsZCB5
b3UgZXhwbGFpbiBtb3JlIGNsZWFybHk/Cgo+IAo+PiBpbml0aWFsaXphdGlvbi4gSXQgbGVhZHMg
dG8gdGhlIHNpdHVhdGlvbiB3aGVuIFZMQU4gc3RyaXBwaW5nIG9uIFZGIFZTSQo+PiBpcyBvbiwg
YnV0IGluIGtlcm5lbCBpdCBpcyBvZmYuCj4+Cj4+IFRvIHByZXZlbnQgdGhpcywgc2V0IFZMQU4g
c3RyaXBwaW5nIHRvIGRpc2FibGVkIGluIFZTSSBpbml0aWFsaXphdGlvbi4KPiAKPiBNYXliZTog
4oCmLCBkaXNhYmxlIFZMQU4gc3RyaXBwaW5nIGluIFZTSSBpbml0aWFsaXphdGlvbi4KClNvdW5k
cyBnb29kLgoKPiAKPj4gSXQgZG9lc24ndCBicmVhayBvdGhlciB1c2VjYXNlcywgYmVjYXVzZSBp
dCBpcyBzZXQgYWNjb3JkaW5nIHRvIGtlcm5lbAo+PiBzZXR0aW5ncy4KPiAKPiBQbGVhc2UgZG9j
dW1lbnQgeW91ciB0ZXN0IHNldHVwLgoKV2lsbCByZXByb2R1Y3Rpb24gc3RlcHMgYmUgZW5vdWdo
PwoKClRoYW5rcyBmb3IgdGhlIHJldmlldyEKCk1hcmNpbgoKPiAKPiAKPiBLaW5kIHJlZ2FyZHMs
Cj4gCj4gUGF1bAo+IAo+IAo+PiBGaXhlczogZjA5OTAxYWE1NTRhICgiaWNlOiByZW1vdmUgVkxB
TiByZXByZXNlbnRvciBzcGVjaWZpYyBvcHMiKQo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU3dp
YXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+Cj4+IFNpZ25lZC1v
ZmYtYnk6IE1hcmNpbiBTenljaWsgPG1hcmNpbi5zenljaWtAbGludXguaW50ZWwuY29tPgo+PiAt
LS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYyB8IDMgKysr
Cj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5jCj4+IGluZGV4IDcwOTYxYzAzNDNlNy4uYjI4ZmI4
ZWFjZmZiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2xpYi5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMK
Pj4gQEAgLTg4Nyw2ICs4ODcsOSBAQCBzdGF0aWMgdm9pZCBpY2Vfc2V0X2RmbHRfdnNpX2N0eChz
dHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0IGljZV92c2lfY3R4ICpjdHh0KQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAoSUNFX0FRX1ZTSV9PVVRFUl9UQUdfVkxBTl84MTAwIDw8Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSUNFX0FRX1ZTSV9PVVRFUl9UQUdfVFlQRV9TKSAm
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElDRV9BUV9WU0lfT1VURVJfVEFHX1RZUEVf
TTsKPj4gK8KgwqDCoMKgwqDCoMKgIGN0eHQtPmluZm8ub3V0ZXJfdmxhbl9mbGFncyB8PQo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGSUVMRF9QUkVQKElDRV9BUV9WU0lfT1VURVJfVkxBTl9F
TU9ERV9NLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElDRV9BUV9W
U0lfT1VURVJfVkxBTl9FTU9ERV9OT1RISU5HKTsKPj4gwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKg
wqAgLyogSGF2ZSAxOjEgVVAgbWFwcGluZyBmb3IgYm90aCBpbmdyZXNzL2VncmVzcyB0YWJsZXMg
Ki8KPj4gwqDCoMKgwqDCoCB0YWJsZSB8PSBJQ0VfVVBfVEFCTEVfVFJBTlNMQVRFKDAsIDApCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
