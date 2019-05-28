Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3CE2CE19
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2019 20:00:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 573A084FC0;
	Tue, 28 May 2019 18:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id luO8Md87jXwM; Tue, 28 May 2019 18:00:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E3E08527D;
	Tue, 28 May 2019 18:00:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5BC581BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 554E6214F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TuACIR+LUmqo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 17:59:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 2260E23086
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:59:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 10:59:56 -0700
X-ExtLoop1: 1
Received: from alicemic-2.jf.intel.com ([10.166.16.121])
 by orsmga008.jf.intel.com with ESMTP; 28 May 2019 10:59:56 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.micheal@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2019 10:59:16 -0700
Message-Id: <20190528175921.30534-2-alice.michael@intel.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190528175921.30534-1-alice.michael@intel.com>
References: <20190528175921.30534-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S6 2/7] i40e: Fix for missing "link
 modes" info in ethtool
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
Cc: Martyna Szapar <martyna.szapar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Martyna Szapar <martyna.szapar@intel.com>

Fix for missing "Supported link modes" and "Advertised link modes"
info in ethtool after changed speed on X722 devices with BASE-T PHY
with FW API version >= 1.7.
The same FW API version on X710 and X722 does not mean the same
feature set so the change was needed as mac type of the device
should also be checked instead of FW API version only.

Signed-off-by: Martyna Szapar <martyna.szapar@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 641b500ad919..906cf68d3453 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1861,8 +1861,7 @@ i40e_status i40e_aq_get_link_info(struct i40e_hw *hw,
 	     hw->aq.fw_min_ver < 40)) && hw_link_info->phy_type == 0xE)
 		hw_link_info->phy_type = I40E_PHY_TYPE_10GBASE_SFPP_CU;
 
-	if (hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
-	    hw->aq.api_min_ver >= 7) {
+	if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE) {
 		__le32 tmp;
 
 		memcpy(&tmp, resp->link_type, sizeof(tmp));
-- 
2.19.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
