Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3145D80A8E5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 17:28:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B45DC83E52;
	Fri,  8 Dec 2023 16:28:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B45DC83E52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702052901;
	bh=U7nMaiSDED3qZRs4wWVuIKbwfDX9L3q6S79P+ANF8Kw=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:Cc:From;
	b=y6KMJkVtDbvuPhTAf65RgBsb79jtXD+TwOcVmKrvRyb0bJGbxhnPsfIqxUQT9fE3y
	 3Xj+NC1qkcLpDR9EM5O1Mgv6IygHz41OqzNGKypewXoNu92C6yWo4kzed7PzKtj6Ad
	 CrgPxb3bRhU0O59M7Wn5JSKflKUOwziW56XJD4rNYjhe/44tlo88hM6sSvdbymc0rp
	 k0gykyehNgZ1Air8w2DqGIimCwIGLMobKZlgT3wD9S/+y2NJpzkM8EMO3XkpNWSi9Z
	 0s2dWPmC3y/8V+P4tqlA3WPmn8Birj364reSsJASUGsvm1m4HxUyUF068BhiJXEk9G
	 osr7K6JWx/TPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CVJ_vk-I8Ahe; Fri,  8 Dec 2023 16:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D07483E1E;
	Fri,  8 Dec 2023 16:28:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D07483E1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AEF511BF489
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 14:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 863CA6F510
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 14:58:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 863CA6F510
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UKrpgc7YWwKH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 14:58:36 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 908A760A79
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 14:58:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 908A760A79
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2B5D4CE2727;
 Fri,  8 Dec 2023 14:58:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5D1B1C433C7;
 Fri,  8 Dec 2023 14:58:30 +0000 (UTC)
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 49AEAC4167B;
 Fri,  8 Dec 2023 14:58:30 +0000 (UTC)
From: Rodrigo Cataldo via B4 Relay
 <devnull+rodrigo.cadore.l-acoustics.com@kernel.org>
Date: Fri, 08 Dec 2023 15:58:16 +0100
MIME-Version: 1.0
Message-Id: <20231208-igc-fix-hicredit-calc-v1-1-7e505fbe249d@l-acoustics.com>
X-B4-Tracking: v=1; b=H4sIAAcvc2UC/x2M0QpGQBQGX0Xn2qm1+pFXkYt1HHylpV2h5N1t/
 +XUzDwUNUAjtdlDQU9EbD5BkWcki/OzMsbEZI0tC2sqxiw84eYFEnTEweJWYWObYapL+RnXUGr
 3oEn6fzvCtbLXg/r3/QCLV9ZIcAAAAA==
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>, 
 Mallikarjuna Chilakala <mallikarjuna.chilakala@intel.com>, 
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1657;
 i=rodrigo.cadore@l-acoustics.com; h=from:subject:message-id;
 bh=weMSbJurKkzqYl3uCO65fr+skPXlmh7FrZPzSvAd/0U=;
 b=owGbwMvMwCGWd67IourLsUDG02pJDKnF+qIb625IOjBMseo/ujNfr2h/wfewxacfxdQHmTE/a
 ZgwOde2o5SFQYyDQVZMkUX/N5/T6jIlI47EySth5rAygQxh4OIUgIk8+8XwPzTNNpGBL+zR5MKJ
 p5+Kz2J44/LG1P7HE1UO7Y16mb2/LRkZzta4mXeZPFXaEt0UcW9y+Ou8iaGeHh88FVJOc0ZK2TE
 zAQA=
X-Developer-Key: i=rodrigo.cadore@l-acoustics.com; a=openpgp;
 fpr=E0F4E67DE69A235AC356157D2DDD1455748BC38F
X-Endpoint-Received: by B4 Relay for rodrigo.cadore@l-acoustics.com/default
 with auth_id=109
X-Original-From: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
X-Mailman-Approved-At: Fri, 08 Dec 2023 16:27:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702047510;
 bh=z+uODMNdb+yL0ZZzyWs5UmEeiIVKC6u4wz42h2ik2a8=;
 h=From:Date:Subject:To:Cc:Reply-To:From;
 b=VwF0zPtxXQwsYpma2Yw0Mklf9CCRg98430fuCELiUfyB9ycExFgU6rf4trmogH67e
 8Y0JrXm/fzjtsFbMFal5QKu4hQw/fYXvlU6DdtZTXmxlOeSo400G8zTNQ3VAIbHYTZ
 tgmB6/dn6VkHEmOnMc3S/SJUL6paeAlR2zN2Uqu10WbInJuusDH1Aw0zAfUsC8De6D
 9Wc3KdCB7guCdJRnsQ4uMbQQ4PjS/gMFI14HyrgshdmLa6nCc/RxYTopIYcqhVyRNS
 /D88uq+kgmH2blBiUAKAMzbR+Rzvn7Baqcu/dMviZpnfZMuv9UFEvbzg3tYd5yHub2
 VTs7hd/ERBbhQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VwF0zPtx
Subject: [Intel-wired-lan] [PATCH iwl-net] igc: Fix hicredit calculation
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
Reply-To: rodrigo.cadore@l-acoustics.com
Cc: netdev@vger.kernel.org, Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>

According to the Intel Software Manual for I225, Section 7.5.2.7,
hicredit should be multiplied by the constant link-rate value, 0x7736.

Currently, the old constant link-rate value, 0x7735, from the boards
supported on igb are being used, most likely due to a copy'n'paste, as
the rest of the logic is the same for both drivers.

Update hicredit accordingly.

Fixes: 1ab011b0bf07 ("igc: Add support for CBS offloading")
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
Signed-off-by: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
---
This is a simple fix for the credit calculation on igc devices
(i225/i226) to match the Intel software manual.

This is my first contribution to the Linux Kernel. Apologies for any
mistakes and let me know if I improve anything.
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index a9c08321aca9..22cefb1eeedf 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -227,7 +227,7 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 			wr32(IGC_TQAVCC(i), tqavcc);
 
 			wr32(IGC_TQAVHC(i),
-			     0x80000000 + ring->hicredit * 0x7735);
+			     0x80000000 + ring->hicredit * 0x7736);
 		} else {
 			/* Disable any CBS for the queue */
 			txqctl &= ~(IGC_TXQCTL_QAV_SEL_MASK);

---
base-commit: 2078a341f5f609d55667c2dc6337f90d8f322b8f
change-id: 20231206-igc-fix-hicredit-calc-028bf73c50a8

Best regards,
-- 
Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
