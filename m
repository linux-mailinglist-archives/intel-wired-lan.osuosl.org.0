Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F63618B06
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 23:02:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42EA640519;
	Thu,  3 Nov 2022 22:02:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42EA640519
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667512942;
	bh=OMElndwcg80yXA7rd5oUhrAS/D08DtgZJXwEz8aBVYY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yxiwy2NILEitB5P//mssC3ftQqNRC5Ef1tsw1qLEe/Da+aH3uD9QHALOuX2iYzm7P
	 u2RWNc7I4CsHMIX+uSm5oEhoidjxNeE3W0D7S3dXBW6YuS8cgwVJQiHVysm3Okjyz5
	 RhnhStT9DLjyj/vAKgIKxsYJxTAO15YEwaQRlKF7N55P9iW8xZu5oZV2kZ8g7qS71e
	 Z4LU65dJUrE+JWu0wMTZW49lCKAZEPSRlAHHnBEmKbRFKulPK7MrQUDIxyv05gXFBt
	 qfHHn7uHw0N2SV4hNO0EsIC8ZZdC2+m+y6UxJ7tmVQGIm1cqygsrG0e8a6j2spuWNc
	 HW6iHdPwhu9gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BV80wQz7Zv9m; Thu,  3 Nov 2022 22:02:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A9FC40520;
	Thu,  3 Nov 2022 22:02:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A9FC40520
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D32541BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B28FB4183C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B28FB4183C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PfbgoKNrVhI3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D64E141852
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D64E141852
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307436997"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="307436997"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:02:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777480309"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="777480309"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:02:00 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  3 Nov 2022 15:01:45 -0700
Message-Id: <20221103220145.1851114-16-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221103220145.1851114-1-jacob.e.keller@intel.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667512920; x=1699048920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ypIpVVHbGiZYOcZvXnM9wLjT1mYOWZhRPzN21y4cOPU=;
 b=RGUVqc43/UjhvPUhCCLpeqixTNABFkRF4aJNiLSfIbRR7scKQI1m4Y1r
 QlsIDF1Qlqo05V8KxC2+KHHuK9Vc0nVN5FqEVGcGWu/BcfOOkSLYhnbz7
 16Q5EygzjaWm62dnJlEioWlyiJc0twDuJOxoNWefdrQ2M+/0iefFl/N3m
 xBBGKt5a1izJLWvSVY85bFTsXYQkx60V+aNBROxECr1UKny9pkdqwhUK8
 xzvlb6ozgB4b9BZvuO1D7/ihbz9ePjHyjJdNk83fxv77KcY5W4RIuACnN
 W2nUs+7XIPCnw7dIdBDgssviNb9YFyTtEPIsFEzoS01siSkWMvYKbL3Au
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RGUVqc43
Subject: [Intel-wired-lan] [PATCH net-next v2 15/15] ice: reschedule
 ice_ptp_wait_for_offset_valid during reset
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
Cc: Siddaraju DH <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the ice_ptp_wait_for_offest_valid function is scheduled to run while the
driver is resetting, it will exit without completing calibration. The work
function gets scheduled by ice_ptp_port_phy_restart which will be called as
part of the reset recovery process.

It is possible for the first execution to occur before the driver has
completely cleared its resetting flags. Ensure calibration completes by
rescheduling the task until reset is fully completed.

Reported-by: Siddaraju DH <siddaraju.dh@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
No changes since v1

 drivers/net/ethernet/intel/ice/ice_ptp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 42b39b867606..810615272f92 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1245,8 +1245,13 @@ static void ice_ptp_wait_for_offsets(struct kthread_work *work)
 	pf = ptp_port_to_pf(port);
 	hw = &pf->hw;
 
-	if (ice_is_reset_in_progress(pf->state))
+	if (ice_is_reset_in_progress(pf->state)) {
+		/* wait for device driver to complete reset */
+		kthread_queue_delayed_work(pf->ptp.kworker,
+					   &port->ov_work,
+					   msecs_to_jiffies(100));
 		return;
+	}
 
 	tx_err = ice_ptp_check_tx_fifo(port);
 	if (!tx_err)
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
