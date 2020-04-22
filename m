Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077B11B4B53
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2020 19:08:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32831880A1;
	Wed, 22 Apr 2020 17:08:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w6JCs7tYCY72; Wed, 22 Apr 2020 17:08:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E611087E27;
	Wed, 22 Apr 2020 17:08:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C33C1BF484
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 17:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 19E4186644
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 17:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E4VGsnF7RgJD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2020 17:08:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1420986511
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2020 17:08:44 +0000 (UTC)
IronPort-SDR: ZVM2rGt/ppViCcQ1yq1VQte5pKZJmG+CeLW8js8aL7YjbhSODFkS29nZAxLF/EWVdc/w+SEF2O
 T+bdajxu1RYw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 10:06:41 -0700
IronPort-SDR: R9HZA+HpUJUSRaiQz4eH88FA+Kkn+ZfWn3kBGi6O6jtKz0ZNm7DgyFvHnOB+fD1eFGCeKqx70e
 /WzMnIr83yeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,304,1583222400"; 
 d="gz'50?scan'50,208,50";a="280094251"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 22 Apr 2020 10:06:39 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jRIpa-000GLq-I9; Thu, 23 Apr 2020 01:06:38 +0800
Date: Thu, 23 Apr 2020 01:06:35 +0800
From: kbuild test robot <lkp@intel.com>
To: Todd Fujinaka <todd.fujinaka@intel.com>
Message-ID: <202004230131.kH3dvL4o%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 60/60]
 drivers/net/ethernet/intel/i40e/i40e_main.c:15350:24: error:
 'I40E_PRTGL_SAH' undeclared; did you mean 'I40E_PRTGEN_CNF'?
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   826a1eed0402b218f4374a26b6a1009404d6ba65
commit: 826a1eed0402b218f4374a26b6a1009404d6ba65 [60/60] i40e: Add a check to see if MFS is set
config: ia64-randconfig-a001-20200421 (attached as .config)
compiler: ia64-linux-gcc (GCC) 9.3.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 826a1eed0402b218f4374a26b6a1009404d6ba65
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day GCC_VERSION=9.3.0 make.cross ARCH=ia64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/i40e/i40e_type.h:8,
                    from drivers/net/ethernet/intel/i40e/i40e.h:39,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:10:
   drivers/net/ethernet/intel/i40e/i40e_main.c: In function 'i40e_probe':
>> drivers/net/ethernet/intel/i40e/i40e_main.c:15350:24: error: 'I40E_PRTGL_SAH' undeclared (first use in this function); did you mean 'I40E_PRTGEN_CNF'?
   15350 |   val = (rd32(&pf->hw, I40E_PRTGL_SAH + 0x4 * i) &
         |                        ^~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_osdep.h:27:45: note: in definition of macro 'rd32'
      27 | #define rd32(a, reg)  readl((a)->hw_addr + (reg))
         |                                             ^~~
   drivers/net/ethernet/intel/i40e/i40e_main.c:15350:24: note: each undeclared identifier is reported only once for each function it appears in
   15350 |   val = (rd32(&pf->hw, I40E_PRTGL_SAH + 0x4 * i) &
         |                        ^~~~~~~~~~~~~~
   drivers/net/ethernet/intel/i40e/i40e_osdep.h:27:45: note: in definition of macro 'rd32'
      27 | #define rd32(a, reg)  readl((a)->hw_addr + (reg))
         |                                             ^~~
>> drivers/net/ethernet/intel/i40e/i40e_main.c:15351:10: error: 'I40E_PRTGL_SAH_MFS_MASK' undeclared (first use in this function); did you mean 'I40E_REG_MSS_MIN_MASK'?
   15351 |          I40E_PRTGL_SAH_MFS_MASK) >> I40E_PRTGL_SAH_MFS_SHIFT;
         |          ^~~~~~~~~~~~~~~~~~~~~~~
         |          I40E_REG_MSS_MIN_MASK
>> drivers/net/ethernet/intel/i40e/i40e_main.c:15351:38: error: 'I40E_PRTGL_SAH_MFS_SHIFT' undeclared (first use in this function)
   15351 |          I40E_PRTGL_SAH_MFS_MASK) >> I40E_PRTGL_SAH_MFS_SHIFT;
         |                                      ^~~~~~~~~~~~~~~~~~~~~~~~

