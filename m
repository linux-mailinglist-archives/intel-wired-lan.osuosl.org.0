Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2538F624BED
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 21:35:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99E17405E7;
	Thu, 10 Nov 2022 20:35:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99E17405E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668112511;
	bh=nEm2iyNSeFmBe7wLIU73ME66QGQTw8ssh18YtzRbTMo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=EH0KsowCujqmTZpBST1u7rgAnD2XBR9ielnsKMkh2JkDBvy9eotxwxbAEp0Jsskws
	 j86uO4CCO1mpsvUlEaFV1CTPq/nKZZprL+ahmJg2C+eKaWnE1TbO8xjsUcpdiozXBU
	 P/gyUGBTJ03zKHAUuXLtoXug8cD0gBxj8kWQ9loujD4ppJhB9dTRALC3/BHKh2gLiI
	 9FsKuDs+0vk+Eqlf3V+KxFhtlqciCvhFUUQYMvXJWBbANaSwbbtw5jWF0OUtom+eFi
	 PrW0T7EC/CWu7+iREmI1fcRypsY4nr654N3249GcCOg1jF7Oy+j6GA2Rq3XBavt/VB
	 L65F7Dl52EkRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3icR1tploWQH; Thu, 10 Nov 2022 20:35:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F3C340457;
	Thu, 10 Nov 2022 20:35:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F3C340457
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5479B1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DFBE4049C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DFBE4049C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k5xzm0GcqZuL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 20:35:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53F8240457
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 53F8240457
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 20:35:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="310153199"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="310153199"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 12:35:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="966564401"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="966564401"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by fmsmga005.fm.intel.com with ESMTP; 10 Nov 2022 12:35:02 -0800
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Nov 2022 15:26:47 -0500
Message-Id: <20221110202649.738026-1-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668112503; x=1699648503;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oXw4jW+0ndxxoSyGyPSbcrjhlrKdOW8+9mi6wPuFBBw=;
 b=IQHKxqO6iKhgAEK9V+cr8rwyDmfppD+tRypqwHhAXqmqwxAY2tCIYeGc
 /4CicEslmla1tP2NJCUXo2mcoV85AfF+IQOdL4ZVTmpwNgKCI0Znj9qEt
 iZvcdkV1Ha8u6vMxyEuzTyOteGRUC7dFTrGg1WSzzkjhSRFNNvbHrux7y
 QZR/6rOGLQg4WaXL+6W/11gBqbcWOVuIwG0yfX2h1v+Ri9AW1w3bR8G+J
 ZkkvZZErOd8pK9oAJjHQDgQdp6lLHRw7iF4U1Y/qxCePdaWPJwjsPK2W7
 GFL7OodPnAxkG8vmXAnuLTYOh4lnPugfFjO0Lb8gXjgD/ZytNSmrHlXKy
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IQHKxqO6
Subject: [Intel-wired-lan] [net-next,
 v4 0/2] Accumulate statistics over reset
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Resets happen with or without user interaction. For example, incidents
such as TX hang or a reconfiguration of parameters will result in a reset.
During reset, hardware and software statistics were set to zero. This
created an issue for the user where a reset happens in the background,
statistics set to zero, and the user checks statistics expecting them to
be populated.

Accumulate statistics over reset so the above doesn't happen.

Change is divided in two patches:
1. Accumulate HW and netdev statistics over reset
2. Accumulate ring statistics over reset

v2: Fixed styling
v3: Allocate statistic structures when XDP is enabled
v4: Added revision notes

Benjamin Mikailenko (2):
  ice: Accumulate HW and Netdev statistics over reset
  ice: Accumulate ring statistics over reset

 drivers/net/ethernet/intel/ice/ice.h          |   7 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   3 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 263 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  98 +++++--
 drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  40 ++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  18 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  25 +-
 10 files changed, 414 insertions(+), 64 deletions(-)

-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
