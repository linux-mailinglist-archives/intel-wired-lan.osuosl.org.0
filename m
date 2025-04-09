Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D61E0A832DC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 22:57:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62A5F41309;
	Wed,  9 Apr 2025 20:57:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id afePnBwhtfmc; Wed,  9 Apr 2025 20:57:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A56E541417
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744232232;
	bh=PXMAWynijImXfH8Y2ByREHGk1LMDptjZmi/y2uOUmoI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EUO2EZE1zk4KVVTlbDmIUNv5fgRIG8JrcGDwwtFUTE3Ezf6zwQCkQNq6qGW0+emMs
	 j6RjaR74luMHKR5prYAitI3oEymlNYgNhJjTrIyGnP4yNh7qfdhbxSxvqOdsd8/0oW
	 vrVaL3TadV0SZqGs3MReKJkVDYRDn8wxKI29ENxmdMdgh8HzGYregD40cL83DdIBdD
	 kIxNf7C1ebs+aasLApEP4zP4QOiUlLdaktBspnKrC1CgPZD8Jd7byLSEbllbR8INTF
	 vcHPN7qJ+/sZa3vdTpLs+KWUiQLiONfNPQZc10gU4Go6bd6VjO9lRdsb+11YNF0JYm
	 KrdqgFgle0rPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A56E541417;
	Wed,  9 Apr 2025 20:57:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 066A3201
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 20:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC03A60767
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 20:57:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RlmRLkzWpDfV for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 20:57:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F0F7C60C14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0F7C60C14
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F0F7C60C14
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 20:57:09 +0000 (UTC)
X-CSE-ConnectionGUID: whCXm0cQQPerHd+4PyOE6A==
X-CSE-MsgGUID: CsI+eUjBQ7W/w2M6tKFSgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="56711255"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="56711255"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 13:57:09 -0700
X-CSE-ConnectionGUID: Hp/p/5MMQO+ob42GLY1nSA==
X-CSE-MsgGUID: bQWsjAM4RsGC7eEeEMIf6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133422964"
Received: from kcaccard-desk.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.223])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 13:57:03 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, ahmed.zaki@intel.com, sridhar.samudrala@intel.com,
 aleksandr.loktionov@intel.com, aleksander.lobakin@intel.com,
 dinesh.kumar@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com
Date: Wed,  9 Apr 2025 14:56:52 -0600
Message-ID: <20250409205655.1039865-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744232231; x=1775768231;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NCFwEvRWd8RhKMXrRod3jP44gTOZyUL6jE+zGFld6X8=;
 b=nIiR5DnelQpwMF0Vz+g/ljniFnahBi00CR6qw+CqhnAuSVy7hvFzEF8a
 EpoNxetlnX3edpK7+ovx+IC4lyJH4QCLqUXhDKn5Yw5ju+DZvSMPVRfiW
 4OfCajmzVauPMYkAT6zg5lYV5DT4tU2jSC2FBK/Zmqi0Oxpf0pI9pA8g/
 jjZ4RxZtfHZFu2vQl5EhzZO10PQBk8ce6+9vg+3qsbTCa7c9TLTaxK91u
 7WMd9pApBDZACGoPoLfxwaJlTuzxt+bipPyiDlhUHB9IZvwpdex5/sied
 mTm4HF+fE/Yn0vdvm9jYz1cF2IltLO5dEb6XIyLm4TFduAu7eR0e3utW4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nIiR5Dne
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/3] idpf: add flow steering
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
v3: - Fix sparse errors in patch 3 (Tony).

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
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 120 ++++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 249 +++++++++++++--
 6 files changed, 665 insertions(+), 46 deletions(-)

-- 
2.43.0

