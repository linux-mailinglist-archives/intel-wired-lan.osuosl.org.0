Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B565A6081A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 05:53:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9278416CD;
	Fri, 14 Mar 2025 04:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CSbuvWaUkUSd; Fri, 14 Mar 2025 04:53:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84FA941767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741928000;
	bh=2XPodCIk/KiKB6BrLu97EWCssq01ThqV2SJTRhxNljg=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6qYZSyrrT1CSsVVeYs+0Hsyhv9WgJKQTYIdG7LxZ68Y4KGIMJlM3FT949XygJWJuy
	 nlt9zd4s8V0ocAkKN8TcW77Z8b0dsf5yktH1a8/Cl3Nr5d/inpC3U/O1+db9JdExu8
	 CmMFm3iaJ04mUuV5SZtxEZ70GU9P0SjwDQbxObCcSSiptaIkU16boP0jFE7AA1K4Gz
	 RF5xsMqPWltuqJrsG6dZIKVDk4Wm8Pg2bh81iB3O8xbI5robECX9IqcVXBgJxzQPPl
	 12+Lzh4OHBat6lOIeQEGcGpS2kHemBU7qy9Aycolfo9qJX4ilUIOvlkTjnywKXuiQv
	 ucvu/pon2SBQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84FA941767;
	Fri, 14 Mar 2025 04:53:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DAEB9C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 04:53:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEAF160750
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 04:53:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q_3gFlKoQgvo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 04:53:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B9CD860EC2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9CD860EC2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B9CD860EC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 04:53:16 +0000 (UTC)
X-CSE-ConnectionGUID: P7LAPcS0S4eVmP6C8J+eTg==
X-CSE-MsgGUID: CuAZpxjaQ3uJYR5yGuB3SQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="30660147"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="30660147"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 21:53:16 -0700
X-CSE-ConnectionGUID: TFsG/ESwTK+MhgeBuBMc3g==
X-CSE-MsgGUID: yKj5u0TXTMSFloL0hE8aKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="158297376"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 13 Mar 2025 21:53:14 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tsx2l-000A88-1E;
 Fri, 14 Mar 2025 04:53:11 +0000
Date: Fri, 14 Mar 2025 12:52:33 +0800
From: kernel test robot <lkp@intel.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <202503141235.JHgptZMW-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741927997; x=1773463997;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=yO/tIOsQ9Uyv/p6uf8fje1m/SEwoYXRXzO6lAvUj6E8=;
 b=OsUZhcq9EPPxX0a/cKcTsMYRIqrGXs12QiwGMt2RdQawKh7XjevzCYCN
 2H1hdsD0s/y593AiuQ0BisRHPKTMONyNYPgasxby42rLQtEa1nBwafepG
 nvl8dL8psGogoRh8hAcHMgZgfGqA/8yQSm1I0UQh1gCJ9Q/54bj2NxlNI
 BiYzRhW2u+KOvPZuJyCjtg6THKzCs7ub4adQnXL+zaEohdj+lnSnaOmW/
 TfHE+lsdSNrej0aIBFJ4fOFHfUPILcLWVBZhHTfwaJYGiR1LELjTJXibz
 MnYj2YriifUcSzTHNdhcIjEqhrcKaCelLBLI/TeUEF0b84iSEZ2Ax/SMR
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OsUZhcq9
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 84/88]
 drivers/net/ethernet/intel/igc/igc_tsn.h:48:undefined reference to
 `ethtool_mmsv_event_handle'
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   7dca3a8a1f3c70a4ba8115e4ee5827e424629eaf
commit: cb3499eabcea3f82c2ded3922431309d440b8ff3 [84/88] igc: add support for frame preemption verification
config: arm64-randconfig-001-20250314 (https://download.01.org/0day-ci/archive/20250314/202503141235.JHgptZMW-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250314/202503141235.JHgptZMW-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503141235.JHgptZMW-lkp@intel.com/

All errors (new ones prefixed by >>):

   aarch64-linux-ld: Unexpected GOT/PLT entries detected!
   aarch64-linux-ld: Unexpected run-time procedure linkages detected!
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_fpe_handle_mpacket':
>> drivers/net/ethernet/intel/igc/igc_tsn.h:48:(.text+0x9670): undefined reference to `ethtool_mmsv_event_handle'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_clean_tx_irq':
>> drivers/net/ethernet/intel/igc/igc_main.c:3157:(.text+0xec24): undefined reference to `ethtool_mmsv_event_handle'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_watchdog_task':
>> drivers/net/ethernet/intel/igc/igc_main.c:5878:(.text+0x10384): undefined reference to `ethtool_mmsv_link_state_handle'
>> aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_main.c:5917:(.text+0x1056c): undefined reference to `ethtool_mmsv_link_state_handle'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_down':
>> drivers/net/ethernet/intel/igc/igc_main.c:5352:(.text+0x114c8): undefined reference to `ethtool_mmsv_stop'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_ethtool.o: in function `igc_ethtool_set_mm':
>> drivers/net/ethernet/intel/igc/igc_ethtool.c:1799:(.text+0x470): undefined reference to `ethtool_mmsv_set_mm'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_tsn.o: in function `igc_fpe_init':
>> drivers/net/ethernet/intel/igc/igc_tsn.c:131:(.text+0x11e0): undefined reference to `ethtool_mmsv_init'


vim +48 drivers/net/ethernet/intel/igc/igc_tsn.h

    27	
    28	static inline bool igc_fpe_handle_mpacket(struct igc_adapter *adapter,
    29						  union igc_adv_rx_desc *rx_desc,
    30						  unsigned int size, void *pktbuf)
    31	{
    32		u32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);
    33		int smd;
    34	
    35		smd = FIELD_GET(IGC_RXDADV_STAT_SMD_TYPE_MASK, status_error);
    36		if (smd != IGC_RXD_STAT_SMD_TYPE_V && smd != IGC_RXD_STAT_SMD_TYPE_R)
    37			return false;
    38	
    39		if (size == SMD_FRAME_SIZE && mem_is_zero(pktbuf, SMD_FRAME_SIZE)) {
    40			struct ethtool_mmsv *mmsv = &adapter->fpe.mmsv;
    41			enum ethtool_mmsv_event event;
    42	
    43			if (smd == IGC_RXD_STAT_SMD_TYPE_V)
    44				event = ETHTOOL_MMSV_LP_SENT_VERIFY_MPACKET;
    45			else
    46				event = ETHTOOL_MMSV_LP_SENT_RESPONSE_MPACKET;
    47	
  > 48			ethtool_mmsv_event_handle(mmsv, event);
    49		}
    50	
    51		return true;
    52	}
    53	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
