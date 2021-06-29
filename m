Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DAA3B739C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 15:58:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25C3F837B9;
	Tue, 29 Jun 2021 13:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yf1KCrVd0NxV; Tue, 29 Jun 2021 13:58:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37DA6837B6;
	Tue, 29 Jun 2021 13:58:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D36D1BF349
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 08:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F8564012D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 08:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xwy8__4Mnh9d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 08:21:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F40F640117
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 08:21:34 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id 80so2064699pgg.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 01:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VxHib6d2K90USWogCay1vwTHEN43n+hlATnAyEzxsfQ=;
 b=cgNbDDzaLpsFqfD5U/M/ogaZl5LZIK5vIuXcUeXU7bcqAVe489Xsq9PVQOa1R5dFpT
 8g1vMH9P/a3A053OZ+04Yhgx3AXOFF3lQN2xRYRnhs15+rIaHUNWF5xMoCqTD9x0gqxN
 rilMk5q2P+fdv3QaigtxXRmsIgHcl7gg2cbNHcuKYdS3trafyy9zCLUlvGp0534+/NHH
 mwo7bK9+RcdOKNQ+vse7Yij5OXlDHTQMzpPKe1Uva8+r+1ZZFsIudQRLdwh62QpaxigA
 wsQB5GhOPyBemc/FKOntJGBvYW8/+N7ms6cYJkfwt4j42RNJNyf5aKwglmwk2a5Z58lG
 qEyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VxHib6d2K90USWogCay1vwTHEN43n+hlATnAyEzxsfQ=;
 b=O4LX382/6e+hNVnwQwZDvqMI/u02NmiFn7ribpfwmx/sLdVY42Sbu57OXy5QAdWnii
 2rgrGk1yxMZJ3Ifm32Qziro8rlmFxY7EmDhLqZzZrDNh84jWfsPYbV/UMJCJa+5rkpk+
 Pz8om+XTZFpksqT2iOzy1J8wRHetUFvwJij6ZBRL9HAJp04eUp+7oORUynfs8taQ0IxF
 YFqVcDmVLFxx+6m29HyhJ1JWn4xcNlfS7u2Afc9BU7IxvA8yx4/6H25y6FBe6uFxzkJz
 LkGrgMn7v0kDMl4PYNCsQKFd/wZuIPIxdfhFeA+jBcm+PCxZxzTKEO3lokIT3c03KMPz
 5NlA==
X-Gm-Message-State: AOAM532hWDFLE3fxB6gl+YiMna11ICrtwMR5vDwzL7+HbeyKwfcBMiIu
 cqlaD5Trnu6teXAkL8BOwDk=
X-Google-Smtp-Source: ABdhPJyA0b6cE2R38QqM2s77Z01XxTbG4EMb5qtLKhIs9I7hU2ylXBPbOoRRcPQP4J+KmNYXsNY75Q==
X-Received: by 2002:a05:6a00:8c4:b029:2b4:8334:ed4d with SMTP id
 s4-20020a056a0008c4b02902b48334ed4dmr28844309pfu.36.1624954894494; 
 Tue, 29 Jun 2021 01:21:34 -0700 (PDT)
Received: from localhost.localdomain ([13.88.222.67])
 by smtp.gmail.com with ESMTPSA id 22sm16682073pfo.80.2021.06.29.01.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 01:21:34 -0700 (PDT)
From: YeeLi <seven.yi.lee@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Tue, 29 Jun 2021 16:21:28 +0800
Message-Id: <20210629082128.255988-1-seven.yi.lee@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Jun 2021 13:58:40 +0000
Subject: [Intel-wired-lan] [PATCH] driver core: fix e1000e ltr bug
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
Cc: seven.yi.lee@gmail.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In e1000e driver, a PCIe-like device, the max snoop/no-snoop latency
is the upper limit.So, directly compare the size of lat_enc and
max_ltr_enc is incorrect.

    In 1000Mbps, 0x8b9 < 0x1003, 189440 ns < 3145728 ns, correct.

    In 100Mbps, 0xc3a < 0x1003, 1900544 ns < 3145728 ns, correct.

    In 10Mbps, 0xe40 < 0x1003, 18874368 > 3145728, incorrect.

Decoded the lat_enc and max_ltr_enc before compare them is necessary.

Signed-off-by: YeeLi <seven.yi.lee@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 23 ++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 590ad110d383..3bff1b570b76 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -986,6 +986,27 @@ static s32 e1000_k1_workaround_lpt_lp(struct e1000_hw *hw, bool link)
 	return ret_val;
 }
 
+static u32 convert_e1000e_ltr_scale(u32 val)
+{
+	if (val > 5)
+		return 0;
+
+	return 1U << (5 * val);
+}
+
+static u64 decoded_ltr(u32 val)
+{
+	u64 decoded_latency;
+	u32 value;
+	u32 scale;
+
+	value = val & 0x03FF;
+	scale = (val & 0x1C00) >> 10;
+	decoded_latency = value * convert_e1000e_ltr_scale(scale);
+
+	return decoded_latency;
+}
+
 /**
  *  e1000_platform_pm_pch_lpt - Set platform power management values
  *  @hw: pointer to the HW structure
@@ -1059,7 +1080,7 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)
 				     E1000_PCI_LTR_CAP_LPT + 2, &max_nosnoop);
 		max_ltr_enc = max_t(u16, max_snoop, max_nosnoop);
 
-		if (lat_enc > max_ltr_enc)
+		if (decoded_ltr(lat_enc) > decoded_ltr(max_ltr_enc))
 			lat_enc = max_ltr_enc;
 	}
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
