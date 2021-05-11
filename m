Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B7937AA37
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 17:07:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE48A405BF;
	Tue, 11 May 2021 15:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7TjkXI9nforJ; Tue, 11 May 2021 15:07:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98A174058F;
	Tue, 11 May 2021 15:07:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 139A81BF420
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 15:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01C76843D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 15:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UgZzv699hy3w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 15:01:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BAC684158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 15:01:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 78A5361396;
 Tue, 11 May 2021 15:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620745297;
 bh=qY7RgSbBhtJrOZl3S+BtvW9dnG8fpGtapUyyA8e+AFM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JtBCQQSYMVVyYLTTnMTsn/gslJON3WpDPHgBNkGTKUC1k9PthZjW/OtZ96o4H+cZF
 LwvTMrP2wBm39AI5tZe2DYm5TzfkSH3wCMfhhSKUCp3Iw30TLhZQlZg6yTDI0rVkJi
 Cp0YG0xjfKfWFj7NifyKLyxXtnvQGqKzeHggcdlsl+6fqVuIpydbl0xNhG7AzopSb5
 b2yXxyvknpNSQ51guwzH1CPbya2u0hd2x/3xRQdJu4EzB0fHupQUmL7jA2Yv4Sbm7W
 AAlNGDWF8NnmZKENg0iP/V3qjS9NI2YNnV/+NpYqoKRDAxL5ahcH3IT/OMZtIeve/g
 8oQTRSV4Rhzqw==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1lgTt7-000k1I-VT; Tue, 11 May 2021 17:01:33 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Tue, 11 May 2021 17:01:32 +0200
