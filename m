Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2068915B9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 10:25:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2149360EDC;
	Fri, 29 Mar 2024 09:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9-cPjzyC0yJn; Fri, 29 Mar 2024 09:25:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34B8160EAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711704349;
	bh=QooXmhPEOHTcafzUpj6Fuk0vzWhB0rECIREPc8L7Nno=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lf8vk+tpYxwRImj9wmUGtguXGtreaH/5rSygdJSLPEKwZ1fdYffy+x2qBENFkMXot
	 9DdH1vVMGJJYNzzBq2t7GhJ/B5+P7fajcgccbcqaJssYq6PK+n7VDhGowMiDDPcZ+a
	 tkAyhJqDQbWApQIVNs38UeJuUugZV/neovqNcD4i9Y21ofdUpqsk/h7or8aljUYnBF
	 wbIgYhot3la4ZtI6aEyq9dpFvkCU1U2Ls0rk3hymu0DZ7xurVJvoIoa8qh54qPUR24
	 D6AtkUGkEqxgloSRRC182BOGni+BgKkK69wUgLD8JJuesF6S78w+pMyU2w/sOrMhtx
	 0RKOePnTxDeMQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34B8160EAE;
	Fri, 29 Mar 2024 09:25:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE7531BF288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B775760E8B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o6DVisKPmYWb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 09:25:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5BA6260650
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BA6260650
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5BA6260650
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 09:25:45 +0000 (UTC)
X-CSE-ConnectionGUID: X6bYEKIYRVWmtrbecdp3DA==
X-CSE-MsgGUID: BH9V0l+GRK+DyDiCfOeKRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="7107018"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; 
   d="scan'208";a="7107018"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 02:25:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="16986841"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 29 Mar 2024 02:25:34 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E9EDF3433E;
 Fri, 29 Mar 2024 09:25:30 +0000 (GMT)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 29 Mar 2024 10:23:18 +0100
Message-Id: <20240329092321.16843-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711704346; x=1743240346;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SiFhzy8Dzb88IW3DhGTg7DK++p/eHDcqL5kDh9xXjbw=;
 b=LttTPZGEQ5/r/WkM+7CY3/deWIvUiiO02VqvyDmorGx2bnwZ5Kw33viw
 RvwriAz52CCP0Dfr1gmmmnCrjX6f4T6mRgRozEhOhjf9sve5LZdpQv6+N
 rUF2URGE70v1qr8QvxxjqJOAGxYiYfvsvXIy5MeHNM+svDsOtuC3RdV9F
 1zaE6djIdGjm8Stwsfz2Gp0rrHhYBFBBzLazVxUQKHQA7ws+ZdyDMfQAB
 ywFztgnTA6CjUymx+nVrt2+vezpCQD/q7DeGrMTe56iZbZsvdLLpwm6Gn
 Uy5u3I1qypHCKlxmc/vuhGxuLQ+waJLIWuYKUnGMOBJkrpZ7DnQ4aCzZB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LttTPZGE
Subject: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power support
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
Cc: simon.horman@corigine.com, idosch@nvidia.com, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some ethernet modules use nonstandard power levels [1]. Extend ethtool
module implementation to support new attributes that will allow user
to change maximum power. Rename structures and functions to be more
generic. Introduce an example of the new API in ice driver.

Ethtool examples:
$ ethtool --show-module enp1s0f0np0
Module parameters for enp1s0f0np0:
power-min-allowed: 1000 mW
power-max-allowed: 3000 mW
power-max-set: 1500 mW

$ ethtool --set-module enp1s0f0np0 power-max-set 4000

This idea was originally discussed here [2]

[1] https://www.fs.com/de-en/products/69111.html
[2] https://lore.kernel.org/netdev/MW4PR11MB57768054635E8DEF841BB2A9FDE3A@MW4PR11MB5776.namprd11.prod.outlook.com/

Wojciech Drewek (3):
  ethtool: Make module API more generic
  ethtool: Introduce max power support
  ice: Implement ethtool max power configuration

 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  21 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  46 ++
 drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  14 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 461 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_nvm.c      |   2 +-
 drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 .../net/ethernet/mellanox/mlxsw/core_env.c    |   2 +-
 .../net/ethernet/mellanox/mlxsw/core_env.h    |   2 +-
 drivers/net/ethernet/mellanox/mlxsw/minimal.c |   8 +-
 .../mellanox/mlxsw/spectrum_ethtool.c         |   8 +-
 include/linux/ethtool.h                       |  35 +-
 include/uapi/linux/ethtool_netlink.h          |   4 +
 net/ethtool/module.c                          | 102 +++-
 net/ethtool/netlink.h                         |   2 +-
 17 files changed, 669 insertions(+), 50 deletions(-)

-- 
2.40.1

