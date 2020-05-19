Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A821DA0DD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 21:19:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 185AA86E14;
	Tue, 19 May 2020 19:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wOxT8sp67eNr; Tue, 19 May 2020 19:19:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8616786DF6;
	Tue, 19 May 2020 19:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F34FA1BF383
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 08:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ED0FC8772A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 08:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K1BLSo37OtOZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 08:58:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2AF5086E6E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 08:58:05 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id 5so1068819pjd.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 01:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4krTzV2u35Z3NG+JAyiWOTySv4f3topMKqbx3Je2xYo=;
 b=KFYetkxevmj4ivdQna23GVR7rst82jNrsVHiBXuAjThuK3gZTF9YOmdZPknpGf5cQW
 Opzq+JRBnz5FpTG/wEaob2IBDZ8h3YRyB9NZeCL1wcDTlr9Tdy1hCmhctkm9qEUMsFkq
 k7QJVUAZVWslFms/+1wP2n/NAgQGHb91t7sTgAgcjEdZXik+gsSEV12oVrgAyUKii3+k
 MowPg88Wb1dksptGteSkyPobhyPfCHz5N0siPbGNh1KBeHE2W1JKFldC5BPLjnRf/5Qf
 Z0w7b3eEnhp+2Ip0fikUu/vH8qfw4Z6jVzV1iizxU3vRcaJvJMWqDcDyiYrVBDk7r1CZ
 oSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4krTzV2u35Z3NG+JAyiWOTySv4f3topMKqbx3Je2xYo=;
 b=GtIqnMg1AZuG6EExyv6ESbBR37CdqzExkbaKALrOTjvY2R59PZGVwBKZE0UyGctFq8
 h8p6awGPYEOLnHniECcfL6FDdWTCik42konQP495EWEXX04wfrXhYE5ITGUiFkoEBm7z
 gueum5KKH+6FpKy7whvDVQM/3fOxNHS1it3bGb+39rRvsQMimYVYK3E9SzggMvzaF4wd
 JAguRtRmmfBgL9OjNPYjS7Qhhg9OLtrWJX4a/xtSJiJFBdE/iam4T88UWevysnufp1qJ
 X0h9vzr+RYKulRGjso+61l2JvidFPfkJU+YSucwj84aTa1N4cDoa8ou7123bvxCk0Aus
 Aftg==
X-Gm-Message-State: AOAM532nSvcxKnU6otSizpyRroSPdDomXSbr3gJ3ZMuAT2ODbWNklp8n
 cpwrYecOTQQlwI+BKm0JeL8=
X-Google-Smtp-Source: ABdhPJwvakNwVevQm79gWtipfKF32PRESgh2/RP/JA0z+WamGbdrLxv/mHmj7AyP73rRgSTXyONk2A==
X-Received: by 2002:a17:902:5ac3:: with SMTP id
 g3mr10820820plm.69.1589878684730; 
 Tue, 19 May 2020 01:58:04 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id k18sm5765748pfg.217.2020.05.19.01.58.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 01:58:04 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, davem@davemloft.net, kuba@kernel.org,
 hawk@kernel.org, john.fastabend@gmail.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com, jonathan.lemon@gmail.com,
 jeffrey.t.kirsher@intel.com
