Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D909F2A7BBF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 11:28:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 986BF22D24;
	Thu,  5 Nov 2020 10:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uFGnkqbV0J8Q; Thu,  5 Nov 2020 10:28:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8F2F222D22;
	Thu,  5 Nov 2020 10:28:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 486611BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2CB8F20382
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8aFvGfllE2Og for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Nov 2020 10:28:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 6B64C20373
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:28:51 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id g7so851064pfc.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Nov 2020 02:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p+7zqDEUsInVWiiKbv2mU/avNMxBK0HvJzz4eBBZxRg=;
 b=cSCF6EWwqlV4sr+11UpBhltnSGG1MbOtp32F1+d9G8EEeefns+C98yXxtsVPkONGj4
 9GsGDfx/AhdHpLaKaYNajCOda1gVXfwaOLgbo267pQkCBxf8qYBx89zWQOb//YCOwGPq
 xga0LHe54AHI2pr8S4tU9obFRHzZknTTGb40WrcjAXZUaOJfZgQOrJtYCUlbqKLDlPlv
 86dMjgKTtgDWq6szK6/IKHqFpwJr874jMwQN3nzYKK2eYgwjlKLnWSKOkjVsRASTzw1b
 7Cv0ugS5f6GPraoPVV9eL1uKg+gHYRJC9Kb2Wzu0AlwstboCah6SaXcFBEUcOOfEg2/h
 hB/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p+7zqDEUsInVWiiKbv2mU/avNMxBK0HvJzz4eBBZxRg=;
 b=BSBA9wn1oMo6ekss/5z2vKpAlXsVoZsOdIZjav7ylXA2AbyF5m129caKw6sC+xjESY
 WKYBUJWKzVGOtWatHhbd4IJgA4wTwGkCbX5c3aFWq4IQ8m2acAErmrANlLvsRFcP0L8G
 ceKSVGMcK+LGiBZ3xigeyGbIEwTGx+51ywVwZi3UKSzfp0lfPauRT8NneyGw0vAy08Rw
 QZhejGPhkIC+xKUKht5V3eeVIQDCrjsWgHnP2IIjxplTvbhLppTSYOqt6mXUbHKJ92/W
 pe6TKUBUWpGNJ+sWhASvKaKZnu5+BRsPWVQN2nnKjJnZuZOujZ3rUavaL7Da/UtDHhMv
 ZB+w==
X-Gm-Message-State: AOAM531okF8OjgP3qNCDAZRfsYxSckPABjNWTSU9vBmyi44QqkVvJoEE
 OQR7IbXCpwCImEB7tuVKQHg=
X-Google-Smtp-Source: ABdhPJyp2lylD1cOovj07EBLr19iwlvRQnx2AFY5SusVU4BghQXm44b6z4xqmyV+U1NImZZnvdtHew==
X-Received: by 2002:a17:90a:6284:: with SMTP id
 d4mr1807253pjj.92.1604572131049; 
 Thu, 05 Nov 2020 02:28:51 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr03-ext.fm.intel.com.
 [192.55.54.38])
 by smtp.gmail.com with ESMTPSA id 192sm2050117pfz.200.2020.11.05.02.28.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Nov 2020 02:28:49 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Thu,  5 Nov 2020 11:28:06 +0100
