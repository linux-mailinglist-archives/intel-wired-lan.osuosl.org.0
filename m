Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11925679725
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 12:59:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F8EF820E2;
	Tue, 24 Jan 2023 11:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F8EF820E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674561584;
	bh=Fn67WTOwFFyVRLeza8g2BKyYwQOsiOCSFnnlpFcRaaI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MDfhNun01FPbuvjQvCZNtrd9hR/Ym2La7Hsh+Tb2fbfdvrNdyK4abnn/nBmoO96ue
	 uSnyCqRQo0eRXjS0+I7x0DZ0rxo6y9f54bjXenPeIoRskmb8ntDqeX76hwQvmYWckb
	 VN/xvJW1R3pweOl4MIaECuT4edDyp4gC/EuUq95T/PwwTbhwoRyELoF3YTgpiy7KGA
	 HpD5B49miXbXLAPwbhGq6jbDAwZ/4dFacRSQc/zsOgWuQZTdfeK7s4eqAOOhPoonzT
	 Crpxd8B6JOzaNX3ttqTI86nCZE4DF7Ont4UPl41dFhCtR6u955eAEAhpgbY6ZR77Y1
	 L21P+PTHXq4MA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w50xmn2oTj2h; Tue, 24 Jan 2023 11:59:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0121A8209E;
	Tue, 24 Jan 2023 11:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0121A8209E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E88D51BF25B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 11:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0CBA60BD2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 11:59:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0CBA60BD2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5X02_aDO_gy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 11:59:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5A5360BC0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5A5360BC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 11:59:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9ED9761047;
 Tue, 24 Jan 2023 11:59:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43A38C433D2;
 Tue, 24 Jan 2023 11:59:34 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Tue, 24 Jan 2023 13:54:56 +0200
Message-Id: <cover.1674560845.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674561575;
 bh=YZ+vBu4ztT6wwThgjIPo2vsGVB02GGGHCVkvRdgZXYA=;
 h=From:To:Cc:Subject:Date:From;
 b=Vudp/uaBjlLkgY5TVF3F3D2/WJGfRGkddKr3VLOxk+p4tB+Rn9tJncLf9nK+FqAR9
 Ubn4IucGXYwUH/Nb9hMHy+CQ0C7Ps4SF44nvR6qlGIlsdTt6xU0laZp3IDEebgaM4o
 zBW1aCuFpPUvir2xueZVzX/TiNtNIE07xgy7CWwaAUVYwuMHHxBqtGhyn75G1ErWd6
 m01kB1YTt5UWRcRHugmd1mOQRdgLQjuvzxh328bKIeHO5YKZP1nx7oZ9KZfWFNtFVe
 cSwzyXJlzprD7wJQMiR2pFRE7CrjjaoAM7sD35IrqeiwDNVAdvML3wt9oc8v7PdSBA
 QmduvV/iO+orw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Vudp/uaB
Subject: [Intel-wired-lan] [PATCH net-next v1 00/10] Convert drivers to
 return XFRM configuration errors through extack
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
Cc: Veaceslav Falico <vfalico@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jonathan Corbet <corbet@lwn.net>,
 Jay Vosburgh <j.vosburgh@gmail.com>, oss-drivers@corigine.com,
 linux-doc@vger.kernel.org, Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changelog
v1:
 * Fixed rebase errors in mlx5 and cxgb4 drivers
 * Fixed previously existed typo in nfp driver
 * Added Simon's ROB
 * Removed my double SOB tags
v0: https://lore.kernel.org/all/cover.1674481435.git.leon@kernel.org

---------------------------------------------------------------------------

Hi,

This series continues effort started by Sabrina to return XFRM configuration
errors through extack. It allows for user space software stack easily present
driver failure reasons to users.

As a note, Intel drivers have a path where extack is equal to NULL, and error
prints won't be available in current patchset. If it is needed, it can be
changed by adding special to Intel macro to print to dmesg in case of
extack == NULL.

Thanks

Leon Romanovsky (10):
  xfrm: extend add policy callback to set failure reason
  net/mlx5e: Fill IPsec policy validation failure reason
  xfrm: extend add state callback to set failure reason
  net/mlx5e: Fill IPsec state validation failure reason
  netdevsim: Fill IPsec state validation failure reason
  nfp: fill IPsec state validation failure reason
  ixgbevf: fill IPsec state validation failure reason
  ixgbe: fill IPsec state validation failure reason
  bonding: fill IPsec state validation failure reason
  cxgb4: fill IPsec state validation failure reason

 Documentation/networking/xfrm_device.rst      |   4 +-
 drivers/net/bonding/bond_main.c               |  10 +-
 .../net/ethernet/chelsio/cxgb4/cxgb4_main.c   |   8 +-
 .../inline_crypto/ch_ipsec/chcr_ipsec.c       |  34 +++---
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    |  27 ++---
 drivers/net/ethernet/intel/ixgbevf/ipsec.c    |  21 ++--
 .../mellanox/mlx5/core/en_accel/ipsec.c       | 103 ++++++++----------
 .../net/ethernet/netronome/nfp/crypto/ipsec.c |  41 +++----
 drivers/net/netdevsim/ipsec.c                 |  14 +--
 include/linux/netdevice.h                     |   4 +-
 net/xfrm/xfrm_device.c                        |   9 +-
 net/xfrm/xfrm_state.c                         |   2 +-
 12 files changed, 137 insertions(+), 140 deletions(-)

-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
