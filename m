Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1237D777297
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 10:15:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D875C82CD3;
	Thu, 10 Aug 2023 08:15:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D875C82CD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691655322;
	bh=VRU6/Udx3pongtFpILLMucVOXUobFWUVjhV1Vk0eSRY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3t+smVHU1sCrL+6bADkXX/oAdHF2bN9DYvenoYuxIvKa0mQfDbhHP5mjLnBUxC36i
	 kvGf0LU7nJyqZFUZIPw9ywRoDo4RyUt+/UTMG/QwJel7yVoLW4ZbrAheX5n/Cau6y2
	 Uix+Lh0Z8LOO03VwLaGIrRWut1a4UU8u4Ie/mdno+5O1Wj81J8Q5BL44UesjGCVUKc
	 hYxDK6zJL3kRe6dw3hy6qCCpj7wne1EUjykEqpRtjaxuQCMHQD5goieftSmVjMK5vq
	 FAh1bEqdrlW67pyU+nK/+ARQP1XLUC9lZhwVRqY3D9WBJWjkdso8SdZ1kESC2QvUbN
	 +8/dy/mNL2AYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FXUdYFZvKoQR; Thu, 10 Aug 2023 08:15:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD04B82CA3;
	Thu, 10 Aug 2023 08:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD04B82CA3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 403561BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 08:15:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13B3A60B8A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 08:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13B3A60B8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5JoGy8D4cBgK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 08:15:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B1A5360AEB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 08:15:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1A5360AEB
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="368791797"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="368791797"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 01:14:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="978703104"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="978703104"
Received: from auscilow-mobl.ger.corp.intel.com (HELO [10.249.145.242])
 ([10.249.145.242])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 01:14:57 -0700
Message-ID: <7ca422d4-412d-8e26-c25b-eb897898e2fe@linux.intel.com>
Date: Thu, 10 Aug 2023 10:14:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, "Ertman, David M"
 <david.m.ertman@intel.com>
References: <20230804142654.9729-1-marcin.szycik@linux.intel.com>
 <4e8adb44-1f75-6c46-d7e9-a8ea5f3921fd@intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <4e8adb44-1f75-6c46-d7e9-a8ea5f3921fd@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691655313; x=1723191313;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MaOc/yfsCVRJpizwgFzxXxXg/cQyeh+2GudzA5cyzi8=;
 b=ONtJf2ZAc/g5TJlCr4FscqtLFQnMFGpf3Gr5/PJBJUxBTO7FLEoEHiY5
 TVxsjA2vfxFj7lbD3azv4CQlIYFJvlNEt4l4LoxHBD17026jw0dTc8loA
 KbKPD1glvKxEBP0XKwmajywXOBJpYFt/LyhUTQJbGHHKMW9cA37jwzJ3B
 5Fr2ua6DRPdBcbDp5Zyd+5ywoeKP9FaUjArJPKE8KDTs0lvuor5QNGi1V
 S37Dl7S7k0nv52oxkybWF/dsDralb/kNiEMAV0n4SVyR/nzADc2WUD/k2
 NX2qGRPXiLh3drq+21ngPh7FHI8wyQqsyb6Ye36nMyM1D1uAuWWnOmy8H
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ONtJf2ZA
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Block switchdev mode
 when ADQ is active and vice versa
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
Cc: netdev@vger.kernel.org, jiri@resnulli.us, leon@kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAwOC4wOC4yMDIzIDE5OjU1LCBUb255IE5ndXllbiB3cm90ZToKPiBPbiA4LzQvMjAyMyA3
OjI2IEFNLCBNYXJjaW4gU3p5Y2lrIHdyb3RlOgo+PiBBRFEgYW5kIHN3aXRjaGRldiBhcmUgbm90
IHN1cHBvcnRlZCBzaW11bHRhbmVvdXNseS4gRW5hYmxpbmcgYm90aCBhdCB0aGUKPj4gc2FtZSB0
aW1lIGNhbiByZXN1bHQgaW4gbnVsbHB0ciBkZXJlZmVyZW5jZS4KPj4KPj4gVG8gcHJldmVudCB0
aGlzLCBjaGVjayBpZiBBRFEgaXMgYWN0aXZlIHdoZW4gY2hhbmdpbmcgZGV2bGluayBtb2RlIHRv
Cj4+IHN3aXRjaGRldiBtb2RlLCBhbmQgY2hlY2sgaWYgc3dpdGNoZGV2IGlzIGFjdGl2ZSB3aGVu
IGVuYWJsaW5nIEFEUS4KPj4KPj4gRml4ZXM6IGZiYzdiMjdhZjBmOSAoImljZTogZW5hYmxlIG5k
b19zZXR1cF90YyBzdXBwb3J0IGZvciBtcXByaW9fcWRpc2MiKQo+PiBTaWduZWQtb2ZmLWJ5OiBN
YXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbT4KPj4gUmV2aWV3ZWQt
Ynk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4KPj4gLS0t
Cj4gCj4gLi4uCj4gCj4+IEBAIC04ODM0LDYgKzg4MzQsMTIgQEAgaWNlX3NldHVwX3RjKHN0cnVj
dCBuZXRfZGV2aWNlICpuZXRkZXYsIGVudW0gdGNfc2V0dXBfdHlwZSB0eXBlLAo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgICvCoMKg
wqDCoMKgwqDCoCBpZiAoaWNlX2lzX2Vzd2l0Y2hfbW9kZV9zd2l0Y2hkZXYocGYpKSB7Cj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5ldGRldl9lcnIobmV0ZGV2LCAiVEMgTVFQUklPIG9mZmxv
YWQgbm90IHN1cHBvcnRlZCwgc3dpdGNoZGV2IGlzIGVuYWJsZWRcbiIpOwo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBlcnIgPSAtRU9QTk9UU1VQUDsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZ290byBhZGV2X3VubG9jazsKPiAKPiBEb2VzIHRoaXMgbmVlZCB0byBiZSBjaGVja2VkIHVu
ZGVyIGFkZXYgbG9ja3M/CgpJdCBkb2Vzbid0LiBJJ2xsIG1vdmUgaXQgYWJvdmUuCgo+IAo+PiAr
wqDCoMKgwqDCoMKgwqAgfQo+PiArCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBzZXR1cCB0cmFm
ZmljIGNsYXNzaWZpZXIgZm9yIHJlY2VpdmUgc2lkZSAqLwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
bXV0ZXhfbG9jaygmcGYtPnRjX211dGV4KTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IGlj
ZV9zZXR1cF90Y19tcXByaW9fcWRpc2MobmV0ZGV2LCB0eXBlX2RhdGEpOwoKVGhhbmsgeW91IGZv
ciByZXZpZXdpbmchCk1hcmNpbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
