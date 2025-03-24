Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C56B1A6DC00
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Mar 2025 14:49:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64DCB60BE3;
	Mon, 24 Mar 2025 13:49:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1qM-Nef2D9TE; Mon, 24 Mar 2025 13:49:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E33E860BD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742824193;
	bh=J4Fd/GDtMD3cRpakDJTBdD0oEAJIIdl13ZEsmdd8G9c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SLD/nYG1kZcauiM9BUj8zd/jT3eIKCEH52vi7yh2/7YDzVCZgLq+a6fpZadvDNDzo
	 5GpmBgfQzEHOKMNhRTRllEuLJuv67bMXe85IPGgfKf4cEyglwqbzSPl5Gogdotg2NM
	 obsHjP/s84of1XW6PsMwCWYR9VZYoMyVi+fywmiw+4sy5qSBqaE2q0xdZS3iRW6MEn
	 tY9Gje/KYY1nwldcgbMn1dX+VOXhGKbomU75Mq44GcWMpGhZh9MbcqaId9vOgz6UfY
	 RY1pLoXFAK5nyizFbZ9makUw14lBGvYc43ZFebWYaY+LxRq14W6M2Sw4Ju1DneSYlB
	 le5XBFN8Nvx6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E33E860BD8;
	Mon, 24 Mar 2025 13:49:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 229651B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 13:49:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13B7E821E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 13:49:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3YvnxLonG7Hk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Mar 2025 13:49:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 30A7E821C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30A7E821C9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30A7E821C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 13:49:49 +0000 (UTC)
X-CSE-ConnectionGUID: kg/G8voEQdG44V/LbHcQWQ==
X-CSE-MsgGUID: HP97PeThTO2Yu3GJMXL+oA==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44042452"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="44042452"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:49:49 -0700
X-CSE-ConnectionGUID: 21eX0LNWSfqQqopcVrOlpw==
X-CSE-MsgGUID: l9kMlYLyRxWMkDklznG6fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124572038"
Received: from kinlongk-mobl1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.111.77])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:49:46 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 almasrymina@google.com, willemb@google.com,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon, 24 Mar 2025 07:49:36 -0600
Message-ID: <20250324134939.253647-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742824191; x=1774360191;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jRHH3qfGBbAZx7F9b5q3n/Z7g+/ohCk78ZR+9CphUHA=;
 b=PxqSpFkXReHlk8vTpjU8VE4Q96Dns6jIK5ah0Rpre2BCRi46dHIPp0Id
 zHJeifNQknByQFmyS1fiEZZdftVOboR2S1W/6LaeT7uKxMzohPXNqYEJF
 RcAtHGOi/cGCY8V+Hm6+uMe5U9ZTOhUJPdYpcMXKGkWzahh0xxT7fqt/u
 pNQvFEqZhLJwS5jMjt5u88ZHaLUg9VzF+NZkHincX6v02eROnQl1jRS6g
 6iTJ1wj2o8bpRLIuqUs2wQsIbCD0JhgyE6luV+z6bCNx05rFdVtIY46Bo
 Ek17Md3zE/g2bGukhg6k5kD+jOgsKOF0nQAwI2JzoRH4AgcTRmJqu8hQ6
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PxqSpFkX
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] idpf: add flow steering
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

Ahmed Zaki (1):
  idpf: add flow steering support

Sudheer Mogilappagari (1):
  virtchnl2: add flow steering support

 drivers/net/ethernet/intel/idpf/idpf.h        |  14 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 297 +++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   6 +
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 104 ++++++
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 233 +++++++++++++-
 6 files changed, 650 insertions(+), 10 deletions(-)

-- 
2.43.0

