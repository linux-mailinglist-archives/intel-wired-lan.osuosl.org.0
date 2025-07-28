Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F99AB14276
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jul 2025 21:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D649360A92;
	Mon, 28 Jul 2025 19:19:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1jxaDOWbFJci; Mon, 28 Jul 2025 19:19:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 993EE60AC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753730377;
	bh=+tWhlvVxbhOvemKmFLULvp2LOBhZOD+7275/xe9bx6w=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1Z9CxWTuRc1ovo20FdFkNFXahBmIxbsCX6rAYSPZ5mOKIYIlSk7ruYjIzSOU2GSBE
	 acjoHLnNW6JfWgsxHH4V8pUnEdbytGsddC/an/ILryLBM9KaSBa1Xo5ZMHWRlZvXP7
	 KuIe4bRZ7T3OCDjflPiDT1VzJGTIJwQaEso84v3211LBNyZHr27SG13lg6wYA1eXzL
	 VmElAKwvpTc2DWJnq1GVOt3culJ/U8JUx2AQcaIEFkHJSd+uCQ0Z5u1aLPQeoKie0g
	 YgFFIiUszZxOxgaq3lLSMj+xAHjGGEKYt+OkgFVMI//O5T+bnnz7vo2p4d0vvXgvsM
	 xjYvDzA23p4FA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 993EE60AC1;
	Mon, 28 Jul 2025 19:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AAD91D3D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 19:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4130740868
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 19:19:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8jWVhrIl3tkV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jul 2025 19:19:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 299D540143
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 299D540143
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 299D540143
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 19:19:33 +0000 (UTC)
X-CSE-ConnectionGUID: EcjofCAZRq6IqtBtEYB2sA==
X-CSE-MsgGUID: QXMfbQglRxy9VGGTnoXlsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="66555762"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="66555762"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 12:19:32 -0700
X-CSE-ConnectionGUID: Pm3TzlZ2To+Hi66/Bzz6+w==
X-CSE-MsgGUID: NJMHWRr+RpGBY+aGx3/srA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="162072886"
Received: from lkp-server01.sh.intel.com (HELO 160750d4a34c) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 28 Jul 2025 12:19:31 -0700
Received: from kbuild by 160750d4a34c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ugTNh-0000hd-0M;
 Mon, 28 Jul 2025 19:19:29 +0000
Date: Tue, 29 Jul 2025 03:18:31 +0800
From: kernel test robot <lkp@intel.com>
To: Simon Horman <horms@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <202507290300.efFE06Rg-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753730374; x=1785266374;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=RY9uX40v8YjJeVWG2LhePYVbNBqYlHq9G50lbF5Aodw=;
 b=Nnwk4BvzVyajT+iyalV5zoWoGjuyg7y8vczXah95eHMHH7oUcKkpU7A4
 WWszH+6l1DOo2TihZJeMJqxtEz1mPYVaxWefau8BsU03bp2hTvRzyiPxC
 C3i+dSO9nfD9rpaL9GywbAwY6KiLu52IcPVPISbc7ZdAxiMl2GRXdZNDU
 sj/+V9LRBzwkf8GJHy7VeuGteukbVqWFafnh77QFCmcVX+OMzcUladUfL
 Rx1Tn62HplTEO4XhOWD8WiUlwZxIoNjbN9Jdpylj4nN6T5Ee6DSZGzXq3
 MI2z5hNBmf7NlNm2rCp3b/pzKc+Qd78ZpJ6BGvN4+fxUYHbOaprTljblA
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Nnwk4Bvz
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE 15/68]
 drivers/net/ethernet/marvell/octeontx2/af/cgx.c:1737:49: warning: '%u'
 directive writing between 1 and 10 bytes into a region of size between 4
 and 6
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

Hi Simon,

