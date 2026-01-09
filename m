Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C956D0C8DE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jan 2026 00:35:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 679D283381;
	Fri,  9 Jan 2026 23:35:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U2JkT9B03_6C; Fri,  9 Jan 2026 23:35:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DABA833CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768001738;
	bh=6OWhxapowYRJMyo6XKI8u7fl6wQS866xxTu1JeFprM0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bPHEjQboBSRuob+n8zq2wklvlaQSHIjGNVDg8tVjf/84YK6Y28W8O+ZryeIkPD+dy
	 bqyI08ObR3/XieqQIiYhtVgW4UYD2suZK0lC6ywG/MelvRNIB5FgWGPe0e9iRUXdj8
	 4d7zyp8ibqmp9/DeR9M//mYQv1t+Ag6HuHRNgJWUGX4HNYed6Gzj9BHZlVcLer/byi
	 lchLHAgmalcCJ/ktRUZOBdhJDihK6gpnZ7Tjb1iUdhG28jMqHUmTeZHRGgAQVDrZLO
	 3NLeUAP4jJb9L5EOcR4QSVrjIMyfk9TIpmhs+8FRdFEAH4+CsgvnzmlHtG1r2HQONU
	 5kEqZg+aFpIbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DABA833CD;
	Fri,  9 Jan 2026 23:35:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F007412E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 23:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6A528305A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 23:35:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dl6rtuAcSDWu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 23:35:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D7EB78302F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7EB78302F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7EB78302F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 23:35:34 +0000 (UTC)
X-CSE-ConnectionGUID: qRQvc1QbS+eEI0hRRuEheQ==
X-CSE-MsgGUID: 0MnkfulpQBarAvrPdwZbnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11666"; a="79679457"
X-IronPort-AV: E=Sophos;i="6.21,215,1763452800"; d="scan'208";a="79679457"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 15:35:33 -0800
X-CSE-ConnectionGUID: DA3EGJ76THe/Sdvdi4NDSw==
X-CSE-MsgGUID: e0/EJjYbTDuy6c6td88RCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,215,1763452800"; d="scan'208";a="203662294"
Received: from igk-lkp-server01.igk.intel.com (HELO 92b2e8bd97aa)
 ([10.211.93.152])
 by orviesa008.jf.intel.com with ESMTP; 09 Jan 2026 15:35:27 -0800
Received: from kbuild by 92b2e8bd97aa with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1veM0r-0000000029k-15Ib;
 Fri, 09 Jan 2026 23:35:25 +0000
Date: Sat, 10 Jan 2026 00:34:30 +0100
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
Message-ID: <202601100030.nDiAPf7k-lkp@intel.com>
References: <20260108182318.20935-7-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108182318.20935-7-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768001734; x=1799537734;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Q1c6SA9SoZegHQaoQsX+njuHjd1iEf1cuhLBY5bV4qc=;
 b=QYm+8HnE/GeU0Lj3kPM1b4mrGRdcO8UuvkLLbDsai/9j8JoJ32KvCUtv
 7SnD7hVH/hp3H0f3Z1SuD2+xm4HJuvkI1NQrNWYpTjtIcrB9L+ShfrjA0
 E+Az99zUbasWShN+T/prAaTC1PFYAvNXQlv/hHh/HMKCiowd9CsYA/dGF
 T6zCM10OAzu0nu1HITGiqH2RLZLyAMj9xdaMaKaKxNbeHOxSrlYE3R9VW
 IQoL1DWk3yU6lwMCl6kvMpU4nhbjtO29H+RLptqD76guspmOe9lukMmCO
 4aJ0MF0d4wXpNh6+UaTZc0ACZo2Shk9aEbdQgaQQi7MGnJY1AcPPVZ1vr
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QYm+8HnE
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/12] dpll: Support dynamic
 pin index allocation
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ivan-Vecera/dt-bindings-dpll-add-common-dpll-pin-consumer-schema/20260109-022618
base:   net-next/main
patch link:    https://lore.kernel.org/r/20260108182318.20935-7-ivecera%40redhat.com
patch subject: [Intel-wired-lan] [PATCH net-next 06/12] dpll: Support dynamic pin index allocation
config: x86_64-rhel-9.4 (https://download.01.org/0day-ci/archive/20260110/202601100030.nDiAPf7k-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260110/202601100030.nDiAPf7k-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601100030.nDiAPf7k-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/dpll/dpll_core.c: In function 'dpll_pin_idx_free':
>> drivers/dpll/dpll_core.c:499:28: warning: integer overflow in expression of type 'int' results in '-2147483648' [-Woverflow]
     499 |         pin_idx -= INT_MAX + 1;
         |                            ^


vim +499 drivers/dpll/dpll_core.c

   490	
   491	static void dpll_pin_idx_free(u32 pin_idx)
   492	{
   493		if (pin_idx <= INT_MAX)
   494			return; /* Not a dynamic pin index */
   495	
   496		/* Map the index value from dynamic pin index range to IDA range and
   497		 * free it.
   498		 */
 > 499		pin_idx -= INT_MAX + 1;
   500		ida_free(&dpll_pin_idx_ida, pin_idx);
   501	}
   502	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
