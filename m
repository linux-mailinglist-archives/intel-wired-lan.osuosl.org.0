Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B38BB89D8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 04 Oct 2025 08:04:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B86D61726;
	Sat,  4 Oct 2025 06:04:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3qGjYrdz7Zif; Sat,  4 Oct 2025 06:04:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B946761722
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759557887;
	bh=7ZcQa1SdEwHJnr7K+pyxUzFy2pF8QCScAOrLruF0zNA=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=34f0eNbu9WDEBXZsehVH0fqiH0a6B+GGPGtZnq5zh0vWw/Lhc5Dtgw9n88HMcSYS+
	 dG6kkEh9s+bMZYezWHikG0ipYkHmsibPx4IirPScJowu0ucyM0R3UDr0eXTwb2Vs8c
	 HXvns99Un+q/68mbDe3RgfiY3Ud/flchVjSZdQUEcfXudOXBRKkQqUaT3YIKG45Dxo
	 PRRloy9G9EkEP4LjzDTT+Ug3AiJeP++RDx+gCJnOpDALLW44+e645+N9cJng0iLpwY
	 kJMkWGxqw+JXp0HwRvD31GVkbL976BYCCBRQ/edcZ02fmkBzxBzihEadNdKXLz490U
	 /NyAwJFeSqNLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B946761722;
	Sat,  4 Oct 2025 06:04:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FAD2226
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 06:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2145240F02
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 06:04:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fi3pRAW6LjDM for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Oct 2025 06:04:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D8E7140F9F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8E7140F9F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8E7140F9F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 06:04:44 +0000 (UTC)
X-CSE-ConnectionGUID: G9P2fZc3Ts275qAZkzYn+Q==
X-CSE-MsgGUID: no0usU1qSnqPOWM8vRU+0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="64447528"
X-IronPort-AV: E=Sophos;i="6.18,314,1751266800"; d="scan'208";a="64447528"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 23:04:44 -0700
X-CSE-ConnectionGUID: ZT8lhu68Q06OZVVrpmV9/A==
X-CSE-MsgGUID: JYhbnpL1QzmXMqovbmoyKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,314,1751266800"; d="scan'208";a="179881948"
Received: from lkp-server01.sh.intel.com (HELO 2f2a1232a4e4) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 03 Oct 2025 23:04:42 -0700
Received: from kbuild by 2f2a1232a4e4 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v4vNn-00056h-21;
 Sat, 04 Oct 2025 06:04:39 +0000
