Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C75319C7899
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2024 17:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC7D8840B0;
	Wed, 13 Nov 2024 16:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mc7NpzYvI5mO; Wed, 13 Nov 2024 16:21:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27C7F840B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731514879;
	bh=RUk+2MyJ3Nk7p96EL5x2+4zXYUEBWNJcqoIkZyN24sI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uv1sKXCR7SvWEYw6gCvH/+tZcw9Qfiwlaw3VvxKxbrmtCoz+LUhcuamqyzAyMlPpH
	 heTDcB0wPapdxIZxJPFslGqBLJv3Y84cs/Vcde1GcuVgDKghAkWCtYJbLG8JqFsHoH
	 krWWrVT/vU1cwvP5sT8TZ7fVbWmIWm+jgBMy3/9yotiyvvMVA37rcxZ9UZD0eHpN46
	 DnKxeVTeEJm4fu/jN7vlXEAz6nAX+Ihtncvgq1GbjcnYZTwRsjLuBsszASfascF8pm
	 3bL0NUytv2msAm9QCYmMjhK4Ilvwo0CdFqNHg2iMr0sxFGzapHN0NNsAycNnPU9kHo
	 mC7qfcyc0zcWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27C7F840B2;
	Wed, 13 Nov 2024 16:21:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 61BE0D8F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 23:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4C30E404D1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 23:27:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ySIa3l5fdRS4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Nov 2024 23:27:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12d; helo=mail-lf1-x12d.google.com;
 envelope-from=tore@amundsen.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 311F740498
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 311F740498
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 311F740498
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 23:27:01 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-539e4b7409fso3940406e87.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 09 Nov 2024 15:27:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731194819; x=1731799619;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RUk+2MyJ3Nk7p96EL5x2+4zXYUEBWNJcqoIkZyN24sI=;
 b=af3N1h8TjFUku/iVH6nBuP+AZc5O4egKOWf1DwKsjD3CXAI02hLEPRKk8BjSvmGgm3
 qOjvFzwBjnSEeQyR+tcVjWWZSbaIOmk2sAUxHZ0OQwoy096iEcCHimR4X6QT6qPzAAHh
 J0OMuY1x4ZUC4TW4upu9vfDKl26HOSUqEaBVfKM62fI7MqRwtPhM8qgmDqAPO1eXObjC
 GyiOeGaN89ZnrNHbAsBZIf6v53kyiiaCT2InA7MUcSoG7JIEwEYBEpr59j2HhS+9EM/p
 e4r5u/rT185NhiPnxC/K2jPBDhX4t/x5KuCm4Xln+VU5EhB44S11GTx7NT61oZNsizqt
 mv9Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVauG+TQwiRUtBk56CjjKCqzd2GbNG1A2xQAB94drPxZ4e8ui5hrGfX23fIz8PEsZfOmd4QQ2R4U1D1X9WXiPA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwDj+EWPlEeAGZ37cEuiOPTt4ooxlW3Lo7lWJpKRLDNm/eI+93T
 oSKe/rppQ2KM/TPXQhy+eATE793TO6bjL886RpYuaew81Yk1r2VoHexZSWJJcV4=
X-Google-Smtp-Source: AGHT+IHu/CrOy1O8GUG/8a81IKfSyDxkXkDYyogMsyOSYajC01dxEovmO1L/UlKct/mw+O2nvMWy1g==
X-Received: by 2002:a05:6512:3d14:b0:539:edc9:7400 with SMTP id
 2adb3069b0e04-53d85f13a72mr2843906e87.20.1731194818581; 
 Sat, 09 Nov 2024 15:26:58 -0800 (PST)
Received: from localhost.localdomain (77-95-74-246.bb.cust.hknett.no.
 [77.95.74.246]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53d826aeb8fsm1057142e87.239.2024.11.09.15.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2024 15:26:58 -0800 (PST)
From: Tore Amundsen <tore@amundsen.org>
To: netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Tore Amundsen <tore@amundsen.org>
Date: Sat,  9 Nov 2024 23:25:57 +0000
Message-ID: <20241109232557.189035-2-tore@amundsen.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241109232557.189035-1-tore@amundsen.org>
References: <20241109232557.189035-1-tore@amundsen.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 13 Nov 2024 16:21:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amundsen.org; s=google; t=1731194819; x=1731799619; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RUk+2MyJ3Nk7p96EL5x2+4zXYUEBWNJcqoIkZyN24sI=;
 b=OAt5Q170ifNUJRjISe617xtO/vUJQHi+ydGqv5ui2QBTiWSWLSl/eaw3E/A5nyDqo0
 FqXhBep3J2rhYmsknsshiXO8B/v8mT2ntfd+yLy/uVEUVCKfQ+GWClm8phadWxWejtIE
 6guIujVXy24miikma3S/0AML+7CTY+SLiUFVY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=amundsen.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amundsen.org header.i=@amundsen.org header.a=rsa-sha256
 header.s=google header.b=OAt5Q170
Subject: [Intel-wired-lan] [PATCH 1/1] ixgbe: Correct BASE-BX10 compliance
 code
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

Signed-off-by: Tore Amundsen <tore@amundsen.org>
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

