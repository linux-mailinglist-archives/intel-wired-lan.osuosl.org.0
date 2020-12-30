Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B5B2E7A05
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Dec 2020 15:43:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5631985FA8;
	Wed, 30 Dec 2020 14:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rrYKkSA4qF8o; Wed, 30 Dec 2020 14:43:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 309A0861B2;
	Wed, 30 Dec 2020 14:43:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 652E61BF31F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Dec 2020 14:43:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 55ECF20482
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Dec 2020 14:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EworBggYyF1C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Dec 2020 14:43:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id C79AB203D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Dec 2020 14:42:59 +0000 (UTC)
IronPort-SDR: Sm4VoI2J15CeBr0U1OYqdwogGqBDMHUidn+D8S19gXuwquC3gpCYQRvYZwNBF3Ze2nz2kvnehy
 BHzX9r7EN8gA==
X-IronPort-AV: E=McAfee;i="6000,8403,9849"; a="240689121"
X-IronPort-AV: E=Sophos;i="5.78,461,1599548400"; d="scan'208";a="240689121"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 06:42:58 -0800
IronPort-SDR: FtDEo8RCROTGY8TGmqIpwJeaeYrluVQ9e/TGUJ8dQhmyfmLp/h3I/Cmcq2BYg4cfSCqfP1cOnt
 WVnwLidcUIpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,461,1599548400"; d="scan'208";a="419564410"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga001.jf.intel.com with ESMTP; 30 Dec 2020 06:42:57 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Dec 2020 14:42:55 +0000
Message-Id: <20201230144255.2687-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix setting PF MAC filters
 when changing MAC address
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When changing PFs MAC address the old MAC filter was not removed
due to incorrect order of copying MAC from netdev and deleting
the old MAC filter.
Changed how the old MAC filter is removed to remove the proper
filter.

Fixes: 158daed16efb("i40e: fix mac filter delete when setting mac address")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 630258e..de5e0fb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1561,6 +1561,7 @@ int i40e_del_mac_filter(struct i40e_vsi *vsi, const u8 *macaddr)
 static int i40e_set_mac(struct net_device *netdev, void *p)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct sockaddr addr_tmp = {0};
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
@@ -1591,8 +1592,11 @@ static int i40e_set_mac(struct net_device *netdev, void *p)
 	 * - Copy new address
 	 * - Add new address to MAC filter
 	 */
+
+	ether_addr_copy(addr_tmp.sa_data, netdev->dev_addr);
+
 	spin_lock_bh(&vsi->mac_filter_hash_lock);
-	i40e_del_mac_filter(vsi, netdev->dev_addr);
+	i40e_del_mac_filter(vsi, addr_tmp.sa_data);
 	ether_addr_copy(netdev->dev_addr, addr->sa_data);
 	i40e_add_mac_filter(vsi, netdev->dev_addr);
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
-- 
2.17.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
