Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0A21C3862
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 13:38:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4375386978;
	Mon,  4 May 2020 11:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0aliKjjeHze6; Mon,  4 May 2020 11:38:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AF238699E;
	Mon,  4 May 2020 11:38:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24D461BF356
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 11:38:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1EA808693B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 11:38:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QTYbo-wCHnFV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2020 11:38:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 786AA864EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 11:38:23 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id y25so5356005pfn.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 04 May 2020 04:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pWvsOuMLvH1eim1ftEnnjksk3Cs+CaSVyKpefRhNORY=;
 b=JEL9AjMQW5/QX9/6I1db2zjBz/Fjz+rwJJJdyjIBreux691E4ODhJPzVOIkiY9NA7l
 TMoLfE3B241ZXr24sMj3wX/qiXzrCqoSTB1MGzqSI1Yn77AI5i6gLlbYaqldAxN/Z7p5
 oY8i3RBO7j+pR5A/n1j3l5U/deqtfkxWnq9pjxU9IiVZwvvAcrzeSgtmO/C69d4yVAg3
 E7UaMGPve93bhwGWZpshTuEYsKCdA/aup6XSB/s52HMV31KlygsejGJEF3/YJcClvoET
 VKVjtD3meHOSeLZ2mONrA2611yQx+9odLn2HOiAdgA4rTl7nXNFyuRuhJPuV83+nVk3h
 r0Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pWvsOuMLvH1eim1ftEnnjksk3Cs+CaSVyKpefRhNORY=;
 b=njesjlSea7hSjBgSaJZJjf3NcsgG5XPx9a7ziuWZ47iX7PTh0L2S6Udv5fHQPkI5Tr
 tAdHnNY5DUvzT5HIuhackvx1wwDlBICKn1pROLRHjP+VQtesxL/+7AYN0LRtJ/XfMMI/
 TDAxxW9Ecl9GTrCkKZiVFQDIUun0x8fTyc0UmPD2qN5khfW5OsBRs2VimCpSIQ0OuKG8
 JCypAdJO1vY+z8Eq3FDtWPZ72vSypD0vFtHvd9GeLO99Poi7PVI9bVHnmukAQbc/ZqnX
 rKQuHSwHpTYAM4fyfTda6n1UUD3CkwzKlI3oz9kQr9Dt0Hbu6BmvfBiiHn1X7T4lnarZ
 psPw==
X-Gm-Message-State: AGi0PuYh/K/2xWnc6NHVxkL2FV+EgrYWnrIe5tj06xLvdE+OdakUqNGD
 iN+OQUanXV+cQkc6YjddoYQ=
X-Google-Smtp-Source: APiQypKNdSuYFqEM5tpupZV/OyFkXWZRiHrCykfhghby6sL8OGn1enMYUHknXNIkePLoGusDgZkPCA==
X-Received: by 2002:aa7:9891:: with SMTP id r17mr16981411pfl.5.1588592302755; 
 Mon, 04 May 2020 04:38:22 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id x185sm8650789pfx.155.2020.05.04.04.38.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 04:38:22 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, davem@davemloft.net, kuba@kernel.org,
 hawk@kernel.org, john.fastabend@gmail.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com, jonathan.lemon@gmail.com
