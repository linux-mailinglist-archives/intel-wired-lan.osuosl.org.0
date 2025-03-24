Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBE4A6DF5E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Mar 2025 17:13:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79B9581F6A;
	Mon, 24 Mar 2025 16:13:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ldfVRdaGsMwJ; Mon, 24 Mar 2025 16:13:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6118781FED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742832824;
	bh=5hXdMwQENRSU+xZSjJTjBtSIR4lRq/QlnIdNPPs2s9o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XwR5hE6/tuJdAEVu6Ih4+4s0aZi5PgZk5T06tZhaFbab9UWyVY6Q/mg2BPUuhoWw5
	 FQlqv3Zoz7jZrbwMEbQtcjD4ZAws5lsUUWPahUmtDktzlAh7CEs8RLPz8K67g0ja77
	 ovF5C9ldHBvlt9hvzzijP9sZwjIcykofIWkxEPyIYy7vxp/yke8pYPRtklT6k7pXdB
	 M8zPZNLOW2db9mphj+D2+vpwbNchFAxzXegi9Fp0M+knOdoxBJEBeC7EbhgfO3ahay
	 BUjCRzJ7XlKFLL8gG5oqRcFCzAJPZ2efUR/i56gE+pwFcYbVto2V3/fSabhtWr0Bz+
	 zHQTRohU7EsNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6118781FED;
	Mon, 24 Mar 2025 16:13:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5569DE0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 16:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37EC581F38
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 16:13:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UdXGXn4y5PDR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Mar 2025 16:13:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1ADF181F3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1ADF181F3E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1ADF181F3E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Mar 2025 16:13:41 +0000 (UTC)
X-CSE-ConnectionGUID: OWuJlYBASUG9b0XVz9UVCQ==
X-CSE-MsgGUID: h3cgvHaiRe6JZg9BTwmHTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="61573612"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="61573612"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 09:13:41 -0700
X-CSE-ConnectionGUID: 1N+JwocdSlmh653H49vtvQ==
X-CSE-MsgGUID: bEEFwdAmSSypA8syF3vJ+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124109766"
Received: from lkp-server02.sh.intel.com (HELO e98e3655d6d2) ([10.239.97.151])
 by orviesa006.jf.intel.com with ESMTP; 24 Mar 2025 09:13:37 -0700
Received: from kbuild by e98e3655d6d2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1twkQh-0003kH-0N;
 Mon, 24 Mar 2025 16:13:35 +0000
Date: Tue, 25 Mar 2025 00:13:24 +0800
From: kernel test robot <lkp@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, almasrymina@google.com,
 willemb@google.com, Ahmed Zaki <ahmed.zaki@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Message-ID: <202503250010.XVQgpcvH-lkp@intel.com>
References: <20250324134939.253647-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324134939.253647-3-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742832822; x=1774368822;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZBtOfr6N3EgQLV0iSa+TCG8FnMFYHlSlCnoT7UnJSX8=;
 b=VzTLm1blBxz8Q+9cIyTznbquYsv4KPHFn3ejxWabgKvNvm/VQ3Lzb8ve
 +kCoKrBCNdiNlOWB/XNtSPjwFYwk5WzeE5hM0QED0ZUa0Ujw9dYiaYoVB
 zoEqHqnsKrY4QylR/IP8eClsyAThFfVNg+ExDRiZd6hxK2wmEG9BqD5IG
 mZryUM1zDeRaNoJjW6MrbQDpiMTB2PqO6nfa6gQQ8vCQ9gU+OlChYYaQQ
 VGh2NGOmxNC7dKIfYFy3eZYVt+KrSHOS218M30X4P2DghC72Yzm2goa/J
 hZbd43i//X8EVX9QGNsOHhpyaqaL10GDfjF2JOyvZiwgPd+OcT7loNOik
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VzTLm1bl
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
config: i386-buildonly-randconfig-003-20250324 (https://download.01.org/0day-ci/archive/20250325/202503250010.XVQgpcvH-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250325/202503250010.XVQgpcvH-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503250010.XVQgpcvH-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:3532:6: error: conflicting types for 'idpf_vport_is_cap_ena'; have 'bool(struct idpf_vport *, u16)' {aka '_Bool(struct idpf_vport *, short unsigned int)'}
    3532 | bool idpf_vport_is_cap_ena(struct idpf_vport *vport, u16 flag)
         |      ^~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/ethernet/intel/idpf/idpf.h:24,
                    from drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:6:
   drivers/net/ethernet/intel/idpf/idpf_virtchnl.h:108:6: note: previous declaration of 'idpf_vport_is_cap_ena' with type 'bool(struct idpf_vport *, u64)' {aka '_Bool(struct idpf_vport *, long long unsigned int)'}
     108 | bool idpf_vport_is_cap_ena(struct idpf_vport *vport, u64 flag);
         |      ^~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c: In function 'idpf_sideband_flow_type_ena':
>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:3560:77: error: expected ')' before ';' token
    3560 |                 return !!(supp_ftypes & cpu_to_le64(VIRTCHNL2_FLOW_IPV4_UDP);
         |                          ~                                                  ^
>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:3562:30: error: expected ';' before '}' token
    3562 |                 return false;
         |                              ^
         |                              ;
    3563 |         }
         |         ~                     
>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:3564:1: error: control reaches end of non-void function [-Werror=return-type]
    3564 | }
         | ^
   cc1: some warnings being treated as errors


vim +3532 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

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
> 3562			return false;
  3563		}
> 3564	}
  3565	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
