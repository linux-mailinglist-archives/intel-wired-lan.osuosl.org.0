Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D99D0CA5ED0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 03:48:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4583846FF;
	Fri,  5 Dec 2025 02:48:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vu-EvIdOOMJm; Fri,  5 Dec 2025 02:48:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 274F9846F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764902909;
	bh=07f0xkCNmwNJrz/eEX3cuUQnuuKh8RK1i6IvKN6Ecls=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ko9d4lbZyGqkP+nDoyJ/iqZO4tqQlMKezW8rQdBJdVQ8mjKMGk+z1ZAFrtS1v88Mo
	 h471TgF61VkJfOd1vMjDmueYF9C4qfuv+uSBM+jvmDNJOor+ekssKINpF0vwQegbUl
	 FqgXwouUFvDNAWWrbBWC1uKJBuRWyB9JxGGVZym6boKXe+VRKw32v+MqCEA9nxhIwM
	 PVS2qzV1ImYPzTmYipO0kKanZnZgl0ND2wXC1xCnaf+1k9DQtqvtUzaYeN32QiSPbK
	 tGO7Qcz/Wl2xl0h6nyVXeQV+g5WuopR/lpbeBlAO/qOvgg54gY/tmJh3YlFdDY7QMI
	 t0DubZqMaPHRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 274F9846F3;
	Fri,  5 Dec 2025 02:48:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 967E91A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 02:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7CD0E4008A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 02:48:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F_KGlF7CFmXY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 02:48:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8A72B40086
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A72B40086
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8A72B40086
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 02:48:26 +0000 (UTC)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CF23440196
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 02:38:22 +0000 (UTC)
Received: by mail-pl1-f200.google.com with SMTP id
 d9443c01a7336-297f8a2ba9eso32626045ad.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 04 Dec 2025 18:38:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764902301; x=1765507101;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=07f0xkCNmwNJrz/eEX3cuUQnuuKh8RK1i6IvKN6Ecls=;
 b=QbUNzpxCuCeuTJyNz41upFIaYRE2YGqOGzNzABDfsbhifrPLobPohzc/6KkfZHul0v
 TVgenvlfCmVNetBo97ZcEQOqj2EUHe/VwFqYe8eUq3n6/1bYqrGvLuiIJMyBP220TpcU
 hKMvJaU+Lo557W7u4Z1z/aviZ9ki7AcBPs2uq0MtW0HP+7PNX86WkSvATEVz5Q4LFkg2
 4zP2U+FVZCOTy7QFOBeAzR2HaJK0pkoTKEdTEGJ3juVu9B3EYkGoUTFh2dw+SHioZ6K/
 Unw+Peu8QXfWMmvOslVeRIVlT8rNwypemDZWjbqeNSBCE8GIg5wYXW3J0q8ixUASm8gx
 B4xQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUsn5842HhXBZBlNBaBMUj8fbSFJwqOkPMIFdqKt+9/YAScE3/Fwdk6/qwtdrNaFMHgXrCbMVX1MaDMpRpkFCE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw2uQSV0EbppCry40rcE9F0FBBE6Cq7dxQAk4jeTQeEIY9fD3PZ
 6mNw3VdQhOJNOtzoBzEf6MsgG0GQkbYVCvYOihQr2reANUIfY5MKk4ZNFf/JakvZSbq72CZ2u3b
 Z8wN56925T52vF2ModA8LSJngxc0TrT1P/JpX2UpiNx7jWgZEDgOb0Vo85npQDZ6PFAWQ+mn/p/
 vDlVO3enCtKpQ=
X-Gm-Gg: ASbGncvYxnNZbNJmvk/P+w0cEArklMqwB7tzrhMCMgbv5wI1fRz6WXzoJiyn3hQkJqP
 /vSVGJeq00PuUODU5bt9Dub+0eG5VWS/1hg39/taJMbOlXQs1SBtkOSldBJ0YwCxVItwmZCZlci
 SKsaCwYsC+/8hC55WPR6nEe48cr99bNd+NkQKCujXabbGb0mI3lQEsOA051NnEgRh2IRIXNa4Wd
 U7T8iMzbkizlDoALNuIyE3bkeLM567aFKWg+pTyS+ujlnaU5F4fksEC4LjwvS6vP1U879JS45QV
 BmUUAqVCZJr4TCuG3GqH7jyu/eq00eEzyIjFuIuc09UhNXuuzmmzFb1awEWbg+VTJjoLFv75ow+
 9BuzN4idBEwHOXoWVB9E+kugd
