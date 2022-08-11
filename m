Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB45F590731
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 22:00:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 315CB60D76;
	Thu, 11 Aug 2022 20:00:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 315CB60D76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660248023;
	bh=O/9g8z2/LFQLnCYyNcwXGUsecNgGF0NkCKgqJ+9eR0s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cquk5uf96WEGczd+Foogfk8Z25M5tVHgYOzGjZRHq8htc3Ucrys+B5I+PPvfg9S+n
	 DaEIyvnb+XupNad4TtUUeW/TXFHsy+vlKeTUAMga7BbkV1Zz0gkJk/O2hDVdtJhiSq
	 lPkylXlq6E+y/bpGGzejV6KR6a5cN6B03TsJiypTK6l/r46GuCfqSU2YVk7SjS0tge
	 i7qaj3gBYd1T4izS/sR8iGA90oS6+kwydEoyT/MQ8y9aVITyODijbdvgWBk/V3Sal+
	 Sdi6kV3H5lerNljQ5/+I0sPTa6UaGKObTsTRagxp3pLkWmLY4hzCasVyqTAynDVeC0
	 sVMTbnbZ13yfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZNNqdtAKApYp; Thu, 11 Aug 2022 20:00:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1831960B8F;
	Thu, 11 Aug 2022 20:00:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1831960B8F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64FBB1BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 20:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D67B82A2D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 20:00:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D67B82A2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X4heb3LxVdAc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 20:00:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3603682B49
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3603682B49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 20:00:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292711068"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="292711068"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 13:00:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="933455900"
Received: from lkp-server02.sh.intel.com (HELO cfab306db114) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 11 Aug 2022 13:00:04 -0700
Received: from kbuild by cfab306db114 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oMELc-0000bp-10;
 Thu, 11 Aug 2022 20:00:04 +0000
Date: Fri, 12 Aug 2022 03:59:36 +0800
From: kernel test robot <lkp@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, jhogan@kernel.org
Message-ID: <202208120359.pPxeIJNZ-lkp@intel.com>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220811151342.19059-1-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660248013; x=1691784013;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YiQBXT9wfa1wetxm9fnBkCHowbBE8sB6uMZyl/xqtkU=;
 b=AsZ5eV0y1vakGbY7B8oTpmC5rtcIruPAZRrEoKzoYmRQHvrVjpz3KIKM
 R1RnA/giZ0wMrZp06KtJvFxmkKw+PKtuFM2xxxpIrAfQJxYnapDVHhlGm
 zBXSbNXuop6IZN02tnUO/5BG6JiFYm//7iMmUy9q81ve8Y2qanwyUc1Zt
 Tm706ZAfwtHvjalxhbIk4f6v2xUlx8T39QRt7cke7pRKoYiEksMq/mUt5
 DTKdH/du/LXADlOX985p0rXU9L/La8dI8PB0I7ta595coNLSoxvz3YJRZ
 6OspqbPvK9ZmIGy6rim2VcMji2aOJ8uqmWlxdAvmCOTsueiZ4Ap1o1ka7
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AsZ5eV0y
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
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
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
config: x86_64-rhel-8.3-kselftests (https://download.01.org/0day-ci/archive/20220812/202208120359.pPxeIJNZ-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/61ed7ed758f23a10549c5d4fdc82ef9356281cbf
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Vinicius-Costa-Gomes/igc-fix-deadlock-caused-by-taking-RTNL-in-RPM-resume-path/20220811-232032
        git checkout 61ed7ed758f23a10549c5d4fdc82ef9356281cbf
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/x86/include/asm/percpu.h:27,
                    from arch/x86/include/asm/nospec-branch.h:14,
                    from arch/x86/include/asm/paravirt_types.h:40,
                    from arch/x86/include/asm/ptrace.h:97,
                    from arch/x86/include/asm/math_emu.h:5,
                    from arch/x86/include/asm/processor.h:13,
                    from arch/x86/include/asm/timex.h:5,
                    from include/linux/timex.h:67,
                    from include/linux/time32.h:13,
                    from include/linux/time.h:60,
                    from include/linux/stat.h:19,
                    from include/linux/module.h:13,
                    from drivers/net/ethernet/intel/igc/igc_main.c:4:
>> drivers/net/ethernet/intel/igc/igc_main.c:6838:33: error: 'igc_suspend' undeclared here (not in a function); did you mean 'dpm_suspend'?
    6838 |         SET_SYSTEM_SLEEP_PM_OPS(igc_suspend, igc_resume)
         |                                 ^~~~~~~~~~~
   include/linux/kernel.h:57:44: note: in definition of macro 'PTR_IF'
      57 | #define PTR_IF(cond, ptr)       ((cond) ? (ptr) : NULL)
         |                                            ^~~
   include/linux/pm.h:313:20: note: in expansion of macro 'pm_sleep_ptr'
     313 |         .suspend = pm_sleep_ptr(suspend_fn), \
         |                    ^~~~~~~~~~~~
   include/linux/pm.h:343:9: note: in expansion of macro 'SYSTEM_SLEEP_PM_OPS'
     343 |         SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn)
         |         ^~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/igc/igc_main.c:6838:9: note: in expansion of macro 'SET_SYSTEM_SLEEP_PM_OPS'
    6838 |         SET_SYSTEM_SLEEP_PM_OPS(igc_suspend, igc_resume)
         |         ^~~~~~~~~~~~~~~~~~~~~~~


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
