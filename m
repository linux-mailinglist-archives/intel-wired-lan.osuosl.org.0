Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37ED2381DE3
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 May 2021 12:18:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F29E4021C;
	Sun, 16 May 2021 10:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 42BCybLF79_X; Sun, 16 May 2021 10:18:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81F4F40133;
	Sun, 16 May 2021 10:18:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1682F1BF332
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 May 2021 10:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 587C36058B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 May 2021 10:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OMfOX2SWfD2p for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 May 2021 10:18:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C579D60782
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 May 2021 10:18:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 79394611CC;
 Sun, 16 May 2021 10:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621160317;
 bh=SMT4rzTFUsUUFwX28Tw+35D0iDjQAGtKW8R9r//yWxI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EQsKL4o4vRQLmhkHRO1w4TTbVFhi1nTLa4JrJnUyGAQWAiS17ACBTrhK058a6KRc/
 wml5C011SoSeXxdIyjaPHR53aSl+SgUEIs+FArB43+sbDqGWz8Fg/jrn//dB9x7lCR
 eW14ypC01j46CBTfxClsIs36GqHTsMFvrxyelSPXetjFuR65+4At3pknCtEDcdyB36
 5UE8X9BxIuI6p3VN5Q2cOQZc9To3tXSkOPKKFJdUr7aQUfynS07S12YAErBALwGyzZ
 g7XoQBkE4JDWxznPXCtJQNblgrfDnXBgqCJqHMd1UxQ7qx1TNw/AccTZFTKBGjFoG7
 avKFMR0GXZTTg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liDr1-003o8q-JL; Sun, 16 May 2021 12:18:35 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Sun, 16 May 2021 12:18:28 +0200
Message-Id: <23247f10ab58ae1b54ac368f8a2d2769562adcf4.1621159997.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1621159997.git.mchehab+huawei@kernel.org>
References: <cover.1621159997.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 11/16] docs: networking:
 device_drivers: replace some characters
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

