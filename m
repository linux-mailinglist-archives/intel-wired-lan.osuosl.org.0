Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C285F9F6EC9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 21:17:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EA04614B4;
	Wed, 18 Dec 2024 20:17:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KVhQFShFd5Kr; Wed, 18 Dec 2024 20:17:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56AF66058B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734553052;
	bh=gfUUCBd1wj1+9x3uumqlEyE/vM2Q/LzrvFaCq9WS+XM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TqlgcVzuL5iZPCeQu+MWYf3ODr00RTjKqHioH/PecJdm3ZExy7qexJBSSUejkeBbS
	 RCS2HVxoqZAnCZbrKZ8l5gKBzCoKCkytO53zEabc8CXMirTVRH0BOOceqAIdWmhZNU
	 NnTnH56jpKILT77ZxiFOnAPZS9Ih+asSnpROARgCGykqKuP2MZ+mUZeuz7XTHKFN/E
	 iR59SouFoSb2nT+/8HSFXjsPQEgUvrUCQwR+vpSGYOJpMirC57k/n2f0mE+0PpZT++
	 SAMerYwpV7Wxn2c6bgIMNqOrsFJlxXhNb3XSyN7m90FE1t6DzjSO4ZsYKLJ2msRoYX
	 IkbTA5N5yYjaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56AF66058B;
	Wed, 18 Dec 2024 20:17:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 51815E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 20:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C01780C2F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 20:17:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 89oVmCIGzoJy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 20:17:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DC87A80C1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC87A80C1B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC87A80C1B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 20:17:28 +0000 (UTC)
X-CSE-ConnectionGUID: 8nQ6sjlgSzGIcB3pD0bW3g==
X-CSE-MsgGUID: h+UhcMYcRjOOyhbs4O9WUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="34328594"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="34328594"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 12:17:27 -0800
X-CSE-ConnectionGUID: +N1nUnjfSUaj9gak7/gslw==
X-CSE-MsgGUID: AYwPWfvYQXGIUcs7FwgBdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98783251"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 18 Dec 2024 12:17:24 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tO0Tx-000Gbu-0e;
 Wed, 18 Dec 2024 20:17:21 +0000
Date: Thu, 19 Dec 2024 04:16:55 +0800
From: kernel test robot <lkp@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <202412190421.N2xtn20H-lkp@intel.com>
References: <20241218165843.744647-5-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218165843.744647-5-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734553049; x=1766089049;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=os0R3YlpxIFAksdVVec1bCoWOcHEzdEMzQbQ26/Eoq0=;
 b=OhG0ywB2DWUUTMVQkagieuoQLuSLqZ6+VF8Vw/478u1vufEOvAqCX5vB
 0AnG61DFGj2AOPCC97o5NQLw78dr3E1FdE0FZyBvnBkaiv+Cxw6zJQolx
 OZPMKYmyrnTLzXggwU3z2IHr4fPdw/Z18OP+C3poprj7LJOFZGQw/rvEW
 qebOcX/Vc7gbmjGAnIwvWhmwQO3QpIiB1iZsrGQc/shRLl0s8syR9DzIQ
 Rggoew4Gg+JCwEYlS+Bg4zITiNLHPP7ak6xE1aD/a4poydTA9WwvcntwR
 i9aYIJbddG7Xo1iQFT+1PUnC++RnOoJAe5t2QRWSz+mOMOrHbZx0iyzZ5
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OhG0ywB2
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU
 affinity to napi->config
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

Hi Ahmed,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ahmed-Zaki/net-napi-add-irq_flags-to-napi-struct/20241219-010125
base:   net-next/main
patch link:    https://lore.kernel.org/r/20241218165843.744647-5-ahmed.zaki%40intel.com
patch subject: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU affinity to napi->config
config: arm-randconfig-001-20241219 (https://download.01.org/0day-ci/archive/20241219/202412190421.N2xtn20H-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241219/202412190421.N2xtn20H-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412190421.N2xtn20H-lkp@intel.com/

All warnings (new ones prefixed by >>):

   net/core/dev.c:6716:6: warning: unused variable 'rc' [-Wunused-variable]
    6716 |         int rc;
         |             ^~
   net/core/dev.c:6746:7: warning: unused variable 'rc' [-Wunused-variable]
    6746 |         int  rc;
         |              ^~
>> net/core/dev.c:6766:7: warning: variable 'glue_created' is uninitialized when used here [-Wuninitialized]
    6766 |         if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
         |              ^~~~~~~~~~~~
   net/core/dev.c:6745:19: note: initialize the variable 'glue_created' to silence this warning
    6745 |         bool glue_created;
         |                          ^
         |                           = 0
   3 warnings generated.


vim +/glue_created +6766 net/core/dev.c

  6765	
> 6766		if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
  6767			glue = kzalloc(sizeof(*glue), GFP_KERNEL);
  6768			if (!glue)
  6769				return;
  6770			glue->notify.notify = netif_irq_cpu_rmap_notify;
  6771			glue->notify.release = netif_napi_affinity_release;
  6772			glue->data = napi;
  6773			glue->rmap = NULL;
  6774			napi->irq_flags |= NAPIF_IRQ_NORMAP;
  6775		}
  6776	}
  6777	EXPORT_SYMBOL(netif_napi_set_irq);
  6778	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
