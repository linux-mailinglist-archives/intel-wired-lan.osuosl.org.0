Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B083225DA91
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 15:54:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 573892E1A4;
	Fri,  4 Sep 2020 13:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vUyBb7EFHoI3; Fri,  4 Sep 2020 13:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E95E2041A;
	Fri,  4 Sep 2020 13:54:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85CD21BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8001220341
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q6dXJksL2F5N for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 13:54:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id E449520115
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:24 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id b16so3239252pjp.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Sep 2020 06:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ndlvsQFIeAXfc3bcbH6mbqQWsrzfWC6PhjjCGX9XLA8=;
 b=Edvfi7J9dq/mGVeTaUoSyXhsYATv0l+s2ALa97MuHv8o4cr4zqviEdBmBps0FWI+XC
 DnpzaaBRMb/pmRy9XntxBWagDNu+rKf8OXgltLwPK8S1Ye4vvu176e5ICCHhsg1HW8kR
 SC/khNiqpJTblNrrFCODwQmfhdklLZAVno2vEgO7eaLdOEZPWwlgg5iQLORKUipo/TzM
 IDrp6GMOmjd+ieuKLb7FyFr8Rv7a13+xQg4zvfmKNujpgionXQFFyn6wvRiwo0HAxzsE
 L/60XL562FzCK7CF7iLLG7oRN1PGfrhTEiDU2+mjhNmOB+zlBZty6TDk/nC8q7njJQgY
 GUCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ndlvsQFIeAXfc3bcbH6mbqQWsrzfWC6PhjjCGX9XLA8=;
 b=o5dMtV4H85qAHz5qFp/7vv5gjon0xqGhJ+dhUTIvcieyF1x1dLFqCgswg0JQESejwm
 0Yz+h+pa9IQ7Bpb7ZHnD2epJbJUkWrY0t4eeNz1JwL8eI5J6cIJuBRFJzZV/G3KzOnIy
 hSbIxtjlSir3FzXfFFfHedjp6igSEzbEhRaU2eiXy3x8NCP2/GXOaTUIlKy0pMnHZSUp
 1VZfPQNB3STUawsj90RuhWrL6o9YBF81j+29QG9aUldclFGdGfzvIuCEi9bl7aywt0RP
 oFo5yNKcPuXQQCvPQhdmwivr4UA99166Q4pjdIn6xaYRuYUOkbxDvRli8NmEa0W1kZG3
 qrUQ==
X-Gm-Message-State: AOAM532V5zGEicDzSVnp3k2ATobGLfke1HvIDG+dyWBJjm5SD8c8J6HO
 XV5iBrzDu57llB9Ht+sIl7tXo3L5vl5w2zZ8
X-Google-Smtp-Source: ABdhPJweTAGZ9F7Kn14qT3nNdQ72xvhDC1jpCcaeNMvBJHFxl/NA7IL76Ulfc8SEUIDLSb+nE6kthA==
X-Received: by 2002:a17:902:7607:: with SMTP id
 k7mr8577410pll.91.1599227664587; 
 Fri, 04 Sep 2020 06:54:24 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id g9sm6931239pfr.172.2020.09.04.06.54.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 06:54:24 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Fri,  4 Sep 2020 15:53:28 +0200
Message-Id: <20200904135332.60259-4-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904135332.60259-1-bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 3/6] xsk: introduce
 xsk_do_redirect_rx_full() helper
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKVGhlIHhza19kb19y
ZWRpcmVjdF9yeF9mdWxsKCkgaGVscGVyIGNhbiBiZSB1c2VkIHRvIGNoZWNrIGlmIGEgZmFpbHVy
ZQpvZiB4ZHBfZG9fcmVkaXJlY3QoKSB3YXMgZHVlIHRvIHRoZSBBRl9YRFAgc29ja2V0IGhhZCBh
IGZ1bGwgUnggcmluZy4KClNpZ25lZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVs
QGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL25ldC94ZHBfc29ja19kcnYuaCB8IDkgKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9u
ZXQveGRwX3NvY2tfZHJ2LmggYi9pbmNsdWRlL25ldC94ZHBfc29ja19kcnYuaAppbmRleCA1YjFl
ZThhOTk3NmQuLjM0YzU4YjVmYmMyOCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9uZXQveGRwX3NvY2tf
ZHJ2LmgKKysrIGIvaW5jbHVkZS9uZXQveGRwX3NvY2tfZHJ2LmgKQEAgLTExNiw2ICsxMTYsMTEg
QEAgc3RhdGljIGlubGluZSB2b2lkIHhza19idWZmX3Jhd19kbWFfc3luY19mb3JfZGV2aWNlKHN0
cnVjdCB4c2tfYnVmZl9wb29sICpwb29sLAogCXhwX2RtYV9zeW5jX2Zvcl9kZXZpY2UocG9vbCwg
ZG1hLCBzaXplKTsKIH0KIAorc3RhdGljIGlubGluZSBib29sIHhza19kb19yZWRpcmVjdF9yeF9m
dWxsKGludCBlcnIsIGVudW0gYnBmX21hcF90eXBlIG1hcF90eXBlKQoreworCXJldHVybiBlcnIg
PT0gLUVOT0JVRlMgJiYgbWFwX3R5cGUgPT0gQlBGX01BUF9UWVBFX1hTS01BUDsKK30KKwogI2Vs
c2UKIAogc3RhdGljIGlubGluZSB2b2lkIHhza190eF9jb21wbGV0ZWQoc3RydWN0IHhza19idWZm
X3Bvb2wgKnBvb2wsIHUzMiBuYl9lbnRyaWVzKQpAQCAtMjM1LDYgKzI0MCwxMCBAQCBzdGF0aWMg
aW5saW5lIHZvaWQgeHNrX2J1ZmZfcmF3X2RtYV9zeW5jX2Zvcl9kZXZpY2Uoc3RydWN0IHhza19i
dWZmX3Bvb2wgKnBvb2wsCiB7CiB9CiAKK3N0YXRpYyBpbmxpbmUgYm9vbCB4c2tfZG9fcmVkaXJl
Y3RfcnhfZnVsbChpbnQgZXJyLCBlbnVtIGJwZl9tYXBfdHlwZSBtYXBfdHlwZSkKK3sKKwlyZXR1
cm4gZmFsc2U7Cit9CiAjZW5kaWYgLyogQ09ORklHX1hEUF9TT0NLRVRTICovCiAKICNlbmRpZiAv
KiBfTElOVVhfWERQX1NPQ0tfRFJWX0ggKi8KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
