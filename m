Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7E877D753
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 03:07:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75AE641BA2;
	Wed, 16 Aug 2023 01:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75AE641BA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692148050;
	bh=jKbTcQeqhjCI4AHebLM3y/VlVHesmajL/wRT2iUixgM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ChRP6pov7nJVnAB0ScMysfYDrgPUVUnLNUuJWHQuIenLO3FO6hetd5WQC/QKmgCw4
	 Y7W/MSS8shIshkYdZkKhfcxKmiL/SJQwnBnhU+U+bEtXrtO8Ik/5i3orVoidbn8czE
	 OAC/N2WIeLiHl37sfeiCII8bDayR0e5gN5L1fexlTZOz2ryW/97NN6f2/tOXYpXPS/
	 CD3SpdrzeudEKeLWC1AFBRufvui+ELNlwZ2piIDXQPH14reZIrpkKKq/VoDrsQ8eqt
	 irW+PMyqCSHbAFRZQvb5oHpp4SffzHtLah0oez9m3+4OFpDimScDN6sLZK21aa6Cyj
	 EnTGNuiE4QQzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qX7r3V_AivrJ; Wed, 16 Aug 2023 01:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFA6041B93;
	Wed, 16 Aug 2023 01:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFA6041B93
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E0E3F1BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 01:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A92460A61
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 01:07:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A92460A61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 02MAF8DnsCrV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 01:07:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56F53611FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 01:07:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56F53611FB
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357388353"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="357388353"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 18:07:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824049531"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="824049531"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.102])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 18:07:13 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 15 Aug 2023 18:07:04 -0700
Message-ID: <20230816010705.1360446-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816010705.1360446-1-jesse.brandeburg@intel.com>
References: <20230816010705.1360446-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692148035; x=1723684035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vBmkRCSVF/PHpCQ2VfAIrsvVKjc0Tn2l7pWgcVt22JQ=;
 b=j7240BGoVHbbU2ZyWjvyCq4Dg9WsfaMCKab88MOA6X1G6yqWysjFpOHP
 yzwXKsFpVFcgEzy50TKj8q4OFEPOtSZeSfdbi1rFtqEaTnczmk2keqwS2
 0HqCUj+KSEw7erzQgf+8luXoQ2IQyxZZoqPCP6/u6xgFuSYYsH5zoLB9R
 OCC5C0F9s9CmfZNtkusX/3npIlvy3/JSRrrYFxLViE6u2pm6A2Y/n3+TI
 aWb/87SSrCycunydz/gqjnk+v1xwEW3jfU4j0o73rr8vSyGEIkRKryFpH
 VpmVOqYadFc+WQ3Won4nc21tSnvqKY+YKdfJy6ChskCn4uCkYeuKlCSx7
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j7240BGo
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] ice: refactor code to
 remove unused variable
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Upon review it was noticed that there is an unused local variable that
is using another unused define. Remove all the unused stuff from the
function and header in question.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_gnss.c | 5 ++---
 drivers/net/ethernet/intel/ice/ice_gnss.h | 1 -
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 75c9de675f20..026bfa71204f 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -85,7 +85,6 @@ static void ice_gnss_read(struct kthread_work *work)
 {
 	struct gnss_serial *gnss = container_of(work, struct gnss_serial,
 						read_work.work);
-	unsigned long delay = ICE_GNSS_POLL_DATA_DELAY_TIME;
 	unsigned int i, bytes_read, data_len, count;
 	struct ice_aqc_link_topo_addr link_topo;
 	struct ice_pf *pf;
@@ -149,11 +148,11 @@ static void ice_gnss_read(struct kthread_work *work)
 		dev_warn(ice_pf_to_dev(pf),
 			 "gnss_insert_raw ret=%d size=%d\n",
 			 count, i);
-	delay = ICE_GNSS_TIMER_DELAY_TIME;
 free_buf:
 	free_page((unsigned long)buf);
 requeue:
-	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, delay);
+	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work,
+				   ICE_GNSS_TIMER_DELAY_TIME);
 	if (err)
 		dev_dbg(ice_pf_to_dev(pf), "GNSS failed to read err=%d\n", err);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
index 75e567ad7059..7a35903d619c 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
@@ -5,7 +5,6 @@
 #define _ICE_GNSS_H_
 
 #define ICE_E810T_GNSS_I2C_BUS		0x2
-#define ICE_GNSS_POLL_DATA_DELAY_TIME	(HZ / 50) /* poll every 20 ms */
 #define ICE_GNSS_TIMER_DELAY_TIME	(HZ / 10) /* 0.1 second per message */
 #define ICE_GNSS_TTY_WRITE_BUF		250
 #define ICE_MAX_I2C_DATA_SIZE		FIELD_MAX(ICE_AQC_I2C_DATA_SIZE_M)
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
