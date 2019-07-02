Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D57C5D79B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 22:43:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 19F6221080;
	Tue,  2 Jul 2019 20:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EPJcKQ3hPoh7; Tue,  2 Jul 2019 20:43:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 516C1207A8;
	Tue,  2 Jul 2019 20:43:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BFE91BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6993A87AEE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lMWLVV2sSVui for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 20:43:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 995E187A5F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP; 02 Jul 2019 13:43:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="190805451"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2019 13:43:20 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2019 08:22:52 -0400
Message-Id: <20190702122259.79070-2-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190702122259.79070-1-alice.michael@intel.com>
References: <20190702122259.79070-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S7 2/9] i40e: make visible changed vf
 mac on host
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

This patch makes changed vm mac address visible on host via
ip link show command. This problem is fixed by copying last
unicast mac filter to vf->default_lan_addr.addr. Without
this patch if vf mac was not set from host side and
if you run ip link show $pf, on host side you'd always
see a zero mac, not the real vf mac that vf assigned to
itself.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 02b09a8ad54c..21f7ac514d1f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2629,6 +2629,9 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 			} else {
 				vf->num_mac++;
 			}
+			if (is_valid_ether_addr(al->list[i].addr))
+				ether_addr_copy(vf->default_lan_addr.addr,
+						al->list[i].addr);
 		}
 	}
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
