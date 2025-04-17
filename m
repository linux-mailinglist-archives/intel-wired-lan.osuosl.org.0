Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DF0A92D21
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Apr 2025 00:12:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C0FC83B5B;
	Thu, 17 Apr 2025 22:12:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cri2NSd9TDgb; Thu, 17 Apr 2025 22:12:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48A0B83CDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744927976;
	bh=8pW0i/guV0tYIiuoU7s9iPpFWfanAYzFBxn0zE+EPSU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Q3lYSOrGt8S5UVrBYe8oCsucTvskL+Hf19fEXgr2rjc80lxvUMF2R6Q/mv2j0cnt6
	 Jzou8gLAl3unY+Jh6Hxko0Cune0eY1gVu079PcE/+CF/CDqoIvLDiFYJLIOgN2Rv5x
	 j5SplmYiWvS6eUZUmF5kmnIiRiDSYI4v6lhgdqDPxFaT/9d5OySL/WPpS41M40yNMt
	 ZLydOQWc14qt8A+xNgviv37eIahKCubMZ8B+Yqcl15T5Yk24D6qLsRPS6fc/yNFpuo
	 RolAmx4PCD7hqCrWl8Q6ET0zsa8UXYhwZNxmSwYHLMlJ2zvX+3/QwC6D6u8dWRDWVQ
	 e4HAKUy3yyHXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48A0B83CDC;
	Thu, 17 Apr 2025 22:12:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5BCE611F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 22:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4C59381349
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 22:12:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WxpxBzkxYhHZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 22:12:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 41C81831CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41C81831CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41C81831CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 22:12:53 +0000 (UTC)
X-CSE-ConnectionGUID: c5lDQVoySq+bFfxLGF0NZw==
X-CSE-MsgGUID: dcGRrpqmRk6qECWusfTZmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="34168284"
X-IronPort-AV: E=Sophos;i="6.15,220,1739865600"; d="scan'208";a="34168284"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 15:12:52 -0700
X-CSE-ConnectionGUID: zpbTKG0FTyqjlMcL/gD/yg==
X-CSE-MsgGUID: lWjgCFG7SCKZP+C7IV6VFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,220,1739865600"; d="scan'208";a="168148920"
Received: from mgoodin-mobl2.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.58])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 15:12:47 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, ahmed.zaki@intel.com, sridhar.samudrala@intel.com,
 aleksandr.loktionov@intel.com, aleksander.lobakin@intel.com,
 dinesh.kumar@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com
Date: Thu, 17 Apr 2025 16:12:35 -0600
Message-ID: <20250417221239.1390721-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744927973; x=1776463973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h2uAEIodaUhnv30mkKugk8vncU08GSVmuJvKDRPya5s=;
 b=gcyLfntFLq48qWOrBuMZqOQPWXJkZCUiqlsbpkOZgmIzoqhAYRKCA/kL
 9YjOUiFx7i9slHgGSi+6ncsONuaH0K5DYHqC/LnVzA7nefV1Gyi+FEA3s
 YIl+HZXaNAAeKhclNTJQvUPbokRa7cnKejg5+e/vCME1rZbNQf/7GcIsg
 ZWWs9b4qLt1MDsE4FP7tY/DHnb/co2iue+pdt/w6lM50/iVUrAkKTQjKf
 Z5OMmw4uwZMzvDJnAjvFNZNt8Uq9BNgqN+M8ePOHmaiHRKDXFlhML0V+A
 uNO/07g0qdBhy7AK2xoeaF/kGSr+rTOucbpOhJRoye+1xRuadElUDIW0S
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gcyLfntF
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/3] idpf: add flow steering
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
v4: - Fix some conflicts in patch 2 (after PTP series).

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
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 120 ++++++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 238 ++++++++++++--
 6 files changed, 656 insertions(+), 44 deletions(-)

-- 
2.43.0

