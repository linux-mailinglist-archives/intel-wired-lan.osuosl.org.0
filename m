Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EE018134D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2020 09:38:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33D4086987;
	Wed, 11 Mar 2020 08:38:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sx5k5A1FpJhr; Wed, 11 Mar 2020 08:38:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 648828698F;
	Wed, 11 Mar 2020 08:38:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA1991BF28B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 08:38:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A5F858695E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 08:38:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U1LMPxE2rVuc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2020 08:38:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 382EA868B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2020 08:38:04 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C72BBB1AE;
 Wed, 11 Mar 2020 08:38:01 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: netdev@vger.kernel.org
Date: Wed, 11 Mar 2020 09:37:40 +0100
Message-Id: <20200311083745.17328-3-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200311083745.17328-1-tiwai@suse.de>
References: <20200311083745.17328-1-tiwai@suse.de>
Subject: [Intel-wired-lan] [PATCH 2/7] i40e: Use scnprintf() for avoiding
 potential buffer overflow
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
Cc: intel-wired-lan@lists.osuosl.org, "David S . Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 8c3e753bfb9d..ff431c13f858 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14478,29 +14478,29 @@ static void i40e_print_features(struct i40e_pf *pf)
 
 	i = snprintf(buf, INFO_STRING_LEN, "Features: PF-id[%d]", hw->pf_id);
 #ifdef CONFIG_PCI_IOV
-	i += snprintf(&buf[i], REMAIN(i), " VFs: %d", pf->num_req_vfs);
+	i += scnprintf(&buf[i], REMAIN(i), " VFs: %d", pf->num_req_vfs);
 #endif
-	i += snprintf(&buf[i], REMAIN(i), " VSIs: %d QP: %d",
+	i += scnprintf(&buf[i], REMAIN(i), " VSIs: %d QP: %d",
 		      pf->hw.func_caps.num_vsis,
 		      pf->vsi[pf->lan_vsi]->num_queue_pairs);
 	if (pf->flags & I40E_FLAG_RSS_ENABLED)
-		i += snprintf(&buf[i], REMAIN(i), " RSS");
+		i += scnprintf(&buf[i], REMAIN(i), " RSS");
 	if (pf->flags & I40E_FLAG_FD_ATR_ENABLED)
-		i += snprintf(&buf[i], REMAIN(i), " FD_ATR");
+		i += scnprintf(&buf[i], REMAIN(i), " FD_ATR");
 	if (pf->flags & I40E_FLAG_FD_SB_ENABLED) {
-		i += snprintf(&buf[i], REMAIN(i), " FD_SB");
-		i += snprintf(&buf[i], REMAIN(i), " NTUPLE");
+		i += scnprintf(&buf[i], REMAIN(i), " FD_SB");
+		i += scnprintf(&buf[i], REMAIN(i), " NTUPLE");
 	}
 	if (pf->flags & I40E_FLAG_DCB_CAPABLE)
-		i += snprintf(&buf[i], REMAIN(i), " DCB");
-	i += snprintf(&buf[i], REMAIN(i), " VxLAN");
-	i += snprintf(&buf[i], REMAIN(i), " Geneve");
+		i += scnprintf(&buf[i], REMAIN(i), " DCB");
+	i += scnprintf(&buf[i], REMAIN(i), " VxLAN");
+	i += scnprintf(&buf[i], REMAIN(i), " Geneve");
 	if (pf->flags & I40E_FLAG_PTP)
-		i += snprintf(&buf[i], REMAIN(i), " PTP");
+		i += scnprintf(&buf[i], REMAIN(i), " PTP");
 	if (pf->flags & I40E_FLAG_VEB_MODE_ENABLED)
-		i += snprintf(&buf[i], REMAIN(i), " VEB");
+		i += scnprintf(&buf[i], REMAIN(i), " VEB");
 	else
-		i += snprintf(&buf[i], REMAIN(i), " VEPA");
+		i += scnprintf(&buf[i], REMAIN(i), " VEPA");
 
 	dev_info(&pf->pdev->dev, "%s\n", buf);
 	kfree(buf);
-- 
2.16.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
