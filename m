Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3BA901C1E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 09:52:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEE2060705;
	Mon, 10 Jun 2024 07:52:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uMYtA_N4MiNW; Mon, 10 Jun 2024 07:52:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA31660737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718005968;
	bh=QEr/3KbfySfs9QZIPsPKzzybAjgPEX4Rb7osYycFo8g=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ej2RlROvUFV49OUJbY+NC03+VhxpWkZ6KElG4ekn/hwslOeCah+HCludes7bzSOcP
	 CGr18vF0MwnStDTa3FGrfPVA0JZPuHn7TRzDDJa5JfEIe1FnNLcFl7zItI4GtjHT43
	 4y3mTef4a6FaRD61IKzJKSjPnDK8gYJpYN1J0uk1pFzlv3RT06i3SDnAESvDicHau3
	 wODfPpz0xJwLlAPmuYL1TqskkEm6cHwm37+5Qv8cs6XZTzrZ43n9U2S9hGcYQ02RYN
	 NxH6GbHEeOCR/nIt8BheON8+S48bQTwqTfiItHJFWaPSxhw56zhwxDHdVwe43Msmnu
	 RDjS6Lj+tzySg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA31660737;
	Mon, 10 Jun 2024 07:52:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 013B31BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 07:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E0EB040142
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 07:52:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sPppYLTAZvd8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 07:52:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32e; helo=mail-wm1-x32e.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5C4F2400D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C4F2400D6
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C4F2400D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 07:52:44 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-4217a96de38so13008735e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 00:52:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718005962; x=1718610762;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QEr/3KbfySfs9QZIPsPKzzybAjgPEX4Rb7osYycFo8g=;
 b=P6CaRit78+YdxxVds6Wz9QmajNu4Zwq9t8DmoRs4ifyHherSDvodN8zijW7KTOD698
 beX4TV9Ybk7WdqKszoexBNgEfRtod3YyiwIJm+PkOBwVQW7HDqW2CYo45Se6hlXjqwuI
 9MJDUtUF1fbD8fM+oehTw7O9IOdZkg1f/tFmzdCEjfHzNMKs1pPF9xEWMktXqyugK0/k
 w+JYNXtrqGfI5wSk5YPtafnmzm79yNm1kkt50A1wYrkk3p1c+WzWhzVBl1aJ2UO0zxyH
 3Ysi+AInKeq1EzPUXbrll3MlKkFd9apW4r7RYmGwjoCBJvStO+0JkQzdqJyhoS8NmvKN
 J0Bw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVf6mJCgxECvUNm9Q7MDbmrrRWpvdHN2J6cIexvO4cnhEEvfNnCSFTyDQWf/DQNuw6mmzmEkLv7g/n3gtkLPksraZGMyJ3xLrLB0UAEv6HCXw==
X-Gm-Message-State: AOJu0Yx6xux+C/AZLZFP0CItZOJarzRKtEMk0BgK9ityE/gNd4Bahmfs
 9RQaTTOd+tJRmABeDx5AtyJyzzDVSTRqcrCnIk314MwQagfKc+gxir3b1vAS60U=
X-Google-Smtp-Source: AGHT+IG3DvGUemxrZlT0OAUHBf77mkwvO0bJp3enmayTyexNMITEnRZCvUnahoONy11Qu01vJ0RvWw==
X-Received: by 2002:a05:600c:4450:b0:422:13b2:584 with SMTP id
 5b1f17b1804b1-42213b2073emr3098175e9.37.1718005962181; 
 Mon, 10 Jun 2024 00:52:42 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-421cd1fdec7sm28513155e9.25.2024.06.10.00.52.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Jun 2024 00:52:41 -0700 (PDT)
Date: Mon, 10 Jun 2024 10:52:37 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Junfeng Guo <junfeng.guo@intel.com>
Message-ID: <83877bb7-8c1b-4189-9b24-41c968212613@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1718005962; x=1718610762; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QEr/3KbfySfs9QZIPsPKzzybAjgPEX4Rb7osYycFo8g=;
 b=Gab2vO3t3Ln7sD7uqfwfbSdsxt4eil4GdU2D4BZCLA83TidNiFICMA7Z3J279gr0vY
 R/8w3cNoYYqXd+ieTnZxnIzSz+Yrr/3grlhc6JENdnMwbx0o+BW3/16Wfj3ewOeVZgpV
 CPyeKw5tDzjdfWhNKyMtpwXn6CE2SLnSPGy511TYVO6gE3FIrQwxKT9BmrgXXWYxIvs7
 pmezgWRtRfZeUn6BYEWUKNra5z+C82NBQ2I1juF4Na5PkQUv1C5RtskFEd5GYtGYAAdH
 Pc+LC+oufBTok6ZO+HcAAFyEvGL4pbo0zW1lQ4GD5DFpiO193WjCBuiTZSi1qZWCMKAv
 582w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=Gab2vO3t
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 20/95]
 drivers/net/ethernet/intel/ice/ice_parser.c:971 __ice_pg_nm_cam_match()
 error: memcmp() '&item->key.val' too small (9 vs 13)
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Qi Zhang <qi.z.zhang@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   2746dc17cbf54ef20cc09a7ec6862477a326fae1
commit: 678aebbf361736b67e2d83264fb1f2b49ecf6bc0 [20/95] ice: add parser internal helper functions
config: x86_64-randconfig-161-20240609 (https://download.01.org/0day-ci/archive/20240610/202406100753.38qaQzo9-lkp@intel.com/config)
compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202406100753.38qaQzo9-lkp@intel.com/

smatch warnings:
drivers/net/ethernet/intel/ice/ice_parser.c:971 __ice_pg_nm_cam_match() error: memcmp() '&item->key.val' too small (9 vs 13)

vim +971 drivers/net/ethernet/intel/ice/ice_parser.c

678aebbf361736 Junfeng Guo 2024-05-27  967  static bool __ice_pg_nm_cam_match(struct ice_pg_nm_cam_item *item,
678aebbf361736 Junfeng Guo 2024-05-27  968  				  struct ice_pg_cam_key *key)
678aebbf361736 Junfeng Guo 2024-05-27  969  {
678aebbf361736 Junfeng Guo 2024-05-27  970  	return (item->key.valid &&
678aebbf361736 Junfeng Guo 2024-05-27 @971  		!memcmp(&item->key.val, &key->val, sizeof(key->val)));

This will read beyond the end of the "item->key.val".  They're similar
structs but key->val has u32 next_proto; at the end.

678aebbf361736 Junfeng Guo 2024-05-27  972  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

