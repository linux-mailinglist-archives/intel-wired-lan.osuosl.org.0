Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052C57068A8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 14:53:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 307EE4168C;
	Wed, 17 May 2023 12:53:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 307EE4168C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684327984;
	bh=kowa/ShZg7BbN8tcnmU3PVjyd/3NofTNwhQv9dLFnSc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=klZaiuN7BpchCQhMhKux1jjkvdDlxMyzpnHbWBMZ0sTOLN5SxltQjUolJJfiil4vR
	 5fZCMs/hcfY8XCqSnQ3oym084z609C/5sO2YbcS1CZpwex88WTNLjUauTr6P49d2kd
	 p8i2zjMFYhiZrvxG7Q1SfHGKlt9+u4tpZB4QI4dqiadAd68yFyt096YnPsXQh58Ezv
	 yWeUqQDz1U8jAOpLI9CqOp2A36VhWbFqA7owAMOiIBNuAGMfGoraD+eo2pjRb1Pgzl
	 DxsRF3uLb/1fDEsnPq/0z5nTt2zHZZPa6l0O8Z9D1AgkKj3ReINd9nandfFcUHFCOZ
	 W3288jXl4VlSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kHYX07VmYHYf; Wed, 17 May 2023 12:53:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B03540499;
	Wed, 17 May 2023 12:53:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B03540499
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4BB11BF489
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 12:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8CBA7610CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 12:52:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CBA7610CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xdY6UsyF1eWM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 12:52:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB7A860EF2
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB7A860EF2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 12:52:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="351769823"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="351769823"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:52:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="652225126"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="652225126"
Received: from pgardocx-mobl1.igk.intel.com ([10.237.95.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:52:54 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 14:52:45 +0200
Message-Id: <20230517125247.331227-1-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684327976; x=1715863976;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O+oOCYnasprC8Iky8XeaxvbsXY4ER1JTeAFIIiAhOLA=;
 b=CfpCnyOquczw2FOmUR29V53jnPNFS7xJ+3PXkiRgdofS+oTOm73WfGUt
 EUOyyDZTLdhDR1jPAKysRCqdGkAW3X6hLJMlXwCAWU/4mny6gpTcwvHJj
 4TvNkP9fOJhymjEUnWHFUigSB6v6c3e1Ce8kgL453jsNX74qnUy/F+Sn9
 yr1cHfhyPQIu6xyQFgrb6f5zmusuhuxa7PAR8uazZu1esA++B64+xNIuN
 EgH92xk09aIromWCvRRm58W017h4J0KFhcRiiC3punQuGd1/fqbU6Rcp4
 2RNZjpbhw+pLtPmqx2nATsQlf6UfEk2MZSExD042dZzoyULEuccKqE+Ou
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CfpCnyOq
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/2] iavf: cleanup procedure
 for changing interface's MAC address
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
Cc: przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset cleanups .ndo_set_mac_address callback in iavf.

The second patch addresses potential issue with iavf_add_filter function
failing to add a new MAC filter to the list. However, it does make
an assumption that the new MAC address is different than the current one.
The first patch protects from this issue by skipping the entire procedure
if the MAC address doesn't actually change.

Without these two patches iavf is sending two AdminQ commands to PF driver:
VIRTCHNL_OP_ADD_ETH_ADDR to add new MAC filter and VIRTCHNL_OP_DEL_ETH_ADDR
to remove the old one. Even though it does not seem to cause issues, it is
very error prone. Skipping these callbacks is more reliable.

v2: added missing Signed-off-by and comma in second patch

Piotr Gardocki (1):
  iavf: add check for current MAC address in set_mac callback

Przemek Kitszel (1):
  iavf: fix err handling for MAC replace

 drivers/net/ethernet/intel/iavf/iavf_main.c | 48 +++++++++++----------
 1 file changed, 25 insertions(+), 23 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
