Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F3E6D3B07
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Apr 2023 02:04:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4AEE81E6F;
	Mon,  3 Apr 2023 00:04:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4AEE81E6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680480286;
	bh=fLebJFeJPwrNFbACuy/RinOPD1RybZMTna3/joLR7bw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OrtwyPkmZh+Ec2ZBTKynUd5D+WhTZJIafjq+AbAUZKtDsjpwnAawRZ/s7XomVL2jd
	 bzZIXajPDYUxryi7zXfMyBEAZdvrjCfmXKhK6K88JprUyehG1+Ve1iSfe8WV+XsuSL
	 bMheNyM75yp9jLiBYWMaf0X0ueNMFAlZzg6CIm38G9xZ7jpO92ubtci4nJ6s7eeNDw
	 /XvXoKxyLsJvkDIABrcxRLjpuYs8Oo2KRTU3wt6OXfmkqmKzwxZHqoPNqksDk6hWDI
	 EqP5BwQ8n1sluwWkXYuHwY9XHWslAEOk54CsHrP8wSJN/sJiDAs9Cqi52CWjbDEiGV
	 YlKjNArb8mFng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yfSV8ThsGh_E; Mon,  3 Apr 2023 00:04:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 891B481E6E;
	Mon,  3 Apr 2023 00:04:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 891B481E6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 986571BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 00:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D03881E6E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 00:04:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D03881E6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fo5n6Pke9Vx4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 00:04:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AE4B81E6C
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4AE4B81E6C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 00:04:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="339274285"
X-IronPort-AV: E=Sophos;i="5.98,313,1673942400"; d="scan'208";a="339274285"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2023 17:04:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="635915631"
X-IronPort-AV: E=Sophos;i="5.98,313,1673942400"; d="scan'208";a="635915631"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 02 Apr 2023 17:04:34 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pj7gX-000NoL-33;
 Mon, 03 Apr 2023 00:04:33 +0000
Date: Mon, 3 Apr 2023 08:04:06 +0800
From: kernel test robot <lkp@intel.com>
To: Alan Brady <alan.brady@intel.com>
Message-ID: <202304030851.mfpEjcJX-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680480279; x=1712016279;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=kbxqdmEvYFWgf+tUAphXC3bJt33iAbEci6SiQWgEWgI=;
 b=TswFWzJPNKOzEGg9rUo/KvnDDKvfeieFPNRLZnKy9IeIPkW6YEDwrM89
 X+bqnLTa8SbPRgOePI4TNQ3xfscv6aTBjhDJICCOcXenWy05f//VJbter
 ecr4/A2OCorbB/vJN3fBN9N6ErizUcoLRdUIQwDdKx7zD2D+cZEBlj5ZJ
 xtIzgQthNGsXPi3ntPyrWs9c6uj89E7bMV+0rzsZIXAkX1PSp0slnLfoA
 UYer9iv9NBDqHQ1M++Ux9w/kKRyTzfTnd2cs1z/Y9SKbwseVu8PQ0rSJI
 KUM3Q4QpmnQIfFfvTPsifatG83R6KO95f4jqzoq4OQAm0Jq78rwNDcxZR
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TswFWzJP
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE 7/15]
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:2078:5: warning: stack
 frame size (1060) exceeds limit (1024) in 'idpf_vport_queue_ids_init'
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
Cc: llvm@lists.linux.dev, Tony Nguyen <anthony.l.nguyen@intel.com>,
 oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Phani Burra <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
head:   e8a488d38e0a75704e37e952fedd329e977df362
commit: c9dfaffe4fcde55903d7e85a60e3a2ddf4ccd188 [7/15] idpf: configure resources for TX queues
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20230403/202304030851.mfpEjcJX-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=c9dfaffe4fcde55903d7e85a60e3a2ddf4ccd188
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue 10GbE
        git checkout c9dfaffe4fcde55903d7e85a60e3a2ddf4ccd188
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/media/platform/ drivers/net/ethernet/intel/idpf/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202304030851.mfpEjcJX-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:2078:5: warning: stack frame size (1060) exceeds limit (1024) in 'idpf_vport_queue_ids_init' [-Wframe-larger-than]
   int idpf_vport_queue_ids_init(struct idpf_vport *vport)
       ^
   1 warning generated.


vim +/idpf_vport_queue_ids_init +2078 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

  2070	
  2071	/**
  2072	 * idpf_vport_queue_ids_init - Initialize queue ids from Mailbox parameters
  2073	 * @vport: virtual port for which the queues ids are initialized
  2074	 *
  2075	 * Will initialize all queue ids with ids received as mailbox parameters.
  2076	 * Returns 0 on success, negative if all the queues are not initialized.
  2077	 */
> 2078	int idpf_vport_queue_ids_init(struct idpf_vport *vport)
  2079	{
  2080		struct virtchnl2_create_vport *vport_params;
  2081		struct virtchnl2_queue_reg_chunks *chunks;
  2082		struct idpf_vport_config *vport_config;
  2083		u16 vport_idx = vport->idx;
  2084		/* We may never deal with more than 256 same type of queues */
  2085	#define IDPF_MAX_QIDS	256
  2086		u32 qids[IDPF_MAX_QIDS];
  2087		int num_ids;
  2088		u16 q_type;
  2089	
  2090		vport_config = vport->adapter->vport_config[vport_idx];
  2091		if (vport_config->req_qs_chunks) {
  2092			struct virtchnl2_add_queues *vc_aq =
  2093				(struct virtchnl2_add_queues *)vport_config->req_qs_chunks;
  2094			chunks = &vc_aq->chunks;
  2095		} else {
  2096			vport_params = (struct virtchnl2_create_vport *)
  2097					vport->adapter->vport_params_recvd[vport_idx];
  2098			chunks = &vport_params->chunks;
  2099		}
  2100	
  2101		num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS,
  2102						   VIRTCHNL2_QUEUE_TYPE_TX,
  2103						   chunks);
  2104		if (num_ids < vport->num_txq)
  2105			return -EINVAL;
  2106		num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids,
  2107						      VIRTCHNL2_QUEUE_TYPE_TX);
  2108		if (num_ids < vport->num_txq)
  2109			return -EINVAL;
  2110	
  2111		if (!idpf_is_queue_model_split(vport->txq_model))
  2112			return 0;
  2113	
  2114		q_type = VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
  2115		num_ids = idpf_vport_get_queue_ids(qids, IDPF_MAX_QIDS, q_type, chunks);
  2116		if (num_ids < vport->num_complq)
  2117			return -EINVAL;
  2118		num_ids = __idpf_vport_queue_ids_init(vport, qids, num_ids, q_type);
  2119		if (num_ids < vport->num_complq)
  2120			return -EINVAL;
  2121	
  2122		return 0;
  2123	}
  2124	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
