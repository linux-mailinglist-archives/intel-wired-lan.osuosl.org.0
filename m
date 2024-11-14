Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5259C92A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 20:51:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5144400A7;
	Thu, 14 Nov 2024 19:51:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eJ8raFNG-Jat; Thu, 14 Nov 2024 19:51:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFD7B40613
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731613887;
	bh=sUamNRwdHqaneOvXI0azbdJiLRkfCesKErrnB+oq0dg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=780D4WjLknSYT2FqVf5n72dowi7zvucs7wJ0SXBtOvKJW7lHyyKnjmCpK+rU9gj1I
	 yavg7Jh+eXrwggH6pu3itljlfaJ0ruEOtZngVfa45YlbX8qArGjHAu10Yj8L3H28wY
	 SeV2Gkx039FOpKjN4XL43ICwO1/O2L2kbJo61Bb00/y31VGtQkXdXi1+RttPy9DtZm
	 TcAwa3XcAidGjIoG6aX82dFBTnKOdY79aF1Ucu4W0onTp4RWqDfQ/UJz9ToZpPELD/
	 9aOYRvjqUdz4Z2glqzn/FakNmdTtOhx1IK1wMRFMKAc+U8IOAZ3iEIiWnHkFu23UV9
	 dTJ3x2Wvt/9iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFD7B40613;
	Thu, 14 Nov 2024 19:51:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EDE1F1ED5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 19:51:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7DF840114
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 19:51:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g6H6Z-SiQirI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 19:51:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12d; helo=mail-lf1-x12d.google.com;
 envelope-from=tore@amundsen.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D706D400FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D706D400FC
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D706D400FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 19:51:24 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-539ee1acb86so1064993e87.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 11:51:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731613883; x=1732218683;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sUamNRwdHqaneOvXI0azbdJiLRkfCesKErrnB+oq0dg=;
 b=H257zxzgHQZ+NOeLS3r6FHtuYey92NwzhJ9bi2dLUyaQoyW2xyerjA7YLjwiOELMsF
 OyQKk99OWUWTyIyTBdqM7sIsnhP7JvvThR9tSOiOwLixzEAMH6YzMgPnRiPzaGTYAp0k
 GM+JdQLZt7whhqLhj+8DDvcrvwWgJ5sD4HLb/NEXd0qQfDBrtVF8lbltWkeMxdn17EqB
 wL8hVpJJzCkcHrGQj+RJooZ9bNrjih2BhqmE65/UR+VeQ39QwEob3jC8nVoxYlBVxM7p
 WiTLHHpR+flvYqyXEIeQQzEUl8/J7ZewGRYyESzV9/FBgY/h4iEQubaib0Q9Cwmf+hpS
 W92Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXXg3837+97mwA1Q1V3H0sUzzQNySL7IsVYhMvqBZRjsm9wyKxId51nXQWc3zrEN6RYl54kWJeUKsb1DA8UfOg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx5iER9vzqG+M0PjlAa7byPcaF9mp598VIJabKAa2n7FcofWTN1
 uDhMaobMCNOGWnJXOoYsiEpU43xuRoYjkuTfxuuz722hhIBFV71/XAnfyVSwd9c=
X-Google-Smtp-Source: AGHT+IEBEehanLwEneeIOLJnVHbZhhye/fiGYEV3b8jPAjjxCTLWMT5lmYur9Jh3ksL3tfhl2Y/Ltg==
X-Received: by 2002:a05:6512:3981:b0:536:741a:6bad with SMTP id
 2adb3069b0e04-53dab289f4fmr3648e87.12.1731613882471; 
 Thu, 14 Nov 2024 11:51:22 -0800 (PST)
Received: from localhost.localdomain (77-95-74-246.bb.cust.hknett.no.
 [77.95.74.246]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53da6530d81sm288780e87.160.2024.11.14.11.51.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 11:51:22 -0800 (PST)
From: Tore Amundsen <tore@amundsen.org>
To: pmenzel@molgen.mpg.de
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, ernesto@castellotti.net,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, tore@amundsen.org
Date: Thu, 14 Nov 2024 19:50:47 +0000
Message-ID: <20241114195047.533083-2-tore@amundsen.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241114195047.533083-1-tore@amundsen.org>
References: <ec66b579-90b7-42cc-b4d4-f4c2e906aeb9@molgen.mpg.de>
 <20241114195047.533083-1-tore@amundsen.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amundsen.org; s=google; t=1731613883; x=1732218683; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sUamNRwdHqaneOvXI0azbdJiLRkfCesKErrnB+oq0dg=;
 b=UB22veWhMMoPWK6yULGymoMtelKY/xfvq4E4y7GUhb7e6Ir9N6CxQA7vF1U/Qonhx+
 BTIj5+9k9UOIpUH0V8Z/WYNHqVq04NARMtITBdT5neNuZnIFKLb7CYeSsJGBtGwfBJT5
 YpdmiBs4CDxHz8onzyqokxktZRdmM0MuPc4ig=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=amundsen.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amundsen.org header.i=@amundsen.org header.a=rsa-sha256
 header.s=google header.b=UB22veWh
Subject: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: Correct BASE-BX10
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

Fixes: 1b43e0d20f2d (ixgbe: Add 1000BASE-BX support)

Signed-off-by: Tore Amundsen <tore@amundsen.org>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
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

