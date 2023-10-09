Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D537BE2EE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Oct 2023 16:34:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03BBB611C3;
	Mon,  9 Oct 2023 14:34:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03BBB611C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696862094;
	bh=ZYm51MEplC+bZVgDjlpXIvwndnW9lia3+SFegemcACE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=06uQVlejJXD1mLtf75qN0wg0dZcbvv6Va7NQoIxQ+uze03PafsnyIMu3fypfALJC+
	 9rqSmD9Izt+E15iSqIQmv2uZYpEN7vSewhTo9hu+WBiGYWf21dLdxXL3Kldi8J2qI+
	 bXkj3tCZsW54X+Zrx+uBfv0GGQ7JN4m4WcDVh8zyWJaXGIWyITV96wE4Pqf6oTs288
	 dciWFI+vTD7bW7IzQggogETWdTLwJJMvw42qYk1Dew6je800VPSjXAr6AT0lhX2zpd
	 ZrrdmvFp/hQihIaDPxCW+pEPi3FJym+glK88FwUWkbQ+ZJnUjNU3tzGJJJsZZN9XlB
	 ArBF37iKYZotQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fVkTbAPjxvVM; Mon,  9 Oct 2023 14:34:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8B0A61142;
	Mon,  9 Oct 2023 14:34:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8B0A61142
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 190731BF314
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 14:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F25CF61142
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 14:34:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F25CF61142
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pplk3MoJ5rcA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Oct 2023 14:34:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 317E460AED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 14:34:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 317E460AED
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="388017102"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="388017102"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 07:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="843725740"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="843725740"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2023 07:34:43 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  9 Oct 2023 16:34:41 +0200
Message-Id: <20231009143441.9601-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696862087; x=1728398087;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZvFzu3czmI3h9ZRH9TehnPJVpYupBJ6kduq8kMU9YNc=;
 b=Qq8Ii1iadILdhMg5PwHEvTHfj9WSrMK+ttJgRK+LP5CMso9/XsH4bmKC
 eYOTpLv5SN2J6MJQ/qPhR7ZFBH+lbmx0tjwNU1ogyaQw3H/9ehM2bY1P7
 OJ+vNfxQlQ5JrE3HSGFCwFdZeKrrudaQGrI1f41jCzdnu+9Wn4OtcPeRJ
 8qsPLeeP/jNfyn7nyTaBHnx8GM5X3E0HZ83vIkmb8/a4XOurjd7Lh3G2Y
 AUppMeKqIACKKgdNJGFwA8IhxGTBV2Hv9ogA5p5wYIovQGD30SuEOcduV
 MpUiQJ9XbpXKwhr/YUQ3uGQAZhwm032Jrj3vWCi+H4C8KdSw9FISoiUTX
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qq8Ii1ia
Subject: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Change user
 notification of non-SFP module in i40e_get_module_info()
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Stefan Assmann <sassmann@redhat.com>,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make the driver not produce an error message on
"ethtool -m ethX" command when a non-SFP module is encountered
hence there is no possibility to read the EEPROM.
Make the message to appear in the debug log rather
than as an error string.

Change the return code to -EOPNOTSUPP and the string to make
it more verbose.

Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
CC: Stefan Assmann <sassmann@redhat.com>
CC: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 80c6205bacc4..fe12fc6bab97 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5582,8 +5582,8 @@ static int i40e_get_module_info(struct net_device *netdev,
 		modinfo->eeprom_len = I40E_MODULE_QSFP_MAX_LEN;
 		break;
 	default:
-		netdev_err(vsi->netdev, "Module type unrecognized\n");
-		return -EINVAL;
+		netdev_dbg(vsi->netdev, "SFP module type unrecognized or no SFP connector used.\n");
+		return -EOPNOTSUPP;
 	}
 	return 0;
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
