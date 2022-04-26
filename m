Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B1E50FA56
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Apr 2022 12:24:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4B006108E;
	Tue, 26 Apr 2022 10:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IGw-50mJwObM; Tue, 26 Apr 2022 10:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0AE36107E;
	Tue, 26 Apr 2022 10:24:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC67F1BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 10:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E71DD40516
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 10:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FNyYTYibeRev for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Apr 2022 10:24:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E6FE6404DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 10:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650968642; x=1682504642;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SUcHxR2at58PVF1YYffGQMoKoxwX9Qu0SIOQdjmPd80=;
 b=NUv6YnlmVAdvjFz7iKDNfgg4X6S+0a/xNE4wciMLWrWXmKNMoi3dVnXE
 OOpSoEBb3xsiE37ZNyR62s1gu7oUtPpStlfz+nT/TVI939fJNdQhPYarf
 EFW4J3V0O9drfQa36QdMsjkGISbTYS2JTX5hHcFrz5ZJ2CZX/5EBJzl5T
 f7GqP6hHth5QGhonaHMfQ8VSkTtTxIOMTrqcacPWf/KIQfl8yADu+8GXp
 Exf8ODWsPPrG8KAZVUfQcohkwNJ9hKvbSD+Y38WR9B1ZEDYcVhuA1kvAy
 /dJSI930XhAeQOWORhEoP6cDbPBociJhGlg80FNborE+t/iUqf6B2r7rM g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="265056013"
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="265056013"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 03:24:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400"; d="scan'208";a="558238295"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 26 Apr 2022 03:23:56 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1njIMO-0003QK-3z;
 Tue, 26 Apr 2022 10:23:56 +0000
Date: Tue, 26 Apr 2022 18:23:14 +0800
From: kernel test robot <lkp@intel.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>, netdev@vger.kernel.org
Message-ID: <202204261831.S6mBmtgP-lkp@intel.com>
References: <8847c5d670c7ee11890d75f58a4922c5cb542f20.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8847c5d670c7ee11890d75f58a4922c5cb542f20.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] rtnetlink: add extack
 support in fdb del handlers
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
Cc: alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, razor@blackwall.org, llvm@lists.linux.dev,
 eng.alaamohamedsoliman.am@gmail.com, jdenham@redhat.com, manishc@marvell.com,
 bridge@lists.linux-foundation.org, intel-wired-lan@lists.osuosl.org,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, shshaikh@marvell.com,
 sbrivio@redhat.com, claudiu.manoil@nxp.com, GR-Linux-NIC-Dev@marvell.com,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Alaa,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on horms-ipvs/master]
[also build test ERROR on net/master linus/master v5.18-rc4]
[cannot apply to net-next/master next-20220422]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Alaa-Mohamed/propagate-extack-to-vxlan_fdb_delete/20220425-222644
base:   https://git.kernel.org/pub/scm/linux/kernel/git/horms/ipvs.git master
config: riscv-randconfig-r002-20220425 (https://download.01.org/0day-ci/archive/20220426/202204261831.S6mBmtgP-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 1cddcfdc3c683b393df1a5c9063252eb60e52818)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/5e9c3e146040a4e37b45ca18c3b42c3dfd6d0a0e
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Alaa-Mohamed/propagate-extack-to-vxlan_fdb_delete/20220425-222644
        git checkout 5e9c3e146040a4e37b45ca18c3b42c3dfd6d0a0e
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash drivers/net/ethernet/mscc/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/mscc/ocelot_net.c:784:70: error: too many arguments to function call, expected 5, have 6
           return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge, extack);
                  ~~~~~~~~~~~~~~                                               ^~~~~~
   include/soc/mscc/ocelot.h:893:5: note: 'ocelot_fdb_del' declared here
   int ocelot_fdb_del(struct ocelot *ocelot, int port, const unsigned char *addr,
       ^
   1 error generated.


vim +784 drivers/net/ethernet/mscc/ocelot_net.c

   774	
   775	static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
   776				       struct net_device *dev,
   777				       const unsigned char *addr, u16 vid, struct netlink_ext_ack *extack)
   778	{
   779		struct ocelot_port_private *priv = netdev_priv(dev);
   780		struct ocelot_port *ocelot_port = &priv->port;
   781		struct ocelot *ocelot = ocelot_port->ocelot;
   782		int port = priv->chip_port;
   783	
 > 784		return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge, extack);
   785	}
   786	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
