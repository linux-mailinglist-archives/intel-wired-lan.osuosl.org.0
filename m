Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF88A48D05
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 00:59:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F03A80B9A;
	Thu, 27 Feb 2025 23:59:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z_Y7JCXCvKKE; Thu, 27 Feb 2025 23:59:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D5D080BD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740700776;
	bh=vVtL5j0FJfqCs9yVCanftX+tgKv8QqbhWpu9FuF7YdI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Alodv8yMq0frZ/D3dwXl9cuWgY82Rn3RyssmWO2HnwKteVr5zRgljVJXB0noHsre4
	 xSFR/X7suc6fxovZzP7Be1N2crwL/3d1CKEh9Mx+rxyiQyuYz7a4cVMbp0tDUQ8Tde
	 UWWrXmA4TsFXqJ2nTyiQ5gHFkfhErZ5jTdoO8vPCHnVdObGmD6GuQH37jlXfxwQokJ
	 pMWFVQTV1UE4+AsPGFYiKjvDykM8EIrAnqYBvw1W5ppfXW6BavjOZdSLi+0+G4Qj9a
	 FAxtEAF5tvUpFizj7eOCvHA5BUvYkvSCAaS8ksWDik5677sX7vInGcXgbFM9FHiDuc
	 PlnbHdlv47guQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D5D080BD0;
	Thu, 27 Feb 2025 23:59:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C7FB69
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 23:59:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 354206065D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 23:59:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A23W36KSRD9j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 23:59:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 058BC60B96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 058BC60B96
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 058BC60B96
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 23:59:31 +0000 (UTC)
X-CSE-ConnectionGUID: aVO3+0KXTr6tYTUBRn7DUg==
X-CSE-MsgGUID: tzkU/rRZR2uqZQakKcMmSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="45398267"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="45398267"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 15:59:32 -0800
X-CSE-ConnectionGUID: +Ahx6WEjSRaEDcBG/RNCiQ==
X-CSE-MsgGUID: GY0i+d0FSDeSq2ehKcH3mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="140399641"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 27 Feb 2025 15:59:29 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tnnmo-000ECs-38;
 Thu, 27 Feb 2025 23:59:26 +0000
Date: Fri, 28 Feb 2025 07:59:01 +0800
From: kernel test robot <lkp@intel.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <202502280724.aEP7VGSr-lkp@intel.com>
References: <20250227123837.547053-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250227123837.547053-1-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740700773; x=1772236773;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ITy8k5jUfknq+Y5v4tUBpidCS7oTrz86FIfjVJcACKU=;
 b=Ka+PbFms/9xZO4qnLAtQUEFZ0tRKHpEnDgeo5A+jDTqUID9nSrX7yVAy
 Iigvx+21zsEp7DUfyleFzfnoh3YgQySeKFgNikKTdITA5QybB8G+V06M5
 /WwsbtKwZZYv0IaXMy1NqXbtQHKco7ssq3C4zU9VsYRWlse30DOl/moN5
 S7vMcLS5JkWbeIbzU0rAagx3fbEWI4s0zSAUA+YMPqFcuUqeS1J3dGUVi
 E9T4CAEWvHZf81tJGQkQZQWJBIH1tucnFhFPssTguZ+NHnn4Cz5fm2h0N
 uxhJbYrXGXT6+ZQQ2XZQVOEBD+gT58aZUFbAc8WQlY0EktDxSqkacsNPG
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ka+PbFms
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: assign extracted
 ptype to struct libeth_rqe_info field
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

Hi Mateusz,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Mateusz-Polchlopek/idpf-assign-extracted-ptype-to-struct-libeth_rqe_info-field/20250227-214755
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20250227123837.547053-1-mateusz.polchlopek%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v1] idpf: assign extracted ptype to struct libeth_rqe_info field
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20250228/202502280724.aEP7VGSr-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250228/202502280724.aEP7VGSr-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202502280724.aEP7VGSr-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c:946: warning: Excess function parameter 'ptype' description in 'idpf_rx_singleq_extract_fields'


vim +946 drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c

a5ab9ee0df0be8 Joshua Hay         2023-08-07  933  
a5ab9ee0df0be8 Joshua Hay         2023-08-07  934  /**
a5ab9ee0df0be8 Joshua Hay         2023-08-07  935   * idpf_rx_singleq_extract_fields - Extract fields from the Rx descriptor
a5ab9ee0df0be8 Joshua Hay         2023-08-07  936   * @rx_q: Rx descriptor queue
a5ab9ee0df0be8 Joshua Hay         2023-08-07  937   * @rx_desc: the descriptor to process
a5ab9ee0df0be8 Joshua Hay         2023-08-07  938   * @fields: storage for extracted values
ce5cf4af7ceb6c Mateusz Polchlopek 2024-11-06  939   * @ptype: pointer that will store packet type
a5ab9ee0df0be8 Joshua Hay         2023-08-07  940   *
a5ab9ee0df0be8 Joshua Hay         2023-08-07  941   */
e4891e4687c8dd Alexander Lobakin  2024-06-20  942  static void
e4891e4687c8dd Alexander Lobakin  2024-06-20  943  idpf_rx_singleq_extract_fields(const struct idpf_rx_queue *rx_q,
e4891e4687c8dd Alexander Lobakin  2024-06-20  944  			       const union virtchnl2_rx_desc *rx_desc,
45cbbcb40f4efc Mateusz Polchlopek 2025-02-27  945  			       struct libeth_rqe_info *fields)
a5ab9ee0df0be8 Joshua Hay         2023-08-07 @946  {
a5ab9ee0df0be8 Joshua Hay         2023-08-07  947  	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M)
45cbbcb40f4efc Mateusz Polchlopek 2025-02-27  948  		idpf_rx_singleq_extract_base_fields(rx_desc, fields);
a5ab9ee0df0be8 Joshua Hay         2023-08-07  949  	else
45cbbcb40f4efc Mateusz Polchlopek 2025-02-27  950  		idpf_rx_singleq_extract_flex_fields(rx_desc, fields);
a5ab9ee0df0be8 Joshua Hay         2023-08-07  951  }
a5ab9ee0df0be8 Joshua Hay         2023-08-07  952  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
