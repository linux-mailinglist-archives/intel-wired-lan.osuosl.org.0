Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA2277F188
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 09:54:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 108EE83C1D;
	Thu, 17 Aug 2023 07:54:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 108EE83C1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692258893;
	bh=Y+Kd1er0W4gXE4eQtOVU4Q9yDBrzdWbdCBt6K80vqws=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RPd7swSVEJxOlXgzI2+NgsgOISKDfURIe0FkBY2n0+o3ClTR5b9N8Qr79Tb21XqWO
	 1Ko7fqy0P4HD8AcWRjpe4kztpBOwyqkTG2UBfs6KKzB9Ym1fkA7nTF1dWP8yQ+5IDq
	 gbNGUDcL8dmRGR5N6OHU3Mm9i41/ls273O4wPjuQwppThzi7vNEsXLQMls3GNSoy+M
	 dl+WHEa6ZdTC0ffuSGGmd7EMS9pEYpKSuQl8Z5tQoZDs2xVogbXOm1IWVqQhG548SS
	 neM0lHAMuNUNSHh+3Ont7/jTlSozSb5gNuUnXmQCSpdG7oIr7tc4xsRK2Xp41yv3wN
	 X1UasXU5PWnkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mHGU0LlQFTGv; Thu, 17 Aug 2023 07:54:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBA5E83BF2;
	Thu, 17 Aug 2023 07:54:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBA5E83BF2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 892671BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 07:54:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D10583C17
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 07:54:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D10583C17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0g95VtRLlFY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 07:54:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0826F83BF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 07:54:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0826F83BF2
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372740412"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="372740412"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 00:54:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="848796713"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="848796713"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2023 00:54:39 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWXq3-0000vB-0H;
 Thu, 17 Aug 2023 07:54:39 +0000
Date: Thu, 17 Aug 2023 15:54:38 +0800
From: kernel test robot <lkp@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202308171518.cvGLIHQ3-lkp@intel.com>
References: <20230816085454.235440-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230816085454.235440-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692258884; x=1723794884;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UQmKIwqh/wtgUoyvc5dCNgfPVrdlQTGSAmf4kU2t33M=;
 b=DuvKHvAFEUbkdv0eHKaiwCKtuCdDjWzm0jF4FEW+xqe9ozZBMYgMiHqU
 fdbRlS+l7vS9GiMqetRF/aJPmlqb3Oc9gW6dZ/G+zQMUh13tO46WdCV9E
 CZbz50+z3CuuT87hR/okYtsWpFzWkOPaMeBD5FckJcI+kj9xHro36j2cM
 tbGUSWWzlyHWsqmtUUjrY00t51fiwmV+Liado3F/R5LBOT2IXR/dn0W55
 TPx+1R3c8xghRfWdA2odjufTTKzgkOeyaEWtRlufIXCPQTtdnSggVOPqm
 no/26dawUnRf0K2SR86dndie2nK0mfJuu83rLR5KRsymg5O+VQX6mmThV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DuvKHvAF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: store VF's pci_dev ptr
 in ice_vf
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
Cc: netdev@vger.kernel.org, oe-kbuild-all@lists.linux.dev,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Przemek,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 0ad204c4acb8ba1ed99564b001609e62547bc79d]

url:    https://github.com/intel-lab-lkp/linux/commits/Przemek-Kitszel/ice-store-VF-s-pci_dev-ptr-in-ice_vf/20230816-165953
base:   0ad204c4acb8ba1ed99564b001609e62547bc79d
patch link:    https://lore.kernel.org/r/20230816085454.235440-1-przemyslaw.kitszel%40intel.com
patch subject: [PATCH iwl-next] ice: store VF's pci_dev ptr in ice_vf
config: arm-allmodconfig (https://download.01.org/0day-ci/archive/20230817/202308171518.cvGLIHQ3-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230817/202308171518.cvGLIHQ3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308171518.cvGLIHQ3-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_sriov.c:1727: warning: Function parameter or member 'pf' not described in 'ice_restore_all_vfs_msi_state'
>> drivers/net/ethernet/intel/ice/ice_sriov.c:1727: warning: Excess function parameter 'pdev' description in 'ice_restore_all_vfs_msi_state'


vim +1727 drivers/net/ethernet/intel/ice/ice_sriov.c

a54a0b24f4f5a3 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c Nick Nunley     2020-07-13  1718  
a54a0b24f4f5a3 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c Nick Nunley     2020-07-13  1719  /**
a54a0b24f4f5a3 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c Nick Nunley     2020-07-13  1720   * ice_restore_all_vfs_msi_state - restore VF MSI state after PF FLR
a54a0b24f4f5a3 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c Nick Nunley     2020-07-13  1721   * @pdev: pointer to a pci_dev structure
a54a0b24f4f5a3 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c Nick Nunley     2020-07-13  1722   *
a54a0b24f4f5a3 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c Nick Nunley     2020-07-13  1723   * Called when recovering from a PF FLR to restore interrupt capability to
a54a0b24f4f5a3 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c Nick Nunley     2020-07-13  1724   * the VFs.
a54a0b24f4f5a3 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c Nick Nunley     2020-07-13  1725   */
ab8f0331b8a892 drivers/net/ethernet/intel/ice/ice_sriov.c       Przemek Kitszel 2023-08-16  1726  void ice_restore_all_vfs_msi_state(struct ice_pf *pf)
a54a0b24f4f5a3 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c Nick Nunley     2020-07-13 @1727  {

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
