Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A392AE86A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 06:49:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 751F227662;
	Wed, 11 Nov 2020 05:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wSk0x48fQLot; Wed, 11 Nov 2020 05:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 69A29273E3;
	Wed, 11 Nov 2020 05:49:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D1C61BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 08DDD85C77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id obw3Lr6Hw5ou for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 05:49:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E35285B58
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:49:42 +0000 (UTC)
IronPort-SDR: dN7ATapWpYivd7u8dgIddbMFJvr2X8C+5Nj5YIH88Cpz4VqQmmfKKqKxFohFZRoVlp6pJLU5fX
 1evMfOFrYuNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="167514763"
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="167514763"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 21:49:42 -0800
IronPort-SDR: EFXgvL/vAHXVTKliiw1HruU9JpJ8S27UtCWTJV+oO6JxtDhNUxMZD+lgUSNc3L01R8rUrqUtvT
 dyKj0eSi6S+A==
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="308336506"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 21:49:39 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Nov 2020 13:52:07 +0800
Message-Id: <7eb46aa2f49f6c7a2ff0d6cc65ad4195781ae960.1605073208.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1605073208.git.yu.c.chen@intel.com>
References: <cover.1605073208.git.yu.c.chen@intel.com>
Subject: [Intel-wired-lan] [PATCH 4/4][RFC] e1000e: Disable the power
 management if hardware error detected during resume
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org, "Brandt,
 Todd E" <todd.e.brandt@intel.com>, Zhang Rui <rui.zhang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the hardware error is detected during resume, the NIC might
be in a unstable status and blocks the subsequent suspend afterwards.
A broken device is not expected to impact the system wide suspend, and
this patch disable the power management support of this NIC. So that
the borken NIC will not be considered during suspend/resume, thus not
to prevent the system from suspend/resume.

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=205015
Reported-by: "Brandt, Todd E" <todd.e.brandt@intel.com>
Reported-by: Len Brown <len.brown@intel.com>
Signed-off-by: Chen Yu <yu.c.chen@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 45e0b1901440..08bc544e879a 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6959,7 +6959,8 @@ static int __e1000_resume(struct pci_dev *pdev)
 		ew32(WUS, ~0);
 	}
 
-	e1000e_reset(adapter);
+	if (_e1000e_reset(adapter))
+		schedule_work(&adapter->pm_remove_task);
 
 	e1000_init_manageability_pt(adapter);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
