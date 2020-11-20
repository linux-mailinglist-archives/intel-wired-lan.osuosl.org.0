Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEB12BB2A0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Nov 2020 19:28:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 84D5986D47;
	Fri, 20 Nov 2020 18:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DTW2Wd5lrM7R; Fri, 20 Nov 2020 18:28:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C728486D5D;
	Fri, 20 Nov 2020 18:28:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0AFE81BF327
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 18:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 02DC88765D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 18:28:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UfeeH0yjYbx0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Nov 2020 18:28:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 839B287653
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 18:28:38 +0000 (UTC)
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53CAB2224C;
 Fri, 20 Nov 2020 18:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605896918;
 bh=vvxVQDPg2LZpf8LGypT9bQ076bkI8NuafNE/kPbFaAU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x09fA/BtSTvsuaaE5wTMhDoNPUeYgf7q80oknDDhUKB5z9ApYLSKXbp+n4unmA81x
 LLjRdyZrqOlrAyjvWi19/hlUKfUWXxbmo7rvaqfaOuJx2haGw3cIXgDQW6GfbnYFST
 TkRbmYdmTsaHjnzpObexK1SQ4EFkiVgIBL/KkNeo=
Date: Fri, 20 Nov 2020 12:28:43 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <d5e3348c525d15d655f14f4f2321edbbada51cd3.1605896059.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: [Intel-wired-lan] [PATCH 033/141] fm10k: Fix fall-through warnings
 for Clang
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
Cc: netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In preparation to enable -Wimplicit-fallthrough for Clang, fix multiple
warnings by explicitly adding a couple of break statements instead of
just letting the code fall through to the next case.

Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/intel/fm10k/fm10k_mbx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
index 8e2e92bf3cd4..3e970e20695d 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
@@ -1039,6 +1039,7 @@ static s32 fm10k_mbx_create_reply(struct fm10k_hw *hw,
 	case FM10K_STATE_CLOSED:
 		/* generate new header based on data */
 		fm10k_mbx_create_disconnect_hdr(mbx);
+		break;
 	default:
 		break;
 	}
@@ -2017,6 +2018,7 @@ static s32 fm10k_sm_mbx_process_reset(struct fm10k_hw *hw,
 	case FM10K_STATE_CONNECT:
 		/* Update remote value to match local value */
 		mbx->remote = mbx->local;
+		break;
 	default:
 		break;
 	}
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
