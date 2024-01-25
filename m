Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAD383C2C2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 13:49:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62B7D82A0E;
	Thu, 25 Jan 2024 12:49:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62B7D82A0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706186961;
	bh=fgl1gRu2tdw+8C1c2ZVQ72IbcHVAlneDDrg5bYHk9kY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QAufwOI/34poz03Qb5vBQJSxeH6jWpbMSKYWwQ47DShFh5BdXWRNpEHMYQDZhAiP3
	 fcOceHViZOgmpIx2y7MwxxPvxv57RmH9NgE2FUqSd8jc+Przlk0AveIkFZuS8H7Jsw
	 uzZ1XSfmrSAoUZoR+WBKeJKvMGg/0W7R0Ox+BHfuh3/8BwmpKIrvdwll8uIGMXobOS
	 TNgJLcb1GelMHMZmpQpgkP5dyPN280lfoNgiBVq05YOAQNcYtw0gNKP+/sMABnCNjD
	 w2XDw/xDTthrtmnbbY28Bgun4BjNG0pQ57oKRhZPRZvMSCxnVkaT9KIEuLmGZcGWs+
	 II/vr6RbZZgTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0xg5i-dLaZFk; Thu, 25 Jan 2024 12:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66CF982CF9;
	Thu, 25 Jan 2024 12:49:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66CF982CF9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A78A41BF387
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E32840242
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E32840242
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 66-VpN0QHk4d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 12:49:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC511400BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC511400BA
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="399313521"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="399313521"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 04:49:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="905956640"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="905956640"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jan 2024 04:49:08 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 13:53:06 +0100
Message-ID: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706186950; x=1737722950;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JyukL+6Tfu3LvG2RP3hHG5PkAXU5TOrq60m31mUDiDw=;
 b=b2z8kkS28YWXKrV5xcV/FXZ1lfTFpeVpmvuqZV+XSFLm4/Ak2P4Xt+Ji
 vHfCvA1T+jn72enbp2dwTPmHNFhl7j+DtOzU/ezvJSQ8Wd1bAByjlhOb5
 hragXxZhZBqgKhiFSjG36kB6vDME0XE+3jNXhVDWTI87eVfzjavUgcxVe
 uG2zkQU7vqf9ac/VEUVn0U7iKmnZvSa1APhbFbnrvU33QdpdHYGZ59zYK
 zdTizg7DaxChzs6l0afxL2EMSlcbx6GM0YkmF5khzkrMnu5pPfbGgLYZg
 GjvmwrL2ShdURMtdrM7+mDEqn3eTCWEuagnAcaSHBSIyLs0MBld1F+OLp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b2z8kkS2
Subject: [Intel-wired-lan] [iwl-next v1 0/8] ice: use less resources in
 switchdev
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 przemyslaw.kitszel@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Switchdev is using one queue per created port representor. This can
quickly lead to Rx queue shortage, as with subfunction support user
can create high number of PRs.

Save one MSI-X and 'number of PRs' * 1 queues.
Refactor switchdev slow-path to use less resources (even no additional
resources). Do this by removing control plane VSI and move its
functionality to PF VSI. Even with current solution PF is acting like
uplink and can't be used simultaneously for other use cases (adding
filters can break slow-path).

In short, do Tx via PF VSI and Rx packets using PF resources. Rx needs
additional code in interrupt handler to choose correct PR netdev.
Previous solution had to queue filters, it was way more elegant but
needed one queue per PRs. Beside that this refactor mostly simplifies
switchdev configuration.

Michal Swiatkowski (8):
  ice: remove eswitch changing queues algorithm
  ice: do Tx through PF netdev in slow-path
  ice: default Tx rule instead of to queue
  ice: control default Tx rule in lag
  ice: remove switchdev control plane VSI
  ice: change repr::id values
  ice: do switchdev slow-path Rx using PF VSI
  ice: count representor stats

 drivers/net/ethernet/intel/ice/ice.h          |   7 -
 drivers/net/ethernet/intel/ice/ice_base.c     |  44 +--
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   4 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 362 +++---------------
 drivers/net/ethernet/intel/ice/ice_eswitch.h  |  13 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      |  48 ++-
 drivers/net/ethernet/intel/ice/ice_lag.h      |   3 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  49 +--
 drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_repr.c     | 126 +++---
 drivers/net/ethernet/intel/ice/ice_repr.h     |  24 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   3 -
 drivers/net/ethernet/intel/ice/ice_switch.c   |   4 +
 drivers/net/ethernet/intel/ice/ice_switch.h   |   5 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  11 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 -
 .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |   1 -
 18 files changed, 227 insertions(+), 489 deletions(-)

-- 
2.42.0