Date: Sat, 4 Oct 2025 14:04:21 +0800
From: kernel test robot <lkp@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Simon Horman <horms@kernel.org>
Message-ID: <202510041304.yOU8z8P5-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759557885; x=1791093885;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=vkeJJ7YKg7/IC+5297re7ILPA04DsaKGaSjSmaYwMSU=;
 b=f8b/f3FKnRQ7ASha8C0Ph122EeS9izUqMcMsGbZSZ03Oq9Oqs/NPoNn5
 g7sGUmIVu0i4sWKmyBb6SbBhi+xd0STNRAR4hDzuF1Q1OeKnvyeMuSBjY
 BdUHMIxWTbWYkPpBNrVfsghZXn53MW4AfSvT6Hwz3rDxFMcuM7ZODA9+Q
 b7iSr3ITuUfCkUJgTH9wt2oa+yKs9s53FsAeN/N8+cAYUN73TEfMKD7rR
 LrEZQ9EjgVlzNYfExXk1ATlLQA1lT/xtM2kUXXYnhLKv8FrtUtiJ2AP8o
 7UaYV4ilTxuxgF87C00oPVlqc6zBAJX6t62tSFb1GxIv1JSH3ee42ySk1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f8b/f3FK
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue 2/17]
 drivers/net/ethernet/intel/ice/ice_main.c:5120:19: error: 'struct ice_hw'
 has no member named 'fwlog_cfg'
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
head:   e50b34f0f3fb86c9be2f9ad3b7ed483f18b46896
commit: 1f7e7f027658aba172437f3a0451ca7a30bf268e [2/17] ice: fix fwlog after driver reinit
config: x86_64-buildonly-randconfig-005-20251004 (https://download.01.org/0day-ci/archive/20251004/202510041304.yOU8z8P5-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251004/202510041304.yOU8z8P5-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202510041304.yOU8z8P5-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_main.c: In function 'ice_load':
>> drivers/net/ethernet/intel/ice/ice_main.c:5120:19: error: 'struct ice_hw' has no member named 'fwlog_cfg'
    5120 |         if (pf->hw.fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
         |                   ^
>> drivers/net/ethernet/intel/ice/ice_main.c:5120:40: error: 'ICE_FWLOG_OPTION_IS_REGISTERED' undeclared (first use in this function); did you mean 'LIBIE_FWLOG_OPTION_IS_REGISTERED'?
    5120 |         if (pf->hw.fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
         |                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                                        LIBIE_FWLOG_OPTION_IS_REGISTERED
   drivers/net/ethernet/intel/ice/ice_main.c:5120:40: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/net/ethernet/intel/ice/ice_main.c:5121:23: error: implicit declaration of function 'ice_fwlog_register'; did you mean 'libie_fwlog_reregister'? [-Wimplicit-function-declaration]
    5121 |                 err = ice_fwlog_register(&pf->hw);
         |                       ^~~~~~~~~~~~~~~~~~
         |                       libie_fwlog_reregister
   drivers/net/ethernet/intel/ice/ice_main.c:5123:31: error: 'struct ice_hw' has no member named 'fwlog_cfg'
    5123 |                         pf->hw.fwlog_cfg.options &=
         |                               ^
   drivers/net/ethernet/intel/ice/ice_main.c: In function 'ice_rebuild':
   drivers/net/ethernet/intel/ice/ice_main.c:7687:15: error: 'struct ice_hw' has no member named 'fwlog_cfg'
    7687 |         if (hw->fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
         |               ^~
   drivers/net/ethernet/intel/ice/ice_main.c:7687:37: error: 'ICE_FWLOG_OPTION_IS_REGISTERED' undeclared (first use in this function); did you mean 'LIBIE_FWLOG_OPTION_IS_REGISTERED'?
    7687 |         if (hw->fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
         |                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                                     LIBIE_FWLOG_OPTION_IS_REGISTERED
   drivers/net/ethernet/intel/ice/ice_main.c:7690:27: error: 'struct ice_hw' has no member named 'fwlog_cfg'
    7690 |                         hw->fwlog_cfg.options &=
         |                           ^~


vim +5120 drivers/net/ethernet/intel/ice/ice_main.c

  5106	
  5107	/**
  5108	 * ice_load - load pf by init hw and starting VSI
  5109	 * @pf: pointer to the pf instance
  5110	 *
  5111	 * This function has to be called under devl_lock.
  5112	 */
  5113	int ice_load(struct ice_pf *pf)
  5114	{
  5115		struct ice_vsi *vsi;
  5116		int err;
  5117	
  5118		devl_assert_locked(priv_to_devlink(pf));
  5119	
> 5120		if (pf->hw.fwlog_cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED) {
> 5121			err = ice_fwlog_register(&pf->hw);
  5122			if (err)
  5123				pf->hw.fwlog_cfg.options &=
  5124					~ICE_FWLOG_OPTION_IS_REGISTERED;
  5125		}
  5126	
  5127		vsi = ice_get_main_vsi(pf);
  5128	
  5129		/* init channel list */
  5130		INIT_LIST_HEAD(&vsi->ch_list);
  5131	
  5132		err = ice_cfg_netdev(vsi);
  5133		if (err)
  5134			return err;
  5135	
  5136		/* Setup DCB netlink interface */
  5137		ice_dcbnl_setup(vsi);
  5138	
  5139		err = ice_init_mac_fltr(pf);
  5140		if (err)
  5141			goto err_init_mac_fltr;
  5142	
  5143		err = ice_devlink_create_pf_port(pf);
  5144		if (err)
  5145			goto err_devlink_create_pf_port;
  5146	
  5147		SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
  5148	
  5149		err = ice_register_netdev(vsi);
  5150		if (err)
  5151			goto err_register_netdev;
  5152	
  5153		err = ice_tc_indir_block_register(vsi);
  5154		if (err)
  5155			goto err_tc_indir_block_register;
  5156	
  5157		ice_napi_add(vsi);
  5158	
  5159		ice_init_features(pf);
  5160	
  5161		err = ice_init_rdma(pf);
  5162		if (err)
  5163			goto err_init_rdma;
  5164	
  5165		ice_service_task_restart(pf);
  5166	
  5167		clear_bit(ICE_DOWN, pf->state);
  5168	
  5169		return 0;
  5170	
  5171	err_init_rdma:
  5172		ice_deinit_features(pf);
  5173		ice_tc_indir_block_unregister(vsi);
  5174	err_tc_indir_block_register:
  5175		ice_unregister_netdev(vsi);
  5176	err_register_netdev:
  5177		ice_devlink_destroy_pf_port(pf);
  5178	err_devlink_create_pf_port:
  5179	err_init_mac_fltr:
  5180		ice_decfg_netdev(vsi);
  5181		return err;
  5182	}
  5183	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
