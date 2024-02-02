Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C969184724A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 15:55:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D87974375D;
	Fri,  2 Feb 2024 14:55:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D87974375D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706885731;
	bh=vHWMaPB7jimFzPnt96rpM6DUSrJV2T23gzro/cpD5I0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=veeicyuWnSOpwpYKuc5KkPBuZgufkOvmiu5TWTZtwbsiyWRWkiWr1fIUl09oJPX/K
	 CmqD5rKOoqCnZ+TKXtSa1Y2mHpJVLGEGPDkAByGbCDOilJfqMnazg3qtJ6kamez1Ps
	 LHOmY/iq2e1xUGxvIxszzFXA+SMBkAPDtZdbtMKetoU0xQl2KnsTGXDYCMVFD52jxM
	 d2KW92rvkzZcUPBba8JyiIPSzTt/uyTGVzghJaujqe/ynKKY12pNMalESoZzRbOq2O
	 68ncy/wjeMzNCODJcq44+HE74KLBZjZiQhxBO+8Dxsoj6gJqby88++VDrdrvJf5c5R
	 y40iGNttB4/SA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cx5bkTX0eH1C; Fri,  2 Feb 2024 14:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E290409DD;
	Fri,  2 Feb 2024 14:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E290409DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B33D1BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E65F0426EE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E65F0426EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSaKeD9LLUfB for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 14:55:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A7D6426DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 14:55:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A7D6426DA
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10823005"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="10823005"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 06:55:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="98333"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 02 Feb 2024 06:55:18 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Feb 2024 15:59:20 +0100
Message-ID: <20240202145929.12444-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706885724; x=1738421724;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3BqrikNqgOSR6LBNBuR3Hfonyz+/O5OtmaNKpbUw4KM=;
 b=PbxP3bAm/81m89rbHC4ZFTxASNudYjkMRArLG2gnqa/Ie3tL272OGHpA
 qABNc5rSP6AIwKrwrvsG5Wfy0rxxiGAcDQUAURzkriht57QmqUyZ8OW59
 TVPIzsbz+BX/lRgaZjLf8iR36tf0AJd+51rHKGg4MiYYiWKMHyIDQgaKB
 +NP/zN3kn50h5xZdaLL4E796mGKDhuSqHpI3stQg8kWNQRZzBIAZEXz4R
 0O34D8aUH1DLllb8cKGiiC+Lk7iqLR51BJNE5X3DdYzN4PuTiTivR8GoX
 vY3XQw+pi3d+rT5Je2a6VJrnTYmKw5GawPMFx/kWArEaM7hZH4M2QKMa0
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PbxP3bAm
Subject: [Intel-wired-lan] [iwl-next v2 0/8] ice: use less resources in
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

v1 --> v2 [1]:
 * more idiomatic error handling in config LAG

[1] https://lore.kernel.org/netdev/20240125125314.852914-1-michal.swiatkowski@linux.intel.com/

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
 drivers/net/ethernet/intel/ice/ice_lag.c      |  51 ++-
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
 18 files changed, 230 insertions(+), 489 deletions(-)

-- 
2.42.0

