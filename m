Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955BA853E88
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 23:24:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C8014158B;
	Tue, 13 Feb 2024 22:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHdiyaqxpVCg; Tue, 13 Feb 2024 22:24:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6853941592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707863046;
	bh=MmPPVce04OmE6pjEU+43mxBTewwTDrSldoXWGdB+S6k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bRL0p1Ow+jrPeHE5IOukH9w8bjeGVGIKANjJ+BvDmw37pmZ0dQ3cxLini6tBtV45d
	 t9C5xsoAiF1djOY3hsXolPUR7QAfbRFUYJIdFYULmeP9zKc1pWiWyRmnzhAyUVCTmU
	 crGYSUWVw09R0GE8+QxLkL+xvJ13eqv7p0lPCYeJgeypxBUxji3HZqE0FjkWrz4uaC
	 +fqSHqwTPtA3Uj8Q6LG1g8bL3qEzlEpkW9vj3UBWHKPZmMvPtCXR9W2yoObI/W8cmQ
	 MnYtTf4/RK/I9YtHFVZ1DJu+jSZRoSIXAfWPAuRSTnc5KlugUUG7V+c/UhbaGTv+Uj
	 xapxj0v3XtS+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6853941592;
	Tue, 13 Feb 2024 22:24:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF07B1BF308
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 22:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BACDD409F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 22:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bUTswt2bkrac for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 22:24:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=jmaxwell37@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D88F040851
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D88F040851
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D88F040851
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 22:24:02 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-1db5212e2f6so1547225ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 14:24:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707863042; x=1708467842;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MmPPVce04OmE6pjEU+43mxBTewwTDrSldoXWGdB+S6k=;
 b=ZP1WKmWi+gSOig9+/qF7tIE9WDaHAQjtKopESkN4aciqvpd6dgFekhhqEZLPEKAvCj
 WC3wFOst6lwGn/hvuKGQhO1NO8w2SOWM4LVaMB5reBnlINJbUuKC1J7maOOPO5ailjjp
 1EPQWxAre0UkzbSn9xl2fKRn3O25KucPSSY+nTh+xx4567f2N+V+770kmSu66Z090Wk6
 AEZWR56uPFtYEPekt43sKc8MVKGHMopC91/nDvl1Pe0+sIlnBaXhTQei3/oBlaVDmlFF
 4TtjkU7goPwjrhq5JmwVpUxMZnQN0xtyC8CV4OtUOpDorJMnyEW9M5VndRUN1WYYrftl
 cvHQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVtv5yocExi1Q6wfCv6q8HpxrklD8IAADHdCpubZaJtzKiqNdYwXhO81OoW+DbqDOt0WLikSWIM8ZXunOZWnUk6wJMG74Ktz1LEiSilb2MsJw==
X-Gm-Message-State: AOJu0YyNUX5U8s8lqn5CSG+FbY2YBL+s6o5Wo6SWPYggnBKLsOM0v6ad
 nCyiJ+yQUCrhMeNIhJtG/FR9hGeu84Ktgt8lOR8JpugGL6Ba6/9/
X-Google-Smtp-Source: AGHT+IFxIAWWVA/VRD5OF45TafGXBeA6kTytVJZ4XCV0BD7jXp9sXvvd9vxhEfjWFzOQ5wMefamshA==
X-Received: by 2002:a17:903:1207:b0:1d9:5ef2:a562 with SMTP id
 l7-20020a170903120700b001d95ef2a562mr254090plh.10.1707863042047; 
 Tue, 13 Feb 2024 14:24:02 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXkwRA7jCuQUCYvCGX5y6jn6WOIQAvqoxyUJoInq4shQ4oAEDnLQTAPlD5c21AXpe6neVlVs8ycyq3JJnMxxjgni56SX2HHl4B9Ccyx0xyihpZAVOsLAm8aSXcw7XeXKz6oX2J78DxbcSSsaVEMpBbJ4s3Sg+7dgcIjDFxyrVdEAzgmFbYV4ZVim6aIQNp1Ly/aADUy0iqKskkXYV+Vb9zvBloQIeibN6GLC4r7OruA68stA/e2U9hYUZBQzvZk4N0RaA4YmTxM/PTi8TEvpCugz7PUwikVUoAeWnM9iy88TNhsknuF9BgDcvw=
Received: from jmaxwell.com ([203.220.178.35])
 by smtp.gmail.com with ESMTPSA id
 iz21-20020a170902ef9500b001db499c5c12sm776490plb.143.2024.02.13.14.23.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 14:24:01 -0800 (PST)
From: Jon Maxwell <jmaxwell37@gmail.com>
To: jesse.brandeburg@intel.com
Date: Wed, 14 Feb 2024 09:23:44 +1100
Message-Id: <20240213222344.195885-1-jmaxwell37@gmail.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707863042; x=1708467842; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=MmPPVce04OmE6pjEU+43mxBTewwTDrSldoXWGdB+S6k=;
 b=DtHAoa8obg6OPja2rqshl3bZbqp8cXdqBFICbc/ME6g/DgQYr9vKJJ1SQzzThiDIeE
 odiDxS/1Ts6u7R+RiVZCWMoNdB8+glpQinjEUVfOz3C4LOtAotiV5QZuQrIFfnrsgF/y
 7sxr7kHHBDD8pna5fQTIkl2FM6HJ+XufEuU30GptX7GEIk/mfyvepHeYDK/kEOv4HGnH
 BIoS+v1pHN4Qtnzk/hpnZAlYr1CcQqHPRL6UPrpLoQd86v09WjjYVkS9C1qOFMyRsSn7
 zD/bS7q50Ov+wJcOUb5SlwdnOHyQLUwpZPZcHxSxO8pOci/ZaAMB1dkQW53FWNd1z4UB
 6g6A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=DtHAoa8o
Subject: [Intel-wired-lan] [net-next v3] intel: make module parameters
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
that.

Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>
---
V2: Remove the "debug" module parameter as per Andrew Lunns suggestion.
V3: Correctly format v2.
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

