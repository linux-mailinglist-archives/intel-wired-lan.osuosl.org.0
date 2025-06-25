Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7818AE828F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 14:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9275D61484;
	Wed, 25 Jun 2025 12:21:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HNBrpJmUF2Ys; Wed, 25 Jun 2025 12:21:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1AD361487
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750854105;
	bh=6qZPz7zlI4ITsiBlD3QVSxcaXhHtDzUOHt/1AkdvUEo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LtZsUigAiIgBpSeiedOnqIDkwvpUvlUTarVMMc5ENGMte/YRMSeU5tULx6T8ksV5O
	 0zzXYJgzgj/XFA8NypfVB+tOut8g+Ie319X+VYMoZORW6nceNayTFsyRuYB7BSpqPo
	 jAryjoNPcAzY2uCKntf8CWnmCN9rSdPiScntdXWdVuG+pY9bhqDVdbVseczjy5r5UB
	 notoK9Thr7LMhyWwIAwq7fUn0UNv9kqW0S5wbNKvpHaP1uvJJGOMR52fNJuQUmo3v8
	 kOGd5nu488ecCHDwMHINwPMmWaGqLq6Dscs5/y/WBQ7ET3NSMAEk5WJClbJ8sOSSiN
	 HQ1cAg95kRwQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1AD361487;
	Wed, 25 Jun 2025 12:21:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E1DF943F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CEDE983F73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:21:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YdSJ8xJ4sGwB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 12:21:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3DBD283F6F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DBD283F6F
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3DBD283F6F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 12:21:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id EB4B644CCA;
 Wed, 25 Jun 2025 12:21:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABD96C4CEEA;
 Wed, 25 Jun 2025 12:21:39 +0000 (UTC)
Date: Wed, 25 Jun 2025 13:21:37 +0100
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
Message-ID: <20250625122137.GD1562@horms.kernel.org>
References: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
 <96d55057-28f3-4f77-b5ac-6f2b6769aeb5@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96d55057-28f3-4f77-b5ac-6f2b6769aeb5@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750854101;
 bh=f8Gg0B0ETY0QdfV8ZauRjJQHPe3VqiRnhHvVy3Iu4TA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p48+zz2nxK9ZkUx7/stu3afSzjVbDbl6PiqaTRATlK0NaXeZW5TzO5Jf3ZGj15rpB
 EquM4vuL3++P/8R0klSsixml46q9GKyJyQFQbLgM04aIidVkJtV6wtTJjV5gPp7gw2
 VNQqsoiee3irexPZNXlWbN5YKp8brUdVuI2AS8Qozvn+2CefgvenBCykB6c6QKjKS3
 w+CVZzpRE4gFANAS6GR8en73jOWm01yr91qfXln+NN41V/otJY+Uiq21aaqeHgVWsJ
 v4zlYnnnwVyoq2YE2MBYDEGPCbPVKDUKuC+k6dKOEK7Id7yqhSukUp6Awk+OajqmAt
 YVWJnlDY8x0TQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=p48+zz2n
Subject: Re: [Intel-wired-lan] [PATCH 3/4] igb: drop checksum constant cast
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

On Tue, Jun 24, 2025 at 09:30:44PM +0200, Jacek Kowalski wrote:

As per my comment on patch 1/4, some text should go here.

> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/igb/e1000_82575.c | 2 +-
>  drivers/net/ethernet/intel/igb/e1000_nvm.c   | 2 +-

These changes look good to me, but I think we should also do:

diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c b/drivers/net/ethernet/intel/igb/e1000_82575.c
index 12ad1dc90169..44a85ad749a4 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.c
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
@@ -2406,7 +2406,7 @@ static s32 igb_update_nvm_checksum_with_offset(struct e1000_hw *hw, u16 offset)
 		}
 		checksum += nvm_data;
 	}
-	checksum = (u16) NVM_SUM - checksum;
+	checksum = NVM_SUM - checksum;
 	ret_val = hw->nvm.ops.write(hw, (NVM_CHECKSUM_REG + offset), 1,
 				&checksum);
 	if (ret_val)
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.c b/drivers/net/ethernet/intel/igb/e1000_nvm.c
index e654310b1161..c8638502c2be 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.c
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.c
@@ -668,7 +668,7 @@ s32 igb_update_nvm_checksum(struct e1000_hw *hw)
 		}
 		checksum += nvm_data;
 	}
-	checksum = (u16) NVM_SUM - checksum;
+	checksum = NVM_SUM - checksum;
 	ret_val = hw->nvm.ops.write(hw, NVM_CHECKSUM_REG, 1, &checksum);
 	if (ret_val)
 		hw_dbg("NVM Write Error while updating checksum.\n");

