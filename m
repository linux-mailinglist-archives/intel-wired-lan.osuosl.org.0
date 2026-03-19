Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEb1Fh99u2k2kwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 05:35:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 739E02C5E49
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 05:35:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB64F8405C;
	Thu, 19 Mar 2026 04:35:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iUQEw8bQgQt3; Thu, 19 Mar 2026 04:35:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E295784059
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773894939;
	bh=k1+Oxnsvv66qpdlUU28H1Nhr38/ljX5q8VnsdwVG4DA=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S00fnykiqEGQv9yl8VdJvAi+dHnhDIoSEpsHSZzW3G1Uwyzt569l8EHdhQZp2thr3
	 0dcLVmkp89pDJX3CGdVaTrrtYmSbfvaYg3CMPW/5NZBN/6sOCRsQQud+U4Q8LvPnB4
	 UMSPv8VkCvmJGnySoJLW0lyU2R7uqj4q3lFwxFUuGZqVJAe2nByNkufAcz1WzYpTCy
	 5OJ7g1xxUPJ+V1RuYETkocwNSdj0/Pn62yciBiWwQpA6BErkx2wmMqg4zAzR8X/Sl3
	 OcxVwiJOcQN0w6aU/2iPsDqpOw++cUa4TACNHlSBpIx3ohksgLUylmE6hNtck1a4sb
	 wdNSeM91LjLxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E295784059;
	Thu, 19 Mar 2026 04:35:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 339F11B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 04:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2556C417ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 04:35:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 618nlyl0bvvY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 04:35:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CA497417EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA497417EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA497417EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 04:35:36 +0000 (UTC)
X-CSE-ConnectionGUID: qf0WKNnxTPyXEg+0Romhwg==
X-CSE-MsgGUID: amP6qLPjQ3aqsE1INIoXlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="97573189"
X-IronPort-AV: E=Sophos;i="6.23,128,1770624000"; d="scan'208";a="97573189"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 21:35:36 -0700
X-CSE-ConnectionGUID: 2Dmso7VCTMGbxiSdHMLvlg==
X-CSE-MsgGUID: hCQus919Tu+ZdnyZ5o/PTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,128,1770624000"; d="scan'208";a="260743839"
Received: from lkp-server02.sh.intel.com (HELO a51c2a36b9df) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 18 Mar 2026 21:35:33 -0700
Received: from kbuild by a51c2a36b9df with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w356Y-000000000JZ-1Qr3;
 Thu, 19 Mar 2026 04:35:30 +0000
