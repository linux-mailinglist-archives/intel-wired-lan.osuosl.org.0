Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A092A5295D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2019 12:25:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CF0F85A4B;
	Tue, 25 Jun 2019 10:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxHHogsNVyTR; Tue, 25 Jun 2019 10:25:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C436581ABE;
	Tue, 25 Jun 2019 10:25:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB4021BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 10:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E7A9785EC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 10:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwQUNPpo1ymC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2019 10:25:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4434185DA5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 10:25:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 03:25:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="245028430"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga001.jf.intel.com with ESMTP; 25 Jun 2019 03:25:00 -0700
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <074E1145-A512-4835-9A6D-8FB6634DBD3C@canonical.com>
 <E2D5225B-D683-4895-AC4F-EE01C339262B@canonical.com>
 <95f88f45-fd6c-52e4-de8c-2db1b4c6c04e@intel.com>
 <E8C45269-819C-41E0-A3D3-AA98710DBA4C@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <dfd57ef4-08bd-53cf-1f0a-86edc5bc0a67@intel.com>
Date: Tue, 25 Jun 2019 13:25:00 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <E8C45269-819C-41E0-A3D3-AA98710DBA4C@canonical.com>
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Anthony Wong <anthony.wong@canonical.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8yNC8yMDE5IDE4OjA2LCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+IGF0IDE5OjU2LCBOZWZ0
aW4sIFNhc2hhIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPiB3cm90ZToKPiAKPj4gT24gNi8yNC8y
MDE5IDEwOjAzLCBLYWktSGVuZyBGZW5nIHdyb3RlOgo+Pj4gSGkgSmVmZnJleSwKPj4+IGF0IDE5
OjA4LCBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlOgo+
Pj4+IEhpIEplZmZyZXksCj4+Pj4KPj4+PiBUaGVyZSBhcmUgc2V2ZXJhbCBwbGF0Zm9ybXMgdGhh
dCB1c2VzIGUxMDAwZSBjYW7igJl0IGVudGVyIAo+Pj4+IE9wcG9ydHVuaXN0aWMgUzBpeCAoUEMx
MCkgd2hlbiB0aGUgZXRoZXJuZXQgaGFzIGEgbGluayBwYXJ0bmVyLgo+Pj4+Cj4+Pj4gVGhpcyBi
ZWhhdmlvciBhbHNvIGV4aXRzIGluIG91dC1vZi10cmVlIGUxMDAwZSBkcml2ZXIgMy40LjIuMSwg
YnV0IAo+Pj4+IHNlZW1zIGxpa2UgMy40LjIuMyBmaXhlcyB0aGUgaXNzdWUuCj4+Pj4KPj4+PiBB
IHF1aWNrIGRpZmYgYmV0d2VlbiB0aGUgdHdvIHZlcnNpb25zIHNob3dzIHRoYXQgdGhpcyBjb2Rl
IHNlY3Rpb24gCj4+Pj4gbWF5IGJlIG91ciBzb2x1dGlvbjoKPj4+Pgo+Pj4+IMKgwqDCoMKgwqDC
oMKgIC8qIFJlYWQgZnJvbSBFWFRDTkZfQ1RSTCBpbiBlMTAwMF9hY3F1aXJlX3N3ZmxhZ19pY2g4
bGFuIAo+Pj4+IGZ1bmN0aW9uCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCAqIG1heSBvY2N1ciBkdXJp
bmcgZ2xvYmFsIHJlc2V0IGFuZCBjYXVzZSBzeXN0ZW0gaGFuZy4KPj4+PiDCoMKgwqDCoMKgwqDC
oMKgICogQ29uZmlndXJhdGlvbiBzcGFjZSBhY2Nlc3MgY3JlYXRlcyB0aGUgbmVlZGVkIGRlbGF5
Lgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgKiBXcml0ZSB0byBFMTAwMF9TVFJBUCBSTyByZWdpc3Rl
ciAKPj4+PiBFMTAwMF9QQ0lfVkVORE9SX0lEX1JFR0lTVEVSIHZhbHVlCj4+Pj4gwqDCoMKgwqDC
oMKgwqDCoCAqIGluc3VyZXMgY29uZmlndXJhdGlvbiBzcGFjZSByZWFkIGlzIGRvbmUgYmVmb3Jl
IGdsb2JhbCAKPj4+PiByZXNldC4KPj4+PiDCoMKgwqDCoMKgwqDCoMKgICovCj4+Pj4gwqDCoMKg
wqDCoMKgwqAgcGNpX3JlYWRfY29uZmlnX3dvcmQoaHctPmFkYXB0ZXItPnBkZXYsIAo+Pj4+IEUx
MDAwX1BDSV9WRU5ET1JfSURfUkVHSVNURVIsCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnBjaV9jZmcpOwo+Pj4+IMKgwqDCoMKg
wqDCoMKgIGV3MzIoU1RSQVAsIHBjaV9jZmcpOwo+Pj4+IMKgwqDCoMKgwqDCoMKgIGVfZGJnKCJJ
c3N1aW5nIGEgZ2xvYmFsIHJlc2V0IHRvIGljaDhsYW5cbiIpOwo+Pj4+IMKgwqDCoMKgwqDCoMKg
IGV3MzIoQ1RSTCwgKGN0cmwgfCBFMTAwMF9DVFJMX1JTVCkpOwo+Pj4+IMKgwqDCoMKgwqDCoMKg
IC8qIGNhbm5vdCBpc3N1ZSBhIGZsdXNoIGhlcmUgYmVjYXVzZSBpdCBoYW5ncyB0aGUgaGFyZHdh
cmUgKi8KPj4+PiDCoMKgwqDCoMKgwqDCoCBtc2xlZXAoMjApOwo+Pj4+Cj4+Pj4gwqDCoMKgwqDC
oMKgwqAgLyogQ29uZmlndXJhdGlvbiBzcGFjZSBhY2Nlc3MgaW1wcm92ZSBIVyBsZXZlbCB0aW1l
IHN5bmMgCj4+Pj4gbWVjaGFuaXNtLgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgKiBXcml0ZSB0byBF
MTAwMF9TVFJBUCBSTyByZWdpc3RlciAKPj4+PiBFMTAwMF9QQ0lfVkVORE9SX0lEX1JFR0lTVEVS
Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCAqIHZhbHVlIHRvIGluc3VyZSBjb25maWd1cmF0aW9uIHNw
YWNlIHJlYWQgaXMgZG9uZQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgKiBiZWZvcmUgYW55IGFjY2Vz
cyB0byBtYWMgcmVnaXN0ZXIuCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4+IMKgwqDCoMKg
wqDCoMKgIHBjaV9yZWFkX2NvbmZpZ193b3JkKGh3LT5hZGFwdGVyLT5wZGV2LCAKPj4+PiBFMTAw
MF9QQ0lfVkVORE9SX0lEX1JFR0lTVEVSLAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZwY2lfY2ZnKTsKPj4+PiDCoMKgwqDCoMKg
wqDCoCBldzMyKFNUUkFQLCBwY2lfY2ZnKTsKPj4+IFR1cm5zIG91dCB0aGUgImV4dHJhIHNhdWNl
4oCdIGlzIG5vdCB0aGlzIHBhcnQsIGl04oCZcyBjYWxsZWQg4oCcRHluYW1pYyAKPj4+IExUUiBz
dXBwb3J04oCdLgo+Pj4gPj4KPj4+PiBJcyB0aGVyZSBhbnkgcGxhbiB0byBzdXBwb3J0IHRoaXMg
aW4gdGhlIHVwc3RyZWFtIGtlcm5lbD8KPj4+IElzIHRoZXJlIGFueSBwbGFuIHRvIHN1cHBvcnQg
RHluYW1pYyBMVFIgaW4gdXBzdHJlYW0gZTEwMDBlPwo+PiBEeW5hbWljIExUUiBpcyBub3Qgc3Rh
YmxlIHNvbHV0aW9uLiBTbywgd2UgY2FuIG5vdCBwdXQgdGhpcyBzb2x1dGlvbiAKPj4gdG8gdXBz
dHJlYW0uIEkgaG9wZSB3ZSB3aWxsIGJlIGFibGUgdG8gZml4IHRoaXMgaW4gSFcgZm9yIGEgZnV0
dXJlIAo+PiBwcm9qZWN0cy4KPiAKPiBEb2VzIHRoaXMgbWVhbiBjdXJyZW50IGdlbmVyYXRpb24g
aGFyZHdhcmUgd29u4oCZdCBnZXQgdGhlIGZpeD8KQ3VycmVudCBIVyBoYXZlIGEgbGltaXRhdGlv
bi4gUGxlYXNlLCB0cnkgZm9sbG93IHdvcmthcm91bmQgb24geW91ciAKcGxhdGZvcm06IGVjaG8g
MyA+IC9zeXMva2VybmVsL2RlYnVnL3BtY19jb3JlL2x0cl9pZ25vcmUKPiA+PiBTMGl4IHN1cHBv
cnQgaXMgdW5kZXIgZGlzY3Vzc2lvbiB3aXRoIG91ciBhcmNoaXRlY3R1cmUuIFdlIHdpbGwgdHJ5
Cj4+IGVuYWJsZSBTMGl4IGluIG91ciBlMTAwMGUgT09UIGRyaXZlciBhcyBmaXJzdCBzdGVwLgo+
IAo+IElzIGl0IHBvc3NpYmxlIHRvIGFkZCBEeW5hbWljIExUUiBhcyBhbiBvcHRpb24gc28gdXNl
cnMgYW5kIGRvd25zdHJlYW0gCj4gZGlzdHJvcyBjYW4gc3RpbGwgYmVuZWZpdCBmcm9tIGl0PwpB
cyBJIHNhaWQgYmVmb3JlLCB0aGlzIGlzIG5vdCBhIHN0YWJsZSBzb2x1dGlvbi4gTm8gZ3VhcmFu
dGVlIHRoYXQgSFcgCndpbGwgd29yayBhcyBwcm9wZXJseS4KPiAKPiBLYWktSGVuZwo+IAo+Pj4g
S2FpLUhlbmcKPj4+PiBLYWktSGVuZwo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPj4+IElu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4+PiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4KPj4KPj4gVGhhbmtzCj4+IFNhc2hhCj4gCj4g
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
