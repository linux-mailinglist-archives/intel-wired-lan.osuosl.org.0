Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B529F1D5D5C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:45:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A981E227AA;
	Sat, 16 May 2020 00:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sHVjQg63UA7V; Sat, 16 May 2020 00:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 88E732281E;
	Sat, 16 May 2020 00:45:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9134C1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8E4D488017
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r2ZB4dYFd-wr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E41487F5F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:02 +0000 (UTC)
IronPort-SDR: a6FiLNUBtyl0yGbP763rx2fJj7j+NVFqqYhJtKfpa+ka5qC43enM79UvmSvP4YN+8Ol/TbkgkA
 Vu/QuLIvSazQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:45:00 -0700
IronPort-SDR: xScbhpvPDbKDEiC8XjhCuX7YhllxDWJezRd5UdcpANZycwlIbFO8txURegkUgEHaQoko6znRLw
 QS3C0gDoycOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="287960357"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga004.fm.intel.com with ESMTP; 15 May 2020 17:45:00 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:42:25 -0700
Message-Id: <20200516004226.4795-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S44 13/14] ice: fix kernel BUG if
 register_netdev fails
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

From: Jacob Keller <jacob.e.keller@intel.com>

If register_netdev() fails, the driver will attempt to cleanup the
q_vectors and inadvertently trigger a kernel BUG due to a NULL pointer
dereference.

This occurs because cleaning up q_vectors attempts to call
netif_napi_del on napi_structs which were never initialized.

Resolve this by releasing the netdev in ice_cfg_netdev and setting
vsi->netdev to NULL. This ensures that after ice_cfg_netdev fails the
state is rewound to match as if ice_cfg_netdev was never called.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 943fde5abdb7..14aa02b000cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2435,7 +2435,7 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 
 	err = register_netdev(vsi->netdev);
 	if (err)
-		goto err_destroy_devlink_port;
+		goto err_free_netdev;
 
 	devlink_port_type_eth_set(&pf->devlink_port, vsi->netdev);
 
@@ -2446,9 +2446,11 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 
 	return 0;
 
+err_free_netdev:
+	free_netdev(vsi->netdev);
+	vsi->netdev = NULL;
 err_destroy_devlink_port:
 	ice_devlink_destroy_port(pf);
-
 	return err;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
