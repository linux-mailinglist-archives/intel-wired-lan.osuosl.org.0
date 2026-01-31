Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCIeKpcjfmn6VwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 16:45:27 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AD0C2BE9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 16:45:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24B9A606EA;
	Sat, 31 Jan 2026 15:45:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 69X5IMi0ZiOp; Sat, 31 Jan 2026 15:45:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3801B6071F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769874323;
	bh=hN3cxOM3SRTRbmpaAK/fKMlc84g1SiR9rDLCJW2ozxA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=or54gyetyPjKLDnkQ79YQ5vBRTGjvNjoDKVunzMmyNVvAK1ayZsH3fp8hePkY11ri
	 NlCa/uoVMCxGTKoQHsuEh1Yx/YF70xYJ2v/3Jr4PdZRm/+BWbFm/PmGBpaVP8YpHiN
	 yMV/Dt7lfBJ35F83xwcbOO9r+RSKw/VbqkTV5fMZYfGrLqDwG/lK3CYJGqqJ+/fpa5
	 VLgxnCoFG1OZMdea1h8zYmV8n6MGwTQocRybrYK1YLykdJuWPa+4HbKsHxiZP1McF+
	 erk6asdi4gUbw80iHJKbn1+ivS4OxQr16J6TbKAm1QGjWOSVU1uDGFNu83WowsvODp
	 sP/SXGhkhmpZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3801B6071F;
	Sat, 31 Jan 2026 15:45:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D25C969
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 15:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C1ABD606EE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 15:45:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6_P5bQdLc_pw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 15:45:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B7E49606EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7E49606EA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B7E49606EA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 15:45:20 +0000 (UTC)
X-CSE-ConnectionGUID: FRTZ1IV+T1uYGtHOYC/oPQ==
X-CSE-MsgGUID: PEuiy2wQT22Np+UXk49S7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11687"; a="71156752"
X-IronPort-AV: E=Sophos;i="6.21,265,1763452800"; d="scan'208";a="71156752"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2026 07:45:20 -0800
X-CSE-ConnectionGUID: ADQGpyl5TsqougCezebZxw==
X-CSE-MsgGUID: YFaECUstSt2+xdAn3DaIZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,265,1763452800"; d="scan'208";a="213596685"
Received: from igk-lkp-server01.igk.intel.com (HELO afc5bfd7f602)
 ([10.211.93.152])
 by fmviesa005.fm.intel.com with ESMTP; 31 Jan 2026 07:45:16 -0800
Received: from kbuild by afc5bfd7f602 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vmD9u-000000002iT-0UCJ;
 Sat, 31 Jan 2026 15:45:14 +0000
Date: Sat, 31 Jan 2026 16:44:56 +0100
From: kernel test robot <lkp@intel.com>
To: Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, daniel@iogearbox.net, magnus.karlsson@intel.com,
 bjorn@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>, stable@vger.kernel.org
Message-ID: <202601311618.xd5faCRh-lkp@intel.com>
References: <20260131055217.729048-1-lihaoxiang@isrc.iscas.ac.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260131055217.729048-1-lihaoxiang@isrc.iscas.ac.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769874321; x=1801410321;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=z4mDeCsk3H9uQQF2Mca+22wxYAlmcrWmEXsBJ/Nfwcg=;
 b=kkkiI1a8uC+cfX5AuXOABUKdR43gUMk3AbIZDdkoZDizyFQSU1aI3r1z
 9fwpq2yA0kXc4NcesPEflChn5V0URQFmcd/l/AxWZiCPTCg8rtA9KUi45
 dxRUeqOOTRpiyuMw8jKNut7c08SRdZQATEce4mfNpNlsNDSY/IeZIdSQM
 7SOhq4Q95AA0ksKP/FZBelIPGMhmvYlrD5jBbsTE0qY/UX7f1NPXWk9jc
 5NpzQvkfOb+UXBdZP+mkAUZz9dfdiTdaWfQN6jUQryw0xcJWgInPtPnK+
 xzAcnVItJwZ68BwIkI2U+yALP/u7J1+9JisDLdLb3KXn6cZs2bE9A+ok8
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kkkiI1a8
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: add an error handling path
 in i40e_xsk_pool_enable()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:lihaoxiang@isrc.iscas.ac.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:daniel@iogearbox.net,m:magnus.karlsson@intel.com,m:bjorn@kernel.org,m:oe-kbuild-all@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 35AD0C2BE9
X-Rspamd-Action: no action

