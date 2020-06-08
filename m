Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FDC1F22D7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20170877D3;
	Mon,  8 Jun 2020 23:11:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3fSdsaNqMYs; Mon,  8 Jun 2020 23:11:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F27D87775;
	Mon,  8 Jun 2020 23:11:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43F731BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3DBB2221F0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aSd-wlPnRjMh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:11:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A2ED21509
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:11:48 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89D1B20CC7;
 Mon,  8 Jun 2020 23:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657908;
 bh=ZOBjPwNTxWrUqyukv0mLvrQ62a6ylels/hEl/abfOe8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DYRO/nsqRMkgaHjFhOl5gtJMBRnUFQOOjShQO6tMGRGQY98thHz8hSU951rb2fr99
 rfmw/gv1jZmAehPSt7I7VLXoaez3RBpa8gI9iO33MtTwsZT8R4bHGaAppM7uBDNgsE
 TnDUZmaoQN0kqhLd/fam+CO19qP78n0pp61jens0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Jun 2020 19:05:53 -0400
Message-Id: <20200608230607.3361041-260-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.7 260/274] ice: Fix inability to
 set channels when down
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
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

[ Upstream commit 765dd7a1827c687b782e6ab3dd6daf4d13a4780f ]

Currently the driver prevents a user from doing
modprobe ice
ethtool -L eth0 combined 5
ip link set eth0 up

The ethtool command fails, because the driver is checking to see if the
interface is down before allowing the get_channels to proceed (even for
a set_channels).

Remove this check and allow the user to configure the interface
before bringing it up, which is a much better usability case.

Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 593fb37bd59e..153e3565e313 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3171,10 +3171,6 @@ ice_get_channels(struct net_device *dev, struct ethtool_channels *ch)
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 
-	/* check to see if VSI is active */
-	if (test_bit(__ICE_DOWN, vsi->state))
-		return;
-
 	/* report maximum channels */
 	ch->max_rx = ice_get_max_rxq(pf);
 	ch->max_tx = ice_get_max_txq(pf);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
