Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5EB4BB82
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2019 16:30:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F1D687B0E;
	Wed, 19 Jun 2019 14:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3KXyIHQUWQBX; Wed, 19 Jun 2019 14:30:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4098287B20;
	Wed, 19 Jun 2019 14:30:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16AB51BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 14:30:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 128E8811DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 14:30:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLESM9EuHbJW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 14:30:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16D01811D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 14:30:50 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hdbbp-0005sO-5S; Wed, 19 Jun 2019 14:30:45 +0000
From: Colin King <colin.king@canonical.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S . Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Date: Wed, 19 Jun 2019 15:30:44 +0100
Message-Id: <20190619143044.10259-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH][net-next] iavf: fix dereference of null
 rx_buffer pointer
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Colin Ian King <colin.king@canonical.com>

A recent commit efa14c3985828d ("iavf: allow null RX descriptors") added
a null pointer sanity check on rx_buffer, however, rx_buffer is being
dereferenced before that check, which implies a null pointer dereference
bug can potentially occur.  Fix this by only dereferencing rx_buffer
until after the null pointer check.

Addresses-Coverity: ("Dereference before null check")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 1cde1601bc32..0cca1b589b56 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1296,7 +1296,7 @@ static struct sk_buff *iavf_construct_skb(struct iavf_ring *rx_ring,
 					  struct iavf_rx_buffer *rx_buffer,
 					  unsigned int size)
 {
-	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
+	void *va;
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = iavf_rx_pg_size(rx_ring) / 2;
 #else
@@ -1308,6 +1308,7 @@ static struct sk_buff *iavf_construct_skb(struct iavf_ring *rx_ring,
 	if (!rx_buffer)
 		return NULL;
 	/* prefetch first cache line of first page */
+	va = page_address(rx_buffer->page) + rx_buffer->page_offset;
 	prefetch(va);
 #if L1_CACHE_BYTES < 128
 	prefetch(va + L1_CACHE_BYTES);
@@ -1362,7 +1363,7 @@ static struct sk_buff *iavf_build_skb(struct iavf_ring *rx_ring,
 				      struct iavf_rx_buffer *rx_buffer,
 				      unsigned int size)
 {
-	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
+	void *va;
 #if (PAGE_SIZE < 8192)
 	unsigned int truesize = iavf_rx_pg_size(rx_ring) / 2;
 #else
@@ -1374,6 +1375,7 @@ static struct sk_buff *iavf_build_skb(struct iavf_ring *rx_ring,
 	if (!rx_buffer)
 		return NULL;
 	/* prefetch first cache line of first page */
+	va = page_address(rx_buffer->page) + rx_buffer->page_offset;
 	prefetch(va);
 #if L1_CACHE_BYTES < 128
 	prefetch(va + L1_CACHE_BYTES);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
