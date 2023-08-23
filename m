Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5236785F50
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 20:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 417D7612ED;
	Wed, 23 Aug 2023 18:11:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 417D7612ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692814299;
	bh=jgvo5rnchQfa5BSdIezi6vTxyfyU2PKM53g77zA1UoI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OdHoWvYj4TwIUFuH+g242eMZuqgByTIPcI1gwjEP1ODO62gglEV9vVSQQHZzvfjna
	 YV1alREKwvo+l6e/FX2sddXVtyIvIBHi9IxPbDZ8Dln8GNF9Tm86FG/JDJFDnOxoOs
	 r5H5xHCaCA6zjxI2uj5G4QzMl6b7c5+CWYeE6rXXswxJDufp5kZu5eK2hn4rrVNN67
	 K4pS3eLB8rMMZNWCXKJVkQRMUUFyEOP/wKpilWV/YyeNOTi0vdhSm4y7+rLPgRB1LK
	 WfNxqc6g1XdEfuJSNZOh2oYl5ddyxnR8BAUjoZq7TU83TrQXiE75mncMGym5/5xKdg
	 +K7DHlNseGkXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QuN-UwDL59zb; Wed, 23 Aug 2023 18:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34B2760B05;
	Wed, 23 Aug 2023 18:11:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34B2760B05
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 895731BF343
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CAF2612ED
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CAF2612ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KWkwVb-3Lwdm for <intel-wired-lan@osuosl.org>;
 Wed, 23 Aug 2023 18:11:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AEF25612F9
 for <intel-wired-lan@osuosl.org>; Wed, 23 Aug 2023 18:11:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEF25612F9
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374211877"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374211877"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:11:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="851141541"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="851141541"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2023 11:11:19 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7AD9433E8D;
 Wed, 23 Aug 2023 19:11:18 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 23 Aug 2023 20:06:32 +0200
Message-Id: <20230823180633.2450617-9-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230823180633.2450617-1-pawel.chmielewski@intel.com>
References: <20230823180633.2450617-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692814281; x=1724350281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9LKvTxSevpLEFQm5EUNabCxtuXlzk26Ycue2YeA3lIk=;
 b=XZJAD+GvbTcf/XH/8dOQpU0S3if68VwZgRzm2ps3PHar99mFMTky0UIk
 9KXWz8o5NGijipMF8lKWFOJmqNm1CHlpDBtEmS8J+9Ptd98FywequR0We
 IiddZyDxJRc5qaFavOlNj7zDrs2W+aNTRyaLOikmEexSoSCkjyfiE/aIp
 rzDshQXWEmR2i9YQgT1SO8WqUKEQ0TAEql3AGxeY310exphpah0AVlP93
 PEvI7jkfTsJwRyq3cRrcBWgsghd4QpJlVE5hfd3VhWNIm2biV3nzdgD/C
 QG7kLKnfLk99VPaWRgnO8Po0zpGb1BABAk9txS25ptcLf0nVnigZ7uhd/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XZJAD+Gv
Subject: [Intel-wired-lan] [PATCH iwl-next v3 8/8] ice: Hook up 4 E830
 devices by adding their IDs
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As the previous patches provide support for E830 hardware, add E830
specific IDs to the PCI device ID table, so these devices can now be
probed by the kernel.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9562ba928aae..5b16c03d2461 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5587,6 +5587,10 @@ static const struct pci_device_id ice_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_1GBE) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E823L_QSFP) },
 	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E822_SI_DFLT) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_BACKPLANE) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_QSFP56) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP) },
+	{ PCI_VDEVICE(INTEL, ICE_DEV_ID_E830_SFP_DD) },
 	/* required last entry */
 	{}
 };
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
