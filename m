Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8AFBB8AA0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 04 Oct 2025 09:16:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52950616F7;
	Sat,  4 Oct 2025 07:16:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id liRbqwgTY3KG; Sat,  4 Oct 2025 07:16:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BAD9615A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759562213;
	bh=EXG5V78e+AGiHa+H39/nq+Q4mDwX4RuLnDDHwr5Fl1Q=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vH1yvfVslTmvHFicQHafRe3qMu6KZlbmBheaqOC56d4ho/wk5FFDBidePJLanS+K+
	 5feaK4JzBezufL+1FwHvObnYbYRcke7PIXMv1vcuQFPjKt9BIaKC/wZYyxnMaodoGJ
	 wWarhg4E00FYVGBSi30oRHeaI3Ei+N41ndchoW3BJJ1yKmjuwl89sMrgwi3MDezkCS
	 XRJhGE8lZg6xOt3EYFFBcowvTLlai1YBYHrSupuGYZq/6ofmuEbznAibaNFbKUFJLP
	 QjUFUWPQ3pJ9jXIjWomZUaPVsm98hEKJV5QSw/2DU3sV9Bly7Jlw3pgBDZuywpAnBW
	 GqGMM7sqxPXIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BAD9615A3;
	Sat,  4 Oct 2025 07:16:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A55B118
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 07:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58E5160A4F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 07:16:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OIMq0PUZamtk for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Oct 2025 07:16:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D054160A47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D054160A47
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D054160A47
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 07:16:50 +0000 (UTC)
X-CSE-ConnectionGUID: 7ueHw54bSbCetwpqfMi/lw==
X-CSE-MsgGUID: PonBM7mvTp2jMjdRkAJPmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="84453659"
X-IronPort-AV: E=Sophos;i="6.18,314,1751266800"; d="scan'208";a="84453659"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2025 00:16:50 -0700
X-CSE-ConnectionGUID: P49kNJvSRj6R+EV1AJkm4w==
X-CSE-MsgGUID: yfinJdHsSGeSVKaEppUtUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,314,1751266800"; d="scan'208";a="178749380"
Received: from lkp-server01.sh.intel.com (HELO 2f2a1232a4e4) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 04 Oct 2025 00:16:47 -0700
Received: from kbuild by 2f2a1232a4e4 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v4wVZ-00058V-0K;
 Sat, 04 Oct 2025 07:16:45 +0000
Date: Sat, 4 Oct 2025 15:16:20 +0800
From: kernel test robot <lkp@intel.com>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chittim Madhu <madhu.chittim@intel.com>
Message-ID: <202510041511.Kfu7sVNC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759562211; x=1791098211;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=GN75K08pQ4IQp/o1K21cWNmwgKDg771mmExliqsoMts=;
 b=In3H2UUvYDRF37uIykeIXIvtc+RhoFjYcH65RMdzTyzMW6tYMb890d+t
 et9JOzIhJ/gV4vDDERhUiQo88csNZLtG2PPaA/TQSa9zOUYcwMo+qX7Bd
 9uARP9EzzH7hurSVjia3pG3kBA9dGNG5ZtHS0X0TUnVDQ/Q2rxmPzDr3t
 uHraIblc9AzzUZf3vLrna4JSc1GXjD3qf7BRwzBpl2pCwfrIPWnysalXS
 Y80Llk0j0oQwvTWtvkcmjLx7jUPxYaTkzqlJ1gZ/9Nf8OnjYcLdTm9Oz0
 l9ALOjC4XaXr2KSOBg8LeJNxHFMh3RRPPfXTaa8bC1fyzraCgWcURnBvo
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=In3H2UUv
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue 7/17]
 drivers/net/ethernet/intel/idpf/xdp.c:421:20: error: use of undeclared
 identifier '__IDPF_VPORT_UP'; did you mean 'IDPF_VPORT_UP'?
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

Hi Emil,

FYI, the error/warning was bisected to this commit, please ignore it if it's irrelevant.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
head:   e50b34f0f3fb86c9be2f9ad3b7ed483f18b46896
commit: 7c0e8a950dbd30ca46e999cf1d25f3e97a98f174 [7/17] idpf: convert vport state to bitmap
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20251004/202510041511.Kfu7sVNC-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251004/202510041511.Kfu7sVNC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202510041511.Kfu7sVNC-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/idpf/xdp.c:421:20: error: use of undeclared identifier '__IDPF_VPORT_UP'; did you mean 'IDPF_VPORT_UP'?
     421 |                 if (np->state == __IDPF_VPORT_UP)
         |                                  ^~~~~~~~~~~~~~~
         |                                  IDPF_VPORT_UP
   drivers/net/ethernet/intel/idpf/idpf.h:138:2: note: 'IDPF_VPORT_UP' declared here
     138 |         IDPF_VPORT_UP,
         |         ^
   1 error generated.


vim +421 drivers/net/ethernet/intel/idpf/xdp.c

