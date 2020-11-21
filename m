Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5ED2BBB2F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:45:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AB538765A;
	Sat, 21 Nov 2020 00:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ezO4FqIoNPRX; Sat, 21 Nov 2020 00:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F28887652;
	Sat, 21 Nov 2020 00:45:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5169C1BF9CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D357868B5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kzwOwXaiWpdI for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C9B9486E7A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:45:33 +0000 (UTC)
IronPort-SDR: wUG0k4G8aS34tSWJ0DyrNtkP/xa7oAeBIIElT2/HwMT+8Ryw9ommW7ULucHsc3BGpSzGPzW8zU
 yXJssc/Bf3Mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="170782301"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="170782301"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:45:33 -0800
IronPort-SDR: mOnWLLXJBB32JERE1DACb2nBn5HbgC1dQZbQDt+RGl8Fy14c1FZxwSoqUzhPSvtHVttGjwo4zw
 FEonRaws0nSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="369396467"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga007.jf.intel.com with ESMTP; 20 Nov 2020 16:45:29 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:38:31 -0800
Message-Id: <20201121003835.48424-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
References: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 2/6] ice: Implement flow for IPv6 next
 header (extension header)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Nick Nunley <nicholas.d.nunley@intel.com>

This patch is based on a similar change to i40e by Slawomir Laba:
"i40e: Implement flow for IPv6 next header (extension header)".

When a packet contains an IPv6 header with next header which is
an extension header and not a protocol one, the kernel function
skb_transport_header called with such sk_buff will return a
pointer to the extension header and not to the TCP one.

The above explained call caused a problem with packet processing
for skb with encapsulation for tunnel with ICE_TX_CTX_EIPT_IPV6.
The extension header was not skipped at all.

The ipv6_skip_exthdr function does check if next header of the IPV6
header is an extension header and doesn't modify the l4_proto pointer
if it points to a protocol header value so its safe to omit the
comparison of exthdr and l4.hdr pointers. The ipv6_skip_exthdr can
return value -1. This means that the skipping process failed
and there is something wrong with the packet so it will be dropped.

Fixes: a4e82a81f573 ("ice: Add support for tunnel offloads")
Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index d2493fa71336..a6793147dc00 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1922,12 +1922,15 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 				  ICE_TX_CTX_EIPT_IPV4_NO_CSUM;
 			l4_proto = ip.v4->protocol;
 		} else if (first->tx_flags & ICE_TX_FLAGS_IPV6) {
+			int ret;
+
 			tunnel |= ICE_TX_CTX_EIPT_IPV6;
 			exthdr = ip.hdr + sizeof(*ip.v6);
 			l4_proto = ip.v6->nexthdr;
-			if (l4.hdr != exthdr)
-				ipv6_skip_exthdr(skb, exthdr - skb->data,
-						 &l4_proto, &frag_off);
+			ret = ipv6_skip_exthdr(skb, exthdr - skb->data,
+					       &l4_proto, &frag_off);
+			if (ret < 0)
+				return -1;
 		}
 
 		/* define outer transport */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
