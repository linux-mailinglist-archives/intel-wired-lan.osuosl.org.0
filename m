Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B02B3658FD5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Dec 2022 18:31:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E4828186B;
	Thu, 29 Dec 2022 17:31:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E4828186B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672335062;
	bh=EWrcwYvPg37Vlzm4fXS1KZ5BhDZFlaDlGNEOiynhBuM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=K8FCPr17Kugw0njLbAclwxDzbAsgG5uuZpCjdGnVDIrmFn2bRiMx6Sw0frQp0cOY+
	 clDMCVaWGTsiB2LFTOhu5LK8BXu/i1msGdOwN2E5xcL/9MCgM0EFGFDCMQre1GSjjq
	 1FA+4oo+/sLiOGTLFZ5WhAMbxL9llXzyDTX8uLXefOOsylOc5cfgHqBV0XrAbIVz3M
	 qI2cfQtEzG5vvN8z7EdePQenmorbhkiGgA5FPUyGciiBgNBKVCb4fIbp2eNFqAMUd+
	 uwzFedP5RmNSFcVQ/ctIXXE0cox4s1BdHGNHz18qVf58iRw7P2qzhUhWflqp2hSPWL
	 5rewcS1L90ZMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UwP4E6CcMo0d; Thu, 29 Dec 2022 17:31:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED81B80C24;
	Thu, 29 Dec 2022 17:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED81B80C24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3EC171BF393
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 09:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17EC140470
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 09:06:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17EC140470
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZJXY0TzykBto for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Dec 2022 09:06:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E553540498
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E553540498
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 09:06:03 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 p1-20020a05600c1d8100b003d8c9b191e0so12767324wms.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 01:06:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=75Rhb7yr4CFALeAESpUIY1hruG7ddcbfO3zbvxmqiH0=;
 b=Je873J7Mpkp0+qt7Bg51jzC00AZhw+SyhxB9GdwlLbEv9JRNO5QRRhOUAFCPwvX0ch
 ctVUmJxPFplzJSj9DGwDv1F8hZ8IRVkukykbiZ+3F6rVvZpuL6wtWrwLIuKwVWcAGHZj
 oJUZ8JhREi0Ec/AZti6eD8h4gLcVFrcaam/TkByfTtgAra0Nf6KgMPSxTkxRKLSWtnGX
 0EvpEblJQ1hgFZLY7YgAFBFUC6Up2PGy4WgR+1O4NdyeZIZKrwK/jCFva5HARSNU/Wq6
 kKw+6ovaHqMvj/pv/t3wTVfvwfsc7TJq1urq/XiFDQBgVTKtmB733sGJpoYIfUJfTBJd
 seeA==
X-Gm-Message-State: AFqh2krx71Ccg2lxmhndfiEn9X4DGvAmlpzDqk1wSHlSc22hCNeGLl7f
 V8YWnOQVPGlBw+htenPzNzA=
X-Google-Smtp-Source: AMrXdXvCenDHhsBYy4xBubR3lORanAhgPCqxK/T3BBuB7Sp/HUqghcPB1BewFS3CuRYHnLckAcsr0w==
X-Received: by 2002:a05:600c:4e53:b0:3c6:e60f:3f4a with SMTP id
 e19-20020a05600c4e5300b003c6e60f3f4amr19246203wmq.1.1672304762056; 
 Thu, 29 Dec 2022 01:06:02 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 iv7-20020a05600c548700b003d35c09d4b9sm32514263wmb.40.2022.12.29.00.58.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Dec 2022 01:06:01 -0800 (PST)
Date: Thu, 29 Dec 2022 11:58:08 +0300
From: Dan Carpenter <error27@gmail.com>
To: oe-kbuild@lists.linux.dev,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Message-ID: <202212291532.mOisbpke-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Thu, 29 Dec 2022 17:30:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=75Rhb7yr4CFALeAESpUIY1hruG7ddcbfO3zbvxmqiH0=;
 b=DQGCnoF7rxoGdN6dXxDyiHk5VWScUYolP70xQ9EroV7lyVX74VHu0QdVuJybHSBSj+
 UmIsNdkzni1wSXtj7AcXlPuIGgyr8JB9d8l7pQG6F45XP7ia1KULgmZr7LzoXv7Iqn7A
 NnOSpsm08Hco5aXkjScGpQ9z0oj9FyZWkaWHwXZqUxFCFjpf6rS8poI44nSO4AAbji26
 G3hGTRCvKZPrhCPWUQLlzsGcClqPfESph9qtqfzEO0rKmilzp4zvbXS8ywWGxq8zpPZD
 DI2xW5tT1MCsbNhywVH1TfPQDhvcWjsej6MFrK/3tXWGAaHdcw9Mg4gSHvtaglplTNnu
 s94Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=DQGCnoF7
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue 2/17]
 drivers/net/ethernet/intel/ice/ice_main.c:4921 ice_probe() warn: missing
 error code 'err'
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
head:   c342bc11f5a438cf39e2280bafda39ec2c6953f1
commit: e51d0e34580892d22107a85390d1752fa7a7d56a [2/17] ice: move devlink port creation/deletion
config: powerpc-randconfig-m031-20221226
compiler: powerpc-linux-gcc (GCC) 12.1.0

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <error27@gmail.com>

