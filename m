Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E194025FC8E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Sep 2020 17:02:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9146C870DA;
	Mon,  7 Sep 2020 15:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SoTGNgUd9ifz; Mon,  7 Sep 2020 15:02:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A77C08718A;
	Mon,  7 Sep 2020 15:02:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 46F881BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3E25A20535
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bU5Bfy36gOff for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Sep 2020 15:02:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 0BD9920518
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:44 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id v196so8772482pfc.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Sep 2020 08:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=20qb1PrS9WvdGhOBMmVu4rcGaoMhXb3TvepgXEEtkl0=;
 b=fvrtt6tPyQSbFrTpjxYv8U5rDkmMgenUO5J0ggstNhE5gcolf4NmL6Er+INHZu2Yyb
 tx66dQnvotkg5JDTJpPBhcTTeDRLKlvwutS5O/lhjRSHNgCbPpkk9Yam2gkVdCmKER98
 YEnQCcMWXSsKM/cOzRh/Q2VTwJLJzXIEzXhOGOYOyLH+1rAwuoEu59ItzlPskfJRAwpd
 WRRI+/1uu7reFk38ARWVVXKfTD8zQlDosKXvvnWvl1w5R7tSnBDJWGEGQrpRScU28OV/
 SW3LxcEL9Z2Waf20MgTmcWtpa/1gh79Mq/1SL2WJ7ufy5//5vl3g29jMMnvgofyrBAci
 vj2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=20qb1PrS9WvdGhOBMmVu4rcGaoMhXb3TvepgXEEtkl0=;
 b=Y9n+OUT91SLj1UoK49AwJGTZjDDcQ6DaceO5kSicRZHqNQLaHkehJHNpal7+53xRZk
 Q/t3xBwEdqnWl6Sx9ZEPoEKieFrIi9e6nmgXI9NZrmZVOkYtxKJcQ4Mn999u4Fr7zTNl
 U8arpMEbBqepfwKmy2bPcQsoPpWvNtIlSrDHZFW/9j4jPpT1Ze4aptLgm4p5Ub684qiq
 mBDY4KT/bSAlNr1jRIN9XuVvcRmHEmGvNuhmzcyhASnwv7sZyqvlfbJxSABtOLo964/l
 wz17kJfiUgKDsX6vwqjN8ALz1Ea6/bJFNunktSJbqzNEiGgAYMMP0ACMEGDvCtBOwsDE
 5rdA==
X-Gm-Message-State: AOAM533LfpDJW6IXmwELLWmjXWGwKwM/CAdvE2Ali+PIQeMokpDeZ2Eg
 H1jT10Vl6WVJgvqziGZKxT8=
X-Google-Smtp-Source: ABdhPJyxOmNl4CGI0TR1mp6x1IKkJ/CH0fUtgkmDA9Z+xMWew2DG+MBShq9F3GJYdCJpmjwbx1on0Q==
X-Received: by 2002:a63:c446:: with SMTP id m6mr3513703pgg.95.1599490963666;
 Mon, 07 Sep 2020 08:02:43 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id g129sm15436022pfb.33.2020.09.07.08.02.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 08:02:43 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Mon,  7 Sep 2020 17:02:15 +0200
Message-Id: <20200907150217.30888-3-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907150217.30888-1-bjorn.topel@gmail.com>
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 2/4] i40e,
 xsk: use XSK_NAPI_WEIGHT as NAPI poll budget
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
Cc: kuba@kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKU3RhcnQgdXNpbmcg
WFNLX05BUElfV0VJR0hUIGFzIE5BUEkgcG9sbCBidWRnZXQgZm9yIHRoZSBBRl9YRFAgUngKemVy
by1jb3B5IHBhdGguCgpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5j
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCmluZGV4IDJhMTE1M2Q4
OTU3Yi4uYTgwMTg3MzZjYTMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfeHNrLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX3hzay5jCkBAIC0yNzIsNyArMjcyLDcgQEAgaW50IGk0MGVfY2xlYW5fcnhfaXJxX3pjKHN0
cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiAJYm9vbCBmYWlsdXJlID0gZmFs
c2U7CiAJc3RydWN0IHNrX2J1ZmYgKnNrYjsKIAotCXdoaWxlIChsaWtlbHkodG90YWxfcnhfcGFj
a2V0cyA8ICh1bnNpZ25lZCBpbnQpYnVkZ2V0KSkgeworCXdoaWxlIChsaWtlbHkodG90YWxfcnhf
cGFja2V0cyA8IFhTS19OQVBJX1dFSUdIVCkpIHsKIAkJdW5pb24gaTQwZV9yeF9kZXNjICpyeF9k
ZXNjOwogCQlzdHJ1Y3QgeGRwX2J1ZmYgKipiaTsKIAkJdW5zaWduZWQgaW50IHNpemU7Ci0tIAoy
LjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
