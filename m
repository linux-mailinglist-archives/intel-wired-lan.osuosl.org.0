Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A01D9E8FAA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2019 20:03:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AD3C0214D2;
	Tue, 29 Oct 2019 19:03:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qxWNLkgT1GRi; Tue, 29 Oct 2019 19:03:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0EC392094D;
	Tue, 29 Oct 2019 19:03:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24DEB1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2019 19:03:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 03F268790D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2019 19:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o56vR3DvNi2n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2019 19:03:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AD823875BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2019 19:03:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 12:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="211854147"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2019 12:03:07 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iPWlm-000Dvf-Nb; Wed, 30 Oct 2019 03:03:06 +0800
Date: Wed, 30 Oct 2019 03:02:16 +0800
From: kbuild test robot <lkp@intel.com>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Message-ID: <201910300316.DlrnkW44%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 61/66]
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c:173:1-8: alloc with no test,
 possible model on line 176
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
Cc: intel-wired-lan@lists.osuosl.org, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   cb2dcdacc18ac93f735552203907ecd54d527b40
commit: 162edbdf278fe8325905aaa6657e87db55126b95 [61/66] ice: Use ice_ena_vsi and ice_dis_vsi in DCB configuration flow

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


coccinelle warnings: (new ones prefixed by >>)

>> drivers/net/ethernet/intel/ice/ice_dcb_lib.c:173:1-8: alloc with no test, possible model on line 176

vim +173 drivers/net/ethernet/intel/ice/ice_dcb_lib.c

   141	
   142	/**
   143	 * ice_pf_dcb_cfg - Apply new DCB configuration
   144	 * @pf: pointer to the PF struct
   145	 * @new_cfg: DCBX config to apply
   146	 * @locked: is the RTNL held
   147	 */
   148	static
   149	int ice_pf_dcb_cfg(struct ice_pf *pf, struct ice_dcbx_cfg *new_cfg, bool locked)
   150	{
   151		struct ice_dcbx_cfg *old_cfg, *curr_cfg;
   152		struct ice_aqc_port_ets_elem buf = { 0 };
   153		struct ice_vsi *pf_vsi;
   154		int ret = 0;
   155	
   156		curr_cfg = &pf->hw.port_info->local_dcbx_cfg;
   157	
   158		/* Enable DCB tagging only when more than one TC */
   159		if (ice_dcb_get_num_tc(new_cfg) > 1) {
   160			dev_dbg(&pf->pdev->dev, "DCB tagging enabled (num TC > 1)\n");
   161			set_bit(ICE_FLAG_DCB_ENA, pf->flags);
   162		} else {
   163			dev_dbg(&pf->pdev->dev, "DCB tagging disabled (num TC = 1)\n");
   164			clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
   165		}
   166	
   167		if (!memcmp(new_cfg, curr_cfg, sizeof(*new_cfg))) {
   168			dev_dbg(&pf->pdev->dev, "No change in DCB config required\n");
   169			return ret;
   170		}
   171	
   172		/* Store old config in case FW config fails */
 > 173		old_cfg = kzalloc(sizeof(*old_cfg), GFP_KERNEL);
   174		memcpy(old_cfg, curr_cfg, sizeof(*old_cfg));
   175	
 > 176		pf_vsi = ice_get_main_vsi(pf);
   177		if (!pf_vsi) {
   178			dev_dbg(&pf->pdev->dev, "PF VSI doesn't exist\n");
   179			ret = -EINVAL;
   180			goto free_cfg;
   181		}
   182	
   183		/* avoid race conditions by holding the lock while disabling and
   184		 * re-enabling the VSI
   185		 */
   186		if (!locked)
   187			rtnl_lock();
   188		ice_dis_vsi(pf_vsi, true);
   189	
   190		memcpy(curr_cfg, new_cfg, sizeof(*curr_cfg));
   191		memcpy(&curr_cfg->etsrec, &curr_cfg->etscfg, sizeof(curr_cfg->etsrec));
   192	
   193		/* Only send new config to HW if we are in SW LLDP mode. Otherwise,
   194		 * the new config came from the HW in the first place.
   195		 */
   196		if (pf->hw.port_info->is_sw_lldp) {
   197			ret = ice_set_dcb_cfg(pf->hw.port_info);
   198			if (ret) {
   199				dev_err(&pf->pdev->dev, "Set DCB Config failed\n");
   200				/* Restore previous settings to local config */
   201				memcpy(curr_cfg, old_cfg, sizeof(*curr_cfg));
   202				goto out;
   203			}
   204		}
   205	
   206		ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
   207		if (ret) {
   208			dev_err(&pf->pdev->dev, "Query Port ETS failed\n");
   209			goto out;
   210		}
   211	
   212		ice_pf_dcb_recfg(pf);
   213	
   214	out:
   215		ice_ena_vsi(pf_vsi, true);
   216		if (!locked)
   217			rtnl_unlock();
   218	free_cfg:
   219		kfree(old_cfg);
   220		return ret;
   221	}
   222	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
