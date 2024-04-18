Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7CC8A925E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 07:34:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5260680E4F;
	Thu, 18 Apr 2024 05:34:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kvBYIIjx3sZ3; Thu, 18 Apr 2024 05:34:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C955C80E5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713418473;
	bh=+/jZKj9kbOJikPt3i0WkvSuVie8zjq0R6qUmr658yHs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Gxa7+WoeERyzDZlwQRq83KCRj4SQyry9FadcpwiCK8/2A0TSKo9HkYs2hskFo6Meg
	 zy265R4S/LtBHqSUAZOXFii1U0MJP/yzQetNbm83vXkuA8leA34tEBIKJuW5FOHk0d
	 2hVCx0UcixUFiB5TDRmeEdSKQTxAU60WKflB3otgiFidkzHeSQ3MQi+tj6kDQgJLHt
	 on+8G6TU30QHEXHpzprpJgolnrm5BmYivQVLglaxnJUwnfgtR1XOx7s5SuedKPPk5e
	 qG8iSujUcc9qkBk2SNg8F+U+pZEF9guhoVHZbRzHCdeAu/o1VanRB3vrC9ZE7ycDud
	 EGwMTWpGChDrQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C955C80E5E;
	Thu, 18 Apr 2024 05:34:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE39A1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 05:34:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D43294056E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 05:34:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NwjXuVfCMv6r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 05:34:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE2E3401A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE2E3401A2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE2E3401A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 05:34:29 +0000 (UTC)
X-CSE-ConnectionGUID: DI6+VZ/LSFmKnoheRy5BbA==
X-CSE-MsgGUID: +d52tLUWQx2d+LS4Ga8w/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20332373"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="20332373"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 22:34:28 -0700
X-CSE-ConnectionGUID: 1+5p7IGiRWy5dod1MqjWEQ==
X-CSE-MsgGUID: SxA80oJUQiKa5WW9vgQwJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="60292202"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 17 Apr 2024 22:34:26 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C13B727BA1;
 Thu, 18 Apr 2024 06:34:24 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Apr 2024 01:24:48 -0400
Message-Id: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713418471; x=1744954471;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nUCZ6MzDQkmuq8iV4mMLyZ2qoJhcoe/emBPH5fyR0hw=;
 b=WzM/E1s2Nk0NcpbKsNO8oO8fX6/iVSnuzwKKlBmhC4k8v7M+KtCqZv8v
 wb0l+TonoPSSATTphFEKPuSVeb3gIqPOx/5pyYmL6dFIJq8mjwzvyUXLe
 5JU90Cl/RVUniYKg0qlEBE1V2rh1Vw1eiS1zrY+Tvm3X2Z17+t58/cD+2
 CQWoTy5Kc10hpQmzjuZ1N5KdTe75A01jJhXiHWm2chp9DIGKc5oOku/dz
 VTk14+UF4GrXSuPwBIdJlxY4jtlwHZ5q4tq5zJ8kujzxhkWQRTdChv50l
 1nE33gONuWqZVvju+HLeU94nqiLFHgkEhVHwZ1uCasy5qDGO3fBasQydu
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WzM/E1s2
Subject: [Intel-wired-lan] [PATCH iwl-next v5 00/12] Add support for Rx
 timestamping for both ice and iavf drivers.
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Initially, during VF creation it registers the PTP clock in
the system and negotiates with PF it's capabilities. In the
meantime the PF enables the Flexible Descriptor for VF.
Only this type of descriptor allows to receive Rx timestamps.

Enabling virtual clock would be possible, though it would probably
perform poorly due to the lack of direct time access.

Enable timestamping should be done using SIOCSHWTSTAMP ioctl,
e.g.
hwstamp_ctl -i $VF -r 14

In order to report the timestamps to userspace, the VF extends
timestamp to 40b.

To support this feature the flexible descriptors and PTP part
in iavf driver have been introduced.

---
v5:
- fixed all new issues generated by this series in kernel-doc

v4:
- fixed duplicated argument in iavf_virtchnl.c reported by coccicheck
https://lore.kernel.org/netdev/20240410121706.6223-1-mateusz.polchlopek@intel.com/

v3:
- added RB in commit 6
- removed inline keyword in commit 9
- fixed sparse issues in commit 9 and commit 10
- used GENMASK_ULL when possible in commit 9
https://lore.kernel.org/netdev/20240403131927.87021-1-mateusz.polchlopek@intel.com/

v2:
- fixed warning related to wrong specifier to dev_err_once in
  commit 7
- fixed warnings related to unused variables in commit 9
https://lore.kernel.org/netdev/20240327132543.15923-1-mateusz.polchlopek@intel.com/

v1:
- initial series
https://lore.kernel.org/netdev/20240326115116.10040-1-mateusz.polchlopek@intel.com/
---

Jacob Keller (10):
  virtchnl: add support for enabling PTP on iAVF
  virtchnl: add enumeration for the rxdid format
  iavf: add support for negotiating flexible RXDID format
  iavf: negotiate PTP capabilities
  iavf: add initial framework for registering PTP clock
  iavf: add support for indirect access to PHC time
  iavf: periodically cache PHC time
  iavf: refactor iavf_clean_rx_irq to support legacy and flex
    descriptors
  iavf: handle SIOCSHWTSTAMP and SIOCGHWTSTAMP
  iavf: add support for Rx timestamps to hotpath

Mateusz Polchlopek (1):
  iavf: Implement checking DD desc field

Simei Su (1):
  ice: support Rx timestamp on flex descriptor

 drivers/net/ethernet/intel/iavf/Makefile      |   3 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |  33 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 245 +++++++-
 drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 548 ++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  46 ++
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 426 +++++++++++---
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  26 +-
 drivers/net/ethernet/intel/iavf/iavf_type.h   | 150 +++--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 238 ++++++++
 drivers/net/ethernet/intel/ice/ice_base.c     |   3 -
 drivers/net/ethernet/intel/ice/ice_ptp.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   2 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  86 ++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   2 +
 .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
 include/linux/avf/virtchnl.h                  | 127 +++-
 17 files changed, 1786 insertions(+), 161 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.h

-- 
2.38.1

