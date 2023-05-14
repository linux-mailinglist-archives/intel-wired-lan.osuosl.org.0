Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D627703138
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 17:13:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C324B41D66;
	Mon, 15 May 2023 15:12:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C324B41D66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684163578;
	bh=M3wz94g6csZoZx5hsE8Lvp21SxibGZWvjX162JaFSoU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=01r0Nv+xuf88CwTmn1Civ28gJ3ZGu/Vy3feTbH63PSXoc/ntDcxtJsqmP+8vjSzdA
	 gkzr1NmRg/k47OlmG/Qopib1i6SfKqwqM7Nt7Y98Xd5JpLPNVVsRmAU9Mkne5DFyyZ
	 LEATr2u6O7yFdF1Tz+ZOZAKO1UlGkay3W0Ibf3KN7SemlDX0ZVGH/m8Okq6FuZ5th4
	 qZVXNokcTOJ6la+TALqqRXIk4sQRpNpWzaQyjkZERG1UugwQKjrJid80WfyM96IJMG
	 LdYVOx0pVj/Y85P5WekyMw7xs6JP0JkPou1teFeHhwHOUogDv1UXsEIFALA9oUDAqF
	 ziIj7q6GHfl9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 563keuMeNFKW; Mon, 15 May 2023 15:12:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9232B41D55;
	Mon, 15 May 2023 15:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9232B41D55
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8381E1BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 08:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 592F061539
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 08:05:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 592F061539
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cWZg4RESzvlV for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 May 2023 08:05:08 +0000 (UTC)
X-Greylist: delayed 00:05:14 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 306B661532
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 306B661532
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 08:05:08 +0000 (UTC)
Received: by air.basealt.ru (Postfix, from userid 490)
 id 7251D2F20227; Sun, 14 May 2023 07:59:50 +0000 (UTC)
Received: from [192.168.120.181] (unknown [176.59.56.94])
 by air.basealt.ru (Postfix) with ESMTPSA id 52EE52F20226;
 Sun, 14 May 2023 07:59:46 +0000 (UTC)
Message-ID: <6894e9f7-7100-255b-b026-5ccf485a7e31@basealt.ru>
Date: Sun, 14 May 2023 10:59:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
To: "Neftin, Sasha" <sasha.neftin@intel.com>, kovalev@altlinux.org,
 nickel@altlinux.org, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, jeffrey.t.kirsher@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, pabeni@redhat.com, edumazet@google.com,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 "naamax.meir" <naamax.meir@linux.intel.com>
References: <20230512231944.100501-1-kovalev@altlinux.org>
 <c9ef1c57-3ec5-5cf8-c025-63527280f2fa@intel.com>
Content-Language: en-US
From: =?UTF-8?B?0JLQsNGB0LjQu9C40Lkg0JrQvtCy0LDQu9C10LI=?=
 <kovalevvv@basealt.ru>
In-Reply-To: <c9ef1c57-3ec5-5cf8-c025-63527280f2fa@intel.com>
X-Mailman-Approved-At: Mon, 15 May 2023 15:12:52 +0000
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Fix bind network card with ID
 = 0x0D4F
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

MTQuMDUuMjAyMyAwOTowMCwgTmVmdGluLCBTYXNoYSDQv9C40YjQtdGCOgo+PiBGaXhlczogOTE0
ZWU5YzQzNmNiZTkgKCJlMTAwMGU6IEFkZCBzdXBwb3J0IGZvciBDb21ldCBMYWtlIikKPj4gU2ln
bmVkLW9mZi1ieTogVmFzaWxpeSBLb3ZhbGV2IDxrb3ZhbGV2QGFsdGxpbnV4Lm9yZz4KPj4gLS0t
Cj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyB8IDIgKy0K
Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMg
Cj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4+IGluZGV4
IGRiOGUwNjE1N2RhMjkuLjhiMTNmMTkzMDljMzkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4gQEAgLTc4ODcsNyArNzg4Nyw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAKPj4gZTEwMDBfcGNpX3RibFtdID0gewo+PiDC
oMKgwqDCoMKgIHsgUENJX1ZERVZJQ0UoSU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfSUNQX0kyMTlf
TE05KSwgCj4+IGJvYXJkX3BjaF9jbnAgfSwKPj4gwqDCoMKgwqDCoCB7IFBDSV9WREVWSUNFKElO
VEVMLCBFMTAwMF9ERVZfSURfUENIX0lDUF9JMjE5X1Y5KSwgCj4+IGJvYXJkX3BjaF9jbnAgfSwK
Pj4gwqDCoMKgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX0NNUF9J
MjE5X0xNMTApLCAKPj4gYm9hcmRfcGNoX2NucCB9LAo+PiAtwqDCoMKgIHsgUENJX1ZERVZJQ0Uo
SU5URUwsIEUxMDAwX0RFVl9JRF9QQ0hfQ01QX0kyMTlfVjEwKSwgCj4+IGJvYXJkX3BjaF9jbnAg
fSwKPj4gK8KgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBFMTAwMF9ERVZfSURfUENIX0NNUF9J
MjE5X1YxMCksIAo+PiBib2FyZF9wY2hfYWRwIH0sCj4gVGhpcyBpcyB3cm9uZyBhcHByb2FjaC4g
KHdlIGNhbiBub3QgcHJvY2VzcyBvbGQgYm9hcmQgc2ltaWxhciBhcyBuZXcpCj4+IMKgwqDCoMKg
wqAgeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9MTTExKSwg
Cj4+IGJvYXJkX3BjaF9jbnAgfSwKPj4gwqDCoMKgwqDCoCB7IFBDSV9WREVWSUNFKElOVEVMLCBF
MTAwMF9ERVZfSURfUENIX0NNUF9JMjE5X1YxMSksIAo+PiBib2FyZF9wY2hfY25wIH0sCj4+IMKg
wqDCoMKgwqAgeyBQQ0lfVkRFVklDRShJTlRFTCwgRTEwMDBfREVWX0lEX1BDSF9DTVBfSTIxOV9M
TTEyKSwgCj4+IGJvYXJkX3BjaF9zcHQgfSwKPiBMb29raW5nIGluIGNvbW1pdCA2MzllMjk4ZjQz
MmZiMCAoZTEwMDBlOiBGaXggcGFja2V0IGxvc3Mgb24gVGlnZXIgCj4gTGFrZSBhbmQgbGF0ZXIp
IEkgd291bGQgc3VnZ2VzdCB0byByZXBsYWNlIHRoZSBtYWMtPnR5cGUgYXMgZm9sbG93Ogo+ICJp
ZiAobWFjLT50eXBlID49IGUxMDAwX3BjaF90Z3ApIiB3aXRoICJpZiAobWFjLT50eXBlID49IAo+
IGUxMDAwX3BjaF9jbnApIiAobW9yZSBjb3JyZWN0KSAtIHRyeSBpdCBvbiB5b3VyIHNpZGUuCgpJ
IGNoZWNrZWQgdGhpcyB2YXJpYW50IGZpcnN0IG9mIGFsbCAtIHRoZSBiZWhhdmlvciBpcyBjb3Jy
ZWN0LCBuZXR3b3JrIApwYWNrZXRzIGFyZSBub3QgbG9zdC4gQ2FuIEkgcHJlcGFyZSBhIG5ldyBw
YXRjaCBvciB3aWxsIHRoaXMgY2hhbmdlIGJlIAptYWRlIGJ5IHlvdT8KCi0tIApCZXN0IHJlZ2Fy
ZHMsClZhc2lsaXkgS292YWxldgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
