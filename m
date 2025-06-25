Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50612AE8277
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 14:18:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CF79613F3;
	Wed, 25 Jun 2025 12:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GWDxLbSNfygf; Wed, 25 Jun 2025 12:18:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AD6461445
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750853917;
	bh=fZ5SlboFOl/I+rDpJuiq6444fu6Ne4yGFkf6qTUxn50=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vZ5GrkhBC8DrHBsgruQPJhmZd2KiYvHJ0jibVDWm9gjZ7JH/3IoiuSv8VGKqB6L1+
	 TDFBkfA0CyGtFy64eSA6hTQ7Q78xk/D3W7PI059gI4VS4+a0kmGklIB+vG84xWEDYA
	 7qrzb8aqKYGINdyJxiaYoMuoxtDVrG8AZ3r9p5MAgUMKABcAekgDgXVv84gMrr/kJr
	 9xMINtbK1YekHNW/pE67OdYUoZziIcUmp8D8ANB6tMJU0cv+exTTa6pmuySzD4m/hG
	 V/moMGM4rjCnArT5lCnfufUjgkvEa/LiCTDJOvUejQl6eIsBbJIA6hRmnWPKzP+EeT
	 yxf2Le7ozJ7Iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AD6461445;
	Wed, 25 Jun 2025 12:18:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B2F0A154
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 991D541D75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:18:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id anG-jEWAN9Qz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 12:18:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0767341D33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0767341D33
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0767341D33
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:18:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 2E21960053;
 Wed, 25 Jun 2025 12:18:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE704C4CEEE;
 Wed, 25 Jun 2025 12:18:30 +0000 (UTC)
Date: Wed, 25 Jun 2025 13:18:28 +0100
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
Message-ID: <20250625121828.GB1562@horms.kernel.org>
References: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750853912;
 bh=YcD58soRZs6EhUzGV8q+5DJoG2q3WNRV/I6q3HlGoI0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SjI9DPZCwGR1deh3fSwu1ILgyrtOM8spHBVFLmLlUx+zMR6QzfUK99kYAaHP6Dsv+
 aTVzSgm1kNY+HTSMCetYQ4H/q5wqjyuZ/CeBSg2dXt8jMs//57nvenmXP1kqWZZJ/f
 zWZf3bc1X6Y3OrW7bF1QpNbabl4Sp+J+a8zopi7igGuzvWeEabiFXJn5VTVfuSkQYD
 G6fGtAN0dy6s3/kYxGpAkYgrruwj1vbJ8m7z3dE9BxEETF3Xe05+kaNDy+xU7KAI7D
 311zoO8jJmbt9vElQ7SQUNOOXpKw4GfcjNNNwWjupgdnQtDWq7Lu80ZdrgVWylMUfp
 nDuc7l5NK3HAg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=SjI9DPZC
Subject: Re: [Intel-wired-lan] [PATCH 1/4] e1000: drop checksum constant
 cast to u16 in comparisons
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

On Tue, Jun 24, 2025 at 09:29:43PM +0200, Jacek Kowalski wrote:

Hi Jacek,

Thanks for the patchset.

Some feedback at a high level:

1. It's normal for patch-sets, to have a cover letter.
   That provides a handy place for high level comments,
   perhaps ironically, such as this one.

2. Please provide some text in the patch description.
   I know these changes are trivial. But we'd like to have something there.
   E.g.

   Remove unnecessary cast of constants to u16,
   allowing the C type system to do it's thing.

   No behavioural change intended.
   Compile tested only.

3. This patchset should probably be targeted at iwl-next, like this:

	Subject: [PATCH iwl-next] ...

4. Please make sure the patchset applies cleanly to it's target tree.
   It seems that in it's current form the patchset doesn't
   apply to iwl-next or net-next.

5. It's up to you. But in general there is no need
   to CC linux-kernel@vger.kernel.org on Networking patches

> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

As for this patch itself, it looks good to me.
But I think you missed two.

diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index b5a31e8d84f4..0e5de52b1067 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -3997,7 +3997,7 @@ s32 e1000_update_eeprom_checksum(struct e1000_hw *hw)
 		}
 		checksum += eeprom_data;
 	}
-	checksum = (u16)EEPROM_SUM - checksum;
+	checksum = EEPROM_SUM - checksum;
 	if (e1000_write_eeprom(hw, EEPROM_CHECKSUM_REG, 1, &checksum) < 0) {
 		e_dbg("EEPROM Write Error\n");
 		return -E1000_ERR_EEPROM;
diff --git a/drivers/net/ethernet/intel/e1000e/nvm.c b/drivers/net/ethernet/intel/e1000e/nvm.c
index 1c9071396b3c..556dbefdcef9 100644
--- a/drivers/net/ethernet/intel/e1000e/nvm.c
+++ b/drivers/net/ethernet/intel/e1000e/nvm.c
@@ -588,7 +588,7 @@ s32 e1000e_update_nvm_checksum_generic(struct e1000_hw *hw)
 		}
 		checksum += nvm_data;
 	}
-	checksum = (u16)NVM_SUM - checksum;
+	checksum = NVM_SUM - checksum;
 	ret_val = e1000_write_nvm(hw, NVM_CHECKSUM_REG, 1, &checksum);
 	if (ret_val)
 		e_dbg("NVM Write Error while updating checksum.\n");

-- 
pw-bot: changes-requested
