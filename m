Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5137B176AEB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Mar 2020 03:47:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDB4D85A0E;
	Tue,  3 Mar 2020 02:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CenPFNNAjyH5; Tue,  3 Mar 2020 02:47:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F072858A6;
	Tue,  3 Mar 2020 02:47:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 271A71BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 02:47:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1BB3885308
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 02:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V2Z_nblIZKPK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2020 02:47:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A61AD8522E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2020 02:47:19 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97CD8246BB;
 Tue,  3 Mar 2020 02:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583203639;
 bh=tp2fCcdN0ZhV5H5dt8E3ksW/Ztx4G+adWhpiLEC4ggg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wQUFwA5hLj8G/gzHUUxO54J1UmiwekqbnemUoqarrFPhQPvcuCtgRiPNX3UvdLeLH
 BK95e6dSXkcwKV8s7Xm3JyzHzc1pEpXyQDWTy50h9nnPxFa2iU3sthGW+LXHJ8ncpN
 yaw1KYycWHKxP9TsWDAsSR57PH8lqqj7ec9XKmfI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  2 Mar 2020 21:46:00 -0500
Message-Id: <20200303024615.8889-51-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024615.8889-1-sashal@kernel.org>
References: <20200303024615.8889-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.5 51/66] ice: Don't tell the OS
 that link is going down
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

[ Upstream commit 8a55c08d3bbc9ffc9639f69f742e59ebd99f913b ]

Remove code that tell the OS that link is going down when user
change flow control via ethtool. When link is up it isn't certain
that link goes down after 0x0605 aq command. If link doesn't go
down, OS thinks that link is down, but physical link is up. To
reset this state user have to take interface down and up.

If link goes down after 0x0605 command, FW send information
about that and after that driver tells the OS that the link goes
down. So this code in ethtool is unnecessary.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 9ebd93e79aeb6..9744fcd6662dd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2966,13 +2966,6 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	else
 		return -EINVAL;
 
-	/* Tell the OS link is going down, the link will go back up when fw
-	 * says it is ready asynchronously
-	 */
-	ice_print_link_msg(vsi, false);
-	netif_carrier_off(netdev);
-	netif_tx_stop_all_queues(netdev);
-
 	/* Set the FC mode and only restart AN if link is up */
 	status = ice_set_fc(pi, &aq_failures, link_up);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
