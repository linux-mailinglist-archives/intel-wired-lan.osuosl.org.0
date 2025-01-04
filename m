Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA47A01153
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 01:43:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C2C4408D2;
	Sat,  4 Jan 2025 00:43:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RzKYBPk5OztH; Sat,  4 Jan 2025 00:43:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C57F408C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735951415;
	bh=lDNkfx8usWWoyOTFljeGyWswcb/4vbrT0uMXaQnjT6U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0eN8E8M6s/SSHjO8ytn1Cts4I+kfqoqJqtsAv8LGL9sbsvxTx0DsJ+B/f7zN96a1e
	 csW0V9dNqH/WYj6tMOsBz+ZTFf28oOA3JO3iKKmiQEkuNodHuWg50WYzx7Rv5Au1CK
	 DIe///03IZ7Q5guOytU52KqBaqsaNtS+3ArQ8XSFWf8D16TKq4HzTV/ubC2l7j0k12
	 4k0OMCvWWcvn+EvN72gXVstp2WtBHkT09ej25swMy2edLQtFlKOAILVcKZ9TX/QFnC
	 IlzKmhKYHDUREumfHe06kbxES+TFMx3QimkuTOWCfrL0Bns59i5pCKf97EBypvusd2
	 XJ35n4llDGjSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C57F408C9;
	Sat,  4 Jan 2025 00:43:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 43BFCAF0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 126E980BFD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DD5EOrta_vlL for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 00:43:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4118980C0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4118980C0F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4118980C0F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 00:43:30 +0000 (UTC)
X-CSE-ConnectionGUID: d66Qfi5HRL2tjifVBSYPgg==
X-CSE-MsgGUID: qFuJRz+YToemL/AcSylITQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36075940"
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="36075940"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:30 -0800
X-CSE-ConnectionGUID: KEO/wRVmRWiVRkBhbUs9Yw==
X-CSE-MsgGUID: Mp+8YN14QT+iRQkxLUxqMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,287,1728975600"; d="scan'208";a="106879712"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.48])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 16:43:25 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri,  3 Jan 2025 17:43:08 -0700
Message-ID: <20250104004314.208259-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735951411; x=1767487411;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uUMPTxyh/TKv8E1s6ZJSvCjKbS/fkCaSJW1aNxM6fu4=;
 b=F64kzBM+LI6GOJTF1hmY9aIwLoARLr/EqxgUaqskJYbeBTHDYKbXurXl
 qgD46fv68kQkrBxcuCRqoiuMDGbgthLfbj2GT/PLXMskwPwV6ORocAc2M
 91X8IEeWLGM1S9aGRx0z7ELIlFLPN5sogp8rUj0Bo4OUVQz4lK29sm2cq
 7RJenqjo+0dU6Dec6K8bLwL7M4K2SnouZJ9/J7QMIFZT0M/2k33vm98ZX
 kWOcpnFpgWXly5zvSCFsiu3WayugnCyaTEza8k1ZaQRIHFZ8pZxXEcA4X
 J1N2WrAOfvcmi4UuS2J+/qwA9aM1/iw2oaSR1xKiazhJFHJBpO4CqthLe
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F64kzBM+
Subject: [Intel-wired-lan] [PATCH net-next v3 0/6] net: napi: add CPU
 affinity to napi->config
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

Move the IRQ affinity management to the napi struct. Since there can only
be one IRQ affinity notifier, the ARFS rmap management is moved to CORE
(patches 1 and 2), then the new notifier is extended to save the user-set
IRQ affinity mask in napi_config.

Tested on bnxt, ice and idpf.

v3:
    - Assign one cpu per mask starting from local NUMA node (Shay Drori).
    - Keep the new ARFS and Affinity flags per nedev (Jakub).

v2:
    - https://lore.kernel.org/netdev/202412190454.nwvp3hU2-lkp@intel.com/T/
    - Also move the ARFS IRQ affinity management from drivers to core. Via
      netif_napi_set_irq(), drivers can ask the core to add the IRQ to the
      ARFS rmap (already allocated by the driver).

RFC -> v1:
    - https://lore.kernel.org/netdev/20241210002626.366878-1-ahmed.zaki@intel.com/
    - move static inline affinity functions to net/dev/core.c
    - add the new napi->irq_flags (patch 1)
    - add code changes to bnxt, mlx4 and ice.

Ahmed Zaki (6):
  net: move ARFS rmap management to core
  net: napi: add internal ARFS rmap management
  net: napi: add CPU affinity to napi_config
  bnxt: use napi's irq affinity
  ice: use napi's irq affinity
  idpf: use napi's irq affinity

 drivers/net/ethernet/amazon/ena/ena_netdev.c |  38 +----
 drivers/net/ethernet/broadcom/bnxt/bnxt.c    |  53 ++-----
 drivers/net/ethernet/broadcom/bnxt/bnxt.h    |   2 -
 drivers/net/ethernet/intel/ice/ice.h         |   3 -
 drivers/net/ethernet/intel/ice/ice_arfs.c    |  17 +--
 drivers/net/ethernet/intel/ice/ice_base.c    |   7 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |   6 -
 drivers/net/ethernet/intel/ice/ice_main.c    |  47 +------
 drivers/net/ethernet/intel/idpf/idpf_lib.c   |   1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c  |  22 +--
 drivers/net/ethernet/intel/idpf/idpf_txrx.h  |   6 +-
 include/linux/cpu_rmap.h                     |   1 +
 include/linux/netdevice.h                    |  23 ++-
 lib/cpu_rmap.c                               |   2 +-
 net/core/dev.c                               | 139 ++++++++++++++++++-
 15 files changed, 186 insertions(+), 181 deletions(-)

-- 
2.43.0

