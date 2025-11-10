Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4BFC4880D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 19:15:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2241B60AB3;
	Mon, 10 Nov 2025 18:15:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OaLFe_vULHsd; Mon, 10 Nov 2025 18:15:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5972060AAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762798524;
	bh=9onwNZKP627J49R+RSmKYU34PAG0kw9re5DR4snms1A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rYgkeUAIfLCd1a8tohel0fQXzNf5fUmfPxnClpnscTZwTC8wQFxz0sthrM2qt+wIB
	 FL2yJrx48swtHy+YVVjlFaiWnNMA27RBCXbjkmNJkF2o1GeMtPqCMnLmWoHdjitVT2
	 vSqz/ENV/RZ01yE1l8g3SDshQIrVMsBDaCWaR0+ggHbtPQO3QxrKCIEW97A0ni7FAt
	 oDzUqLpc1RaJfuV1575WkAz+VaQBFxYjLlzs81htRddFZ0FCtnKkSMHTGMxbOU7wdM
	 2ag6DFWP+Fy/F9fxcQD9+23hxqXh3aFdlc55EfrJ9BTf1uE85tzo+wYyPwkyMa+af/
	 J3FespGl/OWcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5972060AAF;
	Mon, 10 Nov 2025 18:15:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB09C1CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD19960AA8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wq2ti50jrNbt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 18:15:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C055260A6E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C055260A6E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C055260A6E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:21 +0000 (UTC)
X-CSE-ConnectionGUID: KmfWCiQZSqSKcA5UXOjxjA==
X-CSE-MsgGUID: HcNyedxyQhCGCNj7fJihwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68497108"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="68497108"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:15:21 -0800
X-CSE-ConnectionGUID: iVmMviOZQdG0ntsmm+Teig==
X-CSE-MsgGUID: 2Id0NZEvQb63oOyn1t6tQA==
X-ExtLoop1: 1
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa003.fm.intel.com with ESMTP; 10 Nov 2025 10:15:20 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 iamvivekkumar@google.com
Date: Mon, 10 Nov 2025 10:08:21 -0800
Message-Id: <20251110180823.18008-3-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20251110180823.18008-1-emil.s.tantilov@intel.com>
References: <20251110180823.18008-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762798522; x=1794334522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=ccDgPIXtDZAGe3wemz67Es/VeqXOMYWAoP2Of/rct2I=;
 b=V3DwSQ/2qy+0zN6Eq9BObl6kaY3Q1EGswAGM+b3CAdRhY4Ydfsk66A+y
 hzq8uXWPwuT5IBFz5AzVhXMOKxuu+ndbViQGb8jaew+B2lCV+xbCxNd35
 cO5ydnXdaABZXizkOSChxKBOHYPAVgs+O5s1CPa7k2A7IYAdds5obdHrr
 qGWQ9dl0V0a9rCvIjoeM/uvPpSpJRuvhrPZ8DeqwtYis8WseuNuRbQiNa
 w4HRa9LwXa8EMqKEw6G41TpE1bAe9IqbumWfq/uD/rnBEmk0qkiZpo9Tm
 bmB/uUHa2G5cE9Fbnfr8zu4yQ9DJsSWzA7nm4jXwuwug2WM6Zop0hT6fs
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V3DwSQ/2
Subject: [Intel-wired-lan] [PATCH iwl-net 2/4] idpf: detach and close
 netdevs while handling a reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Protect the reset path from callbacks by setting the netdevs to detached
state and close any netdevs in UP state until the reset handling has
completed. During a reset, the driver will de-allocate resources for the
vport, and there is no guarantee that those will recover, which is why the
existing vport_ctrl_lock does not provide sufficient protection.

idpf_detach_and_close() is called right before reset handling. If the
reset handling succeeds, the netdevs state is recovered via call to
idpf_attach_and_open(). If the reset handling fails the netdevs remain
down. The detach/down calls are protected with RTNL lock to avoid racing
with callbacks. On the recovery side the attach can be done without
holding the RTNL lock as there are no callbacks expected at that point,
due to detach/close always being done first in that flow.

The previous logic restoring the netdevs state based on the
IDPF_VPORT_UP_REQUESTED flag in the init task is not needed anymore, hence
the removal of idpf_set_vport_state(). The IDPF_VPORT_UP_REQUESTED is
still being used to restore the state of the netdevs following the reset,
but has no use outside of the reset handling flow.

idpf_init_hard_reset() is converted to void, since it was used as such and
there is no error handling being done based on its return value.

