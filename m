Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8342C9488
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Dec 2020 02:19:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC6F986D0C;
	Tue,  1 Dec 2020 01:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwESa32qtNGu; Tue,  1 Dec 2020 01:19:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B284786B78;
	Tue,  1 Dec 2020 01:19:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4EA411BF350
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 01:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4A8C0873C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 01:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BE56rWHN1ZsP for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Dec 2020 01:19:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A608E87324
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 01:19:29 +0000 (UTC)
IronPort-SDR: tdrTxWX7IjSI28qt+b2or6aHDPex19ooVa8PUz6z+2QDBTESr1bRhi1l+aL4mHFy8fF5X00E3i
 UTuv9UPCtFCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="159796018"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="159796018"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 17:19:28 -0800
IronPort-SDR: 0mj4k8xHOEc7kaYnDBIfwvuFreMJRA6EqTktv3jNhc8ZMeQ+ltM69Kba3vm4JjIj/2xahgAlIw
 XUKCNkJi/79Q==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="314771314"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 17:19:24 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Tue,  1 Dec 2020 09:22:09 +0800
Message-Id: <aa62fe21ecafaff167f57e86192be70ee8914738.1606757180.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1606757180.git.yu.c.chen@intel.com>
References: <cover.1606757180.git.yu.c.chen@intel.com>
Subject: [Intel-wired-lan] [PATCH 2/2][v3] e1000e: Remove the runtime
 suspend restriction on CNP+
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
Cc: Len Brown <len.brown@intel.com>, Chen Yu <yu.c.chen@intel.com>,
 netdev@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, "Brandt,
 Todd E" <todd.e.brandt@intel.com>, "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Although there is platform issue of runtime suspend support
on CNP, it would be more flexible to let the user decide whether
to disable runtime or not because:
1. This can be done in userspace via
   echo on > /sys/devices/pci0000\:00/0000\:00\:1f.d/power/control
2. More and more NICs would support runtime suspend, disabling the
   runtime suspend on them by default would impact the validation.

Only disable runtime suspend on CNP in case of any user space regression.

Signed-off-by: Chen Yu <yu.c.chen@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index b210bba3f20a..d06435267dc8 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7674,7 +7674,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_SMART_PREPARE);
 
-	if (pci_dev_run_wake(pdev) && hw->mac.type < e1000_pch_cnp)
+	if (pci_dev_run_wake(pdev) && hw->mac.type != e1000_pch_cnp)
 		pm_runtime_put_noidle(&pdev->dev);
 
 	return 0;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
