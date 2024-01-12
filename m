Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CCE82B9CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 04:00:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 284CC84404;
	Fri, 12 Jan 2024 03:00:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 284CC84404
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705028427;
	bh=mHxsD3vGrpoQGl3vcSwuxi2WNi7Ux/WzEviD/iSTRbQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2/1HhCYkEOMzQaVpDDWFc2dmTznq6Y/gI0Ma8i/NbmnfKLgjC6xhLybOlawh90Qmb
	 CAhMr4c2Jys33Cto13tKKD+2ogBAUOWlUdWlSSzRATlXXbCfTp4rKFZQ8xDhzRCtdP
	 DIfRdZTS5JG4s/mxGs4FiLjJj28Kk3VI5ojPdR6HjKfxSlM9Txk8rTObFVB/z+DMk7
	 S1s/uHaHjN9rnsqj0YIXE3Lo0LLlE8st1QnHHV5peoLg2lrrkgHe1LE0c81kWdJ1Ak
	 eTmUgtjXMRKDFC0hjRpGISdZoX3Xbrgm5Y4FH1fua8x1AJ1qO6gVQILgMMgytvQ1Mb
	 mYJJZS3JCsGrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xv9YgDNqZc6O; Fri, 12 Jan 2024 03:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FFED84438;
	Fri, 12 Jan 2024 03:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FFED84438
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B6A9D1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 03:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C1BD4399C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 03:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C1BD4399C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vzrvSiQA8uLD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 03:00:17 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 350FE4055F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 03:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 350FE4055F
X-UUID: ae53ff116344415d96418585a4d93d84-20240112
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35, REQID:6a2b0c87-dd81-4c55-9f0b-66abea040b8a, IP:10,
 URL:0,TC:0,Content:-25,EDM:25,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,A
 CTION:release,TS:-5
X-CID-INFO: VERSION:1.1.35, REQID:6a2b0c87-dd81-4c55-9f0b-66abea040b8a, IP:10,
 UR
 L:0,TC:0,Content:-25,EDM:25,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACT
 ION:release,TS:-5
X-CID-META: VersionHash:5d391d7, CLOUDID:676b437f-4f93-4875-95e7-8c66ea833d57,
 B
 ulkID:2401121059378NCKGCC4,BulkQuantity:0,Recheck:0,SF:66|38|24|17|19|44|1
 02,TC:nil,Content:0,EDM:5,IP:-2,URL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL
 :0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_FAS, TF_CID_SPAM_FSD, TF_CID_SPAM_FSI,
 TF_CID_SPAM_ULS, TF_CID_SPAM_SNR
X-UUID: ae53ff116344415d96418585a4d93d84-20240112
X-User: chentao@kylinos.cn
Received: from kernel.. [(116.128.244.171)] by mailgw
 (envelope-from <chentao@kylinos.cn>)
 (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
 with ESMTP id 544651348; Fri, 12 Jan 2024 10:59:34 +0800
From: Kunwu Chan <chentao@kylinos.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Fri, 12 Jan 2024 10:58:53 +0800
Message-Id: <20240112025853.123048-1-chentao@kylinos.cn>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-wired-lan] [PATCH v2] igb: Fix string truncation warnings in
 igb_set_fw_version
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
Cc: Kunwu Chan <chentao@kylinos.cn>, Kunwu Chan <kunwu.chan@hotmail.com>,
 przemyslaw.kitszel@intel.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 jacob.e.keller@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

'commit 1978d3ead82c ("intel: fix string truncation warnings")'
fix '-Wformat-truncation=' warnings in igb_main.c by using kasprintf.

kasprintf() returns a pointer to dynamically allocated memory
which can be NULL upon failure.

Fix this warning by using a larger space for adapter->fw_version,
and then fall back and continue to use snprintf.

Fixes: 1978d3ead82c ("intel: fix string truncation warnings")
Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
Cc: Kunwu Chan <kunwu.chan@hotmail.com>
Suggested-by: Jakub Kicinski <kuba@kernel.org>

---
v2: Fall back to use snprintf and a larger space,as suggested by
https://lore.kernel.org/all/20231212132637.1b0fb8aa@kernel.org/
---
 drivers/net/ethernet/intel/igb/igb.h      |  2 +-
 drivers/net/ethernet/intel/igb/igb_main.c | 35 ++++++++++++-----------
 2 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index a2b759531cb7..3c2dc7bdebb5 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -637,7 +637,7 @@ struct igb_adapter {
 		struct timespec64 period;
 	} perout[IGB_N_PEROUT];
 
-	char fw_version[32];
+	char fw_version[48];
 #ifdef CONFIG_IGB_HWMON
 	struct hwmon_buff *igb_hwmon_buff;
 	bool ets;
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index b2295caa2f0a..ce762d77d2c1 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3069,7 +3069,6 @@ void igb_set_fw_version(struct igb_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
 	struct e1000_fw_version fw;
-	char *lbuf;
 
 	igb_get_fw_version(hw, &fw);
 
@@ -3077,34 +3076,36 @@ void igb_set_fw_version(struct igb_adapter *adapter)
 	case e1000_i210:
 	case e1000_i211:
 		if (!(igb_get_flash_presence_i210(hw))) {
-			lbuf = kasprintf(GFP_KERNEL, "%2d.%2d-%d",
-					 fw.invm_major, fw.invm_minor,
-					 fw.invm_img_type);
+			snprintf(adapter->fw_version,
+				 sizeof(adapter->fw_version),
+				 "%2d.%2d-%d",
+				 fw.invm_major, fw.invm_minor,
+				 fw.invm_img_type);
 			break;
 		}
 		fallthrough;
 	default:
 		/* if option rom is valid, display its version too */
 		if (fw.or_valid) {
-			lbuf = kasprintf(GFP_KERNEL, "%d.%d, 0x%08x, %d.%d.%d",
-					 fw.eep_major, fw.eep_minor,
-					 fw.etrack_id, fw.or_major, fw.or_build,
-					 fw.or_patch);
+			snprintf(adapter->fw_version,
+				 sizeof(adapter->fw_version),
+				 "%d.%d, 0x%08x, %d.%d.%d",
+				 fw.eep_major, fw.eep_minor, fw.etrack_id,
+				 fw.or_major, fw.or_build, fw.or_patch);
 		/* no option rom */
 		} else if (fw.etrack_id != 0X0000) {
-			lbuf = kasprintf(GFP_KERNEL, "%d.%d, 0x%08x",
-					 fw.eep_major, fw.eep_minor,
-					 fw.etrack_id);
+			snprintf(adapter->fw_version,
+				 sizeof(adapter->fw_version),
+				 "%d.%d, 0x%08x",
+				 fw.eep_major, fw.eep_minor, fw.etrack_id);
 		} else {
-			lbuf = kasprintf(GFP_KERNEL, "%d.%d.%d", fw.eep_major,
-					 fw.eep_minor, fw.eep_build);
+			snprintf(adapter->fw_version,
+				 sizeof(adapter->fw_version),
+				 "%d.%d.%d",
+				 fw.eep_major, fw.eep_minor, fw.eep_build);
 		}
 		break;
 	}
-
-	/* the truncate happens here if it doesn't fit */
-	strscpy(adapter->fw_version, lbuf, sizeof(adapter->fw_version));
-	kfree(lbuf);
 }
 
 /**
-- 
2.39.2

