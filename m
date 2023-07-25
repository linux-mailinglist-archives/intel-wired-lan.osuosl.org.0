Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7327A7624D0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 23:51:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE6D241915;
	Tue, 25 Jul 2023 21:51:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE6D241915
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690321863;
	bh=kBYhSiwpBdV+kaetsVClCbUg6U650Etgbn31p/p5n8Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RSFofQbvYMElzXFuTD41XmKRmsMUxbnqPaohj+MHOyFSqIg0eUIwsOdbDgFjjC+Fd
	 Dya1nuDhDlSFyzZNvBp3T9WNUczd1IGdxxJ+LlKUEasTz1q9SBxh9IFIAsYB/2SMh5
	 KeBA6dUgGSVV2KngOjJONyWcn4Nym6SVs/SOBAxlOtGHPbICHMVRjgYldhCCHgiigs
	 ZF/BBk4JBq489Admn7imXw/XohCoHAtdfDX5L0CTbc5SwaXz0bamQX7l6SKh2j0gpz
	 afHgBunksSBTonQipVv5jfO5madnzJyelEqDoay/SxgVJJtKw3p8ZBWwRxm8DU8rMz
	 azXh9KS2b5DBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WS2eGHlgPP0k; Tue, 25 Jul 2023 21:51:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB49941833;
	Tue, 25 Jul 2023 21:51:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB49941833
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04A931BF47A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:50:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C363B41907
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:50:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C363B41907
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZVoTeXYhIA7M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 21:50:55 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B26BB41833
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:50:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B26BB41833
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="367879186"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="367879186"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:50:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="796290015"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="796290015"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:50:54 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 25 Jul 2023 14:50:45 -0700
Message-ID: <20230725215048.1311584-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690321855; x=1721857855;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aGPxYuvUHtJi4R4T4m/mghzIrp+cW0tuGPNXJaUwY54=;
 b=E+qJoyPBA9ToByC7UL/kPnLJYzPZXlOKwVN/Oh/Gpi9uBJmyvYhOL1O9
 AvNBbUMkw5Lfq9EgAEfbGuxc80Mp0sDbxAUKIPzHfN1eHOMfi+E6eA6Ub
 PZOm6vlDrGGbXJLrnz04dnhZBOT/JJoDtBaQH0fYpHrcV50t3OhqttXTI
 MokJzPfRi/WQE9spqMXNMx+lh8vsYa82SnhPpBK4TiE4OMrQRiXQAvsc/
 0diKohYGwwbyNW0pL0dXo+aDOhaZ+mqENUp+mBNXFQibOA0YiFTUt6LqB
 szXEHMqpqCFxgkGR8fNSIca3fqRmWAt6HISt5jAY8wXnXGUSosHKXT4iy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E+qJoyPB
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/3] ice: implement cross
 timestamping for E823
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series fixes and enables cross timestamping for the E823 line of
products. This product line is very similar to E822 devices, but has a new
requirement for cross timestamping to function.

First, Sergey has a patch to cleanup the timer commands to include ICE_PTP_
prefix.

Second, Karol has a fix to ensure that we retry acquiring the hardware
semaphore a few times before giving up when requesting a cross timestamp.

Finally, I implement the E823 cross timestamping, fixing an issue where the
timer command register was not programmed as expected. Without the READ_TIME
bits being set, E823 hardware will not capture the device time.

Changes since v2:
* use ice_ptp_src_cmd() instead of ice_ptp_clean_cmd() in the cross
  timestamping function.
* drop the patch introducing ice_ptp_clean_cmd() as this is superseded by
  the correct fix that resolves the stale commands issue for both the main
  timer and the PHY port timers.

Jacob Keller (1):
  ice: Support cross-timestamping for E823 devices

Karol Kolacinski (1):
  ice: retry acquiring hardware semaphore during cross-timestamp request

Sergey Temerkhanov (1):
  ice: prefix clock timer command enumeration values with ICE_PTP

 drivers/net/ethernet/intel/ice/ice_ptp.c    | 51 ++++++++----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 92 ++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 12 +--
 3 files changed, 87 insertions(+), 68 deletions(-)


base-commit: 627821f47a1511824efe734a786cbf1454685c81
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
