Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A45A7EC21
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 21:10:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52F7B40C55;
	Mon,  7 Apr 2025 19:10:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1fSmdBq1TAAs; Mon,  7 Apr 2025 19:10:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6968540C99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744053037;
	bh=cFzu/NiSUeTAoNbplcM3D+znva1fpQmgOom0qw2Yeoo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=E/tmOaT899unu93E3xXkK3q+ZDAZqZ7ikTEaQne1YLhJp7Ety5TTv4w83VVJ5OZKA
	 xFuSdDePas1YKyczHkETrtzGtIYvNXCo94o1DS6Ky1WBVjxzPf1IvQh3OyBiQFgWaP
	 rUunTnRCziLpVfPjXt1aiE7RHk8mXmLwKXp75hDWsJRbmHpZ8NoC+bx77B/LSLMRep
	 +SAv59DpDdtJsV7rOB+YfXZrodNLzjjXyiGHJj110zVaxZUwtk4hXZieGagQbD/JM8
	 a7Zu5OzjxUXUdMquLroua153kjYhOg0ZXm6S83zODEjCOQJBwOZHm99JYVLX0gYSSU
	 WpuTfok++fAzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6968540C99;
	Mon,  7 Apr 2025 19:10:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 539DCDA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA2C781D0B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:10:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KZF2TTGSOYoY for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 19:10:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 160A080E42
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 160A080E42
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 160A080E42
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:10:34 +0000 (UTC)
X-CSE-ConnectionGUID: edTH+Nt/Q9e928udcMOX5Q==
X-CSE-MsgGUID: TWWdTWPpS1O048NoNdb+ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45550353"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="45550353"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:10:35 -0700
X-CSE-ConnectionGUID: gU26WAqnQt++lPQnIU7mdA==
X-CSE-MsgGUID: iMM0RthcRtGorbY+qkTIow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="132177569"
Received: from puneetse-mobl.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.57])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:10:27 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, ahmed.zaki@intel.com, sridhar.samudrala@intel.com,
 aleksandr.loktionov@intel.com, aleksander.lobakin@intel.com,
 dinesh.kumar@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com
Date: Mon,  7 Apr 2025 13:10:14 -0600
Message-ID: <20250407191017.944214-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744053036; x=1775589036;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cp7rBFD+69jqcn07SMI3PajyGC2f1r5uZony8lWnO54=;
 b=SqopkCVcRlxpHVIqS7I+94Kyy/EA+Fno6daO5yvIgha3E9gaxalTmfQ7
 AM6aYmk28xv15jzj+xziLCaTtDTqZy0dhPMEhwN9dPJ55t9Cni8X/e2IT
 ENBCe1jDB7aGRCgkxe8x7w/ZnmlMPOoY2TuWItzbysC1y3tB1ryfGMvIg
 cXeRw1FXbf5i1wmvcHVAEra401e+pZgVjvqp/BMd1nM0+x/+4cMRLHrpe
 xHryL3DhWmdRC42RwLA2mh1J5llRrIp2dUkkG+BoZf4k0cotCPeBp70te
 LRhnpuV3PZPx0+GXZ1nOvv93wNXgoTUr7Zx6DXUxlRT2G4BthLXrcvTKO
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SqopkCVc
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/3] idpf: add flow steering
 support
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

Add basic flow steering. For now, we support IPv4 and TCP/UDP only.

Patch 1 renames "enum virtchnl2_cap_rss" to a more generic "enum 
virtchnl2_flow_types" that can be used with RSS and flow steering.

Patch 2 adds the required flow steering virtchnl2 OP codes and patch 3
adds the required flow steering ethtool ntuple ops to the idpf driver.
---
v2: - Rename "enum virtchnl2_cap_rss" to virtchnl2_flow_types in
      a separate patch (Patch 1).
    - Change comments of freed BIT(6, 13) in patch 2 (Tony).
    - Remove extra lines before VIRTCHNL2_CHECK_STRUCT_LEN (this makes
      checkpatch complaints, but Tony believes this is preferred.
    - Expand commit of patch 3 (Sridhar).
    - Fix lkp build error (patch 3).
    - Move 'include "idpf_virtchnl.h"' from idpf.h to idpf_ethtool.c
      (patch 3) (Olek).
    - Expand the cover letter text (Olek).
    - Fix kdocs warnings.

v1:
    - https://lore.kernel.org/netdev/20250324134939.253647-1-ahmed.zaki@intel.com/

Ahmed Zaki (2):
  virtchnl2: rename enum virtchnl2_cap_rss
  idpf: add flow steering support

Sudheer Mogilappagari (1):
  virtchnl2: add flow steering support

 drivers/net/ethernet/intel/idpf/idpf.h        |  33 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 298 +++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   5 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 121 ++++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 249 +++++++++++++--
 6 files changed, 666 insertions(+), 46 deletions(-)

-- 
2.43.0

