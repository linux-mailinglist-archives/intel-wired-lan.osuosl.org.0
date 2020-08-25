Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CE725185D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 14:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA0088836E;
	Tue, 25 Aug 2020 12:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x8eOgvvofwbu; Tue, 25 Aug 2020 12:13:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 23F8E8838C;
	Tue, 25 Aug 2020 12:13:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 520331BF37A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 12:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C71085198
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 12:13:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LU8Kg9VLzITp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 12:13:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0F3184EC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 12:13:46 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id d22so7215825pfn.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 05:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E3FCU1ysVCQIS/y1LR8GDdyKBD7FyoWGv58ugE95k9E=;
 b=V2Gd3bMSWjb7++EjJGkSGGumtzMg4VDVUyC/lsdu1LTIUAPBkaWWuaoQpPq7FnENNE
 h05mQeLPZII16LAJZ/Z/vxq+jtlu8PSpA0Js48LBqfaHSPdNyGgW2zRvS1gqVrQ8YAK3
 9rT0dJd879yasu5lrYr6CZa1Z9xxXAdXTha7tl3XsQfQ9H4n3L7O5antaVyHubmLuxxv
 DRkz8yw/guX+VB08PJpLbFKKrsB0eggBEUzAn5WreBR0Ygv6Vl8eVlVI8PV+oAAzktBM
 9MBqUgGt+NvQjg9kBpTbUROOwmZ2XSBNH8wvMuBRN7j7k/cX6TcA+10Yl9Tx9xbE4238
 LNUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E3FCU1ysVCQIS/y1LR8GDdyKBD7FyoWGv58ugE95k9E=;
 b=sjXCaEvcCgMWqP0U+CCVqiqto6G4xfQ+D0gvLGxziM6uoNzvwkBPrudfKnOEvK+tEV
 ADMXSOmIM6jQspiWJZJfGAHFWKXzG0DKHoV4u3jitVDiMiKjTKyK04rtV4W+Ut6w5WgM
 J4KUk8U9czHAQE7S7audsNeUFmqm+tPQeA5PZoPBKU6vOzJi2ZxWGFkeoKTsOmy7+DiR
 GLh9wcbrx54/S0h9hhNHwEH4Qccty0NGufUtS0o7fSZ8G7i7qfcO4r/T+xNIqKVRKKsz
 OSUZ4hid5fV4qUvuC5XBS31gMnYwsI/enl5//D49YGHy2Uk9QRTmiQVS39z40rIFImo2
 xw5w==
X-Gm-Message-State: AOAM532s0A9Otn71lrm7hM61GYOpdHEAMwtukGESSo2i+IB5svJm1RBl
 pu++7rX0UAH29c1UAmYlf04=
X-Google-Smtp-Source: ABdhPJxz8r9wVR00AicZeBN5vv6rNG38IzyW6IBd9yFmG0BNmLXpZnq4GyFjyOdM+yt6o4wnV8gO1Q==
X-Received: by 2002:aa7:84d1:: with SMTP id x17mr7591486pfn.87.1598357626371; 
 Tue, 25 Aug 2020 05:13:46 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id d5sm2700031pjw.18.2020.08.25.05.13.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 05:13:45 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: jeffrey.t.kirsher@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Aug 2020 14:13:23 +0200
