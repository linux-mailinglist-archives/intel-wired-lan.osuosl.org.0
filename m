Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EA86763DB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 05:43:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A692F60FEB;
	Sat, 21 Jan 2023 04:43:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A692F60FEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674276189;
	bh=0+DTokZkPAT4NSlOPuFDI3FnaGnlwEdwxTchJKhHd64=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nVxirpmfBee9DHfZuCjSwP74hHa8wA+7gTTHIG+2ESawxJiB4XmCripR2ltENMvr6
	 oNvfvxCo3Av7IBGS3ZRI+8Y5M64hmeieWpQzSyB3wdDq+bkxdOldnosNaDqh8d7rM8
	 glWq68sfYeXPRvlXqJxbXQMIAhMBhVZLZb4bfM7OgCvaMKHG22nIIrnPhmF4PC/g+R
	 rXSbZJQBcye8oZjxqjhNJ0xwa0uKzKtMCMsAwAql0HfH00fyDq2ACE69/4bXJd5CfY
	 9jK3Za6pjBCFdVWh7JgMNTUCyQ3JyRZbFBPgHpSkyrbnq42lEn1eoM+bUo1DYPHImj
	 +toit43e7ornA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jBWRkdKMdcPn; Sat, 21 Jan 2023 04:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 216B660F98;
	Sat, 21 Jan 2023 04:43:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 216B660F98
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B024B1BF27A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 04:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C82260F98
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 04:43:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C82260F98
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbIwW_vpEiQ8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 04:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E287160E27
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E287160E27
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 04:43:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="306117900"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="306117900"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 20:42:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="662767035"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="662767035"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 20 Jan 2023 20:42:52 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJ5iN-0003Uc-0g;
 Sat, 21 Jan 2023 04:42:51 +0000
Date: Sat, 21 Jan 2023 12:42:35 +0800
From: kernel test robot <lkp@intel.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>, bpf@vger.kernel.org
Message-ID: <202301211259.eI8T3TMB-lkp@intel.com>
References: <272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674276180; x=1705812180;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=arVUT2kp7AxZby4p5kBezOJfzOwcbkW2d3m7DdS4uug=;
 b=Nszm4R0yvUvW/1c02Fd7PpO3sc6DLeYPL943r1si5MnQm4cXVlb/ZG1M
 UVUIh1P7Dn+Ljw65XL2TYrjG1l3DV2ENIbNjkHQJ/swK/6tTD1G3OH7YV
 QlOmc6hbkeG35pSRMGshb3pI7pwaxLG0w9K0gn2LRPRMBGFuZKC5wiHbG
 sdV+TtxlgeBMNGn70c1lHq1l7+xi7CyhQT+Kr7XsYK9OzOG3dZ/AhRpNd
 b9jFNt3TZWjzf6kwjasWBUjqiuPyS1vuijg61yKZZWR98AQ++xvRk8Ugg
 aUr+CMc4CfMhiVirNCKL5R9m7A9Ur4xu/0a05BWS4XdNlRYpUvoCdYOTg
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nszm4R0y
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/7] netdev-genl: create a
 simple family for netdev stuff
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, john@phrozen.org, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, oe-kbuild-all@lists.linux.dev,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Lorenzo,

I love your patch! Perhaps something to improve:

[auto build test WARNING on bpf-next/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Lorenzo-Bianconi/netdev-genl-create-a-simple-family-for-netdev-stuff/20230121-011957
base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
patch link:    https://lore.kernel.org/r/272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo%40kernel.org
patch subject: [PATCH bpf-next 1/7] netdev-genl: create a simple family for netdev stuff
config: x86_64-rhel-8.3-syz (https://download.01.org/0day-ci/archive/20230121/202301211259.eI8T3TMB-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/bab8ed890888146e07283e2ae27174b3562b6931
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Lorenzo-Bianconi/netdev-genl-create-a-simple-family-for-netdev-stuff/20230121-011957
        git checkout bab8ed890888146e07283e2ae27174b3562b6931
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash net/core/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   net/core/netdev-genl.c: In function 'netdev_nl_dev_fill':
>> net/core/netdev-genl.c:16:13: warning: unused variable 'err' [-Wunused-variable]
      16 |         int err;
         |             ^~~


vim +/err +16 net/core/netdev-genl.c

    10	
    11	static int
    12	netdev_nl_dev_fill(struct net_device *netdev, struct sk_buff *rsp,
    13			   u32 portid, u32 seq, int flags, u32 cmd)
    14	{
    15		void *hdr;
  > 16		int err;
    17	
    18		hdr = genlmsg_put(rsp, portid, seq, &netdev_nl_family, flags, cmd);
    19		if (!hdr)
    20			return -EMSGSIZE;
    21	
    22		if (nla_put_u32(rsp, NETDEV_A_DEV_IFINDEX, netdev->ifindex) ||
    23		    nla_put_u64_64bit(rsp, NETDEV_A_DEV_XDP_FEATURES,
    24				      netdev->xdp_features, NETDEV_A_DEV_PAD)) {
    25			genlmsg_cancel(rsp, hdr);
    26			return -EINVAL;
    27		}
    28	
    29		genlmsg_end(rsp, hdr);
    30	
    31		return 0;
    32	}
    33	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
