Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CDC25185A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 14:13:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADD6B88138;
	Tue, 25 Aug 2020 12:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bgcDnjzdmGZp; Tue, 25 Aug 2020 12:13:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C12678814E;
	Tue, 25 Aug 2020 12:13:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 854191BF37A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 12:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7CEC888138
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 12:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aFb0Fc9uuzYk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 12:13:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D172286A14
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 12:13:42 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id g1so2904656pgm.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 05:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UtTChdCSLkSxd+sRXkD3oHe4KiRrekM2v0o2HWq7aYE=;
 b=Hsjh+YUqtOge9m7LmuU6ncdvyxCBqkwk2x4en09veWJwHGTmJzThKIqvoJdIneojxK
 A2jTmZz5mjkLkj5e+osH45RxpSw5R/FbOy4qlWbFqbs3/d5JV67mjpdxRjWJown1aijQ
 AU0gJwbZKQ1oRXWh51AjaCEadzPRTwZsqKzGv92csICFSw543BHT9JNXmVcXWqZXubg5
 u5qGf0E2oI0fSAfXdh2znvI1Es+umwPEFNl+XyJcG2kjfN/8vkgdV8BA2kAWOuku/Kge
 9wjyOMZ70Iajv+TiCTyEa08NvJ6sYzAMMpxGjW9+053Eu/LXAEibBB9OXHilzvbphg7w
 IgsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UtTChdCSLkSxd+sRXkD3oHe4KiRrekM2v0o2HWq7aYE=;
 b=GYQjwkCGzfgnTSc7KwcOXin1GfZ6IqhmaKlYd06l9tG0Pb9sxOo43vBZkzCVljpC4p
 HEzr4GYvwi/MWHAFEyaxFDqlrnjgy5ZFhER9wuGBM3xn8xCel09XAzkxXQmTcaiPQTyl
 ynlwnPMjRPGNMYHzWd59h7/opqAEnFo9naDT8wTLB05JUkYbD8VgRkZikCFJLlzRpfJl
 pvq0z5gokzZWIUXEGrfruiDM1ktJ/bfGpUK6JBv6Ra9kqlR00y9f51qCgJkwnw3EqlpD
 E+g21kWpnlVOFSHrd/z37XmpoA6eS25NCGUJBqd1NQtN9LB/T9Oshty+IgLLrDrzRDFD
 GZKQ==
X-Gm-Message-State: AOAM532j34aT5Emd03k1YNABgX9aJdkGVwO8sPIKpjtwxoj21EoFrHyd
 73FDYmZNPgdGax2nVLpY6nM=
X-Google-Smtp-Source: ABdhPJxq2jgXbMfch3hvPWv2t4wcFSZbHnmDuuycePhXOAbytzWpmCsLxoAJWeANtrTdUlyQ0qfQ5g==
X-Received: by 2002:a17:902:6944:: with SMTP id
 k4mr6973661plt.147.1598357622464; 
 Tue, 25 Aug 2020 05:13:42 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id d5sm2700031pjw.18.2020.08.25.05.13.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 05:13:41 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: jeffrey.t.kirsher@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Aug 2020 14:13:22 +0200
