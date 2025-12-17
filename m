Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 820D3CC9BBB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 23:47:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5BF940F59;
	Wed, 17 Dec 2025 22:47:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bqKjtHB-2Wn3; Wed, 17 Dec 2025 22:47:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C46C040F12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766011644;
	bh=y2daj+Kn+0bi5OVR/Y+s8Yof9YkZzIXo+mmGSqWmFiM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Gwx7OlGroTuOjXOJmqLj51JNxiwwxWe7U0AH5wX9Tc+Wz9OJ1srAZ0Vi1J5WpTX1
	 VkwSmlAE8HnTzGUSI6aKn/SEzlodbcWGeEQ9dF8/Ix10CUJkfYey1D8mNue5rve01U
	 JLzS/nK+Q9YY/LS8wuQE7dk8aUrozRXiKz/ghH9lZhOOS1PTRz+XNfspSMSytFa9B3
	 io4DpacGeojSP7WvohPVX7z6PuvfEEpeMAL4R0C7K8hpiPfdBRf1LyoikUIGuWfXr8
	 4/OpGirIwjC8RIAxnOAM/RgY/emA7PQws1v9UdO8X2nBb9mOSZ87Gte04Xg3d5KwTH
	 VQEtmoXgI6wJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C46C040F12;
	Wed, 17 Dec 2025 22:47:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B56BB35B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 22:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B0B560AD6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 22:47:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mxovl3f-_zCT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 22:47:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3EC616088B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EC616088B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EC616088B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 22:47:21 +0000 (UTC)
X-CSE-ConnectionGUID: bSSsrZL4RC+wSW3271glyw==
X-CSE-MsgGUID: iPuoL4wYTqWJ6VbHJNc5LA==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="70538565"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="70538565"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 14:47:21 -0800
X-CSE-ConnectionGUID: 4IqvSKBeRjaTHp5mwQfnPw==
X-CSE-MsgGUID: od3DP6+bT+C1HrmT6IgrUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="229469153"
Received: from lkp-server01.sh.intel.com (HELO 0d09efa1b85f) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 17 Dec 2025 14:47:18 -0800
Received: from kbuild by 0d09efa1b85f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vW0Id-000000001Jh-36RN;
 Wed, 17 Dec 2025 22:47:15 +0000
Date: Thu, 18 Dec 2025 06:46:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 netdev@vger.kernel.org, "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Message-ID: <202512180618.zgXQvXlK-lkp@intel.com>
References: <20251216002852.334561-1-yury.norov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251216002852.334561-1-yury.norov@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766011642; x=1797547642;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uMvkDXWWifBadlcb5XX4iH4olOqgHQRNGlRMtOALKiY=;
 b=TXHoVhG02P//jdTk1M3jOHm7dAQecqRGqNsCmhx1E+lziO0LD1IILtZI
 mdMCUT3kx3LMJ9bormUhPiHRGqPjeGR6N2wEWeuApbIRe8WIOpCGtfDGZ
 DoCDXEL94craz1kFkn0RU9rvYqC8l5VzqpGM76kFVn7RR+lAsz48rZyX2
 6Ka7xWTKTRXynfYrtDLymo2vmFvJQeWyYkTVjuOVXiLOdwcHICLLkRq7D
 R2HdNz6v+Rc89Dkt2BSMLqR0/IISLe0iMEfY6+u9MPOcJYZdg9NGqFG1x
 qR3HRR3uXynTBsq8MlrEtjR9wXgBZDYyQqvt7q2Dd3R3mYS9SbKyMFljK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TXHoVhG0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: drop useless bitmap_weight()
 call in i40e_set_rxfh_fields()
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

Hi Yury,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]
[also build test ERROR on tnguy-net-queue/dev-queue linus/master v6.19-rc1 next-20251217]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Yury-Norov-NVIDIA/i40e-drop-useless-bitmap_weight-call-in-i40e_set_rxfh_fields/20251216-083033
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20251216002852.334561-1-yury.norov%40gmail.com
patch subject: [PATCH] i40e: drop useless bitmap_weight() call in i40e_set_rxfh_fields()
config: x86_64-rhel-9.4-rust (https://download.01.org/0day-ci/archive/20251218/202512180618.zgXQvXlK-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
rustc: rustc 1.88.0 (6b00bc388 2025-06-23)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251218/202512180618.zgXQvXlK-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512180618.zgXQvXlK-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3711:19: error: use of undeclared identifier 'flow_id'
    3711 |         for_each_set_bit(flow_id, flow_pctypes, FLOW_PCTYPES_SIZE) {
         |                          ^
>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3711:19: error: use of undeclared identifier 'flow_id'
>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3711:19: error: use of undeclared identifier 'flow_id'
>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3711:19: error: use of undeclared identifier 'flow_id'
>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3711:19: error: use of undeclared identifier 'flow_id'
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3712:62: error: use of undeclared identifier 'flow_id'
    3712 |                 i_setc = (u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id)) |
         |                                                                            ^
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3713:56: error: use of undeclared identifier 'flow_id'
    3713 |                          ((u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id)) << 32);
         |                                                                             ^
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3716:49: error: use of undeclared identifier 'flow_id'
    3716 |                 i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id),
         |                                                               ^
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3718:49: error: use of undeclared identifier 'flow_id'
    3718 |                 i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id),
         |                                                               ^
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3720:19: error: use of undeclared identifier 'flow_id'
    3720 |                 hena |= BIT_ULL(flow_id);
         |                                 ^
   10 errors generated.


