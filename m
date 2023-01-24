Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8006679467
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 10:43:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67D0140BD9;
	Tue, 24 Jan 2023 09:43:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67D0140BD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674553383;
	bh=x0dPNmOyEZ/weN1IPQ5NjaNHdn5w0upcS9lVIaVz2/o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J1XMOAMWtDGGBSNfXLtgb3YV0EdP9GljOeYzbFBrPWZYEEtWagQUZTyYL3boa/Nec
	 dOHGOwvWVx79SjDkKsNPZek3OkUeFQiaiZpCTJz611J+tlOOY8jgo9JeqQqQWtrvss
	 nO0yp3oj75d88Sa6fMpxz3xq2M44jHxLhbbQ9EhWwG1h4zpH67mxb6jD+NOH4xD0dA
	 wAR89Ufrmo0M+uPeGnnlNJbpG5juqHJqOPBIShZFTO62JKi+DoZXIUxeGILPQDklyw
	 200lZ/gAZuU+/CjCtZ1tKSx30MnhlcXLeLxHfvlV8WCSODXET4gWd1hXarP7BevrVO
	 0yhiZ4lGRH1QQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id elv6Wm28W5UJ; Tue, 24 Jan 2023 09:43:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED8E4403FB;
	Tue, 24 Jan 2023 09:43:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED8E4403FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 349251BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 09:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D68C40289
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 09:42:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D68C40289
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4wXwZNWMOLCL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 09:42:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A862E401D2
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A862E401D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 09:42:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="324934546"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="324934546"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 01:42:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="655362520"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="655362520"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 24 Jan 2023 01:42:48 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKFpH-0006JI-2r;
 Tue, 24 Jan 2023 09:42:47 +0000
Date: Tue, 24 Jan 2023 17:42:01 +0800
From: kernel test robot <lkp@intel.com>
To: Leon Romanovsky <leon@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Message-ID: <202301241750.Qpv1Vuj6-lkp@intel.com>
References: <9b45993fb96b6faa2b65f3dd78e677a54eeeec31.1674481435.git.leon@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b45993fb96b6faa2b65f3dd78e677a54eeeec31.1674481435.git.leon@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674553375; x=1706089375;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HeaXoa9wAMLuHvO4i89p5YmVEi4JDbJhzhRjYfIMEEY=;
 b=PlYt9ccSt5hijC1G9jyvWUuGDKZtilCK4vh4633/rebBFOclYv8Zkgm7
 3zIg7LehGVi5KZXPjcwvLkiA1Msmpcg4A2eooy/EoYB2OcWNw45/xuVGw
 vJpqyQl7IGZDtG4uYmNA6Nf5t+VCmjnkrZiHdjo5w76WVRLil+bljmO6N
 9bwy+cE6C+YP14EWeuoGsS/HESZza0nAYVEQaQ9DkVa4/FMnDoF5ZViP+
 gUk+m/Sm2flooJydQqVtJXVCEV/HOuZTFqLlzQlNQnt0kaQyC1E/3ZI3R
 MUlbxO7vkm5MXy7HJHjzf+ZmmrUs8IzHntmCv9eu2Cq4X981s9e3K+vYB
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PlYt9ccS
Subject: Re: [Intel-wired-lan] [PATCH net-next 10/10] cxgb4: fill IPsec
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
Cc: Raju Rangoju <rajur@chelsio.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 oe-kbuild-all@lists.linux.dev, Jonathan Corbet <corbet@lwn.net>,
 Jay Vosburgh <j.vosburgh@gmail.com>, oss-drivers@corigine.com,
 llvm@lists.linux.dev, linux-doc@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Veaceslav Falico <vfalico@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Leon,

I love your patch! Yet something to improve:

[auto build test ERROR on net-next/master]

url:    https://github.com/intel-lab-lkp/linux/commits/Leon-Romanovsky/xfrm-extend-add-policy-callback-to-set-failure-reason/20230123-220422
patch link:    https://lore.kernel.org/r/9b45993fb96b6faa2b65f3dd78e677a54eeeec31.1674481435.git.leon%40kernel.org
patch subject: [PATCH net-next 10/10] cxgb4: fill IPsec state validation failure reason
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20230124/202301241750.Qpv1Vuj6-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/7eb8edee0c687243325ffd27b20c0f5d429b76f0
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Leon-Romanovsky/xfrm-extend-add-policy-callback-to-set-failure-reason/20230123-220422
        git checkout 7eb8edee0c687243325ffd27b20c0f5d429b76f0
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c:263:63: error: too few arguments provided to function-like macro invocation
                   NL_SET_ERR_MSG_MOD("Cannot offload xfrm states without aead");
                                                                               ^
   include/linux/netlink.h:127:9: note: macro 'NL_SET_ERR_MSG_MOD' defined here
   #define NL_SET_ERR_MSG_MOD(extack, msg)                 \
           ^
>> drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c:263:3: error: use of undeclared identifier 'NL_SET_ERR_MSG_MOD'
                   NL_SET_ERR_MSG_MOD("Cannot offload xfrm states without aead");
                   ^
   2 errors generated.


vim +263 drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c

   224	
   225	/*
   226	 * ch_ipsec_xfrm_add_state
   227	 * returns 0 on success, negative error if failed to send message to FPGA
   228	 * positive error if FPGA returned a bad response
   229	 */
   230	static int ch_ipsec_xfrm_add_state(struct xfrm_state *x,
   231					   struct netlink_ext_ack *extack)
   232	{
   233		struct ipsec_sa_entry *sa_entry;
   234		int res = 0;
   235	
   236		if (x->props.aalgo != SADB_AALG_NONE) {
   237			NL_SET_ERR_MSG_MOD(extack, "Cannot offload authenticated xfrm states");
   238			return -EINVAL;
   239		}
   240		if (x->props.calgo != SADB_X_CALG_NONE) {
   241			NL_SET_ERR_MSG_MOD(extack, "Cannot offload compressed xfrm states");
   242			return -EINVAL;
   243		}
   244		if (x->props.family != AF_INET &&
   245		    x->props.family != AF_INET6) {
   246			NL_SET_ERR_MSG_MOD(extack, "Only IPv4/6 xfrm state offloaded");
   247			return -EINVAL;
   248		}
   249		if (x->props.mode != XFRM_MODE_TRANSPORT &&
   250		    x->props.mode != XFRM_MODE_TUNNEL) {
   251			NL_SET_ERR_MSG_MOD(extack, "Only transport and tunnel xfrm offload");
   252			return -EINVAL;
   253		}
   254		if (x->id.proto != IPPROTO_ESP) {
   255			NL_SET_ERR_MSG_MOD(extack, "Only ESP xfrm state offloaded");
   256			return -EINVAL;
   257		}
   258		if (x->encap) {
   259			NL_SET_ERR_MSG_MOD(extack, "Encapsulated xfrm state not offloaded");
   260			return -EINVAL;
   261		}
   262		if (!x->aead) {
 > 263			NL_SET_ERR_MSG_MOD("Cannot offload xfrm states without aead");
   264			return -EINVAL;
   265		}
   266		if (x->aead->alg_icv_len != 128 &&
   267		    x->aead->alg_icv_len != 96) {
   268			NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with AEAD ICV length other than 96b & 128b");
   269			return -EINVAL;
   270		}
   271		if ((x->aead->alg_key_len != 128 + 32) &&
   272		    (x->aead->alg_key_len != 256 + 32)) {
   273			NL_SET_ERR_MSG_MOD(extack, "cannot offload xfrm states with AEAD key length other than 128/256 bit");
   274			return -EINVAL;
   275		}
   276		if (x->tfcpad) {
   277			NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with tfc padding");
   278			return -EINVAL;
   279		}
   280		if (!x->geniv) {
   281			NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states without geniv");
   282			return -EINVAL;
   283		}
   284		if (strcmp(x->geniv, "seqiv")) {
   285			NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with geniv other than seqiv");
   286			return -EINVAL;
   287		}
   288		if (x->xso.type != XFRM_DEV_OFFLOAD_CRYPTO) {
   289			NL_SET_ERR_MSG_MOD(extack, "Unsupported xfrm offload");
   290			return -EINVAL;
   291		}
   292	
   293		sa_entry = kzalloc(sizeof(*sa_entry), GFP_KERNEL);
   294		if (!sa_entry) {
   295			res = -ENOMEM;
   296			goto out;
   297		}
   298	
   299		sa_entry->hmac_ctrl = ch_ipsec_setauthsize(x, sa_entry);
   300		if (x->props.flags & XFRM_STATE_ESN)
   301			sa_entry->esn = 1;
   302		ch_ipsec_setkey(x, sa_entry);
   303		x->xso.offload_handle = (unsigned long)sa_entry;
   304		try_module_get(THIS_MODULE);
   305	out:
   306		return res;
   307	}
   308	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
