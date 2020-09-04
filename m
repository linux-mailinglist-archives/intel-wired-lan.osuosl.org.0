Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BBA25DA8F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 15:54:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2FDF86BBB;
	Fri,  4 Sep 2020 13:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ORKgffsKAL6R; Fri,  4 Sep 2020 13:54:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 229B186C3A;
	Fri,  4 Sep 2020 13:54:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC4CB1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C2B0920341
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H1e1Lqn4+WHn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 13:54:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 0322620115
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:20 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id gf14so3076311pjb.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Sep 2020 06:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m9z4cRfJn8UcZ/9frCTkEjGN764ybO6hPefQpHU5TmI=;
 b=bK3iNa4A/UEw1MU4mezHth5dLxzdli+bEgNfEwtdEWI7IUOhw4S1wwu8BH3kcP1d0J
 rsfeBwNGMswAm/Rlv2BvFHNUkuG6l4QHhuzL3PANSlg0vUv6bQphl7N54K9spydzSPD6
 ajDD+Q1uf8UAZXp6XMuUoSqw6jUxZA3nuvmUV8GdnAYb2jTR9Qm5TbIjCp3LT3kWXjNM
 /cxxVDEDMFdWVWmiE/mcZMbI17ASZ4yN7KVLNzqPlwJ+SFF79rqmQYpJe1dGq4qJYzK5
 gVJRNAN1dUHkn8tyDGQCXyW4QulPcGPEgrgbGmpb7QxS5UviAP0k/HqhSvS/+vhVMlEe
 DCqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m9z4cRfJn8UcZ/9frCTkEjGN764ybO6hPefQpHU5TmI=;
 b=nZjlqxWftACgAQxbX7DNjXpZw9I4EU4dmcH9boGD2KkQQW+j3yva+/yO60dASKFnOt
 q98jfORM1EUxAEHVm0WvugONTQ12DAhEEX34xt9SwqW1iAVL/QMp8yYMmnd7iTj7SYto
 ldwBzaistD2Vd8ASZcHAbxXYn5S7jBGtO7nSRnnknQNa0qkex5qtKAINfV94lRrRJyr/
 sa9VGUkUE3aFw5BtsMEzurP59bslIkby0dapzuRmAQ4iPrYVrnRY9KyWTgVuClNlB22F
 3Ng4CDzXBUIXf9ZrLJjTxZK3vJVkbVipWNTMNpoOLww8YQHdrtZFvjlqJ+NiWWAmXMp+
 c+ZA==
X-Gm-Message-State: AOAM532y6x6xMK4a5clocGlCzLO/Zlino86czP11L6VboLUhqpqN93qs
 MyUbgH306rlpQZIwZ3P4cM4=
X-Google-Smtp-Source: ABdhPJwJ8TlaOVV3wCqW/daU3Hy40stCQrDheIx0EIvFRROBLU822+X3TsrXxGs4jJ/3wpxjw+F59g==
X-Received: by 2002:a17:902:848a:: with SMTP id
 c10mr8598273plo.8.1599227659617; 
 Fri, 04 Sep 2020 06:54:19 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id g9sm6931239pfr.172.2020.09.04.06.54.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 06:54:19 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Fri,  4 Sep 2020 15:53:27 +0200
