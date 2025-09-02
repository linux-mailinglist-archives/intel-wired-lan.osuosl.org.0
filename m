Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D05BBB4061C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 16:06:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EB9683455;
	Tue,  2 Sep 2025 14:06:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wRdBEu1rsNB1; Tue,  2 Sep 2025 14:06:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71F25834CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756821987;
	bh=DQxToTluR6Em62ps+jSQLqEbsuvvLq6IemMY4vASVik=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fbhubetl94+u6UKZxgWWX1xB8uCPjvAexP3RoyBIpfu3GP1RQOUbIh6vXRV6seuUq
	 mJ5SMPIPmkZKvWQmdRmtOwEm0o2n+h5ulbJV/CODwGVhYEyWv0ZK5WdG3qbJACpRi9
	 EJ6guV/GENIalLegd4+i9ZD+Smb6aeXtuWOjFlFUtP3Z8cE1CUxSFlovnhYjeC+xkl
	 QCtlZdZKW59FYvetY3BXW/Zo0eU/1nYlthjrxBQYrkp3hKjbpH9tAjAFszEg2DauXJ
	 meMClOuN9SCy77oDSGvVKxAxX8VAN7TLTbGDNRTGyDoWvo0lRkgcq7dzb035hTXMqy
	 opK0YtkCjRGlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71F25834CB;
	Tue,  2 Sep 2025 14:06:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B3C6510E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 14:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A50D940D31
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 14:06:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GRxsRrxIk-jM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 14:06:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AF64140D54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF64140D54
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF64140D54
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 14:06:25 +0000 (UTC)
X-CSE-ConnectionGUID: y3Tdau4BTWaD5SDdqmsHsQ==
X-CSE-MsgGUID: aGrAFyhpRt2WROPoi6UQEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="69709886"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="69709886"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 07:06:25 -0700
X-CSE-ConnectionGUID: LV02f38gTGSkQzu7FDitTQ==
X-CSE-MsgGUID: yfdIjjIhTgGrWpgYE94IdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="194932705"
Received: from lkp-server02.sh.intel.com (HELO 06ba48ef64e9) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 02 Sep 2025 07:06:23 -0700
Received: from kbuild by 06ba48ef64e9 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1utReO-0002aB-2v;
 Tue, 02 Sep 2025 14:06:20 +0000
Date: Tue, 2 Sep 2025 22:06:14 +0800
From: kernel test robot <lkp@intel.com>
To: Anton Nadezhdin <anton.nadezhdin@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, richardcochran@gmail.com,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <202509022155.uBpemgov-lkp@intel.com>
References: <20250902105321.5750-3-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250902105321.5750-3-anton.nadezhdin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756821986; x=1788357986;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uwmqyW4iguh3yd9Z0HFBXF3emGZrOuKjxQU095FIrNM=;
 b=USbtrNuq9NjhloYlYBePt/fIIEn5i0XFmkanW3/m3XWYsrSmWE+qvRqr
 qW4b8udDEDfrhTHdZkKkyNlSqhzIomWFoJohITc+KjwnA4WLSYz2I1vSz
 Za30OFhbbdZMg/hRxZXbXTrxES/4Lob8y1Ber1weXCCkXLkE0gcr1Fz/h
 LJ7O15URoqc8MB4Y/Ti2zU4qvSigXTV4EPvKIiSYEXC6JQHcJlXF3KLwL
 hEyLNtOK87Fh1p/2VYjOAHfJ812EvkmcEm2UgLjF0+8Uta5bCbIPGVzhV
 7ibS55xyxtCYAjTP4UFXWDAmbZtakrQt2RAQjY22ulVWufO38blApptW9
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=USbtrNuq
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] idpf: add direct method
 for disciplining Tx timestamping
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

Hi Anton,

kernel test robot noticed the following build errors:

[auto build test ERROR on 1235d14de922bc4367c24553bc6b278d56dc3433]

url:    https://github.com/intel-lab-lkp/linux/commits/Anton-Nadezhdin/idpf-add-direct-access-to-discipline-the-main-timer/20250902-170325
base:   1235d14de922bc4367c24553bc6b278d56dc3433
patch link:    https://lore.kernel.org/r/20250902105321.5750-3-anton.nadezhdin%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next 2/2] idpf: add direct method for disciplining Tx timestamping
config: powerpc-randconfig-002-20250902 (https://download.01.org/0day-ci/archive/20250902/202509022155.uBpemgov-lkp@intel.com/config)
compiler: powerpc-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250902/202509022155.uBpemgov-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509022155.uBpemgov-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/idpf/idpf_txrx.c:5:
>> drivers/net/ethernet/intel/idpf/idpf_ptp.h:399:11: error: expected ';', ',' or ')' before 'struct'
              struct idpf_tx_splitq_params *params)
              ^~~~~~
   drivers/net/ethernet/intel/idpf/idpf_txrx.c: In function 'idpf_tx_read_tstamp':
>> drivers/net/ethernet/intel/idpf/idpf_txrx.c:1673:10: error: too many arguments to function 'idpf_ptp_get_tx_tstamp'
       err = idpf_ptp_get_tx_tstamp(tx_tstamp_caps->vport, tx_tstamp);
             ^~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/ethernet/intel/idpf/idpf_txrx.c:5:
   drivers/net/ethernet/intel/idpf/idpf_ptp.h:374:19: note: declared here
    static inline int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
                      ^~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/idpf/idpf_txrx.c: In function 'idpf_tx_splitq_frame':
>> drivers/net/ethernet/intel/idpf/idpf_txrx.c:2763:34: error: passing argument 3 of 'idpf_tx_tstamp' from incompatible pointer type [-Werror=incompatible-pointer-types]
     idx = idpf_tx_tstamp(tx_q, skb, &tx_params);
                                     ^~~~~~~~~~
   drivers/net/ethernet/intel/idpf/idpf_txrx.c:2635:37: note: expected 'struct idpf_tx_offload_params *' but argument is of type 'struct idpf_tx_splitq_params *'
         struct idpf_tx_offload_params *params)
         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~
   cc1: some warnings being treated as errors
--
   In file included from drivers/net/ethernet/intel/idpf/idpf_lib.c:6:
>> drivers/net/ethernet/intel/idpf/idpf_ptp.h:399:11: error: expected ';', ',' or ')' before 'struct'
              struct idpf_tx_splitq_params *params)
              ^~~~~~


vim +399 drivers/net/ethernet/intel/idpf/idpf_ptp.h

   396	
   397	static inline int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q,
   398					      struct sk_buff *skb, u32 *idx
 > 399					      struct idpf_tx_splitq_params *params)
   400	{
   401		return -EOPNOTSUPP;
   402	}
   403	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
