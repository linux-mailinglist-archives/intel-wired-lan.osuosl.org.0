Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59370A359B5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 10:08:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A967A416EE;
	Fri, 14 Feb 2025 09:08:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nHiT-Vk0s4CF; Fri, 14 Feb 2025 09:08:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C18E7416AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739524135;
	bh=u+n9Lg53dH44229lK4yC/ywsWJ/8+qFGYGlo52zaWFY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=I5YuWaKmKRhN73bst9coUVpUr8RAtYMv4r8V+PaI1mK6Sw0fMNlwm+PyOpnbOoI5c
	 oype/eeTEPoJ9MHIlh1Wec/OT0Nh/Pm+O5Dd7jcVEIX8qEwjJlptYOHJCqk6/vJzq5
	 JN02PdDKcnLkbH+I93K1t5iCdOL90MFi00KDsWLMxfL8Zsm3cD+WhlMo/BLHYOe3+z
	 LOlHW1xidCePpQbqtcesTE3YuDbOUizkWPMTumrQUDOT4GRQYwe8DSaDwu21yS1T+0
	 AiMgEtdL5jP1B8YIt6672ilvVpfDW3lFgyLm+WtL6CQwDMMD0I/8NfgvPYuTvMD8YR
	 THhzK3K8t8OaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C18E7416AC;
	Fri, 14 Feb 2025 09:08:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A8D231E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A31956FC33
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:08:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mUvLGctCsKJT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 09:08:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C14686FACE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C14686FACE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C14686FACE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:08:52 +0000 (UTC)
X-CSE-ConnectionGUID: ZokM+AWiThSChwvew8x5Xg==
X-CSE-MsgGUID: Su5M5VeFQ5WelXzZdabLsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="65617695"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="65617695"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:08:52 -0800
X-CSE-ConnectionGUID: ob2CyOKURkuqgQey6bTE+A==
X-CSE-MsgGUID: l9XtpCizQ6iCBPA9lcT5XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113145423"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 14 Feb 2025 01:08:49 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 6789F37B80;
 Fri, 14 Feb 2025 09:08:47 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Date: Fri, 14 Feb 2025 09:50:34 +0100
Message-ID: <20250214085215.2846063-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739524133; x=1771060133;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Eo5DuTvQ0qKs2Jp3vi/N35mfegrhtFBJq5aOGSjyD2I=;
 b=ZE+Z5v5O6jYf5J3H/abx0p6pnhQoVSHc3wxN9M/D4Mmn0oUp5tzLLEuC
 Mz7NfGvnhMedgKy7xY5l1HZ+ZYdQ/9k9hKG8d0j9jS/GJ8QRYNeaxpaaR
 ViqX3xUxxQyN6RP1e9npinRq+vTIRuFV9IPfd1/HdBVagdTXKOXp0DRRy
 ooos4cQyCqM3rJApCl9WQGh+w/I8yB9vUcrp9ToyP29i8ODglvWt+gTqn
 N9ZsCxBazXJsvzHIeHYUwfC2E8ydA22ci8qjtDGV9BXw4Qq3004yKZkZX
 kn3xRacPSL3MXYY6oKfXbo9Pz51MpdgbgfCXi+Rt95baYJN7IKgyWQ3+f
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZE+Z5v5O
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/6] ice: LLDP support for VFs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow to:
* receive LLDP packets on a VF in legacy mode
* receive LLDP packets on a VF in switchdev mode
* transmit LLDP from a VF in switchdev mode

Many VSIs can receive LLDP packets, but only one VSI
per port can transmit LLDP, therefore LLDP TX from VF
requires adding an egress drop rule to the PF, this is
implemented in these series too.

There are no patches that explicitly address LLDP RX in
switchdev mode, because it just works after adding support
in legacy mode.

Usage

To receive LLDP packets on VF in legacy mode:
On host:
ip link set dev <pf_ifname> vf <n> trust on
On VM:
service lldpd restart

To receive LLDP packets on VF in switchdev mode (host config):
tc qdisc add dev <pf_ifname> clsact
tc filter add dev <pf_ifname> protocol lldp ingress \\
   flower skip_sw action mirred egress mirror dev <repr_ifname>

To transmit LLDP packets from VF (host config):
tc qdisc add dev <pf_ifname> clsact
tc qdisc add dev <repr_ifname> clsact
tc filter add dev <pf_ifname> egress protocol lldp \\
   flower skip_sw action drop
tc filter add dev <repr_ifname> ingress protocol lldp \\
   flower skip_sw action mirred egress redirect dev <pf_ifname>

For all abovementioned functionalities to work, private flag
fw-lldp-agent must be off.

v3->v4:
* add "Return: " to the touched kernel-doc
* reunite return type and declaration for ice_add_cls_flower()
  and ice_del_cls_flower()

v2->v3:
* fix sparse warning caused by part of .sw_act members being initialized
  inside the curly braces and others being initialized directly
* reorder members inside the rinfo initializer according to struct
  definition in ice_drop_vf_tx_lldp(), while fixing the warning above

v1->v2:
* get rid of sysfs control
* require switchdev for VF LLDP Tx
* in legacy mode, for VF LLDP Rx rely on configured MAC addresses

Larysa Zaremba (4):
  ice: do not add LLDP-specific filter if not necessary
  ice: remove headers argument from ice_tc_count_lkups
  ice: support egress drop rules on PF
  ice: enable LLDP TX for VFs through tc

Mateusz Pacuszka (2):
  ice: fix check for existing switch rule
  ice: receive LLDP on trusted VFs

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  14 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   6 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  71 ++++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  63 ++++-
 drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 258 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  11 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  17 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  26 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  53 +++-
 18 files changed, 480 insertions(+), 80 deletions(-)

-- 
2.43.0

