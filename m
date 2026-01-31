Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBocHf0kfmk3WAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 16:51:25 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6B3C2C61
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 16:51:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 332AD6071F;
	Sat, 31 Jan 2026 15:51:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ESj3jXY23vjJ; Sat, 31 Jan 2026 15:51:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4944F6073C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769874682;
	bh=qOTUuZDXeLDHwRdt1U/1dhQ3xbm1FXKRZXpFmO6RyFo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=92pUQ8L6RqFBkqHKObfb9rdoLFYeLZXlvjtrpgnrXMHOGb7jLH3yKY2vRYj1Rcb96
	 R6ekq7DXRJ8r3KC6cn2VYMrzVTf75/NY3mhd9QBCMAwHvrX0SbhMbSvMQr+BFteYLl
	 klnmU2ZIjqYtUubBhHsqGf7zJmbekU7VzW0JcUs4RP8y0NYFZ/wmfr0FaPs97014mZ
	 P+y28avIs5tCCP+ZPQJC+lQ6GI8b9+Mv6KPQ8F1eueTYzpHZensK7DrRS91PlWtBjv
	 4+R8POZp+/YYMLDruuiasDmnQku3F28v5HpAoaULnkhF8L3rjSkdKaMUE36G7l2OeE
	 jE30lcXSLe/gA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4944F6073C;
	Sat, 31 Jan 2026 15:51:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 189671F6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 15:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06BC581FFC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 15:51:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8A7jZ-K3VOkF for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 15:51:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ED72980F33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED72980F33
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED72980F33
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 15:51:18 +0000 (UTC)
X-CSE-ConnectionGUID: w3cis1YZQmyfGd9JmY4o5w==
X-CSE-MsgGUID: uuZzrybwQk2kLyrDpRoRwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11687"; a="71000746"
X-IronPort-AV: E=Sophos;i="6.21,265,1763452800"; d="scan'208";a="71000746"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2026 07:51:18 -0800
X-CSE-ConnectionGUID: oj9/6QIuQ7eCnZRJ8oXo9A==
X-CSE-MsgGUID: BT1v+xNfSjyQJveBHKITMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,265,1763452800"; d="scan'208";a="232032014"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 31 Jan 2026 07:51:14 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vmDFg-00000000e7w-25kD;
 Sat, 31 Jan 2026 15:51:12 +0000
Date: Sat, 31 Jan 2026 23:50:49 +0800
From: kernel test robot <lkp@intel.com>
To: Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, daniel@iogearbox.net, magnus.karlsson@intel.com,
 bjorn@kernel.org
Cc: oe-kbuild-all@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>, stable@vger.kernel.org
Message-ID: <202601312359.c8Furmbm-lkp@intel.com>
References: <20260131055217.729048-1-lihaoxiang@isrc.iscas.ac.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260131055217.729048-1-lihaoxiang@isrc.iscas.ac.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769874679; x=1801410679;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=k7x77b3W3ADSBaDPL6FsspOeylNLRUTlxoCAl5BYycA=;
 b=WB1kNw1PmfuGzx++YG9Xmz1Ol74DCUTvthsgdWAJPR7p/gs7KfN+X3Ne
 2r1UaCqeUdb+QOFiTlJL402zmiL+8eYfHk27Nhxr8hgGlQXEgNe72ixDw
 gt59qeB1zOI8bQtltGvQVQDd+BOSL9Gt9ryxxJeeFVpBnS5DxEOGg1VTH
 579+lRwSrROhXJsHQpSGWDAf93aW5x2GImLbtNxyH5sRq20vlG2pqZSf7
 Vh1GtmVTyQMNQ96PCrKXya4Z/xwqyg1xDtBD+2rUPmwn6MPpdUSW3uwyp
 I2JI4DAwSfogdtmo4lw6aOFB5GZdqAGn+k7Lm0kCFfZQW87fc9+0yJQXa
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WB1kNw1P
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
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:lihaoxiang@isrc.iscas.ac.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:daniel@iogearbox.net,m:magnus.karlsson@intel.com,m:bjorn@kernel.org,m:oe-kbuild-all@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:mid,intel.com:email,01.org:url,git-scm.com:url];
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
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: EA6B3C2C61
X-Rspamd-Action: no action

