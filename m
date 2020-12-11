Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5DF2D7247
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Dec 2020 09:54:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B7EC48720F;
	Fri, 11 Dec 2020 08:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jozVWnVcugWe; Fri, 11 Dec 2020 08:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBD3A8721B;
	Fri, 11 Dec 2020 08:54:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89EDE1BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 08:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6D54123355
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 08:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BHYXT5vr6Z6Q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Dec 2020 08:54:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id B6178230FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 08:54:27 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id z12so1868710pjn.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 00:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0yZ75xyIkYY2oyliGKy/kPO2HTdwqgp5NO/99uf86ec=;
 b=ROw0UA02ywsGkPn7kSSwHAVdvp9wDbW+JhgIK7liM/qSUq6Zt9eoNGXw7QCHlfn/Ng
 S33J/zlVQ7Q/SwOFt+RZDVcw1FSBFI8bcCX8/ZTv4O/TGWskCz+gVUgXYbA4pSe/z7bw
 928HhUPMSAhKBRVbbfWvoJJ/Hk+iMBiJdml9fUMVuEpFMG94KJBaQ+MF2BLBe2iZ4FO3
 1zEmjED0Sj8y0MSsdtOiP2wZ89gJunMzDD4srONGN7w2YLFVNGLLKu4BOYtYJNn0RVlF
 bu97PNUR9aqIqEpfYMwZR4v/M87Mb1K4tUAHJhqTIxx3f7vTmoDIjjq4+nCrUDIN3qIs
 r1kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0yZ75xyIkYY2oyliGKy/kPO2HTdwqgp5NO/99uf86ec=;
 b=h0EQRv0VFUX400MFg8n2UcVPdxQu6QeCDHjImt+046HQbHX02QuyD6q0+a27v78IMr
 TMzsOF7V9wZKbfcWEj1CsTsOD5p9nBbILu2po+lvdWRP5240kPCP8qiGipj8eRzVmOH/
 XTTVYs/w2GjC7+uKPZcCsJuRn4YqbF5ehN1h5P3w+bBxdwdkUYFXf5H/OO2aQLroKboc
 UNp+Ye2zyuYzmwp6ZQt/wYHS2hHJ9Hki5QTIsnhKVSAIoY1Fa27vnE/Epfg278Uttn0F
 TMl3NTN/ylXzSA7YoYohhOiyEmMnyHg8HATgSDfTddwdmadI+QDN8+vGezqEaq4b+VQ0
 2M8g==
X-Gm-Message-State: AOAM530gh1eEWo8m4JeEfLamt+1hl4WibNZFvXIljftrUWC7q+nP5XYS
 ExZ3Y1UpsgfUQ1MzRjOzgu24eBo/PFF5XDyF
X-Google-Smtp-Source: ABdhPJzZiNk+nx5/VXgGKYZCOtoEmFWZAg7nFAqxzz+uOiw+rPtJJInQWIGXvqzHeV0BDXfczIdFNQ==
X-Received: by 2002:a17:902:900a:b029:d7:d966:1a44 with SMTP id
 a10-20020a170902900ab02900d7d9661a44mr10296006plp.8.1607676866585; 
 Fri, 11 Dec 2020 00:54:26 -0800 (PST)
Received: from btopel-mobl.ger.intel.com ([192.55.54.44])
 by smtp.gmail.com with ESMTPSA id x6sm10509408pfq.57.2020.12.11.00.54.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 00:54:25 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Dec 2020 09:54:10 +0100
Message-Id: <20201211085410.59350-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next] ice,
 xsk: Move Rx allocation out of while-loop
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKSW5zdGVhZCBkb2lu
ZyB0aGUgY2hlY2sgZm9yIGFsbG9jYXRpb24gaW4gZWFjaCBsb29wLCBtb3ZlIGl0IG91dHNpZGUK
dGhlIHdoaWxlIGxvb3AgYW5kIGRvIGl0IGV2ZXJ5IE5BUEkgbG9vcC4KClRoaXMgY2hhbmdlIGJv
b3N0cyB0aGUgeGRwc29jayByeGRyb3Agc2NlbmFyaW8gd2l0aCAxNSUgbW9yZQpwYWNrZXRzLXBl
ci1zZWNvbmQuCgpSZXZpZXdlZC1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxr
b3dza2lAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3Bl
bEBpbnRlbC5jb20+Ci0tLQp2MjogRml4ZWQgc3BlbGxpbmcgYW5kIHJld29ya2VkIHRoZSBjb21t
aXQgbWVzc2FnZS4gKE1hY2llaikKLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3hzay5jIHwgOSArKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMK
aW5kZXggNzk3ODg2NTI0MDU0Li4zOTc1N2I0Y2Y4ZjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV94c2suYwpAQCAtNTcwLDEyICs1NzAsNiBAQCBpbnQgaWNlX2NsZWFuX3J4
X2lycV96YyhzdHJ1Y3QgaWNlX3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiAJCXUxNiB2bGFu
X3RhZyA9IDA7CiAJCXU4IHJ4X3B0eXBlOwogCi0JCWlmIChjbGVhbmVkX2NvdW50ID49IElDRV9S
WF9CVUZfV1JJVEUpIHsKLQkJCWZhaWx1cmUgfD0gaWNlX2FsbG9jX3J4X2J1ZnNfemMocnhfcmlu
ZywKLQkJCQkJCQljbGVhbmVkX2NvdW50KTsKLQkJCWNsZWFuZWRfY291bnQgPSAwOwotCQl9Ci0K
IAkJcnhfZGVzYyA9IElDRV9SWF9ERVNDKHJ4X3JpbmcsIHJ4X3JpbmctPm5leHRfdG9fY2xlYW4p
OwogCiAJCXN0YXRfZXJyX2JpdHMgPSBCSVQoSUNFX1JYX0ZMRVhfREVTQ19TVEFUVVMwX0REX1Mp
OwpAQCAtNjQyLDYgKzYzNiw5IEBAIGludCBpY2VfY2xlYW5fcnhfaXJxX3pjKHN0cnVjdCBpY2Vf
cmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAkJaWNlX3JlY2VpdmVfc2tiKHJ4X3JpbmcsIHNr
Yiwgdmxhbl90YWcpOwogCX0KIAorCWlmIChjbGVhbmVkX2NvdW50ID49IElDRV9SWF9CVUZfV1JJ
VEUpCisJCWZhaWx1cmUgPSAhaWNlX2FsbG9jX3J4X2J1ZnNfemMocnhfcmluZywgY2xlYW5lZF9j
b3VudCk7CisKIAlpY2VfZmluYWxpemVfeGRwX3J4KHJ4X3JpbmcsIHhkcF94bWl0KTsKIAlpY2Vf
dXBkYXRlX3J4X3Jpbmdfc3RhdHMocnhfcmluZywgdG90YWxfcnhfcGFja2V0cywgdG90YWxfcnhf
Ynl0ZXMpOwogCgpiYXNlLWNvbW1pdDogZDk4MzhiMWQzOTI4M2MxMjAwYzEzZjkwNzY0NzRjNzYy
NGI4ZWMzNAotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
