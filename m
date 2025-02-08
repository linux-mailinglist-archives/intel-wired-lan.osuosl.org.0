Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E956A2D656
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Feb 2025 14:38:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4CC084856;
	Sat,  8 Feb 2025 13:38:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ieGQzGzpyWQO; Sat,  8 Feb 2025 13:38:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3046B84849
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739021890;
	bh=LxTlmpShTa3iTtSOVe3NV5KLdq/pzPsZH+3ClJB3lKo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kDX5Ez+m1AxmVqjfznqxe5vNiqcSJ+tGbAFE+LYII6lPv8vPGn2W5ONEabcOj8ajP
	 7Ytwbr2fjlonh/WANcGMm7sWQsVCEf/+vdMHBFwaXLWxjJEocFSipfIBx0kZWdsfir
	 zfAYCyOA5mrLL3LX2vj5JWBTLboUmQ8AquQK5n2SaE8vJMn7tq0b2B/p/JyGGq8ZQh
	 ntj7WEqpmp6Cn5cuAFdsfElFiDOF1wVupt8AsvgyOPwySBNqqU/BQUb79sNbGkKBRA
	 3Htoz68i5eB4wReG01z9J8kiYIkkmHqUWU4bNVG8I6u47gria4IXHXsChcMsuc1evW
	 VxsVfa0wHEETA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3046B84849;
	Sat,  8 Feb 2025 13:38:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FA321B5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 13:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F36BE4179D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 13:38:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VORXFl34KtMs for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Feb 2025 13:38:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F00B14097E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F00B14097E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F00B14097E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Feb 2025 13:38:06 +0000 (UTC)
X-CSE-ConnectionGUID: WvtNhH4ZRIeSbLKtQaUJiA==
X-CSE-MsgGUID: 5wYLw9TxQm6dXX/QAviVLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51084794"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51084794"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2025 05:38:06 -0800
X-CSE-ConnectionGUID: luwDg+C5QLOfSYr5X93OhA==
X-CSE-MsgGUID: FYwLAcshQJuk1QjJbraF9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116980853"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa005.jf.intel.com with ESMTP; 08 Feb 2025 05:38:02 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B59B7312FD;
 Sat,  8 Feb 2025 13:38:00 +0000 (GMT)
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
Date: Sat,  8 Feb 2025 14:22:41 +0100
Message-ID: <20250208132251.1989365-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739021887; x=1770557887;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9xCYQsWJ9XtnOZOIYs9liH1X4ipwXFUUSjZNOHqjUH8=;
 b=FtlYOnKrJMsvbnZ9wcUkc1KceZX0+g5AzIao1K2H/4H3exuE6c+KpmJJ
 XHAU7i0gmEhX/3x4Rd1D1kHs+p23oc/Pb6uH6EC9iLwHV2edn2WRzKaM1
 9hYL+nuj/41arlat2KquFr3sYWwkn9aVlbvD+NhcgxGqkTOLu9ow28D7R
 YJFbPUSvAFwTSIJml7AXyYofAsShlC5zr6bDzFbGLPgsBCjvJqZbabiGY
 FMkuqVZsUjsZApguGe+lTzkIp15aHjlf7sOyBbZXus36sCM25ngnRdHaT
 Hg1qGLPwx3znD+ENex9ARiWTfq3dixy1Ga7rCDdQkIBbf0yi9pM3GEvIR
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FtlYOnKr
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/6] ice: LLDP support for VFs
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
 drivers/net/ethernet/intel/ice/ice_common.c   |  10 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   6 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  71 ++++-
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  56 +++-
 drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +
 drivers/net/ethernet/intel/ice/ice_switch.c   |   4 +-
 drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 243 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   4 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  17 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  26 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  12 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  48 +++-
 18 files changed, 449 insertions(+), 73 deletions(-)

-- 
2.43.0

