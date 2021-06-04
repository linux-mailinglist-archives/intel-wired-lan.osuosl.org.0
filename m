Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CAD39BE08
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:05:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEC10415E9;
	Fri,  4 Jun 2021 17:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OJcWxOpGfrUE; Fri,  4 Jun 2021 17:05:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1409D415E0;
	Fri,  4 Jun 2021 17:05:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 52DAD1BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 63231415B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HZGN4SXfm9nG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 793A1415F0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
IronPort-SDR: SHOIlMiZ7EuGMge/8psTmmid8lEsoWLZm5/bRxVD8AQZx8OIa+WjXE7nviz/RMJPRytQyG8bKI
 1J03cS6XX6SA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191666470"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="191666470"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:02 -0700
IronPort-SDR: YyHQQQYktXIXfcacpfihzBKwABsIqr5sy3bxt9nN9daO4qHEyZ/Yp/R7iGd/yavjsh3DyBs+su
 Wwcx5DiCcdOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086366"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:22 -0700
Message-Id: <20210604165335.33329-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 02/15] iavf: obtain the
 crit_section lock in iavf_open() immediately
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

From: Nicholas Nunley <nicholas.d.nunley@intel.com>

iavf_open() checks for IAVF_FLAG_PF_COMMS_FAILED outside of the
crit_section lock so that it can return early if possible, without needing
to acquire the lock. This is perfectly fine, but once the lock is actually
obtained the code assumes the value hasn't changed. This is not correct,
since the IAVF_FLAG_PF_COMMS_FAILED field can certainly change by the time
the lock is obtained, especially if iavf_open() has to wait for it while
iavf_reset_task() runs on another thread.

To avoid this, simply grab the lock before checking the value.

Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index bf96a9dab962..4c55773c6ee1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3196,15 +3196,16 @@ static int iavf_open(struct net_device *netdev)
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	int err;
 
-	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) {
-		dev_err(&adapter->pdev->dev, "Unable to open device due to PF driver failure.\n");
-		return -EIO;
-	}
-
 	while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
 				&adapter->crit_section))
 		usleep_range(500, 1000);
 
+	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) {
+		dev_err(&adapter->pdev->dev, "Unable to open device due to PF driver failure.\n");
+		err = -EIO;
+		goto err_unlock;
+	}
+
 	if (adapter->state != __IAVF_DOWN) {
 		err = -EBUSY;
 		goto err_unlock;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
