Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4DC7F9BF8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 09:43:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78EBD402CA;
	Mon, 27 Nov 2023 08:43:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78EBD402CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701074622;
	bh=nujLitpgjVg4Fe18q0cg9j7cE0a3xpAB+uOB0rbtJ4Q=;
	h=From:Date:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=2rGZ1Xhp3WYHiefNokZ1omK1Sz/KpSleveuCtnxeUdgnUBphY4UejFbLnIyArTgqi
	 vsGaE5fav4nITxIa3of2lxaapuC2zKi/nNeKAuHqFSu5q2MMZYjOXoOCCc3tE71CAi
	 Xy6C4I2OsA8IbALLiyLwjcBp3lKesFwIHB66ekapoXiINeHSKywkNDSUjI8Q29fBU8
	 b4EyfIMuB/fw0yiI9hRYhNjy00qKQ0Jl2PJgoBTrn2mndbjiha1wPBnQ98sZ4gq+AQ
	 8wIeqr5FndDOC00UsSRsf8YNwPUj7QEV5u/b4JcSkVHPSESsa9cw4LAgYUOIY2fjhX
	 SiHWivEgec1zg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQuZ0pi7d0jv; Mon, 27 Nov 2023 08:43:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEB50402C0;
	Mon, 27 Nov 2023 08:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEB50402C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93B971BF404
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 08:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6AAAD402C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 08:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AAAD402C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gi-4HSFEt7Rt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 08:43:34 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05AF0402BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 08:43:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05AF0402BC
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-3316bb1303bso2410813f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 00:43:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701074612; x=1701679412;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:date:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2xnOF1CxvID+dtjKdZtlw3NSe8y8zSJxuj2ZIPYY3uU=;
 b=Dl58GouHH0vqaPJQsJ8FfcpvUYammsUR706K61+3uZk3lk4HfaDpaPev5aENM5psS1
 fN7gFJ8GF4sjoyXudDEDn/hwo/KA+1WfxcVJ0Zd4/L2vtexhviQZwo1DGyvASN+LA13f
 wYYMB9NnO0lQx7CPWaip6B9g3kQ18+9sXUHjBs3R/CVJgynbbZrRwmm20EtAOyxsfY9d
 7p1Cw1oJjFq9TvwSkR8UuIPLj0+fXqfqscGHx/fd0Kad20gwSgd9Wj6MFf7NvoW8uUDn
 yvdWQDwaYuk9+91ddJiCsO3bhId3vVUqaN4WZ0Td4egbfMfuZdxPiHUfqe+mxE2c1t+9
 eWaQ==
X-Gm-Message-State: AOJu0YxXkbTeKxhqRAJ2+A5CGthEgQKWwzsPT8Mti+HjsyIOH5UrJZs4
 mhW6EPfPEwitImlN5foDjuD91Q==
X-Google-Smtp-Source: AGHT+IEk54NjVWopu9izapGPvppfJzH7fiDJYjBKBIuzRtGaobPqV2lbJB4Y3jcA3sJh2RPzNIxL/A==
X-Received: by 2002:a5d:4f8c:0:b0:332:ca1a:c3a0 with SMTP id
 d12-20020a5d4f8c000000b00332ca1ac3a0mr7700858wru.52.1701074612004; 
 Mon, 27 Nov 2023 00:43:32 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 e15-20020a5d594f000000b00332fda15055sm3362220wri.111.2023.11.27.00.43.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Nov 2023 00:43:31 -0800 (PST)
From: Dan Carpenter <dan.carpenter@linaro.org>
X-Google-Original-From: Dan Carpenter <dan.carpenter@oracle.com>
Date: Mon, 27 Nov 2023 11:43:29 +0300
To: oe-kbuild@lists.linux.dev, Ivan Vecera <ivecera@redhat.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <25111205-a895-46a2-b53f-49e29ba41b16@suswa.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231124150343.81520-5-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1701074612; x=1701679412; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=2xnOF1CxvID+dtjKdZtlw3NSe8y8zSJxuj2ZIPYY3uU=;
 b=ZEqvH+eiES3o9cD5MGbkSAqaChnzuPv/KLvpv1w+r1hNIo01XVZn09/l5x7oIw+A1q
 eiRXMPSCwUew7e1ExZzD/nyTzkNxqGBnL9QlPuYO7ItCdr4Fqii+DoOZfH6wXN2ctwnG
 2Q7iManUXaJkQkocTOn6RxZQHQBEdo9uM2Y43tqKusytRg/15Fj19LiYvq6ce6O3hOEl
 61Wd2s4M5qrnJHpn1Z/8iPsNO0XdvgRB9cGHuly/35aeVsGeY8BHe7oe9k6tJlRSsoEW
 nsThNWNq3GwZ4w+zU0yb+/xGBjFTkW5i/iHRlA/E01CUK/lFCV1gESLL5thzpGxF1LOa
 w53w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=ZEqvH+ei
