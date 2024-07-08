Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319D592A5F6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 17:45:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE29440AAB;
	Mon,  8 Jul 2024 15:45:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PQ9HlTuTsE39; Mon,  8 Jul 2024 15:44:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE50840594
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720453498;
	bh=PwNSfE3htJIzmC6/CCUDkYytjUdGt1k8Nd1suzoQTKg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=DlK7zRiSp3JUj0Yc84lOMvPoi5pnzaw5IBNXCPqPgwpiIsrfD9Rl6eCtghtCFsgGV
	 dD0nM7sK+QRsc1k8OJlGcBGU6TX62HMCaviZeVWqfslFYYg+Ay6FR1rSDUD45mtNQx
	 mLiPQRVukRqyZ8yYsLLlHzxMlO7GbvwFPCxyliXhP4d/Zspld9yS6fBagznOZPgOk0
	 1UKDh10CaYk8Eio2QLl4tKXD+w5U1s/MDFqHENhIZD7A88h9BV1WyoMNcT+wXCA3gj
	 Di22F64m8WxZG0hqlh9Pmfk520/R4hEa7cihYRlzOXY3xfzPoWvTL78kIJeiMRY7um
	 siFTWlixket9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE50840594;
	Mon,  8 Jul 2024 15:44:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 147901BF330
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 15:44:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02208607B2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 15:44:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MkVzmKQE2MxO for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 15:44:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c32; helo=mail-oo1-xc32.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BC7E960718
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC7E960718
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com
 [IPv6:2607:f8b0:4864:20::c32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC7E960718
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 15:44:54 +0000 (UTC)
Received: by mail-oo1-xc32.google.com with SMTP id
 006d021491bc7-5c1d2f7ab69so2140787eaf.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Jul 2024 08:44:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720453493; x=1721058293;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PwNSfE3htJIzmC6/CCUDkYytjUdGt1k8Nd1suzoQTKg=;
 b=PL4lv1Xtpdba1so4Pm+JTeYUIEisclsx6CIWSfqMZFRqdBfxieO1AYFf1DAgGEOLc9
 iRmpMaKDvhspeLiLSB6XrL8uk7WKH1EJM/jFumDNWtpbxnuFtz0s3V9SoKaW8cRW073u
 ySUeTQKIY8Wl5uuomuND1WU4uTbFJxWMzFSdOBDNUBFWOK3JMkfCp1W51Zeyaq0mF/0t
 8HF47lAL2znRD10kSwxmfTboMDlf3xL78kDcoaaqZBNSFk+jtpvwioV9fJL37K95vHu0
 igm/nS0PX6X9W6EeQYFOI/uaKNkopb4pgqo8ULg8vqAxjpIaD/6pQgVxKOXT53I9OTia
 QQHA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXe6dqTIUembvdWfv23TLwVa0+UfcSkDZ7uRHqg0yQsTImxr3+KK3vToNhvhA5OR8kJkM9qB87ipyGEckgBovhW5D6negKH8pWjiB1AcxMR6A==
X-Gm-Message-State: AOJu0Yz9ZK+XOPJ7QVOURGD1qYvKSuf2d3DWneFrIfYeiOyhnJ+010Cv
 pguLue+5COtYPZwQc0txYYBG1bJfvFNCsf37ywZyuR1Lzd1wG1fqSCQ2L10e2Ac=
X-Google-Smtp-Source: AGHT+IE7nJP+NtLHrpFcQ2SszrSOQHs94OdysPr9VxCzpwzZvlkoGvdFNx2DKUNXfaOVsznZ4A+ZvQ==
X-Received: by 2002:a4a:de4f:0:b0:5c6:6029:b1cd with SMTP id
 006d021491bc7-5c66029b48dmr7456031eaf.8.1720453493515; 
 Mon, 08 Jul 2024 08:44:53 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:6fc:b7f5:4853:aff3])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-5c68cdfce18sm14132eaf.40.2024.07.08.08.44.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jul 2024 08:44:53 -0700 (PDT)
