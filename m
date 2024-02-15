Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E57856FBC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 23:01:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 601C940428;
	Thu, 15 Feb 2024 22:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1gWoEiilgO3M; Thu, 15 Feb 2024 22:01:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1292741ADE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708034487;
	bh=7c5OHGhHTojwaEyoQ5DwBBrFP7ln6xQB8UIBfm95hg0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tO7Gd43k5I4PPN7rVVuFqisQI8qnD+sVUz9I7L35JyNh/ZJdiHzqitfLNG33cp1h5
	 3sH0s8nIoItbiwd7W223udaDkYJp1VCidD38QLOxoxA8/t4lXm7w6WBihJYSHfhsyi
	 SDvkqk6XPd6gug/eQY/oaEs0eHuwtLQqB3JX7b5ybRnOcZHwn0YwuENZZ1nxmRBmR+
	 P2ZekBQAeblqWZCqCxw+Lnf/0cXxAnGnM6bniMmqRipTIQe2zMFN41E7IsUfWI06t8
	 UQ0DbhbGaTdmV9kMxdrS80T2j/zhsnHmLULS5C1pDVag7vxzlsKzMvZ+doNHpZJMpL
	 zBHdZ5JeAotNA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1292741ADE;
	Thu, 15 Feb 2024 22:01:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1424B1BF580
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 22:01:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C9F641EFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 22:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r0RjECv_5xDs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Feb 2024 22:01:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=jmaxwell37@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 403E941EF5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 403E941EF5
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 403E941EF5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 22:01:24 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-1d8aadc624dso11830225ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 14:01:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708034483; x=1708639283;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7c5OHGhHTojwaEyoQ5DwBBrFP7ln6xQB8UIBfm95hg0=;
 b=kQtU7Lulz9jflStBfepc46qhb2t8WSYIMm4eUu+LroQVJunsduR+7xPa8JB6X6/A+S
 PbXbFQYptXmNGAlaLisLbHFaMKTG5VHZqQWlFbBFUwILi9FvMisc/9+Uw1TGYxdYJoPS
 us1KPB5Oq7OAiGeQXzK0RHP9rpLszNEiyEYS0L3gBEGBXmwk4CXe0uXH8PgJ5h+s9YUj
 C8gs6OUvZ/svU1xXfb43voHCYnB6Zpmyr5CZarqf253csjJ7M1f2LUf3u637KT1NMDm/
 jA20G/CCh8T+3H+gSkQ2N8//pZfsAbYGPRT/su9Alk6sRCFOLzKW9d10f1aM6LJSK6M5
 O/Qw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/HkXvLAbg3hxdS55H9wu0cBwurCOlslRYS+y33HyIsPQ9WiNoal1Xfi/Zw03F/FVGkvwqgZy3k2ZJFYJnktGWzP/C6xMe7tEgi8bXfyU9eg==
X-Gm-Message-State: AOJu0YzQ0PNucVVW6qYnPQqMkWpHv/M96R75I9lkHpe8FFWZZiE/eCzk
 azAXJh0nKTX3+t4YRKmj9EEwSQOGR1XDQqJii4TPmIOcFc8d+lmw
X-Google-Smtp-Source: AGHT+IEVOQzSdXmkeTX6ct0Ep/o6OLg+ixSVI4b7xrZU0uKBOwyKAaybdG1GxRqNVHW2h9rr6EqF0Q==
X-Received: by 2002:a17:903:2301:b0:1d9:7095:7e1f with SMTP id
 d1-20020a170903230100b001d970957e1fmr3998642plh.67.1708034483328; 
 Thu, 15 Feb 2024 14:01:23 -0800 (PST)
Received: from jmaxwell.remote.csb ([203.220.178.35])
 by smtp.gmail.com with ESMTPSA id
 mm4-20020a1709030a0400b001d916995423sm1683384plb.99.2024.02.15.14.01.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Feb 2024 14:01:22 -0800 (PST)
