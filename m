Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8521C59068F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 20:59:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FDC741774;
	Thu, 11 Aug 2022 18:59:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FDC741774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660244353;
	bh=oa6NWL2vMZfhcoA2n04WHQf/gD1MOXQ+/ZBJu9taUho=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g3jxaRgTeax3VGpw+bczcGFR+qPKGegF22+1h6qpvxA5IGTyil9DFz+KK2EY5eqiZ
	 ZWU2oSExPzbXRErtotpzyURKA1oTFHMkluybwt8ZXH1/eoOO8hH2jGbDf5Kef+VEg6
	 cYgQZyqvAoAtbcBSfhcHI1OlbPOGH5QSRhklkh/luCt7b2lrNepoG4nKF9A5QUXGNL
	 YT7bN74pgvVpDsINuRhnkfG1GkIzaPC2OUdheoB4DSRuPJ+klrstygnKdxBfnE99o5
	 LhBMH8dEoxaxOBb7LiANIw1sJEtWzdZrYhGTRjbG68xp7vkiq4ZTY/HxWO+l0OJjmr
	 vuzFDKdz7pE0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YCpoBFkYkrIO; Thu, 11 Aug 2022 18:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D53454179C;
	Thu, 11 Aug 2022 18:59:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D53454179C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B76361BF228
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E4FA60B8E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E4FA60B8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rIF-Epwb-BKz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 18:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6882360B6C
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6882360B6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:59:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="290192764"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="290192764"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 11:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="673810482"
Received: from lkp-server02.sh.intel.com (HELO cfab306db114) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 11 Aug 2022 11:59:01 -0700
Received: from kbuild by cfab306db114 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oMDOX-0000Xr-0K;
 Thu, 11 Aug 2022 18:59:01 +0000
Date: Fri, 12 Aug 2022 02:58:15 +0800
From: kernel test robot <lkp@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, jhogan@kernel.org
Message-ID: <202208120244.a7CKRiFy-lkp@intel.com>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220811151342.19059-1-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660244344; x=1691780344;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OgRPmckFG0TtMVAfj/fjsMBpWluP7n5nc5q0S29fQ70=;
 b=B9Co7/MzMkBXuUDwiRgvaz1hGeuSi3tRJdLy7JR5Gw99hPJvGXmpvZM8
 PMWcsow2ZL5W/4z1GIDqZIMuQRGALLeFlFLvF4oyp8YcoxHeLxKN9Puvg
 04dbTMMbGrQH1qsNS2W0jR1SsHKt8jnoBTd1JRo9b4QWwiZY9DMYvHeWu
 LJS37z6x3hsrYbkV9lepY2lkl2e0LULISQ6rhKIoS+BOcxWZpSniE1euV
 /1gjQdLvTBz3w53vInvu/XKf1Q3FuVejrOXkepr7U0S1IAYROjTTzGJAO
 CWahFFt0OrGVpbWcHhx0yQVCWQqhjzvEMNpUN+Ysm7FDsQkTWGfOgX+17
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B9Co7/Mz
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix deadlock caused by taking
 RTNL in RPM resume path
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, kbuild-all@lists.01.org,
 netdev@vger.kernel.org, llvm@lists.linux.dev,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

I love your patch! Yet something to improve:

[auto build test ERROR on tnguy-next-queue/dev-queue]
[also build test ERROR on linus/master v5.19 next-20220811]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vinicius-Costa-Gomes/igc-fix-deadlock-caused-by-taking-RTNL-in-RPM-resume-path/20220811-232032
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
config: i386-randconfig-a013 (https://download.01.org/0day-ci/archive/20220812/202208120244.a7CKRiFy-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 5f1c7e2cc5a3c07cbc2412e851a7283c1841f520)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/61ed7ed758f23a10549c5d4fdc82ef9356281cbf
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Vinicius-Costa-Gomes/igc-fix-deadlock-caused-by-taking-RTNL-in-RPM-resume-path/20220811-232032
        git checkout 61ed7ed758f23a10549c5d4fdc82ef9356281cbf
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/net/ethernet/intel/igc/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/igc/igc_main.c:6838:26: error: use of undeclared identifier 'igc_suspend'; did you mean '__igc_suspend'?
           SET_SYSTEM_SLEEP_PM_OPS(igc_suspend, igc_resume)
                                   ^~~~~~~~~~~
                                   __igc_suspend
   include/linux/pm.h:343:22: note: expanded from macro 'SET_SYSTEM_SLEEP_PM_OPS'
           SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn)
                               ^
   include/linux/pm.h:313:26: note: expanded from macro 'SYSTEM_SLEEP_PM_OPS'
           .suspend = pm_sleep_ptr(suspend_fn), \
                                   ^
   include/linux/pm.h:439:65: note: expanded from macro 'pm_sleep_ptr'
   #define pm_sleep_ptr(_ptr) PTR_IF(IS_ENABLED(CONFIG_PM_SLEEP), (_ptr))
                                                                   ^
   include/linux/kernel.h:57:38: note: expanded from macro 'PTR_IF'
   #define PTR_IF(cond, ptr)       ((cond) ? (ptr) : NULL)
                                              ^
   drivers/net/ethernet/intel/igc/igc_main.c:6706:27: note: '__igc_suspend' declared here
   static int __maybe_unused __igc_suspend(struct device *dev)
                             ^
