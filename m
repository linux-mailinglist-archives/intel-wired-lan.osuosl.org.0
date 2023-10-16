Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B56867CAE1A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 17:50:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E572401C6;
	Mon, 16 Oct 2023 15:50:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E572401C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697471405;
	bh=NBGKxXedLmb60nDIi5e460mXR5wLxvEo0iTlixifh8E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sjYR6HVOggVw4h1EKJvn5fjUxjUErP2bf3KrXnJU3y3ndZTgWdSkWuQ6oEbWOd8AM
	 oaTqxa29j6tDBb7zUFHCRc8SvKiHjJf9K4DNA2nsdXIY7/SFC1X3Yl98jrAaj21P5G
	 G1lEauQHOWFyCLKBOfz2T9f4G3UiccbzZzDp5EYvfbAP1xY0zbGTr27335RPCn+UAU
	 shk3AGSsJNBxcijjkOBcaTDV95ScgkiANN5ymwZxwBItybhRgKeiYyc0zIV7nhOdNq
	 WN5sCl97/CAnxo9Vkfrmj7iieXMrFeiBYevaHUEtQVZA+bGZjbSBxfISTJPc8LWKEg
	 rdwj8naKGp4gQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vcynbwNi3Iog; Mon, 16 Oct 2023 15:50:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5526401A1;
	Mon, 16 Oct 2023 15:50:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5526401A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB19E1BF263
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 837FB40182
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:49:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 837FB40182
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTGM9BTMsNzB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 15:49:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5CCD1400DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:49:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CCD1400DD
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385400207"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385400207"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:49:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="749323888"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="749323888"
Received: from rolfrich-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.38.44])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:49:49 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 16 Oct 2023 09:49:31 -0600
Message-Id: <20231016154937.41224-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697471396; x=1729007396;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mFIWgW4AZ8A5pXQQuNhVAhKcL5eIVVFCa+hlYjdX2SE=;
 b=CJt4Ai+e0sW8C0sTojTh/LQtVl0/rh1jx/G1Kzfd/Yq5nK9gPdb6f1EG
 uFFUcrBlxPh04/lEoTavFmVcoNBFtrWySRuyH948dpi9Gzqge6dBMyzVN
 KPPxp0LuJL2LqoSmiyWzzb3OzyoagQ1vpp2svXl1pzALIBOMapHexF0rn
 pEhi74CV8MZcfdm+L9HZTvAkgrVRhM7ytzTkjF25TidPqWCKHdwm4xUUE
 ZH/DjvmWP/FHkP/FOCIoNPEBpCYklM+FgJJXXgYkqwIkwtRHHp2EJSxpO
 SFmtBKQFdHCJjPLooudh0WkrYXrSzMyhY2rmANGtQUJF2sipRnyftmZG/
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CJt4Ai+e
Subject: [Intel-wired-lan] [PATCH net-next v4 0/6] Support symmetric RSS
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
v4: add a comment to "#define RXH_SYMMETRIC_XOR" (in uapi/linux/ethtool.h)
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
 include/uapi/linux/ethtool.h                  |  21 +-
 net/ethtool/ioctl.c                           |  11 +
 23 files changed, 641 insertions(+), 306 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
