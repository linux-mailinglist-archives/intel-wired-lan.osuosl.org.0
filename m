Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C8FB3B881
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 12:18:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 077D983CF0;
	Fri, 29 Aug 2025 10:18:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3voSVuOSdsCv; Fri, 29 Aug 2025 10:18:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 280E383CCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756462696;
	bh=+Iq8uwECXPwhgzR7it92bxJoiOfH6i59ge4ufJ1ce8s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=F8htuWSvBJOlxekKY7GlXcYk9Q9ZhTXke8sGYfjlvRsd/WqNmj163KeP1//uMt0Eb
	 ycrKBNQwPzWvS3HS1MIWa0qDxrVkduRbsCBoinl19YTRJMLRK36sPLIOr6e5VgYIBV
	 3dqtYyKNng6IDUy7ZQhYfCraBXlxkIsNBRHXEwli8I3h/UI7g5WjJeElOjGiS1VIf/
	 9NAOyf/iSnPXY2GVXxVRAqTGSDe+W3KfZ8P6TlStOSIk1CNNaPlICs7uJMU0258PLe
	 ly1g9R8kEqbIsdmJnyP00izHKHeGij0Z49CFM3KjHDK/S5y6X9yraybJpSccWB6V2Y
	 7ntxcczRKoAew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 280E383CCC;
	Fri, 29 Aug 2025 10:18:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A761D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 10:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0111483CE1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 10:18:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5dhRt5JJl-fj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 10:18:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 254B183CCC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 254B183CCC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 254B183CCC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 10:18:12 +0000 (UTC)
X-CSE-ConnectionGUID: x+mwHZurSICYwYraQA735w==
X-CSE-MsgGUID: 5l4H2a1rQHml6JWpq0uBEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="76199440"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="76199440"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 03:18:12 -0700
X-CSE-ConnectionGUID: XHTGe6zTT5O7l6Cg8mm26A==
X-CSE-MsgGUID: DTSLO3h5QJCuSJBT0iFU/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="207489195"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 29 Aug 2025 03:18:10 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Fri, 29 Aug 2025 10:18:03 +0000
Message-ID: <20250829101809.1022945-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756462693; x=1787998693;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6SqRA4GD1MVyoS2S80aiNNumaKmzWUa+dtluct8f0gc=;
 b=Y/sLq9xm3WJ1aDz+0Kxsfav/buO8gMGXps2SR/c6sFqt5BKe4HEbOnFz
 6uZ7QoAucor0CK9EsoGP4yYZsEIDkU7GFU2D0Law73HC1qtrniNLFLnsv
 5ykT+AK8r0198RxJYUWpbz5tCG4xgPilfwneOT7e3QXtxOtnNWqv2GSe3
 PLbjoKpzW9TSbzI7J2/4JOlLJQIpOsAFI5YkNxoU5zyKjjfXgltW7xfaJ
 W3dMJOExpq4YLdYujdLrlvCXRpAkP84uvBpP6gK0VHfFfIEfR6Grv7wFZ
 bOkLV7SBvQBPIhKzLHFEi2h1dUEzR5zlMvUOngDpNqKsu1DBgix/9FwbV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y/sLq9xm
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf and ice: GTP RSS
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
v4:
   -remove redundant bitmask in iavf_adv_rss.c for dmesg
v3:
   -fix kdoc-s in ice_virtchnl_rss.c
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
