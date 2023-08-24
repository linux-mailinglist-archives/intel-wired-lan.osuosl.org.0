Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3758C786F86
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 14:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C61F04150C;
	Thu, 24 Aug 2023 12:50:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C61F04150C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692881443;
	bh=RA8MGqSnLqvSpT46WhjkJN0cx5XssPMAHs9JC6WF+0U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XIG2Q92CrhQLywl3J5j2KD/s7GM8KgJeLbnBNYoJ7vejW5Ha5BVGxeQPIMfBrTqo8
	 v9IUFlZ+ajyEHJX4035ceM7x9VTUmMbhlaJRw1UbRQj2+WtwO3arUULy1l9IAc8vz3
	 W+YbKGgf9Wk4yz4e1tVibW5hi00K9bxL8nQf7bBDYFMcJELoB/9OzzjMVR0z7UCOSU
	 L9oc8Ip4NxSuATCWTGlueKIugLQUpiAy6HYXowQbKZVhEs/vEqMp1x1djxEMtANKiJ
	 DteDcznNrFae0ZCvbJKGBHhgolKP8XdV43NTA6bHX0bmT5XW1RWAiAEHcZ2gtMGij0
	 dmwCcqMTQg/Zw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NmqxEPLZnkbg; Thu, 24 Aug 2023 12:50:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7382414FD;
	Thu, 24 Aug 2023 12:50:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7382414FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1CA021BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E47706133F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:50:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E47706133F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DNE2Fv1hK7nD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 12:50:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBF7860D80
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 12:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBF7860D80
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="378183383"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="378183383"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 05:50:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="802528392"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="802528392"
Received: from isergee-mobl3.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.45.83])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 05:50:33 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Aug 2023 06:50:19 -0600
Message-Id: <20230824125023.3302949-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692881436; x=1724417436;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VF6XpMPTGuC2sZ4NB6g4gdtOai90OjOqLOUjmdQqPOE=;
 b=dJmsPlfwq6KQ6ym2WgHLBaJAJJAdMQGLHJftl2q6dUASsAS/zV/6fMRJ
 ZtaXo7LzGUbDcJ8EWokvlYqoT1Ofrra1auzhuJZOimQINBUvYXbBM189x
 de4mXAQ5NbWB0ekL29HEt2z1UoTy4EkpTbeIh92B76nhQkQs5DzfdArvX
 2l28uTIPVMUKj47aLNZtrfAAv68baikTXdqNMOvvSUi0gNMHqHAZbYqS8
 D9HPNx2wKPiA+4fWeNft3D+qNeUzbimf7gsZY0TzcDYU9qnC3hHy3Dh6r
 dZhj9TTDfylgPBYLyCYTK2jvxdru9CQd0iNVaPtMm3jdpyyHWgK+3FTe+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dJmsPlfw
Subject: [Intel-wired-lan] [PATCH iwl-next 0/4] Support rx-fcs on/off for VFs
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