From: Jon Maxwell <jmaxwell37@gmail.com>
To: jesse.brandeburg@intel.com
Date: Fri, 16 Feb 2024 09:01:01 +1100
Message-Id: <20240215220101.248023-1-jmaxwell37@gmail.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708034483; x=1708639283; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=7c5OHGhHTojwaEyoQ5DwBBrFP7ln6xQB8UIBfm95hg0=;
 b=EQqUvpG1jcUSWAn5HunobVfpr4urb+9MV7t2IBnXC+N3u83U/IE6ptyGE26C8Ke+Bk
 oijOzK5YaJ9AEkXFGomI/XVAfWj81tB2+VtO7qfCUv7BSUpGHqYq1DFEm6pDFBHNHJcm
 JP/tAD4AEA8WSfcl3/75KBZSCsbyG5/0uxbA2gEWW9hK29x508Gg6hT1bZW7SAqK/uAV
 uoBi99ZKFPQTiVOLEfwxGfBEHt+cSxpX0bPsmpwcIxbYyXvchTbanAV48U0s57CwXzZ8
 y2s26yvoifQx9TrpKsTOdEnVOyYfzUY2OrmGFm9ZDlbzaRBcHjbsQMBzTqaVF33yRNZJ
 q1dA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=EQqUvpG1
Subject: [Intel-wired-lan] [net-next v4] intel: make module parameters
 readable in sys filesystem
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, jmaxwell37@gmail.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Linux users sometimes need an easy way to check current values of module
parameters. For example the module may be manually reloaded with different
parameters. Make these visible and readable in the /sys filesystem to allow
that. But don't make the "debug" module parameter visible as debugging is
enabled via ethtool msglvl.

Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>
---
V2: Remove the "debug" module parameter as per Andrew Lunns suggestion.
V3: Correctly format v2.
V4: Add ethtool msglvl to message. Remove deprecated ixgbe max_vfs
 drivers/net/ethernet/intel/e100.c             | 4 ++--
 drivers/net/ethernet/intel/igb/igb_main.c     | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 01f0f12035caeb7ca1657387538fcebf5c608322..3fcb8daaa2437fa3fe7b98ba9f606dbbb1844e58 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -171,8 +171,8 @@ static int debug = 3;
 static int eeprom_bad_csum_allow = 0;
 static int use_io = 0;
 module_param(debug, int, 0);
-module_param(eeprom_bad_csum_allow, int, 0);
-module_param(use_io, int, 0);
+module_param(eeprom_bad_csum_allow, int, 0444);
+module_param(use_io, int, 0444);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 MODULE_PARM_DESC(eeprom_bad_csum_allow, "Allow bad eeprom checksums");
 MODULE_PARM_DESC(use_io, "Force use of i/o access mode");
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 4df8d4153aa5f5ce7ac9dd566180d552be9f5b4f..31d0a43a908c0a4eab4fe1147064a5f5677c9f0b 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -202,7 +202,7 @@ static struct notifier_block dca_notifier = {
 #endif
 #ifdef CONFIG_PCI_IOV
 static unsigned int max_vfs;
-module_param(max_vfs, uint, 0);
+module_param(max_vfs, uint, 0444);
 MODULE_PARM_DESC(max_vfs, "Maximum number of virtual functions to allocate per physical function");
 #endif /* CONFIG_PCI_IOV */
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index bd541527c8c74d6922e8683e2f4493d9b361f67b..7d09d89bb4c01d1d7b600724b6575892212b5e29 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -153,7 +153,7 @@ MODULE_PARM_DESC(max_vfs,
 #endif /* CONFIG_PCI_IOV */
 
 static bool allow_unsupported_sfp;
-module_param(allow_unsupported_sfp, bool, 0);
+module_param(allow_unsupported_sfp, bool, 0444);
 MODULE_PARM_DESC(allow_unsupported_sfp,
 		 "Allow unsupported and untested SFP+ modules on 82599-based adapters");
 
-- 
2.39.3

