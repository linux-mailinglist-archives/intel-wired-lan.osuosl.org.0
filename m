Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44495212819
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 17:37:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0232D8A6CC;
	Thu,  2 Jul 2020 15:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XcBz873WuIp1; Thu,  2 Jul 2020 15:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C23BE8A6BE;
	Thu,  2 Jul 2020 15:37:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 69E321BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61A2D8A7E1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ryNbiT-vVJ1t for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 15:37:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C4E268A4F4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:53 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id g67so12749534pgc.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jul 2020 08:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EJHzwQeUZ0xuP9kyR3NwUw0Jve9REFyd3K7jc8FI3Bo=;
 b=RiZkdC0vVS7MQJeL5PA8mQtv7EUP1A8hDG0JB4gU5F7mEzMUnHeQ8KRwN84yRwIuIW
 tHm1ImIKVGSxH5ESVFregzj1EJ2BW6h1Y6DgMJ6xVXklSv3T8q28G106WOWnFhe4wLlk
 PPFNbSje1TsHkPOr/2OjiLL88JENwnfuRFhvLfSVQIxf9Mi3emWVJimcy+KJ6eCprIBW
 Y1+zdhw/hqj+u+zD2xO99UCNdZVSRKf5sj1pSyjYFj/samEe+KTMajs5dzf0VSyVTjGz
 RqRtMA3y0dKsOAY5aszcN43NsrlksKBkwY0YeSCvr0v7TccLytaMnBvRFahK14v4J6w6
 zxbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EJHzwQeUZ0xuP9kyR3NwUw0Jve9REFyd3K7jc8FI3Bo=;
 b=qCYBvX5oYcGfKc37O7heyxxggvO8QcNrPcfD5UD0j/7KEXo6i9e2F6QvG3C0vXwu4u
 ki2IhJm4zkjSaPamUbxjb6mqdeJ1TOy5orF7F7NxJmCUl/8Dc/HxYdrcQTBMZ6+UtsCe
 jxUnCBktk9ohWHEUC0P2diHw7fMZtgcfFOZ8DqiFibYv9UqrI/ttLCF2BbxYV3XJlt3O
 vrxY1tY+xHO+KVLAdsp6XRvXnwXRCF2HcO6gKDlTrE24qgbzmncrx4zq9g+qLnvSGd3k
 OHUA+1UrjZtAiQ4YAy5l/SV0f3XPeGgnNQq612q9lVnsqTMiT4XOt9XeI5RZzo/1cg8h
 BBtA==
X-Gm-Message-State: AOAM530BtD4LOmSYLG/uDzvBQVCuGZkNKnbvi/9FviDYfeNaBn/YPKq7
 N2Pk106YuZsTQl7fz65BWXeDASjbgyg=
