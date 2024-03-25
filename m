Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 616BC88B2C7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 22:30:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C958D81992;
	Mon, 25 Mar 2024 21:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S5hfvzL3Mpcn; Mon, 25 Mar 2024 21:30:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFBF781B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711402207;
	bh=ePK6vKFozJ2e/6Y7s1ANMPkdRbhJqEqs4rerMvMN/PY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nin0Em3wcBjDbhEsoBzbMSkKcTh5d89+Pec8j15PxwCIajPcTHeR0P9YT1GvR2caF
	 qsoudrQfr9/VsBkB/jm0M/mCxFRSQR13D0ZcW5xhWTBaEg/q+JPgDF009/Zs8hCyHw
	 cr2/yNo79nIVVlyU0w0jhrNSNEzvlH0gah6mU3gtVWMOVXruO1iq/nK1o6vhz1PFg+
	 TaoXpfwn0BtTv7BNxNwzbxgCzG3GxSK0ZlKLxNivKS9ggSoeLeF1PE4vxzrAoCMS8X
	 z/ahChGQpNWcBqlnLSjg5eoHyr3yregpK6a/xdfESJPtGxOHWxC4gFIC9c88ZpOYGq
	 i9SFznhqd/+JA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFBF781B3E;
	Mon, 25 Mar 2024 21:30:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC92D1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D743F406D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DtPdQYUMjb2z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 21:30:03 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6C4514068C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C4514068C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C4514068C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="17064528"
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="17064528"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 14:30:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="15713486"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 25 Mar 2024 14:30:01 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Mar 2024 22:34:30 +0100
Message-ID: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711402203; x=1742938203;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/Bd6vxdtyq3zft5yO+WJmpzkDTTeKM+H/KmaCrAq7rU=;
 b=UprZTG5eisaY2iPUU0W8ZuiEwZVUmAzjNlc26l6/zgn00VgwmsKd5ec/
 Re9Vii61ovYHX32iNSszdvtgFNA62gjvjcZT2Z8B4Y50BUTmrkMNm0ygb
 JQiOegJOJQM5Jny1+AQdYMqw6+GokMUV6E0sxwXq+4I6NQAbOUMxGtNKq
 m6rO/0JvfgvXtw1ry2kRUeVsXHT3wv7Dd0jW9OKC5vgUOXbWNWEo4d5l0
 lDAcsyoJlBhZJ8w7eDOhGrQV0dEk5yY+eWD8jtLpVCRujVcJMZ25D+rq0
 MMADO+LJ3uj5h8QIMA7Uhl4RfP0GllsWggU2IJNrX6XSxfkRJjsDiWxDy
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UprZTG5e
Subject: [Intel-wired-lan] [iwl-next v1 0/3] ice: devlink cleanup
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
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This is a prework for subfunction patchset. As Jiri suggested I moved
only devlink related changes to the new patchset. The whole previous
patchset is here [1]

There is one patch that is changing how devlink lock is taken during
driver init/cleanup.

[1] https://lore.kernel.org/netdev/20240301115414.502097-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (2):
  ice: move ice_devlink.[ch] to devlink folder
  ice: hold devlink lock for whole init/cleanup

Piotr Raczynski (1):
  ice: move devlink port code to a separate file

 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 .../ice/{ice_devlink.c => devlink/devlink.c}  | 457 +-----------------
 .../ice/{ice_devlink.h => devlink/devlink.h}  |   0
 .../ethernet/intel/ice/devlink/devlink_port.c | 430 ++++++++++++++++
 .../ethernet/intel/ice/devlink/devlink_port.h |  12 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     |   3 +-
 10 files changed, 471 insertions(+), 450 deletions(-)
 rename drivers/net/ethernet/intel/ice/{ice_devlink.c => devlink/devlink.c} (78%)
 rename drivers/net/ethernet/intel/ice/{ice_devlink.h => devlink/devlink.h} (100%)
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_port.c
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_port.h

-- 
2.42.0

