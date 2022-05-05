Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DA151BCC1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 12:07:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43CC0400A9;
	Thu,  5 May 2022 10:07:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w9fWgXS9XURx; Thu,  5 May 2022 10:07:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C53540293;
	Thu,  5 May 2022 10:07:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B00961BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 997B960FEF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VnHIJpxXvX7I for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 10:06:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78CD160B6E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:06:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D6BDEB82B35;
 Thu,  5 May 2022 10:06:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAE7EC385A4;
 Thu,  5 May 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651745213;
 bh=ObWDA2SCWwhf8rEgifXrmUVxwSxqpiajpOZA6fDCahk=;
 h=From:To:Cc:Subject:Date:From;
 b=a4ky+JXUTuuPpxBkOR+Bn+zZ5+k3DhNXJmQJwCsa64FFSkuRXXO/MEmOvDN/K1jWG
 O6qiIRfLK1BnS60qoayp8HW08dCTYS8W4Vgfm6gR6Ced8e9RgkzkIcSVFuvpCMniew
 5sdCxoD2I5Ivcbsw68wKhrdVy1CI79rAguiaXJBCNSD2daukPId/BB1NvJC5JNVJtf
 iNEPIbiKDxDHIfkrgnTH8JOQFQOMReKzXMPluroE1PYbf7paXj7M0eY9Rv+oSrCBkm
 75VscNLxQCYp3obtNWrjay0aQPb/UeHMBOkVD9BcGIWhTbQLvY420V2t8qnjbgpmUs
 gBsx/e1smRj6g==
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Date: Thu,  5 May 2022 13:06:37 +0300
Message-Id: <cover.1651743750.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ipsec-next 0/8] Be explicit with XFRM
 offload direction
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Raed Salem <raeds@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Hi Steffen,

I may admit that the title of this series is not the best one as it
contains straightforward cleanups and code that converts flags to
something less confusing.

This series follows removal of FPGA IPsec code from the mlx5 driver and
based on net-next commit 4950b6990e3b ("Merge branch 'ocelot-vcap-cleanups'").

As such, first two patches delete code that was used by mlx5 FPGA code
but isn't needed anymore.

Third patch is simple struct rename.

Rest of the patches separate user's provided flags variable from driver's
usage. This allows us to created more simple in-kernel interface, that
supports type checking without blending different properties into one
variable. It is achieved by converting flags to specific bitfield variables
with clear, meaningful names.
    
Such change allows us more clear addition of new input flags needed to
mark IPsec offload type.

The followup code uses this extensively:
https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/log/?h=xfrm-next

Thanks

Leon Romanovsky (8):
  xfrm: free not used XFRM_ESP_NO_TRAILER flag
  xfrm: delete not used number of external headers
  xfrm: rename xfrm_state_offload struct to allow reuse
  xfrm: store and rely on direction to construct offload flags
  ixgbe: propagate XFRM offload state direction instead of flags
  netdevsim: rely on XFRM state direction instead of flags
  net/mlx5e: Use XFRM state direction instead of flags
  xfrm: drop not needed flags variable in XFRM offload struct

 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    |  9 ++++-----
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.h    |  2 +-
 drivers/net/ethernet/intel/ixgbevf/ipsec.c    |  6 +++---
 drivers/net/ethernet/intel/ixgbevf/ipsec.h    |  2 +-
 .../mellanox/mlx5/core/en_accel/ipsec.c       | 10 +++++-----
 drivers/net/netdevsim/ipsec.c                 |  2 +-
 include/net/xfrm.h                            | 20 +++++++++++--------
 net/ipv4/esp4.c                               |  6 ------
 net/ipv6/esp6.c                               |  6 ------
 net/xfrm/xfrm_device.c                        | 15 +++++++-------
 net/xfrm/xfrm_state.c                         |  4 ++--
 net/xfrm/xfrm_user.c                          |  5 +++--
 12 files changed, 40 insertions(+), 47 deletions(-)

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
