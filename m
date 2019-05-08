Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A831BBB8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2019 19:20:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 638328778F;
	Mon, 13 May 2019 17:20:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l9to0pXCuGTe; Mon, 13 May 2019 17:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A48728777B;
	Mon, 13 May 2019 17:20:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 428A11BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2019 23:22:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E70D865BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2019 23:22:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V0LSyz2KjZqE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2019 23:22:02 +0000 (UTC)
X-Greylist: delayed 00:07:05 by SQLgrey-1.7.6
Received: from alln-iport-2.cisco.com (alln-iport-2.cisco.com [173.37.142.89])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F2879865AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2019 23:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1960; q=dns/txt; s=iport;
 t=1557357722; x=1558567322;
 h=from:to:cc:subject:date:message-id;
 bh=xFoLKN7z00P1NlIEUkNeHdy5RdIl62U+exCN+0sxos0=;
 b=M/wNISpTzgwVltSy2r4Fy+mLJDOTGft4AVKA9Zo7iDm35+6rai6gYT8l
 lhn4jIW9dNRl677f3TElGaEaK7uRAOe8NXu1Z/6V1M+Qywke2AkQbYA4d
 2Aho39+b30fVgW5NmU2hyRufXd5Nj8xb6rEjEniWwn/vLL5n+EzbA6A8v o=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AnAACFYtNc/5pdJa1kHAEBAQQBAQc?=
 =?us-ascii?q?EAQGBUQcBAQsBghCBOgEyKIwtpVSBewkJL4Q/ggojNAkOAQMBAQQBAQIBBG0?=
 =?us-ascii?q?ohXhSgT4TgyKCC655M4hmgUYUgR4BhneEVheBQD+EYYomBJJDlH8JgguSTwI?=
 =?us-ascii?q?ZlVYBoUKBTziBVjMaCBsVgyeQUT8DMI14K4IlAQE?=
X-IronPort-AV: E=Sophos;i="5.60,447,1549929600"; d="scan'208";a="271168730"
Received: from rcdn-core-3.cisco.com ([173.37.93.154])
 by alln-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 08 May 2019 23:14:30 +0000
Received: from sjc-ads-4850.cisco.com (sjc-ads-4850.cisco.com [10.28.39.114])
 by rcdn-core-3.cisco.com (8.15.2/8.15.2) with ESMTP id
 x48NEUx3009602; Wed, 8 May 2019 23:14:30 GMT
From: Nikunj Kela <nkela@cisco.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Wed,  8 May 2019 23:14:29 +0000
Message-Id: <1557357269-9498-1-git-send-email-nkela@cisco.com>
X-Mailer: git-send-email 2.5.0
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.28.39.114, sjc-ads-4850.cisco.com
X-Outbound-Node: rcdn-core-3.cisco.com
X-Mailman-Approved-At: Mon, 13 May 2019 17:20:32 +0000
Subject: [Intel-wired-lan] [PATCH] igb: add parameter to ignore nvm checksum
 validation
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 xe-linux-external@cisco.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some of the broken NICs don't have EEPROM programmed correctly. It results
in probe to fail. This change adds a module parameter that can be used to
ignore nvm checksum validation.

Cc: xe-linux-external@cisco.com
Signed-off-by: Nikunj Kela <nkela@cisco.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 28 ++++++++++++++++++++++------
 1 file changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 39f33af..0ae1324 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -247,6 +247,11 @@ static int debug = -1;
 module_param(debug, int, 0);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
+static bool ignore_nvm_checksum;
+module_param(ignore_nvm_checksum, bool, 0);
+MODULE_PARM_DESC(ignore_nvm_checksum,
+		"Set to ignore nvm checksum validation (defaults N)");
+
 struct igb_reg_info {
 	u32 ofs;
 	char *name;
@@ -3191,18 +3196,29 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	case e1000_i211:
 		if (igb_get_flash_presence_i210(hw)) {
 			if (hw->nvm.ops.validate(hw) < 0) {
-				dev_err(&pdev->dev,
+				if (ignore_nvm_checksum) {
+					dev_warn(&pdev->dev,
 					"The NVM Checksum Is Not Valid\n");
-				err = -EIO;
-				goto err_eeprom;
+				} else {
+					dev_err(&pdev->dev,
+					"The NVM Checksum Is Not Valid\n");
+					err = -EIO;
+					goto err_eeprom;
+				}
 			}
 		}
 		break;
 	default:
 		if (hw->nvm.ops.validate(hw) < 0) {
-			dev_err(&pdev->dev, "The NVM Checksum Is Not Valid\n");
-			err = -EIO;
-			goto err_eeprom;
+			if (ignore_nvm_checksum) {
+				dev_warn(&pdev->dev,
+					"The NVM Checksum Is Not Valid\n");
+			} else {
+				dev_err(&pdev->dev,
+					"The NVM Checksum Is Not Valid\n");
+				err = -EIO;
+				goto err_eeprom;
+			}
 		}
 		break;
 	}
-- 
2.5.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
