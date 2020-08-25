Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AF2251523
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 11:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB0F6866C8;
	Tue, 25 Aug 2020 09:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VSjxpHiIPeCI; Tue, 25 Aug 2020 09:16:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D81AD866F2;
	Tue, 25 Aug 2020 09:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E78C1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A4DC87F8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:16:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g4yujU8MH0hR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 09:16:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 48A8487F9B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:16:55 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id z18so918700pjr.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 02:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R8XTi8qvu+toNhdfEJW+FeTXeAE1uYK8ZjIgOFsPChs=;
 b=DAg8CGn//Li0QGdpYMY1ZV0Evl5CbSIXuCdVKC2uYBYv1XAmKF8hAKNiXisfUdSmxH
 qmFSr0WKJZBcppTQ6WH7ezGvpq5pto1Veo9UqRk6gHDLSv06imc5NplC/uQB8EE5TX5y
 nlaC8MRyl91cKGxhWDv7hLGk35Zqit5P2L+X4uqDGkg5lMSu1bqqkcZiweJkNz2jucgY
 h4MrruWencTIr1ndxxocusN04+1yF0HEJXoVdmzQUDB/YrSbq4oR11aQeVDGFJPAsj/b
 rZmW/NODRsBSk5CU/0qmYOEbL8Y//tM1f7OIVxRBb7G8/Hw9wyOwSpPL7hlal43kdgQw
 M31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R8XTi8qvu+toNhdfEJW+FeTXeAE1uYK8ZjIgOFsPChs=;
 b=GzNsi+X5JxWrSxANcj+akI66qt91504XTt9pL19+KBIY+YIR2nNPFTjBnbAKEEYNxi
 VJZZspXO/VLuye05WAWVf0FuQBg+A3v7vcTMuqp55wowkdBc9mCzgg6KqVIjgCU2aLyq
 WmIP/rqLT8mEBNhO8x83NVK8rPQYEtA4EaKqfGVyxmSEsLG53BBoUQTX++b5Qu0DupWo
 v86nK8qZ6UtJbwWuvFA4DZ2sfskhCoWgO7DAcvNY5zFGcJDOD9hM4lrJ1wC+6o7eMGtd
 op/GJZXL1HQestWCwfo/vCcCzRkz68QDpSCJyaIG1ZePdw1C2FWduWRW6Q/qqqRJDGi9
 OPMg==
X-Gm-Message-State: AOAM532WZpcdGPiX309AtXPRLB64qEUcSiIIPpNqkTufQ2AcwadArxxq
 SyeWCnD2IeDNlpHHHTQ/ELg=
X-Google-Smtp-Source: ABdhPJx6RmfZMrj9BxYXpc2JaWUs+lxm8tEAqhpdGCByfEK/MApwWSZPVNerqpnfQ4kTyhiTw5vLFw==
X-Received: by 2002:a17:90a:d808:: with SMTP id
 a8mr835295pjv.127.1598347014929; 
 Tue, 25 Aug 2020 02:16:54 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id 2sm2121857pjg.32.2020.08.25.02.16.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 02:16:53 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: jeffrey.t.kirsher@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Aug 2020 11:16:28 +0200