smatch warnings:
drivers/net/ethernet/intel/ice/ice_main.c:4921 ice_probe() warn: missing error code 'err'

vim +/err +4921 drivers/net/ethernet/intel/ice/ice_main.c

df006dd4b1dca8 Dave Ertman            2020-11-20  4908  	if (ice_init_lag(pf))
df006dd4b1dca8 Dave Ertman            2020-11-20  4909  		dev_warn(dev, "Failed to init link aggregation support\n");
df006dd4b1dca8 Dave Ertman            2020-11-20  4910  
e18ff118181bca Paul Greenwalt         2019-10-09  4911  	/* print PCI link speed and width */
e18ff118181bca Paul Greenwalt         2019-10-09  4912  	pcie_print_link_status(pf->pdev);
e18ff118181bca Paul Greenwalt         2019-10-09  4913  
de75135b5c04c9 Anirudh Venkataramanan 2020-05-07  4914  probe_done:
e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4915  	err = ice_devlink_create_pf_port(pf);
e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4916  	if (err)
e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4917  		goto err_create_pf_port;
e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4918  
e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4919  	vsi = ice_get_main_vsi(pf);
e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4920  	if (!vsi || !vsi->netdev)
e51d0e34580892 Paul M Stillwell Jr    2022-11-18 @4921  		goto err_netdev_reg;

This seems like an error path so "err = -EINVAL;"

