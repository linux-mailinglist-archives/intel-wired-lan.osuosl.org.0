Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF6649F9B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jan 2022 13:41:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFA8D404D5;
	Fri, 28 Jan 2022 12:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6RrjxGKBVGn; Fri, 28 Jan 2022 12:41:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7884E40286;
	Fri, 28 Jan 2022 12:41:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E5D731BF332
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 12:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFD9C40286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 12:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IucXMBvXvmi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 12:41:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A25DC400C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 12:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643373700; x=1674909700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E0LZ6fJw9oN3GzWfRXiki3xHqdtbWQjOxeMzxPHUjQU=;
 b=JtErqiWTJLHWiVRSl9S2NIojGt465rCZOYFhACGjrD6b1UJ5tiCsrq66
 /3Lbd7Ysn1oC4lsTm0DGf0n4K7LKsA3QMUtKijEFQeN4yPdYlMEAmtJgP
 9qQS1CHtnUy+JrkHO1tVrrNvg6oYaHDw41lgk6EW9m1AQp6kUnaOsCAoz
 JUgvYpkOn51vEo27OujKHbVtzqVVjUbCaOCalIxbRRm/y8XRGMB545+Fm
 JreeNu3m/55rCCavbaC8N3sFLIyFnqztQ0kbmIJN5tEhrDIGsncKYLnuQ
 1b0Wnn4tS+huP/fU+vFGqfO/Jew6yXLGYXbEGQbJ1gPcS7uPaRwj4dvPa w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="227091240"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="227091240"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 04:41:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="581845024"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jan 2022 04:41:38 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20SCfaS5028900; Fri, 28 Jan 2022 12:41:37 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Fri, 28 Jan 2022 13:39:47 +0100
Message-Id: <20220128123947.21363-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <202201281200.CI9u45bS-lkp@intel.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-6-alan.brady@intel.com>
 <202201281200.CI9u45bS-lkp@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/19] iecm: add vport alloc
 and virtchnl messages
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
Cc: kbuild-all@lists.01.org, Madhu Chittim <madhu.chittim@intel.com>,
 intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: kernel test robot <lkp@intel.com>
Date: Fri, 28 Jan 2022 12:19:10 +0800

> Hi Alan,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on net-next/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Alan-Brady/Add-iecm-and-idpf/20220128-085513
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git e2cf07654efb0fd7bbcb475c6f74be7b5755a8fd
> config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20220128/202201281200.CI9u45bS-lkp@intel.com/config)
> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
> reproduce (this is a W=1 build):
>         # https://github.com/0day-ci/linux/commit/1233d9631b312eea5aebbce63590e27f9993bacc
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Alan-Brady/Add-iecm-and-idpf/20220128-085513
>         git checkout 1233d9631b312eea5aebbce63590e27f9993bacc
>         # save the config file to linux build tree
>         mkdir build_dir
>         make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/net/ethernet/intel/iecm/
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    drivers/net/ethernet/intel/iecm/iecm_virtchnl.c: In function 'iecm_vport_queue_ids_init':
> >> drivers/net/ethernet/intel/iecm/iecm_virtchnl.c:1396:1: warning: the frame size of 1052 bytes is larger than 1024 bytes [-Wframe-larger-than=]
>     1396 | }
>          | ^
> 
> 
> vim +1396 drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> 
>   1322	
>   1323	/**
>   1324	 * iecm_vport_queue_ids_init - Initialize queue ids from Mailbox parameters
>   1325	 * @vport: virtual port for which the queues ids are initialized
>   1326	 *
>   1327	 * Will initialize all queue ids with ids received as mailbox parameters.
>   1328	 * Returns 0 on success, negative if all the queues are not initialized.
>   1329	 */
>   1330	static int iecm_vport_queue_ids_init(struct iecm_vport *vport)
>   1331	{
>   1332		struct virtchnl2_create_vport *vport_params;
>   1333		struct virtchnl2_queue_reg_chunks *chunks;
>   1334		/* We may never deal with more than 256 same type of queues */
>   1335	#define IECM_MAX_QIDS	256
>   1336		u32 qids[IECM_MAX_QIDS];

I'll elaborate on this warning a bit: you declare 4 * 256 = 1 Kb
array directly on the stack here.

1 Kb is a limit inside the kernel, it won't cause any issues since
stacks on x86 are huge, but raises such warnings and we should
listen to them, especially given that compile tests are now being
done with -Werror.

Just use kzalloc(array_size(IECM_MAX_QIDS, sizeof(u32))) + kfree()
here to avoid that.

>   1337		int num_ids;
>   1338		u16 q_type;
>   1339	
>   1340		if (vport->adapter->config_data.req_qs_chunks) {
>   1341			struct virtchnl2_add_queues *vc_aq =
>   1342				(struct virtchnl2_add_queues *)
>   1343				vport->adapter->config_data.req_qs_chunks;
>   1344			chunks = &vc_aq->chunks;
>   1345		} else {
>   1346			vport_params = (struct virtchnl2_create_vport *)
>   1347					vport->adapter->vport_params_recvd[0];
>   1348			chunks = &vport_params->chunks;
>   1349		}
>   1350	
>   1351		num_ids = iecm_vport_get_queue_ids(qids, IECM_MAX_QIDS,
>   1352						   VIRTCHNL2_QUEUE_TYPE_TX,
>   1353						   chunks);
>   1354		if (num_ids != vport->num_txq)
>   1355			return -EINVAL;
>   1356		num_ids = __iecm_vport_queue_ids_init(vport, qids, num_ids,
>   1357						      VIRTCHNL2_QUEUE_TYPE_TX);
>   1358		if (num_ids != vport->num_txq)
>   1359			return -EINVAL;
>   1360		num_ids = iecm_vport_get_queue_ids(qids, IECM_MAX_QIDS,
>   1361						   VIRTCHNL2_QUEUE_TYPE_RX,
>   1362						   chunks);
>   1363		if (num_ids != vport->num_rxq)
>   1364			return -EINVAL;
>   1365		num_ids = __iecm_vport_queue_ids_init(vport, qids, num_ids,
>   1366						      VIRTCHNL2_QUEUE_TYPE_RX);
>   1367		if (num_ids != vport->num_rxq)
>   1368			return -EINVAL;
>   1369	
>   1370		if (iecm_is_queue_model_split(vport->txq_model)) {
>   1371			q_type = VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
>   1372			num_ids = iecm_vport_get_queue_ids(qids, IECM_MAX_QIDS, q_type,
>   1373							   chunks);
>   1374			if (num_ids != vport->num_complq)
>   1375				return -EINVAL;
>   1376			num_ids = __iecm_vport_queue_ids_init(vport, qids,
>   1377							      num_ids,
>   1378							      q_type);
>   1379			if (num_ids != vport->num_complq)
>   1380				return -EINVAL;
>   1381		}
>   1382	
>   1383		if (iecm_is_queue_model_split(vport->rxq_model)) {
>   1384			q_type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
>   1385			num_ids = iecm_vport_get_queue_ids(qids, IECM_MAX_QIDS, q_type,
>   1386							   chunks);
>   1387			if (num_ids != vport->num_bufq)
>   1388				return -EINVAL;
>   1389			num_ids = __iecm_vport_queue_ids_init(vport, qids, num_ids,
>   1390							      q_type);
>   1391			if (num_ids != vport->num_bufq)
>   1392				return -EINVAL;
>   1393		}
>   1394	
>   1395		return 0;
> > 1396	}
>   1397	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