Date: Tue, 19 May 2020 10:57:15 +0200
Message-Id: <20200519085724.294949-7-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200519085724.294949-1-bjorn.topel@gmail.com>
References: <20200519085724.294949-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 19 May 2020 19:19:18 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v3 06/15] i40e: refactor rx_bi
 accesses
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKQXMgYSBmaXJzdCBz
dGVwIHRvIG1pZ3JhdGUgaTQwZSB0byB0aGUgbmV3IE1FTV9UWVBFX1hTS19CVUZGX1BPT0wKQVBJ
cywgY29kZSB0aGF0IGFjY2Vzc2VzIHRoZSByeF9iaSAoU1cvc2hhZG93IHJpbmcpIGlzIHJlZmFj
dG9yZWQgdG8KdXNlIGFuIGFjY2Vzc29yIGZ1bmN0aW9uLgoKQ2M6IGludGVsLXdpcmVkLWxhbkBs
aXN0cy5vc3Vvc2wub3JnClNpZ25lZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVs
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhy
eC5jIHwgMTcgKysrKysrKysrKystLS0tLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV94c2suYyAgfCAxOCArKysrKysrKysrKystLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwg
MjMgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMKaW5kZXggYTM3NzJiZWZmZTAyLi45YjllZjk1MWY5Y2Ug
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMK
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYwpAQCAtMTE5
NSw2ICsxMTk1LDExIEBAIHN0YXRpYyB2b2lkIGk0MGVfdXBkYXRlX2l0cihzdHJ1Y3QgaTQwZV9x
X3ZlY3RvciAqcV92ZWN0b3IsCiAJcmMtPnRvdGFsX3BhY2tldHMgPSAwOwogfQogCitzdGF0aWMg
c3RydWN0IGk0MGVfcnhfYnVmZmVyICppNDBlX3J4X2JpKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3Jp
bmcsIHUzMiBpZHgpCit7CisJcmV0dXJuICZyeF9yaW5nLT5yeF9iaVtpZHhdOworfQorCiAvKioK
ICAqIGk0MGVfcmV1c2VfcnhfcGFnZSAtIHBhZ2UgZmxpcCBidWZmZXIgYW5kIHN0b3JlIGl0IGJh
Y2sgb24gdGhlIHJpbmcKICAqIEByeF9yaW5nOiByeCBkZXNjcmlwdG9yIHJpbmcgdG8gc3RvcmUg
YnVmZmVycyBvbgpAQCAtMTIwOCw3ICsxMjEzLDcgQEAgc3RhdGljIHZvaWQgaTQwZV9yZXVzZV9y
eF9wYWdlKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCiAJc3RydWN0IGk0MGVfcnhfYnVmZmVy
ICpuZXdfYnVmZjsKIAl1MTYgbnRhID0gcnhfcmluZy0+bmV4dF90b19hbGxvYzsKIAotCW5ld19i
dWZmID0gJnJ4X3JpbmctPnJ4X2JpW250YV07CisJbmV3X2J1ZmYgPSBpNDBlX3J4X2JpKHJ4X3Jp
bmcsIG50YSk7CiAKIAkvKiB1cGRhdGUsIGFuZCBzdG9yZSBuZXh0IHRvIGFsbG9jICovCiAJbnRh
Kys7CkBAIC0xMjcyLDcgKzEyNzcsNyBAQCBzdHJ1Y3QgaTQwZV9yeF9idWZmZXIgKmk0MGVfY2xl
YW5fcHJvZ3JhbW1pbmdfc3RhdHVzKAogCW50YyA9IHJ4X3JpbmctPm5leHRfdG9fY2xlYW47CiAK
IAkvKiBmZXRjaCwgdXBkYXRlLCBhbmQgc3RvcmUgbmV4dCB0byBjbGVhbiAqLwotCXJ4X2J1ZmZl
ciA9ICZyeF9yaW5nLT5yeF9iaVtudGMrK107CisJcnhfYnVmZmVyID0gaTQwZV9yeF9iaShyeF9y
aW5nLCBudGMrKyk7CiAJbnRjID0gKG50YyA8IHJ4X3JpbmctPmNvdW50KSA/IG50YyA6IDA7CiAJ
cnhfcmluZy0+bmV4dF90b19jbGVhbiA9IG50YzsKIApAQCAtMTM2MSw3ICsxMzY2LDcgQEAgdm9p
ZCBpNDBlX2NsZWFuX3J4X3Jpbmcoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZykKIAogCS8qIEZy
ZWUgYWxsIHRoZSBSeCByaW5nIHNrX2J1ZmZzICovCiAJZm9yIChpID0gMDsgaSA8IHJ4X3Jpbmct
PmNvdW50OyBpKyspIHsKLQkJc3RydWN0IGk0MGVfcnhfYnVmZmVyICpyeF9iaSA9ICZyeF9yaW5n
LT5yeF9iaVtpXTsKKwkJc3RydWN0IGk0MGVfcnhfYnVmZmVyICpyeF9iaSA9IGk0MGVfcnhfYmko
cnhfcmluZywgaSk7CiAKIAkJaWYgKCFyeF9iaS0+cGFnZSkKIAkJCWNvbnRpbnVlOwpAQCAtMTU5
Miw3ICsxNTk3LDcgQEAgYm9vbCBpNDBlX2FsbG9jX3J4X2J1ZmZlcnMoc3RydWN0IGk0MGVfcmlu
ZyAqcnhfcmluZywgdTE2IGNsZWFuZWRfY291bnQpCiAJCXJldHVybiBmYWxzZTsKIAogCXJ4X2Rl
c2MgPSBJNDBFX1JYX0RFU0MocnhfcmluZywgbnR1KTsKLQliaSA9ICZyeF9yaW5nLT5yeF9iaVtu
dHVdOworCWJpID0gaTQwZV9yeF9iaShyeF9yaW5nLCBudHUpOwogCiAJZG8gewogCQlpZiAoIWk0
MGVfYWxsb2NfbWFwcGVkX3BhZ2UocnhfcmluZywgYmkpKQpAQCAtMTYxNCw3ICsxNjE5LDcgQEAg
Ym9vbCBpNDBlX2FsbG9jX3J4X2J1ZmZlcnMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgdTE2
IGNsZWFuZWRfY291bnQpCiAJCW50dSsrOwogCQlpZiAodW5saWtlbHkobnR1ID09IHJ4X3Jpbmct
PmNvdW50KSkgewogCQkJcnhfZGVzYyA9IEk0MEVfUlhfREVTQyhyeF9yaW5nLCAwKTsKLQkJCWJp
ID0gcnhfcmluZy0+cnhfYmk7CisJCQliaSA9IGk0MGVfcnhfYmkocnhfcmluZywgMCk7CiAJCQlu
dHUgPSAwOwogCQl9CiAKQEAgLTE5ODEsNyArMTk4Niw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTQwZV9y
eF9idWZmZXIgKmk0MGVfZ2V0X3J4X2J1ZmZlcihzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAog
ewogCXN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqcnhfYnVmZmVyOwogCi0JcnhfYnVmZmVyID0gJnJ4
X3JpbmctPnJ4X2JpW3J4X3JpbmctPm5leHRfdG9fY2xlYW5dOworCXJ4X2J1ZmZlciA9IGk0MGVf
cnhfYmkocnhfcmluZywgcnhfcmluZy0+bmV4dF90b19jbGVhbik7CiAJcHJlZmV0Y2h3KHJ4X2J1
ZmZlci0+cGFnZSk7CiAKIAkvKiB3ZSBhcmUgcmV1c2luZyBzbyBzeW5jIHRoaXMgYnVmZmVyIGZv
ciBDUFUgdXNlICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMK
aW5kZXggZDhiMGJlMjkwOTlhLi5kODRlYzkyZjg1MzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKQEAgLTksNiArOSwxMSBAQAogI2luY2x1ZGUgImk0MGVf
dHhyeF9jb21tb24uaCIKICNpbmNsdWRlICJpNDBlX3hzay5oIgogCitzdGF0aWMgc3RydWN0IGk0
MGVfcnhfYnVmZmVyICppNDBlX3J4X2JpKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIHUzMiBp
ZHgpCit7CisJcmV0dXJuICZyeF9yaW5nLT5yeF9iaVtpZHhdOworfQorCiAvKioKICAqIGk0MGVf
eHNrX3VtZW1fZG1hX21hcCAtIERNQSBtYXBzIGFsbCBVTUVNIG1lbW9yeSBmb3IgdGhlIG5ldGRl
dgogICogQHZzaTogQ3VycmVudCBWU0kKQEAgLTMyMSw3ICszMjYsNyBAQCBfX2k0MGVfYWxsb2Nf
cnhfYnVmZmVyc196YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCB1MTYgY291bnQsCiAJYm9v
bCBvayA9IHRydWU7CiAKIAlyeF9kZXNjID0gSTQwRV9SWF9ERVNDKHJ4X3JpbmcsIG50dSk7Ci0J
YmkgPSAmcnhfcmluZy0+cnhfYmlbbnR1XTsKKwliaSA9IGk0MGVfcnhfYmkocnhfcmluZywgbnR1
KTsKIAlkbyB7CiAJCWlmICghYWxsb2MocnhfcmluZywgYmkpKSB7CiAJCQlvayA9IGZhbHNlOwpA
QCAtMzQwLDcgKzM0NSw3IEBAIF9faTQwZV9hbGxvY19yeF9idWZmZXJzX3pjKHN0cnVjdCBpNDBl
X3JpbmcgKnJ4X3JpbmcsIHUxNiBjb3VudCwKIAogCQlpZiAodW5saWtlbHkobnR1ID09IHJ4X3Jp
bmctPmNvdW50KSkgewogCQkJcnhfZGVzYyA9IEk0MEVfUlhfREVTQyhyeF9yaW5nLCAwKTsKLQkJ
CWJpID0gcnhfcmluZy0+cnhfYmk7CisJCQliaSA9IGk0MGVfcnhfYmkocnhfcmluZywgMCk7CiAJ
CQludHUgPSAwOwogCQl9CiAKQEAgLTQwMiw3ICs0MDcsNyBAQCBzdGF0aWMgc3RydWN0IGk0MGVf
cnhfYnVmZmVyICppNDBlX2dldF9yeF9idWZmZXJfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmlu
ZywKIHsKIAlzdHJ1Y3QgaTQwZV9yeF9idWZmZXIgKmJpOwogCi0JYmkgPSAmcnhfcmluZy0+cnhf
YmlbcnhfcmluZy0+bmV4dF90b19jbGVhbl07CisJYmkgPSBpNDBlX3J4X2JpKHJ4X3JpbmcsIHJ4
X3JpbmctPm5leHRfdG9fY2xlYW4pOwogCiAJLyogd2UgYXJlIHJldXNpbmcgc28gc3luYyB0aGlz
IGJ1ZmZlciBmb3IgQ1BVIHVzZSAqLwogCWRtYV9zeW5jX3NpbmdsZV9yYW5nZV9mb3JfY3B1KHJ4
X3JpbmctPmRldiwKQEAgLTQyNCw3ICs0MjksOCBAQCBzdGF0aWMgc3RydWN0IGk0MGVfcnhfYnVm
ZmVyICppNDBlX2dldF9yeF9idWZmZXJfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywKIHN0
YXRpYyB2b2lkIGk0MGVfcmV1c2VfcnhfYnVmZmVyX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3Jp
bmcsCiAJCQkJICAgIHN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqb2xkX2JpKQogewotCXN0cnVjdCBp
NDBlX3J4X2J1ZmZlciAqbmV3X2JpID0gJnJ4X3JpbmctPnJ4X2JpW3J4X3JpbmctPm5leHRfdG9f
YWxsb2NdOworCXN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqbmV3X2JpID0gaTQwZV9yeF9iaShyeF9y
aW5nLAorCQkJCQkJICAgcnhfcmluZy0+bmV4dF90b19hbGxvYyk7CiAJdTE2IG50YSA9IHJ4X3Jp
bmctPm5leHRfdG9fYWxsb2M7CiAKIAkvKiB1cGRhdGUsIGFuZCBzdG9yZSBuZXh0IHRvIGFsbG9j
ICovCkBAIC00NTYsNyArNDYyLDcgQEAgdm9pZCBpNDBlX3pjYV9mcmVlKHN0cnVjdCB6ZXJvX2Nv
cHlfYWxsb2NhdG9yICphbGxvYywgdW5zaWduZWQgbG9uZyBoYW5kbGUpCiAJbWFzayA9IHJ4X3Jp
bmctPnhza191bWVtLT5jaHVua19tYXNrOwogCiAJbnRhID0gcnhfcmluZy0+bmV4dF90b19hbGxv
YzsKLQliaSA9ICZyeF9yaW5nLT5yeF9iaVtudGFdOworCWJpID0gaTQwZV9yeF9iaShyeF9yaW5n
LCBudGEpOwogCiAJbnRhKys7CiAJcnhfcmluZy0+bmV4dF90b19hbGxvYyA9IChudGEgPCByeF9y
aW5nLT5jb3VudCkgPyBudGEgOiAwOwpAQCAtODI2LDcgKzgzMiw3IEBAIHZvaWQgaTQwZV94c2tf
Y2xlYW5fcnhfcmluZyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nKQogCXUxNiBpOwogCiAJZm9y
IChpID0gMDsgaSA8IHJ4X3JpbmctPmNvdW50OyBpKyspIHsKLQkJc3RydWN0IGk0MGVfcnhfYnVm
ZmVyICpyeF9iaSA9ICZyeF9yaW5nLT5yeF9iaVtpXTsKKwkJc3RydWN0IGk0MGVfcnhfYnVmZmVy
ICpyeF9iaSA9IGk0MGVfcnhfYmkocnhfcmluZywgaSk7CiAKIAkJaWYgKCFyeF9iaS0+YWRkcikK
IAkJCWNvbnRpbnVlOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
