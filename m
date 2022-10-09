Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75095F8FEC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Oct 2022 00:19:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00C2C409DE;
	Sun,  9 Oct 2022 22:19:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00C2C409DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665353974;
	bh=7zUmT9sehIBItxvc3odjlTe7BBwwi30jNyKUr5Pl7QM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6aE6YBfwyDMIlM69r+m/ydog8dD59USLa6J9wq7Tuz96/xcAyGX9svxazQJJyyEIN
	 Ll+IZvX4gGEObPdJHI2JkDCsxL3H7C5F2U0LxxwKzcGllo0upt2rXMrqE8gQ90ucvN
	 f4QWwALZ3D4bi938raJEo3JDANLb5alI/6HjE+mvXC1JeKmqODmgfje2pUvlsd60U5
	 jRL0MDJbDCtSOjZv+RSRc+vNuUyK4Ou1vAmChz4Cy/LwLmYhEIh+S4IoAuWrlfugLU
	 8xed1GRKfadH2EbR8J5KZpJCUmK1kIw/3blLSTweIddNrmssuTgkZ9n6I7G8Zsnh1w
	 LZbu0lB+iXScw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 50PuJP6-HMxr; Sun,  9 Oct 2022 22:19:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBB0B409DB;
	Sun,  9 Oct 2022 22:19:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBB0B409DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1134A1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED83960E26
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:19:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED83960E26
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1oBGRClnTBA1 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Oct 2022 22:19:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3602A60E13
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3602A60E13
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Oct 2022 22:19:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 79B93B80DDB;
 Sun,  9 Oct 2022 22:19:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEB65C433C1;
 Sun,  9 Oct 2022 22:19:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun,  9 Oct 2022 18:18:29 -0400
Message-Id: <20221009221912.1217372-4-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221009221912.1217372-1-sashal@kernel.org>
References: <20221009221912.1217372-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1665353964;
 bh=KpUOntgOBSl9iQrjVWZMtJsc9co7McfrbWqSjTYI6Fs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nstYlZtSBsmXOB+v4ssH9lGUOvQE/peq8oAEuLwUQgIhqygNh/3WSIPjLJ1O0PTOK
 oPRLhnjcpxVDcaJj/mZAUILlhk0KQ3La74oEIP2ri9/DC94K0fs+t2jzA3L7Ch2iBP
 TePWCUrr7EXJBhiM4KgsvJm3427axSuIB+TcbqcIjdn683k2qxRCWMlmOuzTLk4H8e
 MZxr0Er3gFsqUYxph5O1p4YY18MT6x2+iv/bsyJz1gKBHGfgkSbruQA/+n7hIdhf2Q
 xDxT+zcbTRv4KJIWV3TfwkuYeEOO8dGK37nH+q+EjemuwcyHUl93ZfTqY4RCgxaYSx
 1MHGkrjBGjveg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nstYlZtS
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.15 04/46] ice: set tx_tstamps
 when creating new Tx rings via ethtool
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
Cc: Sasha Levin <sashal@kernel.org>, intel-wired-lan@lists.osuosl.org,
 edumazet@google.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

[ Upstream commit b3b173745c8cab1e24d6821488b60abed3acb24d ]

When the user changes the number of queues via ethtool, the driver
allocates new rings. This allocation did not initialize tx_tstamps. This
results in the tx_tstamps field being zero (due to kcalloc allocation), and
would result in a NULL pointer dereference when attempting a transmit
timestamp on the new ring.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 9b9c2b885486..f10d9c377c74 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2788,6 +2788,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 		tx_rings[i].count = new_tx_cnt;
 		tx_rings[i].desc = NULL;
 		tx_rings[i].tx_buf = NULL;
+		tx_rings[i].tx_tstamps = &pf->ptp.port.tx;
 		err = ice_setup_tx_ring(&tx_rings[i]);
 		if (err) {
 			while (i--)
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
