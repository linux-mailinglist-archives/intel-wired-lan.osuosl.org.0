Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B57769194
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jul 2023 11:22:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19874817A5;
	Mon, 31 Jul 2023 09:22:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19874817A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690795374;
	bh=dciac+x4eDd/Dzp05viVHxA+8qNwvzGQ2PQe8CbwlTY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ac6cQdHFZG/dRIybQ2foUkq1nSkfx4l6rftcl85BANAuXAdpx/TN4zlTdSs1i7Pwg
	 MSM/oXIQMxR224O5qUUI4TxpMfXNiXYzUIS8vj620qhZI3sxi8lk9Qy3aJkj2v769m
	 nl2eicp+ChZs/PKueIoj2H3KfHvqMkLxGlLu+BZGWBfIqILakv7tKUbGvpZMzOrNmz
	 i9k7sQpLubM58V0NnJ/TGKSHbPMiXvfkkSnYifuhqAInid+7HjDlip6Cc58IRZBuv7
	 ckBf7ZCu/wM7z9Ht0u21OzFy/7J+quYhWW97bckVPfLKzAVnPHxTI+UM+CzfqrIN8q
	 P1GekYjkVKJEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSgtbfvFZESs; Mon, 31 Jul 2023 09:22:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07D7081401;
	Mon, 31 Jul 2023 09:22:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07D7081401
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 008221BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 09:22:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8FE061052
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 09:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8FE061052
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t4tee5P3-pUj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 09:22:47 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE77361050
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 09:22:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE77361050
Received: by mail-wr1-x429.google.com with SMTP id
 ffacd0b85a97d-31771a876b5so3539189f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 02:22:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690795365; x=1691400165;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lgbharsQKntdUER6lVZNSvC7uX5P5g4vU3d2CiQCSZI=;
 b=Ek5Y8cVzXaUcgCEbz/DyT2FtlhMd8xh9sdH+GU15eDmC3bTmJyvkX+UR9OuztjUjgq
 hcBKQWh2MruljIABEPSGMFFx0TiGt6HBEPdf2+ftov1iJc4CKhU+NEDK5fyCQeAcxMGH
 PzM/MEqsAFABfd2zZp0lckZm6CG/nB7vyIXte96RJo+jC8KR8B5LWCUUmQLbT5+57YCX
 OYpwV1dEvxSUua4Br7kO5fGG9r7gHIZCpNcs36f9SrSnzlK9CHDtF4FmI453OvftUkh/
 LEQeewOPI1I/qmRefJkuqvMZM9+j07MDVboYkwvaXbp/XQynkJKJouT5PcJE0Y38bgE4
 qSMg==
X-Gm-Message-State: ABy/qLZM84UKKwsuGH9vROPbXg+0ynp4WFwWIybPpzW1QfkKUx5W3ZMS
 qjbgzfsBVbgEX+WYU8g3OcsH+g==
X-Google-Smtp-Source: APBJJlHw/GcIf7e08/QXfEbqiKdJncACDTkw/RFbul2a8Frea13WRXYpNkpCKC1KOZOxvCu1scRxyQ==
X-Received: by 2002:adf:e586:0:b0:314:4915:689 with SMTP id
 l6-20020adfe586000000b0031449150689mr6522564wrm.34.1690795364743; 
 Mon, 31 Jul 2023 02:22:44 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 f17-20020adffcd1000000b00313f61889ecsm12520466wrs.66.2023.07.31.02.22.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jul 2023 02:22:44 -0700 (PDT)