Hi Haoxiang,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]
[also build test WARNING on tnguy-net-queue/dev-queue linus/master v6.19-rc7 next-20260130]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Haoxiang-Li/i40e-add-an-error-handling-path-in-i40e_xsk_pool_enable/20260131-135447
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20260131055217.729048-1-lihaoxiang%40isrc.iscas.ac.cn
patch subject: [Intel-wired-lan] [PATCH v2] i40e: add an error handling path in i40e_xsk_pool_enable()
config: mips-allyesconfig (https://download.01.org/0day-ci/archive/20260131/202601312359.c8Furmbm-lkp@intel.com/config)
compiler: mips-linux-gcc (GCC) 15.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260131/202601312359.c8Furmbm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601312359.c8Furmbm-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/i40e/i40e_xsk.c: In function 'i40e_xsk_pool_enable':
   drivers/net/ethernet/intel/i40e/i40e_xsk.c:130:9: error: implicit declaration of function 'i40e_xsk_pool_disable'; did you mean 'i40e_xsk_pool_enable'? [-Wimplicit-function-declaration]
     130 |         i40e_xsk_pool_disable(vsi, qid);
         |         ^~~~~~~~~~~~~~~~~~~~~
         |         i40e_xsk_pool_enable
   drivers/net/ethernet/intel/i40e/i40e_xsk.c: At top level:
   drivers/net/ethernet/intel/i40e/i40e_xsk.c:141:12: error: conflicting types for 'i40e_xsk_pool_disable'; have 'int(struct i40e_vsi *, u16)' {aka 'int(struct i40e_vsi *, short unsigned int)'}
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


vim +131 drivers/net/ethernet/intel/i40e/i40e_xsk.c

aae425efdfd1b1 Jan Sokolowski  2022-10-12   72  
0a714186d3c0f7 Björn Töpel     2018-08-28   73  /**
1742b3d528690a Magnus Karlsson 2020-08-28   74   * i40e_xsk_pool_enable - Enable/associate an AF_XDP buffer pool to a
1742b3d528690a Magnus Karlsson 2020-08-28   75   * certain ring/qid
0a714186d3c0f7 Björn Töpel     2018-08-28   76   * @vsi: Current VSI
1742b3d528690a Magnus Karlsson 2020-08-28   77   * @pool: buffer pool
1742b3d528690a Magnus Karlsson 2020-08-28   78   * @qid: Rx ring to associate buffer pool with
0a714186d3c0f7 Björn Töpel     2018-08-28   79   *
0a714186d3c0f7 Björn Töpel     2018-08-28   80   * Returns 0 on success, <0 on failure
0a714186d3c0f7 Björn Töpel     2018-08-28   81   **/
1742b3d528690a Magnus Karlsson 2020-08-28   82  static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
1742b3d528690a Magnus Karlsson 2020-08-28   83  				struct xsk_buff_pool *pool,
0a714186d3c0f7 Björn Töpel     2018-08-28   84  				u16 qid)
0a714186d3c0f7 Björn Töpel     2018-08-28   85  {
f3fef2b6e1cc80 Jan Sokolowski  2018-12-18   86  	struct net_device *netdev = vsi->netdev;
0a714186d3c0f7 Björn Töpel     2018-08-28   87  	bool if_running;
0a714186d3c0f7 Björn Töpel     2018-08-28   88  	int err;
0a714186d3c0f7 Björn Töpel     2018-08-28   89  
0a714186d3c0f7 Björn Töpel     2018-08-28   90  	if (vsi->type != I40E_VSI_MAIN)
0a714186d3c0f7 Björn Töpel     2018-08-28   91  		return -EINVAL;
0a714186d3c0f7 Björn Töpel     2018-08-28   92  
0a714186d3c0f7 Björn Töpel     2018-08-28   93  	if (qid >= vsi->num_queue_pairs)
0a714186d3c0f7 Björn Töpel     2018-08-28   94  		return -EINVAL;
0a714186d3c0f7 Björn Töpel     2018-08-28   95  
f3fef2b6e1cc80 Jan Sokolowski  2018-12-18   96  	if (qid >= netdev->real_num_rx_queues ||
f3fef2b6e1cc80 Jan Sokolowski  2018-12-18   97  	    qid >= netdev->real_num_tx_queues)
0a714186d3c0f7 Björn Töpel     2018-08-28   98  		return -EINVAL;
0a714186d3c0f7 Björn Töpel     2018-08-28   99  
c4655761d3cf62 Magnus Karlsson 2020-08-28  100  	err = xsk_pool_dma_map(pool, &vsi->back->pdev->dev, I40E_RX_DMA_ATTR);
0a714186d3c0f7 Björn Töpel     2018-08-28  101  	if (err)
0a714186d3c0f7 Björn Töpel     2018-08-28  102  		return err;
0a714186d3c0f7 Björn Töpel     2018-08-28  103  
44ddd4f1709249 Björn Töpel     2019-02-12  104  	set_bit(qid, vsi->af_xdp_zc_qps);
44ddd4f1709249 Björn Töpel     2019-02-12  105  
0a714186d3c0f7 Björn Töpel     2018-08-28  106  	if_running = netif_running(vsi->netdev) && i40e_enabled_xdp_vsi(vsi);
0a714186d3c0f7 Björn Töpel     2018-08-28  107  
0a714186d3c0f7 Björn Töpel     2018-08-28  108  	if (if_running) {
0a714186d3c0f7 Björn Töpel     2018-08-28  109  		err = i40e_queue_pair_disable(vsi, qid);
0a714186d3c0f7 Björn Töpel     2018-08-28  110  		if (err)
a086001db7c4af Haoxiang Li     2026-01-31  111  			goto err_out;
0a714186d3c0f7 Björn Töpel     2018-08-28  112  
aae425efdfd1b1 Jan Sokolowski  2022-10-12  113  		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
aae425efdfd1b1 Jan Sokolowski  2022-10-12  114  		if (err)
a086001db7c4af Haoxiang Li     2026-01-31  115  			goto err_out;
aae425efdfd1b1 Jan Sokolowski  2022-10-12  116  
0a714186d3c0f7 Björn Töpel     2018-08-28  117  		err = i40e_queue_pair_enable(vsi, qid);
0a714186d3c0f7 Björn Töpel     2018-08-28  118  		if (err)
a086001db7c4af Haoxiang Li     2026-01-31  119  			goto err_out;
14ffeb52f3693a Magnus Karlsson 2019-01-29  120  
14ffeb52f3693a Magnus Karlsson 2019-01-29  121  		/* Kick start the NAPI context so that receiving will start */
9116e5e2b1fff7 Magnus Karlsson 2019-08-14  122  		err = i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX);
14ffeb52f3693a Magnus Karlsson 2019-01-29  123  		if (err)
a086001db7c4af Haoxiang Li     2026-01-31  124  			goto err_out;
0a714186d3c0f7 Björn Töpel     2018-08-28  125  	}
0a714186d3c0f7 Björn Töpel     2018-08-28  126  
0a714186d3c0f7 Björn Töpel     2018-08-28  127  	return 0;
a086001db7c4af Haoxiang Li     2026-01-31  128  
a086001db7c4af Haoxiang Li     2026-01-31  129  err_out:
a086001db7c4af Haoxiang Li     2026-01-31  130  	i40e_xsk_pool_disable(vsi, qid);
0a714186d3c0f7 Björn Töpel     2018-08-28 @131  }
0a714186d3c0f7 Björn Töpel     2018-08-28  132  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
