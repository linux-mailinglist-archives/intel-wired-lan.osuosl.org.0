Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 082187276AB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 07:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD6868378C;
	Thu,  8 Jun 2023 05:29:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD6868378C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686202177;
	bh=4Ugn0i9oRn4Z4hiaOZCsdz9q84Tcjngj8Tbrkvnr45M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3gLUn+1RI5vEYz5fIwu55XXqsI8Gme3DClELpIOJn5eXJIDFiF+E5X/Z67ALOSY5N
	 WDbHOOq0JWEDGzonFOdIYexwMTGjWOelVxWbgR0Cgn2beX65yAybbKWElCWZinOWCF
	 vaw6taPDwtpAik/V4fU4k4hYb76ALjJ1uhiM+N12O3CiAxyPfLEmZbxRCuYw0IpojQ
	 na0z3kjWUnrB80GgqBUB8eIcbwGjywXL3hsUdDmY4DcQad35Wzg1obsjY10MeWN8X8
	 ukN5MkZc3rcCCNP07tiEsovXP4M6fWMTkmE6PkUkNCEw/YZnZq8TxqwslwbY64waqQ
	 jDD/vIBEHgl0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1YIS0uzOL4TP; Thu,  8 Jun 2023 05:29:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 988A4836EA;
	Thu,  8 Jun 2023 05:29:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 988A4836EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24B0B1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 05:29:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F054340AB1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 05:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F054340AB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MLRmGgSh1_DC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 05:29:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F6604048F
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F6604048F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 05:29:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="385548645"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="385548645"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 22:29:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="712969491"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="712969491"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2023 22:29:28 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q78DA-0007KB-0E;
 Thu, 08 Jun 2023 05:29:28 +0000
Date: Thu, 8 Jun 2023 13:28:45 +0800
From: kernel test robot <lkp@intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202306081332.iBSRrRh3-lkp@intel.com>
References: <20230607222443.119-4-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230607222443.119-4-paul.m.stillwell.jr@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686202171; x=1717738171;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=P6IeBoSJ/qlkLWwdk/qYbXDfSQ5Ov3/NCQOwa+v/uzg=;
 b=FOu5DrWnG5saefc6IqMpVqRWmwxUgHn7KRnYi5br1XUT8JlvkOeOzQ5g
 iAuIzI0TeJkNmdcmNYWpzvn4dMhjqOzqlX4dhfp4Fzdw66wcH3nrhdpNB
 7aQX8e7NGTwYyLn1E5L4Y1u42NWDbELgQtHN0NK2omguhYXhWa/5RdAKX
 KHndtpb9lIEVIgbSt66sH5D7ujOqpL2pTX9yFfhIGZ3hen//tcw1zBFwq
 g0zUXij+m78EfA8UOCkNMvm/LOwu73eNr8hOh4EzUyKspWkr+e3ZmFoL7
 AFRS7/fppUMgLYTPcpZeDlLHgNnMnnxW316dXwauS++HOAH9JAWa8u1u7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FOu5DrWn
Subject: Re: [Intel-wired-lan] [PATCH net-next v12 3/4] ice: add ability to
 read FW log data and configure the number of log buffers
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
Cc: oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-M-Stillwell-Jr/ice-remove-FW-logging-code/20230608-062658
base:   net-next/main
patch link:    https://lore.kernel.org/r/20230607222443.119-4-paul.m.stillwell.jr%40intel.com
patch subject: [Intel-wired-lan] [PATCH net-next v12 3/4] ice: add ability to read FW log data and configure the number of log buffers
config: parisc-randconfig-c003-20230608 (https://download.01.org/0day-ci/archive/20230608/202306081332.iBSRrRh3-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 12.3.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306081332.iBSRrRh3-lkp@intel.com/

cocci warnings: (new ones prefixed by >>)
>> drivers/net/ethernet/intel/ice/ice_fwlog.c:59:3-8: WARNING: NULL check before some freeing functions is not needed.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