FYI, the error/warning was bisected to this commit, please ignore it if it's irrelevant.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
head:   fa582ca7e187a15e772e6a72fe035f649b387a60
commit: 9312ee76490df61491fee19b5ce71f71b6de908c [15/68] octeontx2-af: use unsigned int as iterator for unsigned values
config: arm64-randconfig-004-20250729 (https://download.01.org/0day-ci/archive/20250729/202507290300.efFE06Rg-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250729/202507290300.efFE06Rg-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507290300.efFE06Rg-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/marvell/octeontx2/af/cgx.c: In function 'cgx_lmac_init':
>> drivers/net/ethernet/marvell/octeontx2/af/cgx.c:1737:49: warning: '%u' directive writing between 1 and 10 bytes into a region of size between 4 and 6 [-Wformat-overflow=]
    1737 |                 sprintf(lmac->name, "cgx_fwi_%u_%u", cgx->cgx_id, i);
         |                                                 ^~
   drivers/net/ethernet/marvell/octeontx2/af/cgx.c:1737:37: note: directive argument in the range [0, 4294967294]
    1737 |                 sprintf(lmac->name, "cgx_fwi_%u_%u", cgx->cgx_id, i);
         |                                     ^~~~~~~~~~~~~~~
   drivers/net/ethernet/marvell/octeontx2/af/cgx.c:1737:17: note: 'sprintf' output between 12 and 23 bytes into a destination of size 16
    1737 |                 sprintf(lmac->name, "cgx_fwi_%u_%u", cgx->cgx_id, i);
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +1737 drivers/net/ethernet/marvell/octeontx2/af/cgx.c

  1704	
  1705	static int cgx_lmac_init(struct cgx *cgx)
  1706	{
  1707		u8 max_dmac_filters;
  1708		struct lmac *lmac;
  1709		int err, filter;
  1710		unsigned int i;
  1711		u64 lmac_list;
  1712	
  1713		/* lmac_list specifies which lmacs are enabled
  1714		 * when bit n is set to 1, LMAC[n] is enabled
  1715		 */
  1716		if (cgx->mac_ops->non_contiguous_serdes_lane) {
  1717			if (is_dev_rpm2(cgx))
  1718				lmac_list =
  1719					cgx_read(cgx, 0, RPM2_CMRX_RX_LMACS) & 0xFFULL;
  1720			else
  1721				lmac_list =
  1722					cgx_read(cgx, 0, CGXX_CMRX_RX_LMACS) & 0xFULL;
  1723		}
  1724	
  1725		if (cgx->lmac_count > cgx->max_lmac_per_mac)
  1726			cgx->lmac_count = cgx->max_lmac_per_mac;
  1727	
  1728		for (i = 0; i < cgx->lmac_count; i++) {
  1729			lmac = kzalloc(sizeof(struct lmac), GFP_KERNEL);
  1730			if (!lmac)
  1731				return -ENOMEM;
  1732			lmac->name = kcalloc(1, sizeof("cgx_fwi_xxx_yyy"), GFP_KERNEL);
  1733			if (!lmac->name) {
  1734				err = -ENOMEM;
  1735				goto err_lmac_free;
  1736			}
> 1737			sprintf(lmac->name, "cgx_fwi_%u_%u", cgx->cgx_id, i);
  1738			if (cgx->mac_ops->non_contiguous_serdes_lane) {
  1739				lmac->lmac_id = __ffs64(lmac_list);
  1740				lmac_list   &= ~BIT_ULL(lmac->lmac_id);
  1741			} else {
  1742				lmac->lmac_id = i;
  1743			}
  1744	
  1745			lmac->cgx = cgx;
  1746			lmac->mac_to_index_bmap.max =
  1747					cgx->mac_ops->dmac_filter_count /
  1748					cgx->lmac_count;
  1749	
  1750			max_dmac_filters = lmac->mac_to_index_bmap.max;
  1751	
  1752			err = rvu_alloc_bitmap(&lmac->mac_to_index_bmap);
  1753			if (err)
  1754				goto err_name_free;
  1755	
  1756			/* Reserve first entry for default MAC address */
  1757			set_bit(0, lmac->mac_to_index_bmap.bmap);
  1758	
  1759			lmac->rx_fc_pfvf_bmap.max = 128;
  1760			err = rvu_alloc_bitmap(&lmac->rx_fc_pfvf_bmap);
  1761			if (err)
  1762				goto err_dmac_bmap_free;
  1763	
  1764			lmac->tx_fc_pfvf_bmap.max = 128;
  1765			err = rvu_alloc_bitmap(&lmac->tx_fc_pfvf_bmap);
  1766			if (err)
  1767				goto err_rx_fc_bmap_free;
  1768	
  1769			init_waitqueue_head(&lmac->wq_cmd_cmplt);
  1770			mutex_init(&lmac->cmd_lock);
  1771			spin_lock_init(&lmac->event_cb_lock);
  1772			err = cgx_configure_interrupt(cgx, lmac, lmac->lmac_id, false);
  1773			if (err)
  1774				goto err_bitmap_free;
  1775	
  1776			/* Add reference */
  1777			cgx->lmac_idmap[lmac->lmac_id] = lmac;
  1778			set_bit(lmac->lmac_id, &cgx->lmac_bmap);
  1779			cgx->mac_ops->mac_pause_frm_config(cgx, lmac->lmac_id, true);
  1780			lmac->lmac_type = cgx->mac_ops->get_lmac_type(cgx, lmac->lmac_id);
  1781	
  1782			/* Disable stale DMAC filters for sane state */
  1783			for (filter = 0; filter < max_dmac_filters; filter++)
  1784				cgx_lmac_addr_del(cgx->cgx_id, lmac->lmac_id, filter);
  1785	
  1786			/* As cgx_lmac_addr_del does not clear entry for index 0
  1787			 * so it needs to be done explicitly
  1788			 */
  1789			cgx_lmac_addr_reset(cgx->cgx_id, lmac->lmac_id);
  1790		}
  1791	
  1792		/* Start X2P reset on given MAC block */
  1793		cgx->mac_ops->mac_x2p_reset(cgx, true);
  1794		return cgx_lmac_verify_fwi_version(cgx);
  1795	
  1796	err_bitmap_free:
  1797		rvu_free_bitmap(&lmac->tx_fc_pfvf_bmap);
  1798	err_rx_fc_bmap_free:
  1799		rvu_free_bitmap(&lmac->rx_fc_pfvf_bmap);
  1800	err_dmac_bmap_free:
  1801		rvu_free_bitmap(&lmac->mac_to_index_bmap);
  1802	err_name_free:
  1803		kfree(lmac->name);
  1804	err_lmac_free:
  1805		kfree(lmac);
  1806		return err;
  1807	}
  1808	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
