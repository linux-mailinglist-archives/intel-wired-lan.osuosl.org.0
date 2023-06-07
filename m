Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C758072694A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 20:54:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4566060D72;
	Wed,  7 Jun 2023 18:54:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4566060D72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686164088;
	bh=dd/OFIVaeFHb6ag177AML+BpKeFmoKfithwSvo9ew6A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Vu3gTadP7Zm/RkdzU7AtRXNODWprvNMMHsbYy2DdVOHA6RtrS18L28vNmgNSeBzRD
	 SXQsBbbs+wmhAQkUZk87DlYRy4HoHQfsqbH27bYBFq+h/XTu0K54AirBNl2VJc+/vs
	 HTgF/wIlxefMp/1kHsayHtNAJkHPJgiYTItPy1QkmtcxiOtFJ09jAP3GdZ2U99PM4s
	 U2iejLAFwMgEp+N8YjR1oJOQdxcmxCIajhfTTpMp0gZEXHcXwWxk0PpJUPrVl6w30B
	 T7pU9zs+WsSQQ4+U/GqZc/NgmxD0irFxz3pPWkFl2xJbjUOWV7n8ftojzQBON5P71w
	 ofFQFnsJFSXZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gj9M1kPQlbNQ; Wed,  7 Jun 2023 18:54:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13BA260D71;
	Wed,  7 Jun 2023 18:54:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13BA260D71
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 11CDC1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 18:54:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9046408CA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 18:54:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9046408CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TE8wRQfxRobh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 18:54:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC04A40910
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC04A40910
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 18:54:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="360409638"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="360409638"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 11:54:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="687085512"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="687085512"
Received: from lkp-server01.sh.intel.com (HELO 15ab08e44a81) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 07 Jun 2023 11:54:38 -0700
Received: from kbuild by 15ab08e44a81 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q6yIn-0006pt-21;
 Wed, 07 Jun 2023 18:54:37 +0000
Date: Thu, 8 Jun 2023 02:54:14 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <202306080231.44ByZBRA-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686164080; x=1717700080;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=7za4CCs5s9aBNMuiU6f+xQlTA6skRmO0zwrLGfukTgg=;
 b=DYYmOHrvnkW9bmwqrjrY3CipjLEb0dECiXsgYaMqYCWNGMCHk9TtaUo/
 hsLrw81QkctY7oDju2eK220DqwAqDhSX8H7P0xz5tkH6UNiUmU7+CNccL
 OZEl8a48Jv4p5blUt5Vqj4Cd52JgaBTa9rOyetReut9Vkj6xOtG+S4K0p
 FGO7JVRyG8JMVZa1ssN9ueRs4TANEVLAu9dlhzjN3IO6yW/VJ7hMZ72po
 QfV/OYusjypmN7GSVz8JUTfQdNJ9SNpi8Yni7b6z0tDCaHEV8y6zNMQrV
 K7vybKApeNAGk1EYPWzonJln7dIU1lu+BVglxp8tUd3S8Vu/2Ll5k3kKW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DYYmOHrv
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 25/62] ERROR:
 modpost: "ice_vf_vsi_disable_port_vlan"
 [drivers/net/ethernet/intel/ice/ice.ko] undefined!
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   1ecd2f861f59dda7810777ecfa3e4b2eb8407747
commit: 290dcbd2db2cb3f85e637f798e687d1e37e2281b [25/62] ice: implement bridge port vlan
config: parisc-randconfig-r014-20230607 (https://download.01.org/0day-ci/archive/20230608/202306080231.44ByZBRA-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 12.3.0
reproduce (this is a W=1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=290dcbd2db2cb3f85e637f798e687d1e37e2281b
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue dev-queue
        git checkout 290dcbd2db2cb3f85e637f798e687d1e37e2281b
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=parisc olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.3.0 ~/bin/make.cross W=1 O=build_dir ARCH=parisc SHELL=/bin/bash

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306080231.44ByZBRA-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "ice_vf_vsi_disable_port_vlan" [drivers/net/ethernet/intel/ice/ice.ko] undefined!
>> ERROR: modpost: "ice_vf_vsi_enable_port_vlan" [drivers/net/ethernet/intel/ice/ice.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
