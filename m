Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FD47F85AF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 22:55:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F124B421D5;
	Fri, 24 Nov 2023 21:55:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F124B421D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700862906;
	bh=omIVty/PB6MHySjm9OZnxyQYMimecgoqHAye88w+Clc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uo3AvBiQPGR6Y1qUWSJF4JnXzhy2LlDYnMA954B6bkm/XqsixF7iyJ96uv2AbEMV8
	 uBYyGeiB308C4IcvrGMeRBFNuZXrzDl8dTC16tYuxS2w6DjmsVHuQCzXVB1UxbrTo9
	 mGi8FoPC8rF487BeJizHCS9jKeSZI6+gFTWlFqtRtUxUICZu9uZB1j0dcIpzTt4mKs
	 S51hzcebNQr79XcZ+COPoyqu6E+69P40ywKskWSShDIYXVB7Ztzm4lQA7nv1cbpPSi
	 PJP9VDdqxPwbLYUBz7uRu2C1Jrntxd6900fCramSxAqt7x6Pi55T/zEvKqOeKPr/db
	 EugMkxjZxZM6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJHMkkJU2_3q; Fri, 24 Nov 2023 21:55:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A0A54213E;
	Fri, 24 Nov 2023 21:55:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A0A54213E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8E911BF32E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 21:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C336061542
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 21:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C336061542
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H15idzBIXFcq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 21:54:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF47461520
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 21:54:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF47461520
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="391344090"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="391344090"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 13:54:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="802229627"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="802229627"
Received: from lkp-server01.sh.intel.com (HELO d584ee6ebdcc) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 24 Nov 2023 13:54:49 -0800
Received: from kbuild by d584ee6ebdcc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r6e8N-0003JY-2X;
 Fri, 24 Nov 2023 21:54:47 +0000
Date: Sat, 25 Nov 2023 05:54:21 +0800
From: kernel test robot <lkp@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Message-ID: <202311250323.TmiFJ9nb-lkp@intel.com>
References: <20231124160804.2672341-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124160804.2672341-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700862898; x=1732398898;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3YjHettXvMeAxIoI/czxLXV1254w1xnxROIM5sTJpK0=;
 b=CTvmhZIvyBYHulsMGYyDfQJSTWQ3dDtbJBzvuxizq0BxlKAsc203eYby
 mLOMaU2D2OjpEjtvS9mplrzL/yeWkDt7jPE5wf8jKu0VYi3hlSa39OfFr
 pl4M+yl7pdAyPzq90CG/PvPitCNBZyK/NcSxuRHBc/XyPMLmWmaV+ne2h
 gjNdQHbAGdO5VvfjATt0lcSUzNf1IubMquFThIq37F3n9JJeh9MpEAGS+
 Bv/VRtnhPuzrbBOIiKOi6FaoPGsE+1c6+a8gzrLWSwaYbKGHDRiyLObIQ
 esbTGqHivopoT5R0ornfc44NmqncdcW2/24AfrMfVLhvVRgB8FVcyuLM8
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CTvmhZIv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add ability to
 reset vf for tx and rx mdd events
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>, netdev@vger.kernel.org,
 llvm@lists.linux.dev, Padraig J Connolly <padraig.j.connolly@intel.com>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Aleksandr,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Aleksandr-Loktionov/i40e-add-ability-to-reset-vf-for-tx-and-rx-mdd-events/20231125-000929
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20231124160804.2672341-1-aleksandr.loktionov%40intel.com
patch subject: [PATCH iwl-next v2] i40e: add ability to reset vf for tx and rx mdd events
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20231125/202311250323.TmiFJ9nb-lkp@intel.com/config)
compiler: clang version 16.0.4 (https://github.com/llvm/llvm-project.git ae42196bc493ffe877a7e3dff8be32035dea4d07)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231125/202311250323.TmiFJ9nb-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311250323.TmiFJ9nb-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/i40e/i40e_debugfs.c:746:9: error: no member named 'num_mdd_events' in 'struct i40e_vf'
                            vf->num_mdd_events);
                            ~~  ^
   include/linux/dev_printk.h:150:67: note: expanded from macro 'dev_info'
           dev_printk_index_wrap(_dev_info, KERN_INFO, dev, dev_fmt(fmt), ##__VA_ARGS__)
                                                                            ^~~~~~~~~~~
   include/linux/dev_printk.h:110:23: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                                       ^~~~~~~~~~~
   1 error generated.


vim +746 drivers/net/ethernet/intel/i40e/i40e_debugfs.c

02e9c290814cc1 Jesse Brandeburg 2013-09-11  727  
3118025a070f33 Mitch Williams   2017-04-12  728  /**
3118025a070f33 Mitch Williams   2017-04-12  729   * i40e_dbg_dump_vf - dump VF info
3118025a070f33 Mitch Williams   2017-04-12  730   * @pf: the i40e_pf created in command write
3118025a070f33 Mitch Williams   2017-04-12  731   * @vf_id: the vf_id from the user
3118025a070f33 Mitch Williams   2017-04-12  732   **/
3118025a070f33 Mitch Williams   2017-04-12  733  static void i40e_dbg_dump_vf(struct i40e_pf *pf, int vf_id)
3118025a070f33 Mitch Williams   2017-04-12  734  {
3118025a070f33 Mitch Williams   2017-04-12  735  	struct i40e_vf *vf;
3118025a070f33 Mitch Williams   2017-04-12  736  	struct i40e_vsi *vsi;
3118025a070f33 Mitch Williams   2017-04-12  737  
3118025a070f33 Mitch Williams   2017-04-12  738  	if (!pf->num_alloc_vfs) {
3118025a070f33 Mitch Williams   2017-04-12  739  		dev_info(&pf->pdev->dev, "no VFs allocated\n");
3118025a070f33 Mitch Williams   2017-04-12  740  	} else if ((vf_id >= 0) && (vf_id < pf->num_alloc_vfs)) {
3118025a070f33 Mitch Williams   2017-04-12  741  		vf = &pf->vf[vf_id];
3118025a070f33 Mitch Williams   2017-04-12  742  		vsi = pf->vsi[vf->lan_vsi_idx];
3118025a070f33 Mitch Williams   2017-04-12  743  		dev_info(&pf->pdev->dev, "vf %2d: VSI id=%d, seid=%d, qps=%d\n",
3118025a070f33 Mitch Williams   2017-04-12  744  			 vf_id, vf->lan_vsi_id, vsi->seid, vf->num_queue_pairs);
5710ab79166504 Jacob Keller     2022-02-16  745  		dev_info(&pf->pdev->dev, "       num MDD=%lld\n",
5710ab79166504 Jacob Keller     2022-02-16 @746  			 vf->num_mdd_events);
3118025a070f33 Mitch Williams   2017-04-12  747  	} else {
3118025a070f33 Mitch Williams   2017-04-12  748  		dev_info(&pf->pdev->dev, "invalid VF id %d\n", vf_id);
3118025a070f33 Mitch Williams   2017-04-12  749  	}
3118025a070f33 Mitch Williams   2017-04-12  750  }
3118025a070f33 Mitch Williams   2017-04-12  751  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
