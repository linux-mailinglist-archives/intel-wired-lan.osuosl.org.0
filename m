Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF501D3372
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2020 16:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 523C988A4E;
	Thu, 14 May 2020 14:49:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MbyCP7F4YWzC; Thu, 14 May 2020 14:49:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D7B388B26;
	Thu, 14 May 2020 14:49:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03E9D1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 08:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE5A8226D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 08:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CarketxYifHG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2020 08:37:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 06A2422782
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 08:37:48 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id fu13so12159225pjb.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2020 01:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N/Lcs9lpqr+PSaNN7SZtiFiqLWOfZAn2LZGKUFkaTP0=;
 b=cClU+OARmZaVe89h9aLkutsJTdoh0W3ByvFQJse/5MM+pP1ShFSfNg/HfBRIDcMbM8
 Lr0xunoSkl++horiTaK4LdYzTnR4i/AzjZZoBL9T3EjDaLhfztf5s6Brxh4ZJBxz4XCu
 y116PabCMY8zTJeQ5FR+Gty6buPwyErCqeConARYK/FtLrZD11whkMP6V1W2K51Y59O8
 SFKKQdKKclgbHcRnFkmqwByJaFfY+YyC/rS1NgIglCKjzwpPf+rQSkKw9WHGQic2MBR6
 eBeZ0AoYJgebBZlC8ay0yxPrrsMv0aLpZLkZVpRSeTXPl7a4+nsY+u0RQgdnEoULq02v
 hgKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N/Lcs9lpqr+PSaNN7SZtiFiqLWOfZAn2LZGKUFkaTP0=;
 b=mlb2ee2fTuy8EhrN2mql11YDFLHqDdh8yiXUjm3l8qiO2o1+xEBTMnstyZNQccEku5
 rlSfV6KRAsS4aSc90HAM8TDHYQiK8MucSXecabpeVyQ8RPW6A1bTZ7Z4T6Ehkshwyeby
 hfB0ZHAcVpDb9L8wFJv9Lkrl9gyJiWvxyT+ebiak1mvcXwxmDi4Eom1MSV6uZs8n6Anl
 OLr3GRgLV9RUmDMycbhrJ8IBIrU1+nOu5n9T4pNY4Xe5M4e1MNZLJHdguhHr79CleJXS
 eka5gA3b79QbpWgzvb05G1wibAG1TMi0LKOlze0tOjCnChmqWHePPQcNsA2lZvLQzkz7
 4G/w==
X-Gm-Message-State: AGi0PuYRKV2ntLEJuOekZoddTVkNCEMe82MCBgracSbr2OHw/FcmE7st
 94LJeCHxZ3GNXtgXgDPWLfU=
X-Google-Smtp-Source: APiQypLaz5jh3YrsnAIAq6wUrTqtGMbxktm49oaYA+g4czjc8ocI0MRh73r3gm387rb5BkDp2Ju/mg==
X-Received: by 2002:a17:90a:5289:: with SMTP id
 w9mr37149613pjh.97.1589445467567; 
 Thu, 14 May 2020 01:37:47 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.54.42])
 by smtp.gmail.com with ESMTPSA id k4sm1608058pgg.88.2020.05.14.01.37.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:37:46 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, davem@davemloft.net, kuba@kernel.org,
 hawk@kernel.org, john.fastabend@gmail.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, magnus.karlsson@intel.com, jonathan.lemon@gmail.com,
 jeffrey.t.kirsher@intel.com
Date: Thu, 14 May 2020 10:37:01 +0200
Message-Id: <20200514083710.143394-6-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200514083710.143394-1-bjorn.topel@gmail.com>
References: <20200514083710.143394-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 14 May 2020 14:49:16 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v2 05/14] i40e: refactor rx_bi
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
