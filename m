Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D698679279
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 09:01:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45E6A40BB8;
	Tue, 24 Jan 2023 08:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45E6A40BB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674547262;
	bh=4nxcJtBT4WPTSyZxsdbsLhbCgelXOayH7t0PqyFj5G0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JM0xxBNmcmcmFNVZakwbvqFlrAIImzGYwD0ndHNnoNHO31ifaqASfHivmZbhZfZs5
	 MM8LOiPAQ7xIdxKI5btZqvR4woTjU9Z30LY1o5Nzs+D0fIn9UuY5QFDOnwPsa2fmQp
	 7Dn9/O/7k9A5YoqnpvgX15hL2nZYrEQEd0gEvHqq5xy2PstuKMJUSNNYWlpwQYR/16
	 hSHhxpBoD9e2WPg9RIGnGv4y6TeWpXBKpAZeTv8NLJZdFo638rwqm1hPRY/CoJqEBs
	 3o4Uzk8vZET3Eu5PgXtLkYH2nRw8JH9iPl2u/4hgyQYuap9odFul2YrVojdd3TKLOM
	 zO9zDP491hSVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tbNDLmCIAt2R; Tue, 24 Jan 2023 08:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0193640BAE;
	Tue, 24 Jan 2023 08:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0193640BAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2962D1BF303
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 08:00:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0039C41724
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 08:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0039C41724
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UCc-0sB-Uy_b for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 08:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DC9C410A1
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DC9C410A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 08:00:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="324920717"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="324920717"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 00:00:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="692510306"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="692510306"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 24 Jan 2023 00:00:46 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKEEX-0006Fs-1k;
 Tue, 24 Jan 2023 08:00:45 +0000
Date: Tue, 24 Jan 2023 15:59:55 +0800
From: kernel test robot <lkp@intel.com>
To: Leon Romanovsky <leon@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Message-ID: <202301241552.GWkgnAH7-lkp@intel.com>
References: <a5426033528ccef6e0e71fe06b55ae56c5596e85.1674481435.git.leon@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5426033528ccef6e0e71fe06b55ae56c5596e85.1674481435.git.leon@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674547254; x=1706083254;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xc2SUtCeobW/ezSFCjJCHss3YwaPNlCk6liXkETTUwY=;
 b=jiP6haUVzmhLZtgxgYRxZXy5v8Zb/OijVAVY/9mng5argdsPyFMeQUWG
 msC7n9ZHwJhYpK2jiZ2jwP++mt2AFXV60vmHvUaU6DtA4wQW1s9rpAFKa
 SmI1xnJLHHDsZl2DM/OCRUqwg4XrSJQY+mOMjPbcqdv5n7B1s3cOwK+VY
 Jx81ALVnffH81BMpcmS8s9ynijbyn3QYn2Mi8n9sEn7boofhKklUakykK
 BGc2ModED7u01whriQQeG+ysmLN4nmGSS0kYtVI0eJyRK0H4MIpFvYsAT
 oDB2gcAsa4F97aGkwoqX1LSl7MdS2gG2cCEPq0tdSlTB7CBvte1MGjDg7
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jiP6haUV
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/10] net/mlx5e: Fill IPsec
 state validation failure reason
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
Cc: Ayush Sawal <ayush.sawal@chelsio.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Dumazet <edumazet@google.com>,
 Jonathan Corbet <corbet@lwn.net>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jay Vosburgh <j.vosburgh@gmail.com>, Raju Rangoju <rajur@chelsio.com>,
 llvm@lists.linux.dev, linux-doc@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Veaceslav Falico <vfalico@gmail.com>,
 oe-kbuild-all@lists.linux.dev, Simon Horman <simon.horman@corigine.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Leon,

I love your patch! Yet something to improve:

[auto build test ERROR on net-next/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Leon-Romanovsky/xfrm-extend-add-policy-callback-to-set-failure-reason/20230123-220422
patch link:    https://lore.kernel.org/r/a5426033528ccef6e0e71fe06b55ae56c5596e85.1674481435.git.leon%40kernel.org
patch subject: [Intel-wired-lan] [PATCH net-next 04/10] net/mlx5e: Fill IPsec state validation failure reason
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20230124/202301241552.GWkgnAH7-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/bd6a3bcc8978f551f83f85b9c18d199c71c29d7c
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Leon-Romanovsky/xfrm-extend-add-policy-callback-to-set-failure-reason/20230123-220422
        git checkout bd6a3bcc8978f551f83f85b9c18d199c71c29d7c
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/ drivers/net/ethernet/mellanox/mlx5/core/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c:276:22: error: use of undeclared identifier 'extackx'; did you mean 'extack'?
                   NL_SET_ERR_MSG_MOD(extackx, "Unsupported xfrm offload type");
                                      ^~~~~~~
                                      extack
   include/linux/netlink.h:128:18: note: expanded from macro 'NL_SET_ERR_MSG_MOD'
           NL_SET_ERR_MSG((extack), KBUILD_MODNAME ": " msg)
                           ^
   include/linux/netlink.h:100:38: note: expanded from macro 'NL_SET_ERR_MSG'
           struct netlink_ext_ack *__extack = (extack);    \
                                               ^
   drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c:167:34: note: 'extack' declared here
                                        struct netlink_ext_ack *extack)
                                                                ^
   1 error generated.


