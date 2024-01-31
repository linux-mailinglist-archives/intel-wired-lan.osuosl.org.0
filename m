Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9B884404E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 14:17:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2A9B8449F;
	Wed, 31 Jan 2024 13:17:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2A9B8449F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706707050;
	bh=//z4Y/BgNHdCR9hM9Ii+VZgxSjTBvGsBMSlKT9iydbU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Wjn8XTeaRSqInpcvGJmzNYol1tbGbePezp+VHVt5tYycLvKBxiqHQNXodJcyGyfGm
	 7xwoZ9GnaNUwo2aI56jUHddzfH4j7T7aTElf38ShhIx/UEtGPtFAHFtEIApV/5LZmA
	 udYv0B/yZV5kUba1buAf9pEdCo8a7XLirjjt+3KG+KrkYZZR1a5vkFSKjVJgD6hcUj
	 mMeQc4rZYoL1il/7SMKdAaAxpD5oWEjC/EJ9E2RmU/fHGro3pEppUyKETnit257rX4
	 Hsts/NVyAHW5EKrmRkcijeL0rKAKEgLDW0+hFIPU6ol7hiRIsrEByZstYTUuszuxNt
	 m1toBaEuWo4Qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZkG6lqR9Xb6; Wed, 31 Jan 2024 13:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C563A8448F;
	Wed, 31 Jan 2024 13:17:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C563A8448F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 579261BF325
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 13:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C0DA41F37
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 13:17:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C0DA41F37
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hkznFENfvx6V for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 13:17:23 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F26341C5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 13:17:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F26341C5F
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-512-99WzZMLDNzuiVzbZ1JrgMA-1; Wed, 31 Jan 2024 08:17:18 -0500
X-MC-Unique: 99WzZMLDNzuiVzbZ1JrgMA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A22C835381;
 Wed, 31 Jan 2024 13:17:17 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.38])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3FCF7400DF3E;
 Wed, 31 Jan 2024 13:17:15 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 31 Jan 2024 14:17:14 +0100
Message-ID: <20240131131714.23497-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1706707042;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=//z4Y/BgNHdCR9hM9Ii+VZgxSjTBvGsBMSlKT9iydbU=;
 b=Ot2XDO5IuPetsekNuj2TSQqXzBCbf2BpNj7N2qKTXN36eogcpYhlwrv0l/Wg26EyWe8eZC
 Tw6MTiHF9H1xDCodfgL4msbkuPwu/N77CMxSIVlqleBa4kueCN15VgxFSOl1GTvp8LUeJx
 igUFBvzHTnQ3jP3jKlOXh8dXo3ZDsL8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ot2XDO5I
Subject: [Intel-wired-lan] [PATCH net] i40e: Do not allow untrusted VF to
 remove administratively set MAC
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Mitch Williams <mitch.a.williams@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Simon Horman <horms@kernel.org>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently when PF administratively sets VF's MAC address and the VF
is put down (VF tries to delete all MACs) then the MAC is removed
from MAC filters and primary VF MAC is zeroed.

Do not allow untrusted VF to remove primary MAC when it was set
administratively by PF.

Reproducer:
1) Create VF
2) Set VF interface up
3) Administratively set the VF's MAC
4) Put VF interface down

[root@host ~]# echo 1 > /sys/class/net/enp2s0f0/device/sriov_numvfs
[root@host ~]# ip link set enp2s0f0v0 up
[root@host ~]# ip link set enp2s0f0 vf 0 mac fe:6c:b5:da:c7:7d
[root@host ~]# ip link show enp2s0f0
23: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
    link/ether 3c:ec:ef:b7:dd:04 brd ff:ff:ff:ff:ff:ff
    vf 0     link/ether fe:6c:b5:da:c7:7d brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state auto, trust off
[root@host ~]# ip link set enp2s0f0v0 down
[root@host ~]# ip link show enp2s0f0
23: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
    link/ether 3c:ec:ef:b7:dd:04 brd ff:ff:ff:ff:ff:ff
    vf 0     link/ether 00:00:00:00:00:00 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state auto, trust off

Fixes: 700bbf6c1f9e ("i40e: allow VF to remove any MAC filter")
Fixes: ceb29474bbbc ("i40e: Add support for VF to specify its primary MAC address")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 38 ++++++++++++++++---
 1 file changed, 33 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 908cdbd3ec5d..b34c71770887 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2848,6 +2848,24 @@ static int i40e_vc_get_stats_msg(struct i40e_vf *vf, u8 *msg)
 				      (u8 *)&stats, sizeof(stats));
 }
 
+/**
+ * i40e_can_vf_change_mac
+ * @vf: pointer to the VF info
+ *
+ * Return true if the VF is allowed to change its MAC filters, false otherwise
+ */
+static bool i40e_can_vf_change_mac(struct i40e_vf *vf)
+{
+	/* If the VF MAC address has been set administratively (via the
+	 * ndo_set_vf_mac command), then deny permission to the VF to
+	 * add/delete unicast MAC addresses, unless the VF is trusted
+	 */
+	if (vf->pf_set_mac && !vf->trusted)
+		return false;
+
+	return true;
+}
+
 #define I40E_MAX_MACVLAN_PER_HW 3072
 #define I40E_MAX_MACVLAN_PER_PF(num_ports) (I40E_MAX_MACVLAN_PER_HW /	\
 	(num_ports))
@@ -2907,8 +2925,8 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
 		 * The VF may request to set the MAC address filter already
 		 * assigned to it so do not return an error in that case.
 		 */
-		if (!test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps) &&
-		    !is_multicast_ether_addr(addr) && vf->pf_set_mac &&
+		if (!i40e_can_vf_change_mac(vf) &&
+		    !is_multicast_ether_addr(addr) &&
 		    !ether_addr_equal(addr, vf->default_lan_addr.addr)) {
 			dev_err(&pf->pdev->dev,
 				"VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation\n");
@@ -3114,19 +3132,29 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 			ret = -EINVAL;
 			goto error_param;
 		}
-		if (ether_addr_equal(al->list[i].addr, vf->default_lan_addr.addr))
-			was_unimac_deleted = true;
 	}
 	vsi = pf->vsi[vf->lan_vsi_idx];
 
 	spin_lock_bh(&vsi->mac_filter_hash_lock);
 	/* delete addresses from the list */
-	for (i = 0; i < al->num_elements; i++)
+	for (i = 0; i < al->num_elements; i++) {
+		const u8 *addr = al->list[i].addr;
+
+		/* Allow to delete VF primary MAC only if it was not set
+		 * administratively by PF or if VF is trusted.
+		 */
+		if (ether_addr_equal(addr, vf->default_lan_addr.addr) &&
+		    i40e_can_vf_change_mac(vf))
+			was_unimac_deleted = true;
+		else
+			continue;
+
 		if (i40e_del_mac_filter(vsi, al->list[i].addr)) {
 			ret = -EINVAL;
 			spin_unlock_bh(&vsi->mac_filter_hash_lock);
 			goto error_param;
 		}
+	}
 
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
 
-- 
2.39.3

