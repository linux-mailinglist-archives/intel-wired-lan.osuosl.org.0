Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E111F5B54
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2020 20:37:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9CF1521513;
	Wed, 10 Jun 2020 18:37:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1kc2fOFubySk; Wed, 10 Jun 2020 18:37:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 22052228B0;
	Wed, 10 Jun 2020 18:37:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6FD01BF313
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 18:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E1884871CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 18:37:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r4ZgPVadFI6u for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 18:37:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BDA3F8712E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 18:37:15 +0000 (UTC)
IronPort-SDR: hDq64B0f81tG8glLDiPaBQJxsotAF5owKpjwl36Fjrv1OEcHiaQ5jvamro0X0CbzNiLeEjXssq
 oLfq2v6BlX6A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 11:37:14 -0700
IronPort-SDR: xIkDrU1RKFF70aWCEVf/7nTD4UR3Z0Ygi9kRChonnuvuyFo7q8h0aBmNKntNpV+0kbSkHPIJOq
 Ra4Butn71pJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="260481711"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jun 2020 11:37:14 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Jun 2020 11:37:09 -0700
Message-Id: <20200610183709.2554874-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Firmware v2] ice: Add comms package file for
 Intel E800 series driver
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogVG9ueSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPgoKVGhlIGljZSBk
cml2ZXIgY2FuLCBvcHRpb25hbGx5LCBsb2FkIGRpZmZlcmVudCBwYWNrYWdlIGZpbGVzLiBQcm92
aWRlIHRoZQoiY29tbXMiIHBhY2thZ2UgYXMgYW5vdGhlciBvcHRpb24uCgpTaWduZWQtb2ZmLWJ5
OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Ci0tLQp2MjogUmVtb3Zl
ZCBleGVjdXRhYmxlIHBlcm1pc3Npb25zIG9uIHBhY2thZ2UKCiBMSUNFTlNFLmljZV9lbmhhbmNl
ZCAgICAgICAgICAgICAgICAgICAgICAgfCAzNDAgKysrKysrKysrKysrKysrKysrKysrCiBXSEVO
Q0UgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDQgKwogaW50ZWwvaWNl
L2RkcC1jb21tcy9pY2VfY29tbXMtMS4zLjE2LjAucGtnIHwgICAwCiAzIGZpbGVzIGNoYW5nZWQs
IDM0NCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgTElDRU5TRS5pY2VfZW5oYW5j
ZWQKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbnRlbC9pY2UvZGRwLWNvbW1zL2ljZV9jb21tcy0xLjMu
MTYuMC5wa2cKCmRpZmYgLS1naXQgYS9MSUNFTlNFLmljZV9lbmhhbmNlZCBiL0xJQ0VOU0UuaWNl
X2VuaGFuY2VkCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uN2U2YjM1
ZmZmOWIwCi0tLSAvZGV2L251bGwKKysrIGIvTElDRU5TRS5pY2VfZW5oYW5jZWQKQEAgLTAsMCAr
MSwzNDAgQEAKK1NPRlRXQVJFIExJQ0VOU0UgQUdSRUVNRU5UCisKK0RPIE5PVCBET1dOTE9BRCwg
SU5TVEFMTCwgQUNDRVNTLCBDT1BZLCBPUiBVU0UgQU5ZIFBPUlRJT04gT0YgVEhFIFNPRlRXQVJF
IFVOVElMCitZT1UgSEFWRSBSRUFEIEFORCBBQ0NFUFRFRCBUSEUgVEVSTVMgQU5EIENPTkRJVElP
TlMgT0YgVEhJUyBBR1JFRU1FTlQuIEJZCitJTlNUQUxMSU5HLCBDT1BZSU5HLCBBQ0NFU1NJTkcs
IE9SIFVTSU5HIFRIRSBTT0ZUV0FSRSwgWU9VIEFHUkVFIFRPIEJFIExFR0FMTFkKK0JPVU5EIEJZ
IFRIRSBURVJNUyBBTkQgQ09ORElUSU9OUyBPRiBUSElTIEFHUkVFTUVOVC4gSWYgWW91IGRvIG5v
dCBhZ3JlZSB0byBiZQorYm91bmQgYnksIG9yIHRoZSBlbnRpdHkgZm9yIHdob3NlIGJlbmVmaXQg
WW91IGFjdCBoYXMgbm90IGF1dGhvcml6ZWQgWW91IHRvCithY2NlcHQsIHRoZXNlIHRlcm1zIGFu
ZCBjb25kaXRpb25zLCBkbyBub3QgaW5zdGFsbCwgYWNjZXNzLCBjb3B5LCBvciB1c2UgdGhlCitT
b2Z0d2FyZSBhbmQgZGVzdHJveSBhbGwgY29waWVzIG9mIHRoZSBTb2Z0d2FyZSBpbiBZb3VyIHBv
c3Nlc3Npb24uCisKK1RoaXMgU09GVFdBUkUgTElDRU5TRSBBR1JFRU1FTlQgKHRoaXMgIkFncmVl
bWVudCIpIGlzIGVudGVyZWQgaW50byBiZXR3ZWVuIEludGVsCitDb3Jwb3JhdGlvbiwgYSBEZWxh
d2FyZSBjb3Jwb3JhdGlvbiAoIkludGVsIikgYW5kIFlvdS4gIllvdSIgcmVmZXJzIHRvIHlvdSBv
cgoreW91ciBlbXBsb3llciBvciBvdGhlciBlbnRpdHkgZm9yIHdob3NlIGJlbmVmaXQgeW91IGFj
dCwgYXMgYXBwbGljYWJsZS4gSWYgeW91CithcmUgYWdyZWVpbmcgdG8gdGhlIHRlcm1zIGFuZCBj
b25kaXRpb25zIG9mIHRoaXMgQWdyZWVtZW50IG9uIGJlaGFsZiBvZiBhCitjb21wYW55IG9yIG90
aGVyIGxlZ2FsIGVudGl0eSwgeW91IHJlcHJlc2VudCBhbmQgd2FycmFudCB0aGF0IHlvdSBoYXZl
IHRoZSBsZWdhbAorYXV0aG9yaXR5IHRvIGJpbmQgdGhhdCBsZWdhbCBlbnRpdHkgdG8gdGhlIEFn
cmVlbWVudCwgaW4gd2hpY2ggY2FzZSwgIllvdSIgb3IKKyJZb3VyIiBzaGFsbCBiZSBpbiByZWZl
cmVuY2UgdG8gc3VjaCBlbnRpdHkuIEludGVsIGFuZCBZb3UgYXJlIHJlZmVycmVkIHRvCitoZXJl
aW4gaW5kaXZpZHVhbGx5IGFzIGEgIlBhcnR5IiBvciwgdG9nZXRoZXIsIGFzIHRoZSAiUGFydGll
cyIuCisKK1RoZSBQYXJ0aWVzLCBpbiBjb25zaWRlcmF0aW9uIG9mIHRoZSBtdXR1YWwgY292ZW5h
bnRzIGNvbnRhaW5lZCBpbiB0aGlzCitBZ3JlZW1lbnQsIGFuZCBmb3Igb3RoZXIgZ29vZCBhbmQg
dmFsdWFibGUgY29uc2lkZXJhdGlvbiwgdGhlIHJlY2VpcHQgYW5kCitzdWZmaWNpZW5jeSBvZiB3
aGljaCB0aGV5IGFja25vd2xlZGdlLCBhbmQgaW50ZW5kaW5nIHRvIGJlIGxlZ2FsbHkgYm91bmQs
IGFncmVlCithcyBmb2xsb3dzOgorCisxLiBQVVJQT1NFLiBZb3Ugc2VlayB0byBvYnRhaW4sIGFu
ZCBJbnRlbCBkZXNpcmVzIHRvIHByb3ZpZGUgWW91LCB1bmRlciB0aGUKK3Rlcm1zIG9mIHRoaXMg
QWdyZWVtZW50LCBTb2Z0d2FyZSBzb2xlbHkgZm9yIFlvdXIgZWZmb3J0cyB0byBkZXZlbG9wIGFu
ZAorZGlzdHJpYnV0ZSBwcm9kdWN0cyBpbnRlZ3JhdGluZyBJbnRlbCBoYXJkd2FyZSBhbmQgSW50
ZWwgc29mdHdhcmUuICJTb2Z0d2FyZSIKK3JlZmVycyB0byBjZXJ0YWluIHNvZnR3YXJlIG9yIG90
aGVyIGNvbGxhdGVyYWwsIGluY2x1ZGluZywgYnV0IG5vdCBsaW1pdGVkIHRvLAorcmVsYXRlZCBj
b21wb25lbnRzLCBvcGVyYXRpbmcgc3lzdGVtLCBhcHBsaWNhdGlvbiBwcm9ncmFtIGludGVyZmFj
ZXMsIGRldmljZQorZHJpdmVycywgYXNzb2NpYXRlZCBtZWRpYSwgcHJpbnRlZCBvciBlbGVjdHJv
bmljIGRvY3VtZW50YXRpb24gYW5kIGFueSB1cGRhdGVzLAordXBncmFkZXMgb3IgcmVsZWFzZXMg
dGhlcmV0byBhc3NvY2lhdGVkIHdpdGggSW50ZWwgcHJvZHVjdChzKSwgc29mdHdhcmUgb3IKK3Nl
cnZpY2UocykuICJJbnRlbC1iYXNlZCBwcm9kdWN0IiByZWZlcnMgdG8gYW4gSW50ZWwoUikgRXRo
ZXJuZXQgODAwIFNlcmllcyBkZXZpY2UKK29wZXJhdGluZyBpbiBhIHBsYXRmb3JtIHVzaW5nIElu
dGVsKFIpIFhlb24gcHJvY2Vzc29ycywgSW50ZWwoUikgQ29yZSBwcm9jZXNzb3JzCithbmQvb3Ig
SW50ZWwoUikgQXRvbSBwcm9jZXNzb3JzIHRoYXQgaW5jbHVkZXMsIGluY29ycG9yYXRlcywgb3Ig
aW1wbGVtZW50cyBJbnRlbAorcHJvZHVjdChzKSwgc29mdHdhcmUgb3Igc2VydmljZShzKS4KKwor
Mi4gTElNSVRFRCBMSUNFTlNFLiBDb25kaXRpb25lZCBvbiBZb3VyIGNvbXBsaWFuY2Ugd2l0aCB0
aGUgdGVybXMgYW5kIGNvbmRpdGlvbnMKK29mIHRoaXMgQWdyZWVtZW50LCBJbnRlbCBncmFudHMg
dG8gWW91IGEgbGltaXRlZCwgbm9uZXhjbHVzaXZlLCBub250cmFuc2ZlcmFibGUsCityZXZvY2Fi
bGUsIHdvcmxkd2lkZSwgZnVsbHkgcGFpZC11cCBsaWNlbnNlIGR1cmluZyB0aGUgdGVybSBvZiB0
aGlzIEFncmVlbWVudCwKK3dpdGhvdXQgdGhlIHJpZ2h0IHRvIHN1YmxpY2Vuc2UsIHVuZGVyIElu
dGVsJ3MgY29weXJpZ2h0cyAoc3ViamVjdCB0byBhbnkgdGhpcmQKK3BhcnR5IGxpY2Vuc2luZyBy
ZXF1aXJlbWVudHMpLCB0byAoaSkgaW50ZXJuYWxseSBwcmVwYXJlIGRlcml2YXRpdmUgd29ya3Mg
KGFzCitkZWZpbmVkIGluIDE3IFUuUy5DLiDCpyAxMDEpIG9mIHRoZSBTb2Z0d2FyZSAoIkRlcml2
YXRpdmVzIiksIGlmIHByb3ZpZGVkIG9yCitvdGhlcndpc2UgbWFkZSBhdmFpbGFibGUgYnkgSW50
ZWwgaW4gc291cmNlIGNvZGUgZm9ybSwgYW5kIHJlcHJvZHVjZSB0aGUKK1NvZnR3YXJlLCBpbmNs
dWRpbmcgRGVyaXZhdGl2ZXMsIGluIGVhY2ggY2FzZSBvbmx5IGZvciBZb3VyIG93biBpbnRlcm5h
bAorZXZhbHVhdGlvbiwgdGVzdGluZywgdmFsaWRhdGlvbiwgYW5kIGRldmVsb3BtZW50IG9mIElu
dGVsLWJhc2VkIHByb2R1Y3RzIGFuZCBhbnkKK2Fzc29jaWF0ZWQgbWFpbnRlbmFuY2UgdGhlcmVv
ZjsgKGlpKSByZXByb2R1Y2UsIGRpc3BsYXksIGFuZCBwdWJsaWNseSBwZXJmb3JtIGFuCitvYmpl
Y3QgY29kZSByZXByZXNlbnRhdGlvbiBvZiB0aGUgU29mdHdhcmUsIGluY2x1ZGluZyBZb3VyIERl
cml2YXRpdmVzLCBpbiBlYWNoCitjYXNlIG9ubHkgd2hlbiBpbnRlZ3JhdGVkIHdpdGggYW5kIGV4
ZWN1dGVkIGJ5IGFuIEludGVsLWJhc2VkIHByb2R1Y3QsIHN1YmplY3QKK3RvIGFueSB0aGlyZCBw
YXJ0eSBsaWNlbnNpbmcgcmVxdWlyZW1lbnRzOyBhbmQgKGlpaSkgZGlzdHJpYnV0ZSBhbiBvYmpl
Y3QgY29kZQorcmVwcmVzZW50YXRpb24gb2YgdGhlIFNvZnR3YXJlLCBwcm92aWRlZCBieSBJbnRl
bCwgb3Igb2YgYW55IERlcml2YXRpdmVzIGNyZWF0ZWQKK2J5IFlvdSwgc29sZWx5IGFzIGVtYmVk
ZGVkIGluIG9yIGZvciBleGVjdXRpb24gb24gYW4gSW50ZWwtYmFzZWQgcHJvZHVjdCwgYW5kIGlm
Cit0byBhbiBlbmQgdXNlciwgcHVyc3VhbnQgdG8gYSBsaWNlbnNlIGFncmVlbWVudCB3aXRoIHRl
cm1zIGFuZCBjb25kaXRpb25zIGF0CitsZWFzdCBhcyByZXN0cmljdGl2ZSBhcyB0aG9zZSBjb250
YWluZWQgaW4gdGhlIEludGVsIEVuZCBVc2VyIFNvZnR3YXJlIExpY2Vuc2UKK0FncmVlbWVudCBp
biBBcHBlbmRpeCBBIGhlcmV0by4KKworSWYgWW91IGFyZSBub3QgdGhlIGZpbmFsIG1hbnVmYWN0
dXJlciBvciB2ZW5kb3Igb2YgYW4gSW50ZWwtYmFzZWQgcHJvZHVjdAoraW5jb3Jwb3JhdGluZyBv
ciBkZXNpZ25lZCB0byBpbmNvcnBvcmF0ZSB0aGUgU29mdHdhcmUsIFlvdSBtYXkgdHJhbnNmZXIg
YSBjb3B5CitvZiB0aGUgU29mdHdhcmUsIGluY2x1ZGluZyBhbnkgRGVyaXZhdGl2ZXMgKGFuZCBy
ZWxhdGVkIGVuZCB1c2VyIGRvY3VtZW50YXRpb24pCitjcmVhdGVkIGJ5IFlvdSB0byBZb3VyIE9y
aWdpbmFsIEVxdWlwbWVudCBNYW51ZmFjdHVyZXIgKE9FTSksIE9yaWdpbmFsIERldmljZQorTWFu
dWZhY3R1cmVyIChPRE0pLCBkaXN0cmlidXRvcnMsIG9yIHN5c3RlbSBpbnRlZ3JhdGlvbiBwYXJ0
bmVycyAoIllvdXIKK1BhcnRuZXIiKSBmb3IgdXNlIGluIGFjY29yZGFuY2Ugd2l0aCB0aGUgdGVy
bXMgYW5kIGNvbmRpdGlvbnMgb2YgdGhpcyBBZ3JlZW1lbnQsCitwcm92aWRlZCBZb3VyIFBhcnRu
ZXIgYWdyZWVzIHRvIGJlIGZ1bGx5IGJvdW5kIGJ5IHRoZSB0ZXJtcyBoZXJlb2YgYW5kIHByb3Zp
ZGVkCit0aGF0IFlvdSB3aWxsIHJlbWFpbiBmdWxseSBsaWFibGUgdG8gSW50ZWwgZm9yIHRoZSBh
Y3Rpb25zIGFuZCBpbmFjdGlvbnMgb2YKK1lvdXIgUGFydG5lcihzKS4KKworMy4gTElDRU5TRSBS
RVNUUklDVElPTlMuIEFsbCByaWdodCwgdGl0bGUgYW5kIGludGVyZXN0IGluIGFuZCB0byB0aGUg
U29mdHdhcmUKK2FuZCBhc3NvY2lhdGVkIGRvY3VtZW50YXRpb24gYXJlIGFuZCB3aWxsIHJlbWFp
biB0aGUgZXhjbHVzaXZlIHByb3BlcnR5IG9mCitJbnRlbCBhbmQgaXRzIGxpY2Vuc29ycyBvciBz
dXBwbGllcnMuIFVubGVzcyBleHByZXNzbHkgcGVybWl0dGVkIHVuZGVyIHRoZQorQWdyZWVtZW50
LCBZb3Ugd2lsbCBub3QsIGFuZCB3aWxsIG5vdCBhbGxvdyBhbnkgdGhpcmQgcGFydHkgdG8gKGkp
IHVzZSwgY29weSwKK2Rpc3RyaWJ1dGUsIHNlbGwgb3Igb2ZmZXIgdG8gc2VsbCB0aGUgU29mdHdh
cmUgb3IgYXNzb2NpYXRlZCBkb2N1bWVudGF0aW9uOworKGlpKSBtb2RpZnksIGFkYXB0LCBlbmhh
bmNlLCBkaXNhc3NlbWJsZSwgZGVjb21waWxlLCByZXZlcnNlIGVuZ2luZWVyLCBjaGFuZ2UKK29y
IGNyZWF0ZSBkZXJpdmF0aXZlIHdvcmtzIGZyb20gdGhlIFNvZnR3YXJlIGV4Y2VwdCBhbmQgb25s
eSB0byB0aGUgZXh0ZW50IGFzCitzcGVjaWZpY2FsbHkgcmVxdWlyZWQgYnkgbWFuZGF0b3J5IGFw
cGxpY2FibGUgbGF3cyBvciBhbnkgYXBwbGljYWJsZSB0aGlyZAorcGFydHkgbGljZW5zZSB0ZXJt
cyBhY2NvbXBhbnlpbmcgdGhlIFNvZnR3YXJlOyAoaWlpKSB1c2Ugb3IgbWFrZSB0aGUgU29mdHdh
cmUKK2F2YWlsYWJsZSBmb3IgdGhlIHVzZSBvciBiZW5lZml0IG9mIHRoaXJkIHBhcnRpZXM7IG9y
IChpdikgdXNlIHRoZSBTb2Z0d2FyZSBvbgorWW91ciBwcm9kdWN0cyBvdGhlciB0aGFuIHRob3Nl
IHRoYXQgaW5jbHVkZSB0aGUgSW50ZWwgaGFyZHdhcmUgcHJvZHVjdChzKSwKK3BsYXRmb3JtKHMp
LCBvciBzb2Z0d2FyZSBpZGVudGlmaWVkIGluIHRoZSBTb2Z0d2FyZTsgb3IgKHYpIHB1Ymxpc2gg
b3IgcHJvdmlkZQorYW55IFNvZnR3YXJlIGJlbmNobWFyayBvciBjb21wYXJpc29uIHRlc3QgcmVz
dWx0cy4gWW91IGFja25vd2xlZGdlIHRoYXQgYW4KK2Vzc2VudGlhbCBiYXNpcyBvZiB0aGUgYmFy
Z2FpbiBpbiB0aGlzIEFncmVlbWVudCBpcyB0aGF0IEludGVsIGdyYW50cyBZb3Ugbm8KK2xpY2Vu
c2VzIG9yIG90aGVyIHJpZ2h0cyBpbmNsdWRpbmcsIGJ1dCBub3QgbGltaXRlZCB0bywgcGF0ZW50
LCBjb3B5cmlnaHQsCit0cmFkZSBzZWNyZXQsIHRyYWRlbWFyaywgdHJhZGUgbmFtZSwgc2Vydmlj
ZSBtYXJrIG9yIG90aGVyIGludGVsbGVjdHVhbAorcHJvcGVydHkgbGljZW5zZXMgb3IgcmlnaHRz
IHdpdGggcmVzcGVjdCB0byB0aGUgU29mdHdhcmUgYW5kIGFzc29jaWF0ZWQKK2RvY3VtZW50YXRp
b24sIGJ5IGltcGxpY2F0aW9uLCBlc3RvcHBlbCBvciBvdGhlcndpc2UsIGV4Y2VwdCBmb3IgdGhl
IGxpY2Vuc2VzCitleHByZXNzbHkgZ3JhbnRlZCBhYm92ZS4gWW91IGFja25vd2xlZGdlIHRoZXJl
IGFyZSBzaWduaWZpY2FudCB1c2VzIG9mIHRoZQorU29mdHdhcmUgaW4gaXRzIG9yaWdpbmFsLCB1
bm1vZGlmaWVkIGFuZCB1bmNvbWJpbmVkIGZvcm0uIFlvdSBtYXkgbm90IHJlbW92ZQorYW55IGNv
cHlyaWdodCBub3RpY2VzIGZyb20gdGhlIFNvZnR3YXJlLgorCis0LiBMSUNFTlNFIFRPIEZFRURC
QUNLLiBUaGlzIEFncmVlbWVudCBkb2VzIG5vdCBvYmxpZ2F0ZSBZb3UgdG8gcHJvdmlkZSBJbnRl
bAord2l0aCBtYXRlcmlhbHMsIGluZm9ybWF0aW9uLCBjb21tZW50cywgc3VnZ2VzdGlvbnMsIFlv
dXIgRGVyaXZhdGl2ZXMgb3Igb3RoZXIKK2NvbW11bmljYXRpb24gcmVnYXJkaW5nIHRoZSBmZWF0
dXJlcywgZnVuY3Rpb25zLCBwZXJmb3JtYW5jZSBvciB1c2Ugb2YgdGhlCitTb2Z0d2FyZSAoIkZl
ZWRiYWNrIikuIElmIGFueSBwb3J0aW9uIG9mIHRoZSBTb2Z0d2FyZSBpcyBwcm92aWRlZCBvciBv
dGhlcndpc2UKK21hZGUgYXZhaWxhYmxlIGJ5IEludGVsIGluIHNvdXJjZSBjb2RlIGZvcm0sIHRv
IHRoZSBleHRlbnQgWW91IHByb3ZpZGUgSW50ZWwKK3dpdGggRmVlZGJhY2sgaW4gYSB0YW5naWJs
ZSBmb3JtLCBZb3UgZ3JhbnQgdG8gSW50ZWwgYW5kIGl0cyBhZmZpbGlhdGVzIGEKK25vbi1leGNs
dXNpdmUsIHBlcnBldHVhbCwgc3VibGljZW5zZWFibGUsIGlycmV2b2NhYmxlLCB3b3JsZHdpZGUs
IHJveWFsdHktZnJlZSwKK2Z1bGx5IHBhaWQtdXAgYW5kIHRyYW5zZmVyYWJsZSBsaWNlbnNlLCB0
byBhbmQgdW5kZXIgYWxsIG9mIFlvdXIgaW50ZWxsZWN0dWFsCitwcm9wZXJ0eSByaWdodHMsIHdo
ZXRoZXIgcGVyZmVjdGVkIG9yIG5vdCwgdG8gcHVibGljbHkgcGVyZm9ybSwgcHVibGljbHkKK2Rp
c3BsYXksIHJlcHJvZHVjZSwgdXNlLCBtYWtlLCBoYXZlIG1hZGUsIHNlbGwsIG9mZmVyIGZvciBz
YWxlLCBkaXN0cmlidXRlLAoraW1wb3J0LCBjcmVhdGUgZGVyaXZhdGl2ZSB3b3JrcyBvZiBhbmQg
b3RoZXJ3aXNlIGV4cGxvaXQgYW55IGNvbW1lbnRzLAorc3VnZ2VzdGlvbnMsIGRlc2NyaXB0aW9u
cywgaWRlYXMsIFlvdXIgRGVyaXZhdGl2ZXMgb3Igb3RoZXIgZmVlZGJhY2sgcmVnYXJkaW5nCit0
aGUgU29mdHdhcmUgcHJvdmlkZWQgYnkgWW91IG9yIG9uIFlvdXIgYmVoYWxmLgorCis1LiBPUEVO
IFNPVVJDRSBTVEFURU1FTlQuIFRoZSBTb2Z0d2FyZSBtYXkgaW5jbHVkZSBPcGVuIFNvdXJjZSBT
b2Z0d2FyZSAoT1NTKQorbGljZW5zZWQgcHVyc3VhbnQgdG8gT1NTIGxpY2Vuc2UgYWdyZWVtZW50
KHMpIGlkZW50aWZpZWQgaW4gdGhlIE9TUyBjb21tZW50cyBpbgordGhlIGFwcGxpY2FibGUgc291
cmNlIGNvZGUgZmlsZShzKSBvciBmaWxlIGhlYWRlcihzKSBwcm92aWRlZCB3aXRoIG9yIG90aGVy
d2lzZQorYXNzb2NpYXRlZCB3aXRoIHRoZSBTb2Z0d2FyZS4gTmVpdGhlciBZb3Ugbm9yIGFueSBP
RU0sIE9ETSwgY3VzdG9tZXIsIG9yCitkaXN0cmlidXRvciBtYXkgc3ViamVjdCBhbnkgcHJvcHJp
ZXRhcnkgcG9ydGlvbiBvZiB0aGUgU29mdHdhcmUgdG8gYW55IE9TUworbGljZW5zZSBvYmxpZ2F0
aW9ucyBpbmNsdWRpbmcsIHdpdGhvdXQgbGltaXRhdGlvbiwgY29tYmluaW5nIG9yIGRpc3RyaWJ1
dGluZwordGhlIFNvZnR3YXJlIHdpdGggT1NTIGluIGEgbWFubmVyIHRoYXQgc3ViamVjdHMgSW50
ZWwsIHRoZSBTb2Z0d2FyZSBvciBhbnkKK3BvcnRpb24gdGhlcmVvZiB0byBhbnkgT1NTIGxpY2Vu
c2Ugb2JsaWdhdGlvbi4gTm90aGluZyBpbiB0aGlzIEFncmVlbWVudCBsaW1pdHMKK2FueSByaWdo
dHMgdW5kZXIsIG9yIGdyYW50cyByaWdodHMgdGhhdCBzdXBlcnNlZGUsIHRoZSB0ZXJtcyBvZiBh
bnkgYXBwbGljYWJsZQorT1NTIGxpY2Vuc2UuCisKKzYuIFRISVJEIFBBUlRZIFNPRlRXQVJFLiBD
ZXJ0YWluIHRoaXJkIHBhcnR5IHNvZnR3YXJlIHByb3ZpZGVkIHdpdGggb3Igd2l0aGluCit0aGUg
U29mdHdhcmUgbWF5IG9ubHkgYmUgdXNlZCAoYSkgdXBvbiBzZWN1cmluZyBhIGxpY2Vuc2UgZGly
ZWN0bHkgZnJvbSB0aGUKK293bmVyIG9mIHRoZSBzb2Z0d2FyZSBvciAoYikgaW4gY29tYmluYXRp
b24gd2l0aCBoYXJkd2FyZSBjb21wb25lbnRzIHB1cmNoYXNlZAorZnJvbSBzdWNoIHRoaXJkIHBh
cnR5IGFuZCAoYykgc3ViamVjdCB0byBmdXJ0aGVyIGxpY2Vuc2UgbGltaXRhdGlvbnMgYnkgdGhl
Citzb2Z0d2FyZSBvd25lci4gQSBsaXN0aW5nIG9mIGFueSBzdWNoIHRoaXJkIHBhcnR5IGxpbWl0
YXRpb25zIGlzIGluIG9uZSBvciBtb3JlCit0ZXh0IGZpbGVzIGFjY29tcGFueWluZyB0aGUgU29m
dHdhcmUuIFlvdSBhY2tub3dsZWRnZSBJbnRlbCBpcyBub3QgcHJvdmlkaW5nCitZb3Ugd2l0aCBh
IGxpY2Vuc2UgdG8gc3VjaCB0aGlyZCBwYXJ0eSBzb2Z0d2FyZSBhbmQgZnVydGhlciB0aGF0IGl0
IGlzIFlvdXIKK3Jlc3BvbnNpYmlsaXR5IHRvIG9idGFpbiBhcHByb3ByaWF0ZSBsaWNlbnNlcyBm
cm9tIHN1Y2ggdGhpcmQgcGFydGllcyBkaXJlY3RseS4KKworNy4gQ09ORklERU5USUFMSVRZLiBU
aGUgdGVybXMgYW5kIGNvbmRpdGlvbnMgb2YgdGhpcyBBZ3JlZW1lbnQsIGV4Y2hhbmdlZAorY29u
ZmlkZW50aWFsIGluZm9ybWF0aW9uLCBhcyB3ZWxsIGFzIHRoZSBTb2Z0d2FyZSBhcmUgc3ViamVj
dCB0byB0aGUgdGVybXMgYW5kCitjb25kaXRpb25zIG9mIHRoZSBOb24tRGlzY2xvc3VyZSBBZ3Jl
ZW1lbnQocykgb3IgSW50ZWwgUHJlLVJlbGVhc2UgTG9hbgorQWdyZWVtZW50KHMpIChyZWZlcnJl
ZCB0byBoZXJlaW4gY29sbGVjdGl2ZWx5IG9yIGluZGl2aWR1YWxseSBhcyAiTkRBIikgZW50ZXJl
ZAoraW50byBieSBhbmQgaW4gZm9yY2UgYmV0d2VlbiBJbnRlbCBhbmQgWW91LCBhbmQgaW4gYW55
IGNhc2Ugbm8gbGVzcworY29uZmlkZW50aWFsaXR5IHByb3RlY3Rpb24gdGhhbiBZb3UgYXBwbHkg
dG8gWW91ciBpbmZvcm1hdGlvbiBvZiBzaW1pbGFyCitzZW5zaXRpdml0eS4gSWYgWW91IHdvdWxk
IGxpa2UgdG8gaGF2ZSBhIGNvbnRyYWN0b3IgcGVyZm9ybSB3b3JrIG9uIFlvdXIgYmVoYWxmCit0
aGF0IHJlcXVpcmVzIGFueSBhY2Nlc3MgdG8gb3IgdXNlIG9mIFNvZnR3YXJlLCBZb3UgbXVzdCBv
YnRhaW4gYSB3cml0dGVuCitjb25maWRlbnRpYWxpdHkgYWdyZWVtZW50IGZyb20gdGhlIGNvbnRy
YWN0b3Igd2hpY2ggY29udGFpbnMgdGVybXMgYW5kCitjb25kaXRpb25zIHdpdGggcmVzcGVjdCB0
byBhY2Nlc3MgdG8gb3IgdXNlIG9mIFNvZnR3YXJlIG5vIGxlc3MgcmVzdHJpY3RpdmUKK3RoYW4g
dGhvc2Ugc2V0IGZvcnRoIGluIHRoaXMgQWdyZWVtZW50LCBleGNsdWRpbmcgYW55IGRpc3RyaWJ1
dGlvbiByaWdodHMgYW5kCit1c2UgZm9yIGFueSBvdGhlciBwdXJwb3NlLCBhbmQgWW91IHdpbGwg
cmVtYWluIGZ1bGx5IGxpYWJsZSB0byBJbnRlbCBmb3IgdGhlCithY3Rpb25zIGFuZCBpbmFjdGlv
bnMgb2YgdGhvc2UgY29udHJhY3RvcnMuIFlvdSBtYXkgbm90IHVzZSBJbnRlbCdzIG5hbWUgaW4g
YW55CitwdWJsaWNhdGlvbnMsIGFkdmVydGlzZW1lbnRzLCBvciBvdGhlciBhbm5vdW5jZW1lbnRz
IHdpdGhvdXQgSW50ZWwncyBwcmlvcgord3JpdHRlbiBjb25zZW50LgorCis4LiBOTyBPQkxJR0FU
SU9OOyBOTyBBR0VOQ1kuIEludGVsIG1heSBtYWtlIGNoYW5nZXMgdG8gdGhlIFNvZnR3YXJlLCBv
ciBpdGVtcworcmVmZXJlbmNlZCB0aGVyZWluLCBhdCBhbnkgdGltZSB3aXRob3V0IG5vdGljZS4g
SW50ZWwgaXMgbm90IG9ibGlnYXRlZCB0bworc3VwcG9ydCwgdXBkYXRlLCBwcm92aWRlIHRyYWlu
aW5nIGZvciwgb3IgZGV2ZWxvcCBhbnkgZnVydGhlciB2ZXJzaW9uIG9mIHRoZQorU29mdHdhcmUg
b3IgdG8gZ3JhbnQgYW55IGxpY2Vuc2UgdGhlcmV0by4gTm8gYWdlbmN5LCBmcmFuY2hpc2UsIHBh
cnRuZXJzaGlwLAoram9pbnR2ZW50dXJlLCBvciBlbXBsb3llZS1lbXBsb3llciByZWxhdGlvbnNo
aXAgaXMgaW50ZW5kZWQgb3IgY3JlYXRlZCBieSB0aGlzCitBZ3JlZW1lbnQuCisKKzkuIEVYQ0xV
U0lPTiBPRiBXQVJSQU5USUVTLiBUSEUgU09GVFdBUkUgSVMgUFJPVklERUQgIkFTIElTIiBXSVRI
T1VUIEFOWQorRVhQUkVTUyBPUiBJTVBMSUVEIFdBUlJBTlRZIE9GIEFOWSBLSU5EIElOQ0xVRElO
RyBXQVJSQU5USUVTIE9GCitNRVJDSEFOVEFCSUxJVFksIE5PTklORlJJTkdFTUVOVCwgT1IgRklU
TkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuIEludGVsCitkb2VzIG5vdCB3YXJyYW50IG9y
IGFzc3VtZSByZXNwb25zaWJpbGl0eSBmb3IgdGhlIGFjY3VyYWN5IG9yIGNvbXBsZXRlbmVzcyBv
ZgorYW55IGluZm9ybWF0aW9uLCB0ZXh0LCBncmFwaGljcywgbGlua3Mgb3Igb3RoZXIgaXRlbXMg
d2l0aGluIHRoZSBTb2Z0d2FyZS4KKworMTAuIExJTUlUQVRJT04gT0YgTElBQklMSVRZLiBJTiBO
TyBFVkVOVCBXSUxMIElOVEVMIE9SIElUUyBBRkZJTElBVEVTLAorTElDRU5TT1JTIE9SIFNVUFBM
SUVSUyAoSU5DTFVESU5HIFRIRUlSIFJFU1BFQ1RJVkUgRElSRUNUT1JTLCBPRkZJQ0VSUywKK0VN
UExPWUVFUywgQU5EIEFHRU5UUykgQkUgTElBQkxFIEZPUiBBTlkgREFNQUdFUyBXSEFUU09FVkVS
IChJTkNMVURJTkcsIFdJVEhPVVQKK0xJTUlUQVRJT04sIExPU1QgUFJPRklUUywgQlVTSU5FU1Mg
SU5URVJSVVBUSU9OLCBPUiBMT1NUIERBVEEpIEFSSVNJTkcgT1VUIE9GCitPUiBJTiBSRUxBVElP
TiBUTyBUSElTIEFHUkVFTUVOVCwgSU5DTFVESU5HIFRIRSBVU0UgT0YgT1IgSU5BQklMSVRZIFRP
IFVTRSBUSEUKK1NPRlRXQVJFLCBFVkVOIElGIElOVEVMIEhBUyBCRUVOIEFEVklTRUQgT0YgVEhF
IFBPU1NJQklMSVRZIE9GIFNVQ0ggREFNQUdFUy4KK1NPTUUgSlVSSVNESUNUSU9OUyBQUk9ISUJJ
VCBFWENMVVNJT04gT1IgTElNSVRBVElPTiBPRiBMSUFCSUxJVFkgRk9SIElNUExJRUQKK1dBUlJB
TlRJRVMgT1IgQ09OU0VRVUVOVElBTCBPUiBJTkNJREVOVEFMIERBTUFHRVMsIFNPIFRIRSBBQk9W
RSBMSU1JVEFUSU9OIE1BWQorSU4gUEFSVCBOT1QgQVBQTFkgVE8gWU9VLiBUSEUgU09GVFdBUkUg
TElDRU5TRUQgSEVSRVVOREVSIElTIE5PVCBERVNJR05FRCBPUgorSU5URU5ERUQgRk9SIFVTRSBJ
TiBBTlkgTUVESUNBTCwgTElGRSBTQVZJTkcgT1IgTElGRSBTVVNUQUlOSU5HIFNZU1RFTVMsCitU
UkFOU1BPUlRBVElPTiBTWVNURU1TLCBOVUNMRUFSIFNZU1RFTVMsIE9SIEZPUiBBTlkgT1RIRVIg
TUlTU0lPTiBDUklUSUNBTAorQVBQTElDQVRJT04gSU4gV0hJQ0ggVEhFIEZBSUxVUkUgT0YgVEhF
IFNPRlRXQVJFIENPVUxEIExFQUQgVE8gUEVSU09OQUwgSU5KVVJZCitPUiBERUFUSC4gWU9VIE1B
WSBBTFNPIEhBVkUgT1RIRVIgTEVHQUwgUklHSFRTIFRIQVQgVkFSWSBGUk9NIEpVUklTRElDVElP
TiBUTworSlVSSVNESUNUSU9OLiBUSEUgTElNSVRFRCBSRU1FRElFUywgV0FSUkFOVFkgRElTQ0xB
SU1FUiBBTkQgTElNSVRFRCBMSUFCSUxJVFkKK0FSRSBGVU5EQU1FTlRBTCBFTEVNRU5UUyBPRiBU
SEUgQkFTSVMgT0YgVEhFIEJBUkdBSU4gQkVUV0VFTiBJTlRFTCBBTkQgWU9VLiBZT1UKK0FDS05P
V0xFREdFIElOVEVMIFdPVUxEIEJFIFVOQUJMRSBUTyBQUk9WSURFIFRIRSBTT0ZUV0FSRSBXSVRI
T1VUIFNVQ0gKK0xJTUlUQVRJT05TLiBZT1UgV0lMTCBJTkRFTU5JRlkgQU5EIEhPTEQgSU5URUwg
QU5EIElUUyBBRkZJTElBVEVTLCBMSUNFTlNPUlMKK0FORCBTVVBQTElFUlMgKElOQ0xVRElORyBU
SEVJUiBSRVNQRUNUSVZFIERJUkVDVE9SUywgT0ZGSUNFUlMsIEVNUExPWUVFUywgQU5ECitBR0VO
VFMpIEhBUk1MRVNTIEFHQUlOU1QgQUxMIENMQUlNUywgTElBQklMSVRJRVMsIExPU1NFUywgQ09T
VFMsIERBTUFHRVMsIEFORAorRVhQRU5TRVMgKElOQ0xVRElORyBSRUFTT05BQkxFIEFUVE9STkVZ
IEZFRVMpLCBBUklTSU5HIE9VVCBPRiwgRElSRUNUTFkgT1IKK0lORElSRUNUTFksIFRIRSBESVNU
UklCVVRJT04gT0YgVEhFIFNPRlRXQVJFIEFORCBBTlkgQ0xBSU0gT0YgUFJPRFVDVAorTElBQklM
SVRZLCBQRVJTT05BTCBJTkpVUlkgT1IgREVBVEggQVNTT0NJQVRFRCBXSVRIIEFOWSBVTklOVEVO
REVEIFVTRSwgRVZFTiBJRgorU1VDSCBDTEFJTSBBTExFR0VTIFRIQVQgSU5URUwgT1IgQU4gSU5U
RUwgQUZGSUxJQVRFLCBMSUNFTlNPUlMgT1IgU1VQUExJRVIgV0FTCitORUdMSUdFTlQgUkVHQVJE
SU5HIFRIRSBERVNJR04gT1IgTUFOVUZBQ1RVUkUgT0YgVEhFIFNPRlRXQVJFLgorCisxMS4gVEVS
TUlOQVRJT04gQU5EIFNVUlZJVkFMLiBJbnRlbCBtYXkgdGVybWluYXRlIHRoaXMgQWdyZWVtZW50
IGZvciBhbnkgcmVhc29uCit3aXRoIHRoaXJ0eSAoMzApIGRheXMnIG5vdGljZSBhbmQgaW1tZWRp
YXRlbHkgaWYgWW91IG9yIHNvbWVvbmUgYWN0aW5nIG9uIFlvdXIKK2JlaGFsZiBvciBhdCBZb3Vy
IGJlaGVzdCB2aW9sYXRlcyBhbnkgb2YgaXRzIHRlcm1zIG9yIGNvbmRpdGlvbnMuIFVwb24KK3Rl
cm1pbmF0aW9uLCBZb3Ugd2lsbCBpbW1lZGlhdGVseSBkZXN0cm95IGFuZCBlbnN1cmUgdGhlIGRl
c3RydWN0aW9uIG9mIHRoZQorU29mdHdhcmUgb3IgcmV0dXJuIGFsbCBjb3BpZXMgb2YgdGhlIFNv
ZnR3YXJlIHRvIEludGVsIChpbmNsdWRpbmcgcHJvdmlkaW5nCitjZXJ0aWZpY2F0aW9uIG9mIHN1
Y2ggZGVzdHJ1Y3Rpb24gb3IgcmV0dXJuIGJhY2sgdG8gSW50ZWwpLiBVcG9uIHRlcm1pbmF0aW9u
IG9mCit0aGlzIEFncmVlbWVudCwgYWxsIGxpY2Vuc2VzIGdyYW50ZWQgdG8gWW91IGhlcmV1bmRl
ciB0ZXJtaW5hdGUgaW1tZWRpYXRlbHkuCitBbGwgU2VjdGlvbnMgb2YgdGhpcyBBZ3JlZW1lbnQs
IGV4Y2VwdCBTZWN0aW9uIDIsIHdpbGwgc3Vydml2ZSB0ZXJtaW5hdGlvbi4KKworMTIuIEdPVkVS
TklORyBMQVcgQU5EIEpVUklTRElDVElPTi4gVGhpcyBBZ3JlZW1lbnQgYW5kIGFueSBkaXNwdXRl
IGFyaXNpbmcgb3V0CitvZiBvciByZWxhdGluZyB0byBpdCB3aWxsIGJlIGdvdmVybmVkIGJ5IHRo
ZSBsYXdzIG9mIHRoZSBVLlMuQS4gYW5kIERlbGF3YXJlLAord2l0aG91dCByZWdhcmQgdG8gY29u
ZmxpY3Qgb2YgbGF3cyBwcmluY2lwbGVzLiBUaGUgUGFydGllcyBleGNsdWRlIHRoZQorYXBwbGlj
YXRpb24gb2YgdGhlIFVuaXRlZCBOYXRpb25zIENvbnZlbnRpb24gb24gQ29udHJhY3RzIGZvciB0
aGUgSW50ZXJuYXRpb25hbAorU2FsZSBvZiBHb29kcyAoMTk4MCkuIFRoZSBzdGF0ZSBhbmQgZmVk
ZXJhbCBjb3VydHMgc2l0dGluZyBpbiBEZWxhd2FyZSwgVS5TLkEuCit3aWxsIGhhdmUgZXhjbHVz
aXZlIGp1cmlzZGljdGlvbiBvdmVyIGFueSBkaXNwdXRlIGFyaXNpbmcgb3V0IG9mIG9yIHJlbGF0
aW5nIHRvCit0aGlzIEFncmVlbWVudC4gVGhlIFBhcnRpZXMgY29uc2VudCB0byBwZXJzb25hbCBq
dXJpc2RpY3Rpb24gYW5kIHZlbnVlIGluIHRob3NlCitjb3VydHMuIEEgUGFydHkgdGhhdCBvYnRh
aW5zIGEganVkZ21lbnQgYWdhaW5zdCB0aGUgb3RoZXIgUGFydHkgaW4gdGhlIGNvdXJ0cworaWRl
bnRpZmllZCBpbiB0aGlzIHNlY3Rpb24gbWF5IGVuZm9yY2UgdGhhdCBqdWRnbWVudCBpbiBhbnkg
Y291cnQgdGhhdCBoYXMKK2p1cmlzZGljdGlvbiBvdmVyIHRoZSBQYXJ0aWVzLgorCisxMy4gRVhQ
T1JUIFJFR1VMQVRJT05TL0VYUE9SVCBDT05UUk9MLiBZb3UgYWdyZWUgdGhhdCBuZWl0aGVyIFlv
dSBub3IgWW91cgorc3Vic2lkaWFyaWVzIHdpbGwgZXhwb3J0L3JlLWV4cG9ydCB0aGUgU29mdHdh
cmUsIGRpcmVjdGx5IG9yIGluZGlyZWN0bHksIHRvIGFueQorY291bnRyeSBmb3Igd2hpY2ggdGhl
IFUuUy4gRGVwYXJ0bWVudCBvZiBDb21tZXJjZSBvciBhbnkgb3RoZXIgYWdlbmN5IG9yCitkZXBh
cnRtZW50IG9mIHRoZSBVLlMuIEdvdmVybm1lbnQgb3IgdGhlIGZvcmVpZ24gZ292ZXJubWVudCBm
cm9tIHdoZXJlIGl0IGlzCitzaGlwcGluZyByZXF1aXJlcyBhbiBleHBvcnQgbGljZW5zZSwgb3Ig
b3RoZXIgZ292ZXJubWVudGFsIGFwcHJvdmFsLCB3aXRob3V0CitmaXJzdCBvYnRhaW5pbmcgYW55
IHN1Y2ggcmVxdWlyZWQgbGljZW5zZSBvciBhcHByb3ZhbC4gSW4gdGhlIGV2ZW50IHRoZQorU29m
dHdhcmUgaXMgZXhwb3J0ZWQgZnJvbSB0aGUgVS5TLkEuIG9yIHJlLWV4cG9ydGVkIGZyb20gYSBm
b3JlaWduIGRlc3RpbmF0aW9uCitieSBZb3Ugb3IgWW91ciBzdWJzaWRpYXJ5LCBZb3Ugd2lsbCBl
bnN1cmUgdGhhdCB0aGUgZGlzdHJpYnV0aW9uIGFuZAorZXhwb3J0L3JlLWV4cG9ydCBvciBpbXBv
cnQgb2YgdGhlIFNvZnR3YXJlIGNvbXBsaWVzIHdpdGggYWxsIGxhd3MsIHJlZ3VsYXRpb25zLAor
b3JkZXJzLCBvciBvdGhlciByZXN0cmljdGlvbnMgb2YgdGhlIFUuUy4gRXhwb3J0IEFkbWluaXN0
cmF0aW9uIFJlZ3VsYXRpb25zIGFuZAordGhlIGFwcHJvcHJpYXRlIGZvcmVpZ24gZ292ZXJubWVu
dC4KKworMTQuIEdPVkVSTk1FTlQgUkVTVFJJQ1RFRCBSSUdIVFMuIFRoZSBTb2Z0d2FyZSBpcyBh
IGNvbW1lcmNpYWwgaXRlbSAoYXMgZGVmaW5lZAoraW4gNDggQy5GLlIuIDIuMTAxKSBjb25zaXN0
aW5nIG9mIGNvbW1lcmNpYWwgY29tcHV0ZXIgc29mdHdhcmUgYW5kIGNvbW1lcmNpYWwKK2NvbXB1
dGVyIHNvZnR3YXJlIGRvY3VtZW50YXRpb24gKGFzIHRob3NlIHRlcm1zIGFyZSB1c2VkIGluIDQ4
IEMuRi5SLiAxMi4yMTIpLgorQ29uc2lzdGVudCB3aXRoIDQ4IEMuRi5SLiAxMi4yMTIgYW5kIDQ4
IEMuRi5SIDIyNy43MjAyMSB0aHJvdWdoIDIyNy43MjAyLTQsCitZb3Ugd2lsbCBub3QgcHJvdmlk
ZSB0aGUgU29mdHdhcmUgdG8gdGhlIFUuUy4gR292ZXJubWVudC4gQ29udHJhY3RvciBvcgorTWFu
dWZhY3R1cmVyIGlzIEludGVsIENvcnBvcmF0aW9uLCAyMjAwIE1pc3Npb24gQ29sbGVnZSBCbHZk
LiwgU2FudGEgQ2xhcmEsIENBCis5NTA1NC4KKworMTUuIEFTU0lHTk1FTlQuIFlvdSBtYXkgbm90
IGRlbGVnYXRlLCBhc3NpZ24gb3IgdHJhbnNmZXIgdGhpcyBBZ3JlZW1lbnQsIHRoZQorbGljZW5z
ZShzKSBncmFudGVkIG9yIGFueSBvZiBZb3VyIHJpZ2h0cyBvciBkdXRpZXMgaGVyZXVuZGVyLCBl
eHByZXNzbHksIGJ5CitpbXBsaWNhdGlvbiwgYnkgb3BlcmF0aW9uIG9mIGxhdywgb3Igb3RoZXJ3
aXNlIGFuZCBhbnkgYXR0ZW1wdCB0byBkbyBzbywKK3dpdGhvdXQgSW50ZWwncyBleHByZXNzIHBy
aW9yIHdyaXR0ZW4gY29uc2VudCwgd2lsbCBiZSBudWxsIGFuZCB2b2lkLiBJbnRlbCBtYXkKK2Fz
c2lnbiwgZGVsZWdhdGUgYW5kIHRyYW5zZmVyIHRoaXMgQWdyZWVtZW50LCBhbmQgaXRzIHJpZ2h0
cyBhbmQgb2JsaWdhdGlvbnMKK2hlcmV1bmRlciwgaW4gaXRzIHNvbGUgZGlzY3JldGlvbi4KKwor
MTYuIEVOVElSRSBBR1JFRU1FTlQ7IFNFVkVSQUJJTElUWS4gVGhlIHRlcm1zIGFuZCBjb25kaXRp
b25zIG9mIHRoaXMgQWdyZWVtZW50CithbmQgYW55IE5EQSB3aXRoIEludGVsIGNvbnN0aXR1dGUg
dGhlIGVudGlyZSBhZ3JlZW1lbnQgYmV0d2VlbiB0aGUgcGFydGllcyB3aXRoCityZXNwZWN0IHRv
IHRoZSBzdWJqZWN0IG1hdHRlciBoZXJlb2YsIGFuZCBtZXJnZSBhbmQgc3VwZXJzZWRlIGFsbCBw
cmlvciBvcgorY29udGVtcG9yYW5lb3VzIGFncmVlbWVudHMsIHVuZGVyc3RhbmRpbmdzLCBuZWdv
dGlhdGlvbnMgYW5kIGRpc2N1c3Npb25zLgorTmVpdGhlciBQYXJ0eSB3aWxsIGJlIGJvdW5kIGJ5
IGFueSB0ZXJtcywgY29uZGl0aW9ucywgZGVmaW5pdGlvbnMsIHdhcnJhbnRpZXMsCit1bmRlcnN0
YW5kaW5ncywgb3IgcmVwcmVzZW50YXRpb25zIHdpdGggcmVzcGVjdCB0byB0aGUgc3ViamVjdCBt
YXR0ZXIgaGVyZW9mCitvdGhlciB0aGFuIGFzIGV4cHJlc3NseSBwcm92aWRlZCBoZXJlaW4uIElu
IHRoZSBldmVudCBhbnkgcHJvdmlzaW9uIG9mIHRoaXMKK0FncmVlbWVudCBpcyB1bmVuZm9yY2Vh
YmxlIG9yIGludmFsaWQgdW5kZXIgYW55IGFwcGxpY2FibGUgbGF3IG9yIGFwcGxpY2FibGUKK2Nv
dXJ0IGRlY2lzaW9uLCBzdWNoIHVuZW5mb3JjZWFiaWxpdHkgb3IgaW52YWxpZGl0eSB3aWxsIG5v
dCByZW5kZXIgdGhpcworQWdyZWVtZW50IHVuZW5mb3JjZWFibGUgb3IgaW52YWxpZCBhcyBhIHdo
b2xlLCBpbnN0ZWFkIHN1Y2ggcHJvdmlzaW9uIHdpbGwgYmUKK2NoYW5nZWQgYW5kIGludGVycHJl
dGVkIHNvIGFzIHRvIGJlc3QgYWNjb21wbGlzaCB0aGUgb2JqZWN0aXZlcyBvZiBzdWNoCitwcm92
aXNpb24gd2l0aGluIGxlZ2FsIGxpbWl0cy4KKworMTcuIFdBSVZFUi4gVGhlIGZhaWx1cmUgb2Yg
YSBQYXJ0eSB0byByZXF1aXJlIHBlcmZvcm1hbmNlIGJ5IHRoZSBvdGhlciBQYXJ0eSBvZgorYW55
IHByb3Zpc2lvbiBoZXJlb2Ygd2lsbCBub3QgYWZmZWN0IHRoZSBmdWxsIHJpZ2h0IHRvIHJlcXVp
cmUgc3VjaCBwZXJmb3JtYW5jZQorYXQgYW55IHRpbWUgdGhlcmVhZnRlcjsgbm9yIHdpbGwgd2Fp
dmVyIGJ5IGEgUGFydHkgb2YgYSBicmVhY2ggb2YgYW55IHByb3Zpc2lvbgoraGVyZW9mIGNvbnN0
aXR1dGUgYSB3YWl2ZXIgb2YgdGhlIHByb3Zpc2lvbiBpdHNlbGYuCisKKzE4LiBQUklWQUNZLiBZ
T1VSIFBSSVZBQ1kgUklHSFRTIEFSRSBTRVQgRk9SVEggSU4gSU5URUwnUyBQUklWQUNZIE5PVElD
RSwgV0hJQ0gKK0ZPUk1TIEEgUEFSVCBPRiBUSElTIEFHUkVFTUVOVC4gUExFQVNFIFJFVklFVyBU
SEUgUFJJVkFDWSBOT1RJQ0UgQVQKK0hUVFA6Ly9XV1cuSU5URUwuQ09NL1BSSVZBQ1kgVE8gTEVB
Uk4gSE9XIElOVEVMIENPTExFQ1RTLCBVU0VTIEFORCBTSEFSRVMKK0lORk9STUFUSU9OIEFCT1VU
IFlPVS4KKworCitBUFBFTkRJWCBBCisKK0lOVEVMIEVORCBVU0VSIFNPRlRXQVJFIExJQ0VOU0Ug
QUdSRUVNRU5UCisKK0lNUE9SVEFOVCAtIFJFQUQgQkVGT1JFIENPUFlJTkcsIElOU1RBTExJTkcg
T1IgVVNJTkcuCisKK1RIRSBGT0xMT1dJTkcgTk9USUNFLCBPUiBURVJNUyBBTkQgQ09ORElUSU9O
UyBTVUJTVEFOVElBTExZIElERU5USUNBTCBJTiBOQVRVUkUKK0FORCBFRkZFQ1QsIE1VU1QgQVBQ
RUFSIElOIFRIRSBET0NVTUVOVEFUSU9OIEFTU09DSUFURUQgV0lUSCBUSEUgSU5URUwtQkFTRUQK
K1BST0RVQ1QgSU5UTyBXSElDSCBUSEUgU09GVFdBUkUgSVMgSU5TVEFMTEVELiBNSU5JTUFMTFks
IFNVQ0ggTk9USUNFIE1VU1QKK0FQUEVBUiBJTiBUSEUgVVNFUiBHVUlERSBGT1IgVEhFIFBST0RV
Q1QuIFRIRSBURVJNICJMSUNFTlNFRSIgSU4gVEhJUyBURVhUCitSRUZFUlMgVE8gVEhFIEVORCBV
U0VSIE9GIFRIRSBQUk9EVUNULgorCitMSUNFTlNFLiBMaWNlbnNlZSBoYXMgYSBsaWNlbnNlIHVu
ZGVyIEludGVsJ3MgY29weXJpZ2h0cyB0byByZXByb2R1Y2UgSW50ZWwncworU29mdHdhcmUgb25s
eSBpbiBpdHMgdW5tb2RpZmllZCBhbmQgYmluYXJ5IGZvcm0sICh3aXRoIHRoZSBhY2NvbXBhbnlp
bmcKK2RvY3VtZW50YXRpb24sIHRoZSAiU29mdHdhcmUiKSBmb3IgTGljZW5zZWUncyBwZXJzb25h
bCB1c2Ugb25seSwgYW5kIG5vdAorY29tbWVyY2lhbCB1c2UsIGluIGNvbm5lY3Rpb24gd2l0aCBJ
bnRlbC1iYXNlZCBwcm9kdWN0cyBmb3Igd2hpY2ggdGhlIFNvZnR3YXJlCitoYXMgYmVlbiBwcm92
aWRlZCwgc3ViamVjdCB0byB0aGUgZm9sbG93aW5nIGNvbmRpdGlvbnM6CisKKyAgKGEpIExpY2Vu
c2VlIG1heSBub3QgZGlzY2xvc2UsIGRpc3RyaWJ1dGUgb3IgdHJhbnNmZXIgYW55IHBhcnQgb2Yg
dGhlCisgICAgICBTb2Z0d2FyZSwgYW5kIFlvdSBhZ3JlZSB0byBwcmV2ZW50IHVuYXV0aG9yaXpl
ZCBjb3B5aW5nIG9mIHRoZSBTb2Z0d2FyZS4KKyAgKGIpIExpY2Vuc2VlIG1heSBub3QgcmV2ZXJz
ZSBlbmdpbmVlciwgZGVjb21waWxlLCBvciBkaXNhc3NlbWJsZSB0aGUgU29mdHdhcmUuCisgIChj
KSBMaWNlbnNlZSBtYXkgbm90IHN1YmxpY2Vuc2UgdGhlIFNvZnR3YXJlLgorICAoZCkgVGhlIFNv
ZnR3YXJlIG1heSBjb250YWluIHRoZSBzb2Z0d2FyZSBhbmQgb3RoZXIgaW50ZWxsZWN0dWFsIHBy
b3BlcnR5IG9mCisgICAgICB0aGlyZCBwYXJ0eSBzdXBwbGllcnMsIHNvbWUgb2Ygd2hpY2ggbWF5
IGJlIGlkZW50aWZpZWQgaW4sIGFuZCBsaWNlbnNlZCBpbgorCSAgYWNjb3JkYW5jZSB3aXRoLCBh
biBlbmNsb3NlZCBsaWNlbnNlLnR4dCBmaWxlIG9yIG90aGVyIHRleHQgb3IgZmlsZS4KKyAgKGUp
IEludGVsIGhhcyBubyBvYmxpZ2F0aW9uIHRvIHByb3ZpZGUgYW55IHN1cHBvcnQsIHRlY2huaWNh
bCBhc3Npc3RhbmNlIG9yCisgICAgICB1cGRhdGVzIGZvciB0aGUgU29mdHdhcmUuCisKK09XTkVS
U0hJUCBPRiBTT0ZUV0FSRSBBTkQgQ09QWVJJR0hUUy4gVGl0bGUgdG8gYWxsIGNvcGllcyBvZiB0
aGUgU29mdHdhcmUKK3JlbWFpbnMgd2l0aCBJbnRlbCBvciBpdHMgbGljZW5zb3JzIG9yIHN1cHBs
aWVycy4gVGhlIFNvZnR3YXJlIGlzIGNvcHlyaWdodGVkCithbmQgcHJvdGVjdGVkIGJ5IHRoZSBs
YXdzIG9mIHRoZSBVbml0ZWQgU3RhdGVzIGFuZCBvdGhlciBjb3VudHJpZXMsIGFuZAoraW50ZXJu
YXRpb25hbCB0cmVhdHkgcHJvdmlzaW9ucy4gTGljZW5zZWUgbWF5IG5vdCByZW1vdmUgYW55IGNv
cHlyaWdodCBub3RpY2VzCitmcm9tIHRoZSBTb2Z0d2FyZS4gRXhjZXB0IGFzIG90aGVyd2lzZSBl
eHByZXNzbHkgcHJvdmlkZWQgYWJvdmUsIEludGVsIGdyYW50cworbm8gZXhwcmVzcyBvciBpbXBs
aWVkIHJpZ2h0IHVuZGVyIEludGVsIHBhdGVudHMsIGNvcHlyaWdodHMsIHRyYWRlbWFya3MsIG9y
CitvdGhlciBpbnRlbGxlY3R1YWwgcHJvcGVydHkgcmlnaHRzLiBUcmFuc2ZlciBvZiB0aGUgbGlj
ZW5zZSB0ZXJtaW5hdGVzCitMaWNlbnNlZSdzIHJpZ2h0IHRvIHVzZSB0aGUgU29mdHdhcmUuCisK
K0RJU0NMQUlNRVIgT0YgV0FSUkFOVFkuIFRoZSBTb2Z0d2FyZSBpcyBwcm92aWRlZCAiQVMgSVMi
IHdpdGhvdXQgd2FycmFudHkgb2YKK2FueSBraW5kLCBFSVRIRVIgRVhQUkVTUyBPUiBJTVBMSUVE
LCBJTkNMVURJTkcgV0lUSE9VVCBMSU1JVEFUSU9OLCBXQVJSQU5USUVTCitPRiBNRVJDSEFOVEFC
SUxJVFkgT1IgRklUTkVTUyBGT1IgQU5ZIFBBUlRJQ1VMQVIgUFVSUE9TRS4gTElNSVRBVElPTiBP
RgorTElBQklMSVRZLiBORUlUSEVSIElOVEVMIE5PUiBJVFMgTElDRU5TT1JTIE9SIFNVUFBMSUVS
UyBXSUxMIEJFIExJQUJMRSBGT1IgQU5ZCitMT1NTIE9GIFBST0ZJVFMsIExPU1MgT0YgVVNFLCBJ
TlRFUlJVUFRJT04gT0YgQlVTSU5FU1MsIE9SIElORElSRUNULCBTUEVDSUFMLAorSU5DSURFTlRB
TCwgT1IgQ09OU0VRVUVOVElBTCBEQU1BR0VTIE9GIEFOWSBLSU5EIFdIRVRIRVIgVU5ERVIgVEhJ
UyBBR1JFRU1FTlQKK09SIE9USEVSV0lTRSwgRVZFTiBJRiBJTlRFTCBIQVMgQkVFTiBBRFZJU0VE
IE9GIFRIRSBQT1NTSUJJTElUWSBPRiBTVUNIIERBTUFHRVMuCisKK0xJQ0VOU0UgVE8gVVNFIENP
TU1FTlRTIEFORCBTVUdHRVNUSU9OUy4gVGhpcyBBZ3JlZW1lbnQgZG9lcyBOT1Qgb2JsaWdhdGUK
K0xpY2Vuc2VlIHRvIHByb3ZpZGUgSW50ZWwgd2l0aCBjb21tZW50cyBvciBzdWdnZXN0aW9ucyBy
ZWdhcmRpbmcgdGhlIFNvZnR3YXJlLgorSG93ZXZlciwgaWYgTGljZW5zZWUgcHJvdmlkZXMgSW50
ZWwgd2l0aCBjb21tZW50cyBvciBzdWdnZXN0aW9ucyBmb3IgdGhlCittb2RpZmljYXRpb24sIGNv
cnJlY3Rpb24sIGltcHJvdmVtZW50IG9yIGVuaGFuY2VtZW50IG9mIChhKSB0aGUgU29mdHdhcmUg
b3IgKGIpCitJbnRlbCBwcm9kdWN0cyBvciBwcm9jZXNzZXMgdGhhdCB3b3JrIHdpdGggdGhlIFNv
ZnR3YXJlLCBMaWNlbnNlZSBncmFudHMgdG8KK0ludGVsIGEgbm9uLWV4Y2x1c2l2ZSwgd29ybGR3
aWRlLCBwZXJwZXR1YWwsIGlycmV2b2NhYmxlLCB0cmFuc2ZlcmFibGUsCityb3lhbHR5LWZyZWUg
bGljZW5zZSwgd2l0aCB0aGUgcmlnaHQgdG8gc3VibGljZW5zZSwgdW5kZXIgTGljZW5zZWUncwor
aW50ZWxsZWN0dWFsIHByb3BlcnR5IHJpZ2h0cywgdG8gaW5jb3Jwb3JhdGUgb3Igb3RoZXJ3aXNl
IHV0aWxpemUgdGhvc2UKK2NvbW1lbnRzIGFuZCBzdWdnZXN0aW9ucy4KKworVEVSTUlOQVRJT04g
T0YgVEhJUyBMSUNFTlNFLiBJbnRlbCBvciB0aGUgc3VibGljZW5zb3IgbWF5IHRlcm1pbmF0ZSB0
aGlzCitsaWNlbnNlIGF0IGFueSB0aW1lIGlmIExpY2Vuc2VlIGlzIGluIGJyZWFjaCBvZiBhbnkg
b2YgaXRzIHRlcm1zIG9yIGNvbmRpdGlvbnMuCitVcG9uIHRlcm1pbmF0aW9uLCBMaWNlbnNlZSB3
aWxsIGltbWVkaWF0ZWx5IGRlc3Ryb3kgb3IgcmV0dXJuIHRvIEludGVsIGFsbAorY29waWVzIG9m
IHRoZSBTb2Z0d2FyZS4KKworVEhJUkQgUEFSVFkgQkVORUZJQ0lBUlkuIEludGVsIGlzIGFuIGlu
dGVuZGVkIGJlbmVmaWNpYXJ5IG9mIHRoZSBFbmQgVXNlcgorTGljZW5zZSBBZ3JlZW1lbnQgYW5k
IGhhcyB0aGUgcmlnaHQgdG8gZW5mb3JjZSBhbGwgb2YgaXRzIHRlcm1zLgorCitVLlMuIEdPVkVS
Tk1FTlQgUkVTVFJJQ1RFRCBSSUdIVFMuIFRoZSBTb2Z0d2FyZSBpcyBhIGNvbW1lcmNpYWwgaXRl
bSAoYXMKK2RlZmluZWQgaW4gNDggQy5GLlIuIDIuMTAxKSBjb25zaXN0aW5nIG9mIGNvbW1lcmNp
YWwgY29tcHV0ZXIgc29mdHdhcmUgYW5kCitjb21tZXJjaWFsIGNvbXB1dGVyIHNvZnR3YXJlIGRv
Y3VtZW50YXRpb24gKGFzIHRob3NlIHRlcm1zIGFyZSB1c2VkIGluIDQ4CitDLkYuUi4gMTIuMjEy
KSwgY29uc2lzdGVudCB3aXRoIDQ4IEMuRi5SLiAxMi4yMTIgYW5kIDQ4IEMuRi5SIDIyNy43MjAy
MQordGhyb3VnaCAyMjcuNzIwMi00LiBZb3Ugd2lsbCBub3QgcHJvdmlkZSB0aGUgU29mdHdhcmUg
dG8gdGhlIFUuUy4gR292ZXJubWVudC4KK0NvbnRyYWN0b3Igb3IgTWFudWZhY3R1cmVyIGlzIElu
dGVsIENvcnBvcmF0aW9uLCAyMjAwIE1pc3Npb24gQ29sbGVnZSBCbHZkLiwKK1NhbnRhIENsYXJh
LCBDQSA5NTA1NC4KKworRVhQT1JUIExBV1MuIExpY2Vuc2VlIGFncmVlcyB0aGF0IG5laXRoZXIg
TGljZW5zZWUgbm9yIExpY2Vuc2VlJ3Mgc3Vic2lkaWFyaWVzCit3aWxsIGV4cG9ydC9yZS1leHBv
cnQgdGhlIFNvZnR3YXJlLCBkaXJlY3RseSBvciBpbmRpcmVjdGx5LCB0byBhbnkgY291bnRyeSBm
b3IKK3doaWNoIHRoZSBVLlMuIERlcGFydG1lbnQgb2YgQ29tbWVyY2Ugb3IgYW55IG90aGVyIGFn
ZW5jeSBvciBkZXBhcnRtZW50IG9mIHRoZQorVS5TLiBHb3Zlcm5tZW50IG9yIHRoZSBmb3JlaWdu
IGdvdmVybm1lbnQgZnJvbSB3aGVyZSBpdCBpcyBzaGlwcGluZyByZXF1aXJlcyBhbgorZXhwb3J0
IGxpY2Vuc2UsIG9yIG90aGVyIGdvdmVybm1lbnRhbCBhcHByb3ZhbCwgd2l0aG91dCBmaXJzdCBv
YnRhaW5pbmcgYW55CitzdWNoIHJlcXVpcmVkIGxpY2Vuc2Ugb3IgYXBwcm92YWwuIEluIHRoZSBl
dmVudCB0aGUgU29mdHdhcmUgaXMgZXhwb3J0ZWQgZnJvbQordGhlIFUuUy5BLiBvciByZS1leHBv
cnRlZCBmcm9tIGEgZm9yZWlnbiBkZXN0aW5hdGlvbiBieSBMaWNlbnNlZSwgTGljZW5zZWUgd2ls
bAorZW5zdXJlIHRoYXQgdGhlIGRpc3RyaWJ1dGlvbiBhbmQgZXhwb3J0L3JlLWV4cG9ydCBvciBp
bXBvcnQgb2YgdGhlIFNvZnR3YXJlCitjb21wbGllcyB3aXRoIGFsbCBsYXdzLCByZWd1bGF0aW9u
cywgb3JkZXJzLCBvciBvdGhlciByZXN0cmljdGlvbnMgb2YgdGhlIFUuUy4KK0V4cG9ydCBBZG1p
bmlzdHJhdGlvbiBSZWd1bGF0aW9ucyBhbmQgdGhlIGFwcHJvcHJpYXRlIGZvcmVpZ24gZ292ZXJu
bWVudC4KKworQVBQTElDQUJMRSBMQVdTLiBUaGlzIEFncmVlbWVudCBhbmQgYW55IGRpc3B1dGUg
YXJpc2luZyBvdXQgb2Ygb3IgcmVsYXRpbmcgdG8KK2l0IHdpbGwgYmUgZ292ZXJuZWQgYnkgdGhl
IGxhd3Mgb2YgdGhlIFUuUy5BLiBhbmQgRGVsYXdhcmUsIHdpdGhvdXQgcmVnYXJkIHRvCitjb25m
bGljdCBvZiBsYXdzIHByaW5jaXBsZXMuIFRoZSBQYXJ0aWVzIHRvIHRoaXMgQWdyZWVtZW50IGV4
Y2x1ZGUgdGhlCithcHBsaWNhdGlvbiBvZiB0aGUgVW5pdGVkIE5hdGlvbnMgQ29udmVudGlvbiBv
biBDb250cmFjdHMgZm9yIHRoZSBJbnRlcm5hdGlvbmFsCitTYWxlIG9mIEdvb2RzICgxOTgwKS4g
VGhlIHN0YXRlIGFuZCBmZWRlcmFsIGNvdXJ0cyBzaXR0aW5nIGluIERlbGF3YXJlLCBVLlMuQS4K
K3dpbGwgaGF2ZSBleGNsdXNpdmUganVyaXNkaWN0aW9uIG92ZXIgYW55IGRpc3B1dGUgYXJpc2lu
ZyBvdXQgb2Ygb3IgcmVsYXRpbmcgdG8KK3RoaXMgQWdyZWVtZW50LiBUaGUgUGFydGllcyBjb25z
ZW50IHRvIHBlcnNvbmFsIGp1cmlzZGljdGlvbiBhbmQgdmVudWUgaW4gdGhvc2UKK2NvdXJ0cy4g
QSBQYXJ0eSB0aGF0IG9idGFpbnMgYSBqdWRnbWVudCBhZ2FpbnN0IHRoZSBvdGhlciBQYXJ0eSBp
biB0aGUgY291cnRzCitpZGVudGlmaWVkIGluIHRoaXMgc2VjdGlvbiBtYXkgZW5mb3JjZSB0aGF0
IGp1ZGdtZW50IGluIGFueSBjb3VydCB0aGF0IGhhcworanVyaXNkaWN0aW9uIG92ZXIgdGhlIFBh
cnRpZXMuCisKK0xpY2Vuc2VlJ3Mgc3BlY2lmaWMgcmlnaHRzIG1heSB2YXJ5IGZyb20gY291bnRy
eSB0byBjb3VudHJ5LgpkaWZmIC0tZ2l0IGEvV0hFTkNFIGIvV0hFTkNFCmluZGV4IGY4ZTE1ODU0
ZWQ5OC4uN2Q4ODM3ODI2MDRlIDEwMDY0NAotLS0gYS9XSEVOQ0UKKysrIGIvV0hFTkNFCkBAIC01
MDIxLDYgKzUwMjEsMTAgQEAgTGluazogaW50ZWwvaWNlL2RkcC9pY2UucGtnIC0+IGljZS0xLjMu
NC4wLnBrZwogCiBMaWNlbnNlOiBSZWRpc3RyaWJ1dGFibGUuIFNlZSBMSUNFTlNFLmljZSBmb3Ig
ZGV0YWlscwogCitGaWxlOiBpbnRlbC9pY2UvZGRwLWNvbW1zL2ljZV9jb21tcy0xLjMuMTYuMC5w
a2cKKworTGljZW5zZTogUmVkaXN0cmlidXRhYmxlLiBTZWUgTElDRU5TRS5pY2VfZW5oYW5jZWQg
Zm9yIGRldGFpbHMKKwogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIAogRHJpdmVyOiBpbnNpZGUtc2VjdXJl
IC0tIEluc2lkZSBTZWN1cmUgRUlQMTk3IGNyeXB0byBkcml2ZXIKZGlmZiAtLWdpdCBhL2ludGVs
L2ljZS9kZHAtY29tbXMvaWNlX2NvbW1zLTEuMy4xNi4wLnBrZyBiL2ludGVsL2ljZS9kZHAtY29t
bXMvaWNlX2NvbW1zLTEuMy4xNi4wLnBrZwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAw
MDAwMDAwMDAuLmU2OWRlMjliYjJkMQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
