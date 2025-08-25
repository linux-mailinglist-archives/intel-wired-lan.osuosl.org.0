Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFB4B33C54
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Aug 2025 12:15:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E631C61CE7;
	Mon, 25 Aug 2025 10:15:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cSA1KD_UslK4; Mon, 25 Aug 2025 10:15:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27E7361CE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756116917;
	bh=yCm+ZLaz2GflIRu45MRVGoW4cOFSRzQgmuxYqx1R218=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hc+HmIHTDbBfU8xVkE84S5vOnkzefsAhGBEcOLaQuuaR2ZQOR9VhErVfLlN/6Pppd
	 fxGuksVW3N+sQ6OExJNo3LOfuW2VuVvr3Jw9Q+3YzMa1mNk/VHyjEYtCqKkU4KqkL6
	 myPzzN4RTyLLHOEjYG8Qmv6z3ourjkVb5W/fOPB924DHVtKq5fVAUN6iNTaxhD/ThL
	 Y3lVZRi4CUH62M3d6Rg1yMdJvzCLJ40KpveIFD3SepC2YcMR57k9hJBa9hkCTuPSJi
	 TrepgbQzRizXDOqkLwDzz4+Aqbe97wuLi/sN53bpPmqeqYqvmNf6d8phGB0EQ/bgDG
	 EifYB6MQasrow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27E7361CE5;
	Mon, 25 Aug 2025 10:15:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CD191CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 10:15:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C95DA42903
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 10:15:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RAga_dlmAD94 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Aug 2025 10:15:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E6FE42902
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E6FE42902
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E6FE42902
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Aug 2025 10:15:14 +0000 (UTC)
X-CSE-ConnectionGUID: DMGC6Q2VR66B8fc6ZV5FjQ==
X-CSE-MsgGUID: 1PWDv621TD6s51zjBovKMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11532"; a="58425919"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58425919"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 03:15:13 -0700
X-CSE-ConnectionGUID: gi9iFljsT16smMiIoaPYzQ==
X-CSE-MsgGUID: VE/5jlzzRm+BrJQqXmblqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="168502265"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa010.jf.intel.com with ESMTP; 25 Aug 2025 03:15:10 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uqUE0-000Nar-03;
 Mon, 25 Aug 2025 10:14:56 +0000
Date: Mon, 25 Aug 2025 18:13:08 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <202508251750.6y0aVhmt-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756116914; x=1787652914;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=xYJTpQjKBXVjxc7UEb5pO4dnQH/NGFDyQU7KSKrh000=;
 b=e9qb8nSfmrW61ykKp/qO82K1nlliTr+5Q2uCoibIguETOQJW2H8BdKNp
 5ZNgzoJDFOe1w6Lsl0E9HQNQ1mgne3WPBHjvrVBQPegGxH3lTFZFIx5xl
 xWNXGoc1xFiCxVA4IaDH4AZCVyCgDFLqfm7Bva0N4VZBQabOQnLXDC+hl
 tJMOvxVPFlBi6x4baPH6w/1pvejZjUBSkwaUoDQVfJkqMHX/PgSmbXie4
 VxBQREcMcU+r1Yb4Bo7z36EOgmuYqitm5Vz371WuvnrXm6VEMHMD+xVHg
 qBYsGSwLVM2hVpn8tquG7lA8juGKwOAMMVYDDuqELOxfI+dIDc8s0O6dq
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e9qb8nSf
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 83/96]
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:3360: undefined reference to
 `libie_get_fwlog_data'
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
head:   477bd744709ed3884ba4544574e78706358b627a
commit: 8a3ba7f03f335554bbde8ae17798a21e4a3b62ad [83/96] ixgbe: fwlog support for e610
config: x86_64-randconfig-006-20250825 (https://download.01.org/0day-ci/archive/20250825/202508251750.6y0aVhmt-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14+deb12u1) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250825/202508251750.6y0aVhmt-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202508251750.6y0aVhmt-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: vmlinux.o: in function `ixgbe_handle_fw_event':
>> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:3360: undefined reference to `libie_get_fwlog_data'
   ld: vmlinux.o: in function `ixgbe_fwlog_init':
>> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:3945: undefined reference to `libie_fwlog_init'
   ld: vmlinux.o: in function `ixgbe_fwlog_deinit':
>> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:3953: undefined reference to `libie_fwlog_deinit'


vim +3360 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c

  3324	
  3325	/**
  3326	 * ixgbe_handle_fw_event - handle Firmware event
  3327	 * @adapter: pointer to the adapter structure
  3328	 *
  3329	 * Obtain an event from the ACI and then and then process it according to the
  3330	 * type of the event and the opcode.
  3331	 */
  3332	static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
  3333	{
  3334		struct ixgbe_aci_event event __cleanup(ixgbe_aci_event_cleanup);
  3335		struct ixgbe_hw *hw = &adapter->hw;
  3336		bool pending = false;
  3337		int err;
  3338	
  3339		if (adapter->flags2 & IXGBE_FLAG2_FW_ASYNC_EVENT)
  3340			adapter->flags2 &= ~IXGBE_FLAG2_FW_ASYNC_EVENT;
  3341		event.buf_len = IXGBE_ACI_MAX_BUFFER_SIZE;
  3342		event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
  3343		if (!event.msg_buf)
  3344			return;
  3345	
  3346		do {
  3347			err = ixgbe_aci_get_event(hw, &event, &pending);
  3348			if (err)
  3349				break;
  3350	
  3351			switch (le16_to_cpu(event.desc.opcode)) {
  3352			case ixgbe_aci_opc_get_link_status:
  3353				ixgbe_handle_link_status_event(adapter, &event);
  3354				break;
  3355			case ixgbe_aci_opc_temp_tca_event:
  3356				e_crit(drv, "%s\n", ixgbe_overheat_msg);
  3357				ixgbe_down(adapter);
  3358				break;
  3359			case libie_aqc_opc_fw_logs_event:
> 3360				libie_get_fwlog_data(&hw->fwlog, event.msg_buf,
  3361						     le16_to_cpu(event.desc.datalen));
  3362				break;
  3363			default:
  3364				e_warn(hw, "unknown FW async event captured\n");
  3365				break;
  3366			}
  3367		} while (pending);
  3368	}
  3369	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