Date: Mon, 31 Jul 2023 08:40:12 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Message-ID: <f7214ccb-4adb-4184-9f62-09fba84bd744@kadam.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1690795365; x=1691400165;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lgbharsQKntdUER6lVZNSvC7uX5P5g4vU3d2CiQCSZI=;
 b=HBx4eY3No4DDP4Mdjht6hrsNHYqF6NcaEYh9FQgreZ5QM0Ro0AaR4H9JY9SW4lNLmB
 0vkl+WKJHjlBHiBtFksEDJgky4JhfD6Z2kpgb1VhlKU1M/Pe2ZPIosafh9SrIQoETvf/
 udwaMy+HPCNj8LTKYJkwyW9DRime67iPoE1jpoDUaYI/83Gje/Z1BexzfK8sRKd569hO
 Tcbg8o2YVx5lk6EOa80PE7fxES85bJVYUIl0S19WXLUNAn09pS5c8Mk5fc/jPgmA/fzr
 Xc4AAtaheSvuKWNfOOIxggvikrSDSDWipMFNYCEQTCIbCaoG/DOcFo/utzoyG0YMMUQJ
 vJGA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=HBx4eY3N
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 20/51]
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c:2181
 ice_read_phy_and_phc_time_e822() warn: if statement not indented
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
head:   79dc5308c824de000283d82a4496567bbedae5db
commit: a9c0311851c4ab40093e5c629881499f2639f229 [20/51] ice: prefix clock timer command enumeration values with ICE_PTP
config: i386-randconfig-m021-20230728 (https://download.01.org/0day-ci/archive/20230730/202307300951.kWJSF1tX-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20230730/202307300951.kWJSF1tX-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202307300951.kWJSF1tX-lkp@intel.com/

smatch warnings:
drivers/net/ethernet/intel/ice/ice_ptp_hw.c:2181 ice_read_phy_and_phc_time_e822() warn: if statement not indented

vim +2181 drivers/net/ethernet/intel/ice/ice_ptp_hw.c

3a7496234d179a Jacob Keller       2021-10-13  2165  static int
3a7496234d179a Jacob Keller       2021-10-13  2166  ice_read_phy_and_phc_time_e822(struct ice_hw *hw, u8 port, u64 *phy_time,
3a7496234d179a Jacob Keller       2021-10-13  2167  			       u64 *phc_time)
3a7496234d179a Jacob Keller       2021-10-13  2168  {
3a7496234d179a Jacob Keller       2021-10-13  2169  	u64 tx_time, rx_time;
3a7496234d179a Jacob Keller       2021-10-13  2170  	u32 zo, lo;
3a7496234d179a Jacob Keller       2021-10-13  2171  	u8 tmr_idx;
3a7496234d179a Jacob Keller       2021-10-13  2172  	int err;
3a7496234d179a Jacob Keller       2021-10-13  2173  
3a7496234d179a Jacob Keller       2021-10-13  2174  	tmr_idx = ice_get_ptp_src_clock_index(hw);
3a7496234d179a Jacob Keller       2021-10-13  2175  
a9c0311851c4ab Sergey Temerkhanov 2023-07-10  2176  	/* Prepare the PHC timer for a ICE_PTP_READ_TIME capture command */
a9c0311851c4ab Sergey Temerkhanov 2023-07-10  2177  	ice_ptp_src_cmd(hw, ICE_PTP_READ_TIME);
3a7496234d179a Jacob Keller       2021-10-13  2178  
a9c0311851c4ab Sergey Temerkhanov 2023-07-10  2179  	/* Prepare the PHY timer for a ICE_PTP_READ_TIME capture command */
a9c0311851c4ab Sergey Temerkhanov 2023-07-10  2180  	err = ice_ptp_one_port_cmd(hw, port, ICE_PTP_READ_TIME);
3a7496234d179a Jacob Keller       2021-10-13 @2181  	if (err)

return err; statement is somehow missing.

3a7496234d179a Jacob Keller       2021-10-13  2182  
a9c0311851c4ab Sergey Temerkhanov 2023-07-10  2183  	/* Issue the sync to start the ICE_PTP_READ_TIME capture */
3a7496234d179a Jacob Keller       2021-10-13  2184  	ice_ptp_exec_tmr_cmd(hw);
3a7496234d179a Jacob Keller       2021-10-13  2185  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
