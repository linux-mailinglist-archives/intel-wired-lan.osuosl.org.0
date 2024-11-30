Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9E79DEF77
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Nov 2024 10:25:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CCA8613DD;
	Sat, 30 Nov 2024 09:25:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Je6nIAcPVbRJ; Sat, 30 Nov 2024 09:24:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09C0E613D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732958699;
	bh=uBKQeX9WoFlcA72LF37ZhjxVMlvafgzJRaLuktpAivM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bEmkgxbbFeyJIAMv92BEd9ieaGZNGefJHzCStKjgTSZ6G8TeOU9cI6f07h4rYISHI
	 NbvyrwSiu2i2vqDIPnN6ihx+AfDUpXkPuQdKPsj3otX+wW5RQh1WmshYifORFAHh0R
	 zUrparXYy9URd4stKLOHDT7FMDtcwKbC0RywDxLLm/1rhZeRECaEgcJ/ZexY1M3To2
	 uNHHD6aernkL0jeiAqYFB+DHfXZRYUYUWuVhInhTDfWuRGFpEcwIYYOBaL3Vhjj5p7
	 V11vDCDPAK9A5gPumRgPERL+iaifup9ZyGtQKe9q32beJveL8+Bsu7KoXsKYqfy7ex
	 deiRkbl0dtBzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09C0E613D9;
	Sat, 30 Nov 2024 09:24:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EF70771F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 09:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DBD4684968
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 09:24:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ooJwividK7wm for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Nov 2024 09:24:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7D7DF84965
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D7DF84965
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D7DF84965
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 09:24:55 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-aa545dc7105so366142566b.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 01:24:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732958693; x=1733563493;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=uBKQeX9WoFlcA72LF37ZhjxVMlvafgzJRaLuktpAivM=;
 b=NnL4qqLJqi70a1tLhEOXODSNN8NXQQS1i4rMyt+GquaG7kNZBy2J9eL68WghyCicxm
 QbEDQ0eSmDzVGndQ7G9iKyh7xjHUi9iqM2blcItZb8l991oH0AxE6Ixgqs5Tgr6Qsl5v
 6D+HB/oFFxkfU0ojeiksMBMy9TREEH2BGcqE1BAapm/BpF6Qd8UckSDsuMopVS+wURyT
 GwW2iEo0MiVyh0NjL55Q60OAW8GW3TyAcCryU75PGXxddy+4wi86GxlGPxxvoJ+9RYZM
 840KupmD33TJrEVL4yWIq9Ns4eBlOAEjMhkqOJR4MsqvD7nEjHEL156Fo2tYDBktnf8X
 VfHw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWf6sKEtYIipCOpCS0u5IGII1reca0xrnawFdt/s8aHD+nqNYvPR/2pr3mOCy29T/rB7Afy6TDtjhVl9TKpB6s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyIXAPiry63k7OODfQZwKMJI3qhS60xhmRN5Qabt+3OUH09oUeU
 47cIvcazeh6JC9vr6l3M7ooheyudTgezgbwM4aVlGwe5MbiQe4qmQQI1H/1Je9A8neogtl8J6hI
 SC+302A==
X-Gm-Gg: ASbGncunIAY8sJ0J1InGcOGb9s8B4e8VfqYQ7I10hF8VoBBnk9oWIPU3TRymIWuTqHE
 gODkatD0agxyqEJLCaKlJIKvibVp+1wA+9UAgSDdXHjMVViuQyZ3o+p3fWFwsCFzGZbCESlM7A6
 LFKyfS9VfR4VWZqYVb/7Ig78F8/qx2wyako4LSAcIG+odrzzoMISWVH08gvmrh4Fi84esx82+VW
 aHmd9BmaXrvCJQ+bANrsBf57qu2s1JKweV/sGoGYY26pIn1clA=
X-Google-Smtp-Source: AGHT+IFVxbvidkIoO9xdzabYAyZqZQzJuzIiiHR9a5pqqVPGzl38AuW2Tgqcr+Yp7U6QVM9d6kWvqQ==
X-Received: by 2002:a17:906:1daa:b0:aa5:4d96:ec7 with SMTP id
 a640c23a62f3a-aa581033592mr1090258766b.44.1732958692443; 
 Sat, 30 Nov 2024 01:24:52 -0800 (PST)
