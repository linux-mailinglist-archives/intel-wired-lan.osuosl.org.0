Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89963786CA8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 12:18:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63FA3613BB;
	Thu, 24 Aug 2023 10:18:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63FA3613BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692872325;
	bh=i7MKBjCfgxIa9uCxLcCLF7iaeE7KEXhOLAPR9dC9tnU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EhGKAKstIbHntQ4hYdSZX5cESB9FTPRBJhgde/FIZL1rq9F5Xgo2UK7sUhwniAb+n
	 6IdoVe2Ab9e9Ysvj+pQTKQotUDAql7bsz8O/VR5n1ride0fWGmynKXwByb04fDPwUG
	 ReOVsH6vqxa5/mrplohzE3h0R5iSX2eMHzNqN7uir4/aE0xpeMTekoBWDJbBTLHv8h
	 94pO1lmKjG1eVLsphPLWC63AbdZprFFGvRoXJ31dxqyqG96dQc4IG2DelqbRvZCzFA
	 +QWVq2gnkJtoA9DERwoApxqvUMhGNGOovaeYLU0fBM/m3ia6al1YS+7h/OnU9URvMl
	 h38RigU0oiTWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5PH4A0CzqFQr; Thu, 24 Aug 2023 10:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 307DC60F53;
	Thu, 24 Aug 2023 10:18:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 307DC60F53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F361C1BF479
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 10:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB6FA812AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 10:18:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB6FA812AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fEjfoe5XKP4u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 10:18:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B18308109C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 10:18:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B18308109C
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="371808040"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="371808040"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 03:18:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730560612"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730560612"
Received: from lkp-server02.sh.intel.com (HELO daf8bb0a381d) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 24 Aug 2023 03:18:35 -0700
Received: from kbuild by daf8bb0a381d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qZ7Q8-0001wK-0j;
 Thu, 24 Aug 2023 10:18:33 +0000
Date: Thu, 24 Aug 2023 18:18:03 +0800
From: kernel test robot <lkp@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202308241737.GzJ3EfdT-lkp@intel.com>
References: <20230819093941.15163-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230819093941.15163-1-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692872318; x=1724408318;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=poAihbucEHEEeKzfGpTvQgm87KOzaDkiK8jW22mubMY=;
 b=SE66mdw5Kf/lG36WuGoEB0k4Hc6Zl295TBaieH3PCKGLS5q4SbecW+U2
 KQ83igixsQvOk7mT04cfsp429YNGpzN3wYoElAFQsrUb+kbEP/SC6ZkCh
 AxpDspTc9oyMpixwn7CE5bMDP8PBCCq447NxsGkJNZHAA7Coe5hoLC8NY
 nCb2MVcjY/Ld9sTJDyFr4dm+7NIBz+e+IMfvk7iEPjY8ETEqNnZuqXGoR
 bvVIViypKOKCdKmomXqJOFshbX1kuBx1r7yHaMqY0dwwuAf1aQwNjjdd1
 xnHeBcBZTAwAK/yIFlu39xNcwRSVfrGmVvQ60aYdBHoZbbpcOD4sxt71d
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SE66mdw5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced
 speed to supported link modes maps
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, aelior@marvell.com,
 manishc@marvell.com, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]
[also build test WARNING on next-20230824]
[cannot apply to tnguy-next-queue/dev-queue tnguy-net-queue/dev-queue net/main linus/master horms-ipvs/master v6.5-rc7]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Paul-Greenwalt/ice-Add-E830-device-IDs-MAC-type-and-registers/20230821-095200
base:   net-next/main
patch link:    https://lore.kernel.org/r/20230819093941.15163-1-paul.greenwalt%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ethtool: Add forced speed to supported link modes maps
config: i386-randconfig-063-20230824 (https://download.01.org/0day-ci/archive/20230824/202308241737.GzJ3EfdT-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230824/202308241737.GzJ3EfdT-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308241737.GzJ3EfdT-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/net/ethernet/qlogic/qede/qede_ethtool.c:204:33: sparse: sparse: symbol 'qede_forced_speed_maps' was not declared. Should it be static?

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
