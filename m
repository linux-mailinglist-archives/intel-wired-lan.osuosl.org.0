Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A92486F5C49
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 May 2023 18:58:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29F4961535;
	Wed,  3 May 2023 16:58:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29F4961535
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683133127;
	bh=WeEkKaCOgTVIdOvVDPj2CHxc4vYyJchGQB3Yx2ZrbUg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=p14VjCupaLD962FUw7qlyXD0jPffcWnc1f0lrMd5DjRZOsGo9ceBq2j4AtNnSCi8b
	 SZwfDwUWHKi7/WpV6InYheRX27+rAChUrNruF9TQRCnmwGXWcpIgJzjBwyT/7P0EX2
	 FDPepOfK3cEWM6rcGsiMdojv/IGLbk+oT73EClqS7SchZBygsGJVZ/5qmXJjASLZKM
	 XGnVSqXZhanNw2SK3GJCvv6fdQyZXtWl7Lvv0x5iYQdgpR6yysF+oXLjqZ3Jh1vs4F
	 lHWSdyIl5FghtcI/yTbD2F2kM5S5fmLpmvSA+BZ7OurXOknaUE+MXDiqCSYdxCU5Dd
	 SDY0XL/trV5HQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uIdjwXxFVDvU; Wed,  3 May 2023 16:58:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 274A260E36;
	Wed,  3 May 2023 16:58:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 274A260E36
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D0E31BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 16:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E55F161543
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 16:57:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E55F161543
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ydMfGJAfu1ow for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 May 2023 16:57:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94F6561535
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94F6561535
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 16:57:21 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-3f19afc4fbfso54640895e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 May 2023 09:57:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683133039; x=1685725039;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qcEFUNqrSv8hU2EwUJ9bUu4poDYlKJmp96cwk1dCn30=;
 b=is/zkpK4YOBR4ubVWAXrKJafHi64gPJnk7LtKirY6gnUVEQxT2nEDhlL3ZHvd/SHiV
 cYjw2cF8Q1XlINksr0cTx/hw8Ba/LISzY2JhgFOxzk0ZTG+NodgS0sgLj2wookceX/p/
 98dFR8nugl8z9zC42Pfx9lY4aRRaKOU5x7rVBRjWDb4Uzvpf6SgyNw45idi8ai9zHsBG
 5oModY7alvVmKICklFlfvXDVEKlS6/AhiHOdeXW3OrUoSeOE9Q+otAe90sN9x1tSMnto
 CmWXxtOJeqokE8QdXnCr/JuSwhEh1fwZijBRA/9IYzWxT2R7XbvLQ/zMHL9TWnLjcwm7
 Wkow==
X-Gm-Message-State: AC+VfDz2HGqiN1CTGAP/erb3hDdIQH47skOBuO/gxTalt9eJrxcJKeJQ
 tO8SjQAgkRtpAScpsIPblsMOWA==
X-Google-Smtp-Source: ACHHUZ6wLdQMETiiNbn1dbLVdUNgLIYiPmcV0m79sxCMMpTd0hrChGFrc9Zphlr2n7w3s71+5KzsAA==
X-Received: by 2002:a05:600c:299:b0:3f2:50ab:1bba with SMTP id
 25-20020a05600c029900b003f250ab1bbamr15515028wmk.19.1683133039587; 
 Wed, 03 May 2023 09:57:19 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 q7-20020a1cf307000000b003f18b52c73asm2381741wmq.24.2023.05.03.09.57.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 May 2023 09:57:17 -0700 (PDT)
Date: Wed, 3 May 2023 19:57:12 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <b9627c98-ec0a-4f87-91e4-478e7150b529@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 03 May 2023 16:58:41 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1683133039; x=1685725039;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qcEFUNqrSv8hU2EwUJ9bUu4poDYlKJmp96cwk1dCn30=;
 b=o+ayY+VGH7SCkI+isgiDjCaZAYLTvFp7P/aYmnyzRubk6t/g3MxNADA8nmbhl94sIH
 rrKAeJzXO1pDOgRvou0eeDKplIbtjNGhJPIGL+9PSnSkXg3xjT/PC5+jexXw4oJLN9He
 8zkpZuUt0j8SC0OWssg3hDbuegkau0XvD8rTtfAHYkLdsuXWeUCpWspqAl8qLRPR14AB
 5WuyQ328KlsdmaUJC5+rJs+EOBHU1IsjsDMI2nKpuKJ2FEkFnBPhPDA9SNvoxy2IVvs9
 CuMGMmuycFcODr2Hfh5X/qpCbCk8GEEsv+tp2udKYUmokoiTPwbKxy+yNcSQNH4O9NHT
 +QNA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=o+ayY+VG
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 13/36]
 drivers/net/ethernet/intel/ice/ice_irq.c:348 ice_free_irq() error: we
 previously assumed 'entry' could be null (see line 342)
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
head:   cf8d73244f3a7bf78ae4042f4d700da212be3dcc
commit: 1181d50520d25da05f2da1235054fd91964cc3d1 [13/36] ice: add dynamic interrupt allocation
config: openrisc-randconfig-m031-20230430 (https://download.01.org/0day-ci/archive/20230503/202305032317.RAOFS8W5-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 12.1.0

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <error27@gmail.com>
| Link: https://lore.kernel.org/r/202305032317.RAOFS8W5-lkp@intel.com/

smatch warnings:
drivers/net/ethernet/intel/ice/ice_irq.c:348 ice_free_irq() error: we previously assumed 'entry' could be null (see line 342)

vim +/entry +348 drivers/net/ethernet/intel/ice/ice_irq.c

f71fc417ba04cac Piotr Raczynski 2023-03-23  336  void ice_free_irq(struct ice_pf *pf, struct msi_map map)
f71fc417ba04cac Piotr Raczynski 2023-03-23  337  {
1181d50520d25da Piotr Raczynski 2023-03-23  338  	struct ice_irq_entry *entry;
1181d50520d25da Piotr Raczynski 2023-03-23  339  
1181d50520d25da Piotr Raczynski 2023-03-23  340  	entry = xa_load(&pf->irq_tracker.entries, map.index);
1181d50520d25da Piotr Raczynski 2023-03-23  341  
1181d50520d25da Piotr Raczynski 2023-03-23 @342  	if (!entry)
1181d50520d25da Piotr Raczynski 2023-03-23  343  		dev_err(ice_pf_to_dev(pf), "Failed to get MSIX interrupt entry at index %d",
1181d50520d25da Piotr Raczynski 2023-03-23  344  			map.index);

return;?

1181d50520d25da Piotr Raczynski 2023-03-23  345  
1181d50520d25da Piotr Raczynski 2023-03-23  346  	dev_dbg(ice_pf_to_dev(pf), "Free irq at index %d\n", map.index);
1181d50520d25da Piotr Raczynski 2023-03-23  347  
1181d50520d25da Piotr Raczynski 2023-03-23 @348  	if (entry->dynamic)
1181d50520d25da Piotr Raczynski 2023-03-23  349  		pci_msix_free_irq(pf->pdev, map);
1181d50520d25da Piotr Raczynski 2023-03-23  350  
1261628bc347e3d Piotr Raczynski 2023-03-23  351  	ice_free_irq_res(pf, map.index);
f71fc417ba04cac Piotr Raczynski 2023-03-23  352  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
