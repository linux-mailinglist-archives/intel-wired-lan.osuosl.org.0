Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C78DBB389D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 20:53:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C12A8224C;
	Wed, 27 Aug 2025 18:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DQGKFm7MKu5j; Wed, 27 Aug 2025 18:53:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92A5B82319
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756320823;
	bh=xFhMLG+hnpMpJiqxpuhZ6DyXPzkGEC8DmH3/ekomeb0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mQmQrS8eyj04lBBvYhPor4Rws/BEfGzB5zKZdo0phC0TN+FNpFjGLI7xhofSBJRJ7
	 euNe/HX4Pq3okP9xz/FBdvMj+ibLp0I3W96gVgxIqBQuHfzgTDHI1aNPa2mVFmLC25
	 0uqn+AtX0TEELUKc/T9XbHUYkkIfM94q1XFLULXZ+S9APLiZa9lQCO3aFeDL36CgP1
	 c84lNgXXfKrfAaOrV0sszjnbGYj0f0giK1FXRHY7jRMVqVuk3QxaPqLo5T0sZ4hhZ2
	 zX8EeFd0/7Mo27QZ//iOE2R+D7QeQCUK360RckoNWsF9m7lUIo6D9ZFQ8YZQAwKTVh
	 VIZ2D6dRug67Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92A5B82319;
	Wed, 27 Aug 2025 18:53:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D21E114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 18:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2369F610CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 18:53:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vvhpgak6WW0O for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 18:53:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4743661098
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4743661098
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4743661098
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 18:53:40 +0000 (UTC)
X-CSE-ConnectionGUID: lfjzCpE4SnG7tTIC8qhlpQ==
X-CSE-MsgGUID: tA6ywspMShuf9uF0VSzw1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58677610"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58677610"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 11:53:40 -0700
X-CSE-ConnectionGUID: I7pMfCksRmSwdptczJiuRg==
X-CSE-MsgGUID: qNRYP25ITxqmkwmXA/9QMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169846080"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmviesa006.fm.intel.com with ESMTP; 27 Aug 2025 11:53:39 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed, 27 Aug 2025 18:53:33 +0000
Message-ID: <20250827185338.1943489-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756320821; x=1787856821;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rhBvuqypf5LHhK3Z0/md04qrIWQLJc20kETHaLtkhz8=;
 b=a9vi8xvZrMCH5WI8VJJAntx8Zc13nQ65pCY7+uNnGkIp1eGSJgNupQAT
 aOMcDEo1jtjrPilpE+cxWjQwvcYhlBZBaYMRw5ed17Ez+r0lXz2wCUAqM
 2XL8TsNI0NxVRG8QQMjWIXkTqoj67ygMsA5rYyAyAZvs1makZhdErWncb
 eRkwf/Z3l38yKM1zVFmUDkyETo3ojpLU5ooOkksaRSC1LUwYAaOx2y7Bz
 Po6xWbjo8FRwXn0Ox7f12ebOeWHC55rvebh8VzITcAdF7l1ki9T4wMlZy
 O8GYwz6fE9avlTtsf6Buv0TnA9dRhT0fBzuSlzej01ov++TBe80D7rWY0
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a9vi8xvZ
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/5] iavf and ice: GTP RSS
 support and flow enhancements
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
Cc: netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series introduces support for Receive Side Scaling (RSS)
configuration of GTP (GPRS Tunneling Protocol) flows via the ethtool
interface on virtual function (VF) interfaces in the iavf driver.

The implementation enables fine-grained traffic distribution for
GTP-based mobile workloads, including GTPC and GTPU encapsulations, by
extending the advanced RSS infrastructure. This is particularly beneficial
for virtualized network functions (VNFs) and user plane functions (UPFs)
in 5G and LTE deployments.

Key features:
 - Adds new RSS flow segment headers and hash field definitions for GTP
   protocols.
 - Enhances ethtool parsing logic to support GTP-specific flow types.
 - Updates the virtchnl interface to propagate GTP RSS configuration to PF.
 - Extends the ICE driver to support GTP RSS configuration for VFs.

changelog:
v2:
   - reduce much repetition with ice_hash_{remove,moveout}() calls
     (Przemek, leftover from internal review)
   - now applies on Tony's tree

v1/RFC: https://lore.kernel.org/intel-wired-lan/20250811111213.2964512-1-aleksandr.loktionov@intel.com

Aleksandr Loktionov (4):
  ice: add flow parsing for GTP and new protocol field support
  ice: add virtchnl and VF context support for GTP RSS
  ice: improve TCAM priority handling for RSS profiles
  iavf: add RSS support for GTP protocol via ethtool

Przemek Kitszel (1):
  ice: extend PTYPE bitmap coverage for GTP encapsulated flows

 .../net/ethernet/intel/iavf/iavf_adv_rss.c    |  119 +-
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |   31 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   89 ++
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |   91 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |    1 +
 drivers/net/ethernet/intel/ice/ice_flow.c     |  251 ++-
 drivers/net/ethernet/intel/ice/ice_flow.h     |   94 +-
 .../ethernet/intel/ice/ice_protocol_type.h    |   20 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   48 +
 .../net/ethernet/intel/ice/ice_virtchnl_rss.c | 1404 ++++++++++++++++-
 include/linux/avf/virtchnl.h                  |   50 +
 11 files changed, 2070 insertions(+), 128 deletions(-)

--
2.47.1