e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4922  
e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4923  	SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4924  
1e23f076b25424 Anirudh Venkataramanan 2021-03-02  4925  	err = ice_register_netdev(pf);
1e23f076b25424 Anirudh Venkataramanan 2021-03-02  4926  	if (err)
1e23f076b25424 Anirudh Venkataramanan 2021-03-02  4927  		goto err_netdev_reg;
1e23f076b25424 Anirudh Venkataramanan 2021-03-02  4928  
e523af4ee56090 Shiraz Saleem          2021-10-18  4929  	err = ice_devlink_register_params(pf);
e523af4ee56090 Shiraz Saleem          2021-10-18  4930  	if (err)
e523af4ee56090 Shiraz Saleem          2021-10-18  4931  		goto err_netdev_reg;
e523af4ee56090 Shiraz Saleem          2021-10-18  4932  
de75135b5c04c9 Anirudh Venkataramanan 2020-05-07  4933  	/* ready to go, so clear down state bit */
7e408e07b42dce Anirudh Venkataramanan 2021-03-02  4934  	clear_bit(ICE_DOWN, pf->state);
88f62aea1cff0c Dave Ertman            2022-02-11  4935  	if (ice_is_rdma_ena(pf)) {
d25a0fc41c1f92 Dave Ertman            2021-05-20  4936  		pf->aux_idx = ida_alloc(&ice_aux_ida, GFP_KERNEL);
d25a0fc41c1f92 Dave Ertman            2021-05-20  4937  		if (pf->aux_idx < 0) {
d25a0fc41c1f92 Dave Ertman            2021-05-20  4938  			dev_err(dev, "Failed to allocate device ID for AUX driver\n");
d25a0fc41c1f92 Dave Ertman            2021-05-20  4939  			err = -ENOMEM;
e523af4ee56090 Shiraz Saleem          2021-10-18  4940  			goto err_devlink_reg_param;
d25a0fc41c1f92 Dave Ertman            2021-05-20  4941  		}
d25a0fc41c1f92 Dave Ertman            2021-05-20  4942  
d25a0fc41c1f92 Dave Ertman            2021-05-20  4943  		err = ice_init_rdma(pf);
d25a0fc41c1f92 Dave Ertman            2021-05-20  4944  		if (err) {
d25a0fc41c1f92 Dave Ertman            2021-05-20  4945  			dev_err(dev, "Failed to initialize RDMA: %d\n", err);
d25a0fc41c1f92 Dave Ertman            2021-05-20  4946  			err = -EIO;
d25a0fc41c1f92 Dave Ertman            2021-05-20  4947  			goto err_init_aux_unroll;
d25a0fc41c1f92 Dave Ertman            2021-05-20  4948  		}
d25a0fc41c1f92 Dave Ertman            2021-05-20  4949  	} else {
d25a0fc41c1f92 Dave Ertman            2021-05-20  4950  		dev_warn(dev, "RDMA is not supported on this device\n");
d25a0fc41c1f92 Dave Ertman            2021-05-20  4951  	}
d25a0fc41c1f92 Dave Ertman            2021-05-20  4952  
838cefd5e52c4a Leon Romanovsky        2021-09-25  4953  	ice_devlink_register(pf);
837f08fdecbe4b Anirudh Venkataramanan 2018-03-20  4954  	return 0;
f31e4b6fe227df Anirudh Venkataramanan 2018-03-20  4955  
d25a0fc41c1f92 Dave Ertman            2021-05-20  4956  err_init_aux_unroll:
d25a0fc41c1f92 Dave Ertman            2021-05-20  4957  	pf->adev = NULL;
d25a0fc41c1f92 Dave Ertman            2021-05-20  4958  	ida_free(&ice_aux_ida, pf->aux_idx);
e523af4ee56090 Shiraz Saleem          2021-10-18  4959  err_devlink_reg_param:
e523af4ee56090 Shiraz Saleem          2021-10-18  4960  	ice_devlink_unregister_params(pf);
1e23f076b25424 Anirudh Venkataramanan 2021-03-02  4961  err_netdev_reg:
e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4962  	ice_devlink_destroy_pf_port(pf);
e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4963  err_create_pf_port:
78116e979ddc49 Marcin Szycik          2020-07-13  4964  err_send_version_unroll:
78116e979ddc49 Marcin Szycik          2020-07-13  4965  	ice_vsi_release_all(pf);
3a858ba392c3b1 Anirudh Venkataramanan 2018-03-20  4966  err_alloc_sw_unroll:
7e408e07b42dce Anirudh Venkataramanan 2021-03-02  4967  	set_bit(ICE_SERVICE_DIS, pf->state);
7e408e07b42dce Anirudh Venkataramanan 2021-03-02  4968  	set_bit(ICE_DOWN, pf->state);
4015d11e4b9720 Brett Creeley          2019-11-08  4969  	devm_kfree(dev, pf->first_sw);
940b61af02f497 Anirudh Venkataramanan 2018-03-20  4970  err_msix_misc_unroll:
940b61af02f497 Anirudh Venkataramanan 2018-03-20  4971  	ice_free_irq_msix_misc(pf);
940b61af02f497 Anirudh Venkataramanan 2018-03-20  4972  err_init_interrupt_unroll:
940b61af02f497 Anirudh Venkataramanan 2018-03-20  4973  	ice_clear_interrupt_scheme(pf);
288ecf491b1654 Benjamin Mikailenko    2022-11-18  4974  err_init_vsi_stats_unroll:
288ecf491b1654 Benjamin Mikailenko    2022-11-18  4975  	devm_kfree(dev, pf->vsi_stats);
288ecf491b1654 Benjamin Mikailenko    2022-11-18  4976  	pf->vsi_stats = NULL;
bc3a024101ca49 Jacob Keller           2020-05-15  4977  err_init_vsi_unroll:
77ed84f49aeed1 Bruce Allan            2019-02-08  4978  	devm_kfree(dev, pf->vsi);
940b61af02f497 Anirudh Venkataramanan 2018-03-20  4979  err_init_pf_unroll:
940b61af02f497 Anirudh Venkataramanan 2018-03-20  4980  	ice_deinit_pf(pf);
dce730f17825f4 Jacob Keller           2020-03-26  4981  	ice_devlink_destroy_regions(pf);
940b61af02f497 Anirudh Venkataramanan 2018-03-20  4982  	ice_deinit_hw(hw);
f31e4b6fe227df Anirudh Venkataramanan 2018-03-20  4983  err_exit_unroll:
f31e4b6fe227df Anirudh Venkataramanan 2018-03-20  4984  	pci_disable_pcie_error_reporting(pdev);
769c500dcc1edb Akeem G Abodunrin      2020-07-09  4985  	pci_disable_device(pdev);
f31e4b6fe227df Anirudh Venkataramanan 2018-03-20  4986  	return err;
837f08fdecbe4b Anirudh Venkataramanan 2018-03-20  4987  }

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
