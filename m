Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D235665FDF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 17:00:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1ADF540C90;
	Wed, 11 Jan 2023 16:00:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1ADF540C90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673452803;
	bh=pDkcOeyhog8P/LYbniFSkdObfF0ajP5zldnwFD7XIOc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tGnr7pXWGEBQPXr98AGhPS2T5OhRk9dOPck1enMyAqMfmd1CxjRctDBp51S/MkB3q
	 PIgaW6fri/duDP73vSGYld7zFwXzpT3KuUqYnLW6ofnGh6bT8/LIP62krBMgu/6sPp
	 EHZbofArSkxIGc9kxHOIsQbhvjaP+6L/u91ZHKy6mhVxEndcivQV+v5UmQAIsdFxiU
	 Z/bSKDl3Ni8oPQzoN5dw17Xnbxqcp5FloXsLH1wtj/LpaPWmNc6YZI0bCcawjztHDp
	 E0XpaGGD6Fdpnrcjcknbe7Ghzv1JlTARvhQYgVUZgcznT79PKqm6IUYlQnSpMQ8qF4
	 ViT+zGiSWZq+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6D5WICFvrsCe; Wed, 11 Jan 2023 16:00:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0D6C40424;
	Wed, 11 Jan 2023 16:00:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0D6C40424
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 671CD1BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 04:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E1C440AB7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 04:22:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E1C440AB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ME9FL4umSRzF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 04:22:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1977D40232
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1977D40232
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 04:22:41 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id ja17so10266910wmb.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 20:22:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ftLAYv4HnjcIlKeQoEpxqzr+3v92yi3++RYeCqxlnJc=;
 b=Pcu/ckECSHcsTpczK2LpdHBl7mqk2d30EeD+kzfzeJORtbFTEUAuleSJCLkQYsFD1b
 ifPmd/oY9K92P0vbJhQGQO4NZ6Wgxy79FqAwkjykZPQGjyHFX1hImhkiKMZm2esipAW4
 8mxyMDmhkOyF/0GeZ23JJ7PJ2jT6vhx56E7O/lB+//icsyn5FPLwwvPpHniFeAWPqUm5
 ZV4W+CaDFrwyUlf9I8F2l7AF8lQk5G8gWNdyXCxduTiOWXbbHWYFxhkSbqNXJ8Z8lxLy
 a5GuCOlQop6zcOzn5C95HaD1j/v/riAQvTZVn3WavDKPFqU3jhCORyL57BGewQo/ocs8
 ncig==
X-Gm-Message-State: AFqh2koQ5wfD63RFkF3nYf3swfaqVnkLV17LLjN0+IVTxoAReiLpUx52
 zSWtybFP7s+5i31jj27GyW0=
X-Google-Smtp-Source: AMrXdXseySAzzfHhzIYdq8leghK75uUQJJOUq/9/uz9rpM1DqtYDQkEf5MTt+yD2JhiNTMJn8doiHw==
X-Received: by 2002:a05:600c:34cf:b0:3d0:7415:c5a9 with SMTP id
 d15-20020a05600c34cf00b003d07415c5a9mr52585728wmq.21.1673410960237; 
 Tue, 10 Jan 2023 20:22:40 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 u16-20020a05600c00d000b003cf4eac8e80sm20333621wmm.23.2023.01.10.20.22.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Jan 2023 20:22:39 -0800 (PST)
Date: Wed, 11 Jan 2023 07:22:37 +0300
From: Dan Carpenter <error27@gmail.com>
To: oe-kbuild@lists.linux.dev,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <202301110916.nD8vny59-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 11 Jan 2023 15:59:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ftLAYv4HnjcIlKeQoEpxqzr+3v92yi3++RYeCqxlnJc=;
 b=ED1rkAEszLf1w0JP8ZRcNvQ/TdUg5LvnQmq/Oo5bFtBzx9Y0tJZGZL3bf1ww7A5u9X
 hKVqH/T8DHCiAUgRRzfjeRDH/ocsItkjK5UxqrABF7PVrJPVQqX4dqkyjsCjLvfc0ylt
 AW5+90nnswOuIAkMBByhJLMb1Ff1/HFTcnY2GboDrvojBOBeexuowo45ygszFJZnMoVy
 11i4MIr1U1wH4mycySUpKchb53Gaecro21axhjI+5EEqAw4HiGcd/PSyYLqnaL+vXedG
 PKFdt7LNVZl+dRQdzJ9Z9yfjG+JRy2nfY8Fpb2X6AJqu9NoTlzcXOJjrZiYwtBJ/Ogw8
 LrFw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ED1rkAEs
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 50/62]
 drivers/net/ethernet/intel/ice/ice_lib.c:571 ice_vsi_alloc_stat_arrays()
 warn: possible memory leak of 'vsi_stat'
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   c9ebfbece30b59350bc6879be8ed954cecc6be05
commit: f833ce48581cfdf4b086d7c79cef79191b0a21d2 [50/62] ice: split ice_vsi_setup into smaller functions
config: x86_64-randconfig-m001-20230109
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <error27@gmail.com>