Date: Thu, 19 Mar 2026 12:34:55 +0800
From: kernel test robot <lkp@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <202603191235.t3CNQjw3-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773894937; x=1805430937;
 h=date:from:to:cc:subject:message-id;
 bh=XOQJX6DutUN0w2RnNl3UE44VuIbNxrz8DJPJAJHq8/w=;
 b=WBVfIUV13S0tNoPmmLSimjtVem5oUCdSgNQ7c0nePWn+GYp9/mQAaa+b
 18kOf9KKq1maDfAtDP10h2toFR+HjhzhlRJNsWdCycAWmCWMcHyj3Ib2o
 88eCAD35K3mxXQfpIZiCyDvxi1NnJke/1LpZjDBBAH6wJz/rTSzQB8Xue
 Ih8wPu+AAvqSq1yNHgBoEgmpTsIr4DDk6w82Ea+ctlhCCM13Ha577wFum
 eYwhmzE5h8AlxiD6JooYg3Km31u2/qawObHX9yFNcLnSHT29oL5nrWIII
 GK2lV2UgVwe+UEbu1DEexOupI6DQYphExoiZQkA4FmoGovxMbWpNZT7VM
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WBVfIUV1
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 83/97]
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:3178:27: sparse: sparse:
 incorrect type in assignment (different address spaces)
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:oe-kbuild-all@lists.linux.dev,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 739E02C5E49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   8cf0b18c0700c55deb424e284912d0161885434b
commit: 556b0d5d0b19690e7951bf5f6bc584037c4017cf [83/97] ixgbevf: use libeth in Rx processing
config: alpha-randconfig-r123-20260319 (https://download.01.org/0day-ci/archive/20260319/202603191235.t3CNQjw3-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 8.5.0
sparse: v0.6.5-rc1
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260319/202603191235.t3CNQjw3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603191235.t3CNQjw3-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
   drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:768:18: sparse: sparse: incorrect type in assignment (different address spaces) @@     expected struct bpf_prog *xdp_prog @@     got struct bpf_prog [noderef] __rcu * @@
   drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:768:18: sparse:     expected struct bpf_prog *xdp_prog
   drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:768:18: sparse:     got struct bpf_prog [noderef] __rcu *
>> drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:3178:27: sparse: sparse: incorrect type in assignment (different address spaces) @@     expected struct bpf_prog [noderef] __rcu *xdp_prog @@     got struct bpf_prog *xdp_prog @@
   drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:3178:27: sparse:     expected struct bpf_prog [noderef] __rcu *xdp_prog
   drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:3178:27: sparse:     got struct bpf_prog *xdp_prog
>> drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:4136:25: sparse: sparse: incorrect type in initializer (different address spaces) @@     expected struct bpf_prog [noderef] __rcu *_x_ @@     got struct bpf_prog *xdp_prog @@
   drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:4136:25: sparse:     expected struct bpf_prog [noderef] __rcu *_x_
   drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:4136:25: sparse:     got struct bpf_prog *xdp_prog

vim +3178 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c

92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3124  
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3125  /**
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3126   * ixgbevf_setup_rx_resources - allocate Rx resources (Descriptors)
c7aec59657b60f drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Tony Nguyen      2018-03-16  3127   * @adapter: board private structure
dec0d8e462322a drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Jeff Kirsher     2015-02-10  3128   * @rx_ring: Rx descriptor ring (for a specific queue) to setup
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3129   *
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3130   * Returns 0 on success, negative on failure
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3131   **/
c7aec59657b60f drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Tony Nguyen      2018-03-16  3132  int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
c7aec59657b60f drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Tony Nguyen      2018-03-16  3133  			       struct ixgbevf_ring *rx_ring)
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3134  {
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3135  	struct libeth_fq fq = {
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3136  		.count		= rx_ring->count,
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3137  		.nid		= NUMA_NO_NODE,
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3138  		.type		= LIBETH_FQE_MTU,
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3139  		.xdp		= !!rx_ring->xdp_prog,
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3140  		.idx		= rx_ring->queue_index,
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3141  		.buf_len	= IXGBEVF_RX_PAGE_LEN(rx_ring->xdp_prog ?
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3142  						      LIBETH_XDP_HEADROOM :
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3143  						      LIBETH_SKB_HEADROOM),
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3144  	};
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3145  	int ret;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3146  
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3147  	ret = libeth_rx_fq_create(&fq, &rx_ring->q_vector->napi);
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3148  	if (ret)
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3149  		return ret;
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3150  
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3151  	rx_ring->pp = fq.pp;
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3152  	rx_ring->rx_fqes = fq.fqes;
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3153  	rx_ring->truesize = fq.truesize;
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3154  	rx_ring->rx_buf_len = fq.buf_len;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3155  
7c3a4626eb65e7 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Florian Fainelli 2017-08-01  3156  	u64_stats_init(&rx_ring->syncp);
7c3a4626eb65e7 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Florian Fainelli 2017-08-01  3157  
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3158  	/* Round up to nearest 4K */
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3159  	rx_ring->size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3160  	rx_ring->size = ALIGN(rx_ring->size, 4096);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3161  
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3162  	rx_ring->desc = dma_alloc_coherent(fq.pp->p.dev, rx_ring->size,
2a1f8794161d9d drivers/net/ixgbevf/ixgbevf_main.c                Nick Nunley      2010-04-27  3163  					   &rx_ring->dma, GFP_KERNEL);
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3164  
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3165  	if (!rx_ring->desc) {
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3166  		ret = -ENOMEM;
05d063aa867b7a drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Emil Tantilov    2014-01-17  3167  		goto err;
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3168  	}
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3169  
c7aec59657b60f drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Tony Nguyen      2018-03-16  3170  	/* XDP RX-queue info */
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3171  	ret = __xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3172  				 rx_ring->queue_index, 0, rx_ring->truesize);
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3173  	if (ret)
c7aec59657b60f drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Tony Nguyen      2018-03-16  3174  		goto err;
c7aec59657b60f drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Tony Nguyen      2018-03-16  3175  
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3176  	xdp_rxq_info_attach_page_pool(&rx_ring->xdp_rxq, fq.pp);
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3177  
c7aec59657b60f drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Tony Nguyen      2018-03-16 @3178  	rx_ring->xdp_prog = adapter->xdp_prog;
c7aec59657b60f drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Tony Nguyen      2018-03-16  3179  
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3180  	return 0;
05d063aa867b7a drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Emil Tantilov    2014-01-17  3181  err:
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3182  	libeth_rx_fq_destroy(&fq);
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3183  	rx_ring->rx_fqes = NULL;
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3184  	rx_ring->pp = NULL;
05d063aa867b7a drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Emil Tantilov    2014-01-17  3185  	dev_err(rx_ring->dev, "Unable to allocate memory for the Rx descriptor ring\n");
556b0d5d0b1969 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c Larysa Zaremba   2026-03-04  3186  	return ret;
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3187  }
92915f71201b43 drivers/net/ixgbevf/ixgbevf_main.c                Greg Rose        2010-01-09  3188  

:::::: The code at line 3178 was first introduced by commit
:::::: c7aec59657b60f3a29fc7d3274ebefd698879301 ixgbevf: Add XDP support for pass and drop actions

:::::: TO: Tony Nguyen <anthony.l.nguyen@intel.com>
:::::: CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
