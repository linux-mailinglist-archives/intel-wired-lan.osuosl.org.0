Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 477E62A7BD1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 11:29:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F05F322D24;
	Thu,  5 Nov 2020 10:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3+7gIIWlvkZ2; Thu,  5 Nov 2020 10:29:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 77B2A22DEC;
	Thu,  5 Nov 2020 10:29:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 037491BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F20E5855D3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yT1+h5k7N3xT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Nov 2020 10:29:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65FC581AED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:28 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id h6so1127579pgk.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Nov 2020 02:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o05g9lm8nxzKqTNUi88bFCci2Fg4t0bp4is002sYr4w=;
 b=uqzEHaNXEdvcOFYpRFYUGY3EEh5p2uuuBjKl6cXsU+RsiYBcdrtM7lDHXRPAuakWtR
 yLMHbRQ25U0p4exJ0TzWLlbweM3dxAiwjtLlv+F11X4mMHtJmeEpzobBfUxfblP6lhBL
 woIQCVlpGoD9Ed0RnOzIxQ0qexaDoSAxzom78dgtv+4NGxQzXAZsymsFcuOAFLrZ1bf+
 NlumzdymzXF5CNwL1+tymgkLKuOkOX6xp8e+ZiUEiJ5jW6dI3JaTQYSN5B3V4Q5ymQGI
 IuYg1cDDEWmYQSyhiNLFkPwoxc5tkOZW0LRqqk9Vmrgc/BPhQlEayJ4gYCBiNfOQqk1K
 u36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o05g9lm8nxzKqTNUi88bFCci2Fg4t0bp4is002sYr4w=;
 b=YLMY3od6w893w/O+OlAjGM1D2DCqaxIsTEHDk7srncVsjbnjO+uQdWKbsjtWJrs+sW
 CW+YnL+5KAUiVxZAY8gX9m/Yt4NTB7oz1ksm16qGvwjnVoqvcVUlE1Kiiev1xBZzf05i
 NssgO1Tj2fi0swLw0zwMiqzsh99f80wG99zx6yoo7sKJHHnzzlv4UWuEEAGqZgqsox9a
 tOKa9j9mcaoKs/23yrW1M+phc1Ty7P3LjZpp3eU3AO2GnB7RsAQa4uqlHLb3dk0g2Ozh
 ZgVdiBjYj0Jzf79J93pekWfFUUd8bSrRX6fzEwZ4tKnFDQLj1JNXGVu60ZQ67galIfM8
 F7Ag==
X-Gm-Message-State: AOAM533ceI1yDNPYiLd//BuQnb9JOKRKmlwoX/j5Bu/qU3+wvfm5H9Su
 6PNY/aENV0OdjXOoUAeHbvE=
X-Google-Smtp-Source: ABdhPJygWbdDi+RdXm++zo6+HKTUkEGJTSqTyIcn9A9mmP3OyL+AXdLE6DkqkgRHVLcXDsDENrkejw==
X-Received: by 2002:a17:90a:1188:: with SMTP id
 e8mr1798390pja.61.1604572168128; 
 Thu, 05 Nov 2020 02:29:28 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr03-ext.fm.intel.com.
 [192.55.54.38])
 by smtp.gmail.com with ESMTPSA id 192sm2050117pfz.200.2020.11.05.02.29.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Nov 2020 02:29:27 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Thu,  5 Nov 2020 11:28:12 +0100
Message-Id: <20201105102812.152836-10-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201105102812.152836-1-bjorn.topel@gmail.com>
References: <20201105102812.152836-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next v2 9/9] samples/bpf: add
 option to set the busy-poll budget
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
a191c2VyLmMgYi9zYW1wbGVzL2JwZi94ZHBzb2NrX3VzZXIuYwppbmRleCAxNjI0NDRmYTk2Mjcu
LjBlZDA1ZTZlNDBlMiAxMDA2NDQKLS0tIGEvc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMKKysr
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
