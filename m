Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1135985A46
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2019 08:10:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCBB386B47;
	Thu,  8 Aug 2019 06:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n3Gr5cJSb9Mj; Thu,  8 Aug 2019 06:10:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B5A486C02;
	Thu,  8 Aug 2019 06:10:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B2451BF83A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 06:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1460E20442
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 06:10:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8A27G5F59Ktc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 06:10:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id E1EA020441
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 06:10:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 23:10:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,360,1559545200"; d="scan'208";a="186248110"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga002.jf.intel.com with ESMTP; 07 Aug 2019 23:10:43 -0700
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <81004059-6d91-d8be-c80e-70c52359350d@molgen.mpg.de>
 <2277f25bc44c4aebaac59942de2e24bb@AUSX13MPC105.AMER.DELL.COM>
 <d0aaa0f8-b94c-be65-7a4e-f5592aa65647@intel.com>
 <47977dc7-d53a-427c-bbaa-9c665287cb47@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <ac9ed79f-2789-4dde-6826-9227bd3113ec@intel.com>
Date: Thu, 8 Aug 2019 09:10:43 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <47977dc7-d53a-427c-bbaa-9c665287cb47@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] MDI errors during resume from ACPI S3
 (suspend to ram)
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Mario Limonciello <mario.limonciello@dell.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC83LzIwMTkgMTc6NTUsIFBhdWwgTWVuemVsIHdyb3RlOgo+IAo+IERlYXIgU2FzaGEsCj4g
Cj4gCj4gT24gMDcuMDguMTkgMDk6MjMsIE5lZnRpbiwgU2FzaGEgd3JvdGU6Cj4+IE9uIDgvNi8y
MDE5IDE4OjUzLCBNYXJpby5MaW1vbmNpZWxsb0BkZWxsLmNvbSB3cm90ZToKPj4+PiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdl
bi5tcGcuZGU+Cj4+Pj4gU2VudDogVHVlc2RheSwgQXVndXN0IDYsIDIwMTkgMTA6MzYgQU0KPj4+
PiBUbzogSmVmZiBLaXJzaGVyCj4+Pj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wu
b3JnOyBMaW51eCBLZXJuZWwgTWFpbGluZyBMaXN0OyBMaW1vbmNpZWxsbywgTWFyaW8KPj4+PiBT
dWJqZWN0OiBNREkgZXJyb3JzIGR1cmluZyByZXN1bWUgZnJvbSBBQ1BJIFMzIChzdXNwZW5kIHRv
IHJhbSkKPj4+Pgo+Pj4+IERlYXIgTGludXggZm9sa3MsCj4+Pj4KPj4+Pgo+Pj4+IFRyeWluZyB0
byBkZWNyZWFzZSB0aGUgcmVzdW1lIHRpbWUgb2YgTGludXggNS4zLXJjMyBvbiB0aGUgRGVsbCBP
cHRpUGxleAo+Pj4+IDUwNDAgd2l0aCB0aGUgZGV2aWNlIGJlbG93Cj4+Pj4KPj4+PiAgwqDCoMKg
wqAgJCBsc3BjaSAtbm4gLXMgMDA6MWYuNgo+Pj4+ICDCoMKgwqDCoCAwMDoxZi42IEV0aGVybmV0
IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5ldCBDb25uZWN0aW9u
ICgyKQo+Pj4+IEkyMTktViBbODA4NjoxNWI4XSAocmV2IDMxKQo+Pj4+Cj4+Pj4gcG0tZ3JhcGji
gJlzIHNjcmlwdCBgc2xlZXBncmFwaC5weWAgc2hvd3MsIHRoYXQgdGhlIGRyaXZlciAqZTEwMDBl
KiB0YWtlcwo+Pj4+IGFyb3VuZCA0MDAgbXMsIHdoaWNoIGlzIHF1aXRlIGEgbG90LiBUaGUgY2Fs
bCBncmFwaCB0cmFjZSBzaG93cyB0aGF0Cj4+Pj4gYGUxMDAwZV9yZWFkX3BoeV9yZWdfbWRpYygp
YCBpcyByZXNwb25zaWJsZSBmb3IgYSBsb3Qgb2YgdGhvc2UuIEZyb20KPj4+PiBgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL3BoeS5jYCBbMV06Cj4+Pj4KPj4+PiAgwqDCoMKgwqDC
oMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgKEUxMDAwX0dFTl9QT0xMX1RJTUVPVVQgKiAzKTsgaSsr
KSB7Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVkZWxheSg1MCk7Cj4+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1kaWMgPSBlcjMyKE1ESUMpOwo+
Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAobWRpYyAmIEUxMDAwX01E
SUNfUkVBRFkpCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBicmVhazsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+Pj4gIMKgwqDCoMKgwqDC
oMKgwqAgaWYgKCEobWRpYyAmIEUxMDAwX01ESUNfUkVBRFkpKSB7Cj4+Pj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVfZGJnKCJNREkgUmVhZCBkaWQgbm90IGNvbXBsZXRlXG4i
KTsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FMTAwMF9F
UlJfUEhZOwo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBp
ZiAobWRpYyAmIEUxMDAwX01ESUNfRVJST1IpIHsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZV9kYmcoIk1ESSBFcnJvclxuIik7Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRTEwMDBfRVJSX1BIWTsKPj4+PiAgwqDCoMKgwqDCoMKg
wqDCoCB9Cj4+Pj4KPj4+PiBVbmZvcnR1bmF0ZWx5LCBlcnJvcnMgYXJlIG5vdCBsb2dnZWQgaWYg
ZHluYW1pYyBkZWJ1ZyBpcyBkaXNhYmxlZCwKPj4+PiBzbyByZWJ1aWxkaW5nIHRoZSBMaW51eCBr
ZXJuZWwgd2l0aCBgQ09ORklHX0RZTkFNSUNfREVCVUdgLCBhbmQKPj4+Pgo+Pj4+ICDCoMKgwqDC
oCBlY2hvICJmaWxlIGRyaXZlcnMvbmV0L2V0aGVybmV0LyogK3AiIHwgc3VkbyB0ZWUKPj4+PiAv
c3lzL2tlcm5lbC9kZWJ1Zy9keW5hbWljX2RlYnVnL2NvbnRyb2wKPj4+Pgo+Pj4+IEkgZ290IHRo
ZSBtZXNzYWdlcyBiZWxvdy4KPj4+Pgo+Pj4+ICDCoMKgwqDCoCBbIDQxNTkuMjA0MTkyXSBlMTAw
MGUgMDAwMDowMDoxZi42IG5ldDAwOiBNREkgRXJyb3IKPj4+PiAgwqDCoMKgwqAgWyA0MTYwLjI2
Nzk1MF0gZTEwMDBlIDAwMDA6MDA6MWYuNiBuZXQwMDogTURJIFdyaXRlIGRpZCBub3QgY29tcGxl
dGUKPj4+PiAgwqDCoMKgwqAgWyA0MTYwLjM1OTg1NV0gZTEwMDBlIDAwMDA6MDA6MWYuNiBuZXQw
MDogTURJIEVycm9yCj4+Pj4KPj4+PiBDYW4geW91IHBsZWFzZSBzaGVkIGEgbGl0dGxlIG1vcmUg
bGlnaHQgaW50byB0aGVzZSBlcnJvcnM/IFBsZWFzZQo+Pj4+IGZpbmQgdGhlIGZ1bGwgbG9nIGF0
dGFjaGVkLgo+IAo+Pj4+IFsxXTogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDBlL3BoeS5jI24yMDYKPj4+Cj4+PiBTdHJpY3RseSBhcyBhIHJlZmVyZW5jZSBw
b2ludCB5b3UgbWF5IGNvbnNpZGVyIHRyeWluZyB0aGUgb3V0LW9mLXRyZWUgZHJpdmVyIHRvIHNl
ZSBpZiB0aGVzZQo+Pj4gYmVoYXZpb3JzIHBlcnNpc3QuCj4+Pgo+Pj4gaHR0cHM6Ly9zb3VyY2Vm
b3JnZS5uZXQvcHJvamVjdHMvZTEwMDAvCj4gCj4gSSBjYW4gdHJ5IHRoYXQgaW4gdGhlIG5leHQg
ZGF5cy4KPiAKPj4gV2UgYXJlIHVzaW5nIGV4dGVybmFsIFBIWS4gUmVxdWlyZWQgfjIwMCBtcyB0
byBjb21wbGV0ZSBNRElDCj4+IHRyYW5zYWN0aW9uIChkZXBlbmRlZCBvbiB0aGUgcHJvamVjdCku
Cj4gCj4gQXJlIHlvdSByZWZlcnJpbmcgdG8gdGhlIG91dC1vZi10cmVlIGRyaXZlcj8KPiAKSSBi
ZWxpZXZlIHRoZSBvdXQgb2YgdHJlZSBkcml2ZXIgaGF2ZSBhIHNhbWUgYXBwcm9hY2ggdG8gTURJ
QyBhY2Nlc3MuCj4+IFlvdSBuZWVkIHRvIHRha2UgdG8gY29uc2lkZXIgdGhpcyB0aW1lIGJlZm9y
ZSBhY2Nlc3MgdG8gdGhlIFBIWS4gSSBkbwo+PiBub3QgcmVjb21tZW5kIGRlY3JlYXNlIHRpbWVy
IGluIGEgJ2UxMDAwZV9yZWFkX3BoeV9yZWdfbWRpYygpJwo+PiBtZXRob2QuIFdlIGNvdWxkIGhp
dCBvbiB3cm9uZyBNREkgYWNjZXNzLgo+IE15IHBvaW50IHdhcyBtb3JlLCBpZiB5b3Uga25vdyB0
aGF0IG1vcmUgdGltZSBpcyBuZWVkZWQsIGJlZm9yZSB0aGUgTURJCj4gc2V0dGluZyg/KSB3aWxs
IHN1Y2NlZWQsIHdoeSB0cnkgaXQgYW55d2F5IGFuZCBnbyBpbnRvIHRoZSBlcnJvciBwYXRocz8K
PiBJc27igJl0IHRoZXJlIHNvbWUgcG9sbGluZyBwb3NzaWJsZSB0byBmaW5kIG91dCwgd2hlbiBN
REkgY2FuIGJlIHNldCB1cD8KPiAKZTEwMDBlIGlzIHZlcnkgb2xkIGRyaXZlciBhbmQgc2VydmUg
cHJldHR5IGxvdCBvZiAxRyBjbGllbnRzLiBFYWNoIDFHYmUgCk1BQy9QSFkgY29udHJvbGxlciBo
YXZlIGEgZGlmZmVyZW50IGNvbmZpZ3VyYXRpb24gZGVwZW5kIHBsYXRmb3JtLgo+IAo+IEtpbmQg
cmVnYXJkcywKPiAKPiBQYXVsCj4gCkhlbGxvIFBhdWwsCkxldCBtZSBiYWNrIGxhdGVyIHdpdGgg
bW9yZSBpbmZvcm1hdGlvbiBzcGVjaWZpYyB5b3VyIGRldmljZS4gSSB3aWxsIHRyeSAKZmluZCBv
dXQgbW9yZSBkZXRhaWxzIHdpdGggZGVzaWduIHRlYW0uCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
