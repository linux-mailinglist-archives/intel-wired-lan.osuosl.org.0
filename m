Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 165AC4C73B0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 18:37:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83AAD409E7;
	Mon, 28 Feb 2022 17:37:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xqKbZH0xfkFR; Mon, 28 Feb 2022 17:37:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65BD9409E5;
	Mon, 28 Feb 2022 17:37:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5EA101BF306
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 17:37:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 494464032A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 17:37:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b4Mcy3L4btaK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 17:37:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C11E40162
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 17:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646069838; x=1677605838;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Dks6yYMwd4lMXpe3SnDkJomov1zowohtskGdY45fvqc=;
 b=dumPKK6DAHhCZkBR01ogt02TlReZSkU6W7b5oqeb7JQ/JLPS2KdkgB4m
 UKmnbgmZropvcMZlnU1oJbHq8Hs1VCptVvhZlt1fnkFfmpre2IWoQMXiG
 lHJhJK6eE8llywz577Y9ZyL/98XQL4ls3qzQ4mVEeut10X38JEPfCa0o6
 tnxCgFa9NJ5PfsIkyJmzvNALSy/9QvyxA1h9dGGRcqBoC9mMteOABaLWD
 YDDEYOs1XTvwD2c3JH7mHfVpitD3V7OMTbeSiJ9YDc8k7SNbfDo1HPvDS
 CP3rxlluKnYoS1ZDexhTchReQkVo9jBBmtEdRhjlHln69Lzb8CAuY0fAz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="250525649"
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="250525649"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 09:37:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="640958037"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 28 Feb 2022 09:37:15 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nOjxS-0007c5-FJ; Mon, 28 Feb 2022 17:37:14 +0000
Date: Tue, 1 Mar 2022 01:37:02 +0800
From: kernel test robot <lkp@intel.com>
To: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202203010159.pkLQCurU-lkp@intel.com>
References: <20220228132752.17522-3-slawomirx.mrozowicz@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228132752.17522-3-slawomirx.mrozowicz@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] ixgbevf: add disable link
 state
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
Cc: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>, llvm@lists.linux.dev,
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Slawomir,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on net/master]

url:    https://github.com/0day-ci/linux/commits/Slawomir-Mrozowicz/ixgbe-add-the-ability-for-the-PF-to-disable-VF-link-state/20220228-225053
base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git 519ca6fa960587d02904a9f8f79d587ac874fb03
config: x86_64-randconfig-a006-20220228 (https://download.01.org/0day-ci/archive/20220301/202203010159.pkLQCurU-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project d271fc04d5b97b12e6b797c6067d3c96a8d7470e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/74e631f4b502bf5cda71dd25f255cd7eca42d280
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Slawomir-Mrozowicz/ixgbe-add-the-ability-for-the-PF-to-disable-VF-link-state/20220228-225053
        git checkout 74e631f4b502bf5cda71dd25f255cd7eca42d280
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/net/ethernet/intel/ixgbevf/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ixgbevf/vf.c:594:5: warning: no previous prototype for function 'ixgbevf_get_link_state_vf' [-Wmissing-prototypes]
   s32 ixgbevf_get_link_state_vf(struct ixgbe_hw *hw, bool *link_state)
       ^
   drivers/net/ethernet/intel/ixgbevf/vf.c:594:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   s32 ixgbevf_get_link_state_vf(struct ixgbe_hw *hw, bool *link_state)
   ^
   static 
   1 warning generated.


vim +/ixgbevf_get_link_state_vf +594 drivers/net/ethernet/intel/ixgbevf/vf.c

   586	
   587	/**
   588	 * ixgbevf_get_link_state_vf - Get VF link state from PF
   589	 * @hw: pointer to the HW structure
   590	 * @link_state: link state storage
   591	 *
   592	 * Returns state of the operation error or success.
   593	 */
 > 594	s32 ixgbevf_get_link_state_vf(struct ixgbe_hw *hw, bool *link_state)
   595	{
   596		u32 msgbuf[2];
   597		s32 ret_val;
   598		s32 err;
   599	
   600		msgbuf[0] = IXGBE_VF_GET_LINK_STATE;
   601		msgbuf[1] = 0x0;
   602	
   603		err = ixgbevf_write_msg_read_ack(hw, msgbuf, msgbuf, 2);
   604	
   605		if (err || (msgbuf[0] & IXGBE_VT_MSGTYPE_FAILURE)) {
   606			ret_val = IXGBE_ERR_MBX;
   607		} else {
   608			ret_val = 0;
   609			*link_state = msgbuf[1];
   610		}
   611	
   612		return ret_val;
   613	}
   614	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
