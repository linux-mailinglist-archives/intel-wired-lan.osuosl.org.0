Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD1719DDC3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Apr 2020 20:18:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED50D86DEB;
	Fri,  3 Apr 2020 18:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X4uSwzmvBoap; Fri,  3 Apr 2020 18:18:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C26E1869BA;
	Fri,  3 Apr 2020 18:18:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C02591BF397
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 18:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B998020390
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 18:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gHrsd3WPYwkn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2020 18:18:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id F182926876
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 18:18:33 +0000 (UTC)
IronPort-SDR: w22YLvhA3hicHDPYKxl0CkI8hrDmXrwlpNVKxTwE+XB1nlYbJ1GHjGFhT4TeJy5Q3LMC16fKTO
 OfrwfqsgWGOA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 11:18:33 -0700
IronPort-SDR: p7UBYU+/LAgg8bQ/k4ENZs2tHEYgshkHed5TAgjuSlkzJ5LI2vHe1dMYabYbWLh0l2oe3UDK6p
 LtfPnfABDE9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,340,1580803200"; d="scan'208";a="253445201"
Received: from unknown (HELO localhost.localdomain) ([10.254.70.217])
 by orsmga006.jf.intel.com with ESMTP; 03 Apr 2020 11:18:32 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  3 Apr 2020 11:17:42 -0700
Message-Id: <20200403181743.23447-4-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200403181743.23447-1-andre.guedes@intel.com>
References: <20200403181743.23447-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 3/4] igc: Return -EOPNOTSUPP when VLAN
 mask doesn't match
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

The I225 controller supports rx queue assignment based on VLAN priority
only. Other Tag Control Information (TCI) are valid, but not supported
by the driver. So this patch changes the returning code from igc_add_
ethtool_nfc_entry() to -EOPNOTSUPP in order to provide more meaningful
information on why the function failed.

It also adds a debug messages to give the user a hint about what went
wrong with the NFC setup.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index dfc21908347d..036a2244b76c 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1446,7 +1446,8 @@ static int igc_add_ethtool_nfc_entry(struct igc_adapter *adapter,
 
 	if ((fsp->flow_type & FLOW_EXT) && fsp->m_ext.vlan_tci) {
 		if (fsp->m_ext.vlan_tci != htons(VLAN_PRIO_MASK)) {
-			err = -EINVAL;
+			netdev_dbg(netdev, "VLAN mask not supported");
+			err = -EOPNOTSUPP;
 			goto err_out;
 		}
 		input->filter.vlan_tci = fsp->h_ext.vlan_tci;
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