Message-Id: <20200825121323.20239-4-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200825121323.20239-1-bjorn.topel@gmail.com>
References: <20200825121323.20239-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 3/3] ice: avoid premature Rx buffer
 reuse
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 maciej.machnikowski@intel.com, lirongqing@baidu.com,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKVGhlIHBhZ2UgcmVj
eWNsZSBjb2RlLCBpbmNvcnJlY3RseSwgcmVsaWVkIG9uIHRoYXQgYSBwYWdlIGZyYWdtZW50CmNv
dWxkIG5vdCBiZSBmcmVlZCBpbnNpZGUgeGRwX2RvX3JlZGlyZWN0KCkuIFRoaXMgYXNzdW1wdGlv
biBsZWFkcyB0bwp0aGF0IHBhZ2UgZnJhZ21lbnRzIHRoYXQgYXJlIHVzZWQgYnkgdGhlIHN0YWNr
L1hEUCByZWRpcmVjdCBjYW4gYmUKcmV1c2VkIGFuZCBvdmVyd3JpdHRlbi4KClRvIGF2b2lkIHRo
aXMsIHN0b3JlIHRoZSBwYWdlIGNvdW50IHByaW9yIGludm9raW5nIHhkcF9kb19yZWRpcmVjdCgp
LgoKRml4ZXM6IGVmYzIyMTRiNjA0NyAoImljZTogQWRkIHN1cHBvcnQgZm9yIFhEUCIpClJlcG9y
dGVkLWFuZC1hbmFseXplZC1ieTogTGkgUm9uZ1FpbmcgPGxpcm9uZ3FpbmdAYmFpZHUuY29tPgpT
aWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMgfCAyNyArKysrKysrKysr
KysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDkgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90
eHJ4LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYwppbmRleCA5
ZDBkNmIwMDI1Y2YuLjkyNGQzNGFkOWZhNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV90eHJ4LmMKQEAgLTc2OCw3ICs3NjgsOCBAQCBpY2VfcnhfYnVmX2FkanVzdF9wZ19v
ZmZzZXQoc3RydWN0IGljZV9yeF9idWYgKnJ4X2J1ZiwgdW5zaWduZWQgaW50IHNpemUpCiAgKiBw
b2ludGluZyB0bzsgb3RoZXJ3aXNlLCB0aGUgRE1BIG1hcHBpbmcgbmVlZHMgdG8gYmUgZGVzdHJv
eWVkIGFuZAogICogcGFnZSBmcmVlZAogICovCi1zdGF0aWMgYm9vbCBpY2VfY2FuX3JldXNlX3J4
X3BhZ2Uoc3RydWN0IGljZV9yeF9idWYgKnJ4X2J1ZikKK3N0YXRpYyBib29sIGljZV9jYW5fcmV1
c2VfcnhfcGFnZShzdHJ1Y3QgaWNlX3J4X2J1ZiAqcnhfYnVmLAorCQkJCSAgaW50IHJ4X2J1Zl9w
Z2NudCkKIHsKIAl1bnNpZ25lZCBpbnQgcGFnZWNudF9iaWFzID0gcnhfYnVmLT5wYWdlY250X2Jp
YXM7CiAJc3RydWN0IHBhZ2UgKnBhZ2UgPSByeF9idWYtPnBhZ2U7CkBAIC03NzksNyArNzgwLDcg
QEAgc3RhdGljIGJvb2wgaWNlX2Nhbl9yZXVzZV9yeF9wYWdlKHN0cnVjdCBpY2VfcnhfYnVmICpy
eF9idWYpCiAKICNpZiAoUEFHRV9TSVpFIDwgODE5MikKIAkvKiBpZiB3ZSBhcmUgb25seSBvd25l
ciBvZiBwYWdlIHdlIGNhbiByZXVzZSBpdCAqLwotCWlmICh1bmxpa2VseSgocGFnZV9jb3VudChw
YWdlKSAtIHBhZ2VjbnRfYmlhcykgPiAxKSkKKwlpZiAodW5saWtlbHkoKHJ4X2J1Zl9wZ2NudCAt
IHBhZ2VjbnRfYmlhcykgPiAxKSkKIAkJcmV0dXJuIGZhbHNlOwogI2Vsc2UKICNkZWZpbmUgSUNF
X0xBU1RfT0ZGU0VUIFwKQEAgLTg3MCwxMSArODcxLDE4IEBAIGljZV9yZXVzZV9yeF9wYWdlKHN0
cnVjdCBpY2VfcmluZyAqcnhfcmluZywgc3RydWN0IGljZV9yeF9idWYgKm9sZF9idWYpCiAgKi8K
IHN0YXRpYyBzdHJ1Y3QgaWNlX3J4X2J1ZiAqCiBpY2VfZ2V0X3J4X2J1ZihzdHJ1Y3QgaWNlX3Jp
bmcgKnJ4X3JpbmcsIHN0cnVjdCBza19idWZmICoqc2tiLAotCSAgICAgICBjb25zdCB1bnNpZ25l
ZCBpbnQgc2l6ZSkKKwkgICAgICAgY29uc3QgdW5zaWduZWQgaW50IHNpemUsCisJICAgICAgIGlu
dCAqcnhfYnVmX3BnY250KQogewogCXN0cnVjdCBpY2VfcnhfYnVmICpyeF9idWY7CiAKIAlyeF9i
dWYgPSAmcnhfcmluZy0+cnhfYnVmW3J4X3JpbmctPm5leHRfdG9fY2xlYW5dOworCSpyeF9idWZf
cGdjbnQgPQorI2lmIChQQUdFX1NJWkUgPCA4MTkyKQorCQlwYWdlX2NvdW50KHJ4X2J1Zi0+cGFn
ZSk7CisjZWxzZQorCQkwOworI2VuZGlmCiAJcHJlZmV0Y2h3KHJ4X2J1Zi0+cGFnZSk7CiAJKnNr
YiA9IHJ4X2J1Zi0+c2tiOwogCkBAIC0xMDE3LDcgKzEwMjUsNyBAQCBpY2VfY29uc3RydWN0X3Nr
YihzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIHN0cnVjdCBpY2VfcnhfYnVmICpyeF9idWYsCiAg
KiBvZiB0aGUgcnhfYnVmLiBJdCB3aWxsIGVpdGhlciByZWN5Y2xlIHRoZSBidWZmZXIgb3IgdW5t
YXAgaXQgYW5kIGZyZWUKICAqIHRoZSBhc3NvY2lhdGVkIHJlc291cmNlcy4KICAqLwotc3RhdGlj
IHZvaWQgaWNlX3B1dF9yeF9idWYoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBzdHJ1Y3QgaWNl
X3J4X2J1ZiAqcnhfYnVmKQorc3RhdGljIHZvaWQgaWNlX3B1dF9yeF9idWYoc3RydWN0IGljZV9y
aW5nICpyeF9yaW5nLCBzdHJ1Y3QgaWNlX3J4X2J1ZiAqcnhfYnVmLCBpbnQgcnhfYnVmX3BnY250
KQogewogCXUxNiBudGMgPSByeF9yaW5nLT5uZXh0X3RvX2NsZWFuICsgMTsKIApAQCAtMTAyOCw3
ICsxMDM2LDcgQEAgc3RhdGljIHZvaWQgaWNlX3B1dF9yeF9idWYoc3RydWN0IGljZV9yaW5nICpy
eF9yaW5nLCBzdHJ1Y3QgaWNlX3J4X2J1ZiAqcnhfYnVmKQogCWlmICghcnhfYnVmKQogCQlyZXR1
cm47CiAKLQlpZiAoaWNlX2Nhbl9yZXVzZV9yeF9wYWdlKHJ4X2J1ZikpIHsKKwlpZiAoaWNlX2Nh
bl9yZXVzZV9yeF9wYWdlKHJ4X2J1ZiwgcnhfYnVmX3BnY250KSkgewogCQkvKiBoYW5kIHNlY29u
ZCBoYWxmIG9mIHBhZ2UgYmFjayB0byB0aGUgcmluZyAqLwogCQlpY2VfcmV1c2VfcnhfcGFnZShy
eF9yaW5nLCByeF9idWYpOwogCX0gZWxzZSB7CkBAIC0xMTAzLDYgKzExMTEsNyBAQCBpbnQgaWNl
X2NsZWFuX3J4X2lycShzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiAJCXN0
cnVjdCBza19idWZmICpza2I7CiAJCXVuc2lnbmVkIGludCBzaXplOwogCQl1MTYgc3RhdF9lcnJf
Yml0czsKKwkJaW50IHJ4X2J1Zl9wZ2NudDsKIAkJdTE2IHZsYW5fdGFnID0gMDsKIAkJdTggcnhf
cHR5cGU7CiAKQEAgLTExMjUsNyArMTEzNCw3IEBAIGludCBpY2VfY2xlYW5fcnhfaXJxKHN0cnVj
dCBpY2VfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAkJZG1hX3JtYigpOwogCiAJCWlmIChy
eF9kZXNjLT53Yi5yeGRpZCA9PSBGRElSX0RFU0NfUlhESUQgfHwgIXJ4X3JpbmctPm5ldGRldikg
ewotCQkJaWNlX3B1dF9yeF9idWYocnhfcmluZywgTlVMTCk7CisJCQlpY2VfcHV0X3J4X2J1Zihy
eF9yaW5nLCBOVUxMLCAwKTsKIAkJCWNsZWFuZWRfY291bnQrKzsKIAkJCWNvbnRpbnVlOwogCQl9
CkBAIC0xMTM0LDcgKzExNDMsNyBAQCBpbnQgaWNlX2NsZWFuX3J4X2lycShzdHJ1Y3QgaWNlX3Jp
bmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiAJCQlJQ0VfUlhfRkxYX0RFU0NfUEtUX0xFTl9NOwog
CiAJCS8qIHJldHJpZXZlIGEgYnVmZmVyIGZyb20gdGhlIHJpbmcgKi8KLQkJcnhfYnVmID0gaWNl
X2dldF9yeF9idWYocnhfcmluZywgJnNrYiwgc2l6ZSk7CisJCXJ4X2J1ZiA9IGljZV9nZXRfcnhf
YnVmKHJ4X3JpbmcsICZza2IsIHNpemUsICZyeF9idWZfcGdjbnQpOwogCiAJCWlmICghc2l6ZSkg
ewogCQkJeGRwLmRhdGEgPSBOVUxMOwpAQCAtMTE3NCw3ICsxMTgzLDcgQEAgaW50IGljZV9jbGVh
bl9yeF9pcnEoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQogCQl0b3RhbF9y
eF9wa3RzKys7CiAKIAkJY2xlYW5lZF9jb3VudCsrOwotCQlpY2VfcHV0X3J4X2J1ZihyeF9yaW5n
LCByeF9idWYpOworCQlpY2VfcHV0X3J4X2J1ZihyeF9yaW5nLCByeF9idWYsIHJ4X2J1Zl9wZ2Nu
dCk7CiAJCWNvbnRpbnVlOwogY29uc3RydWN0X3NrYjoKIAkJaWYgKHNrYikgewpAQCAtMTE5Myw3
ICsxMjAyLDcgQEAgaW50IGljZV9jbGVhbl9yeF9pcnEoc3RydWN0IGljZV9yaW5nICpyeF9yaW5n
LCBpbnQgYnVkZ2V0KQogCQkJYnJlYWs7CiAJCX0KIAotCQlpY2VfcHV0X3J4X2J1ZihyeF9yaW5n
LCByeF9idWYpOworCQlpY2VfcHV0X3J4X2J1ZihyeF9yaW5nLCByeF9idWYsIHJ4X2J1Zl9wZ2Nu
dCk7CiAJCWNsZWFuZWRfY291bnQrKzsKIAogCQkvKiBza2lwIGlmIGl0IGlzIE5PUCBkZXNjICov
Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
