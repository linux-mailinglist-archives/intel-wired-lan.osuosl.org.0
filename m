Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B52CE82441A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 15:47:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D79B611D3;
	Thu,  4 Jan 2024 14:47:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D79B611D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704379673;
	bh=gfVBwkOH/qOR6M4rih0KUy+5jfSd6PJn/IuBN+59/14=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=24hpxrHhQa7th6BcpG6RwILafrbu0j+7Nn1FaiTxTQuyvMk5q3YeGDhWRBCPHufaV
	 wjjRKn+UQ/B2iyA2l3la5X0PM5xLp/Vp/Lcl1w6uNHqBjOEhmTqGLW8WvBSTXoAgfa
	 CIs+X1mgBtk3GfvJlOhILWP6HnWzKQz3PfVhoFdtHBJcZyjUQuHCaFlWDNcDctQmxA
	 rSMcgsdXTNKYuAmf78qZDrXpAEd9Q6PZ+hSv637czktRcaE++LUcG1BOIBXyNV38bU
	 wY8Zox/ih4PpAe6ZMPtH88hEt8xi8TOUSt24Wrf0dJE/0KL8svH54nFcfcYpy0IlkN
	 7LImAL66d/eCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rpTSfqz5dvAI; Thu,  4 Jan 2024 14:47:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F782611CE;
	Thu,  4 Jan 2024 14:47:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F782611CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 544101BF422
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 14:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 38D55837AC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 14:47:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38D55837AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dr-1NIekWtg0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 14:47:46 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 964BE82CCA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 14:47:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 964BE82CCA
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-50eabfac2b7so608661e87.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 04 Jan 2024 06:47:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704379663; x=1704984463;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=gfVBwkOH/qOR6M4rih0KUy+5jfSd6PJn/IuBN+59/14=;
 b=AtWN37aobnFJ9ug8NBCJtTWHh3m6FHrlC+f3i32NEfj2oNzJCA1c2DM8MazuiqAaJH
 1q+dNfvDFOagcVSLSyvk0TA80TQJIv83/uHvr9mS30UaM7kpUa44Iby+yIzTe/ENO6ET
 l6jk517G21S45y6yByZbN4Vsq8UehVqWKh/xvX4GBLUFEBLEX2l0yJHZby32MdM8yDTt
 YXwf6gTVEnYCNlpf4W4h2C0otJNx+2mZpnmx8aamqjMa24FBFBWbNd65k6lqGS461pUn
 VziT5mbeXGQTgZiDeNLcwYm8lRgCbu6jJWgjdZy0uJx/id7wW0Vb/xk+mQUUFg9WBDhI
 1fOA==
X-Gm-Message-State: AOJu0Ywovg2ZRpYQupuKh2GRH/FVyTbsHAfNH6y9ITASIZvC128l+rfc
 HvM0feXkYPdCHXbOVPg6CuzTDdTJz8DZpQ==
X-Google-Smtp-Source: AGHT+IF117QXnpuvzxN4k7ZWFQU+WS2Vnv3gcLBVFPn+SbU8WR2VxRUpgBrqVdYwYz6vf0xwXjJxXQ==
X-Received: by 2002:a05:6512:ba8:b0:50e:7be3:d325 with SMTP id
 b40-20020a0565120ba800b0050e7be3d325mr458204lfv.86.1704379663433; 
 Thu, 04 Jan 2024 06:47:43 -0800 (PST)
Received: from localhost ([102.140.209.237]) by smtp.gmail.com with ESMTPSA id
 x7-20020a50ba87000000b005527cfaa2dfsm19534526ede.49.2024.01.04.06.47.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jan 2024 06:47:42 -0800 (PST)
