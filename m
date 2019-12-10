Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3181411968E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2019 22:28:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3D6985D3F;
	Tue, 10 Dec 2019 21:28:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q8E0-vIjX1Yu; Tue, 10 Dec 2019 21:27:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61E0485495;
	Tue, 10 Dec 2019 21:27:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F0521BF580
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 706A02276C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:11:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lbpdc-rP9LhR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2019 21:11:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9FBB82042C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2019 21:11:34 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD2A2246C5;
 Tue, 10 Dec 2019 21:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012294;
 bh=vKMXbFupfKEuOwGd555edLeVC3YaeU2X0p7cGoEt+6A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2lwjIgU+MWw6ft7HVxUF3BjBeuUBL6ZDcxndDrqWWSaZGnl78S10m1hLjlDJSylJB
 96F3mMho3EXMToC0AyTbr2CpfVceiDuevdUodYLepiqcoDzpQjZBp5/rrOdrmfteim
 ah9eSQKAE9xaVhcqirP6WOESg4xEBm5BIYgF7PD0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 10 Dec 2019 16:05:38 -0500
Message-Id: <20191210210735.9077-194-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Approved-At: Tue, 10 Dec 2019 21:27:55 +0000
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 233/350] ice: Check for null
 pointer dereference when setting rings
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
Cc: Sasha Levin <sashal@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@intel.com>

[ Upstream commit eb0ee8abfeb9ff4b98e8e40217b8667bfb08587a ]

Without this check rebuild vsi can lead to kernel panic.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 214cd6eca405d..2408f0de95fc2 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3970,8 +3970,13 @@ int ice_vsi_setup_tx_rings(struct ice_vsi *vsi)
 	}
 
 	ice_for_each_txq(vsi, i) {
-		vsi->tx_rings[i]->netdev = vsi->netdev;
-		err = ice_setup_tx_ring(vsi->tx_rings[i]);
+		struct ice_ring *ring = vsi->tx_rings[i];
+
+		if (!ring)
+			return -EINVAL;
+
+		ring->netdev = vsi->netdev;
+		err = ice_setup_tx_ring(ring);
 		if (err)
 			break;
 	}
@@ -3996,8 +4001,13 @@ int ice_vsi_setup_rx_rings(struct ice_vsi *vsi)
 	}
 
 	ice_for_each_rxq(vsi, i) {
-		vsi->rx_rings[i]->netdev = vsi->netdev;
-		err = ice_setup_rx_ring(vsi->rx_rings[i]);
+		struct ice_ring *ring = vsi->rx_rings[i];
+
+		if (!ring)
+			return -EINVAL;
+
+		ring->netdev = vsi->netdev;
+		err = ice_setup_rx_ring(ring);
 		if (err)
 			break;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
