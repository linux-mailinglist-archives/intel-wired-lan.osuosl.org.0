Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350736DB132
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Apr 2023 19:11:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B360E40981;
	Fri,  7 Apr 2023 17:11:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B360E40981
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680887467;
	bh=gLoCOaSRWz5d/c511UXhPsYNQSWVutfysUjLdygociA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HDAAD3KQVSKBqYOXV+voupaG+QKJ2dQD+SK4DWZ5nXZyp2mFw4ZCw3KPxLB8vAUiu
	 Vvjx9cgbz3DxKvtq2t5qq0VRiIlq+BlZBa+zAWBZxaqRU2JRH7TQK9UNLMeWr8wzhk
	 rO4euZBiPZdKQWZGIMRkvaeCjy5WsJM4fJMaTY6twoYIHP4lzWK5JcjNQfr3Z+P59j
	 zWve8d/37pwa5pL4rNe0QIPjf4hLQZEa97lfEDEzRCrtumFisy21b4LLKpeYgbLTyD
	 AlzjmANjc/MU2CmXr8hLLFHJuwvlaOB0feh1m9WVcJyCj5D9yet0V5EGRnWelurCCx
	 IXew5hMZC6jKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YBLpUTHNjogL; Fri,  7 Apr 2023 17:11:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 937FE40298;
	Fri,  7 Apr 2023 17:11:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 937FE40298
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 427E31BF293
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 17:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19FA8613E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 17:11:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19FA8613E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id drN506ulWqg0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Apr 2023 17:11:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F31C7613E0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F31C7613E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Apr 2023 17:10:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="344805695"
X-IronPort-AV: E=Sophos;i="5.98,327,1673942400"; d="scan'208";a="344805695"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2023 10:10:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10673"; a="687569913"
X-IronPort-AV: E=Sophos;i="5.98,327,1673942400"; d="scan'208";a="687569913"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga002.jf.intel.com with ESMTP; 07 Apr 2023 10:10:57 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Apr 2023 18:52:14 +0200
Message-Id: <20230407165219.2737504-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680887460; x=1712423460;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+IXhH56OTcDrSCGEz9GXnnpL4E0FkATToH9bEY3nt1Q=;
 b=BYp0DHIGtmBQDMCgO5rY8Tw6HwvJ3q7GxDvP0c/PkZ9mxfOrr4//IzpA
 3V/IKibFWgVOe2QId3uuhbakZJVkgUJ6Y7ZuE07S/qLp1Jx5W9fTmWytr
 RpUUqsrBVoFquBZXlgKfU3LtfFMcN1EZZFi/p3v87knz8EF5DFeBzlkg/
 HZey9Q600wSsOIyO4N/vaauCRGkURBCI5KmfnigACf+uMbJqlcsVfUg2r
 Fc/LKRd8sf5BZCMYNCqE0xGkBxms3lPZYfz1vV31dZRtLMwWkQMqzDK6X
 jdFOb3QY1YHes6dAY/OTjsKng3uV3kzvRJG3Mr5iIG/01DvD86A/EUtwN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BYp0DHIG
Subject: [Intel-wired-lan] [PATCH net-next v4 0/5] ice: allow matching on
 meta data
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This patchset is intended to improve the usability of the switchdev
slow path. Without matching on a meta data values slow path works
based on VF's MAC addresses. It causes a problem when the VF wants
to use more than one MAC address (e.g. when it is in trusted mode).

Parse all meta data in the same place where protocol type fields are
parsed. Add description for the currently implemented meta data. It is
important to note that depending on DDP not all described meta data can
be available. Using not available meta data leads to error returned by
function which is looking for correct words in profiles read from DDP.

There is also one small improvement, remove of rx field in rule info
structure (patch 2). It is redundant.

v3 --> v4: also based on Alexander comments; link [3]
 * hole in ice_adv_rule_info {}, but logically segregate
 * fix cosmetic tabs vs space etc.

v2 --> v3: based on Alexander Lobakin comments; link [2]
 * add patch 4 to get rid of anonymous struct initialization
 * few code style changes
 * rename ice_is_rule_info_the_same() and add const params in it
 * avoid holes in ice_adv_rule_info {}

v1 --> v2: link [1]
 * fix spell issues
 * use GENMASK to define source VSI mask

[1] https://lore.kernel.org/netdev/20230331105747.89612-1-michal.swiatkowski@linux.intel.com/
[2] https://lore.kernel.org/netdev/20230404072833.3676891-1-michal.swiatkowski@linux.intel.com/
[3] https://lore.kernel.org/netdev/20230405075113.455662-1-michal.swiatkowski@linux.intel.com/ 
Michal Swiatkowski (5):
  ice: define meta data to match in switch
  ice: remove redundant Rx field from rule info
  ice: specify field names in ice_prot_ext init
  ice: allow matching on meta data
  ice: use src VSI instead of src MAC in slow-path

 drivers/net/ethernet/intel/ice/ice_eswitch.c  |  84 ++-----
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  14 --
 .../ethernet/intel/ice/ice_protocol_type.h    | 197 ++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_repr.c     |  17 --
 drivers/net/ethernet/intel/ice/ice_repr.h     |   5 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 232 ++++++++----------
 drivers/net/ethernet/intel/ice/ice_switch.h   |  13 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  34 ++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   3 -
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   8 -
 .../net/ethernet/intel/ice/ice_vlan_mode.c    |   2 +-
 12 files changed, 351 insertions(+), 259 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
