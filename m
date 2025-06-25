Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6265AAE8295
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 14:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D920961458;
	Wed, 25 Jun 2025 12:22:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gSCiIYGU-2Rl; Wed, 25 Jun 2025 12:22:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69E7061463
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750854167;
	bh=AYt4WW/JGLefcIXxWq4KJsXyl//pM2bNqnTxd4uM0N4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y8lLqSXhwZRrPHhRwCyzqFcFp8oGWS5dp3Fgu7WHv6Wam6ibjqRtbGMt3ocNMp1pl
	 oKkTUCmucbcIaqYY6kB/7Ww7xprTFzWFV6M9eYmJKWCe4IjejTaHbJlkVusyeNGMBS
	 4WLuQu6BfDl0nTb5XjL++5MTQojoEypUvWY6N92VBn2uRDBaBILZHyZFAPk3wV1Mig
	 GzSkU4A0X3Ngq/T2KZBfhPgTpoLxyzhFHdGbqruH4Mir67hT20/KQrwNzdSI493/+B
	 D9+R8PelvJlqplZuHvioZTJjP7ZNmo6X/gI8w5SYhtSQ6vNvNkJYtARSphTZCEY+dL
	 JSkHaRC0wu4sQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69E7061463;
	Wed, 25 Jun 2025 12:22:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3559C154
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:22:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 265D580A89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:22:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hby0CkFuqg7f for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 12:22:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9641980A80
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9641980A80
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9641980A80
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:22:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 23BD4A523C9;
 Wed, 25 Jun 2025 12:22:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A84A1C4CEEA;
 Wed, 25 Jun 2025 12:22:41 +0000 (UTC)
Date: Wed, 25 Jun 2025 13:22:39 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250625122239.GE1562@horms.kernel.org>
References: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
 <5589e73f-2f18-4c08-8d10-0498555dd6be@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5589e73f-2f18-4c08-8d10-0498555dd6be@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750854163;
 bh=wkVGryBaCpPd1NvNZOe7YYPCa/Neq2VMCi4HihyJ7xU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=quK9fvsH4UXmpUu60MSRW1iQNEjuq8IdOP7pt1+LbBeRRJEWO1TBbuzlfuXM0DZ8d
 LaTFyeGBQoQCO+Ym/F+ifNYiznxvNn3i5HxnRXp7D5amEIXgl80bz8r/wUkW6PqKD8
 Uc+202/3AazXAbnLji1WX2KE9cqUbG6wvahPk4ZV+M4y5475gDT+/nrGKFAYXGe5bF
 8xuwnE1uJvczOZLqc2DKsWVUPxnmSL3LiUYzMGDXFUjZjJPVa5F57c4qZ5CzV6JpTJ
 VWj5JlKExq8P2k+B37Q+VwbnHofGzJFb8zieSPLK+u+JmU+yBt85PGOqr6nP6NimM+
 mhLaAZQ6oMUZA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=quK9fvsH
Subject: Re: [Intel-wired-lan] [PATCH 4/4] igc: drop checksum constant cast
 to u16 in comparisons
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

On Tue, Jun 24, 2025 at 09:31:08PM +0200, Jacek Kowalski wrote:
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/igc/igc_nvm.c | 2 +-

I think we should add this:

diff --git a/drivers/net/ethernet/intel/igc/igc_nvm.c b/drivers/net/ethernet/intel/igc/igc_nvm.c
index c4fb35071636..a47b8d39238c 100644
--- a/drivers/net/ethernet/intel/igc/igc_nvm.c
+++ b/drivers/net/ethernet/intel/igc/igc_nvm.c
@@ -155,7 +155,7 @@ s32 igc_update_nvm_checksum(struct igc_hw *hw)
 		}
 		checksum += nvm_data;
 	}
-	checksum = (u16)NVM_SUM - checksum;
+	checksum = NVM_SUM - checksum;
 	ret_val = hw->nvm.ops.write(hw, NVM_CHECKSUM_REG, 1, &checksum);
 	if (ret_val)
 		hw_dbg("NVM Write Error while updating checksum.\n");
