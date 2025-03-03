Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8557EA4C673
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 17:15:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B64660A40;
	Mon,  3 Mar 2025 16:15:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IFjtmqDZTnAA; Mon,  3 Mar 2025 16:15:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EC4A60763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741018524;
	bh=AzgjeKIve24Fd+6sZv+68MykgeG3DIorGDi+sVwYibs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xvXg0WGn42p8XydWKGAH4fnR50RJFXlcc6K3FNibuJ/zMzg5p5ICSyM9ei7O29xnr
	 m2w0xPpMmdxD/j87lujfGyyV7GOGSzXCvoasErIfVcPd2G7zSdc85Pb++pusbfzwXA
	 hTVzyiJqM7mIQNKnGE/pN1gRV/KqA5uY2ippWuya3/fO9KjwqBSe65XBivgjAcZpGf
	 peFIADMmYAnnX4H0oET2KUvr0qRVvZ4DxsQxq1ndgtsUAazkg+NoJjsjkyvWZWRVWJ
	 iJNK0rk8RMEBw95I+vxgNFS4k4iWBYJyNbnMEaJ4Z4RlIUjBWaBjPGQjvLvOACSM1o
	 f8eVrxcSd1jhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EC4A60763;
	Mon,  3 Mar 2025 16:15:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DEECEC1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 13:12:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDE1440BB6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 13:12:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rIOiHFBtD4Ky for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 13:12:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=joaoboni017@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2567A40898
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2567A40898
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2567A40898
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 13:12:16 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-2235908a30aso59760515ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 Mar 2025 05:12:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741007536; x=1741612336;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AzgjeKIve24Fd+6sZv+68MykgeG3DIorGDi+sVwYibs=;
 b=BgfT5YI3Avl+bramSXp6qZ85Tw4gv+v3NAkRlbDzfQIwVrH42Yfillwk4yMyQXxa8G
 yfeGRtKuDpioTV05BsJolwnxnC7I1jDzk9e7cgzpKXWuDd/p6koo8WqKEKWpVY5zi/pR
 Tyhoax20n3xre7rguEDlDsVBtLbH67iRu91BY0zQI1bKDDCob9AbavWA78K4desWvXpc
 AHayv/Eq5n82zjt2/9U8nbaGwiCGyxnsHgdwz3UzIUCocXE16PABq12MAgWTjzKQIsn3
 t3XXot1KB/yuKBEB4f7y9QX7E7Hrev+OFkbU2hUHvYDhYq/Jt5QUCErqDUbhTL/+MSVr
 tR9Q==
X-Gm-Message-State: AOJu0YwOPmvXj/Vwxrg7Uq2kzJbutQ2tOLJgBhuX4U1ZDcr6o24RFU0f
 6uX0pPaq7oPYzgyEOWmmainSgBhdmz1oIoTNnNlk6qkqBYnh+axL
X-Gm-Gg: ASbGnctJsiGsecBGt1NeOnewD4HYCz6sC8YSSc1dIQX716Sa135r+WT/ug/8ZLqihyU
 ClFEVUNTcdNJxBMS0dTyKNXp/eQFDFRl5e2X6SLlr2tzgX7djcxkKwXJFnz+8ddfpjtzq3CUzcm
 x3op1pyZ4vi/1/prjgyL2PZu3OMM5XOhqzAwr8ZQVDiVW3MW0mzMvLFjJeF3UF8uGY4h6TU/Pd0
 Hg6D7iAh4hEcBbA839DA+gLPT0y7gJfw+d2UiUIaQe3dwmr0AGbVD+y90jbtgmNJOF7oavX+t5P
 CQ5OL7tfnrqE3STHBerKpUi/WP1lsYW6sPk6x5ATuA==
X-Google-Smtp-Source: AGHT+IGUbSmpt02l8nhbQ1R20Qoqzc0uLkQ8eYbH2yARwiWWhJqLqC0tgoarto+OVZO3BKwq2dQ27Q==
X-Received: by 2002:a05:6a20:6a1c:b0:1ee:8099:e657 with SMTP id
 adf61e73a8af0-1f2f4e4c8a9mr22839759637.40.1741007536348; 
 Mon, 03 Mar 2025 05:12:16 -0800 (PST)
Received: from fedora.. ([186.220.38.89]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-aee7ddf245asm8133458a12.5.2025.03.03.05.12.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Mar 2025 05:12:16 -0800 (PST)
From: joaomboni <joaoboni017@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joaomboni <joaoboni017@gmail.com>
Date: Mon,  3 Mar 2025 10:11:55 -0300
Message-ID: <20250303131155.74189-1-joaoboni017@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 03 Mar 2025 16:15:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741007536; x=1741612336; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=AzgjeKIve24Fd+6sZv+68MykgeG3DIorGDi+sVwYibs=;
 b=FCaGGwJ9796uUbZYKgZoR5qm7NX5AaolLGZRqgMmc3D0i4qW2hdHkb8RED+FMvQ7Kh
 wNapGj/hDWEW7TR3YAqTaw+4PidPjGcTyX2mbjnQMRKVbBuYYLUedikxEVHGI6M6YwS8
 yaNh/VycOcVsgA7cNwpPdZIHbXrHqU2rEXAtaj1E55+YUDZvC006hv95eFjHFvDk4oCA
 SP5xA3QCywbH7fvZE4Q2ykRSVxrUdBW5aoRxXS7lj0tFo2tU3hCAjz35EZq4f3NCCGxB
 XfpabkJUOJn5azVzUXDIlMppBoR2WbN7cl1r6q3vjPUgJ+PrplA7/PXz69Pk5LbrdbXH
 9g+g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=FCaGGwJ9
Subject: [Intel-wired-lan] =?utf-8?q?=5BPATCH=5D_e1000=3A_Adicionado_cons?=
 =?utf-8?q?t_para_melhorar_a_seguran=C3=A7a_do_c=C3=B3digo?=
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

Signed-off-by: joaomboni <joaoboni017@gmail.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 3f089c3d47b2..96bc85f09aaf 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -9,7 +9,7 @@
 #include <linux/if_vlan.h>
 
 char e1000_driver_name[] = "e1000";
-static char e1000_driver_string[] = "Intel(R) PRO/1000 Network Driver";
+static const char e1000_driver_string[] = "Intel(R) PRO/1000 Network Driver";
 static const char e1000_copyright[] = "Copyright (c) 1999-2006 Intel Corporation.";
 
 /* e1000_pci_tbl - PCI Device ID Table
-- 
2.48.1

