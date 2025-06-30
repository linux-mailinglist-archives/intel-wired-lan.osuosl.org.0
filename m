Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3413AEE45D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 18:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65D026107D;
	Mon, 30 Jun 2025 16:24:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BJX9cLcllUDX; Mon, 30 Jun 2025 16:24:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C28A961117
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751300677;
	bh=0iRFczZkZXcyN4WlXN6RbdEzbXDTGf+Al/VBjyR1ScQ=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=44sb8uoAGi10hFiY55dH24E+CxPuG8BGXo03pb3wN+o07pMeoNUuZHpKkGo3HO/DT
	 5k17fkeCU1InPUAsT+bui5+YZ1Maennf5UmBmjjsZN40W+r0foodN02miSQd/gfA0c
	 4THwsnD72Fjpj8+YZ8DhxKqBCZeBpk4VIen4L2tTBV4q7vHjE/jvRXRb6JcBrhLYNY
	 Bn0jh48Ihge6cLuJvwnPHlmo25qEhKoo2/dxQFmFxUbqwtKyn+6EhHovK/BAJJzwwt
	 g7zb09ct/Z+UqLrsFq47yK3s1blWdXzVXe0Txm5dFW51DE7d6NN13YVGq/0R6XUvUD
	 l31twcWARINsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C28A961117;
	Mon, 30 Jun 2025 16:24:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 531871C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:24:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3905061060
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:24:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IcluafYhPJxR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 16:24:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4399E60F26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4399E60F26
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4399E60F26
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 16:24:35 +0000 (UTC)
X-CSE-ConnectionGUID: Y+P9eT+VSP6PiauADMd7jg==
X-CSE-MsgGUID: a3ayKlHkRb+ZYB2YwHITeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="71100928"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; d="scan'208";a="71100928"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 09:24:35 -0700
X-CSE-ConnectionGUID: TCqzMtYJRdKZrUk3GTVVAA==
X-CSE-MsgGUID: wFnDhka3Rguh5E+dDWQnGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; d="scan'208";a="159224533"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 09:24:34 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 30 Jun 2025 09:23:52 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-jk-iavf-max-pkt-size-mtu-v1-1-ea7cd5c7cec2@intel.com>
X-B4-Tracking: v=1; b=H4sIABi6YmgC/3WNyw6CMBBFf8XM2jG0SfGxMjHxA9waFgWmMgKFt
 BVRwr9biVszqzO5954JPDkmD4fVBI4G9tzZCGK9gqLS9kbIZWSQiVRJKhXea2Q9GGz1iH0d0PO
 bsA0P3GsjTC53IlU5xHrvyPC4TF/hcj59f/xs0NIYIItQsQ+dey3qQSyxnyX9bxkExhOlNFtlj
 BLyyDZQsym6FrJ5nj/LOVaC0QAAAA==
X-Change-ID: 20250625-jk-iavf-max-pkt-size-mtu-9af1fb28165b
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailer: b4 0.15-dev-2503c
X-Developer-Signature: v=1; a=openpgp-sha256; l=2520;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=X2GrFcQ2kfWuZfHD1xX5kKWG78oGRjAWM61hiH+y2lI=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoykXfarNUv73ixKb97968L+yMS3S5Z9mHxJ8Za3walS6
 Zn3i4UbOkpZGMS4GGTFFFkUHEJWXjeeEKb1xlkOZg4rE8gQBi5OAZjI5BpGhju3XUQXlH9hmfQi
 7InjgsVB/x0O+02YnZC2s3VX8rmYfltGhuuPF1y4br9Dcg3/6+K3m6VED81sruM7dit5g/f7EOG
 KIwwA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751300675; x=1782836675;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=X2GrFcQ2kfWuZfHD1xX5kKWG78oGRjAWM61hiH+y2lI=;
 b=Fspe9kMxF8p6zrCfYsE76ciqARVFRaeUYJ4Q6S+Fl47VPEFXy4nO4wZ1
 /cS64jjD9bo9Rz2lDjTa4B/xOVOjTnG9LrvBPrqwVdbldXHW/FG74v1bh
 4aVa+D9mKSYeKfN9C6XV+ON7TCaHjDjAX0F789cGxVKq0BSXv5OjhuCB0
 B2lFNTjs34s2qY9bv56c+TYx92ktGTqLqhk8EyPw849kmYt2ugB2avHho
 KkrVqa6Ic6fu1fvKvSKT6gdy0unmWLdxVLWMvprWcJszA5Y72KdSrHrFF
 ff9beoFIFRWAZaZnS217rBG5OM90zjQwrEOINgu05agFhsAgrLiXHvENh
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fspe9kMx
Subject: [Intel-wired-lan] [PATCH RFC iwl-next] iavf: respect the max_mtu if
 provided by the PF
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

The E800 series PFs transmit the maximum supported MTU as part of the
VIRTCHNL_OP_GET_VF_RESOURCES in the max_mtu field of the
virtchnl_vf_resource structure.

The iavf driver currently only applies this value as part of the assignment
of the max_frame value used for setting the max_pkt_size when programming
Rx queues. This potentially means a user can request an MTU outside this
range. Doing so causes the Tx resources to fail to initialize since the
E800 PF driver will validate the programmed maximum packet sizes and reject
the queue configuration.

Ensure that the netdev->max_mtu field respects the provided maximum MTU.

The X700 series hardware (operated by the i40e PF) does not transmit the
max_mtu field, and instead sends the value as 0. To avoid breaking
functionality, use min_not_zero and keep the existing default for the X700
hardware.

This ensures that the driver will not allow user space to set an MTU which
the PF will reject.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
I noticed this while investigating differences between the upstream iAVF
driver and the logic for handling the Rx max frame size in the out-of-tree
sourceforge driver. I think in practice that LIBIE_MAX_MTU is less than the
max_mtu provided by all existing PFs, so this may not be able to trigger an
issue with existing PF software. I still believe it is good to ensure we
check this since a PF might report a smaller maximum MTU for some reason,
and the VF should respect this.
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 69054af4689a..f15e87bb204f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2797,7 +2797,7 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	netdev->watchdog_timeo = 5 * HZ;
 
 	netdev->min_mtu = ETH_MIN_MTU;
-	netdev->max_mtu = LIBIE_MAX_MTU;
+	netdev->max_mtu = min_not_zero(adapter->vf_res->max_mtu, LIBIE_MAX_MTU);
 
 	if (!is_valid_ether_addr(adapter->hw.mac.addr)) {
 		dev_info(&pdev->dev, "Invalid MAC address %pM, using random\n",

---
base-commit: 856951290c2d5da80fec5356fadce87addcf0b69
change-id: 20250625-jk-iavf-max-pkt-size-mtu-9af1fb28165b

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