Date: Mon,  4 May 2020 13:37:08 +0200
Message-Id: <20200504113716.7930-7-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200504113716.7930-1-bjorn.topel@gmail.com>
References: <20200504113716.7930-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next 06/13] i40e: separate kernel
 allocated rx_bi rings from AF_XDP rings
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
Cc: maximmi@mellanox.com,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKQ29udGludWluZyB0
aGUgcGF0aCB0byBzdXBwb3J0IE1FTV9UWVBFX1hTS19CVUZGX1BPT0wsIHRoZSBBRl9YRFAKemVy
by1jb3B5L3NrX2J1ZmYgcnhfYmkgcmluZ3MgYXJlIG5vdyBzZXBhcmF0ZS4gRnVuY3Rpb25zIHRv
IHByb3Blcmx5CmFsbG9jYXRlIHRoZSBkaWZmZXJlbnQgcmluZ3MgYXJlIGFkZGVkIGFzIHdlbGwu
CgpDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcKU2lnbmVkLW9mZi1ieTogQmrD
tnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgICB8ICAgNyArKwogZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYyAgIHwgMTE5ICsrKysrKystLS0tLS0tLS0tLQogZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguaCAgIHwgIDIyICsrLS0KIC4u
Li9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeF9jb21tb24uaCAgICB8ICA0MCArKysrKy0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eXBlLmggICB8ICAgNSArLQog
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jICAgIHwgIDc0ICsrKysr
Ky0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmggICAgfCAg
IDIgKwogNyBmaWxlcyBjaGFuZ2VkLCAxNDIgaW5zZXJ0aW9ucygrKSwgMTI3IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWlu
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCmluZGV4IGQ2
YjJkYjRmMmM2NS4uM2UxNjk1YmI4MjYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9tYWluLmMKQEAgLTMyNjAsOCArMzI2MCwxMiBAQCBzdGF0aWMgaW50IGk0MGVf
Y29uZmlndXJlX3J4X3Jpbmcoc3RydWN0IGk0MGVfcmluZyAqcmluZykKIAlpZiAocmluZy0+dnNp
LT50eXBlID09IEk0MEVfVlNJX01BSU4pCiAJCXhkcF9yeHFfaW5mb191bnJlZ19tZW1fbW9kZWwo
JnJpbmctPnhkcF9yeHEpOwogCisJa2ZyZWUocmluZy0+cnhfYmkpOwogCXJpbmctPnhza191bWVt
ID0gaTQwZV94c2tfdW1lbShyaW5nKTsKIAlpZiAocmluZy0+eHNrX3VtZW0pIHsKKwkJcmV0ID0g
aTQwZV9hbGxvY19yeF9iaV96YyhyaW5nKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CiAJ
CXJpbmctPnJ4X2J1Zl9sZW4gPSByaW5nLT54c2tfdW1lbS0+Y2h1bmtfc2l6ZV9ub2hyIC0KIAkJ
CQkgICBYRFBfUEFDS0VUX0hFQURST09NOwogCQkvKiBGb3IgQUZfWERQIFpDLCB3ZSBkaXNhbGxv
dyBwYWNrZXRzIHRvIHNwYW4gb24KQEAgLTMyODAsNiArMzI4NCw5IEBAIHN0YXRpYyBpbnQgaTQw
ZV9jb25maWd1cmVfcnhfcmluZyhzdHJ1Y3QgaTQwZV9yaW5nICpyaW5nKQogCQkJIHJpbmctPnF1
ZXVlX2luZGV4KTsKIAogCX0gZWxzZSB7CisJCXJldCA9IGk0MGVfYWxsb2NfcnhfYmkocmluZyk7
CisJCWlmIChyZXQpCisJCQlyZXR1cm4gcmV0OwogCQlyaW5nLT5yeF9idWZfbGVuID0gdnNpLT5y
eF9idWZfbGVuOwogCQlpZiAocmluZy0+dnNpLT50eXBlID09IEk0MEVfVlNJX01BSU4pIHsKIAkJ
CXJldCA9IHhkcF9yeHFfaW5mb19yZWdfbWVtX21vZGVsKCZyaW5nLT54ZHBfcnhxLApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMKaW5kZXggNThkYWJhOGZhYmM4
Li5mMDYzZGY2MjM0NDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV90eHJ4LmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X3R4cnguYwpAQCAtNTIxLDI4ICs1MjEsMjkgQEAgaW50IGk0MGVfYWRkX2RlbF9mZGlyKHN0cnVj
dCBpNDBlX3ZzaSAqdnNpLAogLyoqCiAgKiBpNDBlX2ZkX2hhbmRsZV9zdGF0dXMgLSBjaGVjayB0
aGUgUHJvZ3JhbW1pbmcgU3RhdHVzIGZvciBGRAogICogQHJ4X3Jpbmc6IHRoZSBSeCByaW5nIGZv
ciB0aGlzIGRlc2NyaXB0b3IKLSAqIEByeF9kZXNjOiB0aGUgUnggZGVzY3JpcHRvciBmb3IgcHJv
Z3JhbW1pbmcgU3RhdHVzLCBub3QgYSBwYWNrZXQgZGVzY3JpcHRvci4KKyAqIEBxd29yZDBfcmF3
OiBxd29yZDAKKyAqIEBxd29yZDE6IHF3b3JkMSBhZnRlciBsZV90b19jcHUKICAqIEBwcm9nX2lk
OiB0aGUgaWQgb3JpZ2luYWxseSB1c2VkIGZvciBwcm9ncmFtbWluZwogICoKICAqIFRoaXMgaXMg
dXNlZCB0byB2ZXJpZnkgaWYgdGhlIEZEIHByb2dyYW1taW5nIG9yIGludmFsaWRhdGlvbgogICog
cmVxdWVzdGVkIGJ5IFNXIHRvIHRoZSBIVyBpcyBzdWNjZXNzZnVsIG9yIG5vdCBhbmQgdGFrZSBh
Y3Rpb25zIGFjY29yZGluZ2x5LgogICoqLwotdm9pZCBpNDBlX2ZkX2hhbmRsZV9zdGF0dXMoc3Ry
dWN0IGk0MGVfcmluZyAqcnhfcmluZywKLQkJCSAgIHVuaW9uIGk0MGVfcnhfZGVzYyAqcnhfZGVz
YywgdTggcHJvZ19pZCkKK3ZvaWQgaTQwZV9mZF9oYW5kbGVfc3RhdHVzKHN0cnVjdCBpNDBlX3Jp
bmcgKnJ4X3JpbmcsIHU2NCBxd29yZDBfcmF3LAorCQkJICAgdTY0IHF3b3JkMSwgdTggcHJvZ19p
ZCkKIHsKIAlzdHJ1Y3QgaTQwZV9wZiAqcGYgPSByeF9yaW5nLT52c2ktPmJhY2s7CiAJc3RydWN0
IHBjaV9kZXYgKnBkZXYgPSBwZi0+cGRldjsKKwlzdHJ1Y3QgaTQwZV8zMmJfcnhfd2JfcXcwICpx
dzA7CiAJdTMyIGZjbnRfcHJvZywgZmNudF9hdmFpbDsKIAl1MzIgZXJyb3I7Ci0JdTY0IHF3Owog
Ci0JcXcgPSBsZTY0X3RvX2NwdShyeF9kZXNjLT53Yi5xd29yZDEuc3RhdHVzX2Vycm9yX2xlbik7
Ci0JZXJyb3IgPSAocXcgJiBJNDBFX1JYX1BST0dfU1RBVFVTX0RFU0NfUVcxX0VSUk9SX01BU0sp
ID4+CisJcXcwID0gKHN0cnVjdCBpNDBlXzMyYl9yeF93Yl9xdzAgKikmcXdvcmQwX3JhdzsKKwll
cnJvciA9IChxd29yZDEgJiBJNDBFX1JYX1BST0dfU1RBVFVTX0RFU0NfUVcxX0VSUk9SX01BU0sp
ID4+CiAJCUk0MEVfUlhfUFJPR19TVEFUVVNfREVTQ19RVzFfRVJST1JfU0hJRlQ7CiAKIAlpZiAo
ZXJyb3IgPT0gQklUKEk0MEVfUlhfUFJPR19TVEFUVVNfREVTQ19GRF9UQkxfRlVMTF9TSElGVCkp
IHsKLQkJcGYtPmZkX2ludiA9IGxlMzJfdG9fY3B1KHJ4X2Rlc2MtPndiLnF3b3JkMC5oaV9kd29y
ZC5mZF9pZCk7Ci0JCWlmICgocnhfZGVzYy0+d2IucXdvcmQwLmhpX2R3b3JkLmZkX2lkICE9IDAp
IHx8CisJCXBmLT5mZF9pbnYgPSBsZTMyX3RvX2NwdShxdzAtPmhpX2R3b3JkLmZkX2lkKTsKKwkJ
aWYgKHF3MC0+aGlfZHdvcmQuZmRfaWQgIT0gMCB8fAogCQkgICAgKEk0MEVfREVCVUdfRkQgJiBw
Zi0+aHcuZGVidWdfbWFzaykpCiAJCQlkZXZfd2FybigmcGRldi0+ZGV2LCAibnR1cGxlIGZpbHRl
ciBsb2MgPSAlZCwgY291bGQgbm90IGJlIGFkZGVkXG4iLAogCQkJCSBwZi0+ZmRfaW52KTsKQEAg
LTU2MCw3ICs1NjEsNyBAQCB2b2lkIGk0MGVfZmRfaGFuZGxlX3N0YXR1cyhzdHJ1Y3QgaTQwZV9y
aW5nICpyeF9yaW5nLAogCQkvKiBzdG9yZSB0aGUgY3VycmVudCBhdHIgZmlsdGVyIGNvdW50ICov
CiAJCXBmLT5mZF9hdHJfY250ID0gaTQwZV9nZXRfY3VycmVudF9hdHJfY250KHBmKTsKIAotCQlp
ZiAoKHJ4X2Rlc2MtPndiLnF3b3JkMC5oaV9kd29yZC5mZF9pZCA9PSAwKSAmJgorCQlpZiAocXcw
LT5oaV9kd29yZC5mZF9pZCA9PSAwICYmCiAJCSAgICB0ZXN0X2JpdChfX0k0MEVfRkRfU0JfQVVU
T19ESVNBQkxFRCwgcGYtPnN0YXRlKSkgewogCQkJLyogVGhlc2Ugc2V0X2JpdCgpIGNhbGxzIGFy
ZW4ndCBhdG9taWMgd2l0aCB0aGUKIAkJCSAqIHRlc3RfYml0KCkgaGVyZSwgYnV0IHdvcnNlIGNh
c2Ugd2UgcG90ZW50aWFsbHkKQEAgLTU4OSw3ICs1OTAsNyBAQCB2b2lkIGk0MGVfZmRfaGFuZGxl
X3N0YXR1cyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAogCX0gZWxzZSBpZiAoZXJyb3IgPT0g
QklUKEk0MEVfUlhfUFJPR19TVEFUVVNfREVTQ19OT19GRF9FTlRSWV9TSElGVCkpIHsKIAkJaWYg
KEk0MEVfREVCVUdfRkQgJiBwZi0+aHcuZGVidWdfbWFzaykKIAkJCWRldl9pbmZvKCZwZGV2LT5k
ZXYsICJudHVwbGUgZmlsdGVyIGZkX2lkID0gJWQsIGNvdWxkIG5vdCBiZSByZW1vdmVkXG4iLAot
CQkJCSByeF9kZXNjLT53Yi5xd29yZDAuaGlfZHdvcmQuZmRfaWQpOworCQkJCSBxdzAtPmhpX2R3
b3JkLmZkX2lkKTsKIAl9CiB9CiAKQEAgLTEyMzIsMjkgKzEyMzMsMTAgQEAgc3RhdGljIHZvaWQg
aTQwZV9yZXVzZV9yeF9wYWdlKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCiB9CiAKIC8qKgot
ICogaTQwZV9yeF9pc19wcm9ncmFtbWluZ19zdGF0dXMgLSBjaGVjayBmb3IgcHJvZ3JhbW1pbmcg
c3RhdHVzIGRlc2NyaXB0b3IKLSAqIEBxdzogcXdvcmQgcmVwcmVzZW50aW5nIHN0YXR1c19lcnJv
cl9sZW4gaW4gQ1BVIG9yZGVyaW5nCi0gKgotICogVGhlIHZhbHVlIG9mIGluIHRoZSBkZXNjcmlw
dG9yIGxlbmd0aCBmaWVsZCBpbmRpY2F0ZSBpZiB0aGlzCi0gKiBpcyBhIHByb2dyYW1taW5nIHN0
YXR1cyBkZXNjcmlwdG9yIGZvciBmbG93IGRpcmVjdG9yIG9yIEZDb0UKLSAqIGJ5IHRoZSB2YWx1
ZSBvZiBJNDBFX1JYX1BST0dfU1RBVFVTX0RFU0NfTEVOR1RILCBvdGhlcndpc2UKLSAqIGl0IGlz
IGEgcGFja2V0IGRlc2NyaXB0b3IuCi0gKiovCi1zdGF0aWMgaW5saW5lIGJvb2wgaTQwZV9yeF9p
c19wcm9ncmFtbWluZ19zdGF0dXModTY0IHF3KQotewotCS8qIFRoZSBSeCBmaWx0ZXIgcHJvZ3Jh
bW1pbmcgc3RhdHVzIGFuZCBTUEggYml0IG9jY3VweSB0aGUgc2FtZQotCSAqIHNwb3QgaW4gdGhl
IGRlc2NyaXB0b3IuIFNpbmNlIHdlIGRvbid0IHN1cHBvcnQgcGFja2V0IHNwbGl0IHdlCi0JICog
Y2FuIGp1c3QgcmV1c2UgdGhlIGJpdCBhcyBhbiBpbmRpY2F0aW9uIHRoYXQgdGhpcyBpcyBhCi0J
ICogcHJvZ3JhbW1pbmcgc3RhdHVzIGRlc2NyaXB0b3IuCi0JICovCi0JcmV0dXJuIHF3ICYgSTQw
RV9SWERfUVcxX0xFTkdUSF9TUEhfTUFTSzsKLX0KLQotLyoqCi0gKiBpNDBlX2NsZWFuX3Byb2dy
YW1taW5nX3N0YXR1cyAtIHRyeSBjbGVhbiB0aGUgcHJvZ3JhbW1pbmcgc3RhdHVzIGRlc2NyaXB0
b3IKKyAqIGk0MGVfY2xlYW5fcHJvZ3JhbW1pbmdfc3RhdHVzIC0gY2xlYW4gdGhlIHByb2dyYW1t
aW5nIHN0YXR1cyBkZXNjcmlwdG9yCiAgKiBAcnhfcmluZzogdGhlIHJ4IHJpbmcgdGhhdCBoYXMg
dGhpcyBkZXNjcmlwdG9yCi0gKiBAcnhfZGVzYzogdGhlIHJ4IGRlc2NyaXB0b3Igd3JpdHRlbiBi
YWNrIGJ5IEhXCi0gKiBAcXc6IHF3b3JkIHJlcHJlc2VudGluZyBzdGF0dXNfZXJyb3JfbGVuIGlu
IENQVSBvcmRlcmluZworICogQHF3b3JkMDogcXdvcmQwCisgKiBAcXdvcmQxOiBxd29yZDEgcmVw
cmVzZW50aW5nIHN0YXR1c19lcnJvcl9sZW4gaW4gQ1BVIG9yZGVyaW5nCiAgKgogICogRmxvdyBk
aXJlY3RvciBzaG91bGQgaGFuZGxlIEZEX0ZJTFRFUl9TVEFUVVMgdG8gY2hlY2sgaXRzIGZpbHRl
ciBwcm9ncmFtbWluZwogICogc3RhdHVzIGJlaW5nIHN1Y2Nlc3NmdWwgb3Igbm90IGFuZCB0YWtl
IGFjdGlvbnMgYWNjb3JkaW5nbHkuIEZDb0Ugc2hvdWxkCkBAIC0xMjYyLDM0ICsxMjQ0LDE2IEBA
IHN0YXRpYyBpbmxpbmUgYm9vbCBpNDBlX3J4X2lzX3Byb2dyYW1taW5nX3N0YXR1cyh1NjQgcXcp
CiAgKgogICogUmV0dXJucyBhbiBpNDBlX3J4X2J1ZmZlciB0byByZXVzZSBpZiB0aGUgY2xlYW51
cCBvY2N1cnJlZCwgb3RoZXJ3aXNlIE5VTEwuCiAgKiovCi1zdHJ1Y3QgaTQwZV9yeF9idWZmZXIg
Kmk0MGVfY2xlYW5fcHJvZ3JhbW1pbmdfc3RhdHVzKAotCXN0cnVjdCBpNDBlX3JpbmcgKnJ4X3Jp
bmcsCi0JdW5pb24gaTQwZV9yeF9kZXNjICpyeF9kZXNjLAotCXU2NCBxdykKK3ZvaWQgaTQwZV9j
bGVhbl9wcm9ncmFtbWluZ19zdGF0dXMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgdTY0IHF3
b3JkMF9yYXcsCisJCQkJICAgdTY0IHF3b3JkMSkKIHsKLQlzdHJ1Y3QgaTQwZV9yeF9idWZmZXIg
KnJ4X2J1ZmZlcjsKLQl1MzIgbnRjOwogCXU4IGlkOwogCi0JaWYgKCFpNDBlX3J4X2lzX3Byb2dy
YW1taW5nX3N0YXR1cyhxdykpCi0JCXJldHVybiBOVUxMOwotCi0JbnRjID0gcnhfcmluZy0+bmV4
dF90b19jbGVhbjsKLQotCS8qIGZldGNoLCB1cGRhdGUsIGFuZCBzdG9yZSBuZXh0IHRvIGNsZWFu
ICovCi0JcnhfYnVmZmVyID0gaTQwZV9yeF9iaShyeF9yaW5nLCBudGMrKyk7Ci0JbnRjID0gKG50
YyA8IHJ4X3JpbmctPmNvdW50KSA/IG50YyA6IDA7Ci0JcnhfcmluZy0+bmV4dF90b19jbGVhbiA9
IG50YzsKLQotCXByZWZldGNoKEk0MEVfUlhfREVTQyhyeF9yaW5nLCBudGMpKTsKLQotCWlkID0g
KHF3ICYgSTQwRV9SWF9QUk9HX1NUQVRVU19ERVNDX1FXMV9QUk9HSURfTUFTSykgPj4KKwlpZCA9
IChxd29yZDEgJiBJNDBFX1JYX1BST0dfU1RBVFVTX0RFU0NfUVcxX1BST0dJRF9NQVNLKSA+Pgog
CQkgIEk0MEVfUlhfUFJPR19TVEFUVVNfREVTQ19RVzFfUFJPR0lEX1NISUZUOwogCiAJaWYgKGlk
ID09IEk0MEVfUlhfUFJPR19TVEFUVVNfREVTQ19GRF9GSUxURVJfU1RBVFVTKQotCQlpNDBlX2Zk
X2hhbmRsZV9zdGF0dXMocnhfcmluZywgcnhfZGVzYywgaWQpOwotCi0JcmV0dXJuIHJ4X2J1ZmZl
cjsKKwkJaTQwZV9mZF9oYW5kbGVfc3RhdHVzKHJ4X3JpbmcsIHF3b3JkMF9yYXcsIHF3b3JkMSwg
aWQpOwogfQogCiAvKioKQEAgLTEzNDEsMTMgKzEzMDUsMjUgQEAgaW50IGk0MGVfc2V0dXBfdHhf
ZGVzY3JpcHRvcnMoc3RydWN0IGk0MGVfcmluZyAqdHhfcmluZykKIAlyZXR1cm4gLUVOT01FTTsK
IH0KIAoraW50IGk0MGVfYWxsb2NfcnhfYmkoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZykKK3sK
Kwl1bnNpZ25lZCBsb25nIHN6ID0gc2l6ZW9mKCpyeF9yaW5nLT5yeF9iaSkgKiByeF9yaW5nLT5j
b3VudDsKKworCXJ4X3JpbmctPnJ4X2JpID0ga3phbGxvYyhzeiwgR0ZQX0tFUk5FTCk7CisJcmV0
dXJuIHJ4X3JpbmctPnJ4X2JpID8gMCA6IC1FTk9NRU07Cit9CisKK3N0YXRpYyB2b2lkIGk0MGVf
Y2xlYXJfcnhfYmkoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZykKK3sKKwltZW1zZXQocnhfcmlu
Zy0+cnhfYmksIDAsIHNpemVvZigqcnhfcmluZy0+cnhfYmkpICogcnhfcmluZy0+Y291bnQpOwor
fQorCiAvKioKICAqIGk0MGVfY2xlYW5fcnhfcmluZyAtIEZyZWUgUnggYnVmZmVycwogICogQHJ4
X3Jpbmc6IHJpbmcgdG8gYmUgY2xlYW5lZAogICoqLwogdm9pZCBpNDBlX2NsZWFuX3J4X3Jpbmco
c3RydWN0IGk0MGVfcmluZyAqcnhfcmluZykKIHsKLQl1bnNpZ25lZCBsb25nIGJpX3NpemU7CiAJ
dTE2IGk7CiAKIAkvKiByaW5nIGFscmVhZHkgY2xlYXJlZCwgbm90aGluZyB0byBkbyAqLwpAQCAt
MTM5Myw4ICsxMzY5LDEwIEBAIHZvaWQgaTQwZV9jbGVhbl9yeF9yaW5nKHN0cnVjdCBpNDBlX3Jp
bmcgKnJ4X3JpbmcpCiAJfQogCiBza2lwX2ZyZWU6Ci0JYmlfc2l6ZSA9IHNpemVvZihzdHJ1Y3Qg
aTQwZV9yeF9idWZmZXIpICogcnhfcmluZy0+Y291bnQ7Ci0JbWVtc2V0KHJ4X3JpbmctPnJ4X2Jp
LCAwLCBiaV9zaXplKTsKKwlpZiAocnhfcmluZy0+eHNrX3VtZW0pCisJCWk0MGVfY2xlYXJfcnhf
YmlfemMocnhfcmluZyk7CisJZWxzZQorCQlpNDBlX2NsZWFyX3J4X2JpKHJ4X3JpbmcpOwogCiAJ
LyogWmVybyBvdXQgdGhlIGRlc2NyaXB0b3IgcmluZyAqLwogCW1lbXNldChyeF9yaW5nLT5kZXNj
LCAwLCByeF9yaW5nLT5zaXplKTsKQEAgLTE0MzUsMTUgKzE0MTMsNyBAQCB2b2lkIGk0MGVfZnJl
ZV9yeF9yZXNvdXJjZXMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZykKIGludCBpNDBlX3NldHVw
X3J4X2Rlc2NyaXB0b3JzKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcpCiB7CiAJc3RydWN0IGRl
dmljZSAqZGV2ID0gcnhfcmluZy0+ZGV2OwotCWludCBlcnIgPSAtRU5PTUVNOwotCWludCBiaV9z
aXplOwotCi0JLyogd2FybiBpZiB3ZSBhcmUgYWJvdXQgdG8gb3ZlcndyaXRlIHRoZSBwb2ludGVy
ICovCi0JV0FSTl9PTihyeF9yaW5nLT5yeF9iaSk7Ci0JYmlfc2l6ZSA9IHNpemVvZihzdHJ1Y3Qg
aTQwZV9yeF9idWZmZXIpICogcnhfcmluZy0+Y291bnQ7Ci0JcnhfcmluZy0+cnhfYmkgPSBremFs
bG9jKGJpX3NpemUsIEdGUF9LRVJORUwpOwotCWlmICghcnhfcmluZy0+cnhfYmkpCi0JCWdvdG8g
ZXJyOworCWludCBlcnI7CiAKIAl1NjRfc3RhdHNfaW5pdCgmcnhfcmluZy0+c3luY3ApOwogCkBA
IC0xNDU2LDcgKzE0MjYsNyBAQCBpbnQgaTQwZV9zZXR1cF9yeF9kZXNjcmlwdG9ycyhzdHJ1Y3Qg
aTQwZV9yaW5nICpyeF9yaW5nKQogCWlmICghcnhfcmluZy0+ZGVzYykgewogCQlkZXZfaW5mbyhk
ZXYsICJVbmFibGUgdG8gYWxsb2NhdGUgbWVtb3J5IGZvciB0aGUgUnggZGVzY3JpcHRvciByaW5n
LCBzaXplPSVkXG4iLAogCQkJIHJ4X3JpbmctPnNpemUpOwotCQlnb3RvIGVycjsKKwkJcmV0dXJu
IC1FTk9NRU07CiAJfQogCiAJcnhfcmluZy0+bmV4dF90b19hbGxvYyA9IDA7CkBAIC0xNDY4LDE2
ICsxNDM4LDEyIEBAIGludCBpNDBlX3NldHVwX3J4X2Rlc2NyaXB0b3JzKHN0cnVjdCBpNDBlX3Jp
bmcgKnJ4X3JpbmcpCiAJCWVyciA9IHhkcF9yeHFfaW5mb19yZWcoJnJ4X3JpbmctPnhkcF9yeHEs
IHJ4X3JpbmctPm5ldGRldiwKIAkJCQkgICAgICAgcnhfcmluZy0+cXVldWVfaW5kZXgpOwogCQlp
ZiAoZXJyIDwgMCkKLQkJCWdvdG8gZXJyOworCQkJcmV0dXJuIGVycjsKIAl9CiAKIAlyeF9yaW5n
LT54ZHBfcHJvZyA9IHJ4X3JpbmctPnZzaS0+eGRwX3Byb2c7CiAKIAlyZXR1cm4gMDsKLWVycjoK
LQlrZnJlZShyeF9yaW5nLT5yeF9iaSk7Ci0JcnhfcmluZy0+cnhfYmkgPSBOVUxMOwotCXJldHVy
biBlcnI7CiB9CiAKIC8qKgpAQCAtMjM3MCw5ICsyMzM2LDEyIEBAIHN0YXRpYyBpbnQgaTQwZV9j
bGVhbl9yeF9pcnEoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAkJICov
CiAJCWRtYV9ybWIoKTsKIAotCQlyeF9idWZmZXIgPSBpNDBlX2NsZWFuX3Byb2dyYW1taW5nX3N0
YXR1cyhyeF9yaW5nLCByeF9kZXNjLAotCQkJCQkJCSAgcXdvcmQpOwotCQlpZiAodW5saWtlbHko
cnhfYnVmZmVyKSkgeworCQlpZiAoaTQwZV9yeF9pc19wcm9ncmFtbWluZ19zdGF0dXMocXdvcmQp
KSB7CisJCQlpNDBlX2NsZWFuX3Byb2dyYW1taW5nX3N0YXR1cyhyeF9yaW5nLAorCQkJCQkJICAg
ICAgcnhfZGVzYy0+cmF3LnF3b3JkWzBdLAorCQkJCQkJICAgICAgcXdvcmQpOworCQkJcnhfYnVm
ZmVyID0gaTQwZV9yeF9iaShyeF9yaW5nLCByeF9yaW5nLT5uZXh0X3RvX2NsZWFuKTsKKwkJCWk0
MGVfaW5jX250YyhyeF9yaW5nKTsKIAkJCWk0MGVfcmV1c2VfcnhfcGFnZShyeF9yaW5nLCByeF9i
dWZmZXIpOwogCQkJY2xlYW5lZF9jb3VudCsrOwogCQkJY29udGludWU7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5oIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguaAppbmRleCAzNmQzN2YzMWEyODcuLmQzNDM0
OThlOGRlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X3R4cnguaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5o
CkBAIC0yOTYsMTcgKzI5NiwxNSBAQCBzdHJ1Y3QgaTQwZV90eF9idWZmZXIgewogCiBzdHJ1Y3Qg
aTQwZV9yeF9idWZmZXIgewogCWRtYV9hZGRyX3QgZG1hOwotCXVuaW9uIHsKLQkJc3RydWN0IHsK
LQkJCXN0cnVjdCBwYWdlICpwYWdlOwotCQkJX191MzIgcGFnZV9vZmZzZXQ7Ci0JCQlfX3UxNiBw
YWdlY250X2JpYXM7Ci0JCX07Ci0JCXN0cnVjdCB7Ci0JCQl2b2lkICphZGRyOwotCQkJdTY0IGhh
bmRsZTsKLQkJfTsKLQl9OworCXN0cnVjdCBwYWdlICpwYWdlOworCV9fdTMyIHBhZ2Vfb2Zmc2V0
OworCV9fdTE2IHBhZ2VjbnRfYmlhczsKK307CisKK3N0cnVjdCBpNDBlX3J4X2J1ZmZlcl96YyB7
CisJZG1hX2FkZHJfdCBkbWE7CisJdm9pZCAqYWRkcjsKKwl1NjQgaGFuZGxlOwogfTsKIAogc3Ry
dWN0IGk0MGVfcXVldWVfc3RhdHMgewpAQCAtMzU4LDYgKzM1Niw3IEBAIHN0cnVjdCBpNDBlX3Jp
bmcgewogCXVuaW9uIHsKIAkJc3RydWN0IGk0MGVfdHhfYnVmZmVyICp0eF9iaTsKIAkJc3RydWN0
IGk0MGVfcnhfYnVmZmVyICpyeF9iaTsKKwkJc3RydWN0IGk0MGVfcnhfYnVmZmVyX3pjICpyeF9i
aV96YzsKIAl9OwogCURFQ0xBUkVfQklUTUFQKHN0YXRlLCBfX0k0MEVfUklOR19TVEFURV9OQklU
Uyk7CiAJdTE2IHF1ZXVlX2luZGV4OwkJLyogUXVldWUgbnVtYmVyIG9mIHJpbmcgKi8KQEAgLTQ5
NSw2ICs0OTQsNyBAQCBpbnQgX19pNDBlX21heWJlX3N0b3BfdHgoc3RydWN0IGk0MGVfcmluZyAq
dHhfcmluZywgaW50IHNpemUpOwogYm9vbCBfX2k0MGVfY2hrX2xpbmVhcml6ZShzdHJ1Y3Qgc2tf
YnVmZiAqc2tiKTsKIGludCBpNDBlX3hkcF94bWl0KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIGlu
dCBuLCBzdHJ1Y3QgeGRwX2ZyYW1lICoqZnJhbWVzLAogCQkgIHUzMiBmbGFncyk7CitpbnQgaTQw
ZV9hbGxvY19yeF9iaShzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nKTsKIAogLyoqCiAgKiBpNDBl
X2dldF9oZWFkIC0gUmV0cmlldmUgaGVhZCBmcm9tIGhlYWQgd3JpdGViYWNrCmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeF9jb21tb24uaCBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4X2NvbW1vbi5oCmluZGV4IDhh
ZjBlOTljNmMwZC4uNjY3YzRkYzRiMzlmIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfdHhyeF9jb21tb24uaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfdHhyeF9jb21tb24uaApAQCAtNCwxMyArNCw5IEBACiAjaWZuZGVm
IEk0MEVfVFhSWF9DT01NT05fCiAjZGVmaW5lIEk0MEVfVFhSWF9DT01NT05fCiAKLXZvaWQgaTQw
ZV9mZF9oYW5kbGVfc3RhdHVzKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCi0JCQkgICB1bmlv
biBpNDBlX3J4X2Rlc2MgKnJ4X2Rlc2MsIHU4IHByb2dfaWQpOwogaW50IGk0MGVfeG1pdF94ZHBf
dHhfcmluZyhzdHJ1Y3QgeGRwX2J1ZmYgKnhkcCwgc3RydWN0IGk0MGVfcmluZyAqeGRwX3Jpbmcp
Owotc3RydWN0IGk0MGVfcnhfYnVmZmVyICppNDBlX2NsZWFuX3Byb2dyYW1taW5nX3N0YXR1cygK
LQlzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAotCXVuaW9uIGk0MGVfcnhfZGVzYyAqcnhfZGVz
YywKLQl1NjQgcXcpOwordm9pZCBpNDBlX2NsZWFuX3Byb2dyYW1taW5nX3N0YXR1cyhzdHJ1Y3Qg
aTQwZV9yaW5nICpyeF9yaW5nLCB1NjQgcXdvcmQwX3JhdywKKwkJCQkgICB1NjQgcXdvcmQxKTsK
IHZvaWQgaTQwZV9wcm9jZXNzX3NrYl9maWVsZHMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywK
IAkJCSAgICAgdW5pb24gaTQwZV9yeF9kZXNjICpyeF9kZXNjLCBzdHJ1Y3Qgc2tfYnVmZiAqc2ti
KTsKIHZvaWQgaTQwZV94ZHBfcmluZ191cGRhdGVfdGFpbChzdHJ1Y3QgaTQwZV9yaW5nICp4ZHBf
cmluZyk7CkBAIC04NCw2ICs4MCwzOCBAQCBzdGF0aWMgaW5saW5lIHZvaWQgaTQwZV9hcm1fd2Io
c3RydWN0IGk0MGVfcmluZyAqdHhfcmluZywKIAl9CiB9CiAKKy8qKgorICogaTQwZV9yeF9pc19w
cm9ncmFtbWluZ19zdGF0dXMgLSBjaGVjayBmb3IgcHJvZ3JhbW1pbmcgc3RhdHVzIGRlc2NyaXB0
b3IKKyAqIEBxd29yZDE6IHF3b3JkMSByZXByZXNlbnRpbmcgc3RhdHVzX2Vycm9yX2xlbiBpbiBD
UFUgb3JkZXJpbmcKKyAqCisgKiBUaGUgdmFsdWUgb2YgaW4gdGhlIGRlc2NyaXB0b3IgbGVuZ3Ro
IGZpZWxkIGluZGljYXRlIGlmIHRoaXMKKyAqIGlzIGEgcHJvZ3JhbW1pbmcgc3RhdHVzIGRlc2Ny
aXB0b3IgZm9yIGZsb3cgZGlyZWN0b3Igb3IgRkNvRQorICogYnkgdGhlIHZhbHVlIG9mIEk0MEVf
UlhfUFJPR19TVEFUVVNfREVTQ19MRU5HVEgsIG90aGVyd2lzZQorICogaXQgaXMgYSBwYWNrZXQg
ZGVzY3JpcHRvci4KKyAqKi8KK3N0YXRpYyBpbmxpbmUgYm9vbCBpNDBlX3J4X2lzX3Byb2dyYW1t
aW5nX3N0YXR1cyh1NjQgcXdvcmQxKQoreworCS8qIFRoZSBSeCBmaWx0ZXIgcHJvZ3JhbW1pbmcg
c3RhdHVzIGFuZCBTUEggYml0IG9jY3VweSB0aGUgc2FtZQorCSAqIHNwb3QgaW4gdGhlIGRlc2Ny
aXB0b3IuIFNpbmNlIHdlIGRvbid0IHN1cHBvcnQgcGFja2V0IHNwbGl0IHdlCisJICogY2FuIGp1
c3QgcmV1c2UgdGhlIGJpdCBhcyBhbiBpbmRpY2F0aW9uIHRoYXQgdGhpcyBpcyBhCisJICogcHJv
Z3JhbW1pbmcgc3RhdHVzIGRlc2NyaXB0b3IuCisJICovCisJcmV0dXJuIHF3b3JkMSAmIEk0MEVf
UlhEX1FXMV9MRU5HVEhfU1BIX01BU0s7Cit9CisKKy8qKgorICogaTQwZV9pbmNfbnRjOiBBZHZh
bmNlIHRoZSBuZXh0X3RvX2NsZWFuIGluZGV4CisgKiBAcnhfcmluZzogUnggcmluZworICoqLwor
c3RhdGljIGlubGluZSB2b2lkIGk0MGVfaW5jX250YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5n
KQoreworCXUzMiBudGMgPSByeF9yaW5nLT5uZXh0X3RvX2NsZWFuICsgMTsKKworCW50YyA9IChu
dGMgPCByeF9yaW5nLT5jb3VudCkgPyBudGMgOiAwOworCXJ4X3JpbmctPm5leHRfdG9fY2xlYW4g
PSBudGM7CisJcHJlZmV0Y2goSTQwRV9SWF9ERVNDKHJ4X3JpbmcsIG50YykpOworfQorCiB2b2lk
IGk0MGVfeHNrX2NsZWFuX3J4X3Jpbmcoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZyk7CiB2b2lk
IGk0MGVfeHNrX2NsZWFuX3R4X3Jpbmcoc3RydWN0IGk0MGVfcmluZyAqdHhfcmluZyk7CiBib29s
IGk0MGVfeHNrX2FueV9yeF9yaW5nX2VuYWJsZWQoc3RydWN0IGk0MGVfdnNpICp2c2kpOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R5cGUuaCBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eXBlLmgKaW5kZXggNmVhMjg2N2Zm
NjBmLi42M2UwOThmN2NiNjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV90eXBlLmgKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX3R5cGUuaApAQCAtNjg5LDcgKzY4OSw3IEBAIHVuaW9uIGk0MGVfMzJieXRlX3J4X2Rlc2Mg
ewogCQlfX2xlNjQgIHJzdmQyOwogCX0gcmVhZDsKIAlzdHJ1Y3QgewotCQlzdHJ1Y3QgeworCQlz
dHJ1Y3QgaTQwZV8zMmJfcnhfd2JfcXcwIHsKIAkJCXN0cnVjdCB7CiAJCQkJdW5pb24gewogCQkJ
CQlfX2xlMTYgbWlycm9yaW5nX3N0YXR1czsKQEAgLTcyNyw2ICs3MjcsOSBAQCB1bmlvbiBpNDBl
XzMyYnl0ZV9yeF9kZXNjIHsKIAkJCX0gaGlfZHdvcmQ7CiAJCX0gcXdvcmQzOwogCX0gd2I7ICAv
KiB3cml0ZWJhY2sgKi8KKwlzdHJ1Y3QgeworCQl1NjQgcXdvcmRbNF07CisJfSByYXc7CiB9Owog
CiBlbnVtIGk0MGVfcnhfZGVzY19zdGF0dXNfYml0cyB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfeHNrLmMKaW5kZXggOGQyOTQ3N2JiMGI2Li40ZmNlMDU3ZjFlZWMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYworKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKQEAgLTksOSArOSwy
MyBAQAogI2luY2x1ZGUgImk0MGVfdHhyeF9jb21tb24uaCIKICNpbmNsdWRlICJpNDBlX3hzay5o
IgogCi1zdGF0aWMgc3RydWN0IGk0MGVfcnhfYnVmZmVyICppNDBlX3J4X2JpKHN0cnVjdCBpNDBl
X3JpbmcgKnJ4X3JpbmcsIHUzMiBpZHgpCitpbnQgaTQwZV9hbGxvY19yeF9iaV96YyhzdHJ1Y3Qg
aTQwZV9yaW5nICpyeF9yaW5nKQogewotCXJldHVybiAmcnhfcmluZy0+cnhfYmlbaWR4XTsKKwl1
bnNpZ25lZCBsb25nIHN6ID0gc2l6ZW9mKCpyeF9yaW5nLT5yeF9iaV96YykgKiByeF9yaW5nLT5j
b3VudDsKKworCXJ4X3JpbmctPnJ4X2JpX3pjID0ga3phbGxvYyhzeiwgR0ZQX0tFUk5FTCk7CisJ
cmV0dXJuIHJ4X3JpbmctPnJ4X2JpX3pjID8gMCA6IC1FTk9NRU07Cit9CisKK3ZvaWQgaTQwZV9j
bGVhcl9yeF9iaV96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nKQoreworCW1lbXNldChyeF9y
aW5nLT5yeF9iaV96YywgMCwKKwkgICAgICAgc2l6ZW9mKCpyeF9yaW5nLT5yeF9iaV96YykgKiBy
eF9yaW5nLT5jb3VudCk7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgaTQwZV9yeF9idWZmZXJfemMgKmk0
MGVfcnhfYmkoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgdTMyIGlkeCkKK3sKKwlyZXR1cm4g
JnJ4X3JpbmctPnJ4X2JpX3pjW2lkeF07CiB9CiAKIC8qKgpAQCAtMjM4LDcgKzI1Miw3IEBAIHN0
YXRpYyBpbnQgaTQwZV9ydW5feGRwX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIHN0cnVj
dCB4ZHBfYnVmZiAqeGRwKQogfQogCiAvKioKLSAqIGk0MGVfYWxsb2NfYnVmZmVyX3pjIC0gQWxs
b2NhdGVzIGFuIGk0MGVfcnhfYnVmZmVyCisgKiBpNDBlX2FsbG9jX2J1ZmZlcl96YyAtIEFsbG9j
YXRlcyBhbiBpNDBlX3J4X2J1ZmZlcl96YwogICogQHJ4X3Jpbmc6IFJ4IHJpbmcKICAqIEBiaTog
UnggYnVmZmVyIHRvIHBvcHVsYXRlCiAgKgpAQCAtMjQ4LDcgKzI2Miw3IEBAIHN0YXRpYyBpbnQg
aTQwZV9ydW5feGRwX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIHN0cnVjdCB4ZHBfYnVm
ZiAqeGRwKQogICogUmV0dXJucyB0cnVlIGZvciBhIHN1Y2Nlc3NmdWwgYWxsb2NhdGlvbiwgZmFs
c2Ugb3RoZXJ3aXNlCiAgKiovCiBzdGF0aWMgYm9vbCBpNDBlX2FsbG9jX2J1ZmZlcl96YyhzdHJ1
Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAotCQkJCSBzdHJ1Y3QgaTQwZV9yeF9idWZmZXIgKmJpKQor
CQkJCSBzdHJ1Y3QgaTQwZV9yeF9idWZmZXJfemMgKmJpKQogewogCXN0cnVjdCB4ZHBfdW1lbSAq
dW1lbSA9IHJ4X3JpbmctPnhza191bWVtOwogCXZvaWQgKmFkZHIgPSBiaS0+YWRkcjsKQEAgLTI3
OSw3ICsyOTMsNyBAQCBzdGF0aWMgYm9vbCBpNDBlX2FsbG9jX2J1ZmZlcl96YyhzdHJ1Y3QgaTQw
ZV9yaW5nICpyeF9yaW5nLAogfQogCiAvKioKLSAqIGk0MGVfYWxsb2NfYnVmZmVyX3Nsb3dfemMg
LSBBbGxvY2F0ZXMgYW4gaTQwZV9yeF9idWZmZXIKKyAqIGk0MGVfYWxsb2NfYnVmZmVyX3Nsb3df
emMgLSBBbGxvY2F0ZXMgYW4gaTQwZV9yeF9idWZmZXJfemMKICAqIEByeF9yaW5nOiBSeCByaW5n
CiAgKiBAYmk6IFJ4IGJ1ZmZlciB0byBwb3B1bGF0ZQogICoKQEAgLTI4OSw3ICszMDMsNyBAQCBz
dGF0aWMgYm9vbCBpNDBlX2FsbG9jX2J1ZmZlcl96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5n
LAogICogUmV0dXJucyB0cnVlIGZvciBhIHN1Y2Nlc3NmdWwgYWxsb2NhdGlvbiwgZmFsc2Ugb3Ro
ZXJ3aXNlCiAgKiovCiBzdGF0aWMgYm9vbCBpNDBlX2FsbG9jX2J1ZmZlcl9zbG93X3pjKHN0cnVj
dCBpNDBlX3JpbmcgKnJ4X3JpbmcsCi0JCQkJICAgICAgc3RydWN0IGk0MGVfcnhfYnVmZmVyICpi
aSkKKwkJCQkgICAgICBzdHJ1Y3QgaTQwZV9yeF9idWZmZXJfemMgKmJpKQogewogCXN0cnVjdCB4
ZHBfdW1lbSAqdW1lbSA9IHJ4X3JpbmctPnhza191bWVtOwogCXU2NCBoYW5kbGUsIGhyOwpAQCAt
MzE4LDExICszMzIsMTEgQEAgc3RhdGljIGJvb2wgaTQwZV9hbGxvY19idWZmZXJfc2xvd196Yyhz
dHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAogc3RhdGljIF9fYWx3YXlzX2lubGluZSBib29sCiBf
X2k0MGVfYWxsb2NfcnhfYnVmZmVyc196YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCB1MTYg
Y291bnQsCiAJCQkgICBib29sIGFsbG9jKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCi0JCQkJ
ICAgICAgc3RydWN0IGk0MGVfcnhfYnVmZmVyICpiaSkpCisJCQkJICAgICAgc3RydWN0IGk0MGVf
cnhfYnVmZmVyX3pjICpiaSkpCiB7CiAJdTE2IG50dSA9IHJ4X3JpbmctPm5leHRfdG9fdXNlOwog
CXVuaW9uIGk0MGVfcnhfZGVzYyAqcnhfZGVzYzsKLQlzdHJ1Y3QgaTQwZV9yeF9idWZmZXIgKmJp
OworCXN0cnVjdCBpNDBlX3J4X2J1ZmZlcl96YyAqYmk7CiAJYm9vbCBvayA9IHRydWU7CiAKIAly
eF9kZXNjID0gSTQwRV9SWF9ERVNDKHJ4X3JpbmcsIG50dSk7CkBAIC00MDIsMTAgKzQxNiwxMSBA
QCBzdGF0aWMgYm9vbCBpNDBlX2FsbG9jX3J4X2J1ZmZlcnNfZmFzdF96YyhzdHJ1Y3QgaTQwZV9y
aW5nICpyeF9yaW5nLCB1MTYgY291bnQpCiAgKgogICogUmV0dXJucyB0aGUgcmVjZWl2ZWQgUngg
YnVmZmVyCiAgKiovCi1zdGF0aWMgc3RydWN0IGk0MGVfcnhfYnVmZmVyICppNDBlX2dldF9yeF9i
dWZmZXJfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywKLQkJCQkJCSAgICBjb25zdCB1bnNp
Z25lZCBpbnQgc2l6ZSkKK3N0YXRpYyBzdHJ1Y3QgaTQwZV9yeF9idWZmZXJfemMgKmk0MGVfZ2V0
X3J4X2J1ZmZlcl96YygKKwlzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAorCWNvbnN0IHVuc2ln
bmVkIGludCBzaXplKQogewotCXN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqYmk7CisJc3RydWN0IGk0
MGVfcnhfYnVmZmVyX3pjICpiaTsKIAogCWJpID0gaTQwZV9yeF9iaShyeF9yaW5nLCByeF9yaW5n
LT5uZXh0X3RvX2NsZWFuKTsKIApAQCAtNDI3LDEwICs0NDIsMTAgQEAgc3RhdGljIHN0cnVjdCBp
NDBlX3J4X2J1ZmZlciAqaTQwZV9nZXRfcnhfYnVmZmVyX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4
X3JpbmcsCiAgKiByZWN5Y2xlIHF1ZXVlIChuZXh0X3RvX2FsbG9jKS4KICAqKi8KIHN0YXRpYyB2
b2lkIGk0MGVfcmV1c2VfcnhfYnVmZmVyX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCi0J
CQkJICAgIHN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqb2xkX2JpKQorCQkJCSAgICBzdHJ1Y3QgaTQw
ZV9yeF9idWZmZXJfemMgKm9sZF9iaSkKIHsKLQlzdHJ1Y3QgaTQwZV9yeF9idWZmZXIgKm5ld19i
aSA9IGk0MGVfcnhfYmkocnhfcmluZywKLQkJCQkJCSAgIHJ4X3JpbmctPm5leHRfdG9fYWxsb2Mp
OworCXN0cnVjdCBpNDBlX3J4X2J1ZmZlcl96YyAqbmV3X2JpID0gaTQwZV9yeF9iaShyeF9yaW5n
LAorCQkJCQkJICAgICAgcnhfcmluZy0+bmV4dF90b19hbGxvYyk7CiAJdTE2IG50YSA9IHJ4X3Jp
bmctPm5leHRfdG9fYWxsb2M7CiAKIAkvKiB1cGRhdGUsIGFuZCBzdG9yZSBuZXh0IHRvIGFsbG9j
ICovCkBAIC00NTIsNyArNDY3LDcgQEAgc3RhdGljIHZvaWQgaTQwZV9yZXVzZV9yeF9idWZmZXJf
emMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywKICAqKi8KIHZvaWQgaTQwZV96Y2FfZnJlZShz
dHJ1Y3QgemVyb19jb3B5X2FsbG9jYXRvciAqYWxsb2MsIHVuc2lnbmVkIGxvbmcgaGFuZGxlKQog
ewotCXN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqYmk7CisJc3RydWN0IGk0MGVfcnhfYnVmZmVyX3pj
ICpiaTsKIAlzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nOwogCXU2NCBociwgbWFzazsKIAl1MTYg
bnRhOwpAQCAtNDkwLDcgKzUwNSw3IEBAIHZvaWQgaTQwZV96Y2FfZnJlZShzdHJ1Y3QgemVyb19j
b3B5X2FsbG9jYXRvciAqYWxsb2MsIHVuc2lnbmVkIGxvbmcgaGFuZGxlKQogICogUmV0dXJucyB0
aGUgc2tiLCBvciBOVUxMIG9uIGZhaWx1cmUuCiAgKiovCiBzdGF0aWMgc3RydWN0IHNrX2J1ZmYg
Kmk0MGVfY29uc3RydWN0X3NrYl96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAotCQkJCQkg
ICAgIHN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqYmksCisJCQkJCSAgICAgc3RydWN0IGk0MGVfcnhf
YnVmZmVyX3pjICpiaSwKIAkJCQkJICAgICBzdHJ1Y3QgeGRwX2J1ZmYgKnhkcCkKIHsKIAl1bnNp
Z25lZCBpbnQgbWV0YXNpemUgPSB4ZHAtPmRhdGEgLSB4ZHAtPmRhdGFfbWV0YTsKQEAgLTUxMywx
OSArNTI4LDYgQEAgc3RhdGljIHN0cnVjdCBza19idWZmICppNDBlX2NvbnN0cnVjdF9za2JfemMo
c3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywKIAlyZXR1cm4gc2tiOwogfQogCi0vKioKLSAqIGk0
MGVfaW5jX250YzogQWR2YW5jZSB0aGUgbmV4dF90b19jbGVhbiBpbmRleAotICogQHJ4X3Jpbmc6
IFJ4IHJpbmcKLSAqKi8KLXN0YXRpYyB2b2lkIGk0MGVfaW5jX250YyhzdHJ1Y3QgaTQwZV9yaW5n
ICpyeF9yaW5nKQotewotCXUzMiBudGMgPSByeF9yaW5nLT5uZXh0X3RvX2NsZWFuICsgMTsKLQot
CW50YyA9IChudGMgPCByeF9yaW5nLT5jb3VudCkgPyBudGMgOiAwOwotCXJ4X3JpbmctPm5leHRf
dG9fY2xlYW4gPSBudGM7Ci0JcHJlZmV0Y2goSTQwRV9SWF9ERVNDKHJ4X3JpbmcsIG50YykpOwot
fQotCiAvKioKICAqIGk0MGVfY2xlYW5fcnhfaXJxX3pjIC0gQ29uc3VtZXMgUnggcGFja2V0cyBm
cm9tIHRoZSBoYXJkd2FyZSByaW5nCiAgKiBAcnhfcmluZzogUnggcmluZwpAQCAtNTQ1LDcgKzU0
Nyw3IEBAIGludCBpNDBlX2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5n
LCBpbnQgYnVkZ2V0KQogCXhkcC5yeHEgPSAmcnhfcmluZy0+eGRwX3J4cTsKIAogCXdoaWxlIChs
aWtlbHkodG90YWxfcnhfcGFja2V0cyA8ICh1bnNpZ25lZCBpbnQpYnVkZ2V0KSkgewotCQlzdHJ1
Y3QgaTQwZV9yeF9idWZmZXIgKmJpOworCQlzdHJ1Y3QgaTQwZV9yeF9idWZmZXJfemMgKmJpOwog
CQl1bmlvbiBpNDBlX3J4X2Rlc2MgKnJ4X2Rlc2M7CiAJCXVuc2lnbmVkIGludCBzaXplOwogCQl1
NjQgcXdvcmQ7CkBAIC01NjYsMTQgKzU2OCwxOCBAQCBpbnQgaTQwZV9jbGVhbl9yeF9pcnFfemMo
c3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAkJICovCiAJCWRtYV9ybWIo
KTsKIAotCQliaSA9IGk0MGVfY2xlYW5fcHJvZ3JhbW1pbmdfc3RhdHVzKHJ4X3JpbmcsIHJ4X2Rl
c2MsCi0JCQkJCQkgICBxd29yZCk7Ci0JCWlmICh1bmxpa2VseShiaSkpIHsKKwkJaWYgKGk0MGVf
cnhfaXNfcHJvZ3JhbW1pbmdfc3RhdHVzKHF3b3JkKSkgeworCQkJaTQwZV9jbGVhbl9wcm9ncmFt
bWluZ19zdGF0dXMocnhfcmluZywKKwkJCQkJCSAgICAgIHJ4X2Rlc2MtPnJhdy5xd29yZFswXSwK
KwkJCQkJCSAgICAgIHF3b3JkKTsKKwkJCWJpID0gaTQwZV9yeF9iaShyeF9yaW5nLCByeF9yaW5n
LT5uZXh0X3RvX2NsZWFuKTsKKwkJCWk0MGVfaW5jX250YyhyeF9yaW5nKTsKIAkJCWk0MGVfcmV1
c2VfcnhfYnVmZmVyX3pjKHJ4X3JpbmcsIGJpKTsKIAkJCWNsZWFuZWRfY291bnQrKzsKIAkJCWNv
bnRpbnVlOwogCQl9CiAKKwkJYmkgPSBpNDBlX3J4X2JpKHJ4X3JpbmcsIHJ4X3JpbmctPm5leHRf
dG9fY2xlYW4pOwogCQlzaXplID0gKHF3b3JkICYgSTQwRV9SWERfUVcxX0xFTkdUSF9QQlVGX01B
U0spID4+CiAJCSAgICAgICBJNDBFX1JYRF9RVzFfTEVOR1RIX1BCVUZfU0hJRlQ7CiAJCWlmICgh
c2l6ZSkKQEAgLTgzMCw3ICs4MzYsNyBAQCB2b2lkIGk0MGVfeHNrX2NsZWFuX3J4X3Jpbmcoc3Ry
dWN0IGk0MGVfcmluZyAqcnhfcmluZykKIAl1MTYgaTsKIAogCWZvciAoaSA9IDA7IGkgPCByeF9y
aW5nLT5jb3VudDsgaSsrKSB7Ci0JCXN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqcnhfYmkgPSBpNDBl
X3J4X2JpKHJ4X3JpbmcsIGkpOworCQlzdHJ1Y3QgaTQwZV9yeF9idWZmZXJfemMgKnJ4X2JpID0g
aTQwZV9yeF9iaShyeF9yaW5nLCBpKTsKIAogCQlpZiAoIXJ4X2JpLT5hZGRyKQogCQkJY29udGlu
dWU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNr
LmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmgKaW5kZXggOWVk
NTljMTRlYjU1Li5mNWUyOTJjMjE4ZWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV94c2suaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfeHNrLmgKQEAgLTE5LDUgKzE5LDcgQEAgaW50IGk0MGVfY2xlYW5fcnhfaXJxX3pj
KHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpOwogYm9vbCBpNDBlX2NsZWFu
X3hkcF90eF9pcnEoc3RydWN0IGk0MGVfdnNpICp2c2ksCiAJCQkgICBzdHJ1Y3QgaTQwZV9yaW5n
ICp0eF9yaW5nLCBpbnQgbmFwaV9idWRnZXQpOwogaW50IGk0MGVfeHNrX3dha2V1cChzdHJ1Y3Qg
bmV0X2RldmljZSAqZGV2LCB1MzIgcXVldWVfaWQsIHUzMiBmbGFncyk7CitpbnQgaTQwZV9hbGxv
Y19yeF9iaV96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nKTsKK3ZvaWQgaTQwZV9jbGVhcl9y
eF9iaV96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nKTsKIAogI2VuZGlmIC8qIF9JNDBFX1hT
S19IXyAqLwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
