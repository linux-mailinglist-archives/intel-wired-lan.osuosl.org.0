Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D205677D56
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 15:00:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AA5081F5C;
	Mon, 23 Jan 2023 14:00:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AA5081F5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674482447;
	bh=YL7pNVDNbKUBPKX+1k4lTfC+VlJIFEH52/S99f3sLPg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4YttPQzUaquKtVUhcN7vzk2FXO8CBx4LO/wwmOwP4LCDtWCBJlXxY+Szpffo06tS5
	 JSxL6PaglGXE9u2en6ddzcNP31qb1IuV777kyNFXPmIvFCmUQKocTJ7gZJKlzEQosN
	 /myKZ4IMBUVQv7RxoCNxeRCV/VefpSdkZLoPbTGBchcZnb5b5RGjIvYe0dvXCQebLn
	 LZFAaLN2hEvHSM4MnfrSHXxT6nz8sBsJy08Z75IFxteGACqyUBOe9MrPXUac8MZ54O
	 aVT35zdAnNMtATSKZoOe1qeXTPKqw9EwKa1u3ZRyhWT1IvLtSslNfeLXQCSBLT2zMP
	 SBD5TxG8mVW4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ffYlt7mu6ObB; Mon, 23 Jan 2023 14:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18E0D81F30;
	Mon, 23 Jan 2023 14:00:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18E0D81F30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5187D1BF359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:00:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B2EF4056B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B2EF4056B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ru3ffRphvgTj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 14:00:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53B264035D
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 53B264035D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:00:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E490BB80DAA;
 Mon, 23 Jan 2023 14:00:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D571BC433D2;
 Mon, 23 Jan 2023 14:00:33 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Mon, 23 Jan 2023 16:00:13 +0200
Message-Id: <cover.1674481435.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674482435;
 bh=aPVU2diHca38fcYua3CN44olBe3ZpG8pTkjRl2MYVKE=;
 h=From:To:Cc:Subject:Date:From;
 b=f47THf1PbZArFbvUjR5AdbPNRcaNzdbx+B5hf/SNtE5TcK41fYAlqUsRPSUgpQqwG
 McMV6bPkaXZf5mePWS5QTfjmASZSZWLfKxkfDx74OnW8g1UpCK66P4kNvjipFc4cha
 QBECceSWW8jbKYp3wOv6VCCdMLNlfqEE5YrwO+mesOPxTI5Y3+1rUdKpwbQjj0C7VA
 ONi56FY6hOnH9aN7Kj5Dw+m64Gf2XNsExFIMea4kx5ThUums8xMNhbYlylBhlnysCA
 HWyrIVI3CbDDcKcz9Jq41UQRDE71ceUSjbZCWz+LD+wpePxvQmwFmZaEi3U5FTF/WV
 A7YI6UYf7ZmNA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=f47THf1P
Subject: [Intel-wired-lan] [PATCH net-next 00/10] Convert drivers to return
 XFRM configuration errors through extack
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