vim +/flow_id +3711 drivers/net/ethernet/intel/i40e/i40e_ethtool.c

eb0dd6e4a3b3df Carolyn Wyborny  2016-07-27  3614  
3b32c9932853e1 Slawomir Laba    2022-10-24  3615  #define FLOW_PCTYPES_SIZE 64
5a28983710b739 Jakub Kicinski   2025-06-14  3616  static int i40e_set_rxfh_fields(struct net_device *netdev,
5a28983710b739 Jakub Kicinski   2025-06-14  3617  				const struct ethtool_rxfh_fields *nfc,
5a28983710b739 Jakub Kicinski   2025-06-14  3618  				struct netlink_ext_ack *extack)
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3619  {
5a28983710b739 Jakub Kicinski   2025-06-14  3620  	struct i40e_netdev_priv *np = netdev_priv(netdev);
5a28983710b739 Jakub Kicinski   2025-06-14  3621  	struct i40e_vsi *vsi = np->vsi;
5a28983710b739 Jakub Kicinski   2025-06-14  3622  	struct i40e_pf *pf = vsi->back;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3623  	struct i40e_hw *hw = &pf->hw;
272cdaf2472ab7 Shannon Nelson   2016-02-17  3624  	u64 hena = (u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(0)) |
272cdaf2472ab7 Shannon Nelson   2016-02-17  3625  		   ((u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(1)) << 32);
3b32c9932853e1 Slawomir Laba    2022-10-24  3626  	DECLARE_BITMAP(flow_pctypes, FLOW_PCTYPES_SIZE);
eb0dd6e4a3b3df Carolyn Wyborny  2016-07-27  3627  	u64 i_set, i_setc;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3628  
3b32c9932853e1 Slawomir Laba    2022-10-24  3629  	bitmap_zero(flow_pctypes, FLOW_PCTYPES_SIZE);
3b32c9932853e1 Slawomir Laba    2022-10-24  3630  
70756d0a4727fe Ivan Vecera      2023-11-13  3631  	if (test_bit(I40E_FLAG_MFP_ENA, pf->flags)) {
83d14c595e011f Carolyn Wyborny  2017-06-07  3632  		dev_err(&pf->pdev->dev,
83d14c595e011f Carolyn Wyborny  2017-06-07  3633  			"Change of RSS hash input set is not supported when MFP mode is enabled\n");
83d14c595e011f Carolyn Wyborny  2017-06-07  3634  		return -EOPNOTSUPP;
83d14c595e011f Carolyn Wyborny  2017-06-07  3635  	}
83d14c595e011f Carolyn Wyborny  2017-06-07  3636  
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3637  	/* RSS does not support anything other than hashing
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3638  	 * to queues on src and dst IPs and ports
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3639  	 */
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3640  	if (nfc->data & ~(RXH_IP_SRC | RXH_IP_DST |
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3641  			  RXH_L4_B_0_1 | RXH_L4_B_2_3))
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3642  		return -EINVAL;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3643  
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3644  	switch (nfc->flow_type) {
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3645  	case TCP_V4_FLOW:
141d0c9037ca57 Jacob Keller     2025-05-05  3646  		set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP, flow_pctypes);
0e8b9fdd40fe65 Ivan Vecera      2023-11-13  3647  		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
0e8b9fdd40fe65 Ivan Vecera      2023-11-13  3648  			     pf->hw.caps))
141d0c9037ca57 Jacob Keller     2025-05-05  3649  			set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK,
3b32c9932853e1 Slawomir Laba    2022-10-24  3650  				flow_pctypes);
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3651  		break;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3652  	case TCP_V6_FLOW:
141d0c9037ca57 Jacob Keller     2025-05-05  3653  		set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP, flow_pctypes);
0e8b9fdd40fe65 Ivan Vecera      2023-11-13  3654  		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
0e8b9fdd40fe65 Ivan Vecera      2023-11-13  3655  			     pf->hw.caps))
141d0c9037ca57 Jacob Keller     2025-05-05  3656  			set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK,
3b32c9932853e1 Slawomir Laba    2022-10-24  3657  				flow_pctypes);
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3658  		break;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3659  	case UDP_V4_FLOW:
141d0c9037ca57 Jacob Keller     2025-05-05  3660  		set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP, flow_pctypes);
0e8b9fdd40fe65 Ivan Vecera      2023-11-13  3661  		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
0e8b9fdd40fe65 Ivan Vecera      2023-11-13  3662  			     pf->hw.caps)) {
141d0c9037ca57 Jacob Keller     2025-05-05  3663  			set_bit(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP,
3b32c9932853e1 Slawomir Laba    2022-10-24  3664  				flow_pctypes);
141d0c9037ca57 Jacob Keller     2025-05-05  3665  			set_bit(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP,
3b32c9932853e1 Slawomir Laba    2022-10-24  3666  				flow_pctypes);
3b32c9932853e1 Slawomir Laba    2022-10-24  3667  		}
141d0c9037ca57 Jacob Keller     2025-05-05  3668  		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV4);
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3669  		break;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3670  	case UDP_V6_FLOW:
141d0c9037ca57 Jacob Keller     2025-05-05  3671  		set_bit(LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP, flow_pctypes);
0e8b9fdd40fe65 Ivan Vecera      2023-11-13  3672  		if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE,
0e8b9fdd40fe65 Ivan Vecera      2023-11-13  3673  			     pf->hw.caps)) {
141d0c9037ca57 Jacob Keller     2025-05-05  3674  			set_bit(LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP,
3b32c9932853e1 Slawomir Laba    2022-10-24  3675  				flow_pctypes);
141d0c9037ca57 Jacob Keller     2025-05-05  3676  			set_bit(LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP,
3b32c9932853e1 Slawomir Laba    2022-10-24  3677  				flow_pctypes);
3b32c9932853e1 Slawomir Laba    2022-10-24  3678  		}
141d0c9037ca57 Jacob Keller     2025-05-05  3679  		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV6);
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3680  		break;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3681  	case AH_ESP_V4_FLOW:
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3682  	case AH_V4_FLOW:
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3683  	case ESP_V4_FLOW:
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3684  	case SCTP_V4_FLOW:
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3685  		if ((nfc->data & RXH_L4_B_0_1) ||
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3686  		    (nfc->data & RXH_L4_B_2_3))
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3687  			return -EINVAL;
141d0c9037ca57 Jacob Keller     2025-05-05  3688  		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER);
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3689  		break;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3690  	case AH_ESP_V6_FLOW:
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3691  	case AH_V6_FLOW:
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3692  	case ESP_V6_FLOW:
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3693  	case SCTP_V6_FLOW:
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3694  		if ((nfc->data & RXH_L4_B_0_1) ||
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3695  		    (nfc->data & RXH_L4_B_2_3))
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3696  			return -EINVAL;
141d0c9037ca57 Jacob Keller     2025-05-05  3697  		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER);
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3698  		break;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3699  	case IPV4_FLOW:
141d0c9037ca57 Jacob Keller     2025-05-05  3700  		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER) |
141d0c9037ca57 Jacob Keller     2025-05-05  3701  			BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV4);
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3702  		break;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3703  	case IPV6_FLOW:
141d0c9037ca57 Jacob Keller     2025-05-05  3704  		hena |= BIT_ULL(LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER) |
141d0c9037ca57 Jacob Keller     2025-05-05  3705  			BIT_ULL(LIBIE_FILTER_PCTYPE_FRAG_IPV6);
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3706  		break;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3707  	default:
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3708  		return -EINVAL;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3709  	}
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3710  
3b32c9932853e1 Slawomir Laba    2022-10-24 @3711  	for_each_set_bit(flow_id, flow_pctypes, FLOW_PCTYPES_SIZE) {
3b32c9932853e1 Slawomir Laba    2022-10-24  3712  		i_setc = (u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id)) |
3b32c9932853e1 Slawomir Laba    2022-10-24  3713  			 ((u64)i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id)) << 32);
54b5af5a438076 Slawomir Laba    2022-10-24  3714  		i_set = i40e_get_rss_hash_bits(&pf->hw, nfc, i_setc);
3b32c9932853e1 Slawomir Laba    2022-10-24  3715  
3b32c9932853e1 Slawomir Laba    2022-10-24  3716  		i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, flow_id),
eb0dd6e4a3b3df Carolyn Wyborny  2016-07-27  3717  				  (u32)i_set);
3b32c9932853e1 Slawomir Laba    2022-10-24  3718  		i40e_write_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, flow_id),
eb0dd6e4a3b3df Carolyn Wyborny  2016-07-27  3719  				  (u32)(i_set >> 32));
3b32c9932853e1 Slawomir Laba    2022-10-24  3720  		hena |= BIT_ULL(flow_id);
3b32c9932853e1 Slawomir Laba    2022-10-24  3721  	}
eb0dd6e4a3b3df Carolyn Wyborny  2016-07-27  3722  
272cdaf2472ab7 Shannon Nelson   2016-02-17  3723  	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(0), (u32)hena);
272cdaf2472ab7 Shannon Nelson   2016-02-17  3724  	i40e_write_rx_ctl(hw, I40E_PFQF_HENA(1), (u32)(hena >> 32));
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3725  	i40e_flush(hw);
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3726  
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3727  	return 0;
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3728  }
c7d05ca89f8e40 Jesse Brandeburg 2013-09-11  3729  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
