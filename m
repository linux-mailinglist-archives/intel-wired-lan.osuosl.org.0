Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D561C169345
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Feb 2020 03:22:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F44C85A58;
	Sun, 23 Feb 2020 02:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7haWfsuJoZfZ; Sun, 23 Feb 2020 02:22:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D961857BC;
	Sun, 23 Feb 2020 02:22:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03C661BF28B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2020 02:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0031385F98
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2020 02:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 85w-AIVmzIon for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Feb 2020 02:22:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E00485F29
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2020 02:22:10 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F38C208C3;
 Sun, 23 Feb 2020 02:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582424530;
 bh=GL+ErFHzO4uUVjyhpYexc0RZkb4zGsFm7jDq9h5knZk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n3J7NFbXd5phFXpE6T2Y2hT7O7ggQa2j7ecXuIBLFbj+qYXBskxKtL3UKfMNoXGoH
 KHIu4FiuIUyLcHu7JgREjFqYnf8OgJrhSK4SCEBAlCXPwPhA6rp7e5mQQaPqTDQxcL
 XRAOy5wiLBA6HLG9zMBHtKQnDsYf2VMG57p9x5l4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sat, 22 Feb 2020 21:21:03 -0500
Message-Id: <20200223022119.707-42-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200223022119.707-1-sashal@kernel.org>
References: <20200223022119.707-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.5 42/58] ice: Fix switch between
 FW and SW LLDP
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

From: Dave Ertman <david.m.ertman@intel.com>

[ Upstream commit 53977ee47410885e7d4eee87d2c811a48a275150 ]

When switching between FW and SW LLDP mode, the
number of configured TLV apps in the driver's
DCB configuration is getting out of synch with
what lldpad thinks is configured.  This is causing
a problem when shutting down lldpad.  The cleanup
is trying to delete TLV apps that are not defined
in the kernel.

Since the driver is keeping an accurate account
of the apps defined, use the drivers number of
apps to determine if there is an app to delete.
If the number of apps is <= 1, then do not
attempt to delete.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index d870c1aedc170..926c9772f0860 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -713,13 +713,13 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 		return -EINVAL;
 
 	mutex_lock(&pf->tc_mutex);
-	ret = dcb_ieee_delapp(netdev, app);
-	if (ret)
-		goto delapp_out;
-
 	old_cfg = &pf->hw.port_info->local_dcbx_cfg;
 
-	if (old_cfg->numapps == 1)
+	if (old_cfg->numapps <= 1)
+		goto delapp_out;
+
+	ret = dcb_ieee_delapp(netdev, app);
+	if (ret)
 		goto delapp_out;
 
 	new_cfg = &pf->hw.port_info->desired_dcbx_cfg;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
