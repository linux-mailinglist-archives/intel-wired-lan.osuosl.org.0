Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159E22F62F6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 15:22:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB29C8739A;
	Thu, 14 Jan 2021 14:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZpOhOpxmCU7x; Thu, 14 Jan 2021 14:22:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B8478739F;
	Thu, 14 Jan 2021 14:22:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 196A91BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1476E86BA2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jwx4SWqDZVs1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 14:22:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B91786B3C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:22:37 +0000 (UTC)
IronPort-SDR: pRtpkVJuiLlzOq0j6ftkoqtzlpAxbuDAZWdKr2UyMNftUSdGqQwnrOjBRmdArSFkYMsoi5wg1i
 wZ2xguzluHUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="158148048"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="158148048"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 06:22:36 -0800
IronPort-SDR: UGja4mLg398ojEOLuXyS5/EqYVtyRGfCs8LfSX+0vjQK+JK9rLXKoRdnTjvLrtdiOExerhVawt
 UDF7tP3RNsBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="398060702"
Received: from amlin-018-147.igk.intel.com ([10.102.18.147])
 by fmsmga004.fm.intel.com with ESMTP; 14 Jan 2021 06:22:35 -0800
From: Eryk Rybak <eryk.roch.rybak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Jan 2021 16:17:06 +0000
Message-Id: <20210114161706.9224-1-eryk.roch.rybak@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2] i40e: Log error for oversized
 MTU on device
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
Cc: Eryk Rybak <eryk.roch.rybak@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When attempting to link XDP prog with MTU larger than supported,
user is not informed why XDP linking fails. Adding proper
error message: "MTU too large to enable XDP".
Due to the lack of support for non-static variables in netlinks
extended ACK feature, additional information has been added to dmesg
to better inform about invalid MTU setting.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
---
v2: add dmesg trace, change commit message
 drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 2a7e116..0ea04cb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12933,9 +12933,10 @@ static netdev_features_t i40e_features_check(struct sk_buff *skb,
  * i40e_xdp_setup - add/remove an XDP program
  * @vsi: VSI to changed
  * @prog: XDP program
+ * @extack: netlink extended ack
  **/
-static int i40e_xdp_setup(struct i40e_vsi *vsi,
-			  struct bpf_prog *prog)
+static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
+			  struct netlink_ext_ack *extack)
 {
 	int frame_size = vsi->netdev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
 	struct i40e_pf *pf = vsi->back;
@@ -12944,8 +12945,12 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi,
 	int i;
 
 	/* Don't allow frames that span over multiple buffers */
-	if (frame_size > vsi->rx_buf_len)
+	if (frame_size > vsi->rx_buf_len) {
+		NL_SET_ERR_MSG_MOD(extack, "MTU too large to enable XDP");
+		dev_info(&pf->pdev->dev,
+			 "MTU of %u bytes is too large to enable XDP (maximum: %u bytes)\n", vsi->netdev->mtu, vsi->rx_buf_len);
 		return -EINVAL;
+	}
 
 	/* When turning XDP on->off/off->on we reset and rebuild the rings. */
 	need_reset = (i40e_enabled_xdp_vsi(vsi) != !!prog);
@@ -13254,7 +13259,7 @@ static int i40e_xdp(struct net_device *dev,
 
 	switch (xdp->command) {
 	case XDP_SETUP_PROG:
-		return i40e_xdp_setup(vsi, xdp->prog);
+		return i40e_xdp_setup(vsi, xdp->prog, xdp->extack);
 	case XDP_SETUP_XSK_POOL:
 		return i40e_xsk_pool_setup(vsi, xdp->xsk.pool,
 					   xdp->xsk.queue_id);

base-commit: 3fac2a7d07287daca672479f02d4849c27bc7806
-- 
2.20.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
