Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A3E86E09A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 12:49:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F61140645;
	Fri,  1 Mar 2024 11:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zm7OBOrcpblM; Fri,  1 Mar 2024 11:49:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B616240639
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709293794;
	bh=vFgC9n53rEgcQtcSigsTnf4gLi8tE0wGGILorIt21VY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Um8CdJKKebwP9HfWunKNQpIXmbC4zDrgvvEIB9WHJjnhpGqy8pnoi4+WRRVP8k2ej
	 oBILckTV10IqKtm/J+PFV5uzpxKwoT1g3uggRQ+waDAVXZ3jS2a44VDBw1LUROapiY
	 7ltZIvjkovI0iIoIbCvoMkBGLjppWCoWxP0E65lnZ8XKwZDzZ0pAIyZ8NujeE00anS
	 OP/ZLX/d0/NyOIz98XEI7ceM79Lv3r5nzs6ETVbRTGzrOThN+Wp9RrKgT6Dr08Mprw
	 MHSZ1IH+FHplzOLXePFY0i+FzZx4ke1O2mQMXD6BQ93VHOxlSc5NqmKphKve/mj3cm
	 b93c7Q7Lp/U9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B616240639;
	Fri,  1 Mar 2024 11:49:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 250881BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:49:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D01240645
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qng9BSDusRjK for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 11:49:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8126C40471
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8126C40471
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8126C40471
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:49:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="4000027"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="4000027"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 03:49:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="39195027"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 01 Mar 2024 03:49:47 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Mar 2024 12:54:06 +0100
Message-ID: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709293790; x=1740829790;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mtwcUNm96eIoo1Taovp0m0XkY+ZEMgl5G3UFN02ThdY=;
 b=TpbAkD5ytkFfyMjTehXgtqx/+BaOh7PzUWZcKkslHz9gJx3ZDspLx3br
 5aPpn0wEjy9xs48Q9lsOxrJOwTeaB6EKbew6kf5+4oJXUSA8aulHeYP94
 clgBdG27NBhRyCPvwWIq3f7/pmGdJ3NCa4DZsXoVfcizB5T0v7NB8nkyB
 9RJqIhYLxGYxXHzan45FSvozmZRJYkcyWVqNdkq6fYBwARjxI5fis1GlP
 na5jcoHht7lC0O3hK2RobAl0AReUhkxEfarTzGJ16UotUxIFdeiQi9Ce2
 oqaO0z80EZExisxm+2BFO+7Tr86jOrxKZUKPBqLHEt43Z9oYoJHiXqBne
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TpbAkD5y
Subject: [Intel-wired-lan] [iwl-next v3 0/8] ice: use less resources in
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
 przemyslaw.kitszel@intel.com, sridhar.samudrala@intel.com, horms@kernel.org,
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

v2 --> v3 [2]:
 * fix problem found by Sujai [3]; add LB enable bit in LAG Tx rule
v1 --> v2 [1]:
 * more idiomatic error handling in config LAG

[1] https://lore.kernel.org/netdev/20240125125314.852914-1-michal.swiatkowski@linux.intel.com/
[2] https://lore.kernel.org/netdev/20240202145929.12444-1-michal.swiatkowski@linux.intel.com/
[3] https://lore.kernel.org/netdev/PH0PR11MB5013FE0E638F52C059BC9A5F964C2@PH0PR11MB5013.namprd11.prod.outlook.com/

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
 drivers/net/ethernet/intel/ice/ice_lag.c      |  53 ++-
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
 18 files changed, 232 insertions(+), 489 deletions(-)

-- 
2.42.0