Message-Id: <20200825091629.12949-3-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200825091629.12949-1-bjorn.topel@gmail.com>
References: <20200825091629.12949-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 2/3] ixgbe: avoid premature Rx buffer
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
LgoKRml4ZXM6IDY0NTMwNzM5ODdiYSAoIml4Z2JlOiBhZGQgaW5pdGlhbCBzdXBwb3J0IGZvciB4
ZHAgcmVkaXJlY3QiKQpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFp
bi5jIHwgMjggKysrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhn
YmUvaXhnYmVfbWFpbi5jCmluZGV4IDJmOGE0Y2ZjNWZhMS4uZmI1YzMxMWQ3MmI2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMKKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jCkBAIC0xOTQ1LDcg
KzE5NDUsOCBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaXhnYmVfcGFnZV9pc19yZXNlcnZlZChzdHJ1
Y3QgcGFnZSAqcGFnZSkKIAlyZXR1cm4gKHBhZ2VfdG9fbmlkKHBhZ2UpICE9IG51bWFfbWVtX2lk
KCkpIHx8IHBhZ2VfaXNfcGZtZW1hbGxvYyhwYWdlKTsKIH0KIAotc3RhdGljIGJvb2wgaXhnYmVf
Y2FuX3JldXNlX3J4X3BhZ2Uoc3RydWN0IGl4Z2JlX3J4X2J1ZmZlciAqcnhfYnVmZmVyKQorc3Rh
dGljIGJvb2wgaXhnYmVfY2FuX3JldXNlX3J4X3BhZ2Uoc3RydWN0IGl4Z2JlX3J4X2J1ZmZlciAq
cnhfYnVmZmVyLAorCQkJCSAgICBpbnQgcnhfYnVmZmVyX3BnY250KQogewogCXVuc2lnbmVkIGlu
dCBwYWdlY250X2JpYXMgPSByeF9idWZmZXItPnBhZ2VjbnRfYmlhczsKIAlzdHJ1Y3QgcGFnZSAq
cGFnZSA9IHJ4X2J1ZmZlci0+cGFnZTsKQEAgLTE5NTYsNyArMTk1Nyw3IEBAIHN0YXRpYyBib29s
IGl4Z2JlX2Nhbl9yZXVzZV9yeF9wYWdlKHN0cnVjdCBpeGdiZV9yeF9idWZmZXIgKnJ4X2J1ZmZl
cikKIAogI2lmIChQQUdFX1NJWkUgPCA4MTkyKQogCS8qIGlmIHdlIGFyZSBvbmx5IG93bmVyIG9m
IHBhZ2Ugd2UgY2FuIHJldXNlIGl0ICovCi0JaWYgKHVubGlrZWx5KChwYWdlX3JlZl9jb3VudChw
YWdlKSAtIHBhZ2VjbnRfYmlhcykgPiAxKSkKKwlpZiAodW5saWtlbHkoKHJ4X2J1ZmZlcl9wZ2Nu
dCAtIHBhZ2VjbnRfYmlhcykgPiAxKSkKIAkJcmV0dXJuIGZhbHNlOwogI2Vsc2UKIAkvKiBUaGUg
bGFzdCBvZmZzZXQgaXMgYSBiaXQgYWdncmVzc2l2ZSBpbiB0aGF0IHdlIGFzc3VtZSB0aGUKQEAg
LTIwMTgsMTQgKzIwMTksMjUgQEAgc3RhdGljIHZvaWQgaXhnYmVfYWRkX3J4X2ZyYWcoc3RydWN0
IGl4Z2JlX3JpbmcgKnJ4X3JpbmcsCiAjZW5kaWYKIH0KIAorc3RhdGljIGludCBpeGdiZV9yeF9i
dWZmZXJfcGFnZV9jb3VudChzdHJ1Y3QgaXhnYmVfcnhfYnVmZmVyICpyeF9idWZmZXIpCit7Cisj
aWYgKFBBR0VfU0laRSA8IDgxOTIpCisJcmV0dXJuIHBhZ2VfY291bnQocnhfYnVmZmVyLT5wYWdl
KTsKKyNlbHNlCisJcmV0dXJuIDA7CisjZW5kaWYKK30KKwogc3RhdGljIHN0cnVjdCBpeGdiZV9y
eF9idWZmZXIgKml4Z2JlX2dldF9yeF9idWZmZXIoc3RydWN0IGl4Z2JlX3JpbmcgKnJ4X3Jpbmcs
CiAJCQkJCQkgICB1bmlvbiBpeGdiZV9hZHZfcnhfZGVzYyAqcnhfZGVzYywKIAkJCQkJCSAgIHN0
cnVjdCBza19idWZmICoqc2tiLAotCQkJCQkJICAgY29uc3QgdW5zaWduZWQgaW50IHNpemUpCisJ
CQkJCQkgICBjb25zdCB1bnNpZ25lZCBpbnQgc2l6ZSwKKwkJCQkJCSAgIGludCAqcnhfYnVmZmVy
X3BnY250KQogewogCXN0cnVjdCBpeGdiZV9yeF9idWZmZXIgKnJ4X2J1ZmZlcjsKIAogCXJ4X2J1
ZmZlciA9ICZyeF9yaW5nLT5yeF9idWZmZXJfaW5mb1tyeF9yaW5nLT5uZXh0X3RvX2NsZWFuXTsK
KwkqcnhfYnVmZmVyX3BnY250ID0gaXhnYmVfcnhfYnVmZmVyX3BhZ2VfY291bnQocnhfYnVmZmVy
KTsKIAlwcmVmZXRjaHcocnhfYnVmZmVyLT5wYWdlKTsKIAkqc2tiID0gcnhfYnVmZmVyLT5za2I7
CiAKQEAgLTIwNTUsOSArMjA2NywxMCBAQCBzdGF0aWMgc3RydWN0IGl4Z2JlX3J4X2J1ZmZlciAq
aXhnYmVfZ2V0X3J4X2J1ZmZlcihzdHJ1Y3QgaXhnYmVfcmluZyAqcnhfcmluZywKIAogc3RhdGlj
IHZvaWQgaXhnYmVfcHV0X3J4X2J1ZmZlcihzdHJ1Y3QgaXhnYmVfcmluZyAqcnhfcmluZywKIAkJ
CQlzdHJ1Y3QgaXhnYmVfcnhfYnVmZmVyICpyeF9idWZmZXIsCi0JCQkJc3RydWN0IHNrX2J1ZmYg
KnNrYikKKwkJCQlzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAorCQkJCWludCByeF9idWZmZXJfcGdjbnQp
CiB7Ci0JaWYgKGl4Z2JlX2Nhbl9yZXVzZV9yeF9wYWdlKHJ4X2J1ZmZlcikpIHsKKwlpZiAoaXhn
YmVfY2FuX3JldXNlX3J4X3BhZ2UocnhfYnVmZmVyLCByeF9idWZmZXJfcGdjbnQpKSB7CiAJCS8q
IGhhbmQgc2Vjb25kIGhhbGYgb2YgcGFnZSBiYWNrIHRvIHRoZSByaW5nICovCiAJCWl4Z2JlX3Jl
dXNlX3J4X3BhZ2UocnhfcmluZywgcnhfYnVmZmVyKTsKIAl9IGVsc2UgewpAQCAtMjI5Niw2ICsy
MzA5LDcgQEAgc3RhdGljIGludCBpeGdiZV9jbGVhbl9yeF9pcnEoc3RydWN0IGl4Z2JlX3FfdmVj
dG9yICpxX3ZlY3RvciwKIAl1MTYgY2xlYW5lZF9jb3VudCA9IGl4Z2JlX2Rlc2NfdW51c2VkKHJ4
X3JpbmcpOwogCXVuc2lnbmVkIGludCB4ZHBfeG1pdCA9IDA7CiAJc3RydWN0IHhkcF9idWZmIHhk
cDsKKwlpbnQgcnhfYnVmZmVyX3BnY250OwogCiAJeGRwLnJ4cSA9ICZyeF9yaW5nLT54ZHBfcnhx
OwogCkBAIC0yMzI3LDcgKzIzNDEsNyBAQCBzdGF0aWMgaW50IGl4Z2JlX2NsZWFuX3J4X2lycShz
dHJ1Y3QgaXhnYmVfcV92ZWN0b3IgKnFfdmVjdG9yLAogCQkgKi8KIAkJZG1hX3JtYigpOwogCi0J
CXJ4X2J1ZmZlciA9IGl4Z2JlX2dldF9yeF9idWZmZXIocnhfcmluZywgcnhfZGVzYywgJnNrYiwg
c2l6ZSk7CisJCXJ4X2J1ZmZlciA9IGl4Z2JlX2dldF9yeF9idWZmZXIocnhfcmluZywgcnhfZGVz
YywgJnNrYiwgc2l6ZSwgJnJ4X2J1ZmZlcl9wZ2NudCk7CiAKIAkJLyogcmV0cmlldmUgYSBidWZm
ZXIgZnJvbSB0aGUgcmluZyAqLwogCQlpZiAoIXNrYikgewpAQCAtMjM3Miw3ICsyMzg2LDcgQEAg
c3RhdGljIGludCBpeGdiZV9jbGVhbl9yeF9pcnEoc3RydWN0IGl4Z2JlX3FfdmVjdG9yICpxX3Zl
Y3RvciwKIAkJCWJyZWFrOwogCQl9CiAKLQkJaXhnYmVfcHV0X3J4X2J1ZmZlcihyeF9yaW5nLCBy
eF9idWZmZXIsIHNrYik7CisJCWl4Z2JlX3B1dF9yeF9idWZmZXIocnhfcmluZywgcnhfYnVmZmVy
LCBza2IsIHJ4X2J1ZmZlcl9wZ2NudCk7CiAJCWNsZWFuZWRfY291bnQrKzsKIAogCQkvKiBwbGFj
ZSBpbmNvbXBsZXRlIGZyYW1lcyBiYWNrIG9uIHJpbmcgZm9yIGNvbXBsZXRpb24gKi8KLS0gCjIu
MjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
