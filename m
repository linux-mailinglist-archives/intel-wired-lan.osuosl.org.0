Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEFD809265
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 21:34:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB85F42273;
	Thu,  7 Dec 2023 20:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB85F42273
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701981248;
	bh=gJjXK3JPZYJn48V1afpjey+vjCgbVX0Q/RGJdV+dQMk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hujdmzGCgBgqwO5tm1KNJP3F7P/xnawmNUxvedyvMVHKN14qHvqH71miXjxCPq9pS
	 m9uphCwlDWTaMdxnaySTufteryiRSq6C9R/7IQvozUhXTp6UGSYva8boxWbEOrPXN4
	 5pGaLfW8ijTNG+X2Qv9LPfLHbIgtZ8IjmIeqP7NpseBO1eybvrOWtE8+KMcfbw/jWZ
	 /vOLMy9b+wRpeiXh5awVGT+DDMB2GyXAkyDR5ANV3yq0O/iEc6GF1iiP/JRIGCZ8bT
	 8KiW7nBgQo0ytytIezo5boIiPMoXqKPfsspjMlRYxmbx0Vg7qHQbEqybiTxaK3bFRM
	 EwdsZAXRhdk+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4iiFYRQjMM8e; Thu,  7 Dec 2023 20:34:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B07442251;
	Thu,  7 Dec 2023 20:34:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B07442251
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B12DA1BF588
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 20:34:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 958BF42251
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 20:34:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 958BF42251
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iDwXGvxW-Xn4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 20:33:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9726442162
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 20:33:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9726442162
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1410459"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; 
   d="scan'208";a="1410459"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 12:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="771876786"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="771876786"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 07 Dec 2023 12:33:53 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rBL4B-000CnZ-1O;
 Thu, 07 Dec 2023 20:33:51 +0000
Date: Fri, 8 Dec 2023 04:33:31 +0800
From: kernel test robot <lkp@intel.com>
To: Andrii Staikov <andrii.staikov@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202312080413.jtUlijX8-lkp@intel.com>
References: <20231206125127.218350-1-andrii.staikov@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206125127.218350-1-andrii.staikov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701981237; x=1733517237;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qeIs2qDeHg1aj22+/59U1MW6QQTz1D5Le0uCHUaQkgk=;
 b=ICofDkcLpcXwR8Oz0N49XFc/P2RgsoedeDKZPP+doQZs7LG7Qfl5Gpc2
 Il/aGiiIX2kzUOxI9xkZiIuyIUVJpH8WI+fPI7IuVv4rB3sIcplLYlmTW
 voowrGW8QByhmQOrTpYYKMhiTd30M0fBguT+lEfPLB6PSTUPOrmKl0UWk
 qgBRRmERGhzFLHP9iBKx6ISSYE5Z+qPeiK9fFw6/WMar5pCZtGZK19Ujx
 TtutLRPdFWztT0n/tRkMWcv9sa1SakRn1zcWtlsjziAppzjp+3fvk8qhX
 BbOFIhgfVEDREu66CUCd01xspux179CxLO66Yu1ImeO8GtqH7kfUp4Zxq
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ICofDkcL
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: Restore VF MSI-X
 state during PCI reset
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
Cc: Drewek Wojciech <wojciech.drewek@intel.com>,
 Karen Ostrowska <karen.ostrowska@intel.com>, netdev@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev, Andrii Staikov <andrii.staikov@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Kitszel Przemyslaw <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Andrii,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-net-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Andrii-Staikov/i40e-Restore-VF-MSI-X-state-during-PCI-reset/20231206-205526
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20231206125127.218350-1-andrii.staikov%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-net v3] i40e: Restore VF MSI-X state during PCI reset
config: powerpc-ppc64_defconfig (https://download.01.org/0day-ci/archive/20231208/202312080413.jtUlijX8-lkp@intel.com/config)
compiler: powerpc64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231208/202312080413.jtUlijX8-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202312080413.jtUlijX8-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c: In function 'i40e_restore_all_vfs_msi_state':
>> drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:175:58: error: 'struct pci_dev' has no member named 'physfn'; did you mean 'is_physfn'?
     175 |                         if (vf_dev->is_virtfn && vf_dev->physfn == pdev)
         |                                                          ^~~~~~
         |                                                          is_physfn


vim +175 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c

   156	
   157	void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)
   158	{
   159		u16 vf_id;
   160		u16 pos;
   161	
   162		/* Continue only if this is a PF */
   163		if (!pdev->is_physfn)
   164			return;
   165	
   166		if (!pci_num_vf(pdev))
   167			return;
   168	
   169		pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
   170		if (pos) {
   171			struct pci_dev *vf_dev = NULL;
   172	
   173			pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID, &vf_id);
   174			while ((vf_dev = pci_get_device(pdev->vendor, vf_id, vf_dev))) {
 > 175				if (vf_dev->is_virtfn && vf_dev->physfn == pdev)
   176					pci_restore_msi_state(vf_dev);
   177			}
   178		}
   179	}
   180	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
