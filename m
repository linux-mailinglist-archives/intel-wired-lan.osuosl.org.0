Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC197251526
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 11:17:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F3D487F8C;
	Tue, 25 Aug 2020 09:17:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id haja0JwSz6nF; Tue, 25 Aug 2020 09:17:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CBFF87FBE;
	Tue, 25 Aug 2020 09:17:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 821B81BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7C46887F9B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nq8ys6vehYEp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 09:16:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 683A187F8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:16:59 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id k15so361148pfc.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 02:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lSOHb2BtMg2wPWXugkRPn8o1h+t2kwdV3CyIiFwfvr8=;
 b=kI1hBVArsOgYGkWu3YDpNcrIjZ/zjWZtkKwTeplIQvAyLW/VjhSFoU9tuza+6o5QXP
 dI6gDDlaXbn6rJm+wbWxLMrV3aa9CIyWhzaBCSchlx/X9wgzBOoiHgH9tQRF8B6USaDM
 VIVz1J17MuptUXI0o30kK9GT5sb6V6JI/z/+syvNUPptvxDNNE3Gh64TE7uBp3KvO3b5
 p/o4JM+fHsoL5hP+nB74Az+C2X8Pv49kAIQuRn+SAfvsQdxT+zuRxoZXncHfDTDrTteG
 GFOtFSpYF5MkLkS3rsVWzs+vjQe61+GtGRcFzxeVCI5stQSNFVm2JsK/no96Mfu9tuS0
 2wlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lSOHb2BtMg2wPWXugkRPn8o1h+t2kwdV3CyIiFwfvr8=;
 b=BVzhtAronTQF2t+/252C0PlLuRqSLs/Z+RZjZVObQXbJboA3gARzBDktt6Xfk39GI3
 DBowR7lgomP15t9MY3xQHUvzXCURQRKEL12ctIsHX5vsyfQZx9oUAk2iMnM2WTKlrnsY
 sQPa93F76MIWqgyEn8O++6ZF7V2ohLsoVN18U8mRjZ0FfORHAmmTpEQNVXRi+gYAmmsa
 jxshKN3PsODPUO8xAci7y7/K4mYB+TxxYfL1TS4wa4/ciOO/7Spdx+rdjgK966oeBOFl
 pAM+lozX8Ld+OCAeO3opRbHzeDuWGEOyAGuxOPlD7JayJUBDJkiptQT9tG50If437tyQ
 ylKA==
X-Gm-Message-State: AOAM5329g6iJ/xI/GdiZQcNf3QiIO7h8I77zeQKkYScNNQ1zkCLdxDd5
 GT8yAVZoLbb1E7O5mtWtte8=
X-Google-Smtp-Source: ABdhPJwWItfwTBa/7GlcEVgEAzPrBO0irVfimfNXGk8E7ihltw5bz80TrhDJLF7RooYRBcUVe1I4SA==
X-Received: by 2002:a63:2944:: with SMTP id p65mr6384832pgp.271.1598347019028; 
 Tue, 25 Aug 2020 02:16:59 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id 2sm2121857pjg.32.2020.08.25.02.16.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 02:16:58 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: jeffrey.t.kirsher@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Aug 2020 11:16:29 +0200
