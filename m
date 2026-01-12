Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 575A4D13E2E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 17:06:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08E428496C;
	Mon, 12 Jan 2026 16:06:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TYBfmBI9IUWz; Mon, 12 Jan 2026 16:06:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39E30849CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768234004;
	bh=ux/s4PY0kFYzR6X6/cpq+QaYtNbCQVN0VdEiF3ioGUk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LEC03faTSYPn1QI8WEaTt1WXDIUM1MeKUfcWhHJnQ7c1sSmQhhxp+S7nDoWx5B30L
	 BdmschSMnexpoIeiyISpqwaEQTvhfcuOqdUUYlEMnHp0oIGBMGf4RuFPWGiNDGHj+x
	 DvOnfezlzvSd572z6gxzz5OTS2S6NeG9QK683+t/pPE1QkePAC1OJOBiUKkDyozSes
	 5P/KBdBM4yI3vkZ+RkmQJ7ORTr5DA22AZkbFuLM/j62YnlQSiHzFmmHX08tGgF8UPx
	 G0DivgPua+LbDDI8ZlP5oRRgNNXB1K2qFi2BBXvm0bi3zu1vZTZCA5CLKYXFlTpnEj
	 +d8fGX+ZNCVuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39E30849CC;
	Mon, 12 Jan 2026 16:06:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 05A0F1CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC0B141EAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:06:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6qjDuMoAsx4w for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 16:06:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00FB34041D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00FB34041D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00FB34041D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 16:06:40 +0000 (UTC)
X-CSE-ConnectionGUID: Ebf/V+ceSaqmVoInG8WTIw==
X-CSE-MsgGUID: Ba0YqGALRHihzh1MPiR8UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="80231452"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="80231452"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 08:06:40 -0800
X-CSE-ConnectionGUID: iSLH7eN9SFOCYq5DOJ5WIw==
X-CSE-MsgGUID: HOa+UAlbQ7W7l2VewISO6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="203337754"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 12 Jan 2026 08:06:34 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vfKR5-00000000DY0-2V2o;
 Mon, 12 Jan 2026 16:06:31 +0000
Date: Tue, 13 Jan 2026 00:06:17 +0800
From: kernel test robot <lkp@intel.com>
To: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Rob Herring <robh@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>
Message-ID: <202601122334.64RmoU1u-lkp@intel.com>
References: <20260108182318.20935-11-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108182318.20935-11-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768234001; x=1799770001;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fyNj7tGccVud7VFJ570wDzTR6P1wo4PxWud1jjxeoLA=;
 b=NQK4xeDgINA2JepN0LwHCqxN+8xfsClRMqgWQMR0jK/fa2fc42nLSdDT
 q3aIJFIhJ+sqq2Rz6BwBvbQT/VacXSmDwo7a3UOExKH+cnDqFpegPczQR
 saUh4P50Ti2XGRq7WqeMYQSTW5E1fVJTO7C5k0sBYhvjcNFgPE09LI+Bh
 q3BxUgPB/W6A6ARZfQ+MAq3n3iUYrjmNZP4yDTaxMGjNRF4QQk0yPECNF
 snIudgnYlRT58kVLBHnU9wvkJaGCGVjQeHsrBcnlK0FnZHimCi84+66cC
 QDkw7QFkvy4qC1UyZXPivOHNqMz0eRJaOoCQjL1kWr7miMdzf2hknNGKb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NQK4xeDg
Subject: Re: [Intel-wired-lan] [PATCH net-next 10/12] dpll: Add reference
 count tracking support
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

Hi Ivan,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ivan-Vecera/dt-bindings-dpll-add-common-dpll-pin-consumer-schema/20260109-022618
base:   net-next/main
patch link:    https://lore.kernel.org/r/20260108182318.20935-11-ivecera%40redhat.com
patch subject: [Intel-wired-lan] [PATCH net-next 10/12] dpll: Add reference count tracking support
config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20260112/202601122334.64RmoU1u-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260112/202601122334.64RmoU1u-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601122334.64RmoU1u-lkp@intel.com/

All errors (new ones prefixed by >>):

   lib/ref_tracker.c: In function 'ref_tracker_alloc':
