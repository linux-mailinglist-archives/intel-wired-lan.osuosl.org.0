Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0167D1868C6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2020 11:16:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5C4E8565B;
	Mon, 16 Mar 2020 10:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CgevMz9-eMgK; Mon, 16 Mar 2020 10:16:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE2A787B4E;
	Mon, 16 Mar 2020 10:16:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0F1E1BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 10:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CCFAD899A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 10:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9lJ5yR2ZoBe5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2020 10:16:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 027EC898ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 10:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584353810;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=fhlaLu41fKjyJCaBA5i8hSKMaPVLJFPaihSlC46nwKY=;
 b=I9fNFTooQZYQaea++rICWpF0JiwZ3LbX/2xK3epbGQ9lGuGA0X0DjZsFSj4WOETS1wXIyA
 wl71ixcB0C29NC7oN8hRdzzTF65ka4D0s0+2QXuohWFd2sfb/B2RBZUG4Ro6OZSIRAYIY7
 wGhAIIu0LEfc+lVO1Ne9kV2QQreIySE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-440-AePaLJR-PCK92IBJf6eNrg-1; Mon, 16 Mar 2020 06:16:46 -0400
X-MC-Unique: AePaLJR-PCK92IBJf6eNrg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C0D7477;
 Mon, 16 Mar 2020 10:16:45 +0000 (UTC)
Received: from [192.168.122.1] (ovpn-200-32.brq.redhat.com [10.40.200.32])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4389F972D3;
 Mon, 16 Mar 2020 10:16:39 +0000 (UTC)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>, netdev@vger.kernel.org
Date: Mon, 16 Mar 2020 11:16:38 +0100
Message-ID: <158435379870.2479973.8293720099992666964.stgit@carbon>
User-Agent: StGit/0.19
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-wired-lan] [PATCH net-next] i40e: trivial fixup of comments
 in i40e_xsk.c
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
Cc: =?utf-8?b?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The comment above i40e_run_xdp_zc() was clearly copy-pasted from
function i40e_xsk_umem_setup, which is just above.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 0b7d29192b2c..30dfb0d3d185 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -184,8 +184,6 @@ int i40e_xsk_umem_setup(struct i40e_vsi *vsi, struct xdp_umem *umem,
  * @rx_ring: Rx ring
  * @xdp: xdp_buff used as input to the XDP program
  *
- * This function enables or disables a UMEM to a certain ring.
- *
  * Returns any of I40E_XDP_{PASS, CONSUMED, TX, REDIR}
  **/
 static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
@@ -474,7 +472,7 @@ void i40e_zca_free(struct zero_copy_allocator *alloc, unsigned long handle)
 }
 
 /**
- * i40e_construct_skb_zc - Create skbufff from zero-copy Rx buffer
+ * i40e_construct_skb_zc - Create skbuff from zero-copy Rx buffer
  * @rx_ring: Rx ring
  * @bi: Rx buffer
  * @xdp: xdp_buff


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
