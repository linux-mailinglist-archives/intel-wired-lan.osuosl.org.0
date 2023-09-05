Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51157792D16
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Sep 2023 20:08:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C95F740284;
	Tue,  5 Sep 2023 18:08:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C95F740284
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693937336;
	bh=C50fcospK22EOQSH9XsPVgx3MS38ybQIEem53thF+bs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gNCvCdlXRt2fAcx6gYlNAD3+nULknX0LiMi8t58xdG0Nvzykpj0Axkw90YnUzcvup
	 d5nZFCXvt2E5BAnV6y/qd/wj6OvwwKdoWpuYg45TtJe/8CLLE3ikKNB86NVoSqI726
	 JFPkqhsooYF6bzldqYs8EOLjjFHt2gorOdf9g2tNbhKjOkXTM4xGREuy9KXNRC1iYV
	 ziDttOngZbUeXYvQCJlyh0EyvTe0NoZJVgj+LxcC7sJOsaxuCdR01qkYyb3c4zpgsh
	 mqomTno0QsWAZ4UQg+DJ+G7ROnuybYi6sbKvHvWRI5YBMcmBRGIgQR1AWZQGbrublh
	 EYGvD7knPAXsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FtCos_0AiLUb; Tue,  5 Sep 2023 18:08:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89BA240245;
	Tue,  5 Sep 2023 18:08:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89BA240245
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A9881BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72928812A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:08:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72928812A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GVtVmRu6u5no for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 18:08:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54CEF81185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 18:08:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54CEF81185
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="375766537"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="375766537"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 11:08:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="806707334"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="806707334"
Received: from nsnaveen-mobl.gar.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.34.119])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 11:08:43 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Sep 2023 12:08:33 -0600
Message-Id: <20230905180837.3611383-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693937325; x=1725473325;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zxTxJLMUIhJ4rNYSAHd4nqihb4X4D2eIDrA7feHdSKk=;
 b=jKshzBqXjxVY+yuuD/mYWc27nTgsaw94kGUtC3hPiXePba6rOuCt0J2d
 q8wWD+DlSbGTuXHXAP30YLVlj1DN+lT/MIM29AQRKksNF+KquQpOvqTEk
 Suw/vcmlqqq11A0z9+HQGU+5A92fE0Wcgn4g28OqzKEvRTkviG35ZTbNa
 LiqARunFCh55VtCbqVkje1JKl1CWH9PhxuzkoQ+sI5llLud8hz5vPNbs9
 aiiM7W9CqkYTocU7CSlrSvYFJC9jY7u9sSu0rvQ1CoHysPN2u36zKLzKp
 bgfP26m4d8qSwYyqr9ZOHTIpfbNmDomDwoziVKBgnI9cq8GGUG4tsPlRD
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jKshzBqX
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/4] Support rx-fcs on/off for
 VFs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow the user to turn on/off the CRC/FCS stripping through ethtool. We
first add the CRC offload capability in the virtchannel, then the feature
is enabled in ice and iavf drivers.

We make sure that the netdev features are fixed such that CRC stripping
cannot be disabled if VLAN rx offload (VLAN strip) is enabled. Also, VLAN
stripping cannot be enabled unless CRC stripping is ON.
---
v5: Remove extra space in ice_for_each_alloc_rxq()  (3/4)
v4: Use ice_for_each_alloc_rxq in ice_vsi_is_rxq_crc_strip_dis()  (3/4)
v3: Fix Tony's comments in ice_vf_init_vlan_stripping() (3/4)
v2: Move patch "ice: Fix VLAN and CRC strip co-existence" from 4/4 to 3/4
    Other minor fixes from Tony for the same patch

Haiyue Wang (2):
  ice: Support FCS/CRC strip disable for VF
  ice: Fix VLAN and CRC strip co-existence

Norbert Zulinski (1):
  iavf: Add ability to turn off CRC stripping for VF

Paul M Stillwell Jr (1):
  virtchnl: Add CRC stripping capability

 drivers/net/ethernet/intel/iavf/iavf.h        |  2 +
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 59 +++++++++++++++-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  4 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 69 +++++++++++++++++--
 include/linux/avf/virtchnl.h                  | 11 ++-
 include/uapi/linux/ethtool.h                  |  3 +-
 7 files changed, 143 insertions(+), 8 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
