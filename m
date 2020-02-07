Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 159D5155D43
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2020 18:59:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFF0F813F2;
	Fri,  7 Feb 2020 17:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKAqelCvkRon; Fri,  7 Feb 2020 17:59:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BFA381ED9;
	Fri,  7 Feb 2020 17:59:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E20F71BF23B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 17:59:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DEF7185F58
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 17:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9y7CqvHMWS_r for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2020 17:59:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1150084BBE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 17:59:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 09:59:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="255484427"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 07 Feb 2020 09:59:21 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j07uT-0003Mm-A1; Sat, 08 Feb 2020 01:59:21 +0800
Date: Sat, 8 Feb 2020 01:58:25 +0800
From: kbuild test robot <lkp@intel.com>
To: Jack Ping CHNG <jack.ping.chng@linux.intel.com>
Message-ID: <202002080142.jXgA7Lza%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 75/75]
 drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:32:30: sparse: sparse:
 incorrect type in initializer (different address spaces)
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org,
 Amireddy Mallikarjuna reddy <mallikarjunax.reddy@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   efd2087941d2bc08b6c0a559aab0d8cdcfa38e0f
commit: efd2087941d2bc08b6c0a559aab0d8cdcfa38e0f [75/75] gwdpa: gswip: Introduce Gigabit Ethernet Switch (GSWIP) device driver
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-159-g100509c0-dirty
        git checkout efd2087941d2bc08b6c0a559aab0d8cdcfa38e0f
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:32:30: sparse: sparse: incorrect type in initializer (different address spaces)
>> drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:32:30: sparse:    expected void [noderef] <asn:2> *base
>> drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:32:30: sparse:    got void *context
   drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:41:30: sparse: sparse: incorrect type in initializer (different address spaces)
   drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:41:30: sparse:    expected void [noderef] <asn:2> *base
   drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:41:30: sparse:    got void *context
>> drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:77:30: sparse: sparse: incorrect type in argument 3 (different address spaces)
>> drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:77:30: sparse:    expected void *bus_context
>> drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:77:30: sparse:    got void [noderef] <asn:2> *[assigned] core
--
>> drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:38:5: sparse: sparse: symbol 'mac_get_speed' was not declared. Should it be static?
>> drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:50:5: sparse: sparse: symbol 'mac_set_physpeed' was not declared. Should it be static?
>> drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:119:5: sparse: sparse: symbol 'mac_set_duplex' was not declared. Should it be static?
>> drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:144:5: sparse: sparse: symbol 'mac_get_duplex' was not declared. Should it be static?
>> drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:156:5: sparse: sparse: symbol 'mac_get_linksts' was not declared. Should it be static?
>> drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:168:5: sparse: sparse: symbol 'mac_set_linksts' was not declared. Should it be static?
>> drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:193:5: sparse: sparse: symbol 'mac_set_flowctrl' was not declared. Should it be static?
--
>> drivers/net/ethernet/intel/gwdpa/gswip/xgmac.c:478:5: sparse: sparse: symbol 'xgmac_mdio_single_wr' was not declared. Should it be static?
>> drivers/net/ethernet/intel/gwdpa/gswip/xgmac.c:529:5: sparse: sparse: symbol 'xgmac_mdio_single_rd' was not declared. Should it be static?

Please review and possibly fold the followup patch.

vim +32 drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c

    29	
    30	static int regmap_reg_write(void *context, unsigned int reg, unsigned int val)
    31	{
  > 32		void __iomem *base = context;
    33	
    34		writew(val, base + reg);
    35	
    36		return 0;
    37	}
    38	
    39	static int regmap_reg_read(void *context, unsigned int reg, unsigned int *val)
    40	{
    41		void __iomem *base = context;
    42	
    43		*val = readw(base + reg);
    44	
    45		return 0;
    46	}
    47	
    48	static const struct regmap_config gswip_core_regmap_config = {
    49		.reg_bits = 16,
    50		.val_bits = 16,
    51		.reg_stride = 4,
    52		.reg_write = regmap_reg_write,
    53		.reg_read = regmap_reg_read,
    54		.fast_io = true,
    55	};
    56	
    57	static int np_gswip_parse_dt(struct platform_device *pdev,
    58				     struct gswip_priv *priv)
    59	{
    60		struct device *dev = &pdev->dev;
    61		struct device_node *node = dev->of_node;
    62		struct gswip_pdata *pdata = &priv->pdata;
    63		struct device_node *np;
    64		void __iomem *core;
    65	
    66		pdata->sw = devm_platform_ioremap_resource_byname(pdev, "switch");
    67		if (IS_ERR(pdata->sw))
    68			return PTR_ERR(pdata->sw);
    69	
    70		pdata->lmac = devm_platform_ioremap_resource_byname(pdev, "lmac");
    71		if (IS_ERR(pdata->lmac))
    72			return PTR_ERR(pdata->lmac);
    73	
    74		core = devm_platform_ioremap_resource_byname(pdev, "core");
    75		if (IS_ERR(core))
    76			return PTR_ERR(core);
  > 77		pdata->core_regmap = devm_regmap_init(dev, NULL, core,
    78						      &gswip_core_regmap_config);
    79		if (IS_ERR(pdata->core_regmap))
    80			return PTR_ERR(pdata->core_regmap);
    81	
    82		pdata->sw_irq = platform_get_irq_byname(pdev, "switch");
    83		if (pdata->sw_irq < 0) {
    84			dev_err(dev, "switch irq not found\n");
    85			return -ENODEV;
    86		}
    87	
    88		pdata->core_irq = platform_get_irq_byname(pdev, "core");
    89		if (pdata->core_irq < 0) {
    90			dev_err(dev, "core irq not found\n");
    91			return -ENODEV;
    92		}
    93	
    94		pdata->ptp_clk = devm_clk_get(dev, "ptp");
    95		if (IS_ERR(pdata->ptp_clk))
    96			return PTR_ERR(pdata->ptp_clk);
    97	
    98		pdata->sw_clk = devm_clk_get(dev, "switch");
    99		if (IS_ERR(pdata->sw_clk))
   100			return PTR_ERR(priv->pdata.sw_clk);
   101	
   102		for_each_node_by_name(node, GSWIP_MAC_DEV_NAME) {
   103			priv->num_subdev_mac++;
   104			if (priv->num_subdev_mac > GSWIP_SUBDEV_MAC_MAX) {
   105				dev_err(dev, "too many GSWIP mac subdevices\n");
   106				return -EINVAL;
   107			}
   108		}
   109	
   110		if (!priv->num_subdev_mac) {
   111			dev_err(dev, "GSWIP mac subdevice not found\n");
   112			return -EINVAL;
   113		}
   114	
   115		np = of_find_node_by_name(node, GSWIP_CORE_DEV_NAME);
   116		if (np) {
   117			priv->num_subdev_core++;
   118			of_node_put(np);
   119		} else {
   120			dev_err(dev, "GSWIP core subdevice not found\n");
   121			return -EINVAL;
   122		}
   123	
   124		return 0;
   125	}
   126	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
