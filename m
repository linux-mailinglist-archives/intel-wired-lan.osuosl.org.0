Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE73F67A975
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 05:00:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4CA0405A7;
	Wed, 25 Jan 2023 04:00:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4CA0405A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674619254;
	bh=W7CmO/fhtsp+CFN8OEPXG9Hbmuh8gHgu0U4zibN5nC4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XAiJHPeEIIJeoXAT3Cc6P0hJBVNHevaI0V4Fv/wpaFa1KkLPnCzqT09CWfCp1qqpE
	 3mNlH/RxwKKt20m8OO2uQ5k5yCtSFjUlRqp2v8Jw8o9ksIAip21K3W6aUEgWnAffPM
	 DpYSBhFS4SH9YjC317KZfkmR/EeqE/v1ZDUWqkMvq//eCBpE/wGRCRbQnsUVB0ZU6t
	 ZOw4gqF5tfRZyhvwhOHqZnuolCNDWdlcbw87IdvNe0D9rcYV3VCBtahYzY0UcuXe+5
	 kSIZxMkvR8vjbYEnRJ2isq1RmXTvIYbC5krmCnWNZEdLo7Xf8MTLiE9C1YtSi3dQOm
	 kov2/OfkYs16g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ziAbxHLAh_q1; Wed, 25 Jan 2023 04:00:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85936405BD;
	Wed, 25 Jan 2023 04:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85936405BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 282731BF279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 04:00:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EEE6A81F22
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 04:00:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEE6A81F22
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RDW4PI3I0beS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 04:00:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C51DC81F21
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C51DC81F21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 04:00:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="324174288"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="324174288"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 20:00:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="692817992"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="692817992"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 24 Jan 2023 20:00:37 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKWxg-00071S-1q;
 Wed, 25 Jan 2023 04:00:36 +0000
Date: Wed, 25 Jan 2023 12:00:19 +0800
From: kernel test robot <lkp@intel.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>, bpf@vger.kernel.org
Message-ID: <202301251150.xzkLwNpI-lkp@intel.com>
References: <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674619246; x=1706155246;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bFcfCoc34iYDSEWU4hpN/Ow3DangmLoJDiVkUyyHicA=;
 b=LpMFYIsX/ubwORLihUuo8Ta0jJ72JUoqSzl7nnd/dp8VpflfAMFQtKlK
 RktUw8apEKYvxlL10TJzJ/CszmiiZSkHAsPHYA8UmGSMTglIRYpZGWdqB
 S4mKjbkDmlKsYcfIS6bqyUHWBwW2rxSVGdBDU144DsNNlCdMUEwF3aMhq
 Y6pZkkjzmjZnwJK9E19yblJQr31pNouOp3Pb1WrozqSgdWT4fPlX9huyJ
 9QabIc+hOpLR8VC2lQQUheBx1u7oz3ZZ6rqn5no/LH3jDNAwhhsUM5UNq
 7EyUGwdLjV3LcutUdGrO0I5k7IMdhsahuI6OHSI1rCVnPNk9kEn7+yIEE
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LpMFYIsX
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf-next 2/8] drivers: net: turn on
 XDP features
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

Thank you for the patch! Yet something to improve:

[auto build test ERROR on bpf-next/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Lorenzo-Bianconi/netdev-genl-create-a-simple-family-for-netdev-stuff/20230125-083645
base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
patch link:    https://lore.kernel.org/r/c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo%40kernel.org
patch subject: [PATCH v2 bpf-next 2/8] drivers: net: turn on XDP features
config: arc-defconfig (https://download.01.org/0day-ci/archive/20230125/202301251150.xzkLwNpI-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/7dab4c7d96218eccccedd50e72c84e0ef4de0f4a
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Lorenzo-Bianconi/netdev-genl-create-a-simple-family-for-netdev-stuff/20230125-083645
        git checkout 7dab4c7d96218eccccedd50e72c84e0ef4de0f4a
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arc olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arc SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> net/core/xdp.c:777:6: error: redefinition of 'xdp_features_set_redirect_target'
     777 | void xdp_features_set_redirect_target(struct net_device *dev, bool support_sg)
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from include/linux/netdevice.h:43,
                    from include/linux/if_vlan.h:10,
                    from include/linux/filter.h:20,
                    from net/core/xdp.c:8:
   include/net/xdp.h:418:1: note: previous definition of 'xdp_features_set_redirect_target' with type 'void(struct net_device *, bool)' {aka 'void(struct net_device *, _Bool)'}
     418 | xdp_features_set_redirect_target(struct net_device *dev, bool support_sg)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> net/core/xdp.c:787:6: error: redefinition of 'xdp_features_clear_redirect_target'
     787 | void xdp_features_clear_redirect_target(struct net_device *dev)
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/net/xdp.h:423:1: note: previous definition of 'xdp_features_clear_redirect_target' with type 'void(struct net_device *)'
     423 | xdp_features_clear_redirect_target(struct net_device *dev)
         | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/xdp_features_set_redirect_target +777 net/core/xdp.c

   776	
 > 777	void xdp_features_set_redirect_target(struct net_device *dev, bool support_sg)
   778	{
   779		dev->xdp_features |= NETDEV_XDP_ACT_NDO_XMIT;
   780		if (support_sg)
   781			dev->xdp_features |= NETDEV_XDP_ACT_NDO_XMIT_SG;
   782	
   783		call_netdevice_notifiers(NETDEV_XDP_FEAT_CHANGE, dev);
   784	}
   785	EXPORT_SYMBOL_GPL(xdp_features_set_redirect_target);
   786	
 > 787	void xdp_features_clear_redirect_target(struct net_device *dev)

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