VGhlIGNvbnZlcnNpb24gdG9vbHMgdXNlZCBkdXJpbmcgRG9jQm9vay9MYVRlWC9odG1sL01hcmtk
b3duLT5SZVNUCmNvbnZlcnNpb24gYW5kIHNvbWUgY3V0LWFuZC1wYXN0ZWQgdGV4dCBjb250YWlu
IHNvbWUgY2hhcmFjdGVycyB0aGF0CmFyZW4ndCBlYXNpbHkgcmVhY2hhYmxlIG9uIHN0YW5kYXJk
IGtleWJvYXJkcyBhbmQvb3IgY291bGQgY2F1c2UKdHJvdWJsZXMgd2hlbiBwYXJzZWQgYnkgdGhl
IGRvY3VtZW50YXRpb24gYnVpbGQgc3lzdGVtLgoKUmVwbGFjZSB0aGUgb2NjdXJlbmNlcyBvZiB0
aGUgZm9sbG93aW5nIGNoYXJhY3RlcnM6CgoJLSBVKzAwYTAgKCfCoCcpOiBOTy1CUkVBSyBTUEFD
RQoJICBhcyBpdCBjYW4gY2F1c2UgbGluZXMgYmVpbmcgdHJ1bmNhdGVkIG9uIFBERiBvdXRwdXQK
ClNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2Vy
bmVsLm9yZz4KLS0tCiAuLi4vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRl
bC9pNDBlLnJzdCAgICAgICB8IDYgKysrLS0tCiAuLi4vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVy
cy9ldGhlcm5ldC9pbnRlbC9pYXZmLnJzdCAgICAgICB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9pNDBlLnJzdCBiL0Rv
Y3VtZW50YXRpb24vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9pNDBl
LnJzdAppbmRleCAyZDNmNmJkOTY5YTIuLmFjMzViZDQ3MmJkYyAxMDA2NDQKLS0tIGEvRG9jdW1l
bnRhdGlvbi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJzL2V0aGVybmV0L2ludGVsL2k0MGUucnN0
CisrKyBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9p
bnRlbC9pNDBlLnJzdApAQCAtNDY2LDcgKzQ2Niw3IEBAIG5ldHdvcmsuIFBUUCBzdXBwb3J0IHZh
cmllcyBhbW9uZyBJbnRlbCBkZXZpY2VzIHRoYXQgc3VwcG9ydCB0aGlzIGRyaXZlci4gVXNlCiAi
ZXRodG9vbCAtVCA8bmV0ZGV2IG5hbWU+IiB0byBnZXQgYSBkZWZpbml0aXZlIGxpc3Qgb2YgUFRQ
IGNhcGFiaWxpdGllcwogc3VwcG9ydGVkIGJ5IHRoZSBkZXZpY2UuCiAKLUlFRUUgODAyLjFhZCAo
UWluUSnCoFN1cHBvcnQKK0lFRUUgODAyLjFhZCAoUWluUSkgU3VwcG9ydAogLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiBUaGUgSUVFRSA4MDIuMWFkIHN0YW5kYXJkLCBpbmZvcm1hbGx5IGtu
b3duIGFzIFFpblEsIGFsbG93cyBmb3IgbXVsdGlwbGUgVkxBTgogSURzIHdpdGhpbiBhIHNpbmds
ZSBFdGhlcm5ldCBmcmFtZS4gVkxBTiBJRHMgYXJlIHNvbWV0aW1lcyByZWZlcnJlZCB0byBhcwpA
QCAtNTIzLDggKzUyMyw4IEBAIG9mIGEgcG9ydCdzIGJhbmR3aWR0aCAoc2hvdWxkIGl0IGJlIGF2
YWlsYWJsZSkuIFRoZSBzdW0gb2YgYWxsIHRoZSB2YWx1ZXMgZm9yCiBNYXhpbXVtIEJhbmR3aWR0
aCBpcyBub3QgcmVzdHJpY3RlZCwgYmVjYXVzZSBubyBtb3JlIHRoYW4gMTAwJSBvZiBhIHBvcnQn
cwogYmFuZHdpZHRoIGNhbiBldmVyIGJlIHVzZWQuCiAKLU5PVEU6wqBYNzEwL1hYVjcxMCBkZXZp
Y2VzIGZhaWwgdG8gZW5hYmxlIE1heCBWRnMgKDY0KSB3aGVuIE11bHRpcGxlIEZ1bmN0aW9ucwot
cGVyIFBvcnQgKE1GUCnCoGFuZCBTUi1JT1YgYXJlIGVuYWJsZWQuIEFuIGVycm9yIGZyb20gaTQw
ZSBpcyBsb2dnZWQgdGhhdCBzYXlzCitOT1RFOiBYNzEwL1hYVjcxMCBkZXZpY2VzIGZhaWwgdG8g
ZW5hYmxlIE1heCBWRnMgKDY0KSB3aGVuIE11bHRpcGxlIEZ1bmN0aW9ucworcGVyIFBvcnQgKE1G
UCkgYW5kIFNSLUlPViBhcmUgZW5hYmxlZC4gQW4gZXJyb3IgZnJvbSBpNDBlIGlzIGxvZ2dlZCB0
aGF0IHNheXMKICJhZGQgdnNpIGZhaWxlZCBmb3IgVkYgTiwgYXFfZXJyIDE2Ii4gVG8gd29ya2Fy
b3VuZCB0aGUgaXNzdWUsIGVuYWJsZSBsZXNzIHRoYW4KIDY0IHZpcnR1YWwgZnVuY3Rpb25zIChW
RnMpLgogCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2aWNlX2RyaXZl
cnMvZXRoZXJuZXQvaW50ZWwvaWF2Zi5yc3QgYi9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2
aWNlX2RyaXZlcnMvZXRoZXJuZXQvaW50ZWwvaWF2Zi5yc3QKaW5kZXggMjUzMzBiN2I1MTY4Li4x
NTFhZjBhOGRhOWMgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9kZXZpY2Vf
ZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9pYXZmLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL25ldHdv
cmtpbmcvZGV2aWNlX2RyaXZlcnMvZXRoZXJuZXQvaW50ZWwvaWF2Zi5yc3QKQEAgLTExMyw3ICsx
MTMsNyBAQCB3aGljaCB0aGUgQVZGIGlzIGFzc29jaWF0ZWQuIFRoZSBmb2xsb3dpbmcgYXJlIGJh
c2UgbW9kZSBmZWF0dXJlczoKIC0gQVZGIGRldmljZSBJRAogLSBIVyBtYWlsYm94IGlzIHVzZWQg
Zm9yIFZGIHRvIFBGIGNvbW11bmljYXRpb25zIChpbmNsdWRpbmcgb24gV2luZG93cykKIAotSUVF
RSA4MDIuMWFkIChRaW5RKcKgU3VwcG9ydAorSUVFRSA4MDIuMWFkIChRaW5RKSBTdXBwb3J0CiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIFRoZSBJRUVFIDgwMi4xYWQgc3RhbmRhcmQsIGlu
Zm9ybWFsbHkga25vd24gYXMgUWluUSwgYWxsb3dzIGZvciBtdWx0aXBsZSBWTEFOCiBJRHMgd2l0
aGluIGEgc2luZ2xlIEV0aGVybmV0IGZyYW1lLiBWTEFOIElEcyBhcmUgc29tZXRpbWVzIHJlZmVy
cmVkIHRvIGFzCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
