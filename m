Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1478E95C0D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 00:29:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 428EA80849;
	Thu, 22 Aug 2024 22:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hiIxgb4o7cZY; Thu, 22 Aug 2024 22:29:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9397380838
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724365779;
	bh=WVk/9fjp1+kL9naEHABzDvdp3lD6T8k3E4pdr7j0Zkw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qDtqibi81LG69Ztz+OV25g+F07lQakIyz57LYI5RJ6K81+fDjW/RgswgxX8zaEFjH
	 RGRmRbGVXxAuto4wj4yPveEAEt8lCpIBCttwOGebnrXLNQIt5IMaF4pM+5joq0yi7G
	 mCopHH9O6F0CzyeCNTzN1uJz0j1QYmOYU2mn1lrbCWCHq5StzUDlX4otQ3S+mqBgx4
	 49f+OE9VMjLWAv+ZzcYdmFWKrWaw9oCDDcRqoAHGJhMZvzuWkcyeJouSGmznb0AB4i
	 p2kxxoQTDFwmxoL/rxepmubrKLP23fx5C07MexmjDnES0Bootos8OSU2qaQKL/EFND
	 vhuaoYQpxklWA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9397380838;
	Thu, 22 Aug 2024 22:29:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 288641BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 22:29:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15BF980838
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 22:29:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VNvpy8hK_Me9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 22:29:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 35C92805BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35C92805BB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 35C92805BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 22:29:35 +0000 (UTC)
X-CSE-ConnectionGUID: MiiuKu1AQNe2H/KgCCP8IA==
X-CSE-MsgGUID: sNiXdiliSm6zisX+yRNq4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="40324993"
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="40324993"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 15:29:35 -0700
X-CSE-ConnectionGUID: kzrHlVg9TCCQNY/ZXxHE/A==
X-CSE-MsgGUID: DkQNrn/AQOCu9MQHPZoijg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="61903150"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa006.jf.intel.com with ESMTP; 22 Aug 2024 15:29:32 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 23 Aug 2024 00:25:11 +0200
Message-Id: <20240822222513.255179-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724365776; x=1755901776;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uoTeruy2C34oOFfNzZVYVsNBxCT+EvypAvtOIkcUyac=;
 b=BjeC734UQi/Uj2Tvogun54b+SoT7qHYBSHBRfMWHzQsW2qfk5OPEW+63
 VySjjHPctZmlZTj2jdGC+yCis1KVEvQX2U35uqafjRKx9F7r6a3CUWyDE
 G6oluypqRIHFyYRU9I5GHArNeCtyPVf9oGolWIwgovx/S223kk+9yzuOz
 CP1mNv9LPK+yJ6O8xeKtdoR2yN37sQJUcR32XmQXBh8YOZkwxcM2B4/fD
 Xjjf90rS5agjXgcgfcbdVRlztY4lVNMkcrTfI/Xes5/RzAfx5Nxz74KI2
 NGKnLy8gMFGlZ/KKeMSDmQkQFgeiNz4Uy0mzYq1i62EoCmLNcFNHISkpY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BjeC734U
Subject: [Intel-wired-lan] [PATCH net-next v3 0/2] Add Embedded SYNC feature
 for a dpll's pin
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
Cc: jiri@resnulli.us, corbet@lwn.net, przemyslaw.kitszel@intel.com,
 donald.hunter@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce and allow DPLL subsystem users to get/set capabilities of
Embedded SYNC on a dpll's pin.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Arkadiusz Kubalewski (2):
  dpll: add Embedded SYNC feature for a pin
  ice: add callbacks for Embedded SYNC enablement on dpll pins

 Documentation/driver-api/dpll.rst         |  21 ++
 Documentation/netlink/specs/dpll.yaml     |  24 +++
 drivers/dpll/dpll_netlink.c               | 130 +++++++++++++
 drivers/dpll/dpll_nl.c                    |   5 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c | 223 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |   1 +
 include/linux/dpll.h                      |  15 ++
 include/uapi/linux/dpll.h                 |   3 +
 8 files changed, 417 insertions(+), 5 deletions(-)


base-commit: d6f75d86aa786740ef7a7607685e9e1039e30aab
-- 
2.38.1