Subject: Re: [Intel-wired-lan] [PATCH v5 4/5] i40e: Fix broken support for
 floating VEBs
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, oe-kbuild-all@lists.linux.dev,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Ivan,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Ivan-Vecera/i40e-Use-existing-helper-to-find-flow-director-VSI/20231124-230616
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20231124150343.81520-5-ivecera%40redhat.com
patch subject: [PATCH v5 4/5] i40e: Fix broken support for floating VEBs
config: x86_64-randconfig-161-20231127 (https://download.01.org/0day-ci/archive/20231127/202311270851.Ie6aegcS-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce: (https://download.01.org/0day-ci/archive/20231127/202311270851.Ie6aegcS-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <error27@gmail.com>
| Closes: https://lore.kernel.org/r/202311270851.Ie6aegcS-lkp@intel.com/

New smatch warnings:
drivers/net/ethernet/intel/i40e/i40e_main.c:14743 i40e_veb_release() error: potentially dereferencing uninitialized 'vsi'.

Old smatch warnings:
[ low confidence ]
drivers/net/ethernet/intel/i40e/i40e_main.c:5966 i40e_set_bw_limit() warn: error code type promoted to positive: 'speed'
drivers/net/ethernet/intel/i40e/i40e_main.c:13476 i40e_queue_pair_toggle_rings() warn: missing error code? 'ret'
drivers/net/ethernet/intel/i40e/i40e_main.c:14272 i40e_vsi_setup_vectors() warn: missing error code? 'ret'
drivers/net/ethernet/intel/i40e/i40e_main.c:15566 i40e_init_recovery_mode() warn: 'vsi->netdev' from register_netdev() not released on lines: 15566.

vim +/vsi +14743 drivers/net/ethernet/intel/i40e/i40e_main.c

41c445ff0f482bb Jesse Brandeburg 2013-09-11  14715  void i40e_veb_release(struct i40e_veb *veb)
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14716  {
0aab77d67d37d09 Ivan Vecera      2023-11-24  14717  	struct i40e_vsi *vsi, *vsi_it;
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14718  	struct i40e_pf *pf;
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14719  	int i, n = 0;
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14720  
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14721  	pf = veb->pf;
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14722  
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14723  	/* find the remaining VSI and check for extras */
0aab77d67d37d09 Ivan Vecera      2023-11-24  14724  	i40e_pf_for_each_vsi(pf, i, vsi_it)
0aab77d67d37d09 Ivan Vecera      2023-11-24  14725  		if (vsi_it->uplink_seid == veb->seid) {
93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14726  			if (vsi_it->flags & I40E_VSI_FLAG_VEB_OWNER)
0aab77d67d37d09 Ivan Vecera      2023-11-24  14727  				vsi = vsi_it;

Do we always find a vsi?  Presumably, yes, but it's not obvious just
from reading this function.

41c445ff0f482bb Jesse Brandeburg 2013-09-11  14728  			n++;
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14729  		}
0aab77d67d37d09 Ivan Vecera      2023-11-24  14730  
93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14731  	/* Floating VEB has to be empty and regular one must have
93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14732  	 * single owner VSI.
93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14733  	 */
93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14734  	if ((veb->uplink_seid && n != 1) || (!veb->uplink_seid && n != 0)) {
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14735  		dev_info(&pf->pdev->dev,
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14736  			 "can't remove VEB %d with %d VSIs left\n",
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14737  			 veb->seid, n);
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14738  		return;
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14739  	}
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14740  
93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14741  	/* For regular VEB move the owner VSI to uplink VEB */
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14742  	if (veb->uplink_seid) {
93a1bc91a1ccc5a Ivan Vecera      2023-11-24 @14743  		vsi->flags &= ~I40E_VSI_FLAG_VEB_OWNER;
                                                                ^^^^^^^^^^

41c445ff0f482bb Jesse Brandeburg 2013-09-11  14744  		vsi->uplink_seid = veb->uplink_seid;
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14745  		if (veb->uplink_seid == pf->mac_seid)
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14746  			vsi->veb_idx = I40E_NO_VEB;
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14747  		else
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14748  			vsi->veb_idx = veb->veb_idx;
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14749  	}
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14750  
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14751  	i40e_aq_delete_element(&pf->hw, veb->seid, NULL);
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14752  	i40e_veb_clear(veb);
41c445ff0f482bb Jesse Brandeburg 2013-09-11  14753  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