X-Received: by 2002:a17:903:3d05:b0:271:479d:3dcb with SMTP id
 d9443c01a7336-29d683398a5mr108135545ad.6.1764902301017; 
 Thu, 04 Dec 2025 18:38:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF3XlHEntu9FhXy6pJxOt+Oz3bkQTswSkU4qcAn23qCMgJeV9eurPihOGYATkBPAfwrBFvR4g==
X-Received: by 2002:a17:903:3d05:b0:271:479d:3dcb with SMTP id
 d9443c01a7336-29d683398a5mr108135205ad.6.1764902300638; 
 Thu, 04 Dec 2025 18:38:20 -0800 (PST)
Received: from localhost.localdomain ([103.155.100.1])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29dae99f1cfsm32282785ad.55.2025.12.04.18.38.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Dec 2025 18:38:20 -0800 (PST)
From: Aaron Ma <aaron.ma@canonical.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri,  5 Dec 2025 10:37:57 +0800
Message-ID: <20251205023757.1541228-2-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251205023757.1541228-1-aaron.ma@canonical.com>
References: <20251205023757.1541228-1-aaron.ma@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1764902302;
 bh=07f0xkCNmwNJrz/eEX3cuUQnuuKh8RK1i6IvKN6Ecls=;
 h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
 MIME-Version;
 b=oF9daAtP7gwvtzIpFqo15mswQpQAenYHgIb4iYHbD1y/e9JdeKtvYZbPUtC9TJGii
 9BWtZNAUmJGKej1FnFMoV0MbSb5ZXZ5MVgbem04RytT+rCSXSojli2tyitPHrM3DIh
 yGoKzxT/sJco8wMtkCdYT3Cae65nbIxkOa2Oovd64q8hO6FiFa2gkXu7A4F3YV4PUc
 6rZfp3pun0VslP+O8iJoXpMY+8OswY8TCZdcAmnKbQmxbiwkyvr1rM7U1qUasKMrrv
 IdIiRuo+i3HDcA2kZtXpOQLokhirhElfNAnkzNCwH/TQY/LcjndBx0s/q37BoVoCI8
 +xFPzcC2rHi2ig9b9qOXhaaPoNUYaXMSvUVnIgjw3XvYRPbQa5cSE+Mm+asxysChNK
 uqTrYK37Sf4RtEiW5OUYR/2uVdVVzqPgHhNYAOMMGqCW+mRNQOyERV/v9fzCnPllUo
 CXuCz77Jh/3jsbColn6HFh7YBBCef6QPb1hF+zbQaZKjLAnDPwrNlkOXaH1OL06hf8
 56aX6WLVH/8Nr6nZK6YpYBJwM0iE16l8dJjdgnkOsb4tyvKVkbMD/44+pbkRdZApLX
 Nvt2mOUZR3uZpn6gaKOzPPS+6pK6sG+US+Bm3fVxY6Nta4jrQcu3SWE1IzPF2eCUjm
 D6B6f0jYLykVqfTqvNBf+6rs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=oF9daAtP
Subject: [Intel-wired-lan] [PATCH 2/2] ice: Initialize RDMA after rebuild
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

After wakeup from suspend, IRDMA is initialized with error:

kernel: ice 0000:60:00.0: IRDMA hardware initialization FAILED init_state=4 status=-110
kernel: ice 0000:60:00.1: IRDMA hardware initialization FAILED init_state=4 status=-110
kernel: irdma.gen_2 ice.roce.1: probe with driver irdma.gen_2 failed with error -110
kernel: irdma.gen_2 ice.roce.2: probe with driver irdma.gen_2 failed with error -110

IRDMA times out because the initialization before the schedule reset.
The ice_init_rdma() function already calls ice_plug_aux_dev() internally,
ensuring proper initialization order.

Fixes: bc69ad74867db ("ice: avoid IRQ collision to fix init failure on ACPI S3 resume")
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2533876f1a2fd..c6dd04d24ac09 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5677,11 +5677,6 @@ static int ice_resume(struct device *dev)
 	if (ret)
 		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
 
-	ret = ice_init_rdma(pf);
-	if (ret)
-		dev_err(dev, "Reinitialize RDMA during resume failed: %d\n",
-			ret);
-
 	clear_bit(ICE_DOWN, pf->state);
 	/* Now perform PF reset and rebuild */
 	reset_type = ICE_RESET_PFR;
@@ -7805,7 +7800,12 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ice_health_clear(pf);
 
-	ice_plug_aux_dev(pf);
+	/* Initialize RDMA after control queues are ready */
+	err = ice_init_rdma(pf);
+	if (err)
+		dev_err(dev, "Reinitialize RDMA after rebuild failed: %d\n",
+			err);
+
 	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
 		ice_lag_rebuild(pf);
 
-- 
2.43.0