Message-Id: <95eb2a48d0ca3528780ce0dfce64359977fa8cb3.1620744606.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620744606.git.mchehab+huawei@kernel.org>
References: <cover.1620744606.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 11 May 2021 15:07:27 +0000
Subject: [Intel-wired-lan] [PATCH 5/5] docs: networking: device_drivers: fix
 bad usage of UTF-8 chars
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UHJvYmFibHkgYmVjYXVzZSB0aGUgb3JpZ2luYWwgZmlsZSB3YXMgcHJlLXByb2Nlc3NlZCBieSBz
b21lCnRvb2wsIGJvdGggaTQwZS5yc3QgYW5kIGlhdmYucnN0IGZpbGVzIGFyZSB1c2luZyB0aGlz
IGNoYXJhY3RlcjoKCgktIFUrMjAxMyAoJ+KAkycpOiBFTiBEQVNICgptZWFuaW5nIGFuIGh5cGhl
biB3aGVuIGNhbGxpbmcgYSBjb21tYW5kIGxpbmUgYXBwbGljYXRpb24sIHdoaWNoCmlzIG9idmlv
dXNseSB3cm9uZy4gU28sIHJlcGxhY2UgdGhlbSBieSBhbiBoeXBoZW4sIGVuc3VyaW5nCnRoYXQg
aXQgd2lsbCBiZSBwcm9wZXJseSBkaXNwbGF5ZWQgYXMgbGl0ZXJhbHMgd2hlbiBidWlsZGluZwp0
aGUgZG9jdW1lbnRhdGlvbi4KClNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8
bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4KLS0tCiAuLi4vbmV0d29ya2luZy9kZXZpY2VfZHJp
dmVycy9ldGhlcm5ldC9pbnRlbC9pNDBlLnJzdCAgICAgICAgIHwgNCArKy0tCiAuLi4vbmV0d29y
a2luZy9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9pYXZmLnJzdCAgICAgICAgIHwgMiAr
LQogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJzL2V0aGVybmV0
L2ludGVsL2k0MGUucnN0IGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJz
L2V0aGVybmV0L2ludGVsL2k0MGUucnN0CmluZGV4IDhhOWIxODU3MzY4OC4uMmQzZjZiZDk2OWEy
IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2aWNlX2RyaXZlcnMvZXRo
ZXJuZXQvaW50ZWwvaTQwZS5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2Rldmlj
ZV9kcml2ZXJzL2V0aGVybmV0L2ludGVsL2k0MGUucnN0CkBAIC0xNzMsNyArMTczLDcgQEAgRGly
ZWN0b3IgcnVsZSBpcyBhZGRlZCBmcm9tIGV0aHRvb2wgKFNpZGViYW5kIGZpbHRlciksIEFUUiBp
cyB0dXJuZWQgb2ZmIGJ5IHRoZQogZHJpdmVyLiBUbyByZS1lbmFibGUgQVRSLCB0aGUgc2lkZWJh
bmQgY2FuIGJlIGRpc2FibGVkIHdpdGggdGhlIGV0aHRvb2wgLUsKIG9wdGlvbi4gRm9yIGV4YW1w
bGU6OgogCi0gIGV0aHRvb2wg4oCTSyBbYWRhcHRlcl0gbnR1cGxlIFtvZmZ8b25dCisgIGV0aHRv
b2wgLUsgW2FkYXB0ZXJdIG50dXBsZSBbb2ZmfG9uXQogCiBJZiBzaWRlYmFuZCBpcyByZS1lbmFi
bGVkIGFmdGVyIEFUUiBpcyByZS1lbmFibGVkLCBBVFIgcmVtYWlucyBlbmFibGVkIHVudGlsIGEK
IFRDUC1JUCBmbG93IGlzIGFkZGVkLiBXaGVuIGFsbCBUQ1AtSVAgc2lkZWJhbmQgcnVsZXMgYXJl
IGRlbGV0ZWQsIEFUUiBpcwpAQCAtNjg4LDcgKzY4OCw3IEBAIHNoYXBlciBid19ybGltaXQ6IGZv
ciBlYWNoIHRjLCBzZXRzIG1pbmltdW0gYW5kIG1heGltdW0gYmFuZHdpZHRoIHJhdGVzLgogVG90
YWxzIG11c3QgYmUgZXF1YWwgb3IgbGVzcyB0aGFuIHBvcnQgc3BlZWQuCiAKIEZvciBleGFtcGxl
OiBtaW5fcmF0ZSAxR2JpdCAzR2JpdDogVmVyaWZ5IGJhbmR3aWR0aCBsaW1pdCB1c2luZyBuZXR3
b3JrCi1tb25pdG9yaW5nIHRvb2xzIHN1Y2ggYXMgaWZzdGF0IG9yIHNhciDigJNuIERFViBbaW50
ZXJ2YWxdIFtudW1iZXIgb2Ygc2FtcGxlc10KK21vbml0b3JpbmcgdG9vbHMgc3VjaCBhcyBgaWZz
dGF0YCBvciBgc2FyIC1uIERFViBbaW50ZXJ2YWxdIFtudW1iZXIgb2Ygc2FtcGxlc11gCiAKIDIu
IEVuYWJsZSBIVyBUQyBvZmZsb2FkIG9uIGludGVyZmFjZTo6CiAKZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9pYXZmLnJz
dCBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRl
bC9pYXZmLnJzdAppbmRleCA1MmUwMzdiMTFjOTcuLjI1MzMwYjdiNTE2OCAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJzL2V0aGVybmV0L2ludGVsL2lh
dmYucnN0CisrKyBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9ldGhl
cm5ldC9pbnRlbC9pYXZmLnJzdApAQCAtMTc5LDcgKzE3OSw3IEBAIHNoYXBlciBid19ybGltaXQ6
IGZvciBlYWNoIHRjLCBzZXRzIG1pbmltdW0gYW5kIG1heGltdW0gYmFuZHdpZHRoIHJhdGVzLgog
VG90YWxzIG11c3QgYmUgZXF1YWwgb3IgbGVzcyB0aGFuIHBvcnQgc3BlZWQuCiAKIEZvciBleGFt
cGxlOiBtaW5fcmF0ZSAxR2JpdCAzR2JpdDogVmVyaWZ5IGJhbmR3aWR0aCBsaW1pdCB1c2luZyBu
ZXR3b3JrCi1tb25pdG9yaW5nIHRvb2xzIHN1Y2ggYXMgaWZzdGF0IG9yIHNhciDigJNuIERFViBb
aW50ZXJ2YWxdIFtudW1iZXIgb2Ygc2FtcGxlc10KK21vbml0b3JpbmcgdG9vbHMgc3VjaCBhcyBg
YGlmc3RhdGBgIG9yIGBgc2FyIC1uIERFViBbaW50ZXJ2YWxdIFtudW1iZXIgb2Ygc2FtcGxlc11g
YAogCiBOT1RFOgogICBTZXR0aW5nIHVwIGNoYW5uZWxzIHZpYSBldGh0b29sIChldGh0b29sIC1M
KSBpcyBub3Qgc3VwcG9ydGVkIHdoZW4gdGhlCi0tIAoyLjMwLjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
