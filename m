Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6259F6C3635
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 16:49:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDBEE418AF;
	Tue, 21 Mar 2023 15:49:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDBEE418AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679413789;
	bh=iq5E0q91+M5efFNxL59WjQ1Bldx/ETIGkcJwDu1yINM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0i75d1xpSNBsi9U6051RBEWgiiZz9GQC2mV9V/Qni4Tc9R/jZaFOZiu24BekviKnF
	 Rul6CX5ZjSGazcUy9GvBR6/ZKGI18TBwCLnDx+iOlw+ag5UZ4rFtKedIe9WbAvtNty
	 f5z4WXio9CaxQlU/v0+zMerQ5xVT5LObOKCuTMZL7JnjJnVXMm1Ape+BATs8VaTK3o
	 +nCLvUfrBdTMNQ5RM8qPoFAmREAWH1cgs773/Eyivf5e+B4X/zjyIrm3Yulj0vSpWK
	 LZE6yKtthN+8tczVWBdgdBBocNcDv6pH63UCaIJCjc4aEFMKDEIoyU89rgRnOcwCV7
	 VAXlJn0gaYa3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pO5-1w6eO3My; Tue, 21 Mar 2023 15:49:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66B214109B;
	Tue, 21 Mar 2023 15:49:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66B214109B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0073A1BF44C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 15:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D7FB381E88
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 15:49:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7FB381E88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DF_kposQB_b3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 15:49:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B895081E78
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B895081E78
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 15:49:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="337700244"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="337700244"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 08:49:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="745894771"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="745894771"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 21 Mar 2023 08:49:37 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1peeEy-000C62-38;
 Tue, 21 Mar 2023 15:49:36 +0000
Date: Tue, 21 Mar 2023 23:48:55 +0800
From: kernel test robot <lkp@intel.com>
To: Piotr Raczynski <piotr.raczynski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202303212327.g08d8Z7h-lkp@intel.com>
References: <20230321122138.3151670-7-piotr.raczynski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230321122138.3151670-7-piotr.raczynski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679413781; x=1710949781;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YddQF/plqF+fYZY0R69SFY7iAwoIaqWSnvuJvcZK3WM=;
 b=VWGsbw27hDQbHQihJwHfuJvTDeUhWuMvcSmNrqv316ZJvqH4YaZTt/ge
 oe/ofQlWYeq5KaLf85GNS4cemMqCJmXvmSGG4sN2D8DjBkPRc128CrxCD
 r/2n3cLITEgJomhGy52TqQcOwE7lHVFIoIywUKlN+1G/JQ89ji+mStpuz
 Ys+7UUiu5Lk0zsNRCUODR2Khb4xNQsnvVW9AEdBMfm2oSQlU18keyA6tw
 Y+ZVzVq7QdZmxQgvZ9Rfz4mNEo7LZIdCNdrncmGLE7HaGG2/V0XXYec8O
 wmIBeDdo60aKPEeYjdjJNq/iFxHgCWTmFojZdw3USaBwRV0IG4SBYMpfV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VWGsbw27
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 6/8] ice: add individual
 interrupt allocation
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev, jesse.brandeburg@intel.com,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Piotr,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Piotr-Raczynski/ice-move-interrupt-related-code-to-separate-file/20230321-202438
patch link:    https://lore.kernel.org/r/20230321122138.3151670-7-piotr.raczynski%40intel.com
patch subject: [PATCH net-next v1 6/8] ice: add individual interrupt allocation
config: i386-randconfig-a011-20230320 (https://download.01.org/0day-ci/archive/20230321/202303212327.g08d8Z7h-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/6dc6aed8cfd670558d6c07ac957f342d1643f115
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Piotr-Raczynski/ice-move-interrupt-related-code-to-separate-file/20230321-202438
        git checkout 6dc6aed8cfd670558d6c07ac957f342d1643f115
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303212327.g08d8Z7h-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/net/ethernet/intel/ice/ice_base.o: in function `ice_free_q_vector':
>> drivers/net/ethernet/intel/ice/ice_base.c:199: undefined reference to `ice_get_vf_ctrl_vsi'
   ld: drivers/net/ethernet/intel/ice/ice_base.o: in function `ice_vsi_alloc_q_vector':
   drivers/net/ethernet/intel/ice/ice_base.c:127: undefined reference to `ice_get_vf_ctrl_vsi'


vim +199 drivers/net/ethernet/intel/ice/ice_base.c

   163	
   164	/**
   165	 * ice_free_q_vector - Free memory allocated for a specific interrupt vector
   166	 * @vsi: VSI having the memory freed
   167	 * @v_idx: index of the vector to be freed
   168	 */
   169	static void ice_free_q_vector(struct ice_vsi *vsi, int v_idx)
   170	{
   171		struct ice_q_vector *q_vector;
   172		struct ice_pf *pf = vsi->back;
   173		struct ice_tx_ring *tx_ring;
   174		struct ice_rx_ring *rx_ring;
   175		struct device *dev;
   176	
   177		dev = ice_pf_to_dev(pf);
   178		if (!vsi->q_vectors[v_idx]) {
   179			dev_dbg(dev, "Queue vector at index %d not found\n", v_idx);
   180			return;
   181		}
   182		q_vector = vsi->q_vectors[v_idx];
   183	
   184		ice_for_each_tx_ring(tx_ring, q_vector->tx)
   185			tx_ring->q_vector = NULL;
   186		ice_for_each_rx_ring(rx_ring, q_vector->rx)
   187			rx_ring->q_vector = NULL;
   188	
   189		/* only VSI with an associated netdev is set up with NAPI */
   190		if (vsi->netdev)
   191			netif_napi_del(&q_vector->napi);
   192	
   193		/* release MSIX interrupt if q_vector had interrupt allocated */
   194		if (q_vector->irq.index < 0)
   195			goto free_q_vector;
   196	
   197		/* only free last VF ctrl vsi interrupt */
   198		if (vsi->type == ICE_VSI_CTRL && vsi->vf &&
 > 199		    ice_get_vf_ctrl_vsi(pf, vsi))
   200			goto free_q_vector;
   201	
   202		ice_free_irq(pf, q_vector->irq);
   203	
   204	free_q_vector:
   205		devm_kfree(dev, q_vector);
   206		vsi->q_vectors[v_idx] = NULL;
   207	}
   208	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
