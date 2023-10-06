Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9FF7BC269
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Oct 2023 00:47:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FBB860B9B;
	Fri,  6 Oct 2023 22:47:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FBB860B9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696632475;
	bh=Inwl1IUqbacgum/HNcg8+GM0rZceTdPmHFmIPo3JCno=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yQSfvqhchtAA7BCXNVNCQgUUnf4NxZffSB2qk/zVEL1jIKGaR52h4TZnkMwbQR2eP
	 kHxCuE7X502Yn1+lkb5gfSQSfWDZXDdTmpi0XaUID7ADL3GHDzMSM5Ri3t5PbRCh3v
	 YHGIhf3sBa1rkp/W9BTQ26DO7GteDN4g7UK9aY9ITE0zETuBSgMAqstuVw7yAhoUiJ
	 rZafU72wO8NWfHTigT3sWE8fQ+qz2TT4TqmLMPR+cmr4yt8G3a0CfwOVtEURy93C6n
	 tcJkmfN5JRi3tuJXAPXrI7nTMnAspEVBwJA+Z/5OuQIDfSAMurFwo1HeerraSuKgPd
	 1xPf4Kr+7B+jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b4AMw92Tdzw7; Fri,  6 Oct 2023 22:47:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6841260B79;
	Fri,  6 Oct 2023 22:47:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6841260B79
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E332B1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:47:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C84CC42628
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:47:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C84CC42628
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H0yn42pKBT64 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 22:47:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11E7340141
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 22:47:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11E7340141
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="363201035"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="363201035"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 15:47:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="1083610273"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="1083610273"
Received: from dianaman-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.35.113])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 15:47:37 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  6 Oct 2023 16:47:20 -0600
Message-Id: <20231006224726.443836-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696632468; x=1728168468;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bdO/eXGWqqUwhqjwYhaRyZqthYwKjApWktfkShRAH8I=;
 b=VVhdyH2PbG0ZgLtxM6zrGxOvmUFDVyUGnAMcx7qOFTHGR7DW0I6xFgKv
 qkbmuLjz4G+ppgk8TMNNuZMVwO5QixWKgboNk9qRsMpJNuyd6x2HSL4sK
 7C88VOZB/bF1f+CCcdhRzf9D8DxnMs/3O1GrtUQlX3F1hzDSosI/a7wZj
 LYA4gTlUNSVXgiPabEU2v9LsBEr/VO3cE92HFPaUVPvTUjWsdgYNquIsF
 O9ikaTCwwL0l8qP4MoOh5BBw0fKKFcM9iqg2xP5bg6ZFxI4LS3+q4webz
 I0TKQKMlEAefefKU7t3rJKhZ4VB5zoA3e6sD/IBZx1uGOavjKYuZCFigo
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VVhdyH2P
Subject: [Intel-wired-lan] [PATCH net-next v2 0/6] Support symmetric RSS
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, corbet@lwn.net, vladimir.oltean@nxp.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Patch 1 adds the support at the Kernel level, allowing the user to set a
symmetric RSS hash for any flow type via:

    # ethtool -N|-U eth0 rx-flow-hash <flow_type> s|d|f|n symmetric

Support for the new "symmetric" flag will be later sent to the "ethtool" 
user-space tool.

Patch 2 fixes a long standing bug with the register values. The bug has
been benign for now since only symmetric Toeplitz hash (Zero) has been
used.

Patches 3 and 4 lay some groundwork refactoring. While the first is
mainly cosmetic, the second is needed since there is no more room in the
previous 64-bit RSS profile ID for the symmetric attribute introduced in 
the next patch.

Finally, patches 5 and 6 add the symmetric Toeplitz support for the ice 
(E800 PFs) and the iAVF drivers.

---
v2: fixed a "Reviewed by" to "Reviewed-by", also need to cc maintainers.

Ahmed Zaki (4):
  net: ethtool: allow symmetric RSS hash for any flow type
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
 include/uapi/linux/ethtool.h                  |   1 +
 net/ethtool/ioctl.c                           |  11 +
 23 files changed, 629 insertions(+), 298 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