>> drivers/net/ethernet/intel/igc/igc_main.c:6838:26: error: use of undeclared identifier 'igc_suspend'; did you mean '__igc_suspend'?
           SET_SYSTEM_SLEEP_PM_OPS(igc_suspend, igc_resume)
                                   ^~~~~~~~~~~
                                   __igc_suspend
   include/linux/pm.h:343:22: note: expanded from macro 'SET_SYSTEM_SLEEP_PM_OPS'
           SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn)
                               ^
   include/linux/pm.h:315:25: note: expanded from macro 'SYSTEM_SLEEP_PM_OPS'
           .freeze = pm_sleep_ptr(suspend_fn), \
                                  ^
   include/linux/pm.h:439:65: note: expanded from macro 'pm_sleep_ptr'
   #define pm_sleep_ptr(_ptr) PTR_IF(IS_ENABLED(CONFIG_PM_SLEEP), (_ptr))
                                                                   ^
   include/linux/kernel.h:57:38: note: expanded from macro 'PTR_IF'
   #define PTR_IF(cond, ptr)       ((cond) ? (ptr) : NULL)
                                              ^
   drivers/net/ethernet/intel/igc/igc_main.c:6706:27: note: '__igc_suspend' declared here
   static int __maybe_unused __igc_suspend(struct device *dev)
                             ^
>> drivers/net/ethernet/intel/igc/igc_main.c:6838:26: error: use of undeclared identifier 'igc_suspend'; did you mean '__igc_suspend'?
           SET_SYSTEM_SLEEP_PM_OPS(igc_suspend, igc_resume)
                                   ^~~~~~~~~~~
                                   __igc_suspend
   include/linux/pm.h:343:22: note: expanded from macro 'SET_SYSTEM_SLEEP_PM_OPS'
           SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn)
                               ^
   include/linux/pm.h:317:27: note: expanded from macro 'SYSTEM_SLEEP_PM_OPS'
           .poweroff = pm_sleep_ptr(suspend_fn), \
                                    ^
   include/linux/pm.h:439:65: note: expanded from macro 'pm_sleep_ptr'
   #define pm_sleep_ptr(_ptr) PTR_IF(IS_ENABLED(CONFIG_PM_SLEEP), (_ptr))
                                                                   ^
   include/linux/kernel.h:57:38: note: expanded from macro 'PTR_IF'
   #define PTR_IF(cond, ptr)       ((cond) ? (ptr) : NULL)
                                              ^
   drivers/net/ethernet/intel/igc/igc_main.c:6706:27: note: '__igc_suspend' declared here
   static int __maybe_unused __igc_suspend(struct device *dev)
                             ^
   3 errors generated.


vim +6838 drivers/net/ethernet/intel/igc/igc_main.c

bc23aa949aeba0 Sasha Neftin 2020-01-29  6835  
9513d2a5dc7f3f Sasha Neftin 2019-11-14  6836  #ifdef CONFIG_PM
9513d2a5dc7f3f Sasha Neftin 2019-11-14  6837  static const struct dev_pm_ops igc_pm_ops = {
9513d2a5dc7f3f Sasha Neftin 2019-11-14 @6838  	SET_SYSTEM_SLEEP_PM_OPS(igc_suspend, igc_resume)
9513d2a5dc7f3f Sasha Neftin 2019-11-14  6839  	SET_RUNTIME_PM_OPS(igc_runtime_suspend, igc_runtime_resume,
9513d2a5dc7f3f Sasha Neftin 2019-11-14  6840  			   igc_runtime_idle)
9513d2a5dc7f3f Sasha Neftin 2019-11-14  6841  };
9513d2a5dc7f3f Sasha Neftin 2019-11-14  6842  #endif
9513d2a5dc7f3f Sasha Neftin 2019-11-14  6843  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