cba102cd719029 Alexander Lobakin 2025-08-26  407  
705457e7211f22 Michal Kubiak     2025-08-26  408  static int idpf_xdp_setup_prog(struct idpf_vport *vport,
705457e7211f22 Michal Kubiak     2025-08-26  409  			       const struct netdev_bpf *xdp)
705457e7211f22 Michal Kubiak     2025-08-26  410  {
705457e7211f22 Michal Kubiak     2025-08-26  411  	const struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
705457e7211f22 Michal Kubiak     2025-08-26  412  	struct bpf_prog *old, *prog = xdp->prog;
705457e7211f22 Michal Kubiak     2025-08-26  413  	struct idpf_vport_config *cfg;
705457e7211f22 Michal Kubiak     2025-08-26  414  	int ret;
705457e7211f22 Michal Kubiak     2025-08-26  415  
705457e7211f22 Michal Kubiak     2025-08-26  416  	cfg = vport->adapter->vport_config[vport->idx];
705457e7211f22 Michal Kubiak     2025-08-26  417  
705457e7211f22 Michal Kubiak     2025-08-26  418  	if (test_bit(IDPF_REMOVE_IN_PROG, vport->adapter->flags) ||
705457e7211f22 Michal Kubiak     2025-08-26  419  	    !test_bit(IDPF_VPORT_REG_NETDEV, cfg->flags) ||
705457e7211f22 Michal Kubiak     2025-08-26  420  	    !!vport->xdp_prog == !!prog) {
705457e7211f22 Michal Kubiak     2025-08-26 @421  		if (np->state == __IDPF_VPORT_UP)
705457e7211f22 Michal Kubiak     2025-08-26  422  			idpf_xdp_copy_prog_to_rqs(vport, prog);
705457e7211f22 Michal Kubiak     2025-08-26  423  
705457e7211f22 Michal Kubiak     2025-08-26  424  		old = xchg(&vport->xdp_prog, prog);
705457e7211f22 Michal Kubiak     2025-08-26  425  		if (old)
705457e7211f22 Michal Kubiak     2025-08-26  426  			bpf_prog_put(old);
705457e7211f22 Michal Kubiak     2025-08-26  427  
705457e7211f22 Michal Kubiak     2025-08-26  428  		cfg->user_config.xdp_prog = prog;
705457e7211f22 Michal Kubiak     2025-08-26  429  
705457e7211f22 Michal Kubiak     2025-08-26  430  		return 0;
705457e7211f22 Michal Kubiak     2025-08-26  431  	}
705457e7211f22 Michal Kubiak     2025-08-26  432  
705457e7211f22 Michal Kubiak     2025-08-26  433  	if (!vport->num_xdp_txq && vport->num_txq == cfg->max_q.max_txq) {
705457e7211f22 Michal Kubiak     2025-08-26  434  		NL_SET_ERR_MSG_MOD(xdp->extack,
705457e7211f22 Michal Kubiak     2025-08-26  435  				   "No Tx queues available for XDP, please decrease the number of regular SQs");
705457e7211f22 Michal Kubiak     2025-08-26  436  		return -ENOSPC;
705457e7211f22 Michal Kubiak     2025-08-26  437  	}
705457e7211f22 Michal Kubiak     2025-08-26  438  
705457e7211f22 Michal Kubiak     2025-08-26  439  	old = cfg->user_config.xdp_prog;
705457e7211f22 Michal Kubiak     2025-08-26  440  	cfg->user_config.xdp_prog = prog;
705457e7211f22 Michal Kubiak     2025-08-26  441  
705457e7211f22 Michal Kubiak     2025-08-26  442  	ret = idpf_initiate_soft_reset(vport, IDPF_SR_Q_CHANGE);
705457e7211f22 Michal Kubiak     2025-08-26  443  	if (ret) {
705457e7211f22 Michal Kubiak     2025-08-26  444  		NL_SET_ERR_MSG_MOD(xdp->extack,
705457e7211f22 Michal Kubiak     2025-08-26  445  				   "Could not reopen the vport after XDP setup");
705457e7211f22 Michal Kubiak     2025-08-26  446  
705457e7211f22 Michal Kubiak     2025-08-26  447  		cfg->user_config.xdp_prog = old;
705457e7211f22 Michal Kubiak     2025-08-26  448  		old = prog;
705457e7211f22 Michal Kubiak     2025-08-26  449  	}
705457e7211f22 Michal Kubiak     2025-08-26  450  
705457e7211f22 Michal Kubiak     2025-08-26  451  	if (old)
705457e7211f22 Michal Kubiak     2025-08-26  452  		bpf_prog_put(old);
705457e7211f22 Michal Kubiak     2025-08-26  453  
aaa3ac6480baeb Alexander Lobakin 2025-08-26  454  	libeth_xdp_set_redirect(vport->netdev, vport->xdp_prog);
aaa3ac6480baeb Alexander Lobakin 2025-08-26  455  
705457e7211f22 Michal Kubiak     2025-08-26  456  	return ret;
705457e7211f22 Michal Kubiak     2025-08-26  457  }
705457e7211f22 Michal Kubiak     2025-08-26  458  

:::::: The code at line 421 was first introduced by commit
:::::: 705457e7211f22c49b410eb25e83cef8a61bd560 idpf: implement XDP_SETUP_PROG in ndo_bpf for splitq

:::::: TO: Michal Kubiak <michal.kubiak@intel.com>
:::::: CC: Tony Nguyen <anthony.l.nguyen@intel.com>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