Date: Mon, 8 Jul 2024 17:44:52 +0200
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Junfeng Guo <junfeng.guo@intel.com>
Message-ID: <51190ea3-51d2-4559-b382-0fa823d4cc86@suswa.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1720453493; x=1721058293; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PwNSfE3htJIzmC6/CCUDkYytjUdGt1k8Nd1suzoQTKg=;
 b=psIP7hhVuiyUE6LuWfznEhPFR1H+8XxBhDwM6sEF0iCnkFFoaUAFJdjNDbi5jSps14
 tC2f9PCyEg3w2Xxauzr5HMoDrFmUhjgwk55d2kGisopeuj9fDogfttYm3LBFN3b9Qe64
 49KE47ccKOsesQxQSI5Ky+yDYvLR8gUIKS+Qd9dw9sRl7+lNf/qeURaK8UpeV2neRcqw
 3/aMyjIh7NWBf4hReZp5ZBgQMRX787dJ8y6HR48FtXAiG/mFnaSyuL+xowj5xG10pCLB
 xNJz1eUq3AAuyNQj5pVE/7fx3/yCxmYesmU/laxA9KE4S04Xzr7wsMCXwsjWtg3owqYd
 8/qQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=psIP7hhV
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 12/92]
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c:875
 ice_vc_fdir_parse_raw() warn: missing error code 'status'
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
Cc: Ahmed Zaki <ahmed.zaki@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   d051d5283b530af3f9627c8e600aa581bc6c1958
commit: 23eb6f4d18624231cd3f57f322814591f38b3837 [12/92] ice: enable FDIR filters from raw binary patterns for VFs
config: x86_64-randconfig-161-20240706 (https://download.01.org/0day-ci/archive/20240707/202407070634.aTz9Naa1-lkp@intel.com/config)
compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202407070634.aTz9Naa1-lkp@intel.com/

smatch warnings:
drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c:875 ice_vc_fdir_parse_raw() warn: missing error code 'status'

vim +/status +875 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c

23eb6f4d186242 Junfeng Guo 2024-05-27  831  static int
23eb6f4d186242 Junfeng Guo 2024-05-27  832  ice_vc_fdir_parse_raw(struct ice_vf *vf,
23eb6f4d186242 Junfeng Guo 2024-05-27  833  		      struct virtchnl_proto_hdrs *proto,
23eb6f4d186242 Junfeng Guo 2024-05-27  834  		      struct virtchnl_fdir_fltr_conf *conf)
23eb6f4d186242 Junfeng Guo 2024-05-27  835  {
23eb6f4d186242 Junfeng Guo 2024-05-27  836  	u8 *pkt_buf, *msk_buf __free(kfree);
23eb6f4d186242 Junfeng Guo 2024-05-27  837  	struct ice_parser_result rslt;
23eb6f4d186242 Junfeng Guo 2024-05-27  838  	struct ice_pf *pf = vf->pf;
23eb6f4d186242 Junfeng Guo 2024-05-27  839  	struct ice_parser *psr;
23eb6f4d186242 Junfeng Guo 2024-05-27  840  	int status = -ENOMEM;
23eb6f4d186242 Junfeng Guo 2024-05-27  841  	struct ice_hw *hw;
23eb6f4d186242 Junfeng Guo 2024-05-27  842  	u16 udp_port = 0;
23eb6f4d186242 Junfeng Guo 2024-05-27  843  
23eb6f4d186242 Junfeng Guo 2024-05-27  844  	pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
23eb6f4d186242 Junfeng Guo 2024-05-27  845  	msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
23eb6f4d186242 Junfeng Guo 2024-05-27  846  	if (!pkt_buf || !msk_buf)
23eb6f4d186242 Junfeng Guo 2024-05-27  847  		goto err_mem_alloc;
23eb6f4d186242 Junfeng Guo 2024-05-27  848  
23eb6f4d186242 Junfeng Guo 2024-05-27  849  	memcpy(pkt_buf, proto->raw.spec, proto->raw.pkt_len);
23eb6f4d186242 Junfeng Guo 2024-05-27  850  	memcpy(msk_buf, proto->raw.mask, proto->raw.pkt_len);
23eb6f4d186242 Junfeng Guo 2024-05-27  851  
23eb6f4d186242 Junfeng Guo 2024-05-27  852  	hw = &pf->hw;
23eb6f4d186242 Junfeng Guo 2024-05-27  853  
23eb6f4d186242 Junfeng Guo 2024-05-27  854  	/* Get raw profile info via Parser Lib */
23eb6f4d186242 Junfeng Guo 2024-05-27  855  	psr = ice_parser_create(hw);
23eb6f4d186242 Junfeng Guo 2024-05-27  856  	if (IS_ERR(psr)) {
23eb6f4d186242 Junfeng Guo 2024-05-27  857  		status = PTR_ERR(psr);
23eb6f4d186242 Junfeng Guo 2024-05-27  858  		goto err_mem_alloc;
23eb6f4d186242 Junfeng Guo 2024-05-27  859  	}
23eb6f4d186242 Junfeng Guo 2024-05-27  860  
23eb6f4d186242 Junfeng Guo 2024-05-27  861  	ice_parser_dvm_set(psr, ice_is_dvm_ena(hw));
23eb6f4d186242 Junfeng Guo 2024-05-27  862  
23eb6f4d186242 Junfeng Guo 2024-05-27  863  	if (ice_get_open_tunnel_port(hw, &udp_port, TNL_VXLAN))
23eb6f4d186242 Junfeng Guo 2024-05-27  864  		ice_parser_vxlan_tunnel_set(psr, udp_port, true);
23eb6f4d186242 Junfeng Guo 2024-05-27  865  
23eb6f4d186242 Junfeng Guo 2024-05-27  866  	status = ice_parser_run(psr, pkt_buf, proto->raw.pkt_len, &rslt);
23eb6f4d186242 Junfeng Guo 2024-05-27  867  	if (status)
23eb6f4d186242 Junfeng Guo 2024-05-27  868  		goto err_parser_destroy;
23eb6f4d186242 Junfeng Guo 2024-05-27  869  
23eb6f4d186242 Junfeng Guo 2024-05-27  870  	if (hw->debug_mask & ICE_DBG_PARSER)
23eb6f4d186242 Junfeng Guo 2024-05-27  871  		ice_parser_result_dump(hw, &rslt);
23eb6f4d186242 Junfeng Guo 2024-05-27  872  
23eb6f4d186242 Junfeng Guo 2024-05-27  873  	conf->prof = kzalloc(sizeof(*conf->prof), GFP_KERNEL);
23eb6f4d186242 Junfeng Guo 2024-05-27  874  	if (!conf->prof)
23eb6f4d186242 Junfeng Guo 2024-05-27 @875  		goto err_parser_destroy;

status = -ENOMEM;

23eb6f4d186242 Junfeng Guo 2024-05-27  876  
23eb6f4d186242 Junfeng Guo 2024-05-27  877  	status = ice_parser_profile_init(&rslt, pkt_buf, msk_buf,
23eb6f4d186242 Junfeng Guo 2024-05-27  878  					 proto->raw.pkt_len, ICE_BLK_FD,
23eb6f4d186242 Junfeng Guo 2024-05-27  879  					 conf->prof);
23eb6f4d186242 Junfeng Guo 2024-05-27  880  	if (status)
23eb6f4d186242 Junfeng Guo 2024-05-27  881  		goto err_parser_profile_init;
23eb6f4d186242 Junfeng Guo 2024-05-27  882  
23eb6f4d186242 Junfeng Guo 2024-05-27  883  	if (hw->debug_mask & ICE_DBG_PARSER)
23eb6f4d186242 Junfeng Guo 2024-05-27  884  		ice_parser_profile_dump(hw, conf->prof);
23eb6f4d186242 Junfeng Guo 2024-05-27  885  
23eb6f4d186242 Junfeng Guo 2024-05-27  886  	/* Store raw flow info into @conf */
23eb6f4d186242 Junfeng Guo 2024-05-27  887  	conf->pkt_len = proto->raw.pkt_len;
23eb6f4d186242 Junfeng Guo 2024-05-27  888  	conf->pkt_buf = pkt_buf;
23eb6f4d186242 Junfeng Guo 2024-05-27  889  	conf->parser_ena = true;
23eb6f4d186242 Junfeng Guo 2024-05-27  890  
23eb6f4d186242 Junfeng Guo 2024-05-27  891  	ice_parser_destroy(psr);
23eb6f4d186242 Junfeng Guo 2024-05-27  892  	return 0;
23eb6f4d186242 Junfeng Guo 2024-05-27  893  
23eb6f4d186242 Junfeng Guo 2024-05-27  894  err_parser_profile_init:
23eb6f4d186242 Junfeng Guo 2024-05-27  895  	kfree(conf->prof);
23eb6f4d186242 Junfeng Guo 2024-05-27  896  err_parser_destroy:
23eb6f4d186242 Junfeng Guo 2024-05-27  897  	ice_parser_destroy(psr);
23eb6f4d186242 Junfeng Guo 2024-05-27  898  err_mem_alloc:
23eb6f4d186242 Junfeng Guo 2024-05-27  899  	kfree(pkt_buf);
23eb6f4d186242 Junfeng Guo 2024-05-27  900  	return status;
23eb6f4d186242 Junfeng Guo 2024-05-27  901  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

