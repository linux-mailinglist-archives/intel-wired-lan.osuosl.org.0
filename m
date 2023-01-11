Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6E46659D9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 12:16:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A53F404A3;
	Wed, 11 Jan 2023 11:16:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A53F404A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673435815;
	bh=cDVFiAW2F7pZ/04cx/50sp5iHT4QLS9+wyISKiIy0UA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hiX1RxOtdkw4aqRzUWK92Uuk8JBbU+EuWlsdgb0iyJDkr4TvQ7nITsT6o2jnRwMSg
	 vaXNiBEbL/N0F/396KxCL3+Z95CJM4+E/PeLF0tLK1vHSHKkR33+DqR/Z9UY+fC4Ck
	 wkrTtSx/yAuVmnYQQq0za9qN2HlnnY7gWlf1Peo8dviBHtSmXJBC70rGRWmbAnJvnR
	 qxg98u+MeN02UzRzukp0F7rFL0rJMRhbAuooMayG8rIubl/eKvRvCZ6Y+T+TnFs2kT
	 DcI3bDAWYoh1aDYy7DYAdfWYdPOAr3bVo2TvOo98GZZnfO4BndM6UQ5e4plb0msW7b
	 E6fBQgrbetOaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ob24f9dV-hA2; Wed, 11 Jan 2023 11:16:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1168340191;
	Wed, 11 Jan 2023 11:16:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1168340191
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 186EF1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 11:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F115B40981
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 11:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F115B40981
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4WLpI-jyPjPs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 11:16:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAD1F4094B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CAD1F4094B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 11:16:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="325396617"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="325396617"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 03:16:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="986127675"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="986127675"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga005.fm.intel.com with ESMTP; 11 Jan 2023 03:16:45 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Jan 2023 12:01:11 +0100
Message-Id: <20230111110111.20099-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673435807; x=1704971807;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vj3Mo8uwE5jXT3OkumcFm/gJ67DUn2fcNUZt/fmGy0Q=;
 b=hFgzAzgV2vE5Negi/ONxx7XiQn3hHN9wRqBfjoQ/C4s6HmS26ulWv0zM
 u3VHiru0Jktu5hIFPW9/mxPlXSL8OlzwPQJTMgTZ2qxXWcUHJmm8FI4+D
 mgjCZsA0lK/pa2t7h87aWRrtQ2FEWIawksIwog4FqDWrnwqXoTSmyOIKK
 9PgvBYdnjqrBNH5u/gbVX/Kn8xzZ6nu8U56OiLc4iqPg8FtF70WjaiL0o
 Xh3MC4gm5NkttKiW30HjBznLwnPcN72mGD+VsamfmksC5y4ZuGpAzB5eW
 XNGbeijhHkW2a7kx1h3QmgTrpUbHEGFQP14ApiGzn6ciStI+nGbbgh4sE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hFgzAzgV
Subject: [Intel-wired-lan] [PATCH] ice: double lock on adev_mutex
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

Call trace:
ice_set_channel() --> mutex_lock(adev_mutex)
ice_vsi_recfg_qs()
ice_pf_dcb_recfg()
ice_send_event_to_aux() --> another mutex_lock(adev_mutex)

This call trace is reached when user try to change queues amount using
ethtool:
$ ethtool -L enp24s0f0np0 tx 64 rx 32

Avoid double lock by unlocking after checking if RDMA is active.

Fixes: a49a2713f00e ("ice: Prevent set_channel from changing queues while RDMA active")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 263d59929602..54fc2ca823f5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3729,22 +3729,21 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 	mutex_lock(&pf->adev_mutex);
 	if (pf->adev && pf->adev->dev.driver) {
 		netdev_err(dev, "Cannot change channels when RDMA is active\n");
-		ret = -EINVAL;
-		goto adev_unlock;
+		mutex_unlock(&pf->adev_mutex);
+		return -EINVAL;
 	}
+	mutex_unlock(&pf->adev_mutex);
 
 	ice_vsi_recfg_qs(vsi, new_rx, new_tx);
 
 	if (!netif_is_rxfh_configured(dev)) {
 		ret = ice_vsi_set_dflt_rss_lut(vsi, new_rx);
-		goto adev_unlock;
+		return ret;
 	}
 
 	/* Update rss_size due to change in Rx queues */
 	vsi->rss_size = ice_get_valid_rss_size(&pf->hw, new_rx);
 
-adev_unlock:
-	mutex_unlock(&pf->adev_mutex);
 	return ret;
 }
 
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
