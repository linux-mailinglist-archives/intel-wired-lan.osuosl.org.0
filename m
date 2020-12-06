Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A5E2D0244
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Dec 2020 10:37:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A2D486938;
	Sun,  6 Dec 2020 09:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wfh757lpZeZ9; Sun,  6 Dec 2020 09:37:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24D2186937;
	Sun,  6 Dec 2020 09:37:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9BE201BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Dec 2020 09:37:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8E04487482
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Dec 2020 09:37:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gt6XVuS-1nZ6 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Dec 2020 09:37:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D2A587480
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Dec 2020 09:37:11 +0000 (UTC)
IronPort-SDR: vGm4HlkY7QtfK32J2rmQmv5jHX+iQasU2kzRWk2QZXJ9vrI6AfYPBTaVafbav4Uj/5yk88gMZf
 3OWQL+TQ6ghQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9826"; a="258281352"
X-IronPort-AV: E=Sophos;i="5.78,397,1599548400"; d="scan'208";a="258281352"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 01:37:10 -0800
IronPort-SDR: e3hLMQTdlLOLI1ztxaDJhACuPQt1g3TlGsFktXKTygkcXAjzdlW/It5iPDECm24ukTEHJ0ivdP
 SuGHNFAqaHww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,397,1599548400"; d="scan'208";a="317412198"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga007.fm.intel.com with ESMTP; 06 Dec 2020 01:37:10 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun,  6 Dec 2020 11:37:07 +0200
Message-Id: <20201206093707.3695380-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove MULR mask define
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Multiple Tx Data Read Requests is hardware pipeline feature and
do not controlled by software

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 21695476b8a5..efddb9012439 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -284,7 +284,6 @@
 #define IGC_TCTL_CT		0x00000ff0 /* collision threshold */
 #define IGC_TCTL_COLD		0x003ff000 /* collision distance */
 #define IGC_TCTL_RTLC		0x01000000 /* Re-transmit on late collision */
-#define IGC_TCTL_MULR		0x10000000 /* Multiple request support */
 
 /* Flow Control Constants */
 #define FLOW_CONTROL_ADDRESS_LOW	0x00C28001
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
