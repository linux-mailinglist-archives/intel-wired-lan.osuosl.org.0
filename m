Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7C9122902
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2019 11:37:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A7E0620458;
	Tue, 17 Dec 2019 10:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mpIFl0qSENEE; Tue, 17 Dec 2019 10:37:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4BF26200E5;
	Tue, 17 Dec 2019 10:37:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 349CD1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 10:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 271FE87877
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 10:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UDFqarr8kFiJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2019 10:37:04 +0000 (UTC)
X-Greylist: delayed 00:05:55 by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D749D87850
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2019 10:37:03 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-7QV9dpS_PDGVEsxhTRpn8A-1; Tue, 17 Dec 2019 05:29:55 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B75208017DF;
 Tue, 17 Dec 2019 10:29:53 +0000 (UTC)
Received: from p50.redhat.com (unknown [10.36.118.71])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1C41D51;
 Tue, 17 Dec 2019 10:29:51 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 17 Dec 2019 11:29:23 +0100
Message-Id: <20191217102923.3274961-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: 7QV9dpS_PDGVEsxhTRpn8A-1
X-Mimecast-Spam-Score: 0
Subject: [Intel-wired-lan] [PATCH] iavf: remove current MAC address filter
 on VF reset
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
Cc: netdev@vger.kernel.org, davem@davemloft.net, sassmann@kpanic.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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
---
 drivers/net/ethernet/intel/iavf/iavf.h          |  2 ++
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 17 +++++++++++++----
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c |  3 +++
 3 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 29de3ae96ef2..bd1b1ed323f4 100644
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
index 0a8824871618..62fe56ddcb6e 100644
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
@@ -2181,6 +2180,16 @@ static void iavf_reset_task(struct work_struct *work)
 
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
index c46770eba320..1ab9cb339acb 100644
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
2.23.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