Message-Id: <20200825091629.12949-4-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200825091629.12949-1-bjorn.topel@gmail.com>
References: <20200825091629.12949-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 3/3] ice: avoid premature Rx buffer
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
LgoKRml4ZXM6IGVmYzIyMTRiNjA0NyAoImljZTogQWRkIHN1cHBvcnQgZm9yIFhEUCIpClNpZ25l
ZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYyB8IDMxICsrKysrKysrKysrKysr
KystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cngu
YyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jCmluZGV4IDlkMGQ2
YjAwMjVjZi4uMDNhODhjOGYxN2I3IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3R4cnguYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3R4cnguYwpAQCAtNzY4LDcgKzc2OCw4IEBAIGljZV9yeF9idWZfYWRqdXN0X3BnX29mZnNl
dChzdHJ1Y3QgaWNlX3J4X2J1ZiAqcnhfYnVmLCB1bnNpZ25lZCBpbnQgc2l6ZSkKICAqIHBvaW50
aW5nIHRvOyBvdGhlcndpc2UsIHRoZSBETUEgbWFwcGluZyBuZWVkcyB0byBiZSBkZXN0cm95ZWQg
YW5kCiAgKiBwYWdlIGZyZWVkCiAgKi8KLXN0YXRpYyBib29sIGljZV9jYW5fcmV1c2VfcnhfcGFn
ZShzdHJ1Y3QgaWNlX3J4X2J1ZiAqcnhfYnVmKQorc3RhdGljIGJvb2wgaWNlX2Nhbl9yZXVzZV9y
eF9wYWdlKHN0cnVjdCBpY2VfcnhfYnVmICpyeF9idWYsCisJCQkJICBpbnQgcnhfYnVmX3BnY250
KQogewogCXVuc2lnbmVkIGludCBwYWdlY250X2JpYXMgPSByeF9idWYtPnBhZ2VjbnRfYmlhczsK
IAlzdHJ1Y3QgcGFnZSAqcGFnZSA9IHJ4X2J1Zi0+cGFnZTsKQEAgLTc3OSw3ICs3ODAsNyBAQCBz
dGF0aWMgYm9vbCBpY2VfY2FuX3JldXNlX3J4X3BhZ2Uoc3RydWN0IGljZV9yeF9idWYgKnJ4X2J1
ZikKIAogI2lmIChQQUdFX1NJWkUgPCA4MTkyKQogCS8qIGlmIHdlIGFyZSBvbmx5IG93bmVyIG9m
IHBhZ2Ugd2UgY2FuIHJldXNlIGl0ICovCi0JaWYgKHVubGlrZWx5KChwYWdlX2NvdW50KHBhZ2Up
IC0gcGFnZWNudF9iaWFzKSA+IDEpKQorCWlmICh1bmxpa2VseSgocnhfYnVmX3BnY250IC0gcGFn
ZWNudF9iaWFzKSA+IDEpKQogCQlyZXR1cm4gZmFsc2U7CiAjZWxzZQogI2RlZmluZSBJQ0VfTEFT
VF9PRkZTRVQgXApAQCAtODU5LDYgKzg2MCwxNSBAQCBpY2VfcmV1c2VfcnhfcGFnZShzdHJ1Y3Qg
aWNlX3JpbmcgKnJ4X3JpbmcsIHN0cnVjdCBpY2VfcnhfYnVmICpvbGRfYnVmKQogCW5ld19idWYt
PnBhZ2VjbnRfYmlhcyA9IG9sZF9idWYtPnBhZ2VjbnRfYmlhczsKIH0KIAorc3RhdGljIGludCBp
Y2VfcnhfYnVmX3BhZ2VfY291bnQoc3RydWN0IGljZV9yeF9idWYgKnJ4X2J1ZikKK3sKKyNpZiAo
UEFHRV9TSVpFIDwgODE5MikKKwlyZXR1cm4gcGFnZV9jb3VudChyeF9idWYtPnBhZ2UpOworI2Vs
c2UKKwlyZXR1cm4gMDsKKyNlbmRpZgorfQorCiAvKioKICAqIGljZV9nZXRfcnhfYnVmIC0gRmV0
Y2ggUnggYnVmZmVyIGFuZCBzeW5jaHJvbml6ZSBkYXRhIGZvciB1c2UKICAqIEByeF9yaW5nOiBS
eCBkZXNjcmlwdG9yIHJpbmcgdG8gdHJhbnNhY3QgcGFja2V0cyBvbgpAQCAtODcwLDExICs4ODAs
MTMgQEAgaWNlX3JldXNlX3J4X3BhZ2Uoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBzdHJ1Y3Qg
aWNlX3J4X2J1ZiAqb2xkX2J1ZikKICAqLwogc3RhdGljIHN0cnVjdCBpY2VfcnhfYnVmICoKIGlj
ZV9nZXRfcnhfYnVmKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgc3RydWN0IHNrX2J1ZmYgKipz
a2IsCi0JICAgICAgIGNvbnN0IHVuc2lnbmVkIGludCBzaXplKQorCSAgICAgICBjb25zdCB1bnNp
Z25lZCBpbnQgc2l6ZSwKKwkgICAgICAgaW50ICpyeF9idWZfcGdjbnQpCiB7CiAJc3RydWN0IGlj
ZV9yeF9idWYgKnJ4X2J1ZjsKIAogCXJ4X2J1ZiA9ICZyeF9yaW5nLT5yeF9idWZbcnhfcmluZy0+
bmV4dF90b19jbGVhbl07CisJKnJ4X2J1Zl9wZ2NudCA9IGljZV9yeF9idWZfcGFnZV9jb3VudChy
eF9idWYpOwogCXByZWZldGNodyhyeF9idWYtPnBhZ2UpOwogCSpza2IgPSByeF9idWYtPnNrYjsK
IApAQCAtMTAxNyw3ICsxMDI5LDcgQEAgaWNlX2NvbnN0cnVjdF9za2Ioc3RydWN0IGljZV9yaW5n
ICpyeF9yaW5nLCBzdHJ1Y3QgaWNlX3J4X2J1ZiAqcnhfYnVmLAogICogb2YgdGhlIHJ4X2J1Zi4g
SXQgd2lsbCBlaXRoZXIgcmVjeWNsZSB0aGUgYnVmZmVyIG9yIHVubWFwIGl0IGFuZCBmcmVlCiAg
KiB0aGUgYXNzb2NpYXRlZCByZXNvdXJjZXMuCiAgKi8KLXN0YXRpYyB2b2lkIGljZV9wdXRfcnhf
YnVmKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgc3RydWN0IGljZV9yeF9idWYgKnJ4X2J1ZikK
K3N0YXRpYyB2b2lkIGljZV9wdXRfcnhfYnVmKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgc3Ry
dWN0IGljZV9yeF9idWYgKnJ4X2J1ZiwgaW50IHJ4X2J1Zl9wZ2NudCkKIHsKIAl1MTYgbnRjID0g
cnhfcmluZy0+bmV4dF90b19jbGVhbiArIDE7CiAKQEAgLTEwMjgsNyArMTA0MCw3IEBAIHN0YXRp
YyB2b2lkIGljZV9wdXRfcnhfYnVmKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgc3RydWN0IGlj
ZV9yeF9idWYgKnJ4X2J1ZikKIAlpZiAoIXJ4X2J1ZikKIAkJcmV0dXJuOwogCi0JaWYgKGljZV9j
YW5fcmV1c2VfcnhfcGFnZShyeF9idWYpKSB7CisJaWYgKGljZV9jYW5fcmV1c2VfcnhfcGFnZShy
eF9idWYsIHJ4X2J1Zl9wZ2NudCkpIHsKIAkJLyogaGFuZCBzZWNvbmQgaGFsZiBvZiBwYWdlIGJh
Y2sgdG8gdGhlIHJpbmcgKi8KIAkJaWNlX3JldXNlX3J4X3BhZ2UocnhfcmluZywgcnhfYnVmKTsK
IAl9IGVsc2UgewpAQCAtMTA4OCw2ICsxMTAwLDcgQEAgaW50IGljZV9jbGVhbl9yeF9pcnEoc3Ry
dWN0IGljZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQogCXVuc2lnbmVkIGludCB4ZHBfcmVz
LCB4ZHBfeG1pdCA9IDA7CiAJc3RydWN0IGJwZl9wcm9nICp4ZHBfcHJvZyA9IE5VTEw7CiAJc3Ry
dWN0IHhkcF9idWZmIHhkcDsKKwlpbnQgcnhfYnVmX3BnY250OwogCWJvb2wgZmFpbHVyZTsKIAog
CXhkcC5yeHEgPSAmcnhfcmluZy0+eGRwX3J4cTsKQEAgLTExMjUsNyArMTEzOCw3IEBAIGludCBp
Y2VfY2xlYW5fcnhfaXJxKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAkJ
ZG1hX3JtYigpOwogCiAJCWlmIChyeF9kZXNjLT53Yi5yeGRpZCA9PSBGRElSX0RFU0NfUlhESUQg
fHwgIXJ4X3JpbmctPm5ldGRldikgewotCQkJaWNlX3B1dF9yeF9idWYocnhfcmluZywgTlVMTCk7
CisJCQlpY2VfcHV0X3J4X2J1ZihyeF9yaW5nLCBOVUxMLCAwKTsKIAkJCWNsZWFuZWRfY291bnQr
KzsKIAkJCWNvbnRpbnVlOwogCQl9CkBAIC0xMTM0LDcgKzExNDcsNyBAQCBpbnQgaWNlX2NsZWFu
X3J4X2lycShzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiAJCQlJQ0VfUlhf
RkxYX0RFU0NfUEtUX0xFTl9NOwogCiAJCS8qIHJldHJpZXZlIGEgYnVmZmVyIGZyb20gdGhlIHJp
bmcgKi8KLQkJcnhfYnVmID0gaWNlX2dldF9yeF9idWYocnhfcmluZywgJnNrYiwgc2l6ZSk7CisJ
CXJ4X2J1ZiA9IGljZV9nZXRfcnhfYnVmKHJ4X3JpbmcsICZza2IsIHNpemUsICZyeF9idWZfcGdj
bnQpOwogCiAJCWlmICghc2l6ZSkgewogCQkJeGRwLmRhdGEgPSBOVUxMOwpAQCAtMTE3NCw3ICsx
MTg3LDcgQEAgaW50IGljZV9jbGVhbl9yeF9pcnEoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBp
bnQgYnVkZ2V0KQogCQl0b3RhbF9yeF9wa3RzKys7CiAKIAkJY2xlYW5lZF9jb3VudCsrOwotCQlp
Y2VfcHV0X3J4X2J1ZihyeF9yaW5nLCByeF9idWYpOworCQlpY2VfcHV0X3J4X2J1ZihyeF9yaW5n
LCByeF9idWYsIHJ4X2J1Zl9wZ2NudCk7CiAJCWNvbnRpbnVlOwogY29uc3RydWN0X3NrYjoKIAkJ
aWYgKHNrYikgewpAQCAtMTE5Myw3ICsxMjA2LDcgQEAgaW50IGljZV9jbGVhbl9yeF9pcnEoc3Ry
dWN0IGljZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQogCQkJYnJlYWs7CiAJCX0KIAotCQlp
Y2VfcHV0X3J4X2J1ZihyeF9yaW5nLCByeF9idWYpOworCQlpY2VfcHV0X3J4X2J1ZihyeF9yaW5n
LCByeF9idWYsIHJ4X2J1Zl9wZ2NudCk7CiAJCWNsZWFuZWRfY291bnQrKzsKIAogCQkvKiBza2lw
IGlmIGl0IGlzIE5PUCBkZXNjICovCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
