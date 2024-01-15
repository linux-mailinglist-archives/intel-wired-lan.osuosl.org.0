Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CB382D514
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jan 2024 09:29:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 070E841735;
	Mon, 15 Jan 2024 08:29:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 070E841735
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705307362;
	bh=G3P7IzHpkQSljj5BJGuYrbyEmo65e2Iy3kJGNBXv2lI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iC66dMrFB9tv7uU+lTuxLffgsf7Au1tGMxF5X3KNYkxndJj1QicVlLj97pKD+8+vN
	 cnOcmihNgegM1jvA56jXLra1HBejm9TveVntRfAkzec2G8kZUcEVMIwwiiHJ17EJyy
	 j2wbIstrOP1MftxdekIBaHgjliaIcEzxIQipPjMvCssjomUFXt2EnrEfa8dvdFIlwq
	 d/9ZjOW6skehWCgNdDbnRjfKFE/wcIo8csMWMxS3xq5O4Nbd8h+sPdzcwdqZbfvKor
	 d1ccVMr9fKVVzzu+G6AjrLxebat0mZhY5/hvt2E6+rXPYr65go+ZXKBeWqBm7ipSyP
	 BOHyBy76QJ72A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h_id0Buw4JX1; Mon, 15 Jan 2024 08:29:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3DEF410C6;
	Mon, 15 Jan 2024 08:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3DEF410C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F7101BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 08:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 334614011C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 08:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 334614011C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G6Cn_n5HVLZL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jan 2024 08:29:13 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD3C1400EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 08:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD3C1400EA
X-UUID: 31fcfcd4b01b40ad874ece7b38f63cfa-20240115
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35, REQID:c198143f-5398-429d-a0b1-52b983a3fae0, IP:10,
 URL:0,TC:0,Content:-25,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,AC
 TION:release,TS:-30
X-CID-INFO: VERSION:1.1.35, REQID:c198143f-5398-429d-a0b1-52b983a3fae0, IP:10,
 UR
 L:0,TC:0,Content:-25,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTI
 ON:release,TS:-30
X-CID-META: VersionHash:5d391d7, CLOUDID:bf175c7f-4f93-4875-95e7-8c66ea833d57,
 B
 ulkID:240115162832CZL9Y6XZ,BulkQuantity:0,Recheck:0,SF:66|38|24|17|19|44|1
 02,TC:nil,Content:0,EDM:-3,IP:-2,URL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,CO
 L:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR, TF_CID_SPAM_FAS, TF_CID_SPAM_FSD,
 TF_CID_SPAM_FSI, TF_CID_SPAM_ULS
X-UUID: 31fcfcd4b01b40ad874ece7b38f63cfa-20240115
Received: from mail.kylinos.cn [(39.156.73.10)] by mailgw
 (envelope-from <chentao@kylinos.cn>) (Generic MTA)
 with ESMTP id 334138515; Mon, 15 Jan 2024 16:28:28 +0800
Received: from mail.kylinos.cn (localhost [127.0.0.1])
 by mail.kylinos.cn (NSMail) with SMTP id A2D93E000EB9;
 Mon, 15 Jan 2024 16:28:28 +0800 (CST)
X-ns-mid: postfix-65A4ECAC-547880103
Received: from kernel.. (unknown [172.20.15.234])
 by mail.kylinos.cn (NSMail) with ESMTPA id 8996AE000EB9;
 Mon, 15 Jan 2024 16:28:26 +0800 (CST)
From: Kunwu Chan <chentao@kylinos.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Mon, 15 Jan 2024 16:28:25 +0800
Message-Id: <20240115082825.28343-1-chentao@kylinos.cn>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-wired-lan] [PATCH v3] igb: Fix string truncation warnings in
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

Commit 1978d3ead82c ("intel: fix string truncation warnings")
fixes '-Wformat-truncation=3D' warnings in igb_main.c by using kasprintf.

drivers/net/ethernet/intel/igb/igb_main.c:3092:53: warning=EF=BC=9A=E2=80=
=98%d=E2=80=99 directive output may be truncated writing between 1 and 5 =
bytes into a region of size between 1 and 13 [-Wformat-truncation=3D]
 3092 |                                  "%d.%d, 0x%08x, %d.%d.%d",
      |                                                     ^~
drivers/net/ethernet/intel/igb/igb_main.c:3092:34: note=EF=BC=9Adirective=
 argument in the range [0, 65535]
 3092 |                                  "%d.%d, 0x%08x, %d.%d.%d",
      |                                  ^~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/igb/igb_main.c:3092:34: note=EF=BC=9Adirective=
 argument in the range [0, 65535]
drivers/net/ethernet/intel/igb/igb_main.c:3090:25: note=EF=BC=9A=E2=80=98=
snprintf=E2=80=99 output between 23 and 43 bytes into a destination of si=
ze 32

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
v3: Add detailed warnings to the commit msg ,no functional change
---
 drivers/net/ethernet/intel/igb/igb.h      |  2 +-
 drivers/net/ethernet/intel/igb/igb_main.c | 35 ++++++++++++-----------
 2 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/=
intel/igb/igb.h
index a2b759531cb7..3c2dc7bdebb5 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -637,7 +637,7 @@ struct igb_adapter {
 		struct timespec64 period;
 	} perout[IGB_N_PEROUT];
=20
-	char fw_version[32];
+	char fw_version[48];
 #ifdef CONFIG_IGB_HWMON
 	struct hwmon_buff *igb_hwmon_buff;
 	bool ets;
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethe=
rnet/intel/igb/igb_main.c
index b2295caa2f0a..ce762d77d2c1 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3069,7 +3069,6 @@ void igb_set_fw_version(struct igb_adapter *adapter=
)
 {
 	struct e1000_hw *hw =3D &adapter->hw;
 	struct e1000_fw_version fw;
-	char *lbuf;
=20
 	igb_get_fw_version(hw, &fw);
=20
@@ -3077,34 +3076,36 @@ void igb_set_fw_version(struct igb_adapter *adapt=
er)
 	case e1000_i210:
 	case e1000_i211:
 		if (!(igb_get_flash_presence_i210(hw))) {
-			lbuf =3D kasprintf(GFP_KERNEL, "%2d.%2d-%d",
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
-			lbuf =3D kasprintf(GFP_KERNEL, "%d.%d, 0x%08x, %d.%d.%d",
-					 fw.eep_major, fw.eep_minor,
-					 fw.etrack_id, fw.or_major, fw.or_build,
-					 fw.or_patch);
+			snprintf(adapter->fw_version,
+				 sizeof(adapter->fw_version),
+				 "%d.%d, 0x%08x, %d.%d.%d",
+				 fw.eep_major, fw.eep_minor, fw.etrack_id,
+				 fw.or_major, fw.or_build, fw.or_patch);
 		/* no option rom */
 		} else if (fw.etrack_id !=3D 0X0000) {
-			lbuf =3D kasprintf(GFP_KERNEL, "%d.%d, 0x%08x",
-					 fw.eep_major, fw.eep_minor,
-					 fw.etrack_id);
+			snprintf(adapter->fw_version,
+				 sizeof(adapter->fw_version),
+				 "%d.%d, 0x%08x",
+				 fw.eep_major, fw.eep_minor, fw.etrack_id);
 		} else {
-			lbuf =3D kasprintf(GFP_KERNEL, "%d.%d.%d", fw.eep_major,
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
=20
 /**
--=20
2.39.2

