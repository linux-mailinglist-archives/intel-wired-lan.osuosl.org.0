Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA21A3C5D9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 18:16:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AACF04FC94;
	Wed, 19 Feb 2025 15:21:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KTWbl4nJtWf5; Wed, 19 Feb 2025 15:20:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82FB753600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739974188;
	bh=tz3Gozj6clUA0RbSHIipl5RNz3/E9kzAtp3BKKViEpE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eWQpcQ1PoyCD1bUsNTHW7HdlL8QdDdEov/EveDlhexY55+AwwfzQpVtVo+6atnIql
	 GCMKiDz7YKcU/G59RAtEqJtCq8iRu/5lyd12Y7iuC5sDvhoXcONdqWEXf9lzoNc/W9
	 NiPMcxaUfDAxrnl6aU+yMLqWwsYqPFz0QCfCqr4L3hBTz4vXTWYYlbutXJVjTLtMSD
	 11VTtd8UaN1DfFORfiUEnKqar8jaRP02oWMmDdFHQtbN6fIux2lqN8n0plHMevg8DS
	 RjFgdvKcC6IL4RSLRIzlXmYkl2KyAlwQ93s0edIWMEI/WNk6fwNrSV3rcec5U9Loj7
	 QRqspAosg2ENA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82FB753600;
	Wed, 19 Feb 2025 14:09:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B6FD2C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 13:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 96DBF404FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 13:51:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b6UA5KTRYfuy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 13:51:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6E10840177
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E10840177
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6E10840177
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 13:51:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E65B75C56D0;
 Wed, 19 Feb 2025 13:50:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8E0BC4CED1;
 Wed, 19 Feb 2025 13:51:14 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, Ayush Sawal <ayush.sawal@chelsio.com>,
 Bharat Bhushan <bbhushan2@marvell.com>, Eric Dumazet <edumazet@google.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Jay Vosburgh <jv@jvosburgh.net>,
 Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 linux-rdma@vger.kernel.org, Louis Peens <louis.peens@corigine.com>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Paolo Abeni <pabeni@redhat.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Zhu Yanjun <yanjun.zhu@linux.dev>, Bharat Bhushan <bharatb.linux@gmail.com>
Date: Wed, 19 Feb 2025 15:50:56 +0200
Message-ID: <cover.1739972570.git.leon@kernel.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739973075;
 bh=Djbf4KqW2xY32dbdHluYN/2ezxhAVFXdhkJiMbQukAs=;
 h=From:To:Cc:Subject:Date:From;
 b=mD5MLQePuBA3co7TadcIZ8FuyExS1Lu4iYTWa60nIag6zE2hYC52thT8jM2Gj6tu3
 hVh8PKwTv/tDG15CmaV+vkbjSozCeA4I8ZIpCZdfYrcwUEyynZsdSDEHgQ9fCg7jFi
 vho8y3/8vL7jXXhOssH43yIVifxpiXMlFfobO82kU1gKxw9PKD5SEyXTgeNUUgYbAM
 jz30tXTEaj25NZlLA/ZzpxsK/I/GkfiH6FA/pW69h2Azkg8L0AQtC51qQ4CIAcmmG+
 9qV8vj8B43sPhHqS+unafmJU+I7Oz3YpZ3PUD4azxX2iSkuL/g4NNbyzD5HPXiHV97
 9qUnQ/jwX+0pg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mD5MLQeP
Subject: [Intel-wired-lan] [PATCH ipsec-next v1 0/5] Support PMTU in tunnel
 mode for packet offload
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

Changelog:
v1:
 * Changed signature and names of functions which set and clear type_offload
 * Fixed typos
 * Add Zhu's ROB tag
v0: https://lore.kernel.org/all/cover.1738778580.git.leon@kernel.org

Hi,

This series refactors the xdo_dev_offload_ok() to be global place for
drivers to check if their offload can perform encryption for xmit
packets.

Such common place gives us an option to check MTU and PMTU at one place.

Thanks

Leon Romanovsky (5):
  xfrm: delay initialization of offload path till its actually requested
  xfrm: simplify SA initialization routine
  xfrm: rely on XFRM offload
  xfrm: provide common xdo_dev_offload_ok callback implementation
  xfrm: check for PMTU in tunnel mode for packet offload

 Documentation/networking/xfrm_device.rst      |  3 +-
 drivers/net/bonding/bond_main.c               | 16 ++----
 .../net/ethernet/chelsio/cxgb4/cxgb4_main.c   | 21 --------
 .../inline_crypto/ch_ipsec/chcr_ipsec.c       | 16 ------
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    | 21 --------
 drivers/net/ethernet/intel/ixgbevf/ipsec.c    | 21 --------
 .../marvell/octeontx2/nic/cn10k_ipsec.c       | 15 ------
 .../mellanox/mlx5/core/en_accel/ipsec.c       | 16 ------
 .../net/ethernet/netronome/nfp/crypto/ipsec.c | 11 ----
 drivers/net/netdevsim/ipsec.c                 | 11 ----
 drivers/net/netdevsim/netdevsim.h             |  1 -
 include/net/xfrm.h                            | 21 +++++++-
 net/xfrm/xfrm_device.c                        | 46 ++++++++++++-----
 net/xfrm/xfrm_output.c                        |  6 ++-
 net/xfrm/xfrm_state.c                         | 50 ++++++++-----------
 net/xfrm/xfrm_user.c                          |  2 +-
 16 files changed, 87 insertions(+), 190 deletions(-)

-- 
2.48.1

