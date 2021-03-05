Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A9832E549
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Mar 2021 10:51:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 931436FB6C;
	Fri,  5 Mar 2021 09:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q_CL659O_7Eu; Fri,  5 Mar 2021 09:51:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BD6E6F526;
	Fri,  5 Mar 2021 09:51:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 851941BF294
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 09:51:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7FDB143150
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 09:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bb3GlAxJWPNo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Mar 2021 09:51:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B84F943095
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 09:51:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CEA8064FE8;
 Fri,  5 Mar 2021 09:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614937874;
 bh=NeHeQJmUla3vmR7XyOy4O+i4tOPT/mQV3ZB26CkYB+k=;
 h=Date:From:To:Cc:Subject:From;
 b=jEYSdslz67T2R6ea1N5zqE2LhoHiz/UA8GWmRRLo7ssGD+mJFgFdn2CcLyTk/IBNI
 ftxb0GWclDUwmavpOwJY7bgkcqlK5o843aKsnmbxRNITMQfrfGUlUT0g5ATcbF2yn3
 jF6hAHti5maoI949Y03oEzi2h6rB513HsDJEfRWbLdVnQ3F4YVx0XJLfK6U91aQTV1
 ddyG3V6disHPgXmI5czbc6qp2ArYzaLXnh0eHgu/uPN/Gpn5WC0S44RnBzbRwaN7V/
 eIF+qQmd3c8SesYpKvUZLjEm7/0RXcvESDSvuZ8L80fLWg02NBBAn8RDBL41jGBXsv
 T560eE0nrUXBw==
Date: Fri, 5 Mar 2021 03:51:11 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210305095111.GA141480@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH RESEND][next] e1000: Fix fall-through
 warnings for Clang
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

In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
by explicitly adding a break statement instead of just letting the code
fall through to the next case.

Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/intel/e1000/e1000_hw.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index 4c0c9433bd60..19cf36360933 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -1183,6 +1183,7 @@ static s32 e1000_copper_link_igp_setup(struct e1000_hw *hw)
 			break;
 		case e1000_ms_auto:
 			phy_data &= ~CR_1000T_MS_ENABLE;
+			break;
 		default:
 			break;
 		}
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
