Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F81845A6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2019 09:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D3043860CE;
	Wed,  7 Aug 2019 07:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8huWCL08FB6q; Wed,  7 Aug 2019 07:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DCAC860DB;
	Wed,  7 Aug 2019 07:24:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EBC5F1BF568
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 07:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DEEF2816DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 07:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DLKuI-kA1npF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2019 07:24:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 85715816D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 07:24:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 00:24:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,356,1559545200"; d="scan'208";a="373677960"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga005.fm.intel.com with ESMTP; 07 Aug 2019 00:23:59 -0700
To: Mario.Limonciello@dell.com, pmenzel@molgen.mpg.de,
 jeffrey.t.kirsher@intel.com
References: <81004059-6d91-d8be-c80e-70c52359350d@molgen.mpg.de>
 <2277f25bc44c4aebaac59942de2e24bb@AUSX13MPC105.AMER.DELL.COM>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <d0aaa0f8-b94c-be65-7a4e-f5592aa65647@intel.com>
Date: Wed, 7 Aug 2019 10:23:59 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <2277f25bc44c4aebaac59942de2e24bb@AUSX13MPC105.AMER.DELL.COM>
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC82LzIwMTkgMTg6NTMsIE1hcmlvLkxpbW9uY2llbGxvQGRlbGwuY29tIHdyb3RlOgo+PiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBt
b2xnZW4ubXBnLmRlPgo+PiBTZW50OiBUdWVzZGF5LCBBdWd1c3QgNiwgMjAxOSAxMDozNiBBTQo+
PiBUbzogSmVmZiBLaXJzaGVyCj4+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
ZzsgTGludXggS2VybmVsIE1haWxpbmcgTGlzdDsgTGltb25jaWVsbG8sIE1hcmlvCj4+IFN1Ympl
Y3Q6IE1ESSBlcnJvcnMgZHVyaW5nIHJlc3VtZSBmcm9tIEFDUEkgUzMgKHN1c3BlbmQgdG8gcmFt
KQo+Pgo+PiBEZWFyIExpbnV4IGZvbGtzLAo+Pgo+Pgo+PiBUcnlpbmcgdG8gZGVjcmVhc2UgdGhl
IHJlc3VtZSB0aW1lIG9mIExpbnV4IDUuMy1yYzMgb24gdGhlIERlbGwgT3B0aVBsZXgKPj4gNTA0
MCB3aXRoIHRoZSBkZXZpY2UgYmVsb3cKPj4KPj4gICAgICAkIGxzcGNpIC1ubiAtcyAwMDoxZi42
Cj4+ICAgICAgMDA6MWYuNiBFdGhlcm5ldCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9y
YXRpb24gRXRoZXJuZXQgQ29ubmVjdGlvbiAoMikKPj4gSTIxOS1WIFs4MDg2OjE1YjhdIChyZXYg
MzEpCj4+Cj4+IHBtLWdyYXBo4oCZcyBzY3JpcHQgYHNsZWVwZ3JhcGgucHlgIHNob3dzLCB0aGF0
IHRoZSBkcml2ZXIgKmUxMDAwZSogdGFrZXMKPj4gYXJvdW5kIDQwMCBtcywgd2hpY2ggaXMgcXVp
dGUgYSBsb3QuIFRoZSBjYWxsIGdyYXBoIHRyYWNlIHNob3dzIHRoYXQKPj4gYGUxMDAwZV9yZWFk
X3BoeV9yZWdfbWRpYygpYCBpcyByZXNwb25zaWJsZSBmb3IgYSBsb3Qgb2YgdGhvc2UuIEZyb20K
Pj4gYGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9waHkuY2AgWzFdOgo+Pgo+PiAg
ICAgICAgICBmb3IgKGkgPSAwOyBpIDwgKEUxMDAwX0dFTl9QT0xMX1RJTUVPVVQgKiAzKTsgaSsr
KSB7Cj4+ICAgICAgICAgICAgICAgICAgdWRlbGF5KDUwKTsKPj4gICAgICAgICAgICAgICAgICBt
ZGljID0gZXIzMihNRElDKTsKPj4gICAgICAgICAgICAgICAgICBpZiAobWRpYyAmIEUxMDAwX01E
SUNfUkVBRFkpCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPj4gICAgICAgICAg
fQo+PiAgICAgICAgICBpZiAoIShtZGljICYgRTEwMDBfTURJQ19SRUFEWSkpIHsKPj4gICAgICAg
ICAgICAgICAgICBlX2RiZygiTURJIFJlYWQgZGlkIG5vdCBjb21wbGV0ZVxuIik7Cj4+ICAgICAg
ICAgICAgICAgICAgcmV0dXJuIC1FMTAwMF9FUlJfUEhZOwo+PiAgICAgICAgICB9Cj4+ICAgICAg
ICAgIGlmIChtZGljICYgRTEwMDBfTURJQ19FUlJPUikgewo+PiAgICAgICAgICAgICAgICAgIGVf
ZGJnKCJNREkgRXJyb3JcbiIpOwo+PiAgICAgICAgICAgICAgICAgIHJldHVybiAtRTEwMDBfRVJS
X1BIWTsKPj4gICAgICAgICAgfQo+Pgo+PiBVbmZvcnR1bmF0ZWx5LCBlcnJvcnMgYXJlIG5vdCBs
b2dnZWQgaWYgZHluYW1pYyBkZWJ1ZyBpcyBkaXNhYmxlZCwKPj4gc28gcmVidWlsZGluZyB0aGUg
TGludXgga2VybmVsIHdpdGggYENPTkZJR19EWU5BTUlDX0RFQlVHYCwgYW5kCj4+Cj4+ICAgICAg
ZWNobyAiZmlsZSBkcml2ZXJzL25ldC9ldGhlcm5ldC8qICtwIiB8IHN1ZG8gdGVlCj4+IC9zeXMv
a2VybmVsL2RlYnVnL2R5bmFtaWNfZGVidWcvY29udHJvbAo+Pgo+PiBJIGdvdCB0aGUgbWVzc2Fn
ZXMgYmVsb3cuCj4+Cj4+ICAgICAgWyA0MTU5LjIwNDE5Ml0gZTEwMDBlIDAwMDA6MDA6MWYuNiBu
ZXQwMDogTURJIEVycm9yCj4+ICAgICAgWyA0MTYwLjI2Nzk1MF0gZTEwMDBlIDAwMDA6MDA6MWYu
NiBuZXQwMDogTURJIFdyaXRlIGRpZCBub3QgY29tcGxldGUKPj4gICAgICBbIDQxNjAuMzU5ODU1
XSBlMTAwMGUgMDAwMDowMDoxZi42IG5ldDAwOiBNREkgRXJyb3IKPj4KPj4gQ2FuIHlvdSBwbGVh
c2Ugc2hlZCBhIGxpdHRsZSBtb3JlIGxpZ2h0IGludG8gdGhlc2UgZXJyb3JzPyBQbGVhc2UKPj4g
ZmluZCB0aGUgZnVsbCBsb2cgYXR0YWNoZWQuCj4+Cj4+Cj4+IEtpbmQgcmVnYXJkcywKPj4KPj4g
UGF1bAo+Pgo+Pgo+PiBbMV06Cj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvbgo+PiBldC9ldGhl
cm5ldC9pbnRlbC9lMTAwMGUvcGh5LmMjbjIwNgo+IAo+IFN0cmljdGx5IGFzIGEgcmVmZXJlbmNl
IHBvaW50IHlvdSBtYXkgY29uc2lkZXIgdHJ5aW5nIHRoZSBvdXQtb2YtdHJlZSBkcml2ZXIgdG8g
c2VlIGlmIHRoZXNlCj4gYmVoYXZpb3JzIHBlcnNpc3QuCj4gCj4gaHR0cHM6Ly9zb3VyY2Vmb3Jn
ZS5uZXQvcHJvamVjdHMvZTEwMDAvCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4KPiAKV2UgYXJlIHVzaW5nIGV4dGVybmFsIFBIWS4gUmVx
dWlyZWQgfjIwMCBtcyB0byBjb21wbGV0ZSBNRElDIHRyYW5zYWN0aW9uIAooZGVwZW5kZWQgb24g
dGhlIHByb2plY3QpLiBZb3UgbmVlZCB0byB0YWtlIHRvIGNvbnNpZGVyIHRoaXMgdGltZSBiZWZv
cmUgCmFjY2VzcyB0byB0aGUgUEhZLiBJIGRvIG5vdCByZWNvbW1lbmQgZGVjcmVhc2UgdGltZXIg
aW4gYSAKJ2UxMDAwZV9yZWFkX3BoeV9yZWdfbWRpYygpJyBtZXRob2QuIFdlIGNvdWxkIGhpdCBv
biB3cm9uZyBNREkgYWNjZXNzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
