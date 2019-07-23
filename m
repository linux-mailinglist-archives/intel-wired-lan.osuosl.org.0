Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B839871E21
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 19:56:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D8B484D3B;
	Tue, 23 Jul 2019 17:56:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m2YwaqDRvu30; Tue, 23 Jul 2019 17:56:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E21481E24;
	Tue, 23 Jul 2019 17:56:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA69A1BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B77E181FAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SeZZEbg0CLv0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 17:56:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7D31581F20
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 10:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="180816351"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga002.jf.intel.com with ESMTP; 23 Jul 2019 10:56:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 02:27:58 -0700
Message-Id: <20190723092759.3614-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
References: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S24 11/12] ice: Don't clear auto_fec bit
 in ice_cfg_phy_fec()
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

From: Chinh T Cao <chinh.t.cao@intel.com>

The driver should never clear the auto_fec_enable bit.

Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 15648d4a8bab..4b43e6de847b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2181,27 +2181,24 @@ ice_cfg_phy_fec(struct ice_aqc_set_phy_cfg_data *cfg, enum ice_fec_mode fec)
 {
 	switch (fec) {
 	case ICE_FEC_BASER:
-		/* Clear auto FEC and RS bits, and AND BASE-R ability
+		/* Clear RS bits, and AND BASE-R ability
 		 * bits and OR request bits.
 		 */
-		cfg->caps &= ~ICE_AQC_PHY_EN_AUTO_FEC;
 		cfg->link_fec_opt &= ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN |
 				     ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN;
 		cfg->link_fec_opt |= ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ |
 				     ICE_AQC_PHY_FEC_25G_KR_REQ;
 		break;
 	case ICE_FEC_RS:
-		/* Clear auto FEC and BASE-R bits, and AND RS ability
+		/* Clear BASE-R bits, and AND RS ability
 		 * bits and OR request bits.
 		 */
-		cfg->caps &= ~ICE_AQC_PHY_EN_AUTO_FEC;
 		cfg->link_fec_opt &= ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN;
 		cfg->link_fec_opt |= ICE_AQC_PHY_FEC_25G_RS_528_REQ |
 				     ICE_AQC_PHY_FEC_25G_RS_544_REQ;
 		break;
 	case ICE_FEC_NONE:
-		/* Clear auto FEC and all FEC option bits. */
-		cfg->caps &= ~ICE_AQC_PHY_EN_AUTO_FEC;
+		/* Clear all FEC option bits. */
 		cfg->link_fec_opt &= ~ICE_AQC_PHY_FEC_MASK;
 		break;
 	case ICE_FEC_AUTO:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
