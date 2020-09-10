Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767C62653BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 23:40:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 343F4877BF;
	Thu, 10 Sep 2020 21:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y5PugbUHjHBk; Thu, 10 Sep 2020 21:40:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89145877AA;
	Thu, 10 Sep 2020 21:40:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 462D71BF584
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 10:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39E71875B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 10:36:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FjrCyC4Nrof6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 10:36:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5E78B875B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 10:36:27 +0000 (UTC)
IronPort-SDR: qAllU33b3QGO18A2zwQ287ozSykn3CHQU8W8WNKZfC1Kq1cxtcGNU4KHf1CPjczSlvQFgQpvtV
 LpnDxaM74OOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="157786444"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="157786444"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 03:36:26 -0700
IronPort-SDR: 4muCETl1mfC0Y80TIvRl5THnxjwyacp35fOIXUoBg9fGWKFgo0gkLUa+xRFsOPKkyTHwXVAzA+
 pdmx60k/F3bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="449551422"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.19.171])
 by orsmga004.jf.intel.com with ESMTP; 10 Sep 2020 03:36:25 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Sep 2020 12:36:19 +0200
Message-Id: <20200910103619.10467-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.18.4
X-Mailman-Approved-At: Thu, 10 Sep 2020 21:40:08 +0000
Subject: [Intel-wired-lan] [PATCH] igbvf: Refactor traces
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
Cc: Karen Sornek <karen.sornek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactoring "PF still resetting" and changing "Failed
 to add vlan id" to "Vlan id is not added"
messages because previous version looked like a bug
- it informed about changes that worked as
designed but might confuse users

Signed-off-by: Karen Sornek <karen.sornek@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/igbvf/netdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 19269f5..9c6fd8d 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -1230,7 +1230,7 @@ static int igbvf_vlan_rx_add_vid(struct net_device *netdev,
 	spin_lock_bh(&hw->mbx_lock);
 
 	if (hw->mac.ops.set_vfta(hw, vid, true)) {
-		dev_err(&adapter->pdev->dev, "Failed to add vlan id %d\n", vid);
+		dev_warn(&adapter->pdev->dev, "Vlan id %d\n is not added", vid);
 		spin_unlock_bh(&hw->mbx_lock);
 		return -EINVAL;
 	}
@@ -1514,7 +1514,7 @@ static void igbvf_reset(struct igbvf_adapter *adapter)
 
 	/* Allow time for pending master requests to run */
 	if (mac->ops.reset_hw(hw))
-		dev_err(&adapter->pdev->dev, "PF still resetting\n");
+		dev_warn(&adapter->pdev->dev, "PF still resetting\n");
 
 	mac->ops.init_hw(hw);
 
-- 
2.18.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
