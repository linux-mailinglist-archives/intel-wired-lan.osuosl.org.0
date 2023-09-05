Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2527792DBC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Sep 2023 20:50:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 430C381F0D;
	Tue,  5 Sep 2023 18:50:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 430C381F0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693939837;
	bh=0WB4+/2wrir5x9K0efGjZREU52ClTortB7Z2QauN6wk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PRBpNX61Z6Qpi2pD+Oqn5WjlhnQhLRlYXXMSzs/JIUiGJb5N6iDPYcn3rEVW/IP0P
	 h2HGspza3J627UTh0SeI+ysRdbROzortdiJNYWdmnLG8G9Bljp9VMGApDLphxQOXc0
	 ItPGPZy7+mYXitCTf4vYQuZZ3HkNxluuWPi0J/knTIW6bYtXs6Qwi+xo6XGLL7+NR8
	 8UThK+klKAbhktPLC7y2NWVnROUOO2f4fS9Z7O8Qq0KEeukmvEdle0RJ58ESXpo/eL
	 /0sVBnaC5K+kQ8pI1ajdqfBj4J6IDPVlDr13rtsz8xne5yos9N+qpBdM9YepwUccN4
	 a/bibnPQQw2FA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IcMGzjFu81LT; Tue,  5 Sep 2023 18:50:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C00C809DD;
	Tue,  5 Sep 2023 18:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C00C809DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C732C1BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:50:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC04660BFB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:50:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC04660BFB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id anP4hvDNpp0a for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 18:50:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 68BE560B69
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:50:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68BE560B69
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="407870934"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="407870934"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 11:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="884411868"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="884411868"
Received: from nsnaveen-mobl.gar.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.34.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 11:50:18 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Sep 2023 12:50:16 -0600
Message-Id: <20230905185020.3613223-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693939829; x=1725475829;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s2NEGZbRxC5TYIMgceBf2TWuLEBe8MiTFOySHsbrmKg=;
 b=mmLyoVk+kbLhTAxefFYDF94OxVqKA1CV2Hk4kGeD4cbRVzH3PagD1pWU
 itsfsnhqkFOBFbELKR3GVXcepETFIffugDOX3mgdUDZ8elY0RM2Uwajje
 BYzOTw4GiJxJ7/o7H7k/A+IokpvEXj9v5JLoMy5e3PDbKJ3uYunXqO/kD
 ONXR35dHhXH+x0QJlL8YYo3dowFDpD1YbBoriOywxwc3Psio65lFgF3yH
 LzccT/e1i7HMT1xeKm6xR57YqY6uxDZKGuSuuaSUPbj5TCMhsKNHMhvNo
 ojuQUVF0hpT2CdmSDeC1IDO7da53D+yf0FnSYPOfgLSHI6h2HeNjqBFmf
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mmLyoVk+
Subject: [Intel-wired-lan] [PATCH iwl-next v6 0/4] Support rx-fcs on/off for
 VFs
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

Allow the user to turn on/off the CRC/FCS stripping through ethtool. We
first add the CRC offload capability in the virtchannel, then the feature
is enabled in ice and iavf drivers.

We make sure that the netdev features are fixed such that CRC stripping
cannot be disabled if VLAN rx offload (VLAN strip) is enabled. Also, VLAN
stripping cannot be enabled unless CRC stripping is ON.
---
v6: Some code was mistakenly included in v5 (4/4), sorry for spamming.
v5: Remove extra space in ice_for_each_alloc_rxq()  (3/4)
v4: Use ice_for_each_alloc_rxq in ice_vsi_is_rxq_crc_strip_dis()  (3/4)
v3: Fix Tony's comments in ice_vf_init_vlan_stripping() (3/4)
v2: Move patch "ice: Fix VLAN and CRC strip co-existence" from 4/4 to 3/4
    Other minor fixes from Tony for the same patch

Haiyue Wang (2):
  ice: Support FCS/CRC strip disable for VF
  ice: Fix VLAN and CRC strip co-existence

Norbert Zulinski (1):
  iavf: Add ability to turn off CRC stripping for VF

Paul M Stillwell Jr (1):
  virtchnl: Add CRC stripping capability

 drivers/net/ethernet/intel/iavf/iavf.h        |  2 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 59 +++++++++++++++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  4 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 69 +++++++++++++++++--
 include/linux/avf/virtchnl.h                  | 11 ++-
 6 files changed, 141 insertions(+), 7 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
