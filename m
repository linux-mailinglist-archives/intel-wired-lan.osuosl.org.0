Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A96DD29D014
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 14:36:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 622C4204D5;
	Wed, 28 Oct 2020 13:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdoboiwhvnmV; Wed, 28 Oct 2020 13:36:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 06E15204FF;
	Wed, 28 Oct 2020 13:36:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 730C01BF857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FA3E86A02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gfRp6RQGn-1l for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 13:35:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 413F8869E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:57 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id h10so985458pju.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 06:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oRd9D9KAGEvSUVDHFx51Z3pe4W3JS4rlMi+zj5tnu1o=;
 b=E8ql5xGfRHpoTKr5i0U4XM9uzxC6u2e9Cg3/yWktFZDdSuRO6Udnjb7bA3rCe9EnUG
 8cIQMmKu7BUC4a0CJ8oFGmBVSKHR0QRNlTOVJQG4a4IhAJW2NHV1grRhMQUmzccVLcC9
 onsJs2Ihyxv3p5mJNwmpmmsx9jMdvIbYUgH1mvLb2cogBg8iLX58dBUz+r82kCKHVvnb
 XumzNtq+C05tnupu1y3h8jPs/EIisyHYrMzfPJ+h0052DweivHzgByZDQi8JNFRKysny
 FHHfLpjyjztIKOBRKGcDOuk6qtN2e+9lTmDCOG764V61f0M6J7B3i0hqr0ttd07PAhbv
 8LMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oRd9D9KAGEvSUVDHFx51Z3pe4W3JS4rlMi+zj5tnu1o=;
 b=bHivJ9snjubkvdhRjkFq/oQzGgId6hK3T4CV6uKU2R91NAi0vCgDzRqNR7qd3AGUGu
 ZaD3Pzde9XLcytEY9Hf2rkmHWcO9R22LbQ9uU3Tn58uZui9mJ3/Ow7bmiX1hE9AS1scn
 o0cVw6wZ85PY+7ILUMuchocfbngI0iwxauRHjHZKoaY9tCRuAVWaN0qJkV90AOPXOOB7
 csB7po6ff/Mn8cnqXAPb2Nc7pGo9m8/XpfV0OBcUCgwlgKlRovy06Rvmyg6M0abSMD82
 yFXox9rhYVRfm9Bv/SbkmXVy4EEU/ABKS6HzhP6mc+D0h3RYf/+7MBlLmjaYluLjM8JF
 7jeg==
X-Gm-Message-State: AOAM531pKuHC7sZCSXChYb9UBMTxtJHphsO8C4SEUKyXN+wCUk9UuXGN
 BVtjhls4jaJv3BRY45loRQI=
X-Google-Smtp-Source: ABdhPJw08anLcn91mXmmfsPzN+W5dpD39hXzuhPgRbUE4/T21wkwPxdeaE55dA/3l8zuJN2Sj8xr2A==
X-Received: by 2002:a17:90b:23c2:: with SMTP id
 md2mr2718827pjb.205.1603892156901; 
 Wed, 28 Oct 2020 06:35:56 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q14sm5935393pjp.43.2020.10.28.06.35.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:35:56 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Wed, 28 Oct 2020 14:34:37 +0100
Message-Id: <20201028133437.212503-10-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201028133437.212503-1-bjorn.topel@gmail.com>
References: <20201028133437.212503-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next 9/9] samples/bpf: add option
 to set the busy-poll budget
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKU3VwcG9ydCBmb3Ig
dGhlIFNPX0JVU1lfUE9MTF9CVURHRVQgc2V0c29ja29wdCwgdmlhIHRoZSBiYXRjaGluZwpvcHRp
b24gKCdiJykuCgpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRl
bC5jb20+Ci0tLQogc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMgfCA1ICsrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc2FtcGxlcy9icGYveGRwc29j
a191c2VyLmMgYi9zYW1wbGVzL2JwZi94ZHBzb2NrX3VzZXIuYwppbmRleCA3ZWYyYzAxYTEwOTQu
Ljk0OGZhYWRhOTZkNSAxMDA2NDQKLS0tIGEvc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMKKysr
IGIvc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMKQEAgLTE0ODIsNiArMTQ4MiwxMSBAQCBzdGF0
aWMgdm9pZCBhcHBseV9zZXRzb2Nrb3B0KHN0cnVjdCB4c2tfc29ja2V0X2luZm8gKnhzaykKIAlp
ZiAoc2V0c29ja29wdCh4c2tfc29ja2V0X19mZCh4c2stPnhzayksIFNPTF9TT0NLRVQsIFNPX0JV
U1lfUE9MTCwKIAkJICAgICAgICh2b2lkICopJnNvY2tfb3B0LCBzaXplb2Yoc29ja19vcHQpKSA8
IDApCiAJCWV4aXRfd2l0aF9lcnJvcihlcnJubyk7CisKKwlzb2NrX29wdCA9IG9wdF9iYXRjaF9z
aXplOworCWlmIChzZXRzb2Nrb3B0KHhza19zb2NrZXRfX2ZkKHhzay0+eHNrKSwgU09MX1NPQ0tF
VCwgU09fQlVTWV9QT0xMX0JVREdFVCwKKwkJICAgICAgICh2b2lkICopJnNvY2tfb3B0LCBzaXpl
b2Yoc29ja19vcHQpKSA8IDApCisJCWV4aXRfd2l0aF9lcnJvcihlcnJubyk7CiB9CiAKIGludCBt
YWluKGludCBhcmdjLCBjaGFyICoqYXJndikKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
