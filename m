Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E53D350C922
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Apr 2022 12:20:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7025D60DF0;
	Sat, 23 Apr 2022 10:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KiScPm904DUC; Sat, 23 Apr 2022 10:20:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E09860DED;
	Sat, 23 Apr 2022 10:20:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 498BD1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 10:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 446D5408CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 10:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9pi0_7o4_Yaf for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Apr 2022 10:20:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C0F9D408A7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 10:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650709230;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=f8Vkn7B82Htc2rN6lCTFkdgYY2xUNZTr17++5+x70Iw=;
 b=I19vGt06p/U/FDiW+9e+/NC8Uz+93f0iwD6q/Y2kv6442CAi1GIBludPiQld6avGtcdRJz
 h3yCyGJZCbHELtGA8jsKqMMDM4AJDKnqxFabl3XSimIvFO6o/CjmlyFwH97QPI9CkY6+Sp
 eq1YUo1ViiMpRY/DoYPBtoEsT8nq1Jw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-596-O6sYjSaWP1KXYUosU2DNRg-1; Sat, 23 Apr 2022 06:20:25 -0400
X-MC-Unique: O6sYjSaWP1KXYUosU2DNRg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B477185A79C;
 Sat, 23 Apr 2022 10:20:24 +0000 (UTC)
Received: from ceranb.redhat.com (unknown [10.39.192.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 53613145BEFE;
 Sat, 23 Apr 2022 10:20:22 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Sat, 23 Apr 2022 12:20:21 +0200
Message-Id: <20220423102021.4056946-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Subject: [Intel-wired-lan] [PATCH net v4] ice: Fix race during aux device
 (un)plugging
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
Cc: Shiraz Saleem <shiraz.saleem@intel.com>, mschmidt@redhat.com,
 open list <linux-kernel@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Function ice_plug_aux_dev() assigns pf->adev field too early prior
aux device initialization and on other side ice_unplug_aux_dev()
starts aux device deinit and at the end assigns NULL to pf->adev.
This is wrong because pf->adev should always be non-NULL only when
aux device is fully initialized and ready. This wrong order causes
a crash when ice_send_event_to_aux() call occurs because that function
depends on non-NULL value of pf->adev and does not assume that
aux device is half-initialized or half-destroyed.
After order correction the race window is tiny but it is still there,
as Leon mentioned and manipulation with pf->adev needs to be protected
by mutex.

Fix (un-)plugging functions so pf->adev field is set after aux device
init and prior aux device destroy and protect pf->adev assignment by
new mutex. This mutex is also held during ice_send_event_to_aux()
call to ensure that aux device is valid during that call.
Note that device lock used ice_send_event_to_aux() needs to be kept
to avoid race with aux drv unload.

Reproducer:
cycle=1
while :;do
        echo "#### Cycle: $cycle"

        ip link set ens7f0 mtu 9000
        ip link add bond0 type bond mode 1 miimon 100
        ip link set bond0 up
        ifenslave bond0 ens7f0
        ip link set bond0 mtu 9000
        ethtool -L ens7f0 combined 1
        ip link del bond0
        ip link set ens7f0 mtu 1500
        sleep 1

        let cycle++
done

In short when the device is added/removed to/from bond the aux device
is unplugged/plugged. When MTU of the device is changed an event is
sent to aux device asynchronously. This can race with (un)plugging
operation and because pf->adev is set too early (plug) or too late
(unplug) the function ice_send_event_to_aux() can touch uninitialized
or destroyed fields. In the case of crash below pf->adev->dev.mutex.

Crash:
[   53.372066] bond0: (slave ens7f0): making interface the new active one
[   53.378622] bond0: (slave ens7f0): Enslaving as an active interface with an u
p link
[   53.386294] IPv6: ADDRCONF(NETDEV_CHANGE): bond0: link becomes ready
[   53.549104] bond0: (slave ens7f1): Enslaving as a backup interface with an up
 link
[   54.118906] ice 0000:ca:00.0 ens7f0: Number of in use tx queues changed inval
idating tc mappings. Priority traffic classification disabled!
[   54.233374] ice 0000:ca:00.1 ens7f1: Number of in use tx queues changed inval
idating tc mappings. Priority traffic classification disabled!
[   54.248204] bond0: (slave ens7f0): Releasing backup interface
[   54.253955] bond0: (slave ens7f1): making interface the new active one
[   54.274875] bond0: (slave ens7f1): Releasing backup interface
[   54.289153] bond0 (unregistering): Released all slaves
[   55.383179] MII link monitoring set to 100 ms
[   55.398696] bond0: (slave ens7f0): making interface the new active one
[   55.405241] BUG: kernel NULL pointer dereference, address: 0000000000000080
[   55.405289] bond0: (slave ens7f0): Enslaving as an active interface with an u
p link
[   55.412198] #PF: supervisor write access in kernel mode
[   55.412200] #PF: error_code(0x0002) - not-present page
[   55.412201] PGD 25d2ad067 P4D 0
[   55.412204] Oops: 0002 [#1] PREEMPT SMP NOPTI
[   55.412207] CPU: 0 PID: 403 Comm: kworker/0:2 Kdump: loaded Tainted: G S
           5.17.0-13579-g57f2d6540f03 #1
[   55.429094] bond0: (slave ens7f1): Enslaving as a backup interface with an up
 link
[   55.430224] Hardware name: Dell Inc. PowerEdge R750/06V45N, BIOS 1.4.4 10/07/
2021
[   55.430226] Workqueue: ice ice_service_task [ice]
[   55.468169] RIP: 0010:mutex_unlock+0x10/0x20
[   55.472439] Code: 0f b1 13 74 96 eb e0 4c 89 ee eb d8 e8 79 54 ff ff 66 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 65 48 8b 04 25 40 ef 01 00 31 d2 <f0> 48 0f b1 17 75 01 c3 e9 e3 fe ff ff 0f 1f 00 0f 1f 44 00 00 48
[   55.491186] RSP: 0018:ff4454230d7d7e28 EFLAGS: 00010246
[   55.496413] RAX: ff1a79b208b08000 RBX: ff1a79b2182e8880 RCX: 0000000000000001
[   55.503545] RDX: 0000000000000000 RSI: ff4454230d7d7db0 RDI: 0000000000000080
[   55.510678] RBP: ff1a79d1c7e48b68 R08: ff4454230d7d7db0 R09: 0000000000000041
[   55.517812] R10: 00000000000000a5 R11: 00000000000006e6 R12: ff1a79d1c7e48bc0
[   55.524945] R13: 0000000000000000 R14: ff1a79d0ffc305c0 R15: 0000000000000000
[   55.532076] FS:  0000000000000000(0000) GS:ff1a79d0ffc00000(0000) knlGS:0000000000000000
[   55.540163] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   55.545908] CR2: 0000000000000080 CR3: 00000003487ae003 CR4: 0000000000771ef0
[   55.553041] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   55.560173] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   55.567305] PKRU: 55555554
[   55.570018] Call Trace:
[   55.572474]  <TASK>
[   55.574579]  ice_service_task+0xaab/0xef0 [ice]
[   55.579130]  process_one_work+0x1c5/0x390
[   55.583141]  ? process_one_work+0x390/0x390
[   55.587326]  worker_thread+0x30/0x360
[   55.590994]  ? process_one_work+0x390/0x390
[   55.595180]  kthread+0xe6/0x110
[   55.598325]  ? kthread_complete_and_exit+0x20/0x20
[   55.603116]  ret_from_fork+0x1f/0x30
[   55.606698]  </TASK>

Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_idc.c  | 25 +++++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_main.c |  2 ++
 3 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 8ed3c9ab7ff7..a895e3a8e988 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -540,6 +540,7 @@ struct ice_pf {
 	struct mutex avail_q_mutex;	/* protects access to avail_[rx|tx]qs */
 	struct mutex sw_mutex;		/* lock for protecting VSI alloc flow */
 	struct mutex tc_mutex;		/* lock to protect TC changes */
+	struct mutex adev_mutex;	/* lock to protect aux device access */
 	u32 msg_enable;
 	struct ice_ptp ptp;
 	struct tty_driver *ice_gnss_tty_driver;
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 25a436d342c2..3e3b2ed4cd5d 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -37,14 +37,17 @@ void ice_send_event_to_aux(struct ice_pf *pf, struct iidc_event *event)
 	if (WARN_ON_ONCE(!in_task()))
 		return;
 
+	mutex_lock(&pf->adev_mutex);
 	if (!pf->adev)
-		return;
+		goto finish;
 
 	device_lock(&pf->adev->dev);
 	iadrv = ice_get_auxiliary_drv(pf);
 	if (iadrv && iadrv->event_handler)
 		iadrv->event_handler(pf, event);
 	device_unlock(&pf->adev->dev);
+finish:
+	mutex_unlock(&pf->adev_mutex);
 }
 
 /**
@@ -290,7 +293,6 @@ int ice_plug_aux_dev(struct ice_pf *pf)
 		return -ENOMEM;
 
 	adev = &iadev->adev;
-	pf->adev = adev;
 	iadev->pf = pf;
 
 	adev->id = pf->aux_idx;
@@ -300,18 +302,20 @@ int ice_plug_aux_dev(struct ice_pf *pf)
 
 	ret = auxiliary_device_init(adev);
 	if (ret) {
-		pf->adev = NULL;
 		kfree(iadev);
 		return ret;
 	}
 
 	ret = auxiliary_device_add(adev);
 	if (ret) {
-		pf->adev = NULL;
 		auxiliary_device_uninit(adev);
 		return ret;
 	}
 
+	mutex_lock(&pf->adev_mutex);
+	pf->adev = adev;
+	mutex_unlock(&pf->adev_mutex);
+
 	return 0;
 }
 
@@ -320,12 +324,17 @@ int ice_plug_aux_dev(struct ice_pf *pf)
  */
 void ice_unplug_aux_dev(struct ice_pf *pf)
 {
-	if (!pf->adev)
-		return;
+	struct auxiliary_device *adev;
 
-	auxiliary_device_delete(pf->adev);
-	auxiliary_device_uninit(pf->adev);
+	mutex_lock(&pf->adev_mutex);
+	adev = pf->adev;
 	pf->adev = NULL;
+	mutex_unlock(&pf->adev_mutex);
+
+	if (adev) {
+		auxiliary_device_delete(adev);
+		auxiliary_device_uninit(adev);
+	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5b1198859da7..2cbbf7abefc4 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3769,6 +3769,7 @@ u16 ice_get_avail_rxq_count(struct ice_pf *pf)
 static void ice_deinit_pf(struct ice_pf *pf)
 {
 	ice_service_task_stop(pf);
+	mutex_destroy(&pf->adev_mutex);
 	mutex_destroy(&pf->sw_mutex);
 	mutex_destroy(&pf->tc_mutex);
 	mutex_destroy(&pf->avail_q_mutex);
@@ -3847,6 +3848,7 @@ static int ice_init_pf(struct ice_pf *pf)
 
 	mutex_init(&pf->sw_mutex);
 	mutex_init(&pf->tc_mutex);
+	mutex_init(&pf->adev_mutex);
 
 	INIT_HLIST_HEAD(&pf->aq_wait_list);
 	spin_lock_init(&pf->aq_wait_lock);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
