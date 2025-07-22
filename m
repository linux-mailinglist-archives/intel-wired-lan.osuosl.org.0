Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BBEB0E0DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 17:45:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D90061201;
	Tue, 22 Jul 2025 15:45:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yXYYECMapvEp; Tue, 22 Jul 2025 15:45:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8316260FBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753199134;
	bh=fkp/rv74miGjepFs+AgLfe7Nd1NYRVijo7ZDQwRdmcc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=g9HcgI1lyZIGEUd0uWVozwmXRoXhPtx/cXwNNF64veqgWCUwysEMp+b6XHNdfXRP6
	 Fvb54gUD6Csgl/13eAq2V9dnea7GdDc5SIZ4ypvZdYZwf5UVXGBOZXQWgV+UxAnedm
	 qgo0qwBXH1pqyOPS0ms9Np6UCc6ZiCiPBvm5+tRTx0nxWk/tcGv6QQccnpuVLYA+JS
	 +UzWSq/DlWsLuOOd3wiz5AJIqaqzRSmcsaGLFIMdhELvqba6PAjK2nsYy7Cw6HtiTL
	 XxeQ/ykgVILhmfuoHsD+U9XokZVlb0CYudjm0OQ31gYURSkTbLWleoq7VLy6PA6m2m
	 Of6kY2LydMClA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8316260FBF;
	Tue, 22 Jul 2025 15:45:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 67205E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 586D384C02
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:53:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mom3gyH5sORz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:53:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=a.jahangirzad@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A770084BE4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A770084BE4
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A770084BE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:53:09 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-45618ddd62fso55360655e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 04:53:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753185188; x=1753789988;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fkp/rv74miGjepFs+AgLfe7Nd1NYRVijo7ZDQwRdmcc=;
 b=dc6dbEnripeAdAVEzjjr1DHgNgKsrP7IJCTTYUqnlerCFzd/RCjHip3TdHOpMVQue4
 +m91Boe5ED4Y9B4OrWgNhf/1DF8Ng1GaFkWMbyFtHlmrLBvr4JCBg3Zlz5Fk3gsjrBnN
 7p+7YR97CpJ+Ljlu1RkKUFGidCGPXkmQkd7EDWbLDuCfHdrDrv85DYkNISeKn03LXIz/
 qTvFvpbtqZTbgLeGcO1YUxXZFPeXjdg3uZKC/8os9w7TMLJTWqaFEpzi4L1XAEgLrbyv
 +FtyUEZ6H1qE55WWOw7zBdDbKGdi59NPB65GtUqq7vSlu+BqcKhN7Hw0matcDUpxWU3m
 lCcw==
X-Gm-Message-State: AOJu0Yx5XJevuohfvKbky4WduQ/atZMPvb14o7BnRgABz1RzITyQTDqa
 LEM7w5OIqLC6TrInJhJKoPpOUeRDkflbZeAej58ftttO8RZcZ/Ca7Swe
X-Gm-Gg: ASbGncuYdoB5ZfgqqeAimssge0k+5J8KlUK5gUxyVBR2SDBhYjea2G1sIDF21lFagUs
 RStCvmE1ak+kbwFyMhh4u4yRwtXjC2hyoVbmxjZvdW+QaJWdU2m4BZMwHO9o+0zHZNPJHoHzJbf
 SBrpKYWI/gLX1Kxrz1wEiZ1peYYQBJLuhKFD7yN/UC3/CDjt5zE6zV3ldvvc9GBHnG4xNTBxyog
 +EYav0ofHHecTNSpB87qCBHlzoXq8Od5VhivuZyFZXP/CbTm+lIeHFGGGofYzGFc+mWb8IWqWTR
 ugTZV5DexLw81WzSvNqlUBjnYhmos/6zugd5HiQNWegO0fHxHGJLW2pFTaqObaByRp7hEgDFK4k
 G1rebEsGgCBI11Extq72J2yy7AbYCDkYfuSybGciXBIszpA==
X-Google-Smtp-Source: AGHT+IGCf91BAOWUwlwAPbJxz/0CA+eqb9blpY9HNaDeUUuvBuznH5spHuwtcT2o8JH6NfXKK0Pfmg==
X-Received: by 2002:a05:600c:19cb:b0:43c:ee3f:2c3 with SMTP id
 5b1f17b1804b1-4562e37a0ecmr186920655e9.7.1753185187369; 
 Tue, 22 Jul 2025 04:53:07 -0700 (PDT)
Received: from Reodus.localdomain ([192.15.193.80])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4562e88474fsm192631615e9.22.2025.07.22.04.53.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jul 2025 04:53:06 -0700 (PDT)
From: Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>
Date: Tue, 22 Jul 2025 15:20:17 +0330
Message-ID: <20250722115017.206969-1-a.jahangirzad@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 22 Jul 2025 15:45:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753185188; x=1753789988; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=fkp/rv74miGjepFs+AgLfe7Nd1NYRVijo7ZDQwRdmcc=;
 b=MluxRXERz+Yr3ZHl7Q6MPagOc64rOvxWdFvJCvmK5j6MMuvGIqA2wk1gAe1FxIJbcm
 O92wvUcFzs46yHOUHw1kXZk/kuEZvZoG8r5qKkKhujgwFgRuY9qpf64K5Vr8ly3jaH6w
 wn5IrvrDdPdHozcRMAJXaVkb5Nrd81vGwBFZzkn0pZvhoDxriOBd0soSFfPZMPD31DHn
 med644oW2RF8a7KLAuzD6cbCQC9k6uZK5iO1ulW0IXzVPwrUCoVBWzcHJ0OzT25gDKiI
 3Q0lqRjbq2zQGCcDEQLFUH1pEIFR4yeuySokMTBCEkUY0mBEzPJyiQRCsXnE22klVael
 ivdw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=MluxRXER
Subject: [Intel-wired-lan] [PATCH] i40e: replace snprintf() with scnprintf()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In i40e_dbg_command_read(), a 256-byte buffer is allocated and filled
using snprintf(), then copied to userspace via copy_to_user().

The issue is that snprintf() returns the number of characters that
*Would* have been written, not the number that actually fit in the buffer.
If the combined length of the netdev name and i40e_dbg_command_buf is
long (e.g. 288 + 3 bytes), snprintf() still returns 291 - even though only
256 bytes were written.

This value is passed to copy_to_user(), which may read past the end of
the buffer and leak kernel memory to userspace.

Replacing snprintf() with scnprintf() fixes this. It returns the actual
number of bytes written, ensuring we only copy valid data.

Signed-off-by: Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 6cd9da662ae1..19a78052800f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -70,7 +70,7 @@ static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
 		return -ENOSPC;
 
 	main_vsi = i40e_pf_get_main_vsi(pf);
-	len = snprintf(buf, buf_size, "%s: %s\n", main_vsi->netdev->name,
+	len = scnprintf(buf, buf_size, "%s: %s\n", main_vsi->netdev->name,
 		       i40e_dbg_command_buf);
 
 	bytes_not_copied = copy_to_user(buffer, buf, len);
-- 
2.43.0

