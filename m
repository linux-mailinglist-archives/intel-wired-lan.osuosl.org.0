Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F79D13855
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 16:13:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE1E042A09;
	Mon, 12 Jan 2026 15:13:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Go-fJg3GkAej; Mon, 12 Jan 2026 15:13:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2EDD42A08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768230817;
	bh=3yMyjK018i0vJ5nwLeiD/Bg0C+n5RivjCAwWmX3vKQQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7i3Ue5pNXdWnBT9kIkdx0RubiQmSdGFhOSfhiKmRJI1guLAKergOgUiIbUDLKH3iu
	 tUu+k8RSZTxkFbvGTgCMwusTh1Gg51yLJsW5B0VJm878dikWxd3+pIrSPfDJX1GLws
	 2AC3IVdurEuMnc2IolB8SCaFSxkc2h/6azBTmpbGoEfQcPL5vLFUlCmU/gje9nJG++
	 Hqedo13iOJllpzou3rQ79dgv+6+NE+gU4BR7r8YaeSyugmMIEvUkZAJ4o0HKuf1Psr
	 YUS4kf0ql6678JNtkN0/u/rctSCv2YKwjv2IQLaPHaGjEJCknNxsHrG6vSQ7HLQjO/
	 oAl0Km7+YopKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2EDD42A08;
	Mon, 12 Jan 2026 15:13:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A55761CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:13:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 836486F63F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:13:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pxemJ1HLihNV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 15:13:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 923C66F634
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 923C66F634
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 923C66F634
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 15:13:35 +0000 (UTC)
X-CSE-ConnectionGUID: V+HJUbgkQaOg6/GUsHnROQ==
X-CSE-MsgGUID: 5FGRrjxKRV+dMxpiARvtxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="73349104"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="73349104"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 07:13:34 -0800
X-CSE-ConnectionGUID: mwqoedS6SCmoCk5xw0p26g==
X-CSE-MsgGUID: imcgvPMSRA2CwgvMwt4IgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="208632334"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 12 Jan 2026 07:13:29 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vfJbi-00000000DUC-04q9;
 Mon, 12 Jan 2026 15:13:26 +0000
Date: Mon, 12 Jan 2026 23:13:09 +0800
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
Message-ID: <202601122216.BCarSN6K-lkp@intel.com>
References: <20260108182318.20935-7-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108182318.20935-7-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768230815; x=1799766815;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FH5lvgGlxlgcsI/c3Wc4LZGoA4WSMGev1ZgnwDVgbkw=;
 b=lumYmJh3lREzppEyuWTo96UN5qHsU6SL4JQMeIdp+CNHsYruHmIcldGb
 c5iXHEWz1RaJ2Et9I1WXmOddUjWq0imkB1AZPJ6jwZHnj8uKz8U7fMnL8
 zggojf93pYbJjHJ3U0FT0TD8Muq65qWKbG6/AtAUYafaNJBI7mNeKlb9R
 cPQWGpdu8HK3F6NzqjyIBlGDu4npJssEhuh5x618zfzjKS3KBQ530aYzx
 ldO0snRQhq6UiZvQOn4aoQIKY20Nvix6C6M72OA9/uYajeDjal+tZWWRy
 mWxxKA/MtX9sQdRYQ6PrYeeB6PfyvljQbBntcRhsL3FXmXzcglmLHeOjv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lumYmJh3
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
config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20260112/202601122216.BCarSN6K-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260112/202601122216.BCarSN6K-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601122216.BCarSN6K-lkp@intel.com/

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
