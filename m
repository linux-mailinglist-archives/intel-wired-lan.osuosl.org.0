Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6AB29D00E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 14:35:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C3E2020532;
	Wed, 28 Oct 2020 13:35:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZoNysJnSrdRg; Wed, 28 Oct 2020 13:35:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F3CC20526;
	Wed, 28 Oct 2020 13:35:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D08591BF857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CA91F873E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RUUB9TAnmEtC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 13:35:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 454C0873E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:22 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id 10so2942954pfp.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 06:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p+7zqDEUsInVWiiKbv2mU/avNMxBK0HvJzz4eBBZxRg=;
 b=OgykjbeBYTcwSjAJLswfBmSpu1YsZF27KG6D/MRCQVqUmHCuYYMJytcrH+RQXviJFv
 OFpc2lZtT/zrN9NPlVxVbV/cKdTUEdxu4p0k2/w7cHLBOU2jd3TtFC2kWLi0pdWeAgB8
 nOAUZXdFSQa+qnNaSJvy918NPqfJKi7c39qDSfg0hzSTcU5cMRHqvEKqihRR8WH1dMqs
 tFg4hqxvUSCWie8BCN6/OTuxV9FhjoGrm8UboeP5HMBKHqNsGRQnOTpzhtpzWs2fRCDT
 FuO65G8Meu2jt9aKFfT4cdZsji/kNeB6X5seMYVfWtcnZN2eKTC0/4qcDOUZ0766e7A+
 iGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p+7zqDEUsInVWiiKbv2mU/avNMxBK0HvJzz4eBBZxRg=;
 b=ras43QDICarMjTVFbYXydmNl5eVEf6TqZ4wzYYryBuWiYS5+Y2Ln7DVjm5JakqrhwO
 4cnW+w7FCEnu63DMK9eDUlsgEmDTANgGb3hPATZvplUbemmYfK33nSIZzaN/11U1ESaS
 uihCFdt6ps35MzjJ9cBA+PWZlI8rRC9FQ/OwPdMPKDmVm4IBbZXB0VsPG1nPRSVYLJCr
 MrU5nCGe69c/a/bLBfiPHAke1bsID2tod90t89dyaFcrRzFIeC4HJf+ME/JyM+k2rtyu
 oHLs0bwk3LwIy2SF16lY2yQW6yD3k2SoDJt9aMQitpoL2lsUTgfdsKpkk7gWdikQdJDQ
 tTNQ==
X-Gm-Message-State: AOAM533Y2jJp/S5RJ4qZ6c/8p2f9B/oIA5vhDY19P/YZhW0jps6lRCSC
 NxgqxGus0KJzM4a8rf73mGmFwuKeFwVQhaNd
X-Google-Smtp-Source: ABdhPJyg91YP5G0ly1+wJndgmQ+pQQEXBSh2NKhveMXIaGJ3NqHZZSc+XmBwH86rU6ST9iPb0aIa7w==
X-Received: by 2002:aa7:954b:0:b029:154:8ee9:e4d with SMTP id
 w11-20020aa7954b0000b02901548ee90e4dmr7751812pfq.11.1603892121903; 
 Wed, 28 Oct 2020 06:35:21 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q14sm5935393pjp.43.2020.10.28.06.35.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:35:21 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Wed, 28 Oct 2020 14:34:31 +0100
Message-Id: <20201028133437.212503-4-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201028133437.212503-1-bjorn.topel@gmail.com>
References: <20201028133437.212503-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next 3/9] xsk: add support for
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
