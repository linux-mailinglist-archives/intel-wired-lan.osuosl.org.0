Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 020B2C4199F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 21:43:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E7C24026C;
	Fri,  7 Nov 2025 20:43:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZsAiGR3UAhlq; Fri,  7 Nov 2025 20:43:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3459A4054D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762548234;
	bh=hiMcVVi9rEIv/j5eQ05ENk15pvqtAPzV3c3AT9Vw3fI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jgGbYKfPIc/PKlun9V4Gucm2st79ZElcrvlI9ciAFnxMJ25qJY6cXYUsqyrNvMNfr
	 BNGIcFQ2m0J8Hri5MQBfpQD3azBn49bbvDx5XvtpGvNG/wzE0O2yBgwl2q5uhsTRSa
	 ZYyAXx9RLecyLXI56FvRhoxhJysOnHV4L2yY9H1wsf88RIwgYIh3D7T3OeoLhEJneu
	 8ktHZwt2pVhaWaLtu6xrdyZTxrDFtnTHAXqZEbMSUksdv7fAN7m86F/nkaUE8d08xf
	 nCW0fyWb5+6tjS31afz1/NLEjdbAFcQIy8O+U2XnjVcknOVEgby6XwdJOnUxQCTLy2
	 VFeIhWAFGoQ+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3459A4054D;
	Fri,  7 Nov 2025 20:43:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C32A91CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 20:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A996D6066F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 20:43:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZxmPlFaPPA1e for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 20:43:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b131; helo=mail-yx1-xb131.google.com;
 envelope-from=daniel.zahka@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3D6D460678
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D6D460678
Received: from mail-yx1-xb131.google.com (mail-yx1-xb131.google.com
 [IPv6:2607:f8b0:4864:20::b131])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D6D460678
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 20:43:50 +0000 (UTC)
Received: by mail-yx1-xb131.google.com with SMTP id
 956f58d0204a3-640c9c85255so1247345d50.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Nov 2025 12:43:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762548229; x=1763153029;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hiMcVVi9rEIv/j5eQ05ENk15pvqtAPzV3c3AT9Vw3fI=;
 b=tuySEScHXcuvm+YtN55GkTD5SZpMczGgrUKVCe/6eqIIO8bgA0n/Yxyi+tw+dB/as5
 U957VjMvKJtWLqOrGcrYaqbEYgFd/iWou5knMB2Reh7R3c+04060QBynwUBf/KjpuKqF
 JSuY3Nro2uJ4uZ/IC4A+gLMbsCS7k3EbyRRo6V5QuWcV76ZImzmWIOedtp/Yr/c8Dy+q
 ePMgQFomALW4WZPqFPddeVJwfm1sBYjoQsMvadENFUmKHLwAIRMqpyCpEWO8hvnaRTBK
 mo94oAZQvyeeMhOtpU3wD6NtmXqgHSMMEzCSfyrRaFVzLMBP+s3YYhmksO7ifPeLguOh
 yEeA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVoLfiBk+RrnmZJGtNEUSma5wARWgBZRzB429l9kZSkihZpQTA8QRCTelG1OcM7A+44f8y1DCcbnl0ZIfW6CZg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzOVkvitU3mwgYWQgqv6OGrD5EcRq4Z+5WJl6MPc3zdOfg7z0Pl
 cPiby3bu/FH9ALcV2V+vRk+ZyGr4zGqHo4khiBsBbb6oCO2pkvLrR3AW
X-Gm-Gg: ASbGnctM9k6rOgnIEygk/uz+74Gj1GKH641dqVFXg7LRAl93YkEThn2lJTqrCyKVFYy
 OuAyF4srxPDawv+qPIs+2GCog3H9+4Zt8kqEeTLHlVRqzNxqtU2GreC+UNPa1RkXDdA0U4rEUXk
 vCyP/1tKBt3m4Z4FvvmvmL17DuObedYnj9T7ZzpwB3wwOdJ53nHzL6G72CxmE2m7DXNHPoVYLEF
 zbvT1D0+qeTeJ/aFYdjxpndK6o+VhnQeqzuJ5fpbikuSO8+fHnKBtcLzouZQVh4v7MVFQ8pYN58
 GwSiFoa18lRl5RiatV4GtQi/5YC5CFQe8dTPM2FzirhbJygk9KNchbTHDpBet52jiAqQQIbjroG
 trzPeqvhJR0TPm/QY3hEMkCsvFCdPVl9nJUA50M4idJdwE+v0/o+gzBKGu3zGj6aUKEDZR10uww
 sBPlC7ACDw+1DP9+oObM0=
X-Google-Smtp-Source: AGHT+IFI8VG0P0n7qrm0zcp7SSN4eaMEgytqB19PsfLf5CxPVrAGvs9YLrEVD7m3nAlBeq12jFghtw==
X-Received: by 2002:a05:690e:160f:b0:63f:a4d7:b523 with SMTP id
 956f58d0204a3-640d45527c6mr354482d50.28.1762548228918; 
 Fri, 07 Nov 2025 12:43:48 -0800 (PST)
Received: from localhost ([2a03:2880:25ff:b::])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-640b5d81427sm2087281d50.18.2025.11.07.12.43.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Nov 2025 12:43:48 -0800 (PST)
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
Date: Fri,  7 Nov 2025 12:43:44 -0800
Message-ID: <20251107204347.4060542-1-daniel.zahka@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762548229; x=1763153029; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=hiMcVVi9rEIv/j5eQ05ENk15pvqtAPzV3c3AT9Vw3fI=;
 b=EIQE59s50UW2v13OKoNK/4ThyVOGoTzS+5a/8sSwE7C57dFtZ6SpqBTTdubQ+XSjhq
 vP/nApaRQZ+enGzNeRYBHU6sS1t/093SL+AoX2mOOm+iutdHEPezeGDz72vVaXE3tpFK
 daV4qTUZChlBwhPLmDlz9ibA4y6/qwJEEGSlezIE/ahbGTZqp3c+EK4NPmr3y95lIOe7
 hqdWW+/xrAwxuJwkhskNfjGShCsKlXOvirvXCrfrJJdxYYZPf/4uuUqjGTzDIfb2ArZ8
 j4XQvP9c6cIV/FBnLDs94KFVLJgKXwS9NFP6TZhCcEGU8ooqiMpkEL0Fb0N6576sNpiZ
 tJHQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=EIQE59s5
Subject: [Intel-wired-lan] [PATCH net-next v3 0/2] devlink: net/mlx5:
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
v3:
  - fix warnings about undocumented param in intel ice driver
v2: https://lore.kernel.org/netdev/20251103194554.3203178-1-daniel.zahka@gmail.com/
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
 .../net/ethernet/intel/ice/devlink/devlink.c  |  14 +-
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
 26 files changed, 259 insertions(+), 46 deletions(-)

-- 
2.47.3