Before this change, invoking hard and soft resets simultaneously will
cause the driver to lose the vport state:
ip -br a
<inf>	UP
echo 1 > /sys/class/net/ens801f0/device/reset& \
ethtool -L ens801f0 combined 8
ip -br a
<inf>	DOWN
ip link set <inf> up
ip -br a
<inf>	DOWN

Also in case of a failure in the reset path, the netdev is left
exposed to external callbacks, while vport resources are not
initialized, leading to a crash on subsequent ifup/down:
[408471.398966] idpf 0000:83:00.0: HW reset detected
[408471.411744] idpf 0000:83:00.0: Device HW Reset initiated
[408472.277901] idpf 0000:83:00.0: The driver was unable to contact the device's firmware. Check that the FW is running. Driver state= 0x2
[408508.125551] BUG: kernel NULL pointer dereference, address: 0000000000000078
[408508.126112] #PF: supervisor read access in kernel mode
[408508.126687] #PF: error_code(0x0000) - not-present page
[408508.127256] PGD 2aae2f067 P4D 0
[408508.127824] Oops: Oops: 0000 [#1] SMP NOPTI
...
[408508.130871] RIP: 0010:idpf_stop+0x39/0x70 [idpf]
...
[408508.139193] Call Trace:
[408508.139637]  <TASK>
[408508.140077]  __dev_close_many+0xbb/0x260
[408508.140533]  __dev_change_flags+0x1cf/0x280
[408508.140987]  netif_change_flags+0x26/0x70
[408508.141434]  dev_change_flags+0x3d/0xb0
[408508.141878]  devinet_ioctl+0x460/0x890
[408508.142321]  inet_ioctl+0x18e/0x1d0
[408508.142762]  ? _copy_to_user+0x22/0x70
[408508.143207]  sock_do_ioctl+0x3d/0xe0
[408508.143652]  sock_ioctl+0x10e/0x330
[408508.144091]  ? find_held_lock+0x2b/0x80
[408508.144537]  __x64_sys_ioctl+0x96/0xe0
[408508.144979]  do_syscall_64+0x79/0x3d0
[408508.145415]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[408508.145860] RIP: 0033:0x7f3e0bb4caff

Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 120 ++++++++++++---------
 1 file changed, 71 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 2a53f3d504d2..8c7c3e6bccc7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -752,6 +752,65 @@ static int idpf_init_mac_addr(struct idpf_vport *vport,
 	return 0;
 }
 
+static void idpf_detach_and_close(struct idpf_adapter *adapter)
+{
+	int max_vports = adapter->max_vports;
+
+	for (int i = 0; i < max_vports; i++) {
+		struct net_device *netdev = adapter->netdevs[i];
+
+		/* If the interface is in detached state, that means the
+		 * previous reset was not handled successfully for this
+		 * vport.
+		 */
+		if (!netif_device_present(netdev))
+			continue;
+
+		/* Hold RTNL to protect racing with callbacks */
+		rtnl_lock();
+		netif_device_detach(netdev);
+		if (netif_running(netdev)) {
+			set_bit(IDPF_VPORT_UP_REQUESTED,
+				adapter->vport_config[i]->flags);
+			dev_close(netdev);
+		}
+		rtnl_unlock();
+	}
+}
+
+static void idpf_attach_and_open(struct idpf_adapter *adapter)
+{
+	int max_vports = adapter->max_vports;
+
+	for (int i = 0; i < max_vports; i++) {
+		struct net_device *netdev = adapter->netdevs[i];
+		struct idpf_vport_config *vport_config;
+		struct idpf_vport *vport;
+
+		/* In case of a critical error in the init task, the vport
+		 * will be freed. Only continue to restore the netdevs
+		 * if vport is not NULL.
+		 */
+		vport = idpf_netdev_to_vport(netdev);
+		if (!vport)
+			continue;
+
+		/* No need for RTNL on attach as this function is called
+		 * following detach and dev_close(). We do take RTNL for
+		 * dev_open() below as it can race with external callbacks
+		 * following the call to netif_device_attach().
+		 */
+		netif_device_attach(netdev);
+		vport_config = adapter->vport_config[vport->idx];
+		if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED,
+				       vport_config->flags)) {
+			rtnl_lock();
+			dev_open(netdev, NULL);
+			rtnl_unlock();
+		}
+	}
+}
+
 /**
  * idpf_cfg_netdev - Allocate, configure and register a netdev
  * @vport: main vport structure
@@ -1064,10 +1123,11 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 	idpf_idc_deinit_vport_aux_device(vport->vdev_info);
 
 	idpf_deinit_mac_addr(vport);
-	idpf_vport_stop(vport, true);
 
-	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
+	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags)) {
+		idpf_vport_stop(vport, true);
 		idpf_decfg_netdev(vport);
+	}
 	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags)) {
 		idpf_del_all_mac_filters(vport);
 		idpf_del_all_flow_steer_filters(vport);
@@ -1569,7 +1629,6 @@ void idpf_init_task(struct work_struct *work)
 	struct idpf_vport_config *vport_config;
 	struct idpf_vport_max_q max_q;
 	struct idpf_adapter *adapter;
-	struct idpf_netdev_priv *np;
 	struct idpf_vport *vport;
 	u16 num_default_vports;
 	struct pci_dev *pdev;
@@ -1626,12 +1685,6 @@ void idpf_init_task(struct work_struct *work)
 	if (idpf_cfg_netdev(vport))
 		goto unwind_vports;
 
-	/* Once state is put into DOWN, driver is ready for dev_open */
-	np = netdev_priv(vport->netdev);
-	np->state = __IDPF_VPORT_DOWN;
-	if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED, vport_config->flags))
-		idpf_vport_open(vport, true);
-
 	/* Spawn and return 'idpf_init_task' work queue until all the
 	 * default vports are created
 	 */
