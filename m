Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718894D5155
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 19:48:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D415940B7C;
	Thu, 10 Mar 2022 18:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jom2qe40q5nK; Thu, 10 Mar 2022 18:48:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97A334053E;
	Thu, 10 Mar 2022 18:48:35 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF1221BF3BE
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 18:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CAB314053E
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 18:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gG-kTjRMa9xG for <intel-wired-lan@osuosl.org>;
 Thu, 10 Mar 2022 18:48:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF9BB4018E
 for <intel-wired-lan@osuosl.org>; Thu, 10 Mar 2022 18:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646938109; x=1678474109;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Aqg7G9KgiLGZkfiTyihjMO8i/cLzfPMknrYXYphNu4=;
 b=ABHw+zFsNac++VDe02PiHPJdPZnoWLIBqYpt9mh2uQ7uVd5x38wwILj3
 jYX9tY9TlrXOTUnvuaM4di4iFyyuQqnacNSVvb5tyXAlSXdUuCg17Zd+9
 fiPcEyzcwyLNTqFY9nSzXnZorCOCeCdU1WZdZgmqypUOmOvxSfDbK4ZLo
 +riOp9hGXGILu9k7P7DcEXuf2bpetX2YBqTcE898cvoCnGbE7m+ebKeC0
 pfGLDsvM10sIaBLjreGkqwm/1tqTe+WRSOwg8fJwoY/wVgyu0jwp1Zore
 NDlxMXz4/SJB/Ru+vuyW6P8SmC3BStdrrtttqld+UwhQlxxaVNbRuCfcc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="316059644"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="316059644"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 10:48:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="644562576"
Received: from msu-dell.jf.intel.com ([10.166.233.5])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2022 10:48:29 -0800
From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 10 Mar 2022 10:46:52 -0800
Message-Id: <20220310184652.1596373-1-sudheer.mogilappagari@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] ice: destroy flow director filter
 mutex after releasing VSIs
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

Currently fdir_fltr_lock is accessed in ice_vsi_release_all() function
after it is destroyed. Instead destroy mutex after ice_vsi_release_all.

Fixes: 40319796b732 ("ice: Add flow director support for channel mode")
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cd898af3f6b5..61ad9622f8ae 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4870,7 +4870,6 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_devlink_unregister_params(pf);
 	set_bit(ICE_DOWN, pf->state);
 
-	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
 	ice_deinit_lag(pf);
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
 		ice_ptp_release(pf);
@@ -4878,6 +4877,7 @@ static void ice_remove(struct pci_dev *pdev)
 		ice_remove_arfs(pf);
 	ice_setup_mc_magic_wake(pf);
 	ice_vsi_release_all(pf);
+	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
 	ice_set_wake(pf);
 	ice_free_irq_msix_misc(pf);
 	ice_for_each_vsi(pf, i) {
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
