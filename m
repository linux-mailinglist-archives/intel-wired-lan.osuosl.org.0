Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC87C2E2E9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 22:48:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F57960A96;
	Mon,  3 Nov 2025 21:48:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6wT26FjjvpSf; Mon,  3 Nov 2025 21:48:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47F5160A97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762206514;
	bh=zDgrJGPwTkDqRWUIRmg2o0UWPQlQh5Pa4lWjqQeT3Vs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IKYvAMg/v1i4pAy4qRo3UAJGXDkKKfDXaEGBUnhMns2RUGVQPwQILEVuab2tPZhVl
	 P6biW+R+rSGqDyDqO8f4HON5O6W+6aJW/up1NaqH9L+L2QET7aNzV7z2jxrxUc2lbW
	 JxCQ/oeABvYwKjCus2hogyEucm/88fSorHiq9dciyxJSQ9iN6Ruwh88AU8bQrhZiLS
	 GWSJjWwoBOgOHkUeizdPTZcxVVw57iibSy4+zP0+r6uyhqUzhuUJrVNuCh/4ZRG8la
	 RZYmadK2SC8sULeXNkS3Wx/83FaHWt1jG4c5aomWff8PZQX3dZRifehVMSBecwjd55
	 gHqZtwAhHnG6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47F5160A97;
	Mon,  3 Nov 2025 21:48:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DC903222
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 19:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDFC740645
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 19:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4DfJvD6axfSv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 19:45:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b12e; helo=mail-yx1-xb12e.google.com;
 envelope-from=daniel.zahka@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CF38240648
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF38240648
Received: from mail-yx1-xb12e.google.com (mail-yx1-xb12e.google.com
 [IPv6:2607:f8b0:4864:20::b12e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF38240648
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 19:45:57 +0000 (UTC)
Received: by mail-yx1-xb12e.google.com with SMTP id
 956f58d0204a3-63e393c49f1so4359019d50.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 Nov 2025 11:45:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762199156; x=1762803956;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=zDgrJGPwTkDqRWUIRmg2o0UWPQlQh5Pa4lWjqQeT3Vs=;
 b=kuhq2MCqIOkn5n6jOV+Kadb35YW6+qvuaaTYoSYIYZdWf1vJa5mHeOqTIv50buleQc
 hXisd7l6uIcZMNsjTpOnqI1yU7haNMgklb46F0rTScNB5pYxtYNoQm9vAzniePtPS3Xi
 W4XRAsD4cEikUyA1xdkxJAupzyCsHNl03ealo6/Ucs1k9IvDAxwk2u9W3QARnVukQ+km
 hm8II2eEsCYP3askDTp2QbFNH9xCJiR/Oe3y+Xm2GQ8jaEeIoGxhnt8keTCVa9e4vcen
 ZYbXzvhYKFr2ssePJ0QqJ/dSXpkjfW12+9H7o84QJouoW+lGfBcDnPl9Z6RmNX7O5IX2
 rMlg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHb9kBGecVRMRCzMGvzNukpUMJKa9YyXPiwryMRbk6I2rTsUdIJhQ48bjEz58iBwSw/IgAQWe0nKNQgImLHfE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyU5fJv2VskZOvJUSLY9JOjON49MFlY8OGI9EKXUM/ok2bEI/Y+
 bDJ+3TKADoCsQe6IIfVVgO0dJoTktqBRisPAzN4AGnxRayCkJrokFL6m
X-Gm-Gg: ASbGncsKSM30ngOGfbwfVClWLOXcpupGQLxWBKvlGvWkrG+vxuvtjClwbIkI3nZ3n98
 sHpB+HKiK53ANRZKtbGgXLx3b7WcD/pnhVZfB+DNK/oB0oJGxunsq3DCebwFMfakExsJqdfrWai
 cy53W9R9be1nADBsaSBqlt+D4KCUP9S8leMDb2GFTqtWr0aG4JaqOpjW6PqGFhCgld1AMk97y0Z
 TARLappMnxe56BMPXKvY3c2P0eCteLNdHH1rPF4e7JO4Mm4d4dbSpoQczZCmDVM43yUdxMfm9Ds
 3wLzRj4xTuBWrPzc/a9eUyasThhtLXy6FSTveiXPYmjL+pWRsUJ0O0bcvZ4U2aF2ar50O2UGpNg
 IUU7xBW/t0SrDd4NlFT0IE27jO+CUX9w9rl8DIX7YDvc1Bqij7dAROzFVjHctuctDXmFIkXgq8a
 ESU1T4NLt9SfJnfV5QHfTR4wZ2f43BRKE=
X-Google-Smtp-Source: AGHT+IGNH0RPJesBeIcKsla8XUDm1bFpyEtjHsBQ6vejr6g2P49YD8AtgFLGMiN2odUrOWMz5ZeYtA==
X-Received: by 2002:a05:690c:6706:b0:786:8dc1:5242 with SMTP id
 00721157ae682-7868dc1591dmr18450727b3.53.1762199156319; 
 Mon, 03 Nov 2025 11:45:56 -0800 (PST)
Received: from localhost ([2a03:2880:25ff:72::])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-7869200367fsm3408667b3.42.2025.11.03.11.45.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 11:45:55 -0800 (PST)
From: Daniel Zahka <daniel.zahka@gmail.com>
To: Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Srujana Challa <schalla@marvell.com>,
 Bharat Bhushan <bbhushan2@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Brett Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>,
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Tariq Toukan <tariqt@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Manish Chopra <manishc@marvell.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>,
 Roger Quadros <rogerq@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>
Cc: netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org
Date: Mon,  3 Nov 2025 11:45:51 -0800
Message-ID: <20251103194554.3203178-1-daniel.zahka@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 03 Nov 2025 21:48:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762199156; x=1762803956; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=zDgrJGPwTkDqRWUIRmg2o0UWPQlQh5Pa4lWjqQeT3Vs=;
 b=W/o6WmABXBf8nTD8O0hQKcxBlUu3M7edwmbmhQuSUTC1b1lkaRRn+FDIuviH6WaWeS
 SgREe4+xSJ0U09nApcIL/Sw+kmIWwDQxHgUUSLjoSgM72SGpUpPRaHjp1a+XNS7IvfMU
 9WjxZSzJV56liNwBhnkV1RF01tsuWpfOXPDtz7uniCXaJ2RDjjoqvffJWuO9dqHlhtJv
 ZPrxlpecatjSwhnFfU1B0q4pLj9Aj2yfnmarVJTY+4XkF39K99POC17Io2J2kZI+hvTq
 hsAcYw1GjYeL0UfB5Vlxq3dHRoPy4Sdk/eeF4uKG1m6WFwqMQK1yPSUKLB+vMbVSlO+4
 yrVw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=W/o6WmAB
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] devlink: net/mlx5:
 implement swp_l4_csum_mode via devlink params
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series contains two patches. The first is a pure refactor that
passes through the extack to devlink_param::get() implementations. The
second introduces a permanent devlink param to the mlx5 driver for
controlling tx csum behavior.

Enabling extack for devlink_param::get() allows drivers to provide
more information in cases when reading parameters from hardware can
result in errors or unexpected values.

The mlx5 swp_l4_csum_mode devlink param is necessary for initializing
PSP on CX7 NICs.

CHANGES:
v2:
  - fix indentation issue in new mlx5.rst entry
  - use extack in mlx5_nv_param_devlink_swp_l4_csum_mode_get()
  - introduce extack patch.
v1: https://lore.kernel.org/netdev/20251022190932.1073898-1-daniel.zahka@gmail.com/

Daniel Zahka (2):
  devlink: pass extack through to devlink_param::get()
  net/mlx5: implement swp_l4_csum_mode via devlink params

 Documentation/networking/devlink/mlx5.rst     |   9 +
 .../marvell/octeontx2/otx2_cpt_devlink.c      |   6 +-
 drivers/net/ethernet/amd/pds_core/core.h      |   3 +-
 drivers/net/ethernet/amd/pds_core/devlink.c   |   3 +-
 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |   6 +-
 .../net/ethernet/intel/ice/devlink/devlink.c  |  12 +-
 .../marvell/octeontx2/af/rvu_devlink.c        |  15 +-
 .../marvell/octeontx2/nic/otx2_devlink.c      |   6 +-
 drivers/net/ethernet/mellanox/mlx4/main.c     |   6 +-
 .../net/ethernet/mellanox/mlx5/core/devlink.h |   3 +-
 .../net/ethernet/mellanox/mlx5/core/eswitch.c |   3 +-
 .../mellanox/mlx5/core/eswitch_offloads.c     |   3 +-
 .../net/ethernet/mellanox/mlx5/core/fs_core.c |   3 +-
 .../ethernet/mellanox/mlx5/core/fw_reset.c    |   3 +-
 .../mellanox/mlx5/core/lib/nv_param.c         | 170 +++++++++++++++++-
 .../mellanox/mlxsw/spectrum_acl_tcam.c        |   3 +-
 .../ethernet/netronome/nfp/devlink_param.c    |   3 +-
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |   3 +-
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |   3 +-
 drivers/net/ethernet/ti/am65-cpsw-nuss.c      |   3 +-
 drivers/net/ethernet/ti/cpsw_new.c            |   6 +-
 drivers/net/wwan/iosm/iosm_ipc_devlink.c      |   3 +-
 include/net/devlink.h                         |   3 +-
 include/net/dsa.h                             |   3 +-
 net/devlink/param.c                           |  19 +-
 net/dsa/devlink.c                             |   3 +-
 26 files changed, 257 insertions(+), 46 deletions(-)

-- 
2.47.3

