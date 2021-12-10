Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475BD470239
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 15:01:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C443B411F2;
	Fri, 10 Dec 2021 14:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q1vaR3-EpJjg; Fri, 10 Dec 2021 14:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71312401F5;
	Fri, 10 Dec 2021 14:01:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A83591BF573
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 94C07613E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GWQoMqLr33W3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 14:00:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4569060908
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639144853; x=1670680853;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+3xcxnlr+0V9wAyeoMluAwgNokJlt0chsySF41otqNk=;
 b=Yx/mLZwOunJXVLcrQdryHnClA896hKVBTb+5g92laiEIDxYFrj0vfJtp
 b0D9YzxYE0hZeWh+h5gw1eUiOncGk08qwWyYyM+oBcYHUY77Di0kcaBh0
 vhCjw5ceTLQBbYm0JGPhyfyMYPYIV4BSaHhrmxYWRtWgO5j5MjANiucMs
 PpODX09yup3pxOOlfDD9WUpPISCzo6Sl/xo72MnME3RnTSGcMyV5S17wO
 400NVgYCnHkM3VeQw+fkY1acF6/In3u4QekPIiA4WyrE+E6zMF9xQ9gfw
 Pzxc3fP46LQSAeTtg0E1Zgo8lkGiAEAjMite8QXSc8BkIDz0D0BhVawkx w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238572006"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="238572006"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 06:00:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="612934611"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.231])
 by orsmga004.jf.intel.com with ESMTP; 10 Dec 2021 06:00:48 -0800
From: Maciej Machnikowski <maciej.machnikowski@intel.com>
To: maciej.machnikowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, arkadiusz.kubalewski@intel.com
Date: Fri, 10 Dec 2021 14:45:46 +0100
Message-Id: <20211210134550.1195182-1-maciej.machnikowski@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v5 net-next 0/4] Add ethtool interface for
 RClocks
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
Cc: mkubecek@suse.cz, petrm@nvidia.com, abyagowi@fb.com, saeed@kernel.org,
 richardcochran@gmail.com, idosch@idosch.org, linux-kselftest@vger.kernel.org,
 kuba@kernel.org, michael.chan@broadcom.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Synchronous Ethernet networks use a physical layer clock to syntonize
the frequency across different network elements.

Basic SyncE node defined in the ITU-T G.8264 consist of an Ethernet
Equipment Clock (EEC) and have the ability to synchronize to reference
frequency sources.

This patch series is a prerequisite for EEC object and adds ability
to enable recovered clocks in the physical layer of the netdev object.
Recovered clocks can be used as one of the reference signal by the EEC.

Further work is required to add the DPLL subsystem, link it to the
netdev object and create API to read the EEC DPLL state.

v5:
- rewritten the documentation
- fixed doxygen headers

v4:
- Dropped EEC_STATE reporting (TBD: DPLL subsystem)
- moved recovered clock configuration to ethtool netlink

v3:
- remove RTM_GETRCLKRANGE
- return state of all possible pins in the RTM_GETRCLKSTATE
- clarify documentation

v2:
- improved documentation
- fixed kdoc warning

RFC history:
v2:
- removed whitespace changes
- fix issues reported by test robot
v3:
- Changed naming from SyncE to EEC
- Clarify cover letter and commit message for patch 1
v4:
- Removed sync_source and pin_idx info
- Changed one structure to attributes
- Added EEC_SRC_PORT flag to indicate that the EEC is synchronized
  to the recovered clock of a port that returns the state
v5:
- add EEC source as an optiona attribute
- implement support for recovered clocks
- align states returned by EEC to ITU-T G.781
v6:
- fix EEC clock state reporting
- add documentation
- fix descriptions in code comments


Maciej Machnikowski (4):
  ice: add support detecting features based on netlist
  ethtool: Add ability to configure recovered clock for SyncE feature
  ice: add support for monitoring SyncE DPLL state
  ice: add support for recovered clocks

 Documentation/networking/ethtool-netlink.rst  |  62 ++++
 drivers/net/ethernet/intel/ice/ice.h          |   7 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  70 ++++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 224 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  20 +-
 drivers/net/ethernet/intel/ice/ice_devids.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  96 +++++++
 drivers/net/ethernet/intel/ice/ice_lib.c      |   6 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  35 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  49 ++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  36 +++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 include/linux/ethtool.h                       |   9 +
 include/uapi/linux/ethtool_netlink.h          |  21 ++
 net/ethtool/Makefile                          |   3 +-
 net/ethtool/netlink.c                         |  20 ++
 net/ethtool/netlink.h                         |   4 +
 net/ethtool/synce.c                           | 267 ++++++++++++++++++
 18 files changed, 929 insertions(+), 4 deletions(-)
 create mode 100644 net/ethtool/synce.c

-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
