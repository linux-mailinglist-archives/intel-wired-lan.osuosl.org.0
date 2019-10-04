Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BF9CBEB9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2019 17:13:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 73FEF2379C;
	Fri,  4 Oct 2019 15:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O3Mcou-YMyNx; Fri,  4 Oct 2019 15:13:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 53686204F8;
	Fri,  4 Oct 2019 15:13:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D29961BF313
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 10:52:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CEEA286A61
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 10:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KhSAyVzrhQP0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2019 10:52:27 +0000 (UTC)
X-Greylist: delayed 00:17:48 by SQLgrey-1.7.6
Received: from mout1.fh-giessen.de (mout1.fh-giessen.de [212.201.18.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0DB4186A40
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 10:52:27 +0000 (UTC)
Received: from mx3.fh-giessen.de ([212.201.18.28])
 by mout1.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1iGKuw-0000Qg-10; Fri, 04 Oct 2019 12:34:34 +0200
Received: from mailgate-2.its.fh-giessen.de ([212.201.18.14])
 by mx3.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1iGKuv-00F8NC-UG; Fri, 04 Oct 2019 12:34:33 +0200
Received: from p549d322d.dip0.t-ipconnect.de ([84.157.50.45]
 helo=zwei.fritz.box) by mailgate-2.its.fh-giessen.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1iGKuv-0000cY-Om; Fri, 04 Oct 2019 12:34:33 +0200
To: kai.heng.feng@canonical.com, jeffrey.t.kirsher@intel.com,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
From: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Message-ID: <171f0c61-73a2-81c2-5c8a-7c140f548803@mni.thm.de>
Date: Fri, 4 Oct 2019 12:34:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:71.0) Gecko/20100101
 Thunderbird/71.0a1
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Fri, 04 Oct 2019 15:13:09 +0000
Subject: [Intel-wired-lan] e1000e regression - 5.4rc1
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
Cc: tobias.klausmann@freenet.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8gYWxsLAoKV2hpbGUgdGVzdGluZyB0aGUgNS40cmMxIHJlbGVhc2UsIGkgbm90aWNlZCBt
eSBFdGhlcm5ldCBuZXZlciBjb21pbmcgCmZ1bGx5IHVwLCBzZWVtaW5nbHkgaGF2aW5nIGEgdGlt
ZW91dCBwcm9ibGVtLiBXaGlsZSBiaXNlY3RpbmcgdGhpcyBpIApsYW5kZWQgYXQgdGhlIGNvbW1p
dCBkZWUyMzU5NGQ1ODczODZlOWZkYTc2NzMyYWE1ZjVhNDg3NzA5NTEwICgiZTEwMDBlOiAKTWFr
ZSBzcGVlZCBkZXRlY3Rpb24gb24gaG90cGx1Z2dpbmcgY2FibGUgbW9yZSByZWxpYWJsZSIpIGFz
IHRoZSBmaXJzdCAKYmFkIGNvbW1pdC4gQW5kIGluZGVlZCBqdXN0IHJldmVydGluZyB0aGUgY29t
bWl0IG9uIHRvcCBvZiA1LjRyYzEgCnJlc29sdmVzIHRoZSBwcm9ibGVtLiBMZXQgbWUga25vdyBp
ZiB5b3UgaGF2ZSBmdXJ0aGVyIHF1ZXN0aW9ucywgb3IgCnBhdGNoZXMgdG8gdGVzdCEKCkdyZWV0
aW5ncywKClRvYmlhcwoKCmxzcGNpOgoKMDA6MTkuMCBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRl
bCBDb3Jwb3JhdGlvbiA4MjU3OVYgR2lnYWJpdCBOZXR3b3JrIApDb25uZWN0aW9uIChyZXYgMDYp
CiDCoMKgwqDCoMKgwqDCoCBEZXZpY2VOYW1lOsKgIE9uYm9hcmQgTEFOCiDCoMKgwqDCoMKgwqDC
oCBTdWJzeXN0ZW06IEFTVVNUZUsgQ29tcHV0ZXIgSW5jLiBQOFA2NyBEZWx1eGUgTW90aGVyYm9h
cmQKIMKgwqDCoMKgwqDCoMKgIENvbnRyb2w6IEkvTysgTWVtKyBCdXNNYXN0ZXIrIFNwZWNDeWNs
ZS0gTWVtV0lOVi0gVkdBU25vb3AtIApQYXJFcnItIFN0ZXBwaW5nLSBTRVJSLSBGYXN0QjJCLSBE
aXNJTlR4KwogwqDCoMKgwqDCoMKgwqAgU3RhdHVzOiBDYXArIDY2TUh6LSBVREYtIEZhc3RCMkIt
IFBhckVyci0gREVWU0VMPWZhc3QgPlRBYm9ydC0gCjxUQWJvcnQtIDxNQWJvcnQtID5TRVJSLSA8
UEVSUi0gSU5UeC0KIMKgwqDCoMKgwqDCoMKgIExhdGVuY3k6IDAKIMKgwqDCoMKgwqDCoMKgIElu
dGVycnVwdDogcGluIEEgcm91dGVkIHRvIElSUSA1NgogwqDCoMKgwqDCoMKgwqAgUmVnaW9uIDA6
IE1lbW9yeSBhdCBmYmYwMDAwMCAoMzItYml0LCBub24tcHJlZmV0Y2hhYmxlKSBbc2l6ZT0xMjhL
XQogwqDCoMKgwqDCoMKgwqAgUmVnaW9uIDE6IE1lbW9yeSBhdCBmYmYyODAwMCAoMzItYml0LCBu
b24tcHJlZmV0Y2hhYmxlKSBbc2l6ZT00S10KIMKgwqDCoMKgwqDCoMKgIFJlZ2lvbiAyOiBJL08g
cG9ydHMgYXQgZjA0MCBbc2l6ZT0zMl0KIMKgwqDCoMKgwqDCoMKgIENhcGFiaWxpdGllczogW2M4
XSBQb3dlciBNYW5hZ2VtZW50IHZlcnNpb24gMgogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIEZsYWdzOiBQTUVDbGstIERTSSsgRDEtIEQyLSBBdXhDdXJyZW50PTBtQSAKUE1FKEQwKyxE
MS0sRDItLEQzaG90KyxEM2NvbGQrKQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFN0
YXR1czogRDAgTm9Tb2Z0UnN0LSBQTUUtRW5hYmxlLSBEU2VsPTAgRFNjYWxlPTEgUE1FLQogwqDC
oMKgwqDCoMKgwqAgQ2FwYWJpbGl0aWVzOiBbZDBdIE1TSTogRW5hYmxlKyBDb3VudD0xLzEgTWFz
a2FibGUtIDY0Yml0KwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEFkZHJlc3M6IDAw
MDAwMDAwZmVlMDA2OTjCoCBEYXRhOiAwMDAwCiDCoMKgwqDCoMKgwqDCoCBDYXBhYmlsaXRpZXM6
IFtlMF0gUENJIEFkdmFuY2VkIEZlYXR1cmVzCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgQUZDYXA6IFRQKyBGTFIrCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQUZDdHJs
OiBGTFItCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQUZTdGF0dXM6IFRQLQogwqDC
oMKgwqDCoMKgwqAgS2VybmVsIGRyaXZlciBpbiB1c2U6IGUxMDAwZQogwqDCoMKgwqDCoMKgwqAg
S2VybmVsIG1vZHVsZXM6IGUxMDAwZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