Message-Id: <20200904135332.60259-3-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904135332.60259-1-bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 2/6] xdp: introduce
 xdp_do_redirect_ext() function
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
Cc: hawk@kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKSW50cm9kdWNlIHRo
ZSB4ZHBfZG9fcmVkaXJlY3RfZXh0KCkgd2hpY2ggcmV0dXJucyBhZGRpdGlvbmFsCmluZm9ybWF0
aW9uIHRvIHRoZSBjYWxsZXIuIEZvciBub3csIGl0IGlzIHRoZSB0eXBlIG9mIG1hcCB0aGF0IHRo
ZQpwYWNrZXQgd2FzIHJlZGlyZWN0ZWQgdG8uCgpUaGlzIGVuYWJsZXMgdGhlIGRyaXZlciB0byBo
YXZlIG1vcmUgZmluZS1ncmFpbmVkIGNvbnRyb2wsIGUuZy4gaXMgdGhlCnJlZGlyZWN0IGZhaWxz
IGR1ZSB0byBmdWxsIEFGX1hEUCBSeCBxdWV1ZSAoZXJyb3IgY29kZSBFTk9CVUZTIGFuZCBtYXAK
aXMgWFNLTUFQKSwgYSB6ZXJvLWNvcHkgZW5hYmxlZCBkcml2ZXIgc2hvdWxkIHlpZWxkIHRvIHVz
ZXJsYW5kIGFzCnNvb24gYXMgcG9zc2libGUuCgpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVs
IDxiam9ybi50b3BlbEBpbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9saW51eC9maWx0ZXIuaCB8ICAy
ICsrCiBuZXQvY29yZS9maWx0ZXIuYyAgICAgIHwgMTYgKysrKysrKysrKysrKystLQogMiBmaWxl
cyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZmlsdGVyLmggYi9pbmNsdWRlL2xpbnV4L2ZpbHRlci5oCmluZGV4IDk5
NTYyNTk1MGNjMS4uMDA2MGMyYzhhYmMzIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L2ZpbHRl
ci5oCisrKyBiL2luY2x1ZGUvbGludXgvZmlsdGVyLmgKQEAgLTk0Miw2ICs5NDIsOCBAQCBzdGF0
aWMgaW5saW5lIGludCB4ZHBfb2tfZndkX2Rldihjb25zdCBzdHJ1Y3QgbmV0X2RldmljZSAqZndk
LAogICovCiBpbnQgeGRwX2RvX2dlbmVyaWNfcmVkaXJlY3Qoc3RydWN0IG5ldF9kZXZpY2UgKmRl
diwgc3RydWN0IHNrX2J1ZmYgKnNrYiwKIAkJCSAgICBzdHJ1Y3QgeGRwX2J1ZmYgKnhkcCwgc3Ry
dWN0IGJwZl9wcm9nICpwcm9nKTsKK2ludCB4ZHBfZG9fcmVkaXJlY3RfZXh0KHN0cnVjdCBuZXRf
ZGV2aWNlICpkZXYsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwLAorCQkJc3RydWN0IGJwZl9wcm9nICp4
ZHBfcHJvZywgZW51bSBicGZfbWFwX3R5cGUgKm1hcF90eXBlKTsKIGludCB4ZHBfZG9fcmVkaXJl
Y3Qoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwKIAkJICAgIHN0cnVjdCB4ZHBfYnVmZiAqeGRwLAog
CQkgICAgc3RydWN0IGJwZl9wcm9nICpwcm9nKTsKZGlmZiAtLWdpdCBhL25ldC9jb3JlL2ZpbHRl
ci5jIGIvbmV0L2NvcmUvZmlsdGVyLmMKaW5kZXggNDdlZWY5YTBiZTZhLi5jZTYwOTgyMTBhMjMg
MTAwNjQ0Ci0tLSBhL25ldC9jb3JlL2ZpbHRlci5jCisrKyBiL25ldC9jb3JlL2ZpbHRlci5jCkBA
IC0zNTk2LDggKzM1OTYsOCBAQCB2b2lkIGJwZl9jbGVhcl9yZWRpcmVjdF9tYXAoc3RydWN0IGJw
Zl9tYXAgKm1hcCkKIAl9CiB9CiAKLWludCB4ZHBfZG9fcmVkaXJlY3Qoc3RydWN0IG5ldF9kZXZp
Y2UgKmRldiwgc3RydWN0IHhkcF9idWZmICp4ZHAsCi0JCSAgICBzdHJ1Y3QgYnBmX3Byb2cgKnhk
cF9wcm9nKQoraW50IHhkcF9kb19yZWRpcmVjdF9leHQoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwg
c3RydWN0IHhkcF9idWZmICp4ZHAsCisJCQlzdHJ1Y3QgYnBmX3Byb2cgKnhkcF9wcm9nLCBlbnVt
IGJwZl9tYXBfdHlwZSAqbWFwX3R5cGUpCiB7CiAJc3RydWN0IGJwZl9yZWRpcmVjdF9pbmZvICpy
aSA9IHRoaXNfY3B1X3B0cigmYnBmX3JlZGlyZWN0X2luZm8pOwogCXN0cnVjdCBicGZfbWFwICpt
YXAgPSBSRUFEX09OQ0UocmktPm1hcCk7CkBAIC0zNjA5LDYgKzM2MDksOCBAQCBpbnQgeGRwX2Rv
X3JlZGlyZWN0KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwLAog
CXJpLT50Z3RfdmFsdWUgPSBOVUxMOwogCVdSSVRFX09OQ0UocmktPm1hcCwgTlVMTCk7CiAKKwkq
bWFwX3R5cGUgPSBCUEZfTUFQX1RZUEVfVU5TUEVDOworCiAJaWYgKHVubGlrZWx5KCFtYXApKSB7
CiAJCWZ3ZCA9IGRldl9nZXRfYnlfaW5kZXhfcmN1KGRldl9uZXQoZGV2KSwgaW5kZXgpOwogCQlp
ZiAodW5saWtlbHkoIWZ3ZCkpIHsKQEAgLTM2MTgsNiArMzYyMCw3IEBAIGludCB4ZHBfZG9fcmVk
aXJlY3Qoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgc3RydWN0IHhkcF9idWZmICp4ZHAsCiAKIAkJ
ZXJyID0gZGV2X3hkcF9lbnF1ZXVlKGZ3ZCwgeGRwLCBkZXYpOwogCX0gZWxzZSB7CisJCSptYXBf
dHlwZSA9IG1hcC0+bWFwX3R5cGU7CiAJCWVyciA9IF9fYnBmX3R4X3hkcF9tYXAoZGV2LCBmd2Qs
IG1hcCwgeGRwKTsKIAl9CiAKQEAgLTM2MzAsNiArMzYzMywxNSBAQCBpbnQgeGRwX2RvX3JlZGly
ZWN0KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwLAogCV90cmFj
ZV94ZHBfcmVkaXJlY3RfbWFwX2VycihkZXYsIHhkcF9wcm9nLCBmd2QsIG1hcCwgaW5kZXgsIGVy
cik7CiAJcmV0dXJuIGVycjsKIH0KK0VYUE9SVF9TWU1CT0xfR1BMKHhkcF9kb19yZWRpcmVjdF9l
eHQpOworCitpbnQgeGRwX2RvX3JlZGlyZWN0KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIHN0cnVj
dCB4ZHBfYnVmZiAqeGRwLAorCQkgICAgc3RydWN0IGJwZl9wcm9nICp4ZHBfcHJvZykKK3sKKwll
bnVtIGJwZl9tYXBfdHlwZSBkdW1teTsKKworCXJldHVybiB4ZHBfZG9fcmVkaXJlY3RfZXh0KGRl
diwgeGRwLCB4ZHBfcHJvZywgJmR1bW15KTsKK30KIEVYUE9SVF9TWU1CT0xfR1BMKHhkcF9kb19y
ZWRpcmVjdCk7CiAKIHN0YXRpYyBpbnQgeGRwX2RvX2dlbmVyaWNfcmVkaXJlY3RfbWFwKHN0cnVj
dCBuZXRfZGV2aWNlICpkZXYsCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
