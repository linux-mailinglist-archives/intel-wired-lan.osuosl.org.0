Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7783A9354
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jun 2021 08:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E17BC83A87;
	Wed, 16 Jun 2021 06:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RKAMpwN75GSy; Wed, 16 Jun 2021 06:55:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA92E83A82;
	Wed, 16 Jun 2021 06:55:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B7B71BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 06:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 49BF86066F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 06:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hmt3TnRy6tgf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jun 2021 06:55:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF3DD60624
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 06:55:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 471CB613E4;
 Wed, 16 Jun 2021 06:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623826518;
 bh=pQZ1uyy+ChPtD1nPHLcJgg7YLiFjFABFv8mQ81IQUZY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A0YcY+jxitDoxq99H34jzUAXuE04SwwQajGs2MzXNOIwNuUy/Pr8KvoJJgyiPRUkC
 iLktbjp+pIcLmUwG8rIZD9SKGqVsAxeipQtrmyeqzvZL1h9lmMoNowXcvQTlpM5PE8
 1MqVcsWjV787PA4lRFhEHtN+objgoDkjhKpQjvOLLLnb7mFWKh5MRXVIiPFWuzaGCQ
 IF7D5yQeh3/9hCWz3j1XXBBa9QPITvqYsEbsFTSXIqPeSmqvWFXDRjepJKlFJ21ajJ
 If3hOQlig0oTuLn5TOwtzyK+S2JcknyoyqxhGnjyHZfxPHfnX1uquYhwRVzsD9k2xO
 VqqBF/G5whQ3g==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1ltPSG-004lCf-Hg; Wed, 16 Jun 2021 08:55:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Wed, 16 Jun 2021 08:55:13 +0200
