Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F206F5AB2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 May 2023 17:10:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9153481FC5;
	Wed,  3 May 2023 15:10:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9153481FC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683126600;
	bh=WZ7pX3dJ30L1X2IN9aRInwqUl/LZ/cCYjCSqciGbL2I=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BRiZvNkF+aWcK+RrOYfeH9blfzgceaZtxCh3TVVk7pK0tw7dQkU3db6TW0EKWtHjM
	 if3NmvEERNkwn/TRbjhMzArLzPTDcLQoV5mVbP3akW8MH59xtNpIsok3CuVPUQ4zFn
	 DKMkHZzP5k/8AKg7U4t516zamk1M9DkWXxoOiH5iBPTV71Z9uoRUQCGL8Y7npQi+Jl
	 fU8cbceZbSYN+z8jU6S89oGgz1Pag8ULSsPihd2T2sGLzbCdYQ4KXJOoniOrcT/VgJ
	 exsyN2Q84y63h5DUmh5IqUBMZhsibFKDDbRzF84glyA2tKoatQKCPZItHIFIAF49Bm
	 vrXILkAkPAB1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aq8glI3l9cqN; Wed,  3 May 2023 15:09:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52B1281414;
	Wed,  3 May 2023 15:09:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52B1281414
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A45E1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 14:24:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 39A6B81E04
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 14:24:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39A6B81E04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RMTkzqP3XNmo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 May 2023 14:24:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED5D781C44
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED5D781C44
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 May 2023 14:24:21 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-3f37a36b713so12060455e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 May 2023 07:24:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683123860; x=1685715860;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QCCRCGEO9lC/0o2kBg6q5PwQuDajEfzcShoxVu8uqw4=;
 b=BR4wo6nz66w3YtBc2EMOfB/W+dPm4WcjIx9f+YoWx3g/LX40wpPJQks06kJZMAuR0K
 5qRE3F7QQN+yzV1fbvhfwJC5hVfFPYopSkTLQn/+Wst86TPCg7z51Bmv8KE3Lu/dMGby
 qWahJmOIDG1DZg7sYQzOLkg5A03w6e5tX7CXTf5twVCz183Me5ro/faauBBrwRwkSGwc
 NQTgoHUUid5XuIuvXnqe235BUlrcLJ7IDQkDCAxMwx4hBxFWaDIVRIcpAlaxclPbLzZ7
 1Xku4DCTieMP4lnjtHT8ccGKVjUnsPI2i7L1Dl5pI/jE/sWtFsSxRoa+vxp2U37DlLjI
 OA+Q==
X-Gm-Message-State: AC+VfDwOCIGZCMS8ijCgKstxqjHLYmsIJGIlafR08aBOgDu9ITmNxcNq
 WLYFW7FLDUXYtepcXhOXIn2/NA==
X-Google-Smtp-Source: ACHHUZ41scODdMRgUPqRoumgUZMSt1S2Xmfr+D0kyeNwRKi6R4YrNLB7UYMfJgvanuwxtCIZBXoX4g==
X-Received: by 2002:a7b:c5d9:0:b0:3f1:8992:3618 with SMTP id
 n25-20020a7bc5d9000000b003f189923618mr15020143wmk.13.1683123859959; 
 Wed, 03 May 2023 07:24:19 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 k23-20020a05600c0b5700b003ef5bb63f13sm2089181wmr.10.2023.05.03.07.24.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 May 2023 07:24:18 -0700 (PDT)
