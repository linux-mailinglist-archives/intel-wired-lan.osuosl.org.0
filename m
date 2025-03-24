Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6D0A6E261
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Mar 2025 19:34:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A595608E4;
	Mon, 24 Mar 2025 18:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X8bU-oW8zG0Z; Mon, 24 Mar 2025 18:34:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57F2960AB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742841259;
	bh=vH1HlSoZi9+B6OCO8dMkJv0ePoMjqde0duhAsup9LD4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Zn+Wf7qjLtazAIMZyfgeBVhTh0Q2fV40kXmURpoMfVC6l995kJFBLIzvxmlgw6JaV
	 jYdFs9fQzOaWx7sXPqmk6U5MLoKxi8G1WNIABf1caETtap9DCFJKCR61LajUxwvu2u
	 iBFMIo/SKBECHNKrpQdMQ23gDQ1w4RLPbj5Rap3Bf+iV0Z0r2AHQcAYqeior+voIUu
	 TcUchBCoicVtrcO1akY2tm3lvkF80lMJwwsu58eAcMnZuWaOaerkh5eOJCj9ll7ITj
	 ZplA6PYmD8y9ermI0V3h/e1uvL7KKGLP0C693GSCGbH1Xkz0n+oo++wOUQnjg6z+i4
	 NzPeAQFT1eC3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57F2960AB7;
	Mon, 24 Mar 2025 18:34:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DEB6C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 18:34:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F60E4070E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 18:34:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZdEooAjDwAGE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Mar 2025 18:34:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4E14C4070B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E14C4070B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4E14C4070B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 18:34:16 +0000 (UTC)
X-CSE-ConnectionGUID: v4N98oSVTw2eIMDuiE+dsQ==
X-CSE-MsgGUID: wMnMuCacRKSIuMLL+OraHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="54702730"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="54702730"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 11:34:15 -0700
X-CSE-ConnectionGUID: 0FRpxUlUQ9q7rT29U8ALZQ==
X-CSE-MsgGUID: 8JkvYv9PSjGQS/WsvmAUxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124591694"
Received: from lkp-server02.sh.intel.com (HELO e98e3655d6d2) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 24 Mar 2025 11:34:12 -0700
Received: from kbuild by e98e3655d6d2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1twmcj-0003rx-2g;
 Mon, 24 Mar 2025 18:34:09 +0000
Date: Tue, 25 Mar 2025 02:33:20 +0800
From: kernel test robot <lkp@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, almasrymina@google.com, willemb@google.com,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Message-ID: <202503250234.USFLMuAQ-lkp@intel.com>
References: <20250324134939.253647-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324134939.253647-3-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742841256; x=1774377256;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QkioRVw7TRFRDmFV8kPpFQmYnT0X9PvxxTgJT1b6bEc=;
 b=c783lp/Ki1d3OW9UoS5eq5GSw2vbMuWPUWsFOgI9VbLsTIIGIWRsDCF6
 up5bLoFjoH0miaAF2jTl4NrkoH8LM7AwX943nRpoKvmnW8GMlJqM4haEu
 ppOACa0n2eZ7jlJYEWfuW2YDdKBpCgDJegBoQqX0xgQ1HhD6KJji11rGn
 Lzs3b54JkKdNoGjJWKs19CZ4zqrP00c3RecijcyIKncZjFCbsaesEBt/R
 EO2if7kPkYWboELG47dsS6QzIDjlcI5d/xhti+MCuDW+kcOrHsnybXJmN
 2V3Y1lNUsjk6oyMI4JiF334aabXcUv7WCci/bfpNS2IzZfGF4i++VFLql
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c783lp/K
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] idpf: add flow steering
 support
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

Hi Ahmed,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Ahmed-Zaki/virtchnl2-add-flow-steering-support/20250324-215138
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20250324134939.253647-3-ahmed.zaki%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next 2/2] idpf: add flow steering support
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20250325/202503250234.USFLMuAQ-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250325/202503250234.USFLMuAQ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503250234.USFLMuAQ-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:3532:6: error: conflicting types for 'idpf_vport_is_cap_ena'
    3532 | bool idpf_vport_is_cap_ena(struct idpf_vport *vport, u16 flag)
         |      ^
   drivers/net/ethernet/intel/idpf/idpf_virtchnl.h:108:6: note: previous declaration is here
     108 | bool idpf_vport_is_cap_ena(struct idpf_vport *vport, u64 flag);
         |      ^
>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:3560:63: error: expected ')'
    3560 |                 return !!(supp_ftypes & cpu_to_le64(VIRTCHNL2_FLOW_IPV4_UDP);
         |                                                                             ^
   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:3560:12: note: to match this '('
    3560 |                 return !!(supp_ftypes & cpu_to_le64(VIRTCHNL2_FLOW_IPV4_UDP);
         |                          ^
   2 errors generated.


vim +/idpf_vport_is_cap_ena +3532 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

  3524	
  3525	/**
  3526	 * idpf_vport_is_cap_ena - Check if vport capability is enabled
  3527	 * @vport: Private data struct
  3528	 * @flag: flag(s) to check
  3529	 *
  3530	 * Return true if the capability is supported, false otherwise
  3531	 */
> 3532	bool idpf_vport_is_cap_ena(struct idpf_vport *vport, u16 flag)
  3533	{
  3534		struct virtchnl2_create_vport *vport_msg;
  3535	
  3536		vport_msg = vport->adapter->vport_params_recvd[vport->idx];
  3537	
  3538		return !!(vport_msg->vport_flags & le16_to_cpu(flag));
  3539	}
  3540	
  3541	/**
  3542	 * idpf_sideband_flow_type_ena - Check if steering is enabled for flow type
  3543	 * @vport: Private data struct
  3544	 * @flow_type: flow type to check (from ethtool.h)
  3545	 *
  3546	 * Return true if sideband filters are allowed for @flow_type, false otherwise
  3547	 */
  3548	bool idpf_sideband_flow_type_ena(struct idpf_vport *vport, u32 flow_type)
  3549	{
  3550		struct virtchnl2_create_vport *vport_msg;
  3551		__le64 supp_ftypes;
  3552	
  3553		vport_msg = vport->adapter->vport_params_recvd[vport->idx];
  3554		supp_ftypes = vport_msg->sideband_flow_types;
  3555	
  3556		switch (flow_type) {
  3557		case TCP_V4_FLOW:
  3558			return !!(supp_ftypes & cpu_to_le64(VIRTCHNL2_FLOW_IPV4_TCP));
  3559		case UDP_V4_FLOW:
> 3560			return !!(supp_ftypes & cpu_to_le64(VIRTCHNL2_FLOW_IPV4_UDP);
  3561		default:
  3562			return false;
  3563		}
  3564	}
  3565	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