Message-Id: <9bd9f5c067c4b068a974730a14fe8d68e1be0c9a.1623826294.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623826294.git.mchehab+huawei@kernel.org>
References: <cover.1623826294.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 7/8] docs: networking: device_drivers:
 replace some characters
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlIGNvbnZlcnNpb24gdG9vbHMgdXNlZCBkdXJpbmcgRG9jQm9vay9MYVRlWC9odG1sL01hcmtk
b3duLT5SZVNUCmNvbnZlcnNpb24gYW5kIHNvbWUgY3V0LWFuZC1wYXN0ZWQgdGV4dCBjb250YWlu
IHNvbWUgY2hhcmFjdGVycyB0aGF0CmFyZW4ndCBlYXNpbHkgcmVhY2hhYmxlIG9uIHN0YW5kYXJk
IGtleWJvYXJkcyBhbmQvb3IgY291bGQgY2F1c2UKdHJvdWJsZXMgd2hlbiBwYXJzZWQgYnkgdGhl
IGRvY3VtZW50YXRpb24gYnVpbGQgc3lzdGVtLgoKUmVwbGFjZSB0aGUgb2NjdXJlbmNlcyBvZiB0
aGUgZm9sbG93aW5nIGNoYXJhY3RlcnM6CgoJLSBVKzAwYTAgKCfCoCcpOiBOTy1CUkVBSyBTUEFD
RQoJICBhcyBpdCBjYW4gY2F1c2UgbGluZXMgYmVpbmcgdHJ1bmNhdGVkIG9uIFBERiBvdXRwdXQK
ClJldmlld2VkLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBr
ZXJuZWwub3JnPgotLS0KIC4uLi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJzL2V0aGVybmV0L2lu
dGVsL2k0MGUucnN0ICAgICAgIHwgNiArKystLS0KIC4uLi9uZXR3b3JraW5nL2RldmljZV9kcml2
ZXJzL2V0aGVybmV0L2ludGVsL2lhdmYucnN0ICAgICAgIHwgMiArLQogMiBmaWxlcyBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJzL2V0aGVybmV0L2ludGVsL2k0MGUucnN0IGIv
RG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJzL2V0aGVybmV0L2ludGVsL2k0
MGUucnN0CmluZGV4IDJkM2Y2YmQ5NjlhMi4uYWMzNWJkNDcyYmRjIDEwMDY0NAotLS0gYS9Eb2N1
bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2aWNlX2RyaXZlcnMvZXRoZXJuZXQvaW50ZWwvaTQwZS5y
c3QKKysrIGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJzL2V0aGVybmV0
L2ludGVsL2k0MGUucnN0CkBAIC00NjYsNyArNDY2LDcgQEAgbmV0d29yay4gUFRQIHN1cHBvcnQg
dmFyaWVzIGFtb25nIEludGVsIGRldmljZXMgdGhhdCBzdXBwb3J0IHRoaXMgZHJpdmVyLiBVc2UK
ICJldGh0b29sIC1UIDxuZXRkZXYgbmFtZT4iIHRvIGdldCBhIGRlZmluaXRpdmUgbGlzdCBvZiBQ
VFAgY2FwYWJpbGl0aWVzCiBzdXBwb3J0ZWQgYnkgdGhlIGRldmljZS4KIAotSUVFRSA4MDIuMWFk
IChRaW5RKcKgU3VwcG9ydAorSUVFRSA4MDIuMWFkIChRaW5RKSBTdXBwb3J0CiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KIFRoZSBJRUVFIDgwMi4xYWQgc3RhbmRhcmQsIGluZm9ybWFsbHkg
a25vd24gYXMgUWluUSwgYWxsb3dzIGZvciBtdWx0aXBsZSBWTEFOCiBJRHMgd2l0aGluIGEgc2lu
Z2xlIEV0aGVybmV0IGZyYW1lLiBWTEFOIElEcyBhcmUgc29tZXRpbWVzIHJlZmVycmVkIHRvIGFz
CkBAIC01MjMsOCArNTIzLDggQEAgb2YgYSBwb3J0J3MgYmFuZHdpZHRoIChzaG91bGQgaXQgYmUg
YXZhaWxhYmxlKS4gVGhlIHN1bSBvZiBhbGwgdGhlIHZhbHVlcyBmb3IKIE1heGltdW0gQmFuZHdp
ZHRoIGlzIG5vdCByZXN0cmljdGVkLCBiZWNhdXNlIG5vIG1vcmUgdGhhbiAxMDAlIG9mIGEgcG9y
dCdzCiBiYW5kd2lkdGggY2FuIGV2ZXIgYmUgdXNlZC4KIAotTk9URTrCoFg3MTAvWFhWNzEwIGRl
dmljZXMgZmFpbCB0byBlbmFibGUgTWF4IFZGcyAoNjQpIHdoZW4gTXVsdGlwbGUgRnVuY3Rpb25z
Ci1wZXIgUG9ydCAoTUZQKcKgYW5kIFNSLUlPViBhcmUgZW5hYmxlZC4gQW4gZXJyb3IgZnJvbSBp
NDBlIGlzIGxvZ2dlZCB0aGF0IHNheXMKK05PVEU6IFg3MTAvWFhWNzEwIGRldmljZXMgZmFpbCB0
byBlbmFibGUgTWF4IFZGcyAoNjQpIHdoZW4gTXVsdGlwbGUgRnVuY3Rpb25zCitwZXIgUG9ydCAo
TUZQKSBhbmQgU1ItSU9WIGFyZSBlbmFibGVkLiBBbiBlcnJvciBmcm9tIGk0MGUgaXMgbG9nZ2Vk
IHRoYXQgc2F5cwogImFkZCB2c2kgZmFpbGVkIGZvciBWRiBOLCBhcV9lcnIgMTYiLiBUbyB3b3Jr
YXJvdW5kIHRoZSBpc3N1ZSwgZW5hYmxlIGxlc3MgdGhhbgogNjQgdmlydHVhbCBmdW5jdGlvbnMg
KFZGcykuCiAKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9kZXZpY2VfZHJp
dmVycy9ldGhlcm5ldC9pbnRlbC9pYXZmLnJzdCBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9k
ZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9pYXZmLnJzdAppbmRleCAyNTMzMGI3YjUxNjgu
LjE1MWFmMGE4ZGE5YyAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2Rldmlj
ZV9kcml2ZXJzL2V0aGVybmV0L2ludGVsL2lhdmYucnN0CisrKyBiL0RvY3VtZW50YXRpb24vbmV0
d29ya2luZy9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9pYXZmLnJzdApAQCAtMTEzLDcg
KzExMyw3IEBAIHdoaWNoIHRoZSBBVkYgaXMgYXNzb2NpYXRlZC4gVGhlIGZvbGxvd2luZyBhcmUg
YmFzZSBtb2RlIGZlYXR1cmVzOgogLSBBVkYgZGV2aWNlIElECiAtIEhXIG1haWxib3ggaXMgdXNl
ZCBmb3IgVkYgdG8gUEYgY29tbXVuaWNhdGlvbnMgKGluY2x1ZGluZyBvbiBXaW5kb3dzKQogCi1J
RUVFIDgwMi4xYWQgKFFpblEpwqBTdXBwb3J0CitJRUVFIDgwMi4xYWQgKFFpblEpIFN1cHBvcnQK
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogVGhlIElFRUUgODAyLjFhZCBzdGFuZGFyZCwg
aW5mb3JtYWxseSBrbm93biBhcyBRaW5RLCBhbGxvd3MgZm9yIG11bHRpcGxlIFZMQU4KIElEcyB3
aXRoaW4gYSBzaW5nbGUgRXRoZXJuZXQgZnJhbWUuIFZMQU4gSURzIGFyZSBzb21ldGltZXMgcmVm
ZXJyZWQgdG8gYXMKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