Hi Haoxiang,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]
[also build test ERROR on tnguy-net-queue/dev-queue linus/master v6.16-rc1 next-20260130]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Haoxiang-Li/i40e-add-an-error-handling-path-in-i40e_xsk_pool_enable/20260131-135447
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20260131055217.729048-1-lihaoxiang%40isrc.iscas.ac.cn
patch subject: [Intel-wired-lan] [PATCH v2] i40e: add an error handling path in i40e_xsk_pool_enable()
config: x86_64-rhel-9.4-kunit (https://download.01.org/0day-ci/archive/20260131/202601311618.xd5faCRh-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260131/202601311618.xd5faCRh-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601311618.xd5faCRh-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/i40e/i40e_xsk.c: In function 'i40e_xsk_pool_enable':
>> drivers/net/ethernet/intel/i40e/i40e_xsk.c:130:9: error: implicit declaration of function 'i40e_xsk_pool_disable'; did you mean 'i40e_xsk_pool_enable'? [-Wimplicit-function-declaration]
     130 |         i40e_xsk_pool_disable(vsi, qid);
         |         ^~~~~~~~~~~~~~~~~~~~~
         |         i40e_xsk_pool_enable
   drivers/net/ethernet/intel/i40e/i40e_xsk.c: At top level:
>> drivers/net/ethernet/intel/i40e/i40e_xsk.c:141:12: error: conflicting types for 'i40e_xsk_pool_disable'; have 'int(struct i40e_vsi *, u16)' {aka 'int(struct i40e_vsi *, short unsigned int)'}
     141 | static int i40e_xsk_pool_disable(struct i40e_vsi *vsi, u16 qid)
         |            ^~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_xsk.c:142:1: note: an argument type that has a default promotion cannot match an empty parameter name list declaration
     142 | {
         | ^
   drivers/net/ethernet/intel/i40e/i40e_xsk.c:130:9: note: previous implicit declaration of 'i40e_xsk_pool_disable' with type 'int()'
     130 |         i40e_xsk_pool_disable(vsi, qid);
         |         ^~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_xsk.c: In function 'i40e_xsk_pool_enable':
>> drivers/net/ethernet/intel/i40e/i40e_xsk.c:131:1: warning: control reaches end of non-void function [-Wreturn-type]
     131 | }
         | ^


vim +130 drivers/net/ethernet/intel/i40e/i40e_xsk.c

    72	
    73	/**
    74	 * i40e_xsk_pool_enable - Enable/associate an AF_XDP buffer pool to a
    75	 * certain ring/qid
    76	 * @vsi: Current VSI
    77	 * @pool: buffer pool
    78	 * @qid: Rx ring to associate buffer pool with
    79	 *
    80	 * Returns 0 on success, <0 on failure
    81	 **/
    82	static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
    83					struct xsk_buff_pool *pool,
    84					u16 qid)
    85	{
    86		struct net_device *netdev = vsi->netdev;
    87		bool if_running;
    88		int err;
    89	
    90		if (vsi->type != I40E_VSI_MAIN)
    91			return -EINVAL;
    92	
    93		if (qid >= vsi->num_queue_pairs)
    94			return -EINVAL;
    95	
    96		if (qid >= netdev->real_num_rx_queues ||
    97		    qid >= netdev->real_num_tx_queues)
    98			return -EINVAL;
    99	
   100		err = xsk_pool_dma_map(pool, &vsi->back->pdev->dev, I40E_RX_DMA_ATTR);
   101		if (err)
   102			return err;
   103	
   104		set_bit(qid, vsi->af_xdp_zc_qps);
   105	
   106		if_running = netif_running(vsi->netdev) && i40e_enabled_xdp_vsi(vsi);
   107	
   108		if (if_running) {
   109			err = i40e_queue_pair_disable(vsi, qid);
   110			if (err)
   111				goto err_out;
   112	
   113			err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
   114			if (err)
   115				goto err_out;
   116	
   117			err = i40e_queue_pair_enable(vsi, qid);
   118			if (err)
   119				goto err_out;
   120	
   121			/* Kick start the NAPI context so that receiving will start */
   122			err = i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX);
   123			if (err)
   124				goto err_out;
   125		}
   126	
   127		return 0;
   128	
   129	err_out:
 > 130		i40e_xsk_pool_disable(vsi, qid);
 > 131	}
   132	
   133	/**
   134	 * i40e_xsk_pool_disable - Disassociate an AF_XDP buffer pool from a
   135	 * certain ring/qid
   136	 * @vsi: Current VSI
   137	 * @qid: Rx ring to associate buffer pool with
   138	 *
   139	 * Returns 0 on success, <0 on failure
   140	 **/
 > 141	static int i40e_xsk_pool_disable(struct i40e_vsi *vsi, u16 qid)
   142	{
   143		struct net_device *netdev = vsi->netdev;
   144		struct xsk_buff_pool *pool;
   145		bool if_running;
   146		int err;
   147	
   148		pool = xsk_get_pool_from_qid(netdev, qid);
   149		if (!pool)
   150			return -EINVAL;
   151	
   152		if_running = netif_running(vsi->netdev) && i40e_enabled_xdp_vsi(vsi);
   153	
   154		if (if_running) {
   155			err = i40e_queue_pair_disable(vsi, qid);
   156			if (err)
   157				return err;
   158		}
   159	
   160		clear_bit(qid, vsi->af_xdp_zc_qps);
   161		xsk_pool_dma_unmap(pool, I40E_RX_DMA_ATTR);
   162	
   163		if (if_running) {
   164			err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], false);
   165			if (err)
   166				return err;
   167			err = i40e_queue_pair_enable(vsi, qid);
   168			if (err)
   169				return err;
   170		}
   171	
   172		return 0;
   173	}
   174	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
