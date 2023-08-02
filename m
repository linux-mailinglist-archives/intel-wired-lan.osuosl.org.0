Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDDF76C48B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 07:05:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B3EB60EF4;
	Wed,  2 Aug 2023 05:05:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B3EB60EF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690952713;
	bh=UFEPhwuQ9VVhvfi4aKG+kF/XIk58rCfQhx6Jl4iXQBU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DHhBK88mmBcQ9IU+WAKgWvO0V7tQSo5tpsG9oV62WmUbWNRMlqnJ5wxHJo4P2gcoc
	 ihqJJD4tWmPmmHSmU0fuBv13EIsEHCX0Ve8fuBvfgaie3pMv3QhCibT7DgPecRdI8f
	 RoxKDTgdn5bOQMhLKdbEpKEY/W+ZMv5DngHuErIwJ/WvCTiKqfPkMhy9ot8EiUGzpo
	 DKoT1XuOd0JHUmsj2vY7pna4N5iGdtfBULpxG38kV1OIK0CABM2G4FQ0ay4CQSz/Iv
	 07eA3Itu++52ouZImUIGxykZlgPtM/x30Mfr94QPQ3TfUj5rWroVaudpG7crnKOE/N
	 +PIZB/hD+HNcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jMXCvkPRRxMh; Wed,  2 Aug 2023 05:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D45ED60DFA;
	Wed,  2 Aug 2023 05:05:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D45ED60DFA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 11FAE1BF859
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7359F408A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:04:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7359F408A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D0jsCTLreIy7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 05:04:56 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AB67F4188B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:04:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB67F4188B
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D582E61789;
 Wed,  2 Aug 2023 05:04:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26A01C433C8;
 Wed,  2 Aug 2023 05:04:54 +0000 (UTC)
Date: Tue, 1 Aug 2023 23:05:59 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <52da391229a45fe3dbd5c43167cdb0701a17a361.1690938732.git.gustavoars@kernel.org>
References: <cover.1690938732.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1690938732.git.gustavoars@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690952695;
 bh=20F4xPeEvNj9IuAftI9KVAMz4n8aQOzO8rp3P7fmGNc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o9z225Vuo0O0cdGOCNgMKn+dvOU5eE4KM84og9IwU8gxi8fE1GdcLi226AenlSZDC
 vyN968CCLHAicKjG2npw9QyTqf5V/7QZu14QhJGEr4DkIVbWKR7qYIecWtVJzw1T7W
 EnZjm9vb2bb4d/bdiRASxZ05afIqPnbs8yXhC0nYM0Bqua4+iLDZ9cA8LvkqcX7Vsn
 nvgxRUpo8d1lo4C+hmsSlHKapcKTwO2CsB0UjWlgs+UD3Vz5T/i3qPzZGITD2F2V4M
 J9k1qrzUxWHpKqpbPVEyzMjyozTZzMyYntlUSlqJqOkJYXnhkJgBP5a4azkS2YzVeZ
 YeliueNUPZC5Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=o9z225Vu
Subject: [Intel-wired-lan] [PATCH 2/4][next] i40e: Replace one-element array
 with flex-array member in struct i40e_profile_segment
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
Cc: linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

One-element and zero-length arrays are deprecated. So, replace
one-element array in struct i40e_profile_segment with flexible-array
member.

This results in no differences in binary output.

Link: https://github.com/KSPP/linux/issues/335
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index c3d5fe12059a..f7a984304b65 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -1487,7 +1487,7 @@ struct i40e_profile_segment {
 	struct i40e_ddp_version version;
 	char name[I40E_DDP_NAME_SIZE];
 	u32 device_table_count;
-	struct i40e_device_id_entry device_table[1];
+	struct i40e_device_id_entry device_table[];
 };
 
 struct i40e_section_table {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
