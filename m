Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C15D3A282E0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 04:32:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F58060A42;
	Wed,  5 Feb 2025 03:32:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IbjQQgONjo0x; Wed,  5 Feb 2025 03:32:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7490E60EC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738726344;
	bh=NRHIOfEWg7ro6el16JUreX5CnQk5OfBxPPrmMfESzY4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6eMaiztPFoMnW+3UccwNA+sfTj1n++CBBavpob7OatYsg8/rA9/rH+Y591mVVBd5R
	 2i9URZvZTHQeD97vNGubNyVvF7i/KqpEm2kfd6R7FT8jxRtzIcxSPIbzK4/1GljeBo
	 OWa1Mp1v6ipmX9/Hjf0OH38lGDi6XDZvuTuNkU2WtlDAP5RPeAJ1MX3l9xrJ9c8J2G
	 X4iB/QKd2gLhgsDfBNx/jMkzbkTq1SUXQR/LIw579qLblsjV9S7lSDsc2ZX14zxbnw
	 xeJFpfNqoyQ9MRr886wJu3Zm19xP4hBs0/fwp4V4W6+kv5XjbQn8XcOOjguRJFtiYC
	 kB+4Ch+C3rYeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7490E60EC5;
	Wed,  5 Feb 2025 03:32:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AF24712A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 03:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F13540792
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 03:32:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rsq-7kbDWIm9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 03:32:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 72B3A4078E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72B3A4078E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72B3A4078E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 03:32:21 +0000 (UTC)
X-CSE-ConnectionGUID: EtwemehbRoCzc9Z+jCPlQA==
X-CSE-MsgGUID: AikE893NR5mhVD/piGbzXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="38510533"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="38510533"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 19:32:21 -0800
X-CSE-ConnectionGUID: XnCdLGk0SNysb2QuXHZiHA==
X-CSE-MsgGUID: ksosj32ARK2da/OeFaYFxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115390045"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 04 Feb 2025 19:30:37 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tfW7W-000tMp-37;
 Wed, 05 Feb 2025 03:30:34 +0000
Date: Wed, 5 Feb 2025 11:29:49 +0800
From: kernel test robot <lkp@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: oe-kbuild-all@lists.linux.dev, Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Message-ID: <202502051116.UJMCGQWA-lkp@intel.com>
References: <20250204115111.1652453-7-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204115111.1652453-7-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738726342; x=1770262342;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=klYJIl0+wvehpCEm5K9mQSdweoz4f9zZumsx06HXCCU=;
 b=Jt/W6TUB/FBL0Jme1VW9xY8MsVnqWz5pTHz/Uwg9gJBNE8P7FiXStbTl
 qekkX8pz5L09TMQspuwpWxXwQGKgaG4pctanG9dzTNWPq78VPcmqY0LoA
 a1JoLlWnmz5VHxTObttRw/ATSNAvcQg4ixUaAALvmCy9lsHD9I1Kn5kVk
 YoB7FNX+DcGuOxhaRqKH1KgKyUZdd9NVHhysv/apNRsaFf0FCtOPlOt05
 k112iNXsKnTRKiUcbVMMDWz0Tupgd6sWdBE/6udFjFc6OzfE65ZeigzAI
 M7s+aKGZLLLi3r7SaKC3hBo92BFSHBTnIvO1ewhPMK7inxlQMLVEeO7+j
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jt/W6TUB
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: enable LLDP TX
 for VFs through tc
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

Hi Larysa,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Larysa-Zaremba/ice-fix-check-for-existing-switch-rule/20250204-200839
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20250204115111.1652453-7-larysa.zaremba%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: enable LLDP TX for VFs through tc
config: csky-randconfig-r132-20250205 (https://download.01.org/0day-ci/archive/20250205/202502051116.UJMCGQWA-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 14.2.0
reproduce: (https://download.01.org/0day-ci/archive/20250205/202502051116.UJMCGQWA-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202502051116.UJMCGQWA-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/net/ethernet/intel/ice/ice_tc_lib.c:848:18: sparse: sparse: Initializer entry defined twice
   drivers/net/ethernet/intel/ice/ice_tc_lib.c:854:18: sparse:   also defined here

vim +848 drivers/net/ethernet/intel/ice/ice_tc_lib.c

   843	
   844	int ice_drop_vf_tx_lldp(struct ice_vsi *vsi, bool init)
   845	{
   846		struct ice_rule_query_data rule_added;
   847		struct ice_adv_rule_info rinfo = {
 > 848			.sw_act = {
   849				.fltr_act = ICE_DROP_PACKET,
   850				.flag = ICE_FLTR_TX,
   851			},
   852			.priority = 7,
   853			.flags_info.act_valid = true,
   854			.sw_act.src = vsi->idx,
   855			.src_vsi = vsi->idx,
   856			.sw_act.vsi_handle = vsi->idx,
   857		};
   858		struct ice_adv_lkup_elem list[3];
   859		struct ice_pf *pf = vsi->back;
   860		int err;
   861	
   862		if (!init && !vsi->vf->lldp_tx_ena)
   863			return 0;
   864	
   865		ice_rule_add_direction_metadata(&list[0]);
   866		ice_rule_add_src_vsi_metadata(&list[1]);
   867		list[2].type = ICE_ETYPE_OL;
   868		list[2].h_u.ethertype.ethtype_id = htons(ETH_P_LLDP);
   869		list[2].m_u.ethertype.ethtype_id = htons(0xFFFF);
   870	
   871		err = ice_add_adv_rule(&pf->hw, list, ARRAY_SIZE(list), &rinfo,
   872				       &rule_added);
   873		if (err) {
   874			dev_err(&pf->pdev->dev,
   875				"Failed to add an LLDP rule to VSI 0x%X: %d\n",
   876				vsi->idx, err);
   877		} else {
   878			vsi->vf->lldp_recipe_id = rule_added.rid;
   879			vsi->vf->lldp_rule_id = rule_added.rule_id;
   880			vsi->vf->lldp_tx_ena = false;
   881		}
   882	
   883		return err;
   884	}
   885	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
