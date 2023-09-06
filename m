Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D2079440A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 21:57:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C93F7821AE;
	Wed,  6 Sep 2023 19:57:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C93F7821AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694030242;
	bh=JYiO43w4toqkNCapg/MGJma+GRy+JsRTWGIgy+aB8r8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8x0k8anhQCu3PV169pin2Hnwrb84qrQktQ3EIqHCy308YlnZC3PyUDdI4eD0VOzWs
	 GvqSpwMcbkv+VG3PW379hzxdX8eg2t5POPWDvkRt6KVM0WxNZVs2r+WNmwbydrV4OH
	 q9q6CP/YHXHl0dYockb/MKQZdWSLAodEDRQamkYoapCgKarp9h2q3d9LfwZsvpIPOF
	 AQGPrDeO9jpAMRbRpkSqfPT6vEVp3ZCa/tJc+6gRbEWhY1o4IA6PbW09fP6UDemuym
	 eNLDxdcwm8VFVm+Tpl8Hgez0J0eQqJNPeus+xi4ZTEA5rE16/JFKH88Wsvh7DTiNA1
	 v5l+RLNZBpRhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UR8qFN2LMOuf; Wed,  6 Sep 2023 19:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D48682183;
	Wed,  6 Sep 2023 19:57:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D48682183
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 877F61BF334
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 19:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6C8FD611D4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 19:57:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C8FD611D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZqLmFQ1zUbdT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 19:57:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 075B3607A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 19:57:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 075B3607A1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="376070108"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="376070108"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 12:57:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="915413421"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="915413421"
Received: from nzandani-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.34.148])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 12:57:11 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Sep 2023 13:57:00 -0600
Message-Id: <20230906195704.3651720-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694030235; x=1725566235;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cwWYx8HdTgWStclyL7KAsr+SBod2zMKQyLHkLzThUiQ=;
 b=aTkK87mnxAtZb9V/XfbGfrsty4xaN3EkC0aHUEz93AfgBonL0nqQn4G1
 UZnK2OU6tbOzMjcTDt2A26cJZ0fp8xLgBN6OjeHMKeOFGxcFGdfjQGQdc
 Bx/W1XLdpO0dG63kvWjj1HjBLxbJp1OCQyH4HB28pGGyc1CjgygR6Vvos
 VVKp99kzRkL/bHqEJcyY4/o1qxT2M61PIBsPvlJYQ+8ovA841kouOUPyt
 ZoLVmbv8Jv+tMi+Jm7gbOKnN2StKTq01ZAXXRIZzj3hztxddndpOkU9Y6
 Tq5CCEKF7Zl72txEaGjiRGyeSu14hV/yRmFg2uAh9xAh76hIwUmt+y+Hr
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aTkK87mn
Subject: [Intel-wired-lan] [PATCH iwl-next v7 0/4] Support rx-fcs on/off for
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

Testing was done using tcpdump to make sure that the CRC is included in
the frame after:

    # ethtool -K <interface> rx-fcs on

and is not included when it is back "off". Also, ethtool should return an
error for the above command if "rx-vlan-offload" is already on and at least
one VLAN interface/filter exists on the VF.
---
v7: Paul Menzel's comments on v5 and v6:
	Commit messages in cover letter, (1/4), (3/4) and (4/4)
	Title of (3/4): ice: Check CRC strip requirement for VLA strip
	Remove u16 stack variable in ice_vsi_is_rxq_crc_strip_dis() (3/4)
v6: Some code was mistakenly included in v5 (4/4), sorry for spamming.
v5: Remove extra space in ice_for_each_alloc_rxq()  (3/4)
v4: Use ice_for_each_alloc_rxq in ice_vsi_is_rxq_crc_strip_dis()  (3/4)
v3: Fix Tony's comments in ice_vf_init_vlan_stripping() (3/4)
v2: Move patch "ice: Fix VLAN and CRC strip co-existence" from 4/4 to 3/4
    Other minor fixes from Tony for the same patch

Haiyue Wang (2):
  ice: Support FCS/CRC strip disable for VF
  ice: Check CRC strip requirement for VLAN strip

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
