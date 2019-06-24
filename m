Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFB950A41
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 13:57:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB1D185797;
	Mon, 24 Jun 2019 11:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LgMJV9Ig-ZlL; Mon, 24 Jun 2019 11:57:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 690B785785;
	Mon, 24 Jun 2019 11:57:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEB511BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 11:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A967D84EB9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 11:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lk5KZlSRmeYo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 11:57:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D841484BF1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 11:57:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 04:57:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,412,1557212400"; d="scan'208";a="161598821"
Received: from eyasman-mobl.ger.corp.intel.com (HELO [10.249.90.21])
 ([10.249.90.21])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jun 2019 04:56:59 -0700
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, jeffrey.t.kirsher@intel.com
References: <074E1145-A512-4835-9A6D-8FB6634DBD3C@canonical.com>
 <E2D5225B-D683-4895-AC4F-EE01C339262B@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <95f88f45-fd6c-52e4-de8c-2db1b4c6c04e@intel.com>
Date: Mon, 24 Jun 2019 14:56:58 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <E2D5225B-D683-4895-AC4F-EE01C339262B@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Opportunistic S0ix blocked by e1000e when
 ethernet is in use
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
Cc: intel-wired-lan@lists.osuosl.org, Anthony Wong <anthony.wong@canonical.com>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8yNC8yMDE5IDEwOjAzLCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+IEhpIEplZmZyZXksCj4g
Cj4gYXQgMTk6MDgsIEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4g
d3JvdGU6Cj4gCj4+IEhpIEplZmZyZXksCj4+Cj4+IFRoZXJlIGFyZSBzZXZlcmFsIHBsYXRmb3Jt
cyB0aGF0IHVzZXMgZTEwMDBlIGNhbuKAmXQgZW50ZXIgT3Bwb3J0dW5pc3RpYyAKPj4gUzBpeCAo
UEMxMCkgd2hlbiB0aGUgZXRoZXJuZXQgaGFzIGEgbGluayBwYXJ0bmVyLgo+Pgo+PiBUaGlzIGJl
aGF2aW9yIGFsc28gZXhpdHMgaW4gb3V0LW9mLXRyZWUgZTEwMDBlIGRyaXZlciAzLjQuMi4xLCBi
dXQgCj4+IHNlZW1zIGxpa2UgMy40LjIuMyBmaXhlcyB0aGUgaXNzdWUuCj4+Cj4+IEEgcXVpY2sg
ZGlmZiBiZXR3ZWVuIHRoZSB0d28gdmVyc2lvbnMgc2hvd3MgdGhhdCB0aGlzIGNvZGUgc2VjdGlv
biBtYXkgCj4+IGJlIG91ciBzb2x1dGlvbjoKPj4KPj4gwqDCoMKgwqDCoMKgwqAgLyogUmVhZCBm
cm9tIEVYVENORl9DVFJMIGluIGUxMDAwX2FjcXVpcmVfc3dmbGFnX2ljaDhsYW4gZnVuY3Rpb24K
Pj4gwqDCoMKgwqDCoMKgwqDCoCAqIG1heSBvY2N1ciBkdXJpbmcgZ2xvYmFsIHJlc2V0IGFuZCBj
YXVzZSBzeXN0ZW0gaGFuZy4KPj4gwqDCoMKgwqDCoMKgwqDCoCAqIENvbmZpZ3VyYXRpb24gc3Bh
Y2UgYWNjZXNzIGNyZWF0ZXMgdGhlIG5lZWRlZCBkZWxheS4KPj4gwqDCoMKgwqDCoMKgwqDCoCAq
IFdyaXRlIHRvIEUxMDAwX1NUUkFQIFJPIHJlZ2lzdGVyIAo+PiBFMTAwMF9QQ0lfVkVORE9SX0lE
X1JFR0lTVEVSIHZhbHVlCj4+IMKgwqDCoMKgwqDCoMKgwqAgKiBpbnN1cmVzIGNvbmZpZ3VyYXRp
b24gc3BhY2UgcmVhZCBpcyBkb25lIGJlZm9yZSBnbG9iYWwgcmVzZXQuCj4+IMKgwqDCoMKgwqDC
oMKgwqAgKi8KPj4gwqDCoMKgwqDCoMKgwqAgcGNpX3JlYWRfY29uZmlnX3dvcmQoaHctPmFkYXB0
ZXItPnBkZXYsIAo+PiBFMTAwMF9QQ0lfVkVORE9SX0lEX1JFR0lTVEVSLAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmcGNpX2NmZyk7
Cj4+IMKgwqDCoMKgwqDCoMKgIGV3MzIoU1RSQVAsIHBjaV9jZmcpOwo+PiDCoMKgwqDCoMKgwqDC
oCBlX2RiZygiSXNzdWluZyBhIGdsb2JhbCByZXNldCB0byBpY2g4bGFuXG4iKTsKPj4gwqDCoMKg
wqDCoMKgwqAgZXczMihDVFJMLCAoY3RybCB8IEUxMDAwX0NUUkxfUlNUKSk7Cj4+IMKgwqDCoMKg
wqDCoMKgIC8qIGNhbm5vdCBpc3N1ZSBhIGZsdXNoIGhlcmUgYmVjYXVzZSBpdCBoYW5ncyB0aGUg
aGFyZHdhcmUgKi8KPj4gwqDCoMKgwqDCoMKgwqAgbXNsZWVwKDIwKTsKPj4KPj4gwqDCoMKgwqDC
oMKgwqAgLyogQ29uZmlndXJhdGlvbiBzcGFjZSBhY2Nlc3MgaW1wcm92ZSBIVyBsZXZlbCB0aW1l
IHN5bmMgCj4+IG1lY2hhbmlzbS4KPj4gwqDCoMKgwqDCoMKgwqDCoCAqIFdyaXRlIHRvIEUxMDAw
X1NUUkFQIFJPIHJlZ2lzdGVyIEUxMDAwX1BDSV9WRU5ET1JfSURfUkVHSVNURVIKPj4gwqDCoMKg
wqDCoMKgwqDCoCAqIHZhbHVlIHRvIGluc3VyZSBjb25maWd1cmF0aW9uIHNwYWNlIHJlYWQgaXMg
ZG9uZQo+PiDCoMKgwqDCoMKgwqDCoMKgICogYmVmb3JlIGFueSBhY2Nlc3MgdG8gbWFjIHJlZ2lz
dGVyLgo+PiDCoMKgwqDCoMKgwqDCoMKgICovCj4+IMKgwqDCoMKgwqDCoMKgIHBjaV9yZWFkX2Nv
bmZpZ193b3JkKGh3LT5hZGFwdGVyLT5wZGV2LCAKPj4gRTEwMDBfUENJX1ZFTkRPUl9JRF9SRUdJ
U1RFUiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgJnBjaV9jZmcpOwo+PiDCoMKgwqDCoMKgwqDCoCBldzMyKFNUUkFQLCBwY2lfY2Zn
KTsKPiAKPiBUdXJucyBvdXQgdGhlICJleHRyYSBzYXVjZeKAnSBpcyBub3QgdGhpcyBwYXJ0LCBp
dOKAmXMgY2FsbGVkIOKAnER5bmFtaWMgTFRSIAo+IHN1cHBvcnTigJ0uCj4gPj4KPj4gSXMgdGhl
cmUgYW55IHBsYW4gdG8gc3VwcG9ydCB0aGlzIGluIHRoZSB1cHN0cmVhbSBrZXJuZWw/Cj4gCj4g
SXMgdGhlcmUgYW55IHBsYW4gdG8gc3VwcG9ydCBEeW5hbWljIExUUiBpbiB1cHN0cmVhbSBlMTAw
MGU/Cj4gCkR5bmFtaWMgTFRSIGlzIG5vdCBzdGFibGUgc29sdXRpb24uIFNvLCB3ZSBjYW4gbm90
IHB1dCB0aGlzIHNvbHV0aW9uIHRvIAp1cHN0cmVhbS4gSSBob3BlIHdlIHdpbGwgYmUgYWJsZSB0
byBmaXggdGhpcyBpbiBIVyBmb3IgYSBmdXR1cmUgcHJvamVjdHMuClMwaXggc3VwcG9ydCBpcyB1
bmRlciBkaXNjdXNzaW9uIHdpdGggb3VyIGFyY2hpdGVjdHVyZS4gV2Ugd2lsbCB0cnkgCmVuYWJs
ZSBTMGl4IGluIG91ciBlMTAwMGUgT09UIGRyaXZlciBhcyBmaXJzdCBzdGVwLgo+IEthaS1IZW5n
Cj4gCj4+Cj4+IEthaS1IZW5nCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4KClRoYW5rcwpTYXNoYQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
