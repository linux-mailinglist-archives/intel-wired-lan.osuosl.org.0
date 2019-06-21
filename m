Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BA54DED8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 03:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EABA286DCA;
	Fri, 21 Jun 2019 01:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F36hPoWqDyCV; Fri, 21 Jun 2019 01:55:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E927786CE7;
	Fri, 21 Jun 2019 01:55:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5400B1BF404
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 01:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3EF5520437
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 01:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ODz7MQSu4QYn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2019 01:55:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id E6142203E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2019 01:55:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 18:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="162543000"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga007.fm.intel.com with ESMTP; 20 Jun 2019 18:55:08 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.135]) by
 ORSMSX110.amr.corp.intel.com ([169.254.10.97]) with mapi id 14.03.0439.000;
 Thu, 20 Jun 2019 18:55:06 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH] e1000e: Increase pause and refresh time
Thread-Index: AQHVJ9RZufREe8axREiTS0ssk2KFhw==
Date: Fri, 21 Jun 2019 01:55:06 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970B1294@ORSMSX103.amr.corp.intel.com>
References: <d185164e-d09f-39ab-74f0-0c483ab52e67@molgen.mpg.de>
In-Reply-To: <d185164e-d09f-39ab-74f0-0c483ab52e67@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Increase pause and refresh
 time
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
Cc: Arjan van de Ven <arjan@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Miguel Bernal Marin <miguel.bernal.marin@linux.intel.com>,
 Tim Pepper <timothy.c.pepper@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyMDE5LTA1LTE3IGF0IDE3OjAxICswMjAwLCBQYXVsIE1lbnplbCB3cm90ZToKPiBG
cm9tOiBNaWd1ZWwgQmVybmFsIE1hcmluIDxtaWd1ZWwuYmVybmFsLm1hcmluQGxpbnV4LmludGVs
LmNvbT4KPiBEYXRlOiBNb24sIDI3IE1hciAyMDE3IDE2OjAxOjU2IC0wNjAwCj4gCj4gU3VnZ2Vz
dGVkLWJ5OiBUaW0gUGVwcGVyIDx0aW1vdGh5LmMucGVwcGVyQGxpbnV4LmludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBNaWd1ZWwgQmVybmFsIE1hcmluIDxtaWd1ZWwuYmVybmFsLm1hcmluQGxp
bnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xn
ZW4ubXBnLmRlPgo+IC0tLQo+IE1pZ3VlbCwgaXTigJlkIGJlIGdyZWF0LCBpZiB5b3UgY291bGQg
d3JpdGUgYSBjb21taXQgbWVzc2FnZSBzdGF0aW5nIHRoZSAKPiBtb3RpdmF0aW9uIGZvciB0aGF0
IGNoYW5nZSwgdGhhdCBtZWFucywgd2h5IGlzIGl0IHByZWZlcmFibGUgdG8gaW5jcmVhc2UgCj4g
dGhlc2UgdmFsdWVzLCBhbmQgc2V0IHRoZSBwYXVzZSB0aW1lIHVuY29uZGl0aW9uYWxseS4KPiAK
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyB8IDQgKystLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKClll
cywgYSBjb21taXQgbWVzc2FnZSBleHBsYWluaW5nIHJhbWlmaWF0aW9ucyBvZiB0aGUgY2hhbmdl
IHdvdWxkIGJlIGdyZWF0LiBCdXQgZnJvbSBhIGZ1bmN0aW9uYWwgcGVyc3BlY3RpdmUgYWNyb3Nz
IG15IHJlZ3Jlc3Npb24gc3lzdGVtczoKVGVzdGVkLWJ5OiBBYXJvbiBCcm93biA8YWFyb24uZi5i
cm93bkBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
