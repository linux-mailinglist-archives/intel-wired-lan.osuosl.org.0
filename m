Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D18156573B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Jul 2022 15:32:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA4E9405EC;
	Mon,  4 Jul 2022 13:32:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA4E9405EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656941539;
	bh=biGn/vACSKiqfiItd+8Jw6Wp1jjXx81IniGhhqNevIM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ay65+KZ/ulKEDcmtq+qd6O0RnFk3S/C6VvYhtRta0MLaiHE8yP/hUzSnsL3colh9z
	 o0F3W6Dr2lJwUVaXWQDMdaBZtj1Cz0CuvLaf0Tcovyd/eG9ptoA2y211L5U9g/64sx
	 VtMDS9x7ZdtgqxmPYNmOaWW82IOvs1zsKNdgRXdpb9q7lCwOD4rvdW1V1GNAtFq2MM
	 DBm9/O0HzSEhwWxtb9W2sAKunyfM6ET5q4ICCCZKNl81HNB5HAhRcYIPm0GAFw5WtS
	 IRCtjR/HJbl0MdE+ai7b+50dhjT8FtA+8nyOPTEYxr0Gjj3gKw+KCival6YSbEfvYM
	 gS2Z7bsDHHZ7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PO2tAddJ6quS; Mon,  4 Jul 2022 13:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA9CE401F2;
	Mon,  4 Jul 2022 13:32:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA9CE401F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02FDD1BF35F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:32:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0486401F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:32:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0486401F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PLQMxuhvX6xz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 13:32:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0E29401C2
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F0E29401C2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 13:32:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="344808115"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="344808115"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2022 06:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="682199661"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jul 2022 06:32:10 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Jul 2022 15:31:56 +0200
Message-Id: <20220704133156.1356024-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656941532; x=1688477532;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HJYzyB0Q3tsUCsgQ9Xa/0NDjRz+jGk8vZaDUirLguLk=;
 b=Q2rE5Xzg7lzi2B6FI8ryeieDSMQyPLt+pmT0OKRfdWj9XKF6ia36dG8K
 y24rOR74BlumxSXh4hQJqpeNdKWXS0EcO3Awvv54pHKhYrdCynr1MWHPC
 Xi4LT/jRUjnV4hjuuQGXKvVGDHI8mr+Kyy7FkTEitqCIqmrmdbHhSCjOG
 DcvFkqANuvaiOgatbYfI1FBsm6kKiLuhjEwaQRNzmTeEs/g7a7jRpBwEM
 YIebf5yagvubFbh/0Pwvq/aSAw1iuLH2e0MdEJDONdNVj9fQpns2WGtmK
 tBdrm2PhPeLcyIu0Kl5TeE66HMwZoER18W9h5aUgGy1D5JCIpLZH+T8gE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q2rE5Xzg
Subject: [Intel-wired-lan] [PATCH net v3 0/3] iavf: Fix pending DMA
 allocations while released from device
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

Fix multiple issues that can arise, when VF cannot configure ASQ/ARQ properly.
Failing to do so can lead to driver hang, null ptr dereference and possible
DMA allocations leak.

---
 v3: Fixed git settings 
 v2: Add comment to make code more understandable
---

Przemyslaw Patynowski (3):
  iavf: Fix reset error handling
  iavf: Fix NULL pointer dereference in iavf_get_link_ksettings
  iavf: Fix adminq error handling

 drivers/net/ethernet/intel/iavf/iavf_adminq.c  | 15 +++++++++++++--
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  6 ++++++
 drivers/net/ethernet/intel/iavf/iavf_main.c    | 14 ++++++++++----
 3 files changed, 29 insertions(+), 6 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
