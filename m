Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6269014F42E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2020 22:50:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 194C886B3B;
	Fri, 31 Jan 2020 21:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4VfCqP5--D0u; Fri, 31 Jan 2020 21:50:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 715B986B21;
	Fri, 31 Jan 2020 21:50:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BBFB1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 14:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 16CD9844C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 14:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iV8jV8SlsYN5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2020 14:39:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 31FAE844BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 14:39:42 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.70,386,1574118000"; d="scan'208";a="433911808"
Received: from unknown (HELO hadrien) ([131.254.252.110])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 15:39:40 +0100
Date: Fri, 31 Jan 2020 15:39:40 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <alpine.DEB.2.21.2001311538500.2236@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 31 Jan 2020 21:50:29 +0000
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 23/68]
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c:866:2-8: preceding lock on
 line 823 (fwd)
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
Cc: kbuild-all@lists.01.org, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It looks like an unlock may be needed on line 866.

julia

---------- Forwarded message ----------
Date: Fri, 31 Jan 2020 03:37:17 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Julia Lawall <julia.lawall@lip6.fr>
Subject: [jkirsher-next-queue:dev-queue 23/68]
    drivers/net/ethernet/intel/ice/ice_dcb_lib.c:866:2-8: preceding lock on line
     823

CC: kbuild-all@lists.01.org
CC: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
TO: Dave Ertman <david.m.ertman@intel.com>
CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   c48a1f5522f05b3654059aee22adb40107d10670
commit: 5eed7bb45be7c777685502ffc993d102d10c3379 [23/68] ice: Fix DCB rebuild after reset
:::::: branch date: 24 hours ago
:::::: commit date: 24 hours ago

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Julia Lawall <julia.lawall@lip6.fr>

>> drivers/net/ethernet/intel/ice/ice_dcb_lib.c:866:2-8: preceding lock on line 823

# https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/commit/?id=5eed7bb45be7c777685502ffc993d102d10c3379
git remote add jkirsher-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git
git remote update jkirsher-next-queue
git checkout 5eed7bb45be7c777685502ffc993d102d10c3379
vim +866 drivers/net/ethernet/intel/ice/ice_dcb_lib.c