Message-Id: <20201105102812.152836-4-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201105102812.152836-1-bjorn.topel@gmail.com>
References: <20201105102812.152836-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next v2 3/9] xsk: add support for
 recvmsg()
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
Cc: daniel@iogearbox.net, jonathan.lemon@gmail.com, ast@kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 kuba@kernel.org, =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKQWRkIHN1cHBvcnQg
Zm9yIG5vbi1ibG9ja2luZyByZWN2bXNnKCkgdG8gWERQIHNvY2tldHMuIFByZXZpb3VzbHksCm9u
bHkgc2VuZG1zZygpIHdhcyBzdXBwb3J0ZWQgYnkgWERQIHNvY2tldC4gTm93LCBmb3Igc3ltbWV0
cnkgYW5kIHRoZQp1cGNvbWluZyBidXN5LXBvbGxpbmcgc3VwcG9ydCwgcmVjdm1zZygpIGlzIGFk
ZGVkLgoKU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29t
PgotLS0KIG5ldC94ZHAveHNrLmMgfCAyMiArKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUg
Y2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL25l
dC94ZHAveHNrLmMgYi9uZXQveGRwL3hzay5jCmluZGV4IGI3MWEzMmVlYWU2NS4uMTdkNTFkMWE1
NzUyIDEwMDY0NAotLS0gYS9uZXQveGRwL3hzay5jCisrKyBiL25ldC94ZHAveHNrLmMKQEAgLTQ3
NCw2ICs0NzQsMjYgQEAgc3RhdGljIGludCB4c2tfc2VuZG1zZyhzdHJ1Y3Qgc29ja2V0ICpzb2Nr
LCBzdHJ1Y3QgbXNnaGRyICptLCBzaXplX3QgdG90YWxfbGVuKQogCXJldHVybiBfX3hza19zZW5k
bXNnKHNrKTsKIH0KIAorc3RhdGljIGludCB4c2tfcmVjdm1zZyhzdHJ1Y3Qgc29ja2V0ICpzb2Nr
LCBzdHJ1Y3QgbXNnaGRyICptLCBzaXplX3QgbGVuLCBpbnQgZmxhZ3MpCit7CisJYm9vbCBuZWVk
X3dhaXQgPSAhKGZsYWdzICYgTVNHX0RPTlRXQUlUKTsKKwlzdHJ1Y3Qgc29jayAqc2sgPSBzb2Nr
LT5zazsKKwlzdHJ1Y3QgeGRwX3NvY2sgKnhzID0geGRwX3NrKHNrKTsKKworCWlmICh1bmxpa2Vs
eSghKHhzLT5kZXYtPmZsYWdzICYgSUZGX1VQKSkpCisJCXJldHVybiAtRU5FVERPV047CisJaWYg
KHVubGlrZWx5KCF4cy0+cngpKQorCQlyZXR1cm4gLUVOT0JVRlM7CisJaWYgKHVubGlrZWx5KCF4
c2tfaXNfYm91bmQoeHMpKSkKKwkJcmV0dXJuIC1FTlhJTzsKKwlpZiAodW5saWtlbHkobmVlZF93
YWl0KSkKKwkJcmV0dXJuIC1FT1BOT1RTVVBQOworCisJaWYgKHhzLT5wb29sLT5jYWNoZWRfbmVl
ZF93YWtldXAgJiBYRFBfV0FLRVVQX1JYICYmIHhzLT56YykKKwkJcmV0dXJuIHhza193YWtldXAo
eHMsIFhEUF9XQUtFVVBfUlgpOworCXJldHVybiAwOworfQorCiBzdGF0aWMgX19wb2xsX3QgeHNr
X3BvbGwoc3RydWN0IGZpbGUgKmZpbGUsIHN0cnVjdCBzb2NrZXQgKnNvY2ssCiAJCQkgICAgIHN0
cnVjdCBwb2xsX3RhYmxlX3N0cnVjdCAqd2FpdCkKIHsKQEAgLTExMzQsNyArMTE1NCw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgcHJvdG9fb3BzIHhza19wcm90b19vcHMgPSB7CiAJLnNldHNvY2tv
cHQJPSB4c2tfc2V0c29ja29wdCwKIAkuZ2V0c29ja29wdAk9IHhza19nZXRzb2Nrb3B0LAogCS5z
ZW5kbXNnCT0geHNrX3NlbmRtc2csCi0JLnJlY3Ztc2cJPSBzb2NrX25vX3JlY3Ztc2csCisJLnJl
Y3Ztc2cJPSB4c2tfcmVjdm1zZywKIAkubW1hcAkJPSB4c2tfbW1hcCwKIAkuc2VuZHBhZ2UJPSBz
b2NrX25vX3NlbmRwYWdlLAogfTsKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