New smatch warnings:
drivers/net/ethernet/intel/ice/ice_lib.c:571 ice_vsi_alloc_stat_arrays() warn: possible memory leak of 'vsi_stat'
drivers/net/ethernet/intel/ice/ice_lib.c:2846 ice_vsi_cfg_def() warn: missing error code 'ret'

Old smatch warnings:
drivers/net/ethernet/intel/ice/ice_lib.c:437 ice_vsi_alloc_ring_stats() warn: inconsistent indenting
drivers/net/ethernet/intel/ice/ice_lib.c:3527 ice_vsi_rebuild() warn: missing error code 'ret'

vim +/vsi_stat +571 drivers/net/ethernet/intel/ice/ice_lib.c

288ecf491b1654 Benjamin Mikailenko 2022-11-18  555  static int ice_vsi_alloc_stat_arrays(struct ice_vsi *vsi)
288ecf491b1654 Benjamin Mikailenko 2022-11-18  556  {
288ecf491b1654 Benjamin Mikailenko 2022-11-18  557  	struct ice_vsi_stats *vsi_stat;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  558  	struct ice_pf *pf = vsi->back;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  559  
288ecf491b1654 Benjamin Mikailenko 2022-11-18  560  	if (vsi->type == ICE_VSI_CHNL)
288ecf491b1654 Benjamin Mikailenko 2022-11-18  561  		return 0;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  562  	if (!pf->vsi_stats)
288ecf491b1654 Benjamin Mikailenko 2022-11-18  563  		return -ENOENT;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  564  
288ecf491b1654 Benjamin Mikailenko 2022-11-18  565  	vsi_stat = kzalloc(sizeof(*vsi_stat), GFP_KERNEL);
288ecf491b1654 Benjamin Mikailenko 2022-11-18  566  	if (!vsi_stat)
288ecf491b1654 Benjamin Mikailenko 2022-11-18  567  		return -ENOMEM;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  568  
f833ce48581cfd Michal Swiatkowski  2022-12-21  569  	if (vsi_stat->tx_ring_stats && vsi_stat->rx_ring_stats)
f833ce48581cfd Michal Swiatkowski  2022-12-21  570  	/* realloc will happen in rebuild path */
f833ce48581cfd Michal Swiatkowski  2022-12-21 @571  		return 0;


These aren't allocated until the next line so the return is impossible.
Just delete.  But Smatch is correct that it doesn't have a kfree() on
this path...

f833ce48581cfd Michal Swiatkowski  2022-12-21  572  
288ecf491b1654 Benjamin Mikailenko 2022-11-18  573  	vsi_stat->tx_ring_stats =
288ecf491b1654 Benjamin Mikailenko 2022-11-18  574  		kcalloc(vsi->alloc_txq, sizeof(*vsi_stat->tx_ring_stats),
288ecf491b1654 Benjamin Mikailenko 2022-11-18  575  			GFP_KERNEL);
288ecf491b1654 Benjamin Mikailenko 2022-11-18  576  	if (!vsi_stat->tx_ring_stats)
288ecf491b1654 Benjamin Mikailenko 2022-11-18  577  		goto err_alloc_tx;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  578  
288ecf491b1654 Benjamin Mikailenko 2022-11-18  579  	vsi_stat->rx_ring_stats =
288ecf491b1654 Benjamin Mikailenko 2022-11-18  580  		kcalloc(vsi->alloc_rxq, sizeof(*vsi_stat->rx_ring_stats),
288ecf491b1654 Benjamin Mikailenko 2022-11-18  581  			GFP_KERNEL);
288ecf491b1654 Benjamin Mikailenko 2022-11-18  582  	if (!vsi_stat->rx_ring_stats)
288ecf491b1654 Benjamin Mikailenko 2022-11-18  583  		goto err_alloc_rx;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  584  
288ecf491b1654 Benjamin Mikailenko 2022-11-18  585  	pf->vsi_stats[vsi->idx] = vsi_stat;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  586  
288ecf491b1654 Benjamin Mikailenko 2022-11-18  587  	return 0;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  588  
288ecf491b1654 Benjamin Mikailenko 2022-11-18  589  err_alloc_rx:
288ecf491b1654 Benjamin Mikailenko 2022-11-18  590  	kfree(vsi_stat->rx_ring_stats);
288ecf491b1654 Benjamin Mikailenko 2022-11-18  591  err_alloc_tx:
288ecf491b1654 Benjamin Mikailenko 2022-11-18  592  	kfree(vsi_stat->tx_ring_stats);
288ecf491b1654 Benjamin Mikailenko 2022-11-18  593  	kfree(vsi_stat);
288ecf491b1654 Benjamin Mikailenko 2022-11-18  594  	pf->vsi_stats[vsi->idx] = NULL;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  595  	return -ENOMEM;
288ecf491b1654 Benjamin Mikailenko 2022-11-18  596  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