7516010ac2db5c Dave Ertman            2020-01-29  771
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  772  /**
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  773   * ice_dcb_process_lldp_set_mib_change - Process MIB change
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  774   * @pf: ptr to ice_pf
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  775   * @event: pointer to the admin queue receive event
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  776   */
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  777  void
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  778  ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  779  				    struct ice_rq_event_info *event)
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  780  {
a17a5ff6812c26 Usha Ketineni          2019-04-16  781  	struct ice_aqc_port_ets_elem buf = { 0 };
4015d11e4b9720 Brett Creeley          2019-11-08  782  	struct device *dev = ice_pf_to_dev(pf);
a17a5ff6812c26 Usha Ketineni          2019-04-16  783  	struct ice_aqc_lldp_get_mib *mib;
a17a5ff6812c26 Usha Ketineni          2019-04-16  784  	struct ice_dcbx_cfg tmp_dcbx_cfg;
a17a5ff6812c26 Usha Ketineni          2019-04-16  785  	bool need_reconfig = false;
a17a5ff6812c26 Usha Ketineni          2019-04-16  786  	struct ice_port_info *pi;
9d614b6425f844 Anirudh Venkataramanan 2019-11-06  787  	struct ice_vsi *pf_vsi;
a17a5ff6812c26 Usha Ketineni          2019-04-16  788  	u8 type;
a17a5ff6812c26 Usha Ketineni          2019-04-16  789  	int ret;
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  790
a17a5ff6812c26 Usha Ketineni          2019-04-16  791  	/* Not DCB capable or capability disabled */
a17a5ff6812c26 Usha Ketineni          2019-04-16  792  	if (!(test_bit(ICE_FLAG_DCB_CAPABLE, pf->flags)))
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  793  		return;
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  794
a17a5ff6812c26 Usha Ketineni          2019-04-16  795  	if (pf->dcbx_cap & DCB_CAP_DCBX_HOST) {
4015d11e4b9720 Brett Creeley          2019-11-08  796  		dev_dbg(dev, "MIB Change Event in HOST mode\n");
a17a5ff6812c26 Usha Ketineni          2019-04-16  797  		return;
a17a5ff6812c26 Usha Ketineni          2019-04-16  798  	}
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  799
a17a5ff6812c26 Usha Ketineni          2019-04-16  800  	pi = pf->hw.port_info;
a17a5ff6812c26 Usha Ketineni          2019-04-16  801  	mib = (struct ice_aqc_lldp_get_mib *)&event->desc.params.raw;
a17a5ff6812c26 Usha Ketineni          2019-04-16  802  	/* Ignore if event is not for Nearest Bridge */
a17a5ff6812c26 Usha Ketineni          2019-04-16  803  	type = ((mib->type >> ICE_AQ_LLDP_BRID_TYPE_S) &
a17a5ff6812c26 Usha Ketineni          2019-04-16  804  		ICE_AQ_LLDP_BRID_TYPE_M);
4015d11e4b9720 Brett Creeley          2019-11-08  805  	dev_dbg(dev, "LLDP event MIB bridge type 0x%x\n", type);
a17a5ff6812c26 Usha Ketineni          2019-04-16  806  	if (type != ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID)
a17a5ff6812c26 Usha Ketineni          2019-04-16  807  		return;
a17a5ff6812c26 Usha Ketineni          2019-04-16  808
a17a5ff6812c26 Usha Ketineni          2019-04-16  809  	/* Check MIB Type and return if event for Remote MIB update */
a17a5ff6812c26 Usha Ketineni          2019-04-16  810  	type = mib->type & ICE_AQ_LLDP_MIB_TYPE_M;
4015d11e4b9720 Brett Creeley          2019-11-08  811  	dev_dbg(dev, "LLDP event mib type %s\n", type ? "remote" : "local");
a17a5ff6812c26 Usha Ketineni          2019-04-16  812  	if (type == ICE_AQ_LLDP_MIB_REMOTE) {
a17a5ff6812c26 Usha Ketineni          2019-04-16  813  		/* Update the remote cached instance and return */
a17a5ff6812c26 Usha Ketineni          2019-04-16  814  		ret = ice_aq_get_dcb_cfg(pi->hw, ICE_AQ_LLDP_MIB_REMOTE,
a17a5ff6812c26 Usha Ketineni          2019-04-16  815  					 ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID,
a17a5ff6812c26 Usha Ketineni          2019-04-16  816  					 &pi->remote_dcbx_cfg);
a17a5ff6812c26 Usha Ketineni          2019-04-16  817  		if (ret) {
4015d11e4b9720 Brett Creeley          2019-11-08  818  			dev_err(dev, "Failed to get remote DCB config\n");
a17a5ff6812c26 Usha Ketineni          2019-04-16  819  			return;
a17a5ff6812c26 Usha Ketineni          2019-04-16  820  		}
a17a5ff6812c26 Usha Ketineni          2019-04-16  821  	}
a17a5ff6812c26 Usha Ketineni          2019-04-16  822
5eed7bb45be7c7 Dave Ertman            2020-01-29 @823  	mutex_lock(&pf->tc_mutex);
5eed7bb45be7c7 Dave Ertman            2020-01-29  824
a17a5ff6812c26 Usha Ketineni          2019-04-16  825  	/* store the old configuration */
a17a5ff6812c26 Usha Ketineni          2019-04-16  826  	tmp_dcbx_cfg = pf->hw.port_info->local_dcbx_cfg;
a17a5ff6812c26 Usha Ketineni          2019-04-16  827
2f2da36ebf42ef Anirudh Venkataramanan 2019-04-16  828  	/* Reset the old DCBX configuration data */
a17a5ff6812c26 Usha Ketineni          2019-04-16  829  	memset(&pi->local_dcbx_cfg, 0, sizeof(pi->local_dcbx_cfg));
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  830
2f2da36ebf42ef Anirudh Venkataramanan 2019-04-16  831  	/* Get updated DCBX data from firmware */
a17a5ff6812c26 Usha Ketineni          2019-04-16  832  	ret = ice_get_dcb_cfg(pf->hw.port_info);
a17a5ff6812c26 Usha Ketineni          2019-04-16  833  	if (ret) {
4015d11e4b9720 Brett Creeley          2019-11-08  834  		dev_err(dev, "Failed to get DCB config\n");
5eed7bb45be7c7 Dave Ertman            2020-01-29  835  		mutex_unlock(&pf->tc_mutex);
a17a5ff6812c26 Usha Ketineni          2019-04-16  836  		return;
a17a5ff6812c26 Usha Ketineni          2019-04-16  837  	}
a17a5ff6812c26 Usha Ketineni          2019-04-16  838
a17a5ff6812c26 Usha Ketineni          2019-04-16  839  	/* No change detected in DCBX configs */
a17a5ff6812c26 Usha Ketineni          2019-04-16  840  	if (!memcmp(&tmp_dcbx_cfg, &pi->local_dcbx_cfg, sizeof(tmp_dcbx_cfg))) {
4015d11e4b9720 Brett Creeley          2019-11-08  841  		dev_dbg(dev, "No change detected in DCBX configuration.\n");
5eed7bb45be7c7 Dave Ertman            2020-01-29  842  		mutex_unlock(&pf->tc_mutex);
a17a5ff6812c26 Usha Ketineni          2019-04-16  843  		return;
a17a5ff6812c26 Usha Ketineni          2019-04-16  844  	}
a17a5ff6812c26 Usha Ketineni          2019-04-16  845
a17a5ff6812c26 Usha Ketineni          2019-04-16  846  	need_reconfig = ice_dcb_need_recfg(pf, &tmp_dcbx_cfg,
a17a5ff6812c26 Usha Ketineni          2019-04-16  847  					   &pi->local_dcbx_cfg);
b94b013eb62695 Dave Ertman            2019-11-06  848  	ice_dcbnl_flush_apps(pf, &tmp_dcbx_cfg, &pi->local_dcbx_cfg);
5eed7bb45be7c7 Dave Ertman            2020-01-29  849  	if (!need_reconfig) {
5eed7bb45be7c7 Dave Ertman            2020-01-29  850  		mutex_unlock(&pf->tc_mutex);
a17a5ff6812c26 Usha Ketineni          2019-04-16  851  		return;
5eed7bb45be7c7 Dave Ertman            2020-01-29  852  	}
a17a5ff6812c26 Usha Ketineni          2019-04-16  853
a17a5ff6812c26 Usha Ketineni          2019-04-16  854  	/* Enable DCB tagging only when more than one TC */
a17a5ff6812c26 Usha Ketineni          2019-04-16  855  	if (ice_dcb_get_num_tc(&pi->local_dcbx_cfg) > 1) {
4015d11e4b9720 Brett Creeley          2019-11-08  856  		dev_dbg(dev, "DCB tagging enabled (num TC > 1)\n");
a17a5ff6812c26 Usha Ketineni          2019-04-16  857  		set_bit(ICE_FLAG_DCB_ENA, pf->flags);
a17a5ff6812c26 Usha Ketineni          2019-04-16  858  	} else {
4015d11e4b9720 Brett Creeley          2019-11-08  859  		dev_dbg(dev, "DCB tagging disabled (num TC = 1)\n");
a17a5ff6812c26 Usha Ketineni          2019-04-16  860  		clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
00cc3f1b3a3011 Anirudh Venkataramanan 2019-02-28  861  	}
a17a5ff6812c26 Usha Ketineni          2019-04-16  862
9d614b6425f844 Anirudh Venkataramanan 2019-11-06  863  	pf_vsi = ice_get_main_vsi(pf);
9d614b6425f844 Anirudh Venkataramanan 2019-11-06  864  	if (!pf_vsi) {
4015d11e4b9720 Brett Creeley          2019-11-08  865  		dev_dbg(dev, "PF VSI doesn't exist\n");
9d614b6425f844 Anirudh Venkataramanan 2019-11-06 @866  		return;

:::::: The code at line 866 was first introduced by commit
:::::: 9d614b6425f844a722630d66b9cb7eb531fd706e ice: Use ice_ena_vsi and ice_dis_vsi in DCB configuration flow

:::::: TO: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
:::::: CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