vim +276 drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c

   164	
   165	static int mlx5e_xfrm_validate_state(struct mlx5_core_dev *mdev,
   166					     struct xfrm_state *x,
   167					     struct netlink_ext_ack *extack)
   168	{
   169		if (x->props.aalgo != SADB_AALG_NONE) {
   170			NL_SET_ERR_MSG_MOD(extack, "Cannot offload authenticated xfrm states");
   171			return -EINVAL;
   172		}
   173		if (x->props.ealgo != SADB_X_EALG_AES_GCM_ICV16) {
   174			NL_SET_ERR_MSG_MOD(extack, "Only AES-GCM-ICV16 xfrm state may be offloaded");
   175			return -EINVAL;
   176		}
   177		if (x->props.calgo != SADB_X_CALG_NONE) {
   178			NL_SET_ERR_MSG_MOD(extack, "Cannot offload compressed xfrm states");
   179			return -EINVAL;
   180		}
   181		if (x->props.flags & XFRM_STATE_ESN &&
   182		    !(mlx5_ipsec_device_caps(mdev) & MLX5_IPSEC_CAP_ESN)) {
   183			NL_SET_ERR_MSG_MOD(extack, "Cannot offload ESN xfrm states");
   184			return -EINVAL;
   185		}
   186		if (x->props.family != AF_INET &&
   187		    x->props.family != AF_INET6) {
   188			NL_SET_ERR_MSG_MOD(extack, "Only IPv4/6 xfrm states may be offloaded");
   189			return -EINVAL;
   190		}
   191		if (x->id.proto != IPPROTO_ESP) {
   192			NL_SET_ERR_MSG_MOD(extack, "Only ESP xfrm state may be offloaded");
   193			return -EINVAL;
   194		}
   195		if (x->encap) {
   196			NL_SET_ERR_MSG_MOD(extack, "Encapsulated xfrm state may not be offloaded");
   197			return -EINVAL;
   198		}
   199		if (!x->aead) {
   200			NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states without aead");
   201			return -EINVAL;
   202		}
   203		if (x->aead->alg_icv_len != 128) {
   204			NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with AEAD ICV length other than 128bit");
   205			return -EINVAL;
   206		}
   207		if ((x->aead->alg_key_len != 128 + 32) &&
   208		    (x->aead->alg_key_len != 256 + 32)) {
   209			NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with AEAD key length other than 128/256 bit");
   210			return -EINVAL;
   211		}
   212		if (x->tfcpad) {
   213			NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with tfc padding");
   214			return -EINVAL;
   215		}
   216		if (!x->geniv) {
   217			NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states without geniv");
   218			return -EINVAL;
   219		}
   220		if (strcmp(x->geniv, "seqiv")) {
   221			NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with geniv other than seqiv");
   222			return -EINVAL;
   223		}
   224		switch (x->xso.type) {
   225		case XFRM_DEV_OFFLOAD_CRYPTO:
   226			if (!(mlx5_ipsec_device_caps(mdev) & MLX5_IPSEC_CAP_CRYPTO)) {
   227				NL_SET_ERR_MSG_MOD(extack, "Crypto offload is not supported");
   228				return -EINVAL;
   229			}
   230	
   231			if (x->props.mode != XFRM_MODE_TRANSPORT &&
   232			    x->props.mode != XFRM_MODE_TUNNEL) {
   233				NL_SET_ERR_MSG_MOD(extack, "Only transport and tunnel xfrm states may be offloaded");
   234				return -EINVAL;
   235			}
   236			break;
   237		case XFRM_DEV_OFFLOAD_PACKET:
   238			if (!(mlx5_ipsec_device_caps(mdev) &
   239			      MLX5_IPSEC_CAP_PACKET_OFFLOAD)) {
   240				NL_SET_ERR_MSG_MOD(extack, "Packet offload is not supported");
   241				return -EINVAL;
   242			}
   243	
   244			if (x->props.mode != XFRM_MODE_TRANSPORT) {
   245				NL_SET_ERR_MSG_MOD(extack, "Only transport xfrm states may be offloaded in packet mode");
   246				return -EINVAL;
   247			}
   248	
   249			if (x->replay_esn && x->replay_esn->replay_window != 32 &&
   250			    x->replay_esn->replay_window != 64 &&
   251			    x->replay_esn->replay_window != 128 &&
   252			    x->replay_esn->replay_window != 256) {
   253				NL_SET_ERR_MSG_MOD(extack, "Unsupported replay window size");
   254				return -EINVAL;
   255			}
   256	
   257			if (!x->props.reqid) {
   258				NL_SET_ERR_MSG_MOD(extack, "Cannot offload without reqid");
   259				return -EINVAL;
   260			}
   261	
   262			if (x->lft.hard_byte_limit != XFRM_INF ||
   263			    x->lft.soft_byte_limit != XFRM_INF) {
   264				NL_SET_ERR_MSG_MOD(extack, "Device doesn't support limits in bytes");
   265				return -EINVAL;
   266			}
   267	
   268			if (x->lft.soft_packet_limit >= x->lft.hard_packet_limit &&
   269			    x->lft.hard_packet_limit != XFRM_INF) {
   270				/* XFRM stack doesn't prevent such configuration :(. */
   271				NL_SET_ERR_MSG_MOD(extack, "Hard packet limit must be greater than soft one");
   272				return -EINVAL;
   273			}
   274			break;
   275		default:
 > 276			NL_SET_ERR_MSG_MOD(extackx, "Unsupported xfrm offload type");
   277			return -EINVAL;
   278		}
   279		return 0;
   280	}
   281	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