Received: from localhost ([41.210.145.9]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-aa5998e6f99sm261480666b.131.2024.11.30.01.24.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2024 01:24:52 -0800 (PST)
Date: Sat, 30 Nov 2024 12:24:47 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <b1453276-9043-49c4-a603-9b6bb41306c7@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1732958693; x=1733563493; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=uBKQeX9WoFlcA72LF37ZhjxVMlvafgzJRaLuktpAivM=;
 b=NqDr/GM55z5Q/3BUE2KKMEoOFQIvINHDi0pTcfa6oBx0tTjpsDc0j1MkZ7QyBH8pXb
 SHEpX1yqgWaJcyQ3KHqB7D7PKnHjV+by3tt9RXa04TK1A6XX+ft3eWQ/Tkerqn1LTmXI
 Odk5YGVJJW7gj77dUwjrbvnPWDd7uhPhVSvd2VQco0t4KF+NNEwIszOB6ai49Rn4/yP5
 g+k/nWDFLfZcc/ExmgAmVCYwXHZKbY5S/j9mvWj9ZNkGwfi2ie9EY3jzpZmOrO6F2PyK
 4LDy3tIiP1vGmgF4JbvsDGcT7BcuEayg5ww3/vTblVNERuj44o7QPhOLjmipbT/oo3IY
 PX5Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=NqDr/GM5
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 16/69]
 drivers/net/ethernet/intel/ice/devlink/health.c:95
 ice_tx_hang_reporter_dump() warn: variable dereferenced before check
 'event' (see line 93)
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   4b8b07968dc902d751d23a775c1a02220db267c9
commit: 9f889e8ffb48536622852fbe2501dc8b75887239 [16/69] ice: dump ethtool stats and skb by Tx hang devlink health reporter
config: microblaze-randconfig-r072-20241124 (https://download.01.org/0day-ci/archive/20241124/202411242101.qlvmbfLB-lkp@intel.com/config)
compiler: microblaze-linux-gcc (GCC) 14.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202411242101.qlvmbfLB-lkp@intel.com/

smatch warnings:
drivers/net/ethernet/intel/ice/devlink/health.c:95 ice_tx_hang_reporter_dump() warn: variable dereferenced before check 'event' (see line 93)

vim +/event +95 drivers/net/ethernet/intel/ice/devlink/health.c

f19878b2a2e6e4 Przemek Kitszel 2024-09-30   86  static int ice_tx_hang_reporter_dump(struct devlink_health_reporter *reporter,
f19878b2a2e6e4 Przemek Kitszel 2024-09-30   87  				     struct devlink_fmsg *fmsg, void *priv_ctx,
f19878b2a2e6e4 Przemek Kitszel 2024-09-30   88  				     struct netlink_ext_ack *extack)
f19878b2a2e6e4 Przemek Kitszel 2024-09-30   89  {
f19878b2a2e6e4 Przemek Kitszel 2024-09-30   90  	struct ice_tx_hang_event *event = priv_ctx;
9f889e8ffb4853 Przemek Kitszel 2024-09-30   91  	struct sk_buff *skb;
9f889e8ffb4853 Przemek Kitszel 2024-09-30   92  
9f889e8ffb4853 Przemek Kitszel 2024-09-30  @93  	skb = event->tx_ring->tx_buf->skb;
                                                              ^^^^^^^
Dereference

f19878b2a2e6e4 Przemek Kitszel 2024-09-30   94  
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  @95  	if (!event)
                                                            ^^^^^^
Too late

f19878b2a2e6e4 Przemek Kitszel 2024-09-30   96  		return 0;
f19878b2a2e6e4 Przemek Kitszel 2024-09-30   97  
f19878b2a2e6e4 Przemek Kitszel 2024-09-30   98  	devlink_fmsg_obj_nest_start(fmsg);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30   99  	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, head);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  100  	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, intr);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  101  	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, vsi_num);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  102  	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, queue);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  103  	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_clean);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  104  	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_use);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  105  	devlink_fmsg_put(fmsg, "irq-mapping", event->tx_ring->q_vector->name);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  106  	ice_fmsg_put_ptr(fmsg, "desc-ptr", event->tx_ring->desc);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  107  	ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)(long)event->tx_ring->dma);
9f889e8ffb4853 Przemek Kitszel 2024-09-30  108  	ice_fmsg_put_ptr(fmsg, "skb-ptr", skb);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  109  	devlink_fmsg_binary_pair_put(fmsg, "desc", event->tx_ring->desc,
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  110  				     event->tx_ring->count * sizeof(struct ice_tx_desc));
9f889e8ffb4853 Przemek Kitszel 2024-09-30  111  	devlink_fmsg_dump_skb(fmsg, skb);
9f889e8ffb4853 Przemek Kitszel 2024-09-30  112  	ice_dump_ethtool_stats_to_fmsg(fmsg, event->tx_ring->vsi->netdev);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  113  	devlink_fmsg_obj_nest_end(fmsg);
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  114  
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  115  	return 0;
f19878b2a2e6e4 Przemek Kitszel 2024-09-30  116  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