vim +15350 drivers/net/ethernet/intel/i40e/i40e_main.c

 15248	
 15249		if (pf->flags & I40E_FLAG_IWARP_ENABLED) {
 15250			pf->iwarp_base_vector = i40e_get_lump(pf, pf->irq_pile,
 15251							      pf->num_iwarp_msix,
 15252							      I40E_IWARP_IRQ_PILE_ID);
 15253			if (pf->iwarp_base_vector < 0) {
 15254				dev_info(&pdev->dev,
 15255					 "failed to get tracking for %d vectors for IWARP err=%d\n",
 15256					 pf->num_iwarp_msix, pf->iwarp_base_vector);
 15257				pf->flags &= ~I40E_FLAG_IWARP_ENABLED;
 15258			}
 15259		}
 15260	
 15261		i40e_dbg_pf_init(pf);
 15262	
 15263		/* tell the firmware that we're starting */
 15264		i40e_send_version(pf);
 15265	
 15266		/* since everything's happy, start the service_task timer */
 15267		mod_timer(&pf->service_timer,
 15268			  round_jiffies(jiffies + pf->service_timer_period));
 15269	
 15270		/* add this PF to client device list and launch a client service task */
 15271		if (pf->flags & I40E_FLAG_IWARP_ENABLED) {
 15272			err = i40e_lan_add_device(pf);
 15273			if (err)
 15274				dev_info(&pdev->dev, "Failed to add PF to client API service list: %d\n",
 15275					 err);
 15276		}
 15277	
 15278	#define PCI_SPEED_SIZE 8
 15279	#define PCI_WIDTH_SIZE 8
 15280		/* Devices on the IOSF bus do not have this information
 15281		 * and will report PCI Gen 1 x 1 by default so don't bother
 15282		 * checking them.
 15283		 */
 15284		if (!(pf->hw_features & I40E_HW_NO_PCI_LINK_CHECK)) {
 15285			char speed[PCI_SPEED_SIZE] = "Unknown";
 15286			char width[PCI_WIDTH_SIZE] = "Unknown";
 15287	
 15288			/* Get the negotiated link width and speed from PCI config
 15289			 * space
 15290			 */
 15291			pcie_capability_read_word(pf->pdev, PCI_EXP_LNKSTA,
 15292						  &link_status);
 15293	
 15294			i40e_set_pci_config_data(hw, link_status);
 15295	
 15296			switch (hw->bus.speed) {
 15297			case i40e_bus_speed_8000:
 15298				strlcpy(speed, "8.0", PCI_SPEED_SIZE); break;
 15299			case i40e_bus_speed_5000:
 15300				strlcpy(speed, "5.0", PCI_SPEED_SIZE); break;
 15301			case i40e_bus_speed_2500:
 15302				strlcpy(speed, "2.5", PCI_SPEED_SIZE); break;
 15303			default:
 15304				break;
 15305			}
 15306			switch (hw->bus.width) {
 15307			case i40e_bus_width_pcie_x8:
 15308				strlcpy(width, "8", PCI_WIDTH_SIZE); break;
 15309			case i40e_bus_width_pcie_x4:
 15310				strlcpy(width, "4", PCI_WIDTH_SIZE); break;
 15311			case i40e_bus_width_pcie_x2:
 15312				strlcpy(width, "2", PCI_WIDTH_SIZE); break;
 15313			case i40e_bus_width_pcie_x1:
 15314				strlcpy(width, "1", PCI_WIDTH_SIZE); break;
 15315			default:
 15316				break;
 15317			}
 15318	
 15319			dev_info(&pdev->dev, "PCI-Express: Speed %sGT/s Width x%s\n",
 15320				 speed, width);
 15321	
 15322			if (hw->bus.width < i40e_bus_width_pcie_x8 ||
 15323			    hw->bus.speed < i40e_bus_speed_8000) {
 15324				dev_warn(&pdev->dev, "PCI-Express bandwidth available for this device may be insufficient for optimal performance.\n");
 15325				dev_warn(&pdev->dev, "Please move the device to a different PCI-e link with more lanes and/or higher transfer rate.\n");
 15326			}
 15327		}
 15328	
 15329		/* get the requested speeds from the fw */
 15330		err = i40e_aq_get_phy_capabilities(hw, false, false, &abilities, NULL);
 15331		if (err)
 15332			dev_dbg(&pf->pdev->dev, "get requested speeds ret =  %s last_status =  %s\n",
 15333				i40e_stat_str(&pf->hw, err),
 15334				i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 15335		pf->hw.phy.link_info.requested_speeds = abilities.link_speed;
 15336	
 15337		/* set the FEC config due to the board capabilities */
 15338		i40e_set_fec_in_flags(abilities.fec_cfg_curr_mod_ext_info, &pf->flags);
 15339	
 15340		/* get the supported phy types from the fw */
 15341		err = i40e_aq_get_phy_capabilities(hw, false, true, &abilities, NULL);
 15342		if (err)
 15343			dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %s last_status =  %s\n",
 15344				i40e_stat_str(&pf->hw, err),
 15345				i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 15346	
 15347		/* make sure the MFS hasn't been set lower than the default */
 15348	#define MAX_FRAME_SIZE_DEFAULT 0x2600
 15349		for (i = 0; i < 4; i++) {
 15350			val = (rd32(&pf->hw, I40E_PRTGL_SAH + 0x4 * i) &
 15351			       I40E_PRTGL_SAH_MFS_MASK) >> I40E_PRTGL_SAH_MFS_SHIFT;
 15352			if (val < MAX_FRAME_SIZE_DEFAULT)
 15353				dev_warn(&pdev->dev, "MFS for port %x has been set below the default: %x\n", i, val);
 15354		}
 15355	
 15356		/* Add a filter to drop all Flow control frames from any VSI from being
 15357		 * transmitted. By doing so we stop a malicious VF from sending out
 15358		 * PAUSE or PFC frames and potentially controlling traffic for other
 15359		 * PF/VF VSIs.
 15360		 * The FW can still send Flow control frames if enabled.
 15361		 */
 15362		i40e_add_filter_to_drop_tx_flow_control_frames(&pf->hw,
 15363							       pf->main_vsi_seid);
 15364	
 15365		if ((pf->hw.device_id == I40E_DEV_ID_10G_BASE_T) ||
 15366			(pf->hw.device_id == I40E_DEV_ID_10G_BASE_T4))
 15367			pf->hw_features |= I40E_HW_PHY_CONTROLS_LEDS;
 15368		if (pf->hw.device_id == I40E_DEV_ID_SFP_I_X722)
 15369			pf->hw_features |= I40E_HW_HAVE_CRT_RETIMER;
 15370		/* print a string summarizing features */
 15371		i40e_print_features(pf);
 15372	
 15373		return 0;
 15374	
 15375		/* Unwind what we've done if something failed in the setup */
 15376	err_vsis:
 15377		set_bit(__I40E_DOWN, pf->state);
 15378		i40e_clear_interrupt_scheme(pf);
 15379		kfree(pf->vsi);
 15380	err_switch_setup:
 15381		i40e_reset_interrupt_capability(pf);
 15382		del_timer_sync(&pf->service_timer);
 15383	err_mac_addr:
 15384	err_configure_lan_hmc:
 15385		(void)i40e_shutdown_lan_hmc(hw);
 15386	err_init_lan_hmc:
 15387		kfree(pf->qp_pile);
 15388	err_sw_init:
 15389	err_adminq_setup:
 15390	err_pf_reset:
 15391		iounmap(hw->hw_addr);
 15392	err_ioremap:
 15393		kfree(pf);
 15394	err_pf_alloc:
 15395		pci_disable_pcie_error_reporting(pdev);
 15396		pci_release_mem_regions(pdev);
 15397	err_pci_reg:
 15398	err_dma:
 15399		pci_disable_device(pdev);
 15400		return err;
 15401	}
 15402	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--AhhlLboLdkugWU4S
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICEtzoF4AAy5jb25maWcAlDzZcuO2su/nK1STl+QhiZcZJXNu+QEEQQlXXGAAlGW/sDQe
zkQV25qS5Sx/f7sBUgRAUMk9lTpjdje27kZvAPTdf76bkbfj/nl73D1un57+nn1tX9rD9th+
nn3ZPbX/M0urWVnpGUu5/gmI893L218/77bz97MPP/3y08WPh8fL2ao9vLRPM7p/+bL7+gat
d/uX/3z3H/jvOwA+f4OODv+dYaMfn7D9j18fH2ffLyj9Yfbxp+ufLoCQVmXGFw2lDVcNYG7+
7kHw0ayZVLwqbz5eXF9c9Ig8PcGvrt9fmP+d+slJuTihL5zul0Q1RBXNotLVMIiD4GXOSzZC
3RFZNgW5T1hTl7zkmpOcP7DUI0y5IknO/gUxl7fNXSVXADFsWhi2P81e2+Pbt4Ef2LZh5boh
EhbMC65vrq+Qq92QVSE4jKeZ0rPd6+xlf8QeThyqKMl7Jrx7FwM3pHb5kNQc2KpIrh36lGWk
znWzrJQuScFu3n3/sn9pf3g3TETdERGZgLpXay4cYXYA/JfqfICLSvFNU9zWrGZx6NBkWL2s
lGoKVlTyviFaE7p053CiqxXLeRKZHqlBq4fhlmTNgNF0aRE4IMmdSQZQIzeQ4+z17dPr36/H
9nmQ24KVTHJqxJyzBaH3jkI7OCGrhMVRalndjTGClSkvjf7Em/HyfxnVKPAomi658LUwrQrC
Sx+meBEjapacSWRQZDWF4vFJdYjROO6sUpbUi0wZ4bYvn2f7LwFjTyJA6VBQ4JWqaklZkxJN
xn1qXrBmPRKgkIwVQjdlZTb4SUF6+LrK61ITeR9Vo44qokd9e1pB814zqKh/1tvX32fH3XM7
28KqXo/b4+ts+/i4f3s57l6+DuqiOV010KAh1PQBEnbnt+ZSB+imJJqvWXSiii5Z2uglkwXJ
cXJK1ZJF5p2oFDWQAgF27WyFENOsrwekJmqlNNHKnSMCQY45uTcNIqMZik03jt+OV87S4sxX
3Id3avIvuHyyz8BArqqcdLvDSEnSeqbG+1eDRBvAuTOFz4ZtBJOxxSlL7Db3QdgamJbnaLQL
d3sipmQgMcUWNMm50u4+8Cd42pMr+4ezS1cnZayoC14ykoKtH0B5hXY+AwPDM31zdeHCkUcF
2Tj4y6tBy3mpV+AcMhb0cXntmdC6hIWiG7SKaLZrz2/1+Fv7+Q3igdmXdnt8O7SvBtwtNoIN
3DBM4fLqV8fpLmRVC08TwSHQuBIl+aprEEVblJ31OQLBU3UOL9OCnMNnoB0PTJ4jWdYLpvMk
TiLAoemzM0jZmtO4cegooJOJbdoRJCLzfG3fMRjqmPpXdHWi8UwyBgxKELAkA6zWqimdb4wI
Sk+GsEIJoJit5anXtmTa+wbh0ZWoQE8aMHy6kp6ltxqJMc+0GoDbyBSsFAwnJdpXhX7Lop1z
rGWOpm9tojXpBnn4TQrozXorJ6aSabN4MK54sC9pkwDoKjopQOYPvloNmM1D0E/+UE338j6+
N6oKHRj+Hdcb2lQC/CqEsU1WSQhEJPxTkJLGPEtIreAPLwr0oj/7bZ17XUKovCjBR5so2mGy
Ucjuw9rh4buA+JSj0njChj1UoHvpAoF4gIrSCQOFbEnKNB9FohhWuJbUWkQ3enYMMssz4Kd0
OkmIAm7U3kC1ZpvgE1Tc6UVULr0C1pA8c3TMzMkFsDUrtQtQS7CIThTLnXgfHG8tbbTRo9M1
V6xnibNY6CQhUnLD4w62QpL7Qo0hjcdPkN2YySguk1h4sy8SlqYmUxp8P7288JTWuIwu6RTt
4cv+8Lx9eWxn7I/2BXw/AWdC0fu3B8+7/MsW/VTWheWlDes8wau8TqwtdAwP5GJEN4nJ6QYd
zEks88AOfLIqTkYSYLxcsD4Jc+cAOHQlGDE0EhS2KqawSyJTCI09rqplnWXgpAWB3kEwkBSC
tZyYqwkMBJGYyLr6X2U874PVjst+JnsiXdiQIAeWglZdWxmKw/6xfX3dH2bHv7/Z8M0JC3od
JfP3w5jz94mbsz1AKN+Av72+cjS1cOIuCEXoCqww5AqqFqJyrUbnZS0L0EQ1ayI5znOcUoDu
8kSCP7BBbpA1gkPGwACclgnTJXM8YFq4+zlzPqw3qiCrB1GBn2yM33I3GK4dTCIl1m/1UnK2
q7GZiing8IkwSFkNkdOnJiWvCy9koite5iye95g5DCx6v4ppakD068pT7wB7OV/FQ5vlQ3N5
cTGFuvowibr2W3ndXTiyeri5dKpEZlqJzMHq1AHP88vG8LKLcOfBWtSCN/V6ml1LCCMTAuYV
dHGKW/QeImO30gSOErQUw2/U6gq2rLy5/OWkLIWTuJdG0dTN+4uP89PiKi3y2sSHgX6w0uy9
rlLS0f0TjYS/1pHgSRU6um5QflTkREEAbJrGCi44kmI5g4yyG6moYD8Fc0m5gk/NF0DTTSyg
yCCLm0RCuCkVm0R7vY/MalkXbvQKs1N9lnPhbXnLNSLz+0ZkZaOrpuRpYBYMDfaBMTEELZqV
yivNwM5FxqHRwIENbTPqxrIqx2TcTChYEGZ8zQpjjQbCBx1ockEJCISCQOR9gBJg08qsGjVo
mJRdISnAMcVH+xp0nRR5U2Z3EYmv2IZRv2hHFMigLsTIo2e7w/Of20M7Sw+7P3rf3e8NLguI
Bw0vimitESwrRAqp8Ayvy0r4tPFeAKIEa7V0ycGTlFVpOsrA1CaEeq4c1AZLWUkW1/9FVS1g
A/UTHa0Oup19z/46ti+vu09P7bBajmHHl+1j+wMk+t++7Q/HwffhXMAnOVPuIY0YJTcB6lS3
7arSEzzDwD+vsEaA4b+WVe4PRolQNXpuQxOON1F5RlRfDBeUo4d2Y4T/Dy8M83T79bCdfenJ
PhsFcWO7CYIePVatHnMuBLExyv7P9jCDcHH7tX2GaNGQECr4bP8NDzo8NRXFpNWzwQeW09z4
PvhCyoIvlrqzH4BtREp9etRiDbZLVHcgNKzEoY06BTenyRhaE6UuJqoNtjdBZaNDDfFpGO1r
tNM0hE7jEqIhrrmPMcega61ds2iAGSnHq6noaqoTNKIQ8d6C+qugq66UCYkoNeyaRHMv6/OR
AZyLIpDjhAdGTFeMjUtnmm24dSA1iO0wu2TYsATsVji3fiLWcYxGXUaLGrbHGmxHAQ31skpH
DSVLawoxAOYTxhpXZT4pVN+T2oEL4mkosBALBZItwCueWST87Z8O/POmPCUDShgH5J2ybQ+P
v+2O7SNu8x8/t9+gV+xk2NCes/KzeOPRethpJZXNhWJG1uzkHu+2WZnTn1iRyzTp0EEssJJM
RxHGdphEZ1lVTlGiT2AgfjTqDboI6UkaGB1Thlda1hCZgQ80WdMZkqlMxPZtm8eI7ExVgWFf
dwIZRjOGpETHjIVmWogNXbpptq0DmxGADxpiFNi3pRdImy4ihyb/TIHcCoOvKu3DSkZ5xh1j
DCjwjMpEcVjuwbJg0JptICY+cdw7uCW6ub5KEM2LmN5g2dytQKiTFkMw9+On7Wv7efa7LWl8
O+y/7J7skdIQkAAZaKssWe5bmD5RP9dNmM3/w47p5wwMLbCG5WqnKXupAms/FwHnvBzUgLok
CIONqFnsqOryHEWvWed6UJKejsDz/CzlREW0Q6Mo8YjtHA3uhDtw7ErZo7uuJN7wwsQE8VPr
EtQKttJ9kVR5nERLXvR0K6y6xc74utOX0yfsYYxjwVHWTGkfg0XsRC2iwJwnYziWKxaS62gx
vEM1+vJijMYUN/XBtEjx6kVj0jcv0kTsXRJzg7Y7cKKNG9e70NhIyLBKkNMpvtgejjvU5JmG
INCP6LDopY2apGusdsdcZ6HSSg2kfgDtggcHFozozq64RcfvzxhgaK5M7dZePKiG0zLHYwEd
r2yinoLN6a6yDPo4oFf3CYuV+3p8kt26E/bHO1lsVV46KaK5OgOGkpdmh4L98q4EdHjjIiz+
HC7a9g40ik01dpFda5t6/dU+vh23mGngpaaZKf8eHa4lkAYXGm24I7o88x2/SbAxcT0lVmjz
R8erXV+KSi70CAw2gPpdYo9ebjQxWbOSon3eH/6eFUPgM4pZ4uWVIZHuKicFKWsSt3tegWRM
149zqrJYEqes2WOcOgqeb5tDGpGzsIjh1DjMbQVW6khnWD6R8EcMtbZVgVG9Z0QxHtTYR1t3
8fCmHLNiTCCRXyXppureJfAxowqbD++m5e1Ln6BXsMroddyzBIW6qIRyiC6ENiu05cIgAjEX
hWKHrFiqlQydkxc2QWoqgyVbTbGx3gAVy3vIdNMUEsuwYm+iLl1Bzue5/5WKpc49I4x0QQym
T6/qSXNGbNnbmZObeMDH6ahmWH0PzGI+E7FYw1c3vwxNHkRVxfbBQ1I73uXBBDqVV/Lqzz5g
DWLqfkvfzqTzcUYwKTEesAG4kRCeL3sVqrQ/z8E8YBWM1RsAc9KwNnGzIzBbhOyv9fQhJF4E
YCWFvK071uqM1LQdGna8W1RlGia7wDDJ2ZyrZCiJnoLbsj3+uT/8DkHo2LSBwq7cbu032Cvi
6Ghd8o3/BbbYO+0wMGwUD6rymEpsMun1gd/mBDPah8Gao5yMTNzDMCSqThpR5ZzGT14Mjd1z
5zoBmXGlOY0Hicj71cTRziYV5upGcJ3k5FWZr17CmnBKojU/QPchUiOrWvshHGAznmDIyqyW
xXs4+QizZVTQg+m2oyE6ftvzRAbhfVKpmGEEElG61yDNd5MuqQgGRDAWSOM3RToCSWQcb9Re
8HPIhanTFvUmMk1L0ei6LH0fru5LsLvVirNpkXOx1nyi0zp1enXgWVWPAMMMfGEgmkxIAHGQ
4UwjuUD3M6Fyo6kZoL/JLR0VPdjvHtc3ub8NhSR3/0CBWJAMmNsqvndwdPhzcS4vONHQOnEL
B71b6/E37x7fPu0e3/m9F+mHIPc86d167ivqet5tOQygsgllBSJ7KQeNRZNO5M+4+vk50c7P
ynYeEa4/h4KL+TSW57FLTrbn8U4wTeKKblAqcJAdrJnLmLgMusTw1wSE+l4w10is52PVRKC3
bXpInPSsecO51QneHY1va9uDkfPketli3uR3E4wyWPDl9Gzz4OafVS6Rn7qdMjk5SVgsQCqE
po6xNZ8jFbZQnNvoSMkdA59MwCwpxiMTxk1ogc8/lOLZvWfNTFsITE29DVxQIbzYFigyngde
6wSM7vLugcuhxagFkrVjexg9ghl1NIqDBhQykZerm+dJFF68ddB4w6wsTbDnQc1VXnvN+NlZ
jEVAVylbx7jndGeOPTJPQT20EXbMh3tUmRbx2UJ2ToOpDTiYYMIrFb//6VEqHvSvHR5GhNhz
cZHXrInefoVOSqK9TuF7tBCE2SX4sHBCCCuIuq2ZJCkLuGltQFyNuwlvOjvxbHVtY+oCr7PH
/fOn3Uv7efa8x4LMa0zPNjiyXIVNj9vD1/Y41UITuYA95GuZS2CZE2Ht0LjEW5cx5x4lzuxY
Z3uEvIdLFpdXhNxheHwRHR1YnEKNePu8PT7+doalGt8HQRZqvEO8f0sU25pjKhv+nyWxR5bP
Q/Z11uR44alicVMKqLUamTIu/vsvLFmG4YskxjO8DzaxTSYMJm7CQevBsmzuz5KktRjhfRsG
EffI4HXTGYCS4Q2WAA4rBxQXp43lwTsPEEBPamhuxATIYEd4LQZNjGchQFmQcpGzcQ8QoUZP
bc7JqBPiH/NzYoyLKx6ReeKaJOnENY+La5DCPCayucvP+ZRs5pZVuBuwjS26jgjG0pufFd98
SgDz8xI4x+DoNplP+rpE8nQRT+4hDjPrmdrAKaWTaamiEymrnHi6AlHpxPUNXUTh+ZWO2fhC
ein0eHkdwp7yYp6lSBBwISjSYp2Tsvn14ury1qUfoM1iLWMzciiKtXSvhzEaFDgspMukYiey
uZPDwceVd0FCkzwWk26uPjiNiHBO0cSyCmYwz6s7Qcq4WBljuI4PUbvItL2f2dfRbt/at3b3
8vXn7tTGe2/YUTc0ufXiUANc6iQCzNxzix4qpPuYoIeaJCfSsXSP4XqgypJQ/hZ8O71KSBFu
81grnWRnWtFEjccHdzsGahJf2UL6d+h7eKrOJCRIAP+ywnPytp0Msw3LwFsc/kx3apXEJ0iX
1YqNwbdZRBzUv3nbg7PbE2Y0MUpWsc08NI01Wi7PCUXwyHxhDlF4d6oyGmLqOdyJz7beMs7d
nravr7svu8dxtgY5pAqHAhDeZuCx/LnHa8rL1LzpGTU1dmUi6OlIondoe2R97RmcDmReYkU7
7QnO6KaZlloLn9U9dD4GQ7h+F1vb+FllyDeR+frf9+ZeXuvhxtN7j4VMSdGAY7DuvtL1VQRF
CxFOuMOUyf1EXd0hAgZOrKojKJj33HFAdHexY51yMVnhMOsnU7mO3R3cnEYObovGXmSkpcIX
kBX+0oNzDA3+nJi7DDFY/+cE0r3d5MBT/1KfgyljO8XBF3iUMNH23H3TkOz8KP2lb+eyHivX
6o7riR+MWE+fifQVBL8cXYixsUBYs1AxM25QaA2wAPXsQUEzbO3O2yulWrrdL1U8KDQKYpY1
UeDB1P4asxLML4EmnHNJVayUKoXjOGVmfhLAdR0b/wF29w7YFOMCPxajscW6WD3WBGP4GF3d
N/47yOQ2fF2oJSPFcHXI6QGNTPfbKf4Z4+zYvh6DS3Nm0iu9YPEYzISnshJNUZU8eC53ShBG
3QcI92xziIcLSBOH6z1i+/h7e5zJ7efdHu/lHfeP+yfvYhKBwDLOWhI70k/cuyj4TJGl0oPI
DCuGEVCjvetd0LZkfpBvQfhw5EzG0lPhpc0qQjiQ0UKH/S95GnMuiFHe3PwbtgaQRq/FwQZV
WWiiAXrW7Gi8XZOFBWojleTprT3u98ffZp/bP3aP/RME95KRNkfCuTffJeWJrlUSBZqH6qpW
+KMvIUN6koTG7k24FIVeTTWWOlaw7ymU1cegZU2iP4DRNaLF1cX1JjKeIJcXsUPODp1FeLBe
Uh70VMj1xIyJXl6vvB5g3d0KPBjO373KMCk4Z6tlYIbkVIKcNauoDCZMEp6Cy+7yawe645Ll
9kxg2MXZApO9y3HM2iNe2vbz6+y4n31qYS1YvPyMl8VmBaGGwLkU2EEwTMLb00vzyNC8yb8Y
5gAwd0pIYu9Qmje7N78ODmDFXVtsv0G3Re1tpg6+EJOpzMcg7vwohkuOnsn9GPnlCcfe8Yn4
l4llE//lpzJzs9kMf7lrwbX/QAPBJeVxPwC4pY/rPMv2MMt27RO+J39+fnvpUovZ99Dih07D
Xv0qHMWfW5ocBe9gXUZftxps+eH6Opy0ATawoaY7NRT8KprIdPirJtwp/3Jxw1BCEQhqpkNs
nkXvvd+FR6c9xP8NiFTpJrj4BUEFSN372QITE+EFuEL5h30Y/5iTIuc60QKfYLsP4DLC88oL
oJleaiA5nTN1/jq1tiMNjb6pc3m3ee0Fdw8UfnS/laV84PjnrCg3V/SCm3T9JUJsgyQRFiOY
uKvqAKNHnwhvGJU0IFXCuw3Vw2KJ9pjIvFtTZOLXq3wyfNc2Jh6RDj9GEk6rSUVMyw1K6NEq
miSWgSMrCxUIaeqHzRB3W3O5UkHnk7mKka6uE7+P4Ae2EMSr+JtzI2oZC90Nhij3HSyCzPHt
AHJUZkqTzOOq2NguERU0NgmXRC3F6TkWUj/uX46H/RP+5tMoYkL6TMP/X5pH/N5y8ccI+7dN
U/Ld4I9TbIYt+rr7P86eZDlyHNf7+wqfXsxETEWnlPuhDkwtmSprs6jc6qJwV9VMO9pdXVGu
nun5+weQWggSzOx4jnDYAiCS4gqAWP719YxeoFixukRzHG71lDlbKyA+q/pcaJ0LD3R4wZqM
PTLhuFk1qUBiJ44Ct1qtTcJ//xm67eUV0V/sr5oMNv1U+jR6/vwFA6Io9DQmbw9vbA9FIk70
YmOgXF8NKKbDTBTfa4QisS42hjvRux8wul7ws26ckcnXz99+f/lKP7kDFlxF56DraICaToom
GiTTNqEB3UgVY6Vv/3n58ekXfjWQeS/PvYjfJhHbEbdLMwuLRMObgDWizmLKtU3uky+f+lPu
obLtc4/aW+2Q5LV5uBBwh4abJLjoqS1q4pTfQ0DGPhJPgFaUscjd2I2q9DFAgAph6jR9dAB/
/R0myvepzel58my3QYojiDHQnXH+X9pGjLUZHzK9pYKX2Z3Aotk4AxMl71pmu7T3XzRy7qJU
vI3pXDKIKsoNjcdZUONODEWAuMlOrLjeo5NTQ63ZNBznfv+uPygInN9PlewejxjrtiU+aRi5
ivghTPeVWLKQ1zIayldOsex01iUPZN5ouU2yJx4g+hm5ZAcm86zQXBeFF4Upbw4FmG5McSHg
CBSNnlapOUMQlap9TnnxmnuGZ+FpxcMfb4ZcMUh8h6wjDUS56ijy0etiEH6NlwdS+FMO3gHG
Mqsi7YzKq0b2peTULEVLFBfwqHrfNT2Z/OG+PX9/oy5tLTrgrpUfnRmPDMCGxyBllhBZpRrO
thcJYBBU1DuGyvHSG1qlGnuEf+FEVaZXKnZY+/3569urFoby5/86zd/lj7BEnBYq3yO+1zSu
a4gonLYe40sfIvNimjT2FidlGvO6DlnYL5n9XdXW8Iyej+j8pZTOAy/WiOKnpip+Sl+f3+Cc
+uXlm8v9qQE2w2Uh4EMSJ5EVNRnhwAmOwZRJH0MJ6hIALZ8r1qIQqXCd7kT52J2zuD10AS3c
woY3sQtrikL9WcDAQgaG6kESwWf8ggKkXWcpIQZORc5aYkAf2yynxUHXW4DKAohd74I3BaH1
D5fmQZ+/fUOtdg9UaihF9fwJg6tYY1qhUuAyuEPZc+ZwlXobJp/ag3vHee+SHsgq7srZJECt
lHYmsytiJRjEqNHpThhswH0LOFPoJHYTudc5Oi7ul9d/vkN+7VnZdUKZXj2yqq+IlktrVmkY
BqFMTQ8oA2VFLESMzJ35UB8cEPzaMHju2qqFI0XpEU2XvB6bNMrxH7FBuHH2tlCfDVo0e3n7
9V319V2E3eJTpeCbcRXtjUjUO21mCaxA8T5YuNBWeTwOwYXvdrF1fpRJCRyn//gQ584mUF+T
1zCvHv5X/w2BIS8eftP+cuxYKjLa30/ocGrsZ/0X3C+YtvC4883lwxW4T8IgxK3B5lSp+T86
zLWUMQMgOhKjrwIB6nhoLOqx2n0ggPhaiiIjtaoVSYzjAUb4J3guE9qQgij5K7Q4BA77hGeO
6YKsEXgdTmCo3SPxHO0YTHWE55gdW6kHcexsSTYv5VimmGEQ7SXIEwzvY1zvTW/RyFB92ASz
5CGSQnnMc3zgr6x6IpSjpcSVnNXz8HJhiT86W5hVyhF69CZBDkzATYK42fEravyaO3j5eAd/
2dzE+z4xiuGAw6vfKD7xNWAIP5wtqALmzQbU3cXdobjXA42kw6MvFk5F4mqrEGoHGR768WS6
yivC0W+SXBgg5nAuWD9whUzFrskiaRWWRk4prcceVSOVES5/X25+m+YnXt4+uUKNiJfh8tLF
dUXDnE1g+0pjEkePRXHFnYRbsAeQmE0eqM3SwupVBVpfLoFZMXTKdh7KxSxgSgVBLq8w70KH
m1FG4p8fQCjMjT1L1LHcbmahMC8uMpmH29mM3O5oWMjdBgHLJqtGdi2QLJdEXTqgdodgvb71
rmrHdkaubw9FtJov+aDksQxWGx4lfeuMaM08krjW23YyThMz2hL65YGkRppXn2pRZvygR6G9
RetoIAkcrIWr2NRwWOahwcL3QDuHSw8uxGW1WS8d+HYeXVYOFMSDbrM91Im8OLgkCWazhXnY
W80cpfPdOpg54cc01He/YGA7IeWx0LLQwH21X/58fnvIvr79+P7Hbyoe9tsvz9+BRfqBYi3W
/vAKLNPDZ1iVL9/wXzNzSUfVm/+PwtyZmmfSdz0p0G5EoNhTT0l4vv748voAvATwRt+/vKrs
VW+GDnzYn6sa9R/sHnSriKFqkDHPTzQ0NDwr3h9vnzBqatVMsVZnU81JdODNoNScFnmEAfV5
wWOY9PSScAITu4mDAEFUdCIzR4RsphPlCQPNkkmUxW7UUowVNbDJzopRgaSKyrhbakQWYyom
Eiw9khl96sOBmpDpOtWEKq1TOk5U1Zi+FTpc599gGv36j4cfz9++/OMhit/Bivm7YXEz8ARm
lq5Do2HU8Geg5HSc4yt7phjTIFW1edz4yRaMGCWTCJ8GTZHk1X7Ph+1QaBWrVmk9SZe0w9J6
s8ZGYlhOdzTg8GbBOsIth5GYHM0Dz7Md/GFfsEcZoeriTlIls0Y2ta6DXaD2h/4P7bazNlIh
ZyViLJ6E4JTyzzEO1UN12e/mmsw/WEi0cIlMkl15CTWFwaEloQ3pZ9/83F3gR60iq+cOtbQ7
E6i3QO1C9WjQtgrvZY9Giwgr9X2GyKI1qaoHoAJWqrD3OuOMYYE9UKAw1vaJoQr5fonh1yfW
rSfSaee40MkOqT7FdKAn7nggZJj94z1TX5Ooi6O2veocHjc6Bt7YesSlgWC7uEVQnGA8fB1b
nI6FsznWyMdWFlT5n8NktcFNVMjGGe4E6gy5vawARkZt0mVyJrEuR4RpAzoBRZbvqguDGTmj
6UwbULe+u27n7qYB0BC3CGWdtidqI/OtW/iQm/zondPWT95VekzlIbJXnAbSY3dAdPE5gq2F
R6q3ep6AeTVCw/wb+KFoPwWJ0NjvDsDQ1XZvXpudCyK9A1t3yjFZutdKUzkzgphwi/2ZfpkH
2yB2ej/tkwfyDI4i2cdUKNWnUe2dPiqlpr1CACgsQxHd6DbhDE817los59EGtoTQ/tQRg/dy
vV4Ko3diRL33gY92COwi9vJ9sPJQ4fxVFKuF3daJpvBYzvd9w2ZqQdQT8BAwSrA23K54ykXn
H3DEDieTxZbU/rfiaL5d/ukeOPgh2zXnq6jw53gdbO3Dy1JQax6wiJjzsC42s1ng1LpLb33g
aFxKTvFDksusgteqxG6OOynjQ9fEnkjnAwEm/+CsyAZ8UtjrCoAiP5IQ+RzjPR5yJmOFaqlS
c5axMLOPScRYpjgIwghA+tqFqLb6cFlaiuFOVqBRtou0aqqmVHXWirnrg6NMhjj/efnxCxT6
9Z1M04evzz9e/v3l4WWI92/KaaoQcfCY3o7YcYvkGov4KDmZ/YSgp6oxPVNVWbBvRMEqJGoF
XQnyTHcaIrM85Oa4wqXpyKbDJ3+y++LTH28/fv/tQWULNPphGKsYmPQhb4JZ5ZP05GlSdV4W
dHx2hS5DNwMgfFsUmaFqw2HMzGskVTqcTS6kq4B3oxLdgHHiLo6YkzeTIFIUJ6uw0gagbiST
iQWV5mVnD5FO/fLErk5EHXN7Mp8y+8NOWQtHQTL0af1X+1QtPpGT3VXDCo7x1qimrWr3hRaG
hte19vh6s1pzh55CA9O+WlysXSG61o3lgqDgcKDx/jwKC4zHfMUHhhjxa545HvGXkA9BOqDn
Tps0uIvZfIiKIms3YTC3PlEBL05pH4osajxhUHEuigYky9wqq0zaiIFm5QdBvXQ1XG7Wi2Dp
qwIWUL/Y6Gtos3DjI2GHCGfh2n0Pt44q58U9RYCuZiBL+ApuzIwjCkLUHBqCV2wNxtSSNibL
V5uZA7TJ2koesp2woU2W5ok9OfUipN9wzspdxdy+1ln17vevr/+116S1ENUimNkWz3rEcTB8
faOHcsaOlb/DuaPKGpKPmJnMa3L5z+fX15+fP/368NPD65d/PX9i7pJr4zgmJztjJU3r1jIc
Jy1acdNRSVFQMxSdTTVOWis+k0mBNlqClUZjpeswJksPCVyIS7RYrqymsJFBJ7TizU1fRst9
RD+7p1YP7/V60u9zPFxyFkqj0ZpeARNugsWFzfGqN1PqADVQ9SZhhSjFPmlUegheVYiFZGg+
kEkzUnOs/CRgIbZoL9tn6TVrwbzNTVZ7kh8DQdRc2fzngJKlqOWBXswBuD1kyi7rlGGQX29z
rXEYICC4P1kFqhDvCulrZNJwGyYWSbPtxRhaF3ldqwaMS4QmuipDA18SlUcA8DFpKlqycdXK
QDvTfZkgTG5dDTyxTUDI0SLpg0Abw6jMNK2vSnNhBQGecLCP6wwO5gsaqP6k166pqlY5DvqS
YUxvpAknf+EUUWbrpKnY12pEpfVJTlYJ7GSax6GP6mTd00bw9pDyYmwcQjH5DuuIiMia6mMR
hFPA0AmgYQMaavfVTohezWxB5a52YOlRDkkgCAS19Ey7eiS9Zx/eYDVrPZLRjvUYknS5h/U3
DgM3i0GGHoL5dvHwt/Tl+5cz/P7dvfhJsyZBp1WjtB7SVQfi7DaAoUMIWzQiSk+EuomgklYA
3uHK7lZThwboYJf0+r3IjBaW0xya9nvgKzx7FdoRmKTYxP1RsOFkk6cjsPsfnYiivIZCRTRO
REGbhhClcup2TSXiPl4GS9BUxzJuql1W2vUZNCpN8I3aNRkmBjglON+PTvCUiQq9FHYi96QA
L0SEobfICQ2gVnhDA+eewFeniw+DnI3HjXAnmuQY83Xt+dBlIpI0VyUy+VUpK/amoT2WU5AO
eOhOaio1lZSdmYPilMApYIR/662EfPO+zD2mOFD4qTHs8kRjhy/TkC4IqUGKg58tOYOVHtuI
s10HpoBk6omqYjv7809/UT2BqXEbKslgm+aLDGeWfctgIPrj+8vPf+C1vNTOTcLISEWcpQbH
ub/4yrhaMUcfsS0sYtcTHY7WuGq6eeRdRT2FiEXd0unUg9B2ocHt7U4BwOQZ0yhpg3lwoWt/
oMxFpNgiqq7Ms6jypKUiL7cJn3tPG1q0NFGJ+WYhPlb+MCkjlS+yy0AAu2TZZk4UwAHd+DbL
gQDHrTKzyLV5SJ4C+pTQRzO5Zu7p4COwiaYqUT135W6zMbNLG2/ozdo0KtstFuRBO9VifA+V
r8fBqWxDN/Cm1FLgPmiSlBejByJyj9Nm+6okKhUNcW0Ap60UivNccKpEpB5DWHiNtqnt4311
VZri2UGOXER7zRBJx0Y6kvL4om/m9F6j9yZoJE7Z0RN/waDStwS3Gxdh4iSzNYnPNM18STm3
CZYstk4J9+04scIytsc8I259YTAzlX09oIulkY7Pekk9dsWZbNE9sOCZaIUEGZB5BaEwtMB2
wUwTnoxDcbK4GHZ0vXKn2yyM9RUX22BmTGwofRmu+CUbU2uiOA+JRCCBVbL5Fm5wEpDMEn7u
m1Qfo0PmC37X0+j00FOL9qYdukF3OIpzknmmdLYJlxdfqpCBhsYYSgJzi8In+9HMcbAnwTjh
0bsmAXeieQIuey7SCoLNGvBRF2oBTwZvky1Iq4SNs2r2jGNaBDPOvS7bG2tGe/XsQTg1FsCH
gh8cRxdcnKj3gXzcU7sveL4RukahcfOWGXvX/Xg1r6XhydYXmW2DhomyItrgIr8sOk8oM8At
leTjw8rzTbQ3VOXQnixqzIn4KDebRUiflwGURKy2HuVHILvYxgLcYlBqe3vheQllUvjS4Qxk
14asO3wOZp7gzGki8vLuxlCK1q6XJUuA1eL3RUrVVGVVWGkE7n5+eee7y1MWU/ZLXfPGCatG
NV6sHkl/YcroO7xan7ArKfdZSf3FD8BNwliy33JN0G89ze7ymnVSShRw79FpE4m7VEc0zC3u
8Pn6rmR8v1nNFrN7JTcJMte+mKwjUZkQEykTh/EpGxYlRQGHm2lEoXbcpD3w5EnyxCOqHKQU
+KX7WeoxfUgjjGUQ3ZcHZOYT5gnRXblFFvLOZJNVhK7HbhDWAd+qjeFuRcf7zb2WVW3dp3F0
bXI4epNyDTSmHhIj6sA2jElrpLmXtlqx4r5tXZTBY9ccfCkkEQvHGXRTy2mGjWLP2UciYOjn
7rwkzMUInVMrrB6+O8rOzePBUWWlN9+HQSXKq2dktf8Iv2/HsSeMUVZ7AhypCGI7+3ZuOCTg
+B+MX4nigIZf0BBUK5cZbHQ2Imt3guTZ7AvoiiM9zw24L7AeoUF2vUk8JY/ZqC7mXqIotFDk
VH2rykOGtn6J/jr6WlY/bWYrPvK1IoC1HKFalttrNcFJ+znQ16rIo7tQ2PYATD5Vvir4pY7Y
m+/DlaS4lmeADGpxaNsDPHp9skWM91wH0420iHvApP/pNR0I5xV0l81mvV3tbIIeDfNHWS9b
xQJ4s9Zg/iUd1Nb6vEFDQVuNZS02m8CuI8pAmvY3vJdhPU2IYTI5NcX1Zr4JQxfYRpsgYGgX
Gwa4WnPALQWm2SVxBiOL6hyWAd9iLRRczuJKS8rRtLoNZkEQWYhLSwG9pMADgau0m6O5ZU9z
Rk7XKm4EtwGDQc7TrqZU8rfwVVReoKwPIgjcWSbazWzuTLIR/TTUxpTaszt2iT2D43sJWBz3
k/HUtyAtCLEXU3mRNAImfBZJu8LecMtTYe90uIelHjZ7ckdU1zV56HYSl44FjBP0e6fBqera
H+kYkUVtphhUENyTrbiUdV05xSovIN6kA7AqMFLLHuuSqHpkfjBN+lBfM0SdoqkuFEoZ0nvK
1HdC+J/h+YhBhnXMbAy+JCkiEmbMAYQ8ijNhVBFWJ3shaYTLPnTxJljyrPaE52L3Ixb4p/XG
dGhBIPxaNypD83FjDliDOkqx7YL1RrifH8WRul5gMV1ihikwEWXEILSCyI9HRLHLGExcbFfU
ZnrAyGa7nvn7sifZsBzQSABLc720+3TAbFnMPl+FM6a/Stxkqf36gMJdm9MzDfgikuvNfOaW
2WBiT8se2uwzedxJJZvSFPIuCcWJPOuK5WoeWuAyXIdWK3ZJ/miaBCm6poDFfrT6JqllVYab
zcZaHlEYbJlP+yiOjbtCVKsvm3AezLwhCwa6R5EXGWc3MxA8we5+Pgur9QdZua2Bw3MZXAJr
rcfRlO7IgGf1wVnxMkuaRnQO7SlfzZivjw7bkIOLpygIjGacrdvoIep2d/bkxMIXpuu8wpLY
eTJWZ0IpClOSM1HupZGJHS4XGNSg8mWbpNKQg9R9p12TapMtpUjiTPyVHmgEHl53Kus5Al9l
jcfr0qTx5Ig1SVhR2yT4eI2pt5iJVMx6UtKbGSUMnF8KcXlAe5PXL29vD7vvvz9//vn562cu
vLeOo56Fi9mscENy91fVdwscG09nMLRWjQvzmYc4J3IYPtsZ7SwU1REpqDXnFCxtLADhjhSE
pDyrowyWJzAkxtwV5YXONATc8AIdi5rPZm1ltCgVTe8NPQgAuXk1ik9oDzUFr8cEbNZRDK1F
bopwisUFdpA504T0+CFr5bGj2stSWRlJVn7FrcgNI57JuKRPaGVhNB2fxkCQNhkw+HGcJ2dh
WggUtEz12MWShlJTwDyoqNZczdjfEPfwy/P3zyqsqBurSr17SCM7EoGGKsaVgduCu4KLU5E2
WfuRFXaQQNZJEqdmRgINz+D/Mqmc7zyvVtvQBkLXfyAGHbpNcR45xdbChUlhqlhPBXno6l3+
6ELGC5o+MMW3P354wyc4GRMUwJexRCPTFKNa2ckiNA5T5FiJfywKqZJRPBY+GyxFVIi2yS42
0Rj48hU3ptFf6c36HAzaC5JDYvjrUDgmBTDZHQsrQQxOyu7yPpiFi9s01/fr1cZu/Ifqyuc+
0ujkZAXRGsDWDZ0xer5wdPrNx+S6q7Tb3XSH1cOAaaiXy5DnqynRhg9aZRFtme+aSNrHHd+M
J2CmPZISoVnfpQmD1R2auM+O1aw2fHaikTJ/fPQEwhpJbHUjT6HmvcdofSRsI7FaBLynkkm0
WQR3hkIvjzvfVmzm4fw+zfwODRxd6/lye4co4tnXiaBugpA3CRxpyuTcei5vRhpMm4Y3wneq
k211FmfB64kmqmN5d/yzJ7nyWB5NjYJ9itcsT8NahF1bHaODZQHvUl7au22C4xfVY94dRu1S
5MBDAOx6nCpC42TSZMI0KlBQUdd5opptY3ZRsdyuF24l0VXUvCGRxifI3vpCpGmSk7xcLnxE
WYXHBWe3BzgwUSuFG4mVbSNJpKJxt5aAI4LAAAMRWuQVbzcx0cw568IJHRscyQiNql0j2Cr3
aciJLhO+IVYiJrgrWAywtHlSVC2DU4KZiDiUzOLknJUkKv2IbAvTPW8qznLOthC0+21kaOov
RiTwl01WcW0oxF6Zm7C9qDxnqobT0lCaHUlnM+Ew2Dv/6f/H2JUsuY0z6VfxcebQ0VzERYc+
UCQl0cXNBCWx6qKotmvajrFdDrf/iO63n0wAJLEkWHPwovwSQBJrAkhk3qoCfpClPp3L9nyh
eu7aHVjkqScCC4Bag+H3fsGmPtvsY/00UM1xZFUWWx2eRzZXWlz8FidBeZlnBQ1Vvdgt29Bp
1C0OFeictbCvol4xKEwPB/hB5ryeu+qYmK2gb+Rdo81B8gtxxhIamnuOrFhup8yKxN/Rs71k
wKMTnIB5Gc7cD03mR55Z82U4ebDDHEf9CY4UiDX3awWzghXS0dCMpySJ9yFULU5pW5y5HyZp
eO9vgyhzi7cBrSOijlYFfuqDzPwarvccyrLX7zcVsCgxivPW13A2/tXOorOx4nEbxjKwi4El
EUZxKxmceTxM4/u9KT+P7dSI2xINeCwz/fJDkPPG96xM8OVNjU0m28MWcSjHy/+rDcaexVHg
pzSzXidTH3gTDA9LyItjQ9fnx8iLQ+gNzcWZLTClUbKzKurWrO1sIbz1HB1g6MZseER3dGY/
0HiLbA+y3bsWmtMs4gYqqj/dNVNNOVSnOtxZuzhJ1tUAAVUNg0+82O2ahZpFqkYmMypKUHLQ
cTn875AR3b8YrkEMLSQ6hXsrzfniaOZzZBQnb2Y0oC9F1q99x5SZjX1T5b5ZyUNT7Yz3i5yk
RxxBCmsOBuXohTaFz82dQQ8K6VbT5FdXQkkJTIp6kSIpO5MSRfNxx3k+O6p+796Z/gh10Qgv
2wYH/3mvUk81GhVE+Fv649bIfV6Bmm1S6+ogqOtVJqcbh6EGKl+/0Gq7LI4FeOZllgdfdifE
yHpaDLGDZbQX3QvnISQ4ZU1puiSfafeWRRG9iV1YaspnzYKWzcX3HpTusSDHJpU3iPLommry
1acqcfolDsc/P/98/vgL41KZTp5H/SXylbpuvrTVtIe5enzUvZlxNwacTH59XXBvq5exw9cn
1nEPe/n55fmrfe4pFR7u2j5XB7cE0kDVNhQirMH9AErdWBZz+BGaz3AZr0J+HEVedr9mQGrJ
iOQq9xH3FA90Ibl4yeiQVHPfo4qmebhTgHJST0dVpB145FD2x45Ch0s7Vk25sJBfXU5jCbsf
0h+lwpbxU+L7VQYqpb7rptt0aZCrzocxSFPSZZxgwsBCq3c+4Z799ftvmBa4eSfiHmoJF8Qy
BxS4rkilSXLoy4JCVNrRzPU9I8MQC5BVx+pKpRLAnO1GBnneqnY2GtnZu1juxxVLpokqecac
ZxKSUU7G78fs5Ig+rTOS/UHBUJHH6czuoirTIbsUA6qovh8FnrfB6W4SaVTUs/sbgg85kRqX
kjfbBZlgyInv8Q1w6AOrIoC2jtEwsEo9svpe99vycp6qRVc9S5TgTY63vyNHW20eu646VTlM
0fb0YrNoVb/EedHmcSOPJh+H2jjGkhDpRY+b2o+6upE/5nVW6FeA+eMTnuiQXm66KRN39LV+
eAZkblGlPzPGC03cAzXUi7IZhI2/prCSLojNu672fmLqLVb31DX6UzMMJUKbjfGrSPQxMKpb
EUFluuduUZt4U2NEJlYQ3gpQkvl2dD3ImH3z0iYH8hW9u1dVoHLjEUhRa1snpBb4h2+PDYDH
Fy0074qCjiEG7pZbFQVDxzktfVYpiuQW4uLI70j7leF8qhcSQYDp2Srzlo35uXCcjQqpcH/d
HakoWIAfLHnWUs836SSCIKHrSFRItbg6K2q8PFwB0+8mHm1XwtBlERskcgWXAejBhaHdwkZw
yqupJJ978kUtdJRTfi7xiBE/UengOfzp6crQY2BzTse7FYnhOidOsd7kmu+5qZGosLWXa2ec
aCFslaFg9g06UnPVVzASriPG1R666dGoDCiZjWH41KthMkxE38PCKlg/GnPBTHOFKF/w7qhO
7vbOYZmoZasMFzZy1+5LWFdxmQsqhn0Dr0qJrtN4pXagtZ8qbRsPVH79g3G5tOEY5Fsh6Th8
hnT0lTSg4oGHeGPwn6+/vvz4+vIPfBxKy4OhETok70TDQewcIfe6LtsTOaOI/I3FbqUaj0tm
oB7zXejFGxn2ebaPdr6dpwD+IYCqxRmfKg7q2lFUUb6RtKmnvDf9HM5RL7ZqU89KxuLFjaFD
EiajvS49Kfv61+vPL78+f/tb60ygFZ66g+qPayb2+ZEiai5/jYyXwpY9NkZrXTuEjB39DoQD
+ufXv39tBlMXhVZ+FEamJECMQ4I4mcSmSHSfe5Ka+j7lUkai90b3/cTnt9ThpIaDjD7eBwhd
M+50qVp+hRUYRP6oFTr5RaezikXRPrKIsXrSJWn72BofV9LYTiI9dwLHmwXnEroJWM5VrnVO
+vfvXy/f3v2JgXhlgMj/+gZt+fXfdy/f/nz59Onl07vfJddvsMvEyJH/rWeZ4zRpD3JQUKtT
y2Ni67tJA9S2+IjZWfGpRng2r9r3c3BgheGhbGAg6rSO2wroNOjxhGd7Ud/NqPqyQJrYPc21
Vf4D0/530OwB+l10+udPzz9+uTp7UXV4330JcrMVi7qljvUQGrpDNx4vT0/3ztS8AB2zjoEe
SG2zOVy1j8Y1N+8ZGGtRGgnxL+l+fRazkvwMpfH1TziyypwgyMlAl5KNF9ITA0J1djV6AifJ
MFRWRXG/k04vACsLzmZvsDgjLykL8yJXqPQEHjABKGsI4VUzvCkAfYJA+tZjvRp148z0H9pS
Lw62YXulu5JdyV+/YJSrtd3O3Ke8ejjW97pb5Z7wILpuwcYeOazTSaTJsmw9BrOEbSH69XyY
FVitPAnyE1DKsHZlkYN/KfMvdED7/Ov1p730jD1I9PrxfyklBcC7H6Upet3MH8iGt9Mv4ixL
/kpoVKNBZID/KQfUwsWtDYi+R2XId6AZC5MgIOh4ybcn6KpH3JnY5H0QMi/VKl1iGDKC3J8u
DJMfeZOdKRub40Tl2OVl3ZGBR2dxUO3N7BxztktqdfHXgL1HFVZ+uMAcfBgMD0lzrUNf0c5X
JQGWCjZyd6Z11YA2FPlLWKDuaCwvIhCzFkRgzqUaPuALQH2XiM3peIbMs5rjOak02TsWRVvE
zP32/OMHLK48M9V/nJoy2RGhODTJ+TGgKqIgNwXpKVfo7MIxlSFkcct6oyrnQ3Y97+OI/3g+
ZTGgfq660Oo5nIatGjzXt8JKwj1mXKm5g8PNIY1ZMhnis6zJoiKA3tQdLiZmnUdLckedvM9N
m6u7Mk685cVeXEXrGdk+AIz2uR+lv7x5w+DuFYuyxqkv//x4/v6J6i1bprySoaUO9USj3O5C
hdKTcBNQx9u8lcFhJSkuF3FTFm4yoOnBBsPYV3mQ+p5z/TbqRYyyY2HXl1VbgWd98aFIvCjY
qMVDsY8Sv7nRlu5iMNEaHsfeZ+3TfVRd4XKyqcKKbt+H+11oj4Y+hY0QbeAsG6Uw/FDr+JBH
Y5TS1r+yylkceSltsLxyBA5r5ZUjjZ2DgON79dJfkD80Uxqbw4ybgtjE/V4LWko0utymVm8N
nsOYkma1sotW9wqdN/imYHh8JCD1PEpUcpGHc8CHWeew5RAPG9hhu7NqSvySHZFMnxY704Pu
jdon89Pae3ZV1q0P6DAh73VFjrPxgHrOTNil7+tHO5Wgb+idGpvL6VuPPiCQUfskYSUkvAUT
iSRupcPgv4JKJEINGr3c4yThxdqj5UM2wpoL38KCJKUnRo2FPmfQWGjri5mFHah791lCQFXp
Zvf8dKI5y8OHQA+oaAD6yaQJFuP9Ak0BFag/S1q+Kdt76nmGQtcsI2c6LCF+4u3ciHZ8M3/4
bNa2UTcV6zE5lRpyTkHKjcQ4yQYJldb5LmTNnDfCJk89hnFE9w1FRn8XJcmGkCLwRSd5Y/10
TMmH241uFgaNu/MjagbUOHQ9XYWCaEtQ5Ei49k8ljqAttvp4cwh3ibIll3S5BiXU8Dxll1OJ
h8nBfkdNejPfMEZeGFJyDeN+F9GL7MxyyZnvedRSv3yc0CaUDb7ue5L/hOld07wEUZ5+nIm3
kq0IX0bYCslI6kWy85X1SKNrG8UVaXzP8UpH56HCCOkcsbsA+i2RxhO+LYRPjgmFYx/sPOrr
x2TyHcDODfgOIA7oDwXI8ZZN59msSRYmHpk9y5M4oHr0wjFVsANu8XJ6HLqaEJ7bLZGZj1O/
lTW/6kSXy3amBYsDogYL5oO0Nr2KHmAXdLCBY+KnXnSkpEMoDY5k2LaFJQqTiNnZzhbxmfp4
ZUk1srG8jNlYMqrcUx35qcO4aeEIPNW2YQGS2MtIckBQxTF3S8lwrs6xH1KT5FKjhyYrCRGA
3qsRrRb6mCY29X2+I3s1KEqDHwRbAvAwS4b/2Rni0/BWfxcchEASkBoJnTO5eCgcsLARXRCB
wI8cQEBWA4d29KKg8Tgequo8W0MNF/TYiyNKCo7523Mp54np7ZnKs9+aSoEh9JOQGNeAxGJg
U7nGcfimdHG8o42bFY7IVfKe6ClC2D2VJO9Dj5qFxjyOiGWybtT7yJWa0FSqCzUJ1ZebJKWo
KSEzvs8lqWRp1FCumz25ggCd3nAoDJRirMBREJLVBsCO7BMC2h43fZ4m4RvjBnl2wVaXbcf8
jg42moqNug2fxPMRhkVICYlQsrkqAwfs+YipG4G9R9RJ23OviTbAT732Sp/sG81l58JHk1EN
Cqied0A3fsfSBmAduOfHY08ucVXL+suAMa972oRoYRzCKNhUP4ADvW0SAgw9i3YepQywOk5h
faZ7TgDbPMocRFsCyIElgPWhlmNGD1MyNqYxExNfBEjgiemRmuEAI0Pd6BMWNaAR2e12rozT
2HHKu3SaqYQFYnsoweZpB1vr7akAmKIwTijPDzPLJS/2nkeKilDgODyeeaaiL/1gayV4qmPN
z+/ykbfGpS2x8+hvTzbAsdmLAQ//scsEck50YMusY1F/mxLWT7Jjl6CS7jx6U67wBP7bPPHN
iLlkitewfJc0lOAS2RNzmsAOIbXWsvwcxdOExmeN/iZFwQPyuzkUbg1oNo4soTQ21jRxTNQy
KPV+kBapT0wCWcGSNKD3vFBz6fZc1mbaPaxKpyZ1oIcBrRWNeUL7iVgYzk1OPsNdGJrep9Ye
TicXNI6k21mSEzLSSX2p6SOfUEuuVRanMbHRuY5+QO2fryM6BrTptzRMkvBEfQxCqU+7x1B5
9j79bkfhCAq65D1ZixzZWiCAoYZpfCRXVgHG5EN4hQcGy/lISgVISULGlcgyoeL96x+0IZg9
BNDo1HUIztUo1TOIJGAEsbFi8tWqgZVNOYAE+BBOGoGLKKL3hikBfySzcRg2k7ujTcM4negB
AEM090S5RSkMxE7dFZ3y9vdbpTtCoRiPWTXAnJ45DIyoJPgm8m4FZ7WSuHMnGDflRQZ0z87/
erNMWjzJmPcXpVEVq4brcSg/zNBmGRiRyBVEaeZBg4W1gT50Q/XB7kvzIwKbYpgLLuS2u2WP
3WUkIPHQgptdSw+qBcGFDoS4gT1m4lnwbLohnCw+//r4+dPrX+/6ny+/vnx7ef3Pr3enVxhG
31/1kbQk74dS5o0NYR3ZLhlaDr3WQdkdR/JxhcTlWTJRdfIVvQ2Ie9KVrN95LrLz59AYyTfP
arr9b0UGshVkTARxwWYXLl+f2cBTVfFH6zYyv2W3EWm1Qn38jcqojcbYT8lvxxOEcJq2qpp7
brBznV/S20hWV03iez7W0Uqt4tDzSnaQ1NUsccw7R20KOwA9mwb6bRbMec832r/9+fz3y6e1
Y+XPPz+p8djzqs+pz4dcjPBG8x20K8clKfCseVILGjpu6RirNB/GTDVJRRYmjT3VVHmFvpHp
1DNq5FJUnZlmHUsKg0NQ8W5nCXZIl6wzkZhuUHbIm4yUCAGr0vkzgf/5z/ePv768fneGd2iO
hRUkGGlZPqb7XUS6y0KYhYmqfM00zeIQ+rNiCqNyZmOQJh5dMHeFg48rjUCkBNe5zgvKcAs5
uCsxT9WkOXU2sDEE4p5PKJrh+OtYWEaIK808SOZ1ixaI5BnAgupXlws53Uykn7+tZGq3yxuC
35xPZiKkRoHbc9rMQu94ZzgmPcDNYKjXlXlVz2l1Gxg1mvvhZLaeJNptcq5i2FTwD10B2E/f
+4xVuaZ6IxXSG49rJFj3AKpu6ZDAND91x9l5n07jpld502kx8xBYjK+0WkvTvkkdxxcr7q51
jscedacu+qO43jeLFdf1Dr+dK4PDpebKkFJ77BXWNzsLPd3Rxw2SId17yTYeuCuE4/s30u/p
oy2Oj3G4lbxsj4F/aFyzjWZEpdBxsdcps22JMk/OTpS0C8SFavglxEwX6y+VOBsbqDRhi2c2
xvCQklt3jgnlRs+HlTk5V7Nql8ST9YpC5WgiPS7DQnRGXEKGh8cU+q8xJeChkZpVdpgiz9uI
5IhpxqZ3ymYY3SJtrO5ZE4bRdB9ZrrUHoovNpEZLkzS1cqmbi/nZfVY3meMVbc9i34toQ1Vh
MEkaRQsoMbrCbGFpCiDo5I3mAhsmL/PXwEeGrslG4pF6fKbkZ9aNNN0khduTX6nAAZEZUKmV
FzCYYR0mH+Ot3nnhRucBBox3uNW3b7UfJCE5MOomjBwecLloeRile2d9GlaqfH6Z0shSE+ou
P7fZKaOtwbgOM1RPXZuZ67v6EU2684zV2Dz+WWlUPSMSedtFzLa06kTTnRvcdvq0bazKIq2c
HMkD11Qmd1TGJCIfn6jyLXb2kjjvFJeWVR/eujTqdXu33giZpMWF+vIpKyRCeV27eszIJ88r
J/ocuAifIexivIhaufC0hh/WLHybmYJCcUrViNMrhFuBVB3cClRE4T4lEaHik9C8dyCkFnuI
TUkXXZ1IPiv9mxlYdnMqZG0PlMabNWgSUdVcDQl8jxaWY9QVgdIpsjYKo4ise6kXEBkLbXgz
Y8FyjUKHbBWr96FH7UA0njhI/IzOAabAmFwyFBZYThNHR+DYdkfgVrSOjsAXpG3xrTVLh9LU
kbOYvLezBp44iamsKc1cRyPH0wiNK4132yJwnpgcf1wVjgKnBOk+oWw0NJ5ZybcxuUUznD9q
eJI6k6bqbaEK9T6oLjTWRzs/dnxNn6YOJ/M6E/mURGX5kOwDx1jBrYNPqxkrE2VSTrEdL08Y
uv4ttmuaejGlKxk8KdkDOLSnoVtDfyV/toGvizcLXXccNrTsLIjcxe5lM2sWNH2m3ijqEPNp
KGrSJE5IaN1lEBKx+hQ5IuMqTKaKoUCQuafeW2pQGuzIlQSNInwt5JqGxUFIj2mh2gdkxdub
BBNLyamKY75bFrlXcGHkAqto/zQmVHyiPa74aveNYSGU1M0WM/VdDRFqqkTyddOrUNpurI6V
6kdpkGzfFEKT9evvulLdqA/57MBa98s73Nsy3/ZtzYcXxaIyxDPDKgDQ319zha5mybr2cTtP
lrWPHZkrXkD2jnwb0DwfDsV21lPTkxlX4pGCDQx509gAr1N0+6VV6ZArXr5dNVo6IohXqCNN
0bmgjZikjFuY0w2vqBwrYpqSegSlvXJ2AuEK1YVKv1nOHlSi50d6GcIWHYcya55cUZRAtlM3
9PXltCX+6ZK19AtRQMcRklbkZiSHHW3X42s7oy+Jt+XuGhGPOx0O9vmatoEK131O1FEqCDsd
uuleXGmzER69jj86NNwA8ruZ08/nH5+/fCT8XWQn5QEE/LhXO3XGR8q5vz+pQSivpwy9ZlkE
1NPQTRD7w49nqFCd08CPe1P11b1Q3YQgtejv2WWaHXypg4qj/PVQQ71aWGFW1kd8B7mOUsQe
GiadUukFIv14WCGiPJCpYRiFoe/q7vQIPflIvUPEBMcDOmJc7An0ogSIMeuyuu7yP2CR14sT
DHWZ8bjOaBrm8t4HzOiK7Q5tTUf30z+jxxXEIfI4Gg0DBPRdfO+zE14gqo9tEL4OWUPWJKaj
6KeyQefzztp3YZiOnaEKSPRqSM3yc7k4A8IjoZfvH18/vfx89/rz3eeXrz/gf+jmSbmAxFTC
mVziebGem/CeVPvxzuwS3BEWhvSGTfSe9GhscUWeepazJZswbxoaLeqlTKeSdZGGrCgd8y7C
WVPAWHTCbXe5lhkVRIFX86k0KvoKbaZTLkVt1lJGXlDzYX/KToFuWYtkmGOHC7t/KMlwDvwr
82xAs4hzoftXXbD6Ssb4Q/zDZHTiQ5efja+Q3k8172ZI77OWe+DkbVF8+fvH1+d/3/XP31++
Gn2JM2Lw4TuG5Ybxr167rwyHroQFHne7QbIvXBzj1ff82wWap44pHvxYis6qpqfLLeuqyO4P
RRiNvnpds3Icy2qq/o+xZ2luHOfxvr/Cp62Zw+zY8kvZre9ASbTNtl4RJVvuiyqduDOpScf9
5VE1/e+XoF58gM536JkYACESJEGQBIG02YPHB0u8gKjbXo3sBK5bm9N0PfUWEfNWZD5FW8Ig
IPce/nfj+7PQ7LaOKE2zGIISTtc3X0N8+R6pv0SsiUvx5YROl1PHfnUk37N0GzGeg7PePpre
rKMp7rGqiJaSCGodl3vxgV008x0vPMciaXaARL5NWs6XS/QmYaTNYpbQuonDCP5MKyHyDJNd
VjAOD6F3TVbCje0NwcWX8Qj+iU4rvaW/bpZzNKT9WED8lwjbm4XN4VDPppvpfJGqG5ORsiA8
D2hRnCBt6piDCK9HQU4REwO2SFbr2Q12CIjS+p7j21m4l63/spsu16KCNy66NMiaIhAjIppb
aqWbFCThlRixfBXNVtH17hlp6XxH0AmgkKzmX6b1FJ1NCpXvk6lQw1xs+elGPUjAqQlBW8op
22fNYn48bGZblEBuiuJbMRSKGa8dH2qJ+HS+Pqyj4ydEi3k5i6mDiJVC+KwWpvt6rd+1KkSw
ySNhvfAWZI9FshhJy6KKT+0Uulk3x9t6S7DPivmSUyGpOs+ny2XorT11dTUUtKbzCxZtcZXc
YzQdz/p8rJPg9enhUc9BLdcsCKIXoVHCpdXVqR0BSvvwjroFJ3R4AxtK3AVGrpaQfmPHcng/
EOU1nG8Koyzwl9PDvNnguzy5qAvbIy/T+cLx9KxtOxgOTc79FXrxYdAsrMklDCTxj/kut46W
ht1MPZeZBFjt1V0LhCVs7BSNX7ljqVgdd+FqLsQHCW1dZm3Gdywg7Y3n2rbjDDzugIEQ4o4c
klAoyU2+cKp/gefpaikGjG8s6VAyj2Yen6ovd6UdJfM1ijlG0no1X1zBrn3VZ0nDRrmOkCFk
o8N6ObMmrYK6smUYrTAbCMWwCWnPJrUwLVNyYNZ+rwNjTtxqQ4sw3xpW2zaZedXcMxRpm83G
EH60MQRXzPRb385sdY5hy5C0VmpODvjdqmxk3aYBgoNIsW1FzTphDNC0lHvK5rZixd6ggtB+
Q4h5qac2r3c/zpNvH9+/i91FZGYEEjveMIG8woo+FDB5xnhSQcrf3S5T7jm1UpHqrSJ+S4/1
A+XDKYSGDcW/DYvjgoY2Iszyk/gGsRAMsmMGMdOLcLFJRnkBAuUFCJXX0E1Qq6ygbJs2NI0Y
wd4C9F/M1LcaIAC6EVYSjRrVXwqID1uixXIE4ZBwH0OOLg2aiFWg2+bqrGEXAVWF9J1o17pz
y4Pk5K5KY5gnnvlbiHCTwXLVrVS68E/CAvS0fHIq1Op8IlYFSKtkyJYlvMTjuQtkBYPFhUQz
JCsynkWGvyaMYxmp2qhCF77a5XE6UlgBvSwKvBMLdiAWQHcZ7YG9O4YBVvlq0lsvsFUFBg4R
Rpje+BbUJJAlNxVWNoqEjKq3FTW+02Edje+wVoPk8QMCclC6pNcibcmQ8jRTnSYGkIMRKU/m
7yY0JQrAPqan2Iq5RoQkww9wO+xQBxcRxy4XAS7XBKNaLfDaGO0oSBii2SiAgnGTK+PNHL1Q
7JGq3QHDnGZCRzK99/anQldvc23l7ABtzWyw4b8lwIcsi7IMv74GdCkMS/y6APSisA7Fiog3
iRR741t54uQUkiJhKbY4g3BML1IJ42G1cQ6KKsKP9GEaB8IwqcvF0nFsAa1uXawcE5DCjitL
9EUb4sR6hgLsYDLG4zYyJd9jrw0zaYQ7sVwo3SkWsULKZz3T9mSoKSJXsuDu/u/np8e/3if/
PYFZaOQ1HJYyOCwJY8J5d9umtgdwfVRepELD/HQyGCk6hYC2eqTKj9e/Y3prjRjpyXDU3vGN
SNP3ccQgQV01pO+jDhkGjeoSpzRmdArHmLe+dFeZS3crNR6UgbpBMbm/XKKNNb2aR4ztmz3i
bK8ApRGW15/S47gruFKdg5D8Os4xxkG0mk3xTxZhHaYp/s3OyfOTURZTPAfLJ1Omr4uwPOFB
s6IphOUitDpqZ+qbObFpzPRfjTynFEZqiiPEx9QYsgomjKvS87RwttYNZF+MZ1WqB3BL7YSi
OxbZ6mFnRBpk0RhntCxoui2x1CeCrCDHsdrVTt3XABMjxjn/eb6HLHhQB8vaBnqygBNLsyok
LCrsAETi8lx/UCeBvMKMXYmqxIYm1msZ0HjPUh0W7uDY1mQc7pj4hWWik9is4IQVVqGscjl6
Azoh8Lz25MSH8j7a9clTLgx7bn5S9Ms2S+H821GOwqXtxixGY2q83FORX7U80W33JgErrKGz
3RT4ratExmIrnplpNxQC8RV5VO6oxv5kdfeRxGWGqwNAHxg9yuN6d51Ohev1OqAZvDLWW85K
A/CFBOrLQgCVR5buiDGu9jSF7AtaPm6Ax2EfilgFUku2YkeSHfA4sxKdbRlMoSujTViliZA/
bpq0JDFYSQ5hJOS0EXbATq+p9E3Z6jnfJDULiwxesLu/lkG6P+qaU5DMmsnxoH8wLZkOyIo2
ybDGPBf7aDGRxZDDNyiShpYkPqW4OSoJIKunY4cj8TFJ5UE+mo1dUhRwXanXV2gKLStyC5N3
GGYrZGBOyK/pYM9LShKrUElpDA4y6L5fUlRpHquHG7IjE0OuW7iwIpwpg3sAtSpEZQmJQ79k
J52vCrWKlOyQGZAs59Qe+XBwvXUpp3IHGfaGXDwdRoUi6g4y6R6bnOM7G6lZGDM90BRszdLE
qPtXWmR643uI1fCvp0gsbPaUaYOwNLsK99KSi1hsxmPrs8wiC+wQSl5f+QeGAgVMrwx/24jo
2QUXAc1fL++X+8szFlEGmO8DnDngEE2kRLG/8gmTTMvkLlNSYXaOTKzHtGj5Fu2QRF7lqlQ5
24ktIRwoxrQ76FQsIIgvYB7ZAtCMiAWwKs6ZmYy2pU1Tl10NeBmWY0d4swsjjaPJyIjnoOFI
mgprMaRNSo+9B6bVzcnT2/35+fnu5Xz5eJOivvyEB1RWF/ehcMAqZhxX9pLulBJ40Z6wVNhK
jvZl5bY57oR2jBkvzTYBMoilkc9Lc5Ko7avKTFiBueihNtLQv7z/0sZd2hulcgRBnsJwzFMY
mcap7JfVup5OLak3NQyIFqpVVcKjYBsS7Np2oLAzzwGKjkxNaAG3A6LlTWlJR+LLEjpVunM5
vivJNjzGP+moUVZX3my6y7GmQkj92aoGlLPvN6LrBAOTxpxZVpt7qB4wRMNgOYXkVIz92exq
pQqfrFZwW+6uFfppAMpUEUmbsHkYSV0cn/D57g1JnydHZmgIViaUVpetSoaGMajKZNhGpWJJ
+t+JbGCZFXAv9nD+KbTW2+TyMuEhZ5NvH++TIN7LpNY8mvy4+9XnR7t7frtMvp0nL+fzw/nh
/0Rjzxqn3fn55+T75XXy4/J6njy9fL+Yc72nxNYE9uPu8enlUfG+U+dcFPrqLYiEgX2o2UHg
Ypwb3vst7IANjxHeJZv3EWQqltNQyUPfovTYMS3MODyX0z5K+RwB9eX19UwOjqjALn6lAjyG
Bi+AyKUAAXdfaEP7PN+9i375Mdk+f/RxoibcXOC6op7FzNOYbe8eHs/vf0Yfd89/CJV3Fr39
cJ68nv/98fR6bjV9S9KvgJN3OWrOL3ffns8PlvoH/u4sLgMJJGbfiz7nnEYQ18q1AoDDBovU
i0cVqgWC0xBWj7a5PlZTFGirmgEB8YOKLNZmthQDOqNbN3RL+bR55UM7GTxGhpyc2kSDbyLG
gbAihBhn11mQYj+f6W/uFGx7EvJZXcPdHE2eoZDI9XtHiTVBOnzEtqy96KCmlz36xVysHNgR
kErTHoU0ie/4Jk1yNKuzQrIpI0h3n+nDokMeGM8KFMNycosjClddoq3VcDdVUzKU/cafeXPP
hVqqZ+jqUJP3NY6Ksfx4vU6sqhxF9/TExYYb8jF91p8d6fUv7WPOXJ/KAnCdCj+RXxKWTeWS
kLwLwjEZX6/16wID66O3ySpRXdmbgA6XkkNibRpaVB57cz1oq4LMSrbyl1jIBIXoNiQV3u23
FYlhG4IieR7mfr3EcWTj0jmAanISReZZO6a7aCG226wQU567FH9Pe0qCzKVQS8xdUNMDAS2+
wEskrDG10JIZLoPjkbhmRZY7jgdVmiRlKcW7HMqHmYt7DVv+JvlUCx4Z3wUZetOqCo9Xs6lr
8N6WmKOiQlDl0drfTLXsDqre7uyjYVXUt4jo8kgTtjKmoAB5Kx1EoqqsarvaB+5U2jHdZqV+
airB5rLerwzhaR2uTFPuJF3jDDsgkucSZmXk6iD2kq6BIO8iOqfVkaGENsmGyQS0bQYoQ7ZM
7FSDw5aYH0QDncnNQEHE3v3AgkIPVyIrnx1JUTATLB90WdtFTst2H7NhdVmh8XJawwiu1DZH
neVJFDB0Df0qBVV75qdgvyr+7y1nNX6uJYk4C+GP+RLNwaaSLFZqXgUpLJbuGyF5WqBtFYLP
+F4/Zx5Gcf7Xr7en+7vnSXz3C8vcLrdpO6VT0yyXwDqk7KDXo83MqKVnKMnukAESAbXGZnDq
z1CwrfV8ajh5KIdfjqrrTLZEWBK4filPOeqmCsXABG74kZVaGL1EDXV2LDi9FfMZAZovaQRN
E0DibQTUnQiNuzeI0tlURF1Cgbjr2fZ0Kgn/5NGfQPn5AQ4UNjZ3AOKR2B8ioEbmfw6F1sjU
e94Rn4eabQIIYb5nO/gLkeZYsMsqrZXsWMblBjvflu1mm0SQ6TUJg7WangxAB3i5Gmm9IcFV
MNfXBIBWfOeqayWqxFai/w3+cHkK73RyU2o9QhvkspK3O1tUO36LDkbZ1M5d3Di9VCiSUh1C
NIGY49rVTw+z96RKqm3+/nT/NxJVtS9bpdK6EStHpfoLJRCm1hrHfIBYX3APTbu+spsTzDoa
SL7II5O0mfu1LYSmWKpRWEaw1m32d5XeQ74NR8RiYVPmAfxq3YEwWNNfEI4uRoALClhEUliJ
d0fQx+mW2lcL4LaBXCRIDoSUM+8Gd/1qCdL51FveYLflLZ7PV4slMSodhMlqrnusj3DU4JZo
GSluapWSYMzK6rGrhWdUAIA3aljSATqd1dYH2tTZzi/oQSdbThD8cGHXVICX7prmyyWSy2PA
6QktRjC2cg/YldX03DccBHvw2pHNpsf7jpc5o4zQvKUDejW3RduFygPHH4eHgiRrHdSufB11
cJMoJMZcO9YiT0sh1baynC/VWE3tGDbDMkvoGJxJr0oZEogg46pOGYfLm1ltSwLLDmuO8uU/
VrF9GXkrRyIxScD4fLaJ57ObK+LraDw9GJyhHeQh9bfnp5e/f5v9Li2hYhtMOqevD0h7jd2G
Tn4br5J/V9wjZReABZkYcjUjjbbCiWvRj1bjIW6fU9Ayrug4myydsXKEsB3wnp4pZhBH+fr0
+Ihpy1Lo2y0t8HHcGjcsgAfGuO8RE/9NxUKcYpuQogwb7WEGAPoFYWABwF0oFvQTXgnAC1yZ
7XDfHMC73hIALj0kdHivIwCTp/6NlCYNIGVpuWlzOTh4SQKxtId6myTYCKShwpuKURmuwt2A
4iDNVqvz4OYZKo2sdn05EgTLr9ThoDAS0ewrGlJuIKh9I+xij3HGbOwIIg5uyljRFtOENBX7
Rsx7RyVcL3SpjnAzB4KCXa1xPdKT7E6Jv1yhkcc6CiQYYIeBZA83rlhtHU3Bl+EcD2TYUTAe
z7ypb7etRagR9Q3MysbUAr7E6ipzAqLLqkbRhrHES89X14eQJLoqSkmhRYfrJbmYlf4UlbHE
OBJa9ERIjNgBdTv3MJenYVLZAcn6nrODZ6soI0mqQcGF+XajumP3iE0yn6nHYgNLMbtmqAQE
Zumj0TyVot7SZkkTYcei0644CAxmko4Evj9Fm86XuFfmgI/EhPYtNcVzZqgpVQ3Cc9cUXNRY
r4eB/u7lAVFv1hSfa2fzOnzIAoUNVm/m4aulJqab0LNaM1yjflK1mecjc1TAjTe/KmZ5bQKB
QvOXzYYkLD65NB6aOEIjuHEUXXs+HmFfpVn8BzT+Z3VYL9A+8xZTTMmb4XX7Ab5h6BAt97N1
Sa6N72Thl3p8dBUzv95AIHEFFe1JeLLyFtdXnuB2IebttUmYL0Mt3mUHh1GJagp3+MNx0FvP
THrc11N6m+TWUL+8/BHm1fWB3uVPQpRdKf6azhB1N6b3sGfd2jipHF4c8PPLm7DX0bpEkILF
CgE4Qh2nOILAfpYNYbdoutWeZQNsCLy9I2lKY65juzM5BaK6GMDRSEHEwNgKjEJ2bEjNgFp9
5cfh1lYlA9+eGG4UiJorNo/rRiOTL5t2QNYk26TEENqn4bOGl0wHtcm0wzoB7Co4iroFAR12
AcCFXdyWGOQePj+dX94VuRN+SsOmNBolfnQHtlb3NAVhkcIyqDaKc2H/ZWC60cJA8aOEKkfu
bWHtG+J3k2QHaj3H73B9gDtzwAFuR4nDudaopbKXquru1gc7R9e8CWQwxI0OyGHqbGnKilsd
EUHoNgxBqPYgEUBi6xlm6EtZ+Ql4xTi8xVEQKS1rozZFpW/iAJhsVmicEJhWTZvwSplSbSAw
lUcXGiyhKRac7BDl2niE305aeV3CsjJWoybqjj8tDTDQuEpoSjFrtMWB65zJxaqbhMKjBt55
/3YxMRDn2fvXy9vl+/tk9+vn+fWPw+Tx4/z2rrlg99kJPiEdP78t6ClAHzfxkmyZ/nZAaA4a
4S7ARRn7sxsPD2onkGJvj6P89cxZii+9KX5m1z5q1XMT9S/C7v7++Dm5FzMK/NDefp7P93+p
snFQjLy7hjfWM6k2FuDLw+vlSfNYIzImIiJCLd4kBAqBswkZPZHk/1JcxnueynlLSRuxOqy9
heNVMysouD5ci1i65c0m3xKI/YFfkKZM1Ifnjqdke742Es10nn5vf5/fsXCIBmbkVLMYVjYu
o1o4mkPjSAxDOADBK5OHniu03G28xb3htlkcbRh3vF06in1FCncs2OUIYXGgBnHoHYKbZKeE
tclDRfv1q3pbbrwSaVlZJzbDqEiSSnHxb2V8fjm/Pt1PJHKS3z2e38FNUvHOHIX+Can+HWn4
bPRg0605IYubfV2cf1zezz9fL/eIwSdDKXfnW0N1kBItp58/3h4RJrkwgjTDDwAy1ixmukqk
tF+28nI+JaVYKRSL0iQQABOrrCV9nbW6DeoP3r7CFBu2oZePl4fj0+tZMRJbRBZOfuO/3t7P
PybZyyT86+nn76BV7p++i44Zb+da9fHj+fIowPyin9P1mgBBt+VATT04i9nY9jX/6+Xu4f7y
w1UOxbcu4XX+5+b1fH67vxOj6fbyym5dTD4jlbRP/5PULgYWTiJvP+6eRdWcdUfxihbPQsOz
Sxaun56fXv4xeI56ChLJHsJKHR5YiWEt+Y+6flAXSZ8DebBT259ayt/eeuyyJcvEzW38tSyN
aEL0F9kqWU4L0FHgyYPMHo0SnJw4OVAXqyFj0GeMCOftFNTaY3lLjE1v6IGmim1F6zIc387Q
f97FumwnL9aIxaaI3Cz0M8IO43jl1GGxhCsjaj53pLYcSawbLJMmL9PlbIn5cnYERQkpVQhS
A54sl+gZQIfvXYFG0QmjI9OflDOGr69piVtfh4Q2uPXX5v4Yfwxpq4eyAHTdpQAOdq6b0uBi
Zs0DmLw79Zf9EBCbExl7GXlsV9yCZ7665ArLQfVM6VKvyu3N+CDPZKjIK4f3A7gECgq+bOJH
WWRxrGV5kJigCBNeBvAr1J31W3y7sG4x7+eWAKIP9peB7VHi7iTW7W9vUp+Mze6DImn+Ygqw
i9uuoYMwafaQ7Q1c5PSSUKLPcl1mRUH1yGAqGnhivauQtF64OnfoeZbUfnKre++0da2FVJAa
AzKvSeP5aSKd8hwoaJDBkuT5Lktpk0TJaqU+CAJsFtI4K8FOjijXUdJQaH0AnQizHn1UWLsa
kMtgZiT4Ang7DqjhxjWMTr3TB4agoMNul9CP7hDzpSnIkEx+3Jr08yONikyPxNGBmoCJxaQQ
EwCvFbIjYUF6iBge6V99i97foao/be3RgfNETIKIYEz7zHuUdmm827O/4+T99e4e3oRZ+oGr
2kb8gNvXMmsC8v+VHVlTGz3yr1A87VaRL+AYAg88jOewJ56LObDhZcoBh7jCVdjUJvvrt1sa
zbSklsm+hLi7pdHZarX6kLNILngKhbED2bzdGHC/SdMbvT6QCcsuiV5u5AEfsHC5K+tJ6LHS
vlgLNTF+VBBdp9ZDdUViD56yVVS1ZiPVw2HF7mkLnFncJ4b0hMp92R75XklZ0MDA3UWowNVl
aBQtlLhY0UZjVW06LRWpf835ugoqOxxtVwbEjPBWhatlz71O0itKkT+mAeGKu2+Ir5ThVLvG
5xEPF8AgSmxIG6Wh1cUOjl3lb8SUyO4JR+VqUetFDft93iAyojor+KEcutssp0FLENMFQtCl
EoKYNZoLOcF4IgQF//W2kg4VWrlqEpraA8UWMaAHzOBSHNFDuvvXx/VvzvQ6bZatF0y/Xoxo
4vZmaSVRRFiamhIVzf9pfIIIu3lBxJQqpqoE/IUihzFsVRKnmo03AuRJhNmu9B1a+n1cUKKc
axDDrqY0N33olQpaF7RlMNMNasXEeaTZkFx7mK+gDmE+MAo1b5sEuDhPPdJ7EF9HbVRZgHbp
1bXmzqYQRV5hBGWfi7mnaKrQb8q4vjHKf2lZexzAjFv9AOpAH31svOdjY6f8K5DzJotrM4Dw
t0kw0n9Z8TWrNp34nj/TcibGMNyA0fvQg4HY57NA9SSoqUETLG4LkertWaFIdrBYSjVkLOE3
QcM0ZCm7SDI+IeSqyWveA3D5wQQinlr84+88wyDLwGTKZsJiyrCQQbcIauGVmukAwlyTP40q
fcHnvgvS5iN/woDRXtQi71ItedU8yac8kn5jUpdqNA3IMGS0Sz1WLCbBZqbOGeyJyybDpHBA
J1c6Mx6S1kp3LMFeBUuG108P3wgjTOASR9xlJIsTc3SjkbVTBAhHlV93XQl78SvE/oWvqPYu
ekEkx3ZPG0TUkzj7BsxdP8y7T8B5IHzPYt2URaGTW25/D9gxV+i2qnlvy1u4Vbm2Kk4pFfuN
ZdUzQtRrm5xXwjpHnbxgq4+TEJOaz40nKNR/obXzjUbBtw8uqOVNYYwjBYPAONWXSSUWWs0t
tKiyHn9NQCwBQnumVetJBFOr4G2UVgDwVVEosMVhHxl6uOF6iYE+uhLIofiRkHjjlJHAGiRl
AovSur0+MQEjo5RfkwnGsDhRNdb2n4TpWxKGxNiSfsMGE+xedjVuCXOCaTv08gMUg8XFGHC+
DRwZ+jhaL1l4InR8kuR82g5SCm/L/EscIcK8QaLzHxGmIYxiXthPvP7q7qduahxVQhRghbeO
WpIHn+CW/BlTEKL8xohvcZVfnJ0d87u5CSI1vKpyvkKp5s2rz5FXfw6X+G9WG5/sV32tTWNa
QTljEq8jJ0sGhIoChRlZMPfd5fjL14GzmPVLiCoT5/iKVIX15eH77sf5YX9e1MbSFABjdwhY
uaDjsbfPUn23Xb/fvxz84MZCSF/0qwIw12/HAoYqQbrBBFAk/ktzOGapn4dA+bM4CcqQsLh5
WGb0U0r30v2s00KfAwHYK0ZJCnU4dsBZMwUmNaFVdyDRXDLvYRoFrV+GWvBb+ceYC7jjXXul
sRKZce2rjitpzyMf1nX+UKI/mHV8DcqCYA8ucuNCcXq4sDN3QUDJuH08erKnrZM9zXGjvkVS
MmKRfumlDlR11XjVzIG8Xro/mMaYfMqBzNM9Q1O4cVfZcrwXe+bGlsxH1ebBsFN084nfyD4S
vOMqOUvT5koSkLF6NH8sK7rx39LN/L+iPB+P/ooOBTqWUCcjfdw/CMSVnK+hJzi8X/94XO3W
hxahUpnq8O79XwfCyqRXQNjb164JbvZsjDJ3I0G+WuTlnPIO7m5B7Trhx9DNzfbl/Pz04tPJ
IUWrc6qFc0pTdlPc1y+c85xO8vXUWfycfV00SEZ6swlmX8W8BbxOxMa1N0hOXF8/c7ZLdzUx
cJyhoEGyp1tnZx8Xv3C06+LLmQtzeuws4+rlxdj1nXPqz4QYENZwfbXnzn6djD5eCEBzYlbg
VX7Mm/DR73I+JhQ/4pv7hQc7OnfKg8/MJiuEa98o/IWr4AlnxqoRjJ1FOecFJJjn8Xlb6j0Q
sEaHob00HEM0PpMC+2FS6y9TAwbufU3peMxXRGXu1UZaLJvopoyTJObdIRXR1AsNEpMA7olz
uwOxj8FrAq4HcdbE3AuYNiQxNyp1U85j3dsfUU0dORL9JdzrYZPFvvZe0QHaDC1kkvhWZm7r
M5MTM812oZkPaOpwafC1vnt/2+z+2PblGIaMCuI3eN+8ajAejqHR7QLbwjwjGdzjp1R1Z1VV
Y9zpMFDQ4ZCTuowOw4wDgNtghim7ZER6ei/otFVoFl4Jo4S6jGmuMaL2NiARV013ptLmmbh2
GbEpYXq6wqMvmzN8AhZ55zPoYSNM0oubVuRq94z0nRYZ+6wLY+ALCgyzaiYxZ9GySYeft983
z5/ft+s3jGz5SeYIP2R6CisK82zwgnVPBAud19f3JHWe5jecMq+n8IrCg4aW7IArJMZ15jIf
2ISWgtZB0qlsHVcHRxlYYRWcSH9baHg62V8gyb2giLnwWT3Jjaf7pgxz4EVohuMIVE4+4c+D
fJG1ScV7O7KKcsWbOmXE3jmziAKP48Xw/cvDx5e7X/cv/3k++rN6Wh09vqzuXzfPR9vVjzVQ
bu6P0F/9AXnT0er1dQVr9e1ou37cPL//Pto+re5+He1enl7+vBx9f/1xKJnZfP32vH4USQvX
z/i4PzA1EnnmYPO82W1Wj5v/rhBLbLJwomDj+HPgrJn2zi1QQskKY9j3MufPK0WMb/dOWvX2
yjdJod096s02TQbeP/XA2hNaaarNFE5Dhh2DgKVh6hc3JnRJVTQSVFyZEHRWOgOW6+ck2Jdg
5fgkLNV2b39edy8Hdxg2+eXtQHKcYeAlMWqwPWoiooFHNjz0AhZok1ZzPy5mlD8aCLvITEvj
QYA2aZlNORhLaF8/VcOdLfFcjZ8XhU09p6/1qga829qkILUAH7Pr7eB2ge4tgKXGDJ8YYdd8
JO6optHJ6DxtEguRNQkP1KLkdfBC/GUYSocXfwKmoNfUM5AvHNojQcKGoSjevz9u7j79Wv85
uBNr+AHzS/2xlm5ZeVYnAnv9hNTJooexhGVQeUxHgK1eh6PTU91LX5rMve9+rp93m7vVbn1/
ED6LBgNLOPjPZvfzwNtuX+42AhWsdiuqTVdV+5w4o+aPBmZXBWYgB3qj4yJPbk6+HJ8ym3Ea
V1p2TbXtwqvYYhbQ6ZkHvPNacY0JnhAi+vbWGnB/Yo+kTxMKK1htr1ifWZ+hb5dNOq25Ds0j
3v64X6IT7sTrsEvm0yDWLkrdPFKNH7rQ1Q1/VquGo9G6tRZmq+1P18hpbrCKsXHAJTfI15JS
vp1sHtbbnf2F0v8yYqYHwfZHliynnSTePBzZcyLh9iBC5fXJcUDdR9XKZet3rtk0GDMzkQbc
3VkhY1i4whLY7nSZBtwGQPDZMfMhQIxOOS3PgNfyjqsNNfNOOCDUxYFPT5gzcuZ9YRpUpZzC
QSHx0XWS28dfPS1PLuxvLAr5Zcl9Nq8/NWu2nmvY0wswGefb2iJZM4ldrwKSovTH+/AgIy1M
zzpjbXlpmCSxzeF9Dy/DVtQqgt2zahB9xhQL2JxUHTISf20WMvNuGWGo8pLKY1aLYtzcdPOm
jD22LAwb+36Z7B3kOuTCDirkIo9iZo928GGE5bJ5eXp9W2+3mujej51Q9tuc/Da3YOdjTsJI
bjkN7YCc2VscXyhU48rV8/3L00H2/vR9/SYdGo1LRr9uq7j1C050DMrJVDloMxiWVUsMx+gE
hjsFEWEBv8WY2DJEPxF6GyDyX+sV3D5UKOuO7iRUord7uHtSbpR6ZHcNsBYkmp2568ZmChNC
44ryuPn+toIL2dvL+27zzByfSTxhOZSAA6thEd2pRcIMWOtuoNqz/uJJt3c/qEkSfVBRL0na
0Q9YMhatzlGQgOPbcMgiw5Hs+ww5j90dGkTN/V3rDz6zqhnnwQS32BTzHcS+0DBizGftiquQ
RTNJOpqqmTjJ6iI1aAZLy9Pji9YPyzqOYh8fJW3T4+H5c+5X52gVdY2EWKHTTll9URL0C3r9
tkPXTRD5tyIe5Hbz8LzavcMV/O7n+u7X5vmBBhMRzvxENVvGdNPZ+OrykKoMJT5c1ujnMPSQ
12blWeCVNx9+bUhl9jGF2M8iJ5poljL8+YsxkLEindteajeKKzqPCtZO4E4J/Ljk/O7RHU9r
8yQGaQmDgZB1o1zfsrBumzpOdKuyvAzYpwxMmRnCJTmdYGiRJ7OyQoTo1gzXFcoAi2x5aM7m
p8XSn02FhrAMNSHah4thXGsyh39yplPYojd8qm5avZQu/cNP+mRBtqrAwFYLJzdcsCuNYMwU
9cqFsfQMign7nAO4M41968zcJ7m4gcnYlxyfiPn9rYasmSzIU9JnpgXUJmKoC6Ho2mPCb5HV
wRGmSzwCaslB1M5Dh3I1U2sPDUpsO3Rqtn3UcsMAc/TLWwSbv9sljTXXwYRLYWHTxlocqQ7o
0QwWA6yewf6xEBhCxK534n+zYEbwpr5D7fSW+vUSxPLW3pD0/UetlFAkAEtyFHqfOCg+lZ3z
BfB7NL89TU4AP4TxSo0nhZfSJzlg3FWI3ICDtfO0YOGTlAVHFYF7VZX7sQhuAaNe0uQfmKYT
GBL1sJQgkdZJY1QI16JnZaLPMmhWInKwGzgRLMwrWiNPvWigCGsWBGVbt2djYAZktlK0LvYT
T9j5zMJS8+/vk4sKvTfSRnkJUjyR1KuFEX4JqbI8U5W1aaqrekRb0IPY4YFRTRO5SAirEYb3
VTzNPExLQhBF05bauAVXRLk6TXLNhw1/72NHWaJbSfrJbVt7pG9xeYWCG/lEWsRa5OMgTrXf
8CMKyIjmIj32FM7tkiyMxq9GqFvQj3z0JM7pt8LUdBMUjzdBWOT05Rcm2BhzWTXb9V50sCQC
/YVJyU8C+vq2ed79EoE975/W2wf7MV1Yt2MKA919sgNjjnv+IiRNzTBzeQKiQ9K/Hnx1Ulw1
cVhfjodBEo+Vdg1jYpGJOVO7poh0sLxtQpee1p3KUGamApKwLIGWN/R2jlV/ud88rj/tNk+d
iLYVpHcS/maPrHyT7W5yFgxN5Bs/NMKM9NiqSGL+WZYQBQuvjHjtxjSYoPNVXLBXzTATDyJp
g1oi3LNDCyPgv6H0xBodj4fELrAwC2CZ6GSuWwCXcMsVtXkVm+Y7xHARaNsPW4BuSNmPSrrg
oI1x6mkJa0yMaBN6j92YjS1yIxNr56aVo6P4IvTmaAfSMcNBAP/b+dRiRXW7LFh/f38QKVPj
5+3u7f1JD6uYetNY2JjTCIAE2D+9ynm4PP59wlH1CSqdOHyuaEQk0MNDo/PkDG0mlZEiDQGY
jYrNcCyQEwzMVNmF0BactxEVaHTNSID9p3CgOOvuKWj1Ip2VwLOb868mQB8CtNAPrQWHHbjU
8r0MlRGuiJwJ5IYwM33AZC2IF2cfe72CsvkioytSwGCdVnmmHR06HIdPuvk5KTAvvd2cfIKu
bA67j6SZKDLeKkBQuLRSIiF1Z3uAWbkVuzBacM1GrOisUjCAjrA90I5IBAqPrRh2JzBmEFik
Sx4z3HL/otjEml95uKxEGy9PLAuGYXrNaqsZRq0xX6gE/UH+8ro9Okhe7n69v0rOMFs9P9CD
EybKR2OKPC+ocTcFozd3Q3RPEolnbd7Ul8dkCvKoxhtug7mMaxiDnNe9SGQ7w+AotVdxt/vF
FXBK4JcBffwQu0t+gDLB/V2VZnjAG+/fRQYke5vIxWG49Uigfu4JmPK3HSxEmLr1tYNDNQ/D
Qm4aqRDBp9dh//9r+7p5xudY6MLT+279ew3/We/u/vnnn3+bZzHK7g1cB4yQxXItuOMUdsu4
L6nXuajC1ILCvQklkiqBttvf6vwppbJZBbXljJHQcxOWAsrSxq1usZANGhQVT0RC/D+GSBNQ
MdMzkdrFiQtsDpNqwc0FZlXqCuwezSUHcuylX5Jp3692qwPk1neo57IkJaEjM8ax6IDmZHH3
EYlSHIUaegrW1wZe7aHmqmyUt6qxDxzN1Ov3QW6DowsO3z4iUOk33OYwJm4QmPxGBJFzW94h
BS3NdBZJkCMKoarnKKMTilezqdUbXjE+9UOURq0res+BsUiRqhyEKY1AehrDqYmBTPieYZNn
eV0kjTQEDVXoL271Azrzb+pcu23DZT1qMikaig6WJlZA21RE6hDGXyV5f5RIv8v6NvBfD2P/
Vdb63azOxtzcojqnncJuaEDwPTlLtdurQEqvYXz9LANubyujpOsZfTUVRbuFJhWfLM6IvWa0
kt4H6/V2hzwAubqP8Q9XD2tiSd3IQ7lvujQJ7QKYsjP4gdGoRIdLMZ6uxcue+mb8H5w5NzXV
qdQybs4HkoTh9M/daX2pQvEyP7/uVgpV5ZWwoFC9jb2SoYv1UNXJPKh5ixh5/OJrQOVKmy5I
0jgTYYvdFM7yE8W+xYmwh7dM0DJiD56q7JxU4sJ1jWmd91YGbA53vBMvj0lY1rzCQ1ERY04n
kRidWbgMmnTf8En9ijQ657aloqrQ5vTJKD0HRJ1z+R4EWmz5aFCMCmCn4zGrArAIx+xuatM4
jKYFdik0lm48+sFHLpd7QVHiO0CNPGjPeLqezAU2DriHXLnW56kxDtep1BXqUPFWjn4E5qgV
1jjig9oMFUqY1osMZxRnGGiv3vvk1SVLLlMQaUKj5s4XXPeFBMhHrE6+/+2nkZ20VFf6YhP+
EOLhUm/YPM0Da+GgObQHa23fGhfvew71karESQA4p+px76FiWYZLTeT/AJOeLl0XygEA

--AhhlLboLdkugWU4S
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--AhhlLboLdkugWU4S--

