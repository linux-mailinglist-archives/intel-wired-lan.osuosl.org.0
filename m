Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16026A99873
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Apr 2025 21:27:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2526612AF;
	Wed, 23 Apr 2025 19:27:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id my-14Qr1Cfob; Wed, 23 Apr 2025 19:27:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C614D605F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745436443;
	bh=Ls4V1jrjj7rZKgAImIvIHC/d3RcT8YOSsypzjLOn++0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gSiApJKgk1yytDoB/qScQOuj/gM1U1fYKsAohBP2x+z+PqmYJdbmia4YF2EHBusaP
	 GYMjAlxp8LNWzDbMq/Qm+eLPlA3yhvLY0V1805RdSd1/8tTDIyBugA5JBapVJsouXp
	 x3rr3zehGWiP44q0AK6mL76F1dBXxlqgso6GKPwEbMJOXiDJdib2EMs94Jys2uIOEV
	 8C4I1DQAsv0lvq2kpAZ/ktmtL/0tBVKrgZdWMvqNQULTMGh2m+SQG9HZNRHy1mJUoR
	 mgQ9damZcNvWLjjy9V2Zf6VfytQ8xXRdlFq+NFvBHF77vXyStKUUIBxu7iOkbPgMdO
	 NF0Bxci6DWd7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C614D605F7;
	Wed, 23 Apr 2025 19:27:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E40719F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 19:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14E52403F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 19:27:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dg237ky4eG-L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Apr 2025 19:27:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 13A7240288
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13A7240288
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 13A7240288
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 19:27:20 +0000 (UTC)
X-CSE-ConnectionGUID: 8w+1brs4SpGpIGfiYb9vmA==
X-CSE-MsgGUID: WN3h993iR1qajmvtmQ9O2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="47176393"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="47176393"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 12:27:19 -0700
X-CSE-ConnectionGUID: w07j18X9T/a5oMH/g26tOw==
X-CSE-MsgGUID: i0OOXXvwSAiaVpdaHvNv1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="163442465"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.108.47])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 12:27:12 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, ahmed.zaki@intel.com, sridhar.samudrala@intel.com,
 aleksandr.loktionov@intel.com, aleksander.lobakin@intel.com,
 dinesh.kumar@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com, pmenzel@molgen.mpg.de
Date: Wed, 23 Apr 2025 13:27:02 -0600
Message-ID: <20250423192705.1648119-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745436441; x=1776972441;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+lS48aIH0nwbF+4QasdHRqhUqt/P5CrH2lo+QcxCL40=;
 b=lYajAZ+eWdYKnq+ZdntfQWVV7t2zpxIVZNG5KauD20slEkN+TFnOuBYy
 aOA6R0AVIkccIDEZDv00RfdLdr4NortE33MsDsBb6/2sEYKLnpTi8wZzS
 659XH98aD0fIvaOcA0kfFym+snA31iXbuqJXkvnGpG4e/L6GLT0kWeZG7
 KAwX3K8678gbe9E/KZy//9w5x3Ai1bBsncVUeclE3EXfcEBlJBm5stiMM
 gANcgRK6+mvM4kjpdWuMg7d2xkZQ/6xwZQspuWTR1d6IKgc3AltPMGs96
 AQqyDRLG/MyhE3xf/hIMfJK1dpAkXeGanhzk14YosH5n4hZkB2OcKPfJv
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lYajAZ+e
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/3] idpf: add flow steering
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
v5:
    - Use u32 instead of u16 for num_fsteer_fltrs (patch 3).
    - Pass OP codes to idpf_add_del_fsteer_filters() (patch 3).
    - Use u32 instead of u16 for fltr->q_index (patch 3).
    - Use ternary operator in idpf_add_flow_steer() (patch 3).

v4: - https://lore.kernel.org/netdev/20250417221239.1390721-1-ahmed.zaki@intel.com/
    - Fix some conflicts in patch 2 (after PTP series).

v3: - https://lore.kernel.org/netdev/20250409205655.1039865-1-ahmed.zaki@intel.com/
    - Fix sparse errors in patch 3 (Tony).

v2: - https://lore.kernel.org/netdev/20250407191017.944214-1-ahmed.zaki@intel.com/
    - Rename "enum virtchnl2_cap_rss" to virtchnl2_flow_types in
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
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 124 +++++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 238 ++++++++++++--
 6 files changed, 660 insertions(+), 44 deletions(-)

-- 
2.43.0