Message-Id: <20200825121323.20239-3-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200825121323.20239-1-bjorn.topel@gmail.com>
References: <20200825121323.20239-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 2/3] ixgbe: avoid premature Rx
 buffer reuse
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
ZHAgcmVkaXJlY3QiKQpSZXBvcnRlZC1hbmQtYW5hbHl6ZWQtYnk6IExpIFJvbmdRaW5nIDxsaXJv
bmdxaW5nQGJhaWR1LmNvbT4KU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9w
ZWxAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X21haW4uYyB8IDI0ICsrKysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2l4Z2JlL2l4Z2JlX21haW4uYwppbmRleCAyZjhhNGNmYzVmYTEuLjgyNGM3NzZhM2FiYyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jCisr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwpAQCAtMTk0
NSw3ICsxOTQ1LDggQEAgc3RhdGljIGlubGluZSBib29sIGl4Z2JlX3BhZ2VfaXNfcmVzZXJ2ZWQo
c3RydWN0IHBhZ2UgKnBhZ2UpCiAJcmV0dXJuIChwYWdlX3RvX25pZChwYWdlKSAhPSBudW1hX21l
bV9pZCgpKSB8fCBwYWdlX2lzX3BmbWVtYWxsb2MocGFnZSk7CiB9CiAKLXN0YXRpYyBib29sIGl4
Z2JlX2Nhbl9yZXVzZV9yeF9wYWdlKHN0cnVjdCBpeGdiZV9yeF9idWZmZXIgKnJ4X2J1ZmZlcikK
K3N0YXRpYyBib29sIGl4Z2JlX2Nhbl9yZXVzZV9yeF9wYWdlKHN0cnVjdCBpeGdiZV9yeF9idWZm
ZXIgKnJ4X2J1ZmZlciwKKwkJCQkgICAgaW50IHJ4X2J1ZmZlcl9wZ2NudCkKIHsKIAl1bnNpZ25l
ZCBpbnQgcGFnZWNudF9iaWFzID0gcnhfYnVmZmVyLT5wYWdlY250X2JpYXM7CiAJc3RydWN0IHBh
Z2UgKnBhZ2UgPSByeF9idWZmZXItPnBhZ2U7CkBAIC0xOTU2LDcgKzE5NTcsNyBAQCBzdGF0aWMg
Ym9vbCBpeGdiZV9jYW5fcmV1c2VfcnhfcGFnZShzdHJ1Y3QgaXhnYmVfcnhfYnVmZmVyICpyeF9i
dWZmZXIpCiAKICNpZiAoUEFHRV9TSVpFIDwgODE5MikKIAkvKiBpZiB3ZSBhcmUgb25seSBvd25l
ciBvZiBwYWdlIHdlIGNhbiByZXVzZSBpdCAqLwotCWlmICh1bmxpa2VseSgocGFnZV9yZWZfY291
bnQocGFnZSkgLSBwYWdlY250X2JpYXMpID4gMSkpCisJaWYgKHVubGlrZWx5KChyeF9idWZmZXJf
cGdjbnQgLSBwYWdlY250X2JpYXMpID4gMSkpCiAJCXJldHVybiBmYWxzZTsKICNlbHNlCiAJLyog
VGhlIGxhc3Qgb2Zmc2V0IGlzIGEgYml0IGFnZ3Jlc3NpdmUgaW4gdGhhdCB3ZSBhc3N1bWUgdGhl
CkBAIC0yMDIxLDExICsyMDIyLDE4IEBAIHN0YXRpYyB2b2lkIGl4Z2JlX2FkZF9yeF9mcmFnKHN0
cnVjdCBpeGdiZV9yaW5nICpyeF9yaW5nLAogc3RhdGljIHN0cnVjdCBpeGdiZV9yeF9idWZmZXIg
Kml4Z2JlX2dldF9yeF9idWZmZXIoc3RydWN0IGl4Z2JlX3JpbmcgKnJ4X3JpbmcsCiAJCQkJCQkg
ICB1bmlvbiBpeGdiZV9hZHZfcnhfZGVzYyAqcnhfZGVzYywKIAkJCQkJCSAgIHN0cnVjdCBza19i
dWZmICoqc2tiLAotCQkJCQkJICAgY29uc3QgdW5zaWduZWQgaW50IHNpemUpCisJCQkJCQkgICBj
b25zdCB1bnNpZ25lZCBpbnQgc2l6ZSwKKwkJCQkJCSAgIGludCAqcnhfYnVmZmVyX3BnY250KQog
ewogCXN0cnVjdCBpeGdiZV9yeF9idWZmZXIgKnJ4X2J1ZmZlcjsKIAogCXJ4X2J1ZmZlciA9ICZy
eF9yaW5nLT5yeF9idWZmZXJfaW5mb1tyeF9yaW5nLT5uZXh0X3RvX2NsZWFuXTsKKwkqcnhfYnVm
ZmVyX3BnY250ID0KKyNpZiAoUEFHRV9TSVpFIDwgODE5MikKKwkJcGFnZV9jb3VudChyeF9idWZm
ZXItPnBhZ2UpOworI2Vsc2UKKwkJMDsKKyNlbmRpZgogCXByZWZldGNodyhyeF9idWZmZXItPnBh
Z2UpOwogCSpza2IgPSByeF9idWZmZXItPnNrYjsKIApAQCAtMjA1NSw5ICsyMDYzLDEwIEBAIHN0
YXRpYyBzdHJ1Y3QgaXhnYmVfcnhfYnVmZmVyICppeGdiZV9nZXRfcnhfYnVmZmVyKHN0cnVjdCBp
eGdiZV9yaW5nICpyeF9yaW5nLAogCiBzdGF0aWMgdm9pZCBpeGdiZV9wdXRfcnhfYnVmZmVyKHN0
cnVjdCBpeGdiZV9yaW5nICpyeF9yaW5nLAogCQkJCXN0cnVjdCBpeGdiZV9yeF9idWZmZXIgKnJ4
X2J1ZmZlciwKLQkJCQlzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQorCQkJCXN0cnVjdCBza19idWZmICpz
a2IsCisJCQkJaW50IHJ4X2J1ZmZlcl9wZ2NudCkKIHsKLQlpZiAoaXhnYmVfY2FuX3JldXNlX3J4
X3BhZ2UocnhfYnVmZmVyKSkgeworCWlmIChpeGdiZV9jYW5fcmV1c2VfcnhfcGFnZShyeF9idWZm
ZXIsIHJ4X2J1ZmZlcl9wZ2NudCkpIHsKIAkJLyogaGFuZCBzZWNvbmQgaGFsZiBvZiBwYWdlIGJh
Y2sgdG8gdGhlIHJpbmcgKi8KIAkJaXhnYmVfcmV1c2VfcnhfcGFnZShyeF9yaW5nLCByeF9idWZm
ZXIpOwogCX0gZWxzZSB7CkBAIC0yMzA4LDYgKzIzMTcsNyBAQCBzdGF0aWMgaW50IGl4Z2JlX2Ns
ZWFuX3J4X2lycShzdHJ1Y3QgaXhnYmVfcV92ZWN0b3IgKnFfdmVjdG9yLAogCQl1bmlvbiBpeGdi
ZV9hZHZfcnhfZGVzYyAqcnhfZGVzYzsKIAkJc3RydWN0IGl4Z2JlX3J4X2J1ZmZlciAqcnhfYnVm
ZmVyOwogCQlzdHJ1Y3Qgc2tfYnVmZiAqc2tiOworCQlpbnQgcnhfYnVmZmVyX3BnY250OwogCQl1
bnNpZ25lZCBpbnQgc2l6ZTsKIAogCQkvKiByZXR1cm4gc29tZSBidWZmZXJzIHRvIGhhcmR3YXJl
LCBvbmUgYXQgYSB0aW1lIGlzIHRvbyBzbG93ICovCkBAIC0yMzI3LDcgKzIzMzcsNyBAQCBzdGF0
aWMgaW50IGl4Z2JlX2NsZWFuX3J4X2lycShzdHJ1Y3QgaXhnYmVfcV92ZWN0b3IgKnFfdmVjdG9y
LAogCQkgKi8KIAkJZG1hX3JtYigpOwogCi0JCXJ4X2J1ZmZlciA9IGl4Z2JlX2dldF9yeF9idWZm
ZXIocnhfcmluZywgcnhfZGVzYywgJnNrYiwgc2l6ZSk7CisJCXJ4X2J1ZmZlciA9IGl4Z2JlX2dl
dF9yeF9idWZmZXIocnhfcmluZywgcnhfZGVzYywgJnNrYiwgc2l6ZSwgJnJ4X2J1ZmZlcl9wZ2Nu
dCk7CiAKIAkJLyogcmV0cmlldmUgYSBidWZmZXIgZnJvbSB0aGUgcmluZyAqLwogCQlpZiAoIXNr
YikgewpAQCAtMjM3Miw3ICsyMzgyLDcgQEAgc3RhdGljIGludCBpeGdiZV9jbGVhbl9yeF9pcnEo
c3RydWN0IGl4Z2JlX3FfdmVjdG9yICpxX3ZlY3RvciwKIAkJCWJyZWFrOwogCQl9CiAKLQkJaXhn
YmVfcHV0X3J4X2J1ZmZlcihyeF9yaW5nLCByeF9idWZmZXIsIHNrYik7CisJCWl4Z2JlX3B1dF9y
eF9idWZmZXIocnhfcmluZywgcnhfYnVmZmVyLCBza2IsIHJ4X2J1ZmZlcl9wZ2NudCk7CiAJCWNs
ZWFuZWRfY291bnQrKzsKIAogCQkvKiBwbGFjZSBpbmNvbXBsZXRlIGZyYW1lcyBiYWNrIG9uIHJp
bmcgZm9yIGNvbXBsZXRpb24gKi8KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
