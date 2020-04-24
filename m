Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A80CA1B805E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F2E48816B;
	Fri, 24 Apr 2020 20:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1TCJ2TaF8G4P; Fri, 24 Apr 2020 20:17:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 093E288720;
	Fri, 24 Apr 2020 20:17:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19E0B1BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 16F9586B89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nvtKkS-lVo2F for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48A8F868A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:25 +0000 (UTC)
IronPort-SDR: rfWqDFiWhtfMbvMZ4oXheij09dE8FGcLH5PfUCQPo6/civiSPTrX9rqDw7NtAoevkR92D2ZC6k
 oTkbYIVFSiwA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:24 -0700
IronPort-SDR: nQAoUWQVrA5yCwR0ZhNDZDDxlK/uf/2/8mbGc+8vyluwQRMK48ldlfDrU6r/CgRMRcvzCflfxM
 QZHblNQvpLxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474496"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:24 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:04 -0700
Message-Id: <20200424201623.10971-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 00/19] igc: Fixes to NFC support code
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

Hi all,

Previous patch series [1-4] addressed issues with IGC filtering support
individually (MAC address, VLAN priority, and ethertype filtering). This
patch series fixes issues with the Network Flow Classification (NFC)
support, which is built on top of those individual filters.

This series is organized as follows:

    * Initial patches (1 to 4) do trivial code cleanup like remove unused
      code, useless wrappers, simplify logic, etc.

    * Midsection patches (5 to 8) refactor the NFC support code to improve
      code reuse and organization. It also makes some upcoming bug fixes
      simpler.

    * The rest of the series (9 to 19) fixes multiple bugs related to rules
      insertion, overwrite, and restoration as well as other issues like
      memory leak and locking.

Best regards,

Andre

[1] https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20200318230102.36952-1-andre.guedes@intel.com/
[2] https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20200403181743.23447-1-andre.guedes@intel.com/
[3] https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20200407210711.24371-1-andre.guedes@intel.com/
[4] https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20200411002834.13916-1-andre.guedes@intel.com/

Andre Guedes (19):
  igc: Remove unused field from igc_nfc_filter
  igc: Get rid of igc_max_channels()
  igc: Cleanup _get|set_rxnfc ethtool ops
  igc: Early return in igc_get_ethtool_nfc_entry()
  igc: Add 'igc_ethtool_' prefix to functions in igc_ethtool.c
  igc: Align terms used in NFC support code
  igc: Change byte order in struct igc_nfc_filter
  igc: Refactor igc_ethtool_add_nfc_rule()
  igc: Fix 'sw_idx' type in struct igc_nfc_rule
  igc: Fix locking issue when retrieving NFC rules
  igc: Fix NFC rule overwrite cases
  igc: Fix NFC rules with multicast addresses
  igc: Fix NFC rules restoration
  igc: Refactor igc_ethtool_update_nfc_rule()
  igc: Fix NFC rules leak when driver is unloaded
  igc: Fix NFC rule validation
  igc: Change return type from igc_disable_nfc_rule()
  igc: Change adapter->nfc_rule_lock to mutex
  igc: Remove igc_nfc_rule_exit()

 drivers/net/ethernet/intel/igc/igc.h         |  57 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 608 ++++++++-----------
 drivers/net/ethernet/intel/igc/igc_main.c    | 257 +++++---
 3 files changed, 469 insertions(+), 453 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
