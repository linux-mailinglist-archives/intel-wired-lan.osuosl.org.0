Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFBCCD9EDA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 17:23:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4E4160D4F;
	Tue, 23 Dec 2025 16:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bRddEa54oxsU; Tue, 23 Dec 2025 16:23:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 353E760C1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766506989;
	bh=Qk54TIE8w4c5rJwH2KoEkkMPQcoEF2GBpS3X0YnMXkw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MUJHqQmhjr8V0UsMWHJX3Q1lztQ2OlZU8mQicxzSEiPWCiaDDp+MFNCdTFM49h/oH
	 qni+CskgIa/eDu9TjgZSbnpo4yK4FnW5P63oZU0622YLgWnsJElH6F4Lm82XjkGkco
	 7qWrmaHnUbAGeKWGXdCX+U1HoFYVhaRl5+U1EZ9vTQ+TWGxW0r02cY9QYSyTzFdtSQ
	 LtAJAIWAnTkadyrgPHzyxxTTd/1BpS4IopoT36TZks8KaDgUZhFxWdOoBKSE2TeOyr
	 8jqx4HK+105tVwN70vhEuiwBu2ahs2y/WZj1fydf1oKx6b89PO/Jep85qX3GyZRVUB
	 sdZLYywFAsCNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 353E760C1E;
	Tue, 23 Dec 2025 16:23:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 91A73255
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77F2660C0F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9d3LgWLfLN9d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 16:23:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1135; helo=mail-yw1-x1135.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B2B8F60BEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2B8F60BEC
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com
 [IPv6:2607:f8b0:4864:20::1135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B2B8F60BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 16:23:06 +0000 (UTC)
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-787df0d729dso44177797b3.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 08:23:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766506985; x=1767111785;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Qk54TIE8w4c5rJwH2KoEkkMPQcoEF2GBpS3X0YnMXkw=;
 b=acIJvm2xySPrA2N1bwfMMRFMpE3oD3Oqf8MRpCmm4TnC2HHb1ZnIN+ym7wvmDrdHcR
 sZ43DJKQiv7C9UjWjClYZF98F3uWP5LJht1wVwPcOABAmulsaQnr31ee6/qYWzssYtx/
 IKy4WZV4LVR6BTnJ0Rpj3KSvePsoDXJ9auZo/tReJSkMLIspqwF4JkIPuQ6maRD/aKgN
 mQ9EH4+NicGEjeO5M8NZD9o3UURe9g2h5STMyikBNZikMTXvhS1wD34OVW6R0FrH59Y5
 Gs9gN4ybcdFiG+V3MVtCeJst1GtznktqkhwxlQMo23hASlb5WdYrfs9dV7+rnZlze50I
 VvYA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsWIaRaumvSPdokLh8XFAcpyCR6nCI7DM3dEG+Z/x6fTJPMYqTHoFhPqQCyUWbE8kYtj7b71xOTtl4YCSwbMw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwZS3uCjp2H+Lt3ZoLubaDKEtWUyZAhOYEMDZLDKr134g4JWxio
 ocPLrSL2Ihw4qCoPubQbQNSSzWYEPWDRp4K+maQMQGnkp0LlwJ5muKV3
X-Gm-Gg: AY/fxX4gRU2UQa6sPPVRW8GGSon5niIzychwpSY4HAKbXpPg67rz0GU6O/9Njw7jxae
 +j2YX/Uf9wTJFcW1Sy7VoDbsOI62NTDldMBVz6TioayN2qBtJNhqjjRxOv75CX8UB57QrEQyVk7
 NHMC8Ws2JKqjqbpgkR0X/1b/NDKwsXeMsTedgJ643zSiA0MhqzsInoWyFTgJyeDg+1nmiC1BmI9
 ure6Nx/ueRMoo2k0qNIAbrUyzoIMqTUYQt3Agfyi35zEg1QBkI0fS3ZO4qrqCAV1i7v0zeupECF
 nbxJKboNsf5xI0pA1dON0NFx+KsVArjPXSxSOcM4o6SCKXfgW9BC3xTA5790lffvuHjogcw5Jb4
 c0UgETRya6PErPKudXpA24rmNCCUsdDobSOS0Ol+a51ZfPL5WQd21j1hvVYkJghJaFVsJHuQxxu
 Njt5fE6i0=
X-Google-Smtp-Source: AGHT+IEg2VOV6xQFyK5bxxWkakIqXvU6e21ZRjY5vePVFUMHZX0s4GdRKrmFH3ID33eGm49ucr5Sxw==
X-Received: by 2002:a05:690c:6289:b0:784:8673:6f6f with SMTP id
 00721157ae682-78fb418d412mr129503467b3.58.1766506985420; 
 Tue, 23 Dec 2025 08:23:05 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:4913:14a4:1114:ff0d])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78fb4562df4sm55596637b3.55.2025.12.23.08.23.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Dec 2025 08:23:05 -0800 (PST)
From: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 23 Dec 2025 11:22:59 -0500
Message-ID: <20251223162303.434659-1-yury.norov@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766506985; x=1767111785; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=Qk54TIE8w4c5rJwH2KoEkkMPQcoEF2GBpS3X0YnMXkw=;
 b=lCihBVfSqbnAdcYQBDvJ+iJEn44OMPLgGGStYalBBVz/WHh1xOBC5n6wr6lBwg0d03
 dPnOWXKKkgWFCZoRFXk9l6p8/KtlFcpTI2Bqt9VWh7Gpi2+qtWcZxoC4sZSoNEOx3JbR
 1UdpN6EClXUKWxjZWjg8PBAy5nd3MoAtDfpikYuOL/xuHIr1eXw52MmkT64WOfVu+C8A
 YchO7pYh1wdhQydfFYP1H9yOIk5MgNHkXLlMvzAYKduZ638DHRrS2/LWQM8XJx67fOyo
 RL0O8a5IEoL7Ky77TPWEqpuc5PhWyNiFupiytchTbpG3a6UvRUjxv3OqCQo7ZB2M/YFh
 D/DQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=lCihBVfS
Subject: [Intel-wired-lan] [PATCH 0/3] ice: use better bitmap API
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

Use better bitmap API where appropriate.

Yury Norov (NVIDIA) (3):
  bitmap_weighted_xor()
  ice: use bitmap_weighted_xor()
  ice: use bitmap_empty() in ice_vf_has_no_qs_ena

 drivers/net/ethernet/intel/ice/ice_switch.c |  4 +---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |  4 ++--
 include/linux/bitmap.h                      | 14 ++++++++++++++
 lib/bitmap.c                                |  7 +++++++
 4 files changed, 24 insertions(+), 5 deletions(-)

-- 
2.43.0

