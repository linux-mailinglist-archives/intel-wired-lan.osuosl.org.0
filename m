Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC35C73E1E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 13:09:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDF8F40F59;
	Thu, 20 Nov 2025 12:09:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i5rhtoxHLE9i; Thu, 20 Nov 2025 12:09:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B8964116D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763640541;
	bh=Ax9KOk6nrV4IhW5cykaZr9N12OOqtSPiq+qdq9VwURs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mJsKec1+PkRe/GJeI2KQVzJso8m9NzBIvYEZAn5C+KGTm5OlOW46TO+hPQ9f6U1rS
	 QmXD/2kxaLa5gGXAZbb+V2yJo+gPi0OVenbxK4y1x+pDhxj7q11cwQdWeM1suB/DVc
	 hAvTK8HoD8j78H/ME+t6/iyhWT9AmRI4gFt74w3RknW1yimv7KcAnQaHTLNbufG1kE
	 uEXvb4bbsF4kPbpEkCdehnYLAlKQxfQzVZ/hi3nJs9fmV3whXFBGN1QdClaKejSKHs
	 8vzS5rW7XRNOpjgDW83w/DYyMl4h8kOLj/zakja4/sB6bePh2pamfDptLu1H7R9BXY
	 Z5qrCxCEs/PIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B8964116D;
	Thu, 20 Nov 2025 12:09:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DEC65158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 12:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD612608C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 12:08:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E5vQg_N-nbf4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 12:08:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DDF796089B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDF796089B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DDF796089B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 12:08:57 +0000 (UTC)
X-CSE-ConnectionGUID: 9Kb+p0+7QqGSfgl0z/kqEw==
X-CSE-MsgGUID: rJLNmUzxSV+Mu/hzOI0f4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65599810"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65599810"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 04:08:57 -0800
X-CSE-ConnectionGUID: GgQhKsAqQJyAfeJ8AKhLMQ==
X-CSE-MsgGUID: FP8kXtrLQdW+Eo5llxQphg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="195485157"
Received: from pae-d-dell-r7525-263.igk.intel.com ([172.28.191.240])
 by orviesa003.jf.intel.com with ESMTP; 20 Nov 2025 04:08:55 -0800
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Nov 2025 13:07:28 +0100
Message-ID: <20251120120750.400715-2-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763640539; x=1795176539;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ngJsEfYjg8B/DGcvuWFHXohdm36j18EsWZbz8HmumaY=;
 b=eYE5VV3QN3VznJJ5zTIUplbggsARN/TSDjcfi+XqzDc2A2mBSmAzl9yP
 N4CQu0X/gtdFuVrLG5C9Sf3aqCXnhXYaxuai/BsaJsqoTNm+1xDBkLyfg
 li4INLXhQME/pzyE+nc7X0ZB9UE+RqZCZoI+J3JqZLTSBuAyUTOWdVDIv
 WdMLdnbmEoCROtfdStmjThLXCoWJvvyeY3XmTaWqDOVCb2DA/uYWaV0H4
 vn+Sfum1IinGLrdWOy7/WPF8bVBj/6g/o1zJb0tCt5qQZhBO7O8D5Ua1E
 TNG8yN/Yp5QB/fGtiw4fKjgBCoR3acSw3V2wjuuNjsg6wOoCr46JJOk7j
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eYE5VV3Q
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: fix scheduling in
 set_rx_mode
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 "Korba, Przemyslaw" <przemyslaw.korba@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add service task schedule to set_rx_mode.
In some cases there are error messages printed out in PTP application
(ptp4l):

ptp4l[13848.762]: port 1 (ens2f3np3): received SYNC without timestamp
ptp4l[13848.825]: port 1 (ens2f3np3): received SYNC without timestamp
ptp4l[13848.887]: port 1 (ens2f3np3): received SYNC without timestamp

This happens when service task would not run immediately after
set_rx_mode, and we need it for setup tasks. This service task checks, if
PTP RX packets are hung in firmware, and propagate correct settings such
as multicast address for IEEE 1588 Precision Time Protocol.
RX timestamping depends on some of these filters set. Bug happens only
with high PTP packets frequency incoming, and not every run since
sometimes service task is being ran from a different place immediately
after starting ptp4l.

Fixes: 0e4425ed641f ("i40e: fix: do not sleep in netdev_ops")
Reviewed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index f3b1b70d824f..a1b600ab0397 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2234,6 +2234,7 @@ static void i40e_set_rx_mode(struct net_device *netdev)
 		vsi->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
 		set_bit(__I40E_MACVLAN_SYNC_PENDING, vsi->back->state);
 	}
+	i40e_service_event_schedule(vsi->back);
 }
 
 /**

base-commit: be983dcd591c53cb76f92448afc61f91fd7c5fe7
-- 
2.43.0

