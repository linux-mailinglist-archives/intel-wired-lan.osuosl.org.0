Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9723B2DE702
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 16:56:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0198986F87;
	Fri, 18 Dec 2020 15:56:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F+uDp-4MnaKj; Fri, 18 Dec 2020 15:56:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3925D87264;
	Fri, 18 Dec 2020 15:56:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 070F31BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 14:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E56302043E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 14:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0kgCm8hiJt0V for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 14:58:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 4FA2320421
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 14:58:24 +0000 (UTC)
IronPort-SDR: MKqA+Ybsp2FAeF8SPjaCR+SfdlxS1Mg2eOrRI03ORKtlM/soxatSrlde5z41sUV6ypzSp0LDXo
 L2YTzwMO6qfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="155249063"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="155249063"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 06:58:23 -0800
IronPort-SDR: EPde2ObuC3b70XM5iGQhLIAocWdx4+vWEPAJnGtc1Uvbb9FUUD1XMj2Aq1SSGZxeiyJpTyFbx/
 +NIVsueJPcpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="414045487"
Received: from amlin-018-147.igk.intel.com ([10.102.18.147])
 by orsmga001.jf.intel.com with ESMTP; 18 Dec 2020 06:58:22 -0800
From: Eryk Rybak <eryk.roch.rybak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Dec 2020 16:52:55 +0000
Message-Id: <20201218165255.6393-1-eryk.roch.rybak@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 18 Dec 2020 15:56:05 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on
 device is out of the range
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
Cc: Eryk Rybak <eryk.roch.rybak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When attempting to link XDP prog with MTU larger than supported,
user is not informed why XDP linking fails. Adding proper
error message.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com> 
Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 630258e..4fdef00 100644
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
@@ -12944,8 +12945,10 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi,
 	int i;
 
 	/* Don't allow frames that span over multiple buffers */
-	if (frame_size > vsi->rx_buf_len)
+	if (frame_size > vsi->rx_buf_len) {
+		NL_SET_ERR_MSG_MOD(extack, "MTU too large to enable XDP");
 		return -EINVAL;
+	}
 
 	/* When turning XDP on->off/off->on we reset and rebuild the rings. */
 	need_reset = (i40e_enabled_xdp_vsi(vsi) != !!prog);
@@ -13254,7 +13257,7 @@ static int i40e_xdp(struct net_device *dev,
 
 	switch (xdp->command) {
 	case XDP_SETUP_PROG:
-		return i40e_xdp_setup(vsi, xdp->prog);
+		return i40e_xdp_setup(vsi, xdp->prog, xdp->extack);
 	case XDP_SETUP_XSK_POOL:
 		return i40e_xsk_pool_setup(vsi, xdp->xsk.pool,
 					   xdp->xsk.queue_id);

base-commit: d2c2bbad93b818020657a82121a147e9ace1230d
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
