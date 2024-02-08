Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF1684EB7F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 23:18:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5729851CB;
	Thu,  8 Feb 2024 22:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZaOmZkGZUodR; Thu,  8 Feb 2024 22:18:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB036851BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707430697;
	bh=iwUfftNo0NrpRr9BW99q1MRWWjsnNNeYwX3VFPATbF0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lxDTnlkBJiDjJC85R+DYIwlFi+LiS0vX04fUZcDByg1mE5ruy8iKBoOnzQ5f4QWMi
	 x1udccIx9QcM5xYhuUlmQPbLTZHD7Wjq6iVtDZsqo6Kxh4jjGBlEBO1q0GZdzNVvrh
	 G/iDe8G/MBuGaXddiSWWUGJQf+Wg57VNN/ZFa/RDc160Ga68izDsArBxtZVRAH7ZRZ
	 C+TklQLRlqNkPI8X3pMht6eJ7UsJrcp1x0Dc3ByhYebmgyyh5UTKQG2vUvY/txOvG+
	 5Tz0cY3W8eqP2swcy/QZpFFHOSUb+W4zbwjVluQZUf8/Jbhp6Y1jrGgE6+Qq1YBJND
	 5BwkDYUCZGYww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB036851BB;
	Thu,  8 Feb 2024 22:18:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BD401BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 22:18:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22B576FB42
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 22:18:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id waOA35l1ahkB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 22:18:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c2a; helo=mail-oo1-xc2a.google.com;
 envelope-from=jmaxwell37@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D94F6FAB9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D94F6FAB9
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com
 [IPv6:2607:f8b0:4864:20::c2a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D94F6FAB9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 22:18:14 +0000 (UTC)
Received: by mail-oo1-xc2a.google.com with SMTP id
 006d021491bc7-58e256505f7so162442eaf.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Feb 2024 14:18:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707430693; x=1708035493;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iwUfftNo0NrpRr9BW99q1MRWWjsnNNeYwX3VFPATbF0=;
 b=UE9JZq0abWh95p0/FkPdzD3iP+sFxgK0ZgYg5ARqot2tXuA2Ok88Q3BaJPUZ9INYTR
 wAPd74Kt2wMziZB0AQ9wzecBvC/+JH0optlfnh0x+Y/3pJWfnLY97zdvbZ7eLbdlyPtq
 wCVOmApgUr3GldWwhK4R+QSTyufebbBRjWie05lhxcg5jiK2y3obunxIQkfVx1sZtN7r
 uQ9GlHWTOWn4hLJMRginKqcssFvQz45Xxh/hFdgSnBrbELLT6ZD4GeJSvu3f3Jkfgivy
 nlDcFYO5/r/SRRGsJrZL1EaUEwbPxfw8z4WvaUuJl3y18ge8Y9NC6pnai7reg0BPM4MD
 7s8Q==
X-Gm-Message-State: AOJu0YwFthX/QbSHtcuVk9eaGv/RGUDAhyfCrRPArKHDxQ48WZsw/i1t
 grRaHnkDwhZW200l1xe+V/im4zDdfe8QIyitQecHId9cG0D2kTpj
X-Google-Smtp-Source: AGHT+IGovOFvgiQsPwGM1GJYGbGKM27WNGk1gOLj/ukbEzVwJHHxBH7uxYyFgnLS9+YFj99snvKS7w==
X-Received: by 2002:a05:6358:705:b0:176:4aae:515c with SMTP id
 e5-20020a056358070500b001764aae515cmr537147rwj.17.1707430693047; 
 Thu, 08 Feb 2024 14:18:13 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWuaCC7NasFoFwnfc5VwhJsaN7nRE6k6KcjVXTXpE6c3TgL6v+X4baYfhWT7R5qD+JOUmHQ/q8eCaTKTWmD50Tekw2zXXxSfJeUBJ4ruZ1xbreiWyAndHTP0ZrEwDqrJHRxbT3p0JhmiFuWKDg08OO7ziS6I6u6tgXhPA1qX7+ak7YGiMn6ULYveUAnt0/VqNzOILiR6jtSAa+Z+/mUsViAI6oyPvgrUSHHJ16JJLLV6Pg4OZ8+A2bexRKavVABOOv1NrGbkrb070kW90QIIifg6BGhSTX5FxdTw9pMhWj925aOwEQRBgYgJj0=
Received: from jmaxwell.com ([203.220.178.35])
 by smtp.gmail.com with ESMTPSA id
 x37-20020a056a000be500b006e06e418c88sm253752pfu.216.2024.02.08.14.18.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Feb 2024 14:18:12 -0800 (PST)
From: Jon Maxwell <jmaxwell37@gmail.com>
To: jesse.brandeburg@intel.com
Date: Fri,  9 Feb 2024 09:18:02 +1100
Message-Id: <20240208221802.131087-1-jmaxwell37@gmail.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707430693; x=1708035493; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=iwUfftNo0NrpRr9BW99q1MRWWjsnNNeYwX3VFPATbF0=;
 b=KxVgrbwBBDOWbUPhDDy9svsqMqTnNG3dB1POuxuziSMTgL/YFcug9XsbSF6Bmu6Es4
 Nb0jvgsti/05hF6SPDPlIde+dGpfUBbp4nrsH0kbnGjWTZfcZDBM69IHwTShux7dmZYG
 PcK7niqAih/7hO4iGmVk4DMLx5i46f8OJjFdDW916x1t8Mo5JGsTmzFX1El68jxAk7jI
 gVdnhX4k3hpb8h4qWwG8IMN0HIapFpSZGHsndt/1EcUnRSe9X3G3o0UfNmOMFdFUFYKr
 80jVkuMUsJxXIAXPYUf43SplfRwEtYD+J+yZAnr/eLOM2Gf8gTFB4lXsFWMshGZF+dho
 GGMQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=KxVgrbwB
Subject: [Intel-wired-lan] [net-next v2] intel: make module parameters
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

v2: Remove the "debug" module parameter as per Andrew Lunns suggestion.
    It's not really needed as ethtool msglvl can control that.

Linux users sometimes need an easy way to check current values of module
parameters. For example the module may be manually reloaded with different
parameters. Make these visible and readable in the /sys filesystem to allow
that.

Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>
---
 drivers/net/ethernet/intel/e100.c             | 4 ++--
 drivers/net/ethernet/intel/igb/igb_main.c     | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

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
index bd541527c8c74d6922e8683e2f4493d9b361f67b..9d26ff82a397d4939cf7adea78c217e4071aa166 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -147,13 +147,13 @@ static struct notifier_block dca_notifier = {
 
 #ifdef CONFIG_PCI_IOV
 static unsigned int max_vfs;
-module_param(max_vfs, uint, 0);
+module_param(max_vfs, uint, 0444);
 MODULE_PARM_DESC(max_vfs,
 		 "Maximum number of virtual functions to allocate per physical function - default is zero and maximum value is 63. (Deprecated)");
 #endif /* CONFIG_PCI_IOV */
 
 static bool allow_unsupported_sfp;
-module_param(allow_unsupported_sfp, bool, 0);
+module_param(allow_unsupported_sfp, bool, 0444);
 MODULE_PARM_DESC(allow_unsupported_sfp,
 		 "Allow unsupported and untested SFP+ modules on 82599-based adapters");
 
-- 
2.39.3