@@ -1807,27 +1860,6 @@ static int idpf_check_reset_complete(struct idpf_hw *hw,
 	return -EBUSY;
 }
 
-/**
- * idpf_set_vport_state - Set the vport state to be after the reset
- * @adapter: Driver specific private structure
- */
-static void idpf_set_vport_state(struct idpf_adapter *adapter)
-{
-	u16 i;
-
-	for (i = 0; i < adapter->max_vports; i++) {
-		struct idpf_netdev_priv *np;
-
-		if (!adapter->netdevs[i])
-			continue;
-
-		np = netdev_priv(adapter->netdevs[i]);
-		if (np->state == __IDPF_VPORT_UP)
-			set_bit(IDPF_VPORT_UP_REQUESTED,
-				adapter->vport_config[i]->flags);
-	}
-}
-
 /**
  * idpf_init_hard_reset - Initiate a hardware reset
  * @adapter: Driver specific private structure
@@ -1836,28 +1868,17 @@ static void idpf_set_vport_state(struct idpf_adapter *adapter)
  * reallocate. Also reinitialize the mailbox. Return 0 on success,
  * negative on failure.
  */
-static int idpf_init_hard_reset(struct idpf_adapter *adapter)
+static void idpf_init_hard_reset(struct idpf_adapter *adapter)
 {
 	struct idpf_reg_ops *reg_ops = &adapter->dev_ops.reg_ops;
 	struct device *dev = &adapter->pdev->dev;
-	struct net_device *netdev;
 	int err;
-	u16 i;
 
+	idpf_detach_and_close(adapter);
 	mutex_lock(&adapter->vport_ctrl_lock);
 
 	dev_info(dev, "Device HW Reset initiated\n");
 
-	/* Avoid TX hangs on reset */
-	for (i = 0; i < adapter->max_vports; i++) {
-		netdev = adapter->netdevs[i];
-		if (!netdev)
-			continue;
-
-		netif_carrier_off(netdev);
-		netif_tx_disable(netdev);
-	}
-
 	/* Prepare for reset */
 	if (test_and_clear_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
 		reg_ops->trigger_reset(adapter, IDPF_HR_DRV_LOAD);
@@ -1866,7 +1887,6 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 
 		idpf_idc_issue_reset_event(adapter->cdev_info);
 
-		idpf_set_vport_state(adapter);
 		idpf_vc_core_deinit(adapter);
 		if (!is_reset)
 			reg_ops->trigger_reset(adapter, IDPF_HR_FUNC_RESET);
@@ -1913,11 +1933,13 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 unlock_mutex:
 	mutex_unlock(&adapter->vport_ctrl_lock);
 
-	/* Wait until all vports are created to init RDMA CORE AUX */
-	if (!err)
-		err = idpf_idc_init(adapter);
-
-	return err;
+	/* Restore netdevs state and initialize RDMA CORE AUX device, provided
+	 * vport resources are allocated successfully.
+	 */
+	if (!err) {
+		idpf_attach_and_open(adapter);
+		idpf_idc_init(adapter);
+	}
 }
 
 /**
-- 
2.37.3

