Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 835856D766F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Apr 2023 10:10:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 113DF60EE0;
	Wed,  5 Apr 2023 08:10:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 113DF60EE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680682215;
	bh=wd9wjz6DR/Tsplcm8Jjfe3imWy7GHFsfBa8uHJQBLHU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=wrt689Ami2jO3o50k3z2mjxXk4ZONNj+FNVzcFwURdPqoYB0J5qDSXef+i/wZ8vVZ
	 j+mHr7/RcajTJ7wVz4modt50xUhNcQL+vNs2bVX9KO8PhdN1eEfktRFO1LQha7niHS
	 BYf3Zetv7h8zTvSdyqY4GQ8ZTHk8JMJPFcCCnDvoG6gJt6gwcYnbuvtTuMbMkeTWqL
	 hpqVTL5i9PTQcMIYH8lgpBRmMp3bJeWUlgG07iDIDiyU2aCsYv09BBguupevxL2Qln
	 j5d0UFha8eSXFGm9QsA/nPa+8GiV7KFCNeZRtnmr7T3kIO7M+o3VoGIg24SC2EBfXI
	 uNQUjfUlo4nvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GJeeyuVO9Umg; Wed,  5 Apr 2023 08:10:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0907E60B43;
	Wed,  5 Apr 2023 08:10:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0907E60B43
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D06D61C2A08
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 08:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8F03405DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 08:10:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8F03405DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6ZIbgCi8yOy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Apr 2023 08:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77E98400DD
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77E98400DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Apr 2023 08:10:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="428681485"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="428681485"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 01:10:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="775961330"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="775961330"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Apr 2023 01:10:04 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Apr 2023 09:51:08 +0200
Message-Id: <20230405075113.455662-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680682207; x=1712218207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l+8w5wd3T3I/vZI33MZXnQsrnjIvslbsitaWlrcMdkU=;
 b=azBKnpmtKgJbpOvrIpxR/NKLu4zAFutXSVdf5Ci9ZLbw1GW4mhpPUWGZ
 nfRlUPiDXXfSfwHJ8rkyazvNimr1vmtGJ5/D2ifADMR6OedHVV4Qbrkin
 BNBgcfZK4GQ+0EFpKia69/aAavS1hAc+Gl1XV7X4Ht/KGmCYhw+P8rg8y
 DME490YoutmaXhH3+i+uYY/sWV64gg/SajtmqhkTg+I2wex5uX1h/hHD8
 fmVuF4lCC7MIdKiL/vrQWMidAse2oq2ee9bIca2uG4/PPdHmpku8g96rQ
 EtbNgVWJYEbIb64xy9wri+0HjlrIe6fvABtwAEyUPOPtTZJVBfeALQl01
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=azBKnpmt
Subject: [Intel-wired-lan] [PATCH net-next v3 0/5] ice: allow matching on
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

v2 --> v3: based on Alexander Lobakin comments; link [1]
 * add patch 4 to get rid of anonymous struct initialization
 * few code style changes
 * rename ice_is_rule_info_the_same() and add const params in it
 * avoid holes in ice_adv_rule_info {}

v1 --> v2: link [2]
 * fix spell issues
 * use GENMASK to define source VSI mask

[1] https://lore.kernel.org/netdev/20230404072833.3676891-1-michal.swiatkowski@linux.intel.com/
[2] https://lore.kernel.org/netdev/20230331105747.89612-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (5):
  ice: define meta data to match in switch
  ice: remove redundant Rx field from rule info
  ice: allow matching on meta data
  ice: specify field names in ice_prot_ext init
  ice: use src VSI instead of src MAC in slow-path

 drivers/net/ethernet/intel/ice/ice_eswitch.c  |  84 ++-----
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  14 --
 .../ethernet/intel/ice/ice_protocol_type.h    | 197 ++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_repr.c     |  17 --
 drivers/net/ethernet/intel/ice/ice_repr.h     |   5 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 231 ++++++++----------
 drivers/net/ethernet/intel/ice/ice_switch.h   |  13 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  34 ++-
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   3 -
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |   8 -
 .../net/ethernet/intel/ice/ice_vlan_mode.c    |   2 +-
 12 files changed, 350 insertions(+), 259 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