Date: Thu, 4 Jan 2024 17:47:39 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <08d8b75e-af80-438b-8006-9121b8444f49@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103101135.386891-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1704379663; x=1704984463; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=gfVBwkOH/qOR6M4rih0KUy+5jfSd6PJn/IuBN+59/14=;
 b=m/f/Wr2GuZYVSCcv8RRD5r5czAVNdEAdhGGdR09CKC9vriO1TNSPAGdRTTvh9hKJ6j
 CZk67NC4bOovUm6ZhDvMfjL/zir90bA9WqWWoSoiMh4114u5i9Ls6HuIGoHKoANJ+EUf
 CXfBpup4wRDD1EMkosXQm6EGXO8sv1RvmzO+U1Eqaf0aQSXyvU4gicWD6pSK4AKJW8Y4
 O94lxz4nF/IBt1fJnTXKwD6t70P1tzxcXVcJZvsZcRhpe3IFx+nVVT+fSqMarcfnriAc
 Bbs6addILfVK5GjqFSwe09EMeaGhzlPxs0qbikOG2tyekfR1PVOyPOxhu95G86xLR9jr
 kJwA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=m/f/Wr2G
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Convert ret val
 type from s32 to int
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
Cc: netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 anthony.l.nguyen@intel.com, oe-kbuild-all@lists.linux.dev,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jedrzej,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jedrzej-Jagielski/ixgbe-Convert-ret-val-type-from-s32-to-int/20240103-182213
base:   https://git.kernel.org/pub/scm/linux/kernel/git/horms/ipvs.git master
patch link:    https://lore.kernel.org/r/20240103101135.386891-1-jedrzej.jagielski%40intel.com
patch subject: [PATCH iwl-next v1] ixgbe: Convert ret val type from s32 to int
config: i386-randconfig-141-20240104 (https://download.01.org/0day-ci/archive/20240104/202401041701.6QKTsZmx-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202401041701.6QKTsZmx-lkp@intel.com/

New smatch warnings:
drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2884 ixgbe_get_lcd_t_x550em() warn: missing error code? 'status'
drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:3130 ixgbe_enter_lplu_t_x550em() warn: missing error code? 'status'

Old smatch warnings:
drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2890 ixgbe_get_lcd_t_x550em() warn: missing error code? 'status'

vim +/status +2884 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c

9ea222bfe41f87 Jedrzej Jagielski 2024-01-03  2866  static int ixgbe_get_lcd_t_x550em(struct ixgbe_hw *hw,
6ac7439459606a Don Skidmore      2015-06-17  2867  				  ixgbe_link_speed *lcd_speed)
6ac7439459606a Don Skidmore      2015-06-17  2868  {
6ac7439459606a Don Skidmore      2015-06-17  2869  	u16 an_lp_status;
9ea222bfe41f87 Jedrzej Jagielski 2024-01-03  2870  	int status;
6ac7439459606a Don Skidmore      2015-06-17  2871  	u16 word = hw->eeprom.ctrl_word_3;
6ac7439459606a Don Skidmore      2015-06-17  2872  
6ac7439459606a Don Skidmore      2015-06-17  2873  	*lcd_speed = IXGBE_LINK_SPEED_UNKNOWN;
6ac7439459606a Don Skidmore      2015-06-17  2874  
6ac7439459606a Don Skidmore      2015-06-17  2875  	status = hw->phy.ops.read_reg(hw, IXGBE_AUTO_NEG_LP_STATUS,
4dc4000b35119f Emil Tantilov     2016-09-26  2876  				      MDIO_MMD_AN,
6ac7439459606a Don Skidmore      2015-06-17  2877  				      &an_lp_status);
6ac7439459606a Don Skidmore      2015-06-17  2878  	if (status)
6ac7439459606a Don Skidmore      2015-06-17  2879  		return status;
6ac7439459606a Don Skidmore      2015-06-17  2880  
6ac7439459606a Don Skidmore      2015-06-17  2881  	/* If link partner advertised 1G, return 1G */
6ac7439459606a Don Skidmore      2015-06-17  2882  	if (an_lp_status & IXGBE_AUTO_NEG_LP_1000BASE_CAP) {
6ac7439459606a Don Skidmore      2015-06-17  2883  		*lcd_speed = IXGBE_LINK_SPEED_1GB_FULL;
6ac7439459606a Don Skidmore      2015-06-17 @2884  		return status;

Smatch only warns about missing error codes when the function returns an
int.  :P  The bug predates your patch obvoiusly.

6ac7439459606a Don Skidmore      2015-06-17  2885  	}
6ac7439459606a Don Skidmore      2015-06-17  2886  
6ac7439459606a Don Skidmore      2015-06-17  2887  	/* If 10G disabled for LPLU via NVM D10GMP, then return no valid LCD */
6ac7439459606a Don Skidmore      2015-06-17  2888  	if ((hw->bus.lan_id && (word & NVM_INIT_CTRL_3_D10GMP_PORT1)) ||
6ac7439459606a Don Skidmore      2015-06-17  2889  	    (word & NVM_INIT_CTRL_3_D10GMP_PORT0))
6ac7439459606a Don Skidmore      2015-06-17  2890  		return status;
6ac7439459606a Don Skidmore      2015-06-17  2891  
6ac7439459606a Don Skidmore      2015-06-17  2892  	/* Link partner not capable of lower speeds, return 10G */
6ac7439459606a Don Skidmore      2015-06-17  2893  	*lcd_speed = IXGBE_LINK_SPEED_10GB_FULL;
6ac7439459606a Don Skidmore      2015-06-17  2894  	return status;
6ac7439459606a Don Skidmore      2015-06-17  2895  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

