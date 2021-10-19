Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5953F43367A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 14:59:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D996F606A6;
	Tue, 19 Oct 2021 12:59:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iIMcJJGrh44Q; Tue, 19 Oct 2021 12:59:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE419607BA;
	Tue, 19 Oct 2021 12:59:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4FC331BF39C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 01:42:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B20583C06
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 01:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgwhEYKH0yP9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 01:42:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 759E783BFF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 01:42:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 41B2C61260;
 Tue, 19 Oct 2021 01:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634607738;
 bh=D7YEQastTxFQdKRaYpytIqKQ/4otb+9xuoq/+a0xTe8=;
 h=From:To:Cc:Subject:Date:From;
 b=Q1vHyVjPA1YYlW/kk/Au08uMtZBfDh7TNX69DFvVdRf1xD0GS1vp3Oi9sy5fivxYj
 r5JrbeMLvihQ+uygHe8teqas18pTG0utLYcc+I7xgnlb2Wf4VO3WcpyONxS8N7Tbf4
 XDC1P44EmhjMkN0GAcpQLAa0G1cF/3FRCqh8sAvvKab+E3DbeQnVOW52mEKr7Vfj+1
 THhKyJTKesrfOEpOb9vZ/UmaqqgYfHC4xLwJmWhsdu2ssEvO9eoFBSjhCGdn7s16Dg
 IEYfImJoHV/Z8swOgD7zG9LOVN69KhavBUJtNXTCCWUlMzJ9BBMV3TItaED+Dab/Fz
 O+wHEroE2revA==
From: Nathan Chancellor <nathan@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Mon, 18 Oct 2021 18:42:03 -0700
Message-Id: <20211019014203.1926130-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.1.637.gf443b226ca
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Mailman-Approved-At: Tue, 19 Oct 2021 12:59:10 +0000
Subject: [Intel-wired-lan] [PATCH] ice: Fix clang -Wimplicit-fallthrough in
 ice_pull_qvec_from_rc()
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
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Clang warns:

drivers/net/ethernet/intel/ice/ice_lib.c:1906:2: error: unannotated fall-through between switch labels [-Werror,-Wimplicit-fallthrough]
        default:
        ^
drivers/net/ethernet/intel/ice/ice_lib.c:1906:2: note: insert 'break;' to avoid fall-through
        default:
        ^
        break;
1 error generated.

Clang is a little more pedantic than GCC, which does not warn when
falling through to a case that is just break or return. Clang's version
is more in line with the kernel's own stance in deprecated.rst, which
states that all switch/case blocks must end in either break,
fallthrough, continue, goto, or return. Add the missing break to silence
the warning.

Link: https://github.com/ClangBuiltLinux/linux/issues/1482
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f981e77f72ad..03443c060507 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1903,6 +1903,7 @@ static struct ice_q_vector *ice_pull_qvec_from_rc(struct ice_ring_container *rc)
 	case ICE_TX_CONTAINER:
 		if (rc->tx_ring)
 			return rc->tx_ring->q_vector;
+		break;
 	default:
 		break;
 	}

base-commit: 939a6567f976efb8b3e6d601ce35eb56b17babd0
-- 
2.33.1.637.gf443b226ca

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