X-Google-Smtp-Source: ABdhPJxfUhs77muGJZnmT3DE+a9bBDaHjPbF2RxuxikhCFnuvalySp2UztdkfYP1I8hPQLj0h29TOA==
X-Received: by 2002:a63:2b91:: with SMTP id r139mr26333348pgr.61.1593704273094; 
 Thu, 02 Jul 2020 08:37:53 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com (jfdmzpr04-ext.jf.intel.com.
 [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id r6sm552651pgn.65.2020.07.02.08.37.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 08:37:52 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Jul 2020 17:37:30 +0200
Message-Id: <20200702153730.575738-5-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200702153730.575738-1-bjorn.topel@gmail.com>
References: <20200702153730.575738-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 4/4] i40e,
 xsk: move buffer allocation out of the Rx processing loop
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKSW5zdGVhZCBvZiBj
aGVja2luZyBpbiBlYWNoIGl0ZXJhdGlvbiBvZiB0aGUgUnggcGFja2V0IHByb2Nlc3NpbmcKbG9v
cCwgbW92ZSB0aGUgYWxsb2NhdGlvbiBvdXQgb2YgdGhlIGxvb3AgYW5kIGRvIGl0IG9uY2UgZm9y
IGVhY2ggbmFwaQphY3RpdmF0aW9uLgoKRm9yIEFGX1hEUCB0aGUgcnhfZHJvcCBiZW5jaG1hcmsg
d2FzIGltcHJvdmVkIGJ5IDYlLgoKU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4u
dG9wZWxAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV94c2suYyB8IDEyICsrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
eHNrLmMKaW5kZXggOTlmNGFmZGM0MDNkLi45MWFlZTE2ZmJlNzIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYworKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKQEAgLTI3OSw4ICsyNzksOCBAQCBpbnQgaTQw
ZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkK
IAl1bnNpZ25lZCBpbnQgdG90YWxfcnhfYnl0ZXMgPSAwLCB0b3RhbF9yeF9wYWNrZXRzID0gMDsK
IAl1MTYgY2xlYW5lZF9jb3VudCA9IEk0MEVfREVTQ19VTlVTRUQocnhfcmluZyk7CiAJdW5zaWdu
ZWQgaW50IHhkcF9yZXMsIHhkcF94bWl0ID0gMDsKLQlib29sIGZhaWx1cmUgPSBmYWxzZTsKIAlz
dHJ1Y3Qgc2tfYnVmZiAqc2tiOworCWJvb2wgZmFpbHVyZTsKIAogCXdoaWxlIChsaWtlbHkodG90
YWxfcnhfcGFja2V0cyA8IEk0MEVfWFNLX0NMRUFOX1JYX0JVREdFVCkpIHsKIAkJdW5pb24gaTQw
ZV9yeF9kZXNjICpyeF9kZXNjOwpAQCAtMjg4LDEzICsyODgsNiBAQCBpbnQgaTQwZV9jbGVhbl9y
eF9pcnFfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAkJdW5zaWdu
ZWQgaW50IHNpemU7CiAJCXU2NCBxd29yZDsKIAotCQlpZiAoY2xlYW5lZF9jb3VudCA+PSBJNDBF
X1JYX0JVRkZFUl9XUklURSkgewotCQkJZmFpbHVyZSA9IGZhaWx1cmUgfHwKLQkJCQkgICFpNDBl
X2FsbG9jX3J4X2J1ZmZlcnNfemMocnhfcmluZywKLQkJCQkJCQkgICAgY2xlYW5lZF9jb3VudCk7
Ci0JCQljbGVhbmVkX2NvdW50ID0gMDsKLQkJfQotCiAJCXJ4X2Rlc2MgPSBJNDBFX1JYX0RFU0Mo
cnhfcmluZywgcnhfcmluZy0+bmV4dF90b19jbGVhbik7CiAJCXF3b3JkID0gbGU2NF90b19jcHUo
cnhfZGVzYy0+d2IucXdvcmQxLnN0YXR1c19lcnJvcl9sZW4pOwogCkBAIC0zNjksNiArMzYyLDkg
QEAgaW50IGk0MGVfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIGlu
dCBidWRnZXQpCiAJCW5hcGlfZ3JvX3JlY2VpdmUoJnJ4X3JpbmctPnFfdmVjdG9yLT5uYXBpLCBz
a2IpOwogCX0KIAorCWlmIChjbGVhbmVkX2NvdW50ID49IEk0MEVfUlhfQlVGRkVSX1dSSVRFKQor
CQlmYWlsdXJlID0gIWk0MGVfYWxsb2NfcnhfYnVmZmVyc196YyhyeF9yaW5nLCBjbGVhbmVkX2Nv
dW50KTsKKwogCWk0MGVfZmluYWxpemVfeGRwX3J4KHJ4X3JpbmcsIHhkcF94bWl0KTsKIAlpNDBl
X3VwZGF0ZV9yeF9zdGF0cyhyeF9yaW5nLCB0b3RhbF9yeF9ieXRlcywgdG90YWxfcnhfcGFja2V0
cyk7CiAKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
