Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7044DB3A35B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 17:03:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D474E41055;
	Thu, 28 Aug 2025 15:03:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id veoWkafqupp0; Thu, 28 Aug 2025 15:03:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A331F40D97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756393399;
	bh=zz5OdET14bvbaoUZxADja3Cnod6iht4siGFZlr3OPzI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xuPJTYb7/VwdrV07NG22rZeLSe9j+h8fCGA6bGbTXNDCkJS4+1lNNdBsy3GhsUayK
	 LlSoaAh6Cgqn8A3j9o9tbmPCPrqIoeb+M38obw5/CrI7gKR/WpnycUq/TkxqQA4X4d
	 03jwK/rSbUUo0Pq1vENDwhVM/PYG8zR1dzEgYQDQRyUlTPMwxaGKI3RIKIGy59xSgO
	 vWx1EpN2fjslGPM5URg3/Iz4GXdqid7N0H9uZkFAhNXj+WKXyhVTTlznxRhZGrT/6V
	 4wq/Iy7mTdnYEsqToA7Q+UlxhzHSL1HJh7QSLlEut1sYKbEeHTy497/JpumLbdiw8u
	 O6mS+KnXOS1PQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A331F40D97;
	Thu, 28 Aug 2025 15:03:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3050EB8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:42:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2FAC82F4A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:42:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dp-2hH6MYMJy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 11:42:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=vnranganath.20@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D47A482F19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D47A482F19
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D47A482F19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 11:42:37 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-248e01cd834so1046585ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 04:42:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756381357; x=1756986157;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zz5OdET14bvbaoUZxADja3Cnod6iht4siGFZlr3OPzI=;
 b=NASwhCAXNwI4v5QGE2X90/tkN1LvnrUrIo+uiy49LWxc7R17JUPEtXz98JbCXkKRad
 TNtrsDip6MBl4BhQh8ihJ8a0/h9WYDUdqhax6fRbRpmBU+4PTE9sm9UMBnYX0A5OGbsZ
 /Yh0mp4lERwDJWCHyeoW0X1FIWQthBFjI03Wc03w9azxiSXAIq+0GV58e3jNbpQhvG/V
 nLYV8RqNBDCj89xe0rmjwGv75tlaTAn83RHeRMqLuHYkSikGuckKEcyO0Q9GRczNTKjw
 82TV2TIEL3qU7mrWP8wKGtGLBHWMDMESRmBPpK6c2UGvC5/yM3EGvafoxJ6tnI/mE3BO
 wJGQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVY78QKU4IA9UOLz8TkI6nkIfjaIBsFS7d2tQW8c4Lz/QQ+wDtlVVx7dRAizvFsNeCletvaKUoVdmypAihzMvU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx/asdWKW4/ruMTLSUKDirdXswOrPOYinaj+DAY9j7awmpNWD5X
 o4xJngSvTF70GCID7Rnqud5wMrRuY+WjWTOVpWU7lMYwyCvz83baGLit
X-Gm-Gg: ASbGncum+SDVmZHQPD/+Ehe0c8IebqP2IxXBve//2OG+GOGK2BVfE7YTLwqcCh1EblI
 r6db5zpcFWTEE4atV7Mp+6iNvZ5oiDsIRHfGH7/QmcPF8C4RcfgxCoP/GwAD6rScfHbNFZDVy4r
 kszG/gYnOq5VWSjMf60xXwIpFeETejPg7K/LkEfECVx/rJrCJt0V9eNW6gQ8z1G43mHm9F3s5KP
 Cvq7NKyl/AJnG4JnjSCR0ImQY/wbC2kQddwM1pbOcHUw/YajBbIR09Ym1qGWN/VyHMdaJ9aY0U/
 e5734TxqFx2DnIx2fuK3ZJREdvSqD1s4GuSI51ie+xEB7h3v3Pfk4RKWLYP8kinIknMRcO2vbc2
 qnnLh27knl9ycf+rFw5d0o+S1npol
X-Google-Smtp-Source: AGHT+IGddHuFzGZuA8gyKj/JALukMUHFV1egCTs+17Xm1ZCD3HJRFq3WUNgi8BFJPyAK43GHrynRNQ==
X-Received: by 2002:a05:6a00:190e:b0:742:94fe:c844 with SMTP id
 d2e1a72fcca58-7702fc0c607mr15188840b3a.4.1756381357080; 
 Thu, 28 Aug 2025 04:42:37 -0700 (PDT)
Received: from ranganath.. ([2406:7400:98:c01d:64c:3fe1:6c19:3ca8])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-771cd487f90sm11537306b3a.97.2025.08.28.04.42.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Aug 2025 04:42:36 -0700 (PDT)
From: Ranganath V N <vnranganath.20@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org,
 Ranganath V N <vnranganath.20@gmail.com>
Date: Thu, 28 Aug 2025 17:12:08 +0530
Message-ID: <20250828114209.12020-1-vnranganath.20@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 28 Aug 2025 15:03:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1756381357; x=1756986157; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=zz5OdET14bvbaoUZxADja3Cnod6iht4siGFZlr3OPzI=;
 b=KETU2TdaP4IYr7HTeyCDZJih3Q8W1uUIPxe2fILTawqzjoL1SNDmJRyTUuYhErEbon
 rAwYO7Pjq62infBKj6kl6kITKNRErBSTzKBqi6h9hMTvcd3RUeXnjlkC9OyiBDBAOKKQ
 xaqXfLPIR4GksQp6E9Gcqp/FrAQ94UApzZFcmQTD1yanSlLLb/ZNt8jQjZRzB7Ok1+92
 6toEty5iZtLjtxdtMBLjzhWla3SaAfX2EFfP/8uQNRcG4kG6kblK3n4rklj1T/2m+7yH
 i7sC3c1Xm/eQuZGRT5PzfBdB/xUJYv2fnaiPlmq4X4VRtFINViluKWu47Eiqk3IWxL8b
 fVJw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=KETU2Tda
Subject: [Intel-wired-lan] [PATCH] net: igb: expose rx_dropped via ethtool -S
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

Currently the igb driver does not reports RX dropped
packets in the ethtool -S statistics output, even though
this information is already available in struct
rtnl_link_stats64.

This patch adds rx_dropped, so users can monitor dropped
packet counts directly with ethtool.

Signed-off-by: Ranganath V N <vnranganath.20@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 92ef33459aec..3c6289e80ba0 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -81,6 +81,7 @@ static const struct igb_stats igb_gstrings_stats[] = {
 }
 static const struct igb_stats igb_gstrings_net_stats[] = {
 	IGB_NETDEV_STAT(rx_errors),
+	IGB_NETDEV_STAT(rx_dropped),
 	IGB_NETDEV_STAT(tx_errors),
 	IGB_NETDEV_STAT(tx_dropped),
 	IGB_NETDEV_STAT(rx_length_errors),
-- 
2.43.0

