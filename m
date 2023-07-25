Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 187F87624D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 23:51:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEA2541907;
	Tue, 25 Jul 2023 21:51:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEA2541907
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690321897;
	bh=2UR2oF5ExThHQcRQ0roQvBPzHLPZ6iQtJgdYPi3PfoE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t4bdL7H36nRWIIEj2mpZbVSrJnhkQvLndQYmlXQ0gf2FLS3pm9bTnZXnWB9PXMmB4
	 cmvEzr34JlcrUppsKr4xBgde8qY4xFups84dZrzErRbp/nUwr2AtHoHu2jUOWmWBPJ
	 +1v3WxVrlv4A10cdCiWiXrnDheR7CaeFq7DZ0+3od0afIl5i0NNQtcIuVgFiXZMVby
	 7Y0jHKvmnpl1nF2SVYZOpsnfFVTg+YqQbnRqFU1BgPM4NZOjGC0St8yCrCl0wUw7aQ
	 nG5L8rodDYWMKghLaQ9F1jnauyxrr409+8U3htZCr4gpN5WTotGpk25wiWmIvEBs+J
	 QO3rr0ucclaDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dAyjLHXFQEj5; Tue, 25 Jul 2023 21:51:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2703E418A0;
	Tue, 25 Jul 2023 21:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2703E418A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4867E1BF47A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F8C261124
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:51:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F8C261124
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yC4NgbYBj5Zh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 21:51:30 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17E9E60C18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 21:51:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17E9E60C18
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="352753630"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="352753630"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 14:51:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="1056933626"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="1056933626"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 25 Jul 2023 14:51:27 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qOPw9-0000Mn-2X;
 Tue, 25 Jul 2023 21:51:23 +0000
Date: Wed, 26 Jul 2023 05:50:30 +0800
From: kernel test robot <lkp@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307260524.gD96xyN6-lkp@intel.com>
References: <20230725203125.508243-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230725203125.508243-1-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690321890; x=1721857890;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4j1REvpsFGcYj8gu5WcqDBuw17M5YBKjzoMA4WaJsJo=;
 b=QLJeC6BHzcIAkVS1zVcP9AF3oaZ+HSVbXcDrbUBwlEw/kktEMdI+1S3Z
 QoFSNCEOLPT8N628xGEbE2y8kLlw1BFspu8Yf3zk9Q/PrcIeGesdvSbpa
 GhPw6g9fjqE41IaFRofjl2hDiCXHTBiP4ERWN3HEuCHQOClzG+QKZMFnu
 +ZFpKyJirs7LgJI7FNEiaxm9ffzlXH3z1/BEFqDy5PYT2d5yyw2IUqwG7
 qeym6yef25bkChmfSIvKw3nUb0fXflQhi4QZcN/yMq1aALdFUfTXiUDdk
 lrcTCy6CoJvpTT++rfEAiI2ZgU5pil7wX8RuRKxyyb2jYprKOd0TCwjnI
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QLJeC6BH
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: avoid executing commands
 on other ports when driving sync
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
Cc: siddaraju.dh@intel.com, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jacob,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-net-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Jacob-Keller/ice-avoid-executing-commands-on-other-ports-when-driving-sync/20230726-043405
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20230725203125.508243-1-jacob.e.keller%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-net] ice: avoid executing commands on other ports when driving sync
config: loongarch-allyesconfig (https://download.01.org/0day-ci/archive/20230726/202307260524.gD96xyN6-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230726/202307260524.gD96xyN6-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202307260524.gD96xyN6-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:1326: warning: expecting prototype for ice_ptp_one_port_cmd_e822(). Prototype was for ice_ptp_one_port_cmd() instead


vim +1326 drivers/net/ethernet/intel/ice/ice_ptp_hw.c

  1312	
  1313	/**
  1314	 * ice_ptp_one_port_cmd_e822 - Prepare one port for a timer command
  1315	 * @hw: pointer to the HW struct
  1316	 * @configured_port: the port to configure with configured_cmd
  1317	 * @configured_cmd: timer command to prepare on the configured_port
  1318	 *
  1319	 * Prepare the configured_port for the configured_cmd, and prepare all other
  1320	 * ports for ICE_PTP_NOP. This causes the configured_port to execute the
  1321	 * desired command while all other ports perform no operation.
  1322	 */
  1323	static int
  1324	ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
  1325			     enum ice_ptp_tmr_cmd configured_cmd)
> 1326	{
  1327		u8 port;
  1328	
  1329		for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
  1330			enum ice_ptp_tmr_cmd cmd;
  1331			int err;
  1332	
  1333			if (port == configured_port)
  1334				cmd = configured_cmd;
  1335			else
  1336				cmd = ICE_PTP_NOP;
  1337	
  1338			err = ice_ptp_write_port_cmd_e822(hw, port, cmd);
  1339			if (err)
  1340				return err;
  1341		}
  1342	
  1343		return 0;
  1344	}
  1345	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
