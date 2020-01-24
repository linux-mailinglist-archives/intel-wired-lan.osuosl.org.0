Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AD71486CD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jan 2020 15:19:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61B778817D;
	Fri, 24 Jan 2020 14:19:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QTmqPuatusvM; Fri, 24 Jan 2020 14:19:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93D6C8805D;
	Fri, 24 Jan 2020 14:19:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E38A61BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E00A684F12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VW+3NSx9jOxs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jan 2020 14:19:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 308DF85381
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2020 14:19:07 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37A19222D9;
 Fri, 24 Jan 2020 14:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875547;
 bh=1uzgcsSaJZLu+0KgecdYIA0XH7hSo+0oomAqGGk7dBg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jUtB5O9n/xPvquu3MCRL4357fy8UvcneUz5fig3E8d7BvmNVgjwWDZ9LQyyyX7Wy7
 0L29jnnRzXQPSF0R0Yy2kyx3YiUhs6WyResImVr+oz8fR2G7QRFLZLERazDexeh9HO
 y/xOwpVqH//GBe/EI95kcjqZNKkfpxmALLKNqoZ4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri, 24 Jan 2020 09:17:12 -0500
Message-Id: <20200124141817.28793-42-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 042/107] iavf: remove current
 MAC address filter on VF reset
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Stefan Assmann <sassmann@kpanic.de>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Stefan Assmann <sassmann@kpanic.de>

[ Upstream commit 9e05229190380f6b8f702da39aaeb97a0fc80dc3 ]

Currently MAC filters are not altered during a VF reset event. This may
lead to a stale filter when an administratively set MAC is forced by the
PF.

For an administratively set MAC the PF driver deletes the VFs filters,
overwrites the VFs MAC address and triggers a VF reset. However
the VF driver itself is not aware of the filter removal, which is what
the VF reset is for.
The VF reset queues all filters present in the VF driver to be re-added
to the PF filter list (including the filter for the now stale VF MAC
address) and triggers a VIRTCHNL_OP_GET_VF_RESOURCES event, which
provides the new MAC address to the VF.

When this happens i40e will complain and reject the stale MAC filter,
at least in the untrusted VF case.
i40e 0000:08:00.0: Setting MAC 3c:fa:fa:fa:fa:01 on VF 0
iavf 0000:08:02.0: Reset warning received from the PF
iavf 0000:08:02.0: Scheduling reset task
i40e 0000:08:00.0: Bring down and up the VF interface to make this change effective.
i40e 0000:08:00.0: VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation
i40e 0000:08:00.0: VF 0 failed opcode 10, retval: -1
iavf 0000:08:02.0: Failed to add MAC filter, error IAVF_ERR_NVM

To avoid re-adding the stale MAC filter it needs to be removed from the
VF driver's filter list before queuing the existing filters. Then during
the VIRTCHNL_OP_GET_VF_RESOURCES event the correct filter needs to be
added again, at which point the MAC address has been updated.

As a bonus this change makes bringing the VF down and up again
superfluous for the administratively set MAC case.

Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf.h          |  2 ++
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 17 +++++++++++++----
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c |  3 +++
 3 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 29de3ae96ef22..bd1b1ed323f4f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -415,4 +415,6 @@ void iavf_enable_channels(struct iavf_adapter *adapter);
 void iavf_disable_channels(struct iavf_adapter *adapter);
 void iavf_add_cloud_filter(struct iavf_adapter *adapter);
 void iavf_del_cloud_filter(struct iavf_adapter *adapter);
+struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
+					const u8 *macaddr);
 #endif /* _IAVF_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 821987da5698a..8e16be960e96b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -743,9 +743,8 @@ iavf_mac_filter *iavf_find_filter(struct iavf_adapter *adapter,
  *
  * Returns ptr to the filter object or NULL when no memory available.
  **/
-static struct
-iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
-				 const u8 *macaddr)
+struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
+					const u8 *macaddr)
 {
 	struct iavf_mac_filter *f;
 
@@ -2065,9 +2064,9 @@ static void iavf_reset_task(struct work_struct *work)
 	struct virtchnl_vf_resource *vfres = adapter->vf_res;
 	struct net_device *netdev = adapter->netdev;
 	struct iavf_hw *hw = &adapter->hw;
+	struct iavf_mac_filter *f, *ftmp;
 	struct iavf_vlan_filter *vlf;
 	struct iavf_cloud_filter *cf;
-	struct iavf_mac_filter *f;
 	u32 reg_val;
 	int i = 0, err;
 	bool running;
@@ -2181,6 +2180,16 @@ continue_reset:
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 
+	/* Delete filter for the current MAC address, it could have
+	 * been changed by the PF via administratively set MAC.
+	 * Will be re-added via VIRTCHNL_OP_GET_VF_RESOURCES.
+	 */
+	list_for_each_entry_safe(f, ftmp, &adapter->mac_filter_list, list) {
+		if (ether_addr_equal(f->macaddr, adapter->hw.mac.addr)) {
+			list_del(&f->list);
+			kfree(f);
+		}
+	}
 	/* re-add all MAC filters */
 	list_for_each_entry(f, &adapter->mac_filter_list, list) {
 		f->add = true;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index c46770eba320e..1ab9cb339acb4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1359,6 +1359,9 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			ether_addr_copy(netdev->perm_addr,
 					adapter->hw.mac.addr);
 		}
+		spin_lock_bh(&adapter->mac_vlan_list_lock);
+		iavf_add_filter(adapter, adapter->hw.mac.addr);
+		spin_unlock_bh(&adapter->mac_vlan_list_lock);
 		iavf_process_config(adapter);
 		}
 		break;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