Date: Wed, 3 May 2023 17:24:14 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <a9200e7a-f2aa-446b-8d01-acda194f7ddd@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 03 May 2023 15:09:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1683123860; x=1685715860;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QCCRCGEO9lC/0o2kBg6q5PwQuDajEfzcShoxVu8uqw4=;
 b=DsaVYIMxJme1OoAhEsEN9+ZvloK+hILa2s128efGX8NzlwYH1ehOiTt4ZLfrz3TEOv
 YIKzO87Krpq9he6UuLdRFh+e9m5C+aTjTf/mIZerTNy50GuhFYkcXK5vWycQ9KulRCcv
 /iuqk1TcnUq1rTrMOcrI/8yzUmHi39XeXJTy7V+MXnu8U4fc/Ry0wtRiQf1ymEhsiWVC
 0yFybMvvxnDeI6zt4+bi22J0wq7mAx4R+xGRUb4kbZcOojZnBQ7X/iP+akcjRTo3nGnm
 qFYBbmKqnRCoWl0Qx0RcITS4H7E8Hf6d5KrOrBo0eUkGyYDsCC8z+vNnR0PUP/8TUCG0
 kKSQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=DsaVYIMx
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 11/36]
 drivers/net/ethernet/intel/ice/ice_base.c:139 ice_vsi_alloc_q_vector()
 warn: passing devm_ allocated variable to kfree. 'q_vector'
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   cf8d73244f3a7bf78ae4042f4d700da212be3dcc
commit: f71fc417ba04cac4a85406e3818e94d60cef82e4 [11/36] ice: add individual interrupt allocation
config: openrisc-randconfig-m031-20230430 (https://download.01.org/0day-ci/archive/20230503/202305032143.6VO9C88R-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 12.1.0

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <error27@gmail.com>
| Link: https://lore.kernel.org/r/202305032143.6VO9C88R-lkp@intel.com/

smatch warnings:
drivers/net/ethernet/intel/ice/ice_base.c:139 ice_vsi_alloc_q_vector() warn: passing devm_ allocated variable to kfree. 'q_vector'

vim +/q_vector +139 drivers/net/ethernet/intel/ice/ice_base.c

88865fc4bbd61e Karol Kolacinski       2020-05-07  102  static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  103  {
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  104  	struct ice_pf *pf = vsi->back;
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  105  	struct ice_q_vector *q_vector;
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  106  
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  107  	/* allocate q_vector */
4015d11e4b9720 Brett Creeley          2019-11-08  108  	q_vector = devm_kzalloc(ice_pf_to_dev(pf), sizeof(*q_vector),
                                                        ^^^^^^^^^^^^^^^^^^^^^^^

4015d11e4b9720 Brett Creeley          2019-11-08  109  				GFP_KERNEL);
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  110  	if (!q_vector)
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  111  		return -ENOMEM;
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  112  
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  113  	q_vector->vsi = vsi;
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  114  	q_vector->v_idx = v_idx;
118e0e10025866 Michal Swiatkowski     2019-12-12  115  	q_vector->tx.itr_setting = ICE_DFLT_TX_ITR;
118e0e10025866 Michal Swiatkowski     2019-12-12  116  	q_vector->rx.itr_setting = ICE_DFLT_RX_ITR;
d59684a07e37b0 Jesse Brandeburg       2021-03-31  117  	q_vector->tx.itr_mode = ITR_DYNAMIC;
d59684a07e37b0 Jesse Brandeburg       2021-03-31  118  	q_vector->rx.itr_mode = ITR_DYNAMIC;
dc23715cf30a9a Maciej Fijalkowski     2021-08-19  119  	q_vector->tx.type = ICE_TX_CONTAINER;
dc23715cf30a9a Maciej Fijalkowski     2021-08-19  120  	q_vector->rx.type = ICE_RX_CONTAINER;
f71fc417ba04ca Piotr Raczynski        2023-03-23  121  	q_vector->irq.index = -ENOENT;
d59684a07e37b0 Jesse Brandeburg       2021-03-31  122  
f71fc417ba04ca Piotr Raczynski        2023-03-23  123  	if (vsi->type == ICE_VSI_VF) {
f71fc417ba04ca Piotr Raczynski        2023-03-23  124  		q_vector->reg_idx = ice_calc_vf_reg_idx(vsi->vf, q_vector);
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  125  		goto out;
f71fc417ba04ca Piotr Raczynski        2023-03-23  126  	} else if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
f71fc417ba04ca Piotr Raczynski        2023-03-23  127  		struct ice_vsi *ctrl_vsi = ice_get_vf_ctrl_vsi(pf, vsi);
f71fc417ba04ca Piotr Raczynski        2023-03-23  128  
f71fc417ba04ca Piotr Raczynski        2023-03-23  129  		if (ctrl_vsi) {
f71fc417ba04ca Piotr Raczynski        2023-03-23  130  			if (unlikely(!ctrl_vsi->q_vectors))
f71fc417ba04ca Piotr Raczynski        2023-03-23  131  				return -ENOENT;
f71fc417ba04ca Piotr Raczynski        2023-03-23  132  			q_vector->irq = ctrl_vsi->q_vectors[0]->irq;
f71fc417ba04ca Piotr Raczynski        2023-03-23  133  			goto skip_alloc;
f71fc417ba04ca Piotr Raczynski        2023-03-23  134  		}
f71fc417ba04ca Piotr Raczynski        2023-03-23  135  	}
f71fc417ba04ca Piotr Raczynski        2023-03-23  136  
f71fc417ba04ca Piotr Raczynski        2023-03-23  137  	q_vector->irq = ice_alloc_irq(pf);
f71fc417ba04ca Piotr Raczynski        2023-03-23  138  	if (q_vector->irq.index < 0) {
f71fc417ba04ca Piotr Raczynski        2023-03-23 @139  		kfree(q_vector);
                                                                ^^^^^^^^^^^^^^^^
Double free (it's devm_ allocated).

f71fc417ba04ca Piotr Raczynski        2023-03-23  140  		return -ENOMEM;
f71fc417ba04ca Piotr Raczynski        2023-03-23  141  	}
f71fc417ba04ca Piotr Raczynski        2023-03-23  142  
f71fc417ba04ca Piotr Raczynski        2023-03-23  143  skip_alloc:
f71fc417ba04ca Piotr Raczynski        2023-03-23  144  	q_vector->reg_idx = q_vector->irq.index;
f71fc417ba04ca Piotr Raczynski        2023-03-23  145  
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  146  	/* only set affinity_mask if the CPU is online */
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  147  	if (cpu_online(v_idx))
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  148  		cpumask_set_cpu(v_idx, &q_vector->affinity_mask);
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  149  
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  150  	/* This will not be called in the driver load path because the netdev
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  151  	 * will not be created yet. All other cases with register the NAPI
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  152  	 * handler here (i.e. resume, reset/rebuild, etc.)
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  153  	 */
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  154  	if (vsi->netdev)
b48b89f9c189d2 Jakub Kicinski         2022-09-27  155  		netif_napi_add(vsi->netdev, &q_vector->napi, ice_napi_poll);
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  156  
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  157  out:
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  158  	/* tie q_vector and VSI together */
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  159  	vsi->q_vectors[v_idx] = q_vector;
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  160  
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  161  	return 0;
eff380aaffedb2 Anirudh Venkataramanan 2019-10-24  162  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
