Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BA61C388D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 13:46:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3E48882C4;
	Mon,  4 May 2020 11:38:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oInRPr7fWLxh; Mon,  4 May 2020 11:38:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA34188363;
	Mon,  4 May 2020 11:38:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0CEB1BF356
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 11:38:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A4E46882E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 11:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nocudNq4bYHT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2020 11:38:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF6EA882C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2020 11:38:17 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id ms17so3576568pjb.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 04 May 2020 04:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N/Lcs9lpqr+PSaNN7SZtiFiqLWOfZAn2LZGKUFkaTP0=;
 b=qd0nUOyo7Nu2q7fszBmHCJ/GV4/1TPzX5x4+cOWdYaErD7MfY6XbUMyyhDN9rqRIYt
 3js7+L0OIPZoYG19sZrc3rxAzd3zeTK2/LBoleTPQYeIx08CDUAhXsJZ++faW9dC29JG
 EWXqPwacFyp9w4qKe3oHIQ5BUAEeP7e6a9goobb14OSXQl3k0NvFn73YsHOAEHFBvSG5
 nO6YvaaURTPcbcFeKf8DUyQ4TGnQoh8YlsOtUeci37oUWzBmV4JPUa5ZkRrbR4mpsQXm
 gB58KXUb+jBAMHA8T3gMrx917DRunGBg/vkPea5QYY7L6qBx39fxk3r8x1DKijazbzQi
 otgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N/Lcs9lpqr+PSaNN7SZtiFiqLWOfZAn2LZGKUFkaTP0=;
 b=EvsnAw7alMUqF1yBR33sZUsylyQHeXantoKNLlkDkcfawOjtcAJOfCuWHNldJpssNW
 UUYfHpyZkVxpBvCt2qvKs7zfq37s3X6cYd2Aw1ak23mTlqGPsqMuEPqrDog6sW489udH
 jXaxNHRBZuO3aCZLAZGtNShNDF7s+IHl8mJMy70/jKQxrGFajT1fUi71WlmQ/k9DDowI
 jYnW2joTOMP9G5sVvaBf3BhmFlfIJgfxfL2PrAFsO5IHaVMWfudUhWi0co2dwImPJPvy
 ciR9aRjiGbYGhHmxm/2a4FxDXQOLLAFWfVkf89sM+Po2OAXTufJPidQG0iN1WezZqZxN
 V1JQ==
X-Gm-Message-State: AGi0PuYqJEvoAv0PCEnL6D1vwaocCJixs4UzKK8LdWv9+dtzrpcs3Qiv
 ziplTXNdBK88dS75hOgu7ng=
X-Google-Smtp-Source: APiQypKTwfnWjI8Xpm787Exy3XZxDoD+Y7odtKjscGiHC2wXHIWAx7+5L3W6dl6Ufq1YaC0wYSi9Lw==
X-Received: by 2002:a17:90a:718c:: with SMTP id
 i12mr17039986pjk.142.1588592297303; 
 Mon, 04 May 2020 04:38:17 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id x185sm8650789pfx.155.2020.05.04.04.38.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 04:38:16 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, davem@davemloft.net, kuba@kernel.org,
 hawk@kernel.org, john.fastabend@gmail.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com, jonathan.lemon@gmail.com
Date: Mon,  4 May 2020 13:37:07 +0200
Message-Id: <20200504113716.7930-6-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200504113716.7930-1-bjorn.topel@gmail.com>
References: <20200504113716.7930-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next 05/13] i40e: refactor rx_bi
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
L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMKaW5kZXggYjg0OTYwMzdlZjdmLi41OGRhYmE4ZmFiYzgg
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
cnhfcmluZywgaSk7CiAKIAkJaWYgKCFyeF9iaS0+cGFnZSkKIAkJCWNvbnRpbnVlOwpAQCAtMTU3
Niw3ICsxNTgxLDcgQEAgYm9vbCBpNDBlX2FsbG9jX3J4X2J1ZmZlcnMoc3RydWN0IGk0MGVfcmlu
ZyAqcnhfcmluZywgdTE2IGNsZWFuZWRfY291bnQpCiAJCXJldHVybiBmYWxzZTsKIAogCXJ4X2Rl
c2MgPSBJNDBFX1JYX0RFU0MocnhfcmluZywgbnR1KTsKLQliaSA9ICZyeF9yaW5nLT5yeF9iaVtu
dHVdOworCWJpID0gaTQwZV9yeF9iaShyeF9yaW5nLCBudHUpOwogCiAJZG8gewogCQlpZiAoIWk0
MGVfYWxsb2NfbWFwcGVkX3BhZ2UocnhfcmluZywgYmkpKQpAQCAtMTU5OCw3ICsxNjAzLDcgQEAg
Ym9vbCBpNDBlX2FsbG9jX3J4X2J1ZmZlcnMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgdTE2
IGNsZWFuZWRfY291bnQpCiAJCW50dSsrOwogCQlpZiAodW5saWtlbHkobnR1ID09IHJ4X3Jpbmct
PmNvdW50KSkgewogCQkJcnhfZGVzYyA9IEk0MEVfUlhfREVTQyhyeF9yaW5nLCAwKTsKLQkJCWJp
ID0gcnhfcmluZy0+cnhfYmk7CisJCQliaSA9IGk0MGVfcnhfYmkocnhfcmluZywgMCk7CiAJCQlu
dHUgPSAwOwogCQl9CiAKQEAgLTE5NjUsNyArMTk3MCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTQwZV9y
eF9idWZmZXIgKmk0MGVfZ2V0X3J4X2J1ZmZlcihzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAog
ewogCXN0cnVjdCBpNDBlX3J4X2J1ZmZlciAqcnhfYnVmZmVyOwogCi0JcnhfYnVmZmVyID0gJnJ4
X3JpbmctPnJ4X2JpW3J4X3JpbmctPm5leHRfdG9fY2xlYW5dOworCXJ4X2J1ZmZlciA9IGk0MGVf
cnhfYmkocnhfcmluZywgcnhfcmluZy0+bmV4dF90b19jbGVhbik7CiAJcHJlZmV0Y2h3KHJ4X2J1
ZmZlci0+cGFnZSk7CiAKIAkvKiB3ZSBhcmUgcmV1c2luZyBzbyBzeW5jIHRoaXMgYnVmZmVyIGZv
ciBDUFUgdXNlICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMK
aW5kZXggNDUyYmJhN2JjNGZmLi44ZDI5NDc3YmIwYjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0
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
aW5nLT5jb3VudCkgPyBudGEgOiAwOwpAQCAtODI0LDcgKzgzMCw3IEBAIHZvaWQgaTQwZV94c2tf
Y2xlYW5fcnhfcmluZyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nKQogCXUxNiBpOwogCiAJZm9y
IChpID0gMDsgaSA8IHJ4X3JpbmctPmNvdW50OyBpKyspIHsKLQkJc3RydWN0IGk0MGVfcnhfYnVm
ZmVyICpyeF9iaSA9ICZyeF9yaW5nLT5yeF9iaVtpXTsKKwkJc3RydWN0IGk0MGVfcnhfYnVmZmVy
ICpyeF9iaSA9IGk0MGVfcnhfYmkocnhfcmluZywgaSk7CiAKIAkJaWYgKCFyeF9iaS0+YWRkcikK
IAkJCWNvbnRpbnVlOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
