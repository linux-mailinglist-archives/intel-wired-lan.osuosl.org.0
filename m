Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2981786B445
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:11:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE25140809;
	Wed, 28 Feb 2024 16:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ccLa4KLDnUoD; Wed, 28 Feb 2024 16:11:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F33F641497
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709136682;
	bh=hfuxi8bVlgWbcMzLEZSPvEMkWRh0UiZWU1oOY//I/Ls=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HXqc9rrGQRCZxPzV0uhLD/9iRzcy4wkGEwjLN+zdLBBkY+i1ZEXCMq1kDKopvNvLc
	 e8iElt+TJHcTjvkrM0R3zQWG2CsjvkCr8lqHTebtBfNdWSeswRihuFN1niAqx0lH7R
	 a/2TofeJMKFZt3DkZAiZW6tV//K7HTFxd+05D9KENu3GQbuOJbcoQP+LkwzREgjmvZ
	 RlJmCwlsQN/8dPClXfHkbCaoFPKCt4dJq7RQaHbt4dRT9Lws7hsCL0se26kVRTVdW7
	 ISnU99B6eMAWRenM5aTIFX4y4hI7mh2T/UhIjgZdxRcesc6ozWneTz6iEjVSOJZUVR
	 gq8UCJ1HUWQ2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F33F641497;
	Wed, 28 Feb 2024 16:11:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C5511BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14A86409F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQ7WkFCLYShM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:11:18 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 28 Feb 2024 16:11:18 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4E7294052E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E7294052E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E7294052E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:11:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3706563"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3706563"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 08:04:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7527674"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 28 Feb 2024 08:04:07 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A506936820;
 Wed, 28 Feb 2024 16:04:00 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Feb 2024 16:59:44 +0100
Message-ID: <20240228155957.408036-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709136678; x=1740672678;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HmhSwJzywo2VHhaxf4zsr70ZyAx8N40+pr9JK+rKZj4=;
 b=dbKqryEJzQWKRx0ICji6avsgDaafzzjsB9zwjED6JCAHW84nKToMeyy2
 EeWqlfyDSrzNcdvltWPo+Ihh2x1DqnxpbGbjaBwXbPXcjkh/sOKZq7Zwg
 5VZ4SgQX6Vp4YJgjEEXJ2ipzRI1x3v/nF87U7vFcJ/PruH2NvUHKd26LV
 BMrpYzB5c9YywMfTPJ94Oul+qXXZXqtlO7PDxR+sHqG6gbo9LKsrh8ZhN
 2m1kI2kV0zUxldu8xIjsbHQTLrqRCEDq5jNCmUj3dB+L2BqJOE/5Vpnog
 VXhXuXGAm/I6X6IVqCrh+53eODz51emQlyrUWboq1I3jUE7nKpq8vQ7nu
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dbKqryEJ
Subject: [Intel-wired-lan] [PATCH iwl-net 0/5] ice: LLDP support for VFs
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow to:
* receive LLDP packets on a VF
* transmit LLDP from a VF

Only a single VF per port can transmit LLDP packets,
all trusted VFs can transmit LLDP packets.

For both functionalities to work, private flag
fw-lldp-agent must be off.

I am aware that implemented way of configuration (through sysfs) can be
potentially controversial and would like some feedback from outside.

Larysa Zaremba (1):
  ice: Do not add LLDP-specific filter

Mateusz Pacuszka (3):
  ice: Fix check for existing switch rule
  ice: Implement VF LLDP RX support on VF
  ice: Implement VF LLDP TX support for VF

Mateusz Polchlopek (1):
  ice: Add function to get VF from device struct

 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_common.c   |  26 --
 drivers/net/ethernet/intel/ice/ice_common.h   |   2 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   6 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  83 +++++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   4 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  58 ++++
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 252 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  26 ++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  11 +
 13 files changed, 439 insertions(+), 40 deletions(-)

-- 
2.43.0

