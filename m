Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4956A9CE117
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 15:18:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BEFB844D7;
	Fri, 15 Nov 2024 14:17:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tE3cDpH4_-28; Fri, 15 Nov 2024 14:17:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1856844CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731680273;
	bh=Ji98jAueku6e1lv14MgUoovwYkrHFp8EgmSQx8sgEos=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xV4y2/I7TOWp+XVfGZBhBaA+2ztEe0zT4uWLTz9edL2FSHi/4w7LzYBUhHjb298Ni
	 3Yh7euVud1TlEbFhpphRtF8Mz3RHoWpCSXH4mU1C4iiAqzq7Vp3wwJRMEMXrAmmIKv
	 WII7isDFCJfgQsB+mEmi9W+VzJUChd3Xl6yKj7xxCZc6PxSiChFlpLFSHvn7ygmbis
	 626G0N5mXtyhVzVrRNh4dDViRv9wNopk8k7dFIruMq7niWHlukKGgBRIYzAsPuA0xt
	 b2gKaTA7G98Pc5EXRP8hxXuSZPjgd56Z85jrJpj/vwHn0GWmvh9PFFSsaKaqZPnIT4
	 U4CLgG5tUEEIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1856844CA;
	Fri, 15 Nov 2024 14:17:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 01B99BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 14:17:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E399A4093F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 14:17:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2vY4fb8Nmv2J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 14:17:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::232; helo=mail-lj1-x232.google.com;
 envelope-from=tore@amundsen.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C2655407A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2655407A8
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2655407A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 14:17:50 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id
 38308e7fff4ca-2fb3debdc09so6167171fa.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 06:17:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731680268; x=1732285068;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ji98jAueku6e1lv14MgUoovwYkrHFp8EgmSQx8sgEos=;
 b=kc7DZ2ZY00ytT6YSliitzQZyedqt2A+DlVabsV4akFZc2c6CivSjWfsa66nlppVMQk
 G47qVbIgRqBwf/hqRbVm5jilyAYIANRLauD0a2Bh8gGjXd4jSKOuWYEuBamcqJcQ5D9k
 503PqVwALYGJGvHiAYrPQ2VeKEFHT+/43ndFgmh9edCm663MqNbs4P0sCjr7VvNW7Kyu
 f5eCKV3JPHP0SHCdjNkjlRMhToQjMUjYXQIvlujuS+ErGDAx0KbtJfC51twbOwLzNOHH
 lA2sTNBbW9x1qnPguFlcDNC4vzKFv50jLgYZPpQ6dJLblRXQmm8tECzaI+eau9iiQtHI
 l9WA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWUyA5aWFnj5q9NXfhzFN46N0Q1d7WrA8o9bRTTWPPVhMApcUT9zQ84RF3SAIdWrl4lOTYN6tqCyoJCptkW+Dc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy9wTHHCjdNsvdqm2jDPsiABemEOYpOL3G9/Up0pndntXixXwhl
 4yyZ+OC/E0ySvzEMy6wKTqdF6F0xQEq7IfYz+a4EV/aq9KY/aNahK+uV8la9eKM=
X-Google-Smtp-Source: AGHT+IGVhdFKt8T6HX7yVrULBvS6gpPhEbblidatFeADEvWpgf+4fMZ34SXLF0m/q5wdbPdVX9sMbQ==
X-Received: by 2002:a05:651c:b27:b0:2fe:f8e1:5127 with SMTP id
 38308e7fff4ca-2ff60665f0cmr15414471fa.9.1731680268056; 
 Fri, 15 Nov 2024 06:17:48 -0800 (PST)
Received: from localhost.localdomain (77-95-74-246.bb.cust.hknett.no.
 [77.95.74.246]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-2ff5977ab18sm5588441fa.46.2024.11.15.06.17.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2024 06:17:47 -0800 (PST)
From: Tore Amundsen <tore@amundsen.org>
To: netdev@vger.kernel.org
Cc: pmenzel@molgen.mpg.de, andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, ernesto@castellotti.net,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 linux-kernel@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, tore@amundsen.org
Date: Fri, 15 Nov 2024 14:17:36 +0000
Message-ID: <20241115141736.627079-1-tore@amundsen.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amundsen.org; s=google; t=1731680268; x=1732285068; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Ji98jAueku6e1lv14MgUoovwYkrHFp8EgmSQx8sgEos=;
 b=a7S7Ss2+//px6S/pnKYmpjVcJ2dlzfTc3/f6dh/KII6mFlONvEEjVtJW1q8f5Jxxl1
 EdIsJq7b7CygebTQv1JB+dGezP6N0YPDTNswwxPGuRgyiChli8CfFEAVczUzLMNtn+vx
 4WuM5kECOaS4TprJGXzG1FhjyloBjM8anaVxU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=amundsen.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amundsen.org header.i=@amundsen.org header.a=rsa-sha256
 header.s=google header.b=a7S7Ss2+
Subject: [Intel-wired-lan] [PATCH v3 1/1] ixgbe: Correct BASE-BX10
 compliance code
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

SFF-8472 (section 5.4 Transceiver Compliance Codes) defines bit 6 as
BASE-BX10. Bit 6 means a value of 0x40 (decimal 64).

The current value in the source code is 0x64, which appears to be a
mix-up of hex and decimal values. A value of 0x64 (binary 01100100)
incorrectly sets bit 2 (1000BASE-CX) and bit 5 (100BASE-FX) as well.

Fixes: 1b43e0d20f2d ("ixgbe: Add 1000BASE-BX support")
Signed-off-by: Tore Amundsen <tore@amundsen.org>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Acked-by: Ernesto Castellotti <ernesto@castellotti.net>
---
v2: Added Fixes tag as requested by Paul Menzel.
v3: Correct Fixes tag format and add Acked-By.

 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
index 14aa2ca51f70..81179c60af4e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
@@ -40,7 +40,7 @@
 #define IXGBE_SFF_1GBASESX_CAPABLE		0x1
 #define IXGBE_SFF_1GBASELX_CAPABLE		0x2
 #define IXGBE_SFF_1GBASET_CAPABLE		0x8
-#define IXGBE_SFF_BASEBX10_CAPABLE		0x64
+#define IXGBE_SFF_BASEBX10_CAPABLE		0x40
 #define IXGBE_SFF_10GBASESR_CAPABLE		0x10
 #define IXGBE_SFF_10GBASELR_CAPABLE		0x20
 #define IXGBE_SFF_SOFT_RS_SELECT_MASK		0x8
-- 
2.43.0

