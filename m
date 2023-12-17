Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A81815E63
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Dec 2023 10:45:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD49360AED;
	Sun, 17 Dec 2023 09:45:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD49360AED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702806316;
	bh=8WaO5DKgk+kpZgb0RqMkBWr81lCzZM/8MF0/ywr8teM=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MBEyM7H1wWPyyKz/+C5d5KZcb9Bvy/Tr5dY7F01+pDXcddX8xmJ2PjT92nsFFMZWQ
	 +MYanft9Ooushg5Nzdy123625XvotUhxhYDsUMkbD0RQcDJ7AnMWYG2GZrrIyHqhZ4
	 J3vt5K88FBW9mCKrPfVlXPbu2T9OD1tjx2cKX/xyVpNVuYJ8nof9rSarIpOEnBTbPx
	 qkjoUhm3zik4Qr8CTV59BQUlsA0xf14dGEFIlHbuyLHjIhr/jKqqhUWgUAhLPpJ5ni
	 TNnZU9njLYG4kcWFgKtLFYk61apL+zCeGo56NVoPSMiPRv4IDVRxWUeikjjOqucyjy
	 zLmEskTYiSZcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qCYq8Oeo8jjL; Sun, 17 Dec 2023 09:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3F9860A97;
	Sun, 17 Dec 2023 09:45:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3F9860A97
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F36231BF377
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Dec 2023 09:45:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D764E60A97
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Dec 2023 09:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D764E60A97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dwrgLojZHh9S for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Dec 2023 09:45:10 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1770D60A92
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Dec 2023 09:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1770D60A92
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 7D741CE0301;
 Sun, 17 Dec 2023 09:45:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 563ABC433C7;
 Sun, 17 Dec 2023 09:45:01 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
Date: Sun, 17 Dec 2023 09:44:50 +0000
MIME-Version: 1.0
Message-Id: <20231217-i40e-comma-v1-1-85c075eff237@kernel.org>
X-B4-Tracking: v=1; b=H4sIABHDfmUC/x3MQQqAIBBA0avIrBtIC6SuEi3UphooDY0SorsnL
 d/i/wcSRaYEvXgg0sWJgy+QlQC3Gr8Q8lQMqlaNVFIjtzWhC/tuULvWOqusmXQHJTgizZz/2QB
 8b+gpnzC+7wdEuNfSZgAAAA==
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702806303;
 bh=SjfgyypNeosBVUqUNZsJw8cMhrT9jSZeCkrmvE4/Y+8=;
 h=From:Date:Subject:To:Cc:From;
 b=j1Dt7ai7IL2Mw9arRQR+7Xj5rc21ImNRqH50Z+YB0LWCDx2gs24JwSyjPVXoMDsnd
 ac/Cz0gOQVsrvRElRAsWhEyoV+DU3ZI4lsxDPwDpSIsWF1m1nfRqLVQABOk9MokKlG
 VPAFM962VT0d70+AcDa1UFx/Z3Wt46HbJVKN6kwKQClHzmLeZzx7NRbJoCKCCn3Tjm
 J9unESeVGTj9nHvXsFumQhyLgD0i+YTxkPDAh7YMmw+GjqrgCNSZFnFznJNRa9lGnJ
 xXqd7cYraSLZFx1+NgKLni537Evy9EGh6465noKcxCrvxAzoY0W5WvLS9EpIYQ1wKC
 K4aCqc4Xj/esA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=j1Dt7ai7
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: Avoid unnecessary use of
 comma operator
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
Cc: netdev@vger.kernel.org, llvm@lists.linux.dev,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <nathan@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Although it does not seem to have any untoward side-effects,
the use of ';' to separate to assignments seems more appropriate than ','.

Flagged by clang-17 -Wcomma

No functional change intended.
Compile tested only.

Signed-off-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 812d04747bd0..f542f2671957 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1917,7 +1917,7 @@ int i40e_get_eeprom(struct net_device *netdev,
 			len = eeprom->len - (I40E_NVM_SECTOR_SIZE * i);
 			last = true;
 		}
-		offset = eeprom->offset + (I40E_NVM_SECTOR_SIZE * i),
+		offset = eeprom->offset + (I40E_NVM_SECTOR_SIZE * i);
 		ret_val = i40e_aq_read_nvm(hw, 0x0, offset, len,
 				(u8 *)eeprom_buff + (I40E_NVM_SECTOR_SIZE * i),
 				last, NULL);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
