Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 410037C40A9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 22:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D928D60FBE;
	Tue, 10 Oct 2023 20:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D928D60FBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696968323;
	bh=M0hCNbWcxh4VPnkJpKFiZlIvzAS8qEjZV9Z+4UNAmeg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FdcaNCiP/K+cYVdsgMz6bBK64H1DYfS99ZeoYPS3KW333oBVXkduKaB7mgxEpl4KN
	 tcDvuWdLlvdrU3JibiN9+Tydzl0Qy0hxL+k952U41+o04X/ENGn2lsNYXmy1BRxLSJ
	 nsVN4AiAZiiR1GEVxZ6UMlsoJ0k2X8tuOJupZ5SSjamb6+g16tcLYGvdZhM5V0TfuK
	 ZrmG4yqugOlfB1SN5qzscg9SSdB8j9tG7+QGWuc7oCgahDslWiL82iJRwSwSVZI1Ff
	 VMRD1TMlxNOVsl+WkXTDilgvQHjiKWxDhmIDQAlBsbhsEDtY6OpyXZMRTXqWZyxfmu
	 r0xsov1AsGbIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mfIDvXVngCef; Tue, 10 Oct 2023 20:05:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 839D260FB1;
	Tue, 10 Oct 2023 20:05:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 839D260FB1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0F861BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8457081ADE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:05:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8457081ADE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2grtWublCwag for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 20:05:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF342817C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:05:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF342817C3
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374839993"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="374839993"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 13:04:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000819864"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1000819864"
Received: from rhaeussl-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.42.107])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 13:04:49 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 10 Oct 2023 14:04:31 -0600
Message-Id: <20231010200437.9794-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696968314; x=1728504314;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H9zuVNck3hbzlM+dU23Xf2FfdQjpTlHZ5OUi9JbqeCM=;
 b=iSslj0oBI70rBCe99hRypONITrZMaH+G2Fw36Yc1gvsm/3Ye/fafrTsD
 YS0cEpV9r5I7sc8QBUtNkMBkI2l3zYwC/udYDrr3Aiqt0137xH2YtfGeF
 uIY5QJgbzZxyvMwODHIzTdzd9NgW43WCPvZYO3ZKuY36i/9p+H2BFa7/M
 DC/1DAkuRbqhDx6aEQJbBn5RiRA8CWAPwal6rklfUc7LSt4EKa9gJXi01
 6cg6l8TtwcyI5/WKFdUQF3LcjtiJ3RqIBGg7DRTMkyRygmT+wcxGNLP1g
 EUIHAw/x//xk1iz92+0xwnxXxS0FT2pgWki5/fUx8QzW4+bRTA5GFW1hD
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iSslj0oB
Subject: [Intel-wired-lan] [PATCH net-next v3 0/6] Support symmetric RSS
 (Toeplitz) hash
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, vladimir.oltean@nxp.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, Ahmed Zaki <ahmed.zaki@intel.com>,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Patch 1 adds the support at the Kernel level, allowing the user to set a
symmetric RSS hash for any flow type via:

    # ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n symmetric-xor

Support for the new "symmetric-xor" flag will be later sent to the
"ethtool" user-space tool.

Patch 2 fixes a long standing bug with the register values. The bug has
been benign for now since only (asymmetric) Toeplitz hash (Zero) has been
used.

Patches 3 and 4 lay some groundwork refactoring. While the first is
mainly cosmetic, the second is needed since there is no more room in the
previous 64-bit RSS profile ID for the symmetric attribute introduced in 
the next patch.

Finally, patches 5 and 6 add the symmetric Toeplitz support for the ice 
(E800 PFs) and the iAVF drivers.

---
v3: rename "symmetric" to "symmetric-xor" and drop "Fixes" tag in patch 2.
v2: fixed a "Reviewed by" to "Reviewed-by", also need to cc maintainers.

Ahmed Zaki (4):
  net: ethtool: allow symmetric-xor RSS hash for any flow type
  ice: fix ICE_AQ_VSI_Q_OPT_RSS_* register values
  ice: refactor the FD and RSS flow ID generation
  iavf: enable symmetric RSS Toeplitz hash

Jeff Guo (1):
  ice: enable symmetric RSS Toeplitz hash for any flow type

Qi Zhang (1):
  ice: refactor RSS configuration

 Documentation/networking/scaling.rst          |   6 +
 .../net/ethernet/intel/iavf/iavf_adv_rss.c    |   8 +-
 .../net/ethernet/intel/iavf/iavf_adv_rss.h    |   3 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  22 +-
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   8 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  14 +-
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  35 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  43 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   4 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   7 +
 drivers/net/ethernet/intel/ice/ice_flow.c     | 439 +++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_flow.h     |  46 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   4 +
 drivers/net/ethernet/intel/ice/ice_lib.c      | 117 ++---
 drivers/net/ethernet/intel/ice/ice_main.c     |  49 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  55 ++-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  35 +-
 include/linux/avf/virtchnl.h                  |  16 +-
 include/uapi/linux/ethtool.h                  |  17 +-
 net/ethtool/ioctl.c                           |  11 +
 23 files changed, 637 insertions(+), 306 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