>> lib/ref_tracker.c:277:22: error: implicit declaration of function 'stack_trace_save'; did you mean 'stack_depot_save'? [-Wimplicit-function-declaration]
     277 |         nr_entries = stack_trace_save(entries, ARRAY_SIZE(entries), 1);
         |                      ^~~~~~~~~~~~~~~~
         |                      stack_depot_save

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for REF_TRACKER
   Depends on [n]: STACKTRACE_SUPPORT
   Selected by [y]:
   - DPLL_REFCNT_TRACKER [=y] && DPLL [=y]


vim +277 lib/ref_tracker.c

4e66934eaadc83b Eric Dumazet  2021-12-04  252  
4e66934eaadc83b Eric Dumazet  2021-12-04  253  int ref_tracker_alloc(struct ref_tracker_dir *dir,
4e66934eaadc83b Eric Dumazet  2021-12-04  254  		      struct ref_tracker **trackerp,
4e66934eaadc83b Eric Dumazet  2021-12-04  255  		      gfp_t gfp)
4e66934eaadc83b Eric Dumazet  2021-12-04  256  {
4e66934eaadc83b Eric Dumazet  2021-12-04  257  	unsigned long entries[REF_TRACKER_STACK_ENTRIES];
4e66934eaadc83b Eric Dumazet  2021-12-04  258  	struct ref_tracker *tracker;
4e66934eaadc83b Eric Dumazet  2021-12-04  259  	unsigned int nr_entries;
acd8f0e5d72741b Andrzej Hajda 2023-06-02  260  	gfp_t gfp_mask = gfp | __GFP_NOWARN;
4e66934eaadc83b Eric Dumazet  2021-12-04  261  	unsigned long flags;
4e66934eaadc83b Eric Dumazet  2021-12-04  262  
e3ececfe668facd Eric Dumazet  2022-02-04  263  	WARN_ON_ONCE(dir->dead);
e3ececfe668facd Eric Dumazet  2022-02-04  264  
8fd5522f44dcd7f Eric Dumazet  2022-02-04  265  	if (!trackerp) {
8fd5522f44dcd7f Eric Dumazet  2022-02-04  266  		refcount_inc(&dir->no_tracker);
8fd5522f44dcd7f Eric Dumazet  2022-02-04  267  		return 0;
8fd5522f44dcd7f Eric Dumazet  2022-02-04  268  	}
c12837d1bb31032 Eric Dumazet  2022-01-12  269  	if (gfp & __GFP_DIRECT_RECLAIM)
c12837d1bb31032 Eric Dumazet  2022-01-12  270  		gfp_mask |= __GFP_NOFAIL;
c12837d1bb31032 Eric Dumazet  2022-01-12  271  	*trackerp = tracker = kzalloc(sizeof(*tracker), gfp_mask);
4e66934eaadc83b Eric Dumazet  2021-12-04  272  	if (unlikely(!tracker)) {
4e66934eaadc83b Eric Dumazet  2021-12-04  273  		pr_err_once("memory allocation failure, unreliable refcount tracker.\n");
4e66934eaadc83b Eric Dumazet  2021-12-04  274  		refcount_inc(&dir->untracked);
4e66934eaadc83b Eric Dumazet  2021-12-04  275  		return -ENOMEM;
4e66934eaadc83b Eric Dumazet  2021-12-04  276  	}
4e66934eaadc83b Eric Dumazet  2021-12-04 @277  	nr_entries = stack_trace_save(entries, ARRAY_SIZE(entries), 1);
4e66934eaadc83b Eric Dumazet  2021-12-04  278  	tracker->alloc_stack_handle = stack_depot_save(entries, nr_entries, gfp);
4e66934eaadc83b Eric Dumazet  2021-12-04  279  
4e66934eaadc83b Eric Dumazet  2021-12-04  280  	spin_lock_irqsave(&dir->lock, flags);
4e66934eaadc83b Eric Dumazet  2021-12-04  281  	list_add(&tracker->head, &dir->list);
4e66934eaadc83b Eric Dumazet  2021-12-04  282  	spin_unlock_irqrestore(&dir->lock, flags);
4e66934eaadc83b Eric Dumazet  2021-12-04  283  	return 0;
4e66934eaadc83b Eric Dumazet  2021-12-04  284  }
4e66934eaadc83b Eric Dumazet  2021-12-04  285  EXPORT_SYMBOL_GPL(ref_tracker_alloc);
4e66934eaadc83b Eric Dumazet  2021-12-04  286  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
