Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10389812BBA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 10:31:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C7DC436F2;
	Thu, 14 Dec 2023 09:31:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C7DC436F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702546284;
	bh=BQX+S4jf7ViQF7vCDrZrslDwaEENd7nlBMgk5+Fw/ms=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0PFXln2C4dm+5zZxnPajG85R1tJHHNt5jG3ZebpHP1OET76rrUvNR2TpCVmcp7BG/
	 +XNm7z/kN6tU9kyMr8Fb5CH1C39UiSLPY8WGjK14J1vZ6Gn4QMmdhsxTM3DmSubNjN
	 HDAvdP6gWNcv+Ov559yjqAh6oeutTa2CfVKr00jjMsvhzB+sUMU1XVpkuq1b6i38np
	 syrgmnUmFDVsVPN+LHLMCoCl8kzjlxfExH8eVujJqUn8gr51+1NSsY9sEEEXfrR3hF
	 uFqYUT8Na+vo9unGYZdlF+dnQRnbdtbKcvubwkU9U1en8OkjbtFeplMRyKHI4qqZih
	 WpcxN3UhFPU/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id izT-qtp-_uNW; Thu, 14 Dec 2023 09:31:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17545402D4;
	Thu, 14 Dec 2023 09:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17545402D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 799461BF376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E742409B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E742409B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VBASqXihUu62 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 09:31:16 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6DDF40354
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 09:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6DDF40354
Received: from [192.168.0.4] (ip5f5af0ba.dynamic.kabel-deutschland.de
 [95.90.240.186])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 69E0261E646D9;
 Thu, 14 Dec 2023 10:30:56 +0100 (CET)
Message-ID: <736b40ab-8f9c-464c-9ef1-225f54220390@molgen.mpg.de>
Date: Thu, 14 Dec 2023 10:30:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
References: <20231214085050.3161674-1-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20231214085050.3161674-1-arkadiusz.kubalewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: dpll: fix phase offset
 value
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBcmthZGl1c3osCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKQW0gMTQuMTIuMjMg
dW0gMDk6NTAgc2NocmllYiBBcmthZGl1c3ogS3ViYWxld3NraToKPiBTdG9wIGRpdmlkaW5nIHRo
ZSBwaGFzZV9vZmZzZXQgdmFsdWUgcmVjZWl2ZWQgZnJvbSBmaXJtd2FyZSwgdGhpcyBpcwo+IGZh
dWx0IGludHJvZHVjZWQgd2l0aCB0aGUgaW5pdGlhbCBpbXBsZW1lbnRhdGlvbi4KCuKApiBmaXJt
d2FyZS4gVGhpcyBmYXVsdCBpcyBwcmVzZW50IHNpbmNlIHRoZSBpbml0aWFsIGltcGxlbWVudGF0
aW9uLgoKPiBUaGUgcGhhc2Vfb2Zmc2V0IHZhbHVlIHJlY2VpdmVkIGZyb20gZmlybXdhcmUgaXMg
aW4gMC4wMXBzIHJlc29sdXRpb24uCj4gRHBsbCBzdWJzeXN0ZW0gaXMgdXNpbmcgdGhlIHZhbHVl
IGluIDAuMDAxcHMsIHJhdyB2YWx1ZSBpcyBhZGp1c3RlZAo+IGJlZm9yZSBwcm92aWRpbmcgaXQg
dG8gdGhlIHVzZXIuCgpXaGF0IHByb2JsZW1zIGRvZXMgdGhpcyBmYXVsdCBoYXZlLCBhbmQgaG93
IGNhbiBpdCBiZSB0ZXN0ZWQsIHRoYXQgaXTigJlzIApmaXhlZD8KCgpLaW5kIHJlZ2FyZHMsCgpQ
YXVsCgoKPiBGaXhlczogOGEzYTU2NWZmMjEwICgiaWNlOiBhZGQgYWRtaW4gY29tbWFuZHMgdG8g
YWNjZXNzIGNndSBjb25maWd1cmF0aW9uIikKPiBGaXhlczogOTBlMWM5MDc1MGQ3ICgiaWNlOiBk
cGxsOiBpbXBsZW1lbnQgcGhhc2UgcmVsYXRlZCBjYWxsYmFja3MiKQo+IFJldmlld2VkLWJ5OiBB
bGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4KPiBSZXZp
ZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IEFya2FkaXVzeiBLdWJhbGV3c2tpIDxhcmthZGl1c3oua3ViYWxld3Nr
aUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2NvbW1vbi5jIHwgNCArLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfY29tbW9uLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Nv
bW1vbi5jCj4gaW5kZXggOWE2YzI1Zjk4NjMyLi5lZGFjMzRjNzk2Y2UgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMKPiBAQCAtNTMzMiw3ICs1MzMy
LDYgQEAgaWNlX2FxX2dldF9jZ3VfZHBsbF9zdGF0dXMoc3RydWN0IGljZV9odyAqaHcsIHU4IGRw
bGxfbnVtLCB1OCAqcmVmX3N0YXRlLAo+ICAgCQkJICAgdTggKmVlY19tb2RlKQo+ICAgewo+ICAg
CXN0cnVjdCBpY2VfYXFjX2dldF9jZ3VfZHBsbF9zdGF0dXMgKmNtZDsKPiAtCWNvbnN0IHM2NCBu
c2VjX3Blcl9wc2VjID0gMTAwMExMOwo+ICAgCXN0cnVjdCBpY2VfYXFfZGVzYyBkZXNjOwo+ICAg
CWludCBzdGF0dXM7Cj4gICAKPiBAQCAtNTM0OCw4ICs1MzQ3LDcgQEAgaWNlX2FxX2dldF9jZ3Vf
ZHBsbF9zdGF0dXMoc3RydWN0IGljZV9odyAqaHcsIHU4IGRwbGxfbnVtLCB1OCAqcmVmX3N0YXRl
LAo+ICAgCQkqcGhhc2Vfb2Zmc2V0ID0gbGUzMl90b19jcHUoY21kLT5waGFzZV9vZmZzZXRfaCk7
Cj4gICAJCSpwaGFzZV9vZmZzZXQgPDw9IDMyOwo+ICAgCQkqcGhhc2Vfb2Zmc2V0ICs9IGxlMzJf
dG9fY3B1KGNtZC0+cGhhc2Vfb2Zmc2V0X2wpOwo+IC0JCSpwaGFzZV9vZmZzZXQgPSBkaXY2NF9z
NjQoc2lnbl9leHRlbmQ2NCgqcGhhc2Vfb2Zmc2V0LCA0NyksCj4gLQkJCQkJICBuc2VjX3Blcl9w
c2VjKTsKPiArCQkqcGhhc2Vfb2Zmc2V0ID0gc2lnbl9leHRlbmQ2NCgqcGhhc2Vfb2Zmc2V0LCA0
Nyk7Cj4gICAJCSplZWNfbW9kZSA9IGNtZC0+ZWVjX21vZGU7Cj4gICAJfQo+ICAgCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
