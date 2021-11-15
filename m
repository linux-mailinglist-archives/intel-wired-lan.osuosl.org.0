Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF04451579
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Nov 2021 21:36:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09BA4403A3;
	Mon, 15 Nov 2021 20:36:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j3nmI8DWc-PC; Mon, 15 Nov 2021 20:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC9FA40192;
	Mon, 15 Nov 2021 20:36:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6563F1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 20:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5308D80CDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 20:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b6lIa98Z2YGp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Nov 2021 20:36:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23BFE80CCD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 20:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637008593;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=bPYUh0OhJjU9fdv3+7WdB7aWrvMxAgiWAI1AFl3R1/s=;
 b=R7KIyeCUvU5zgdwAtkvnserEnCr+2pJzAKYjSbQeHYPgquE0E0mMyn9xRtJ5FzhrxE19ZL
 ZsiE/TfsHY2/LuIRYg5139rNNs2JEC+utAVwrlmwd12XOMgqE3aEyknxbmE4PzRWCQDdyU
 Up1lfV3HqNZomHt4a0QxQmpsruQZ4IM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-464-tMhi55ZAPPub8i3exNJDhA-1; Mon, 15 Nov 2021 15:36:30 -0500
X-MC-Unique: tMhi55ZAPPub8i3exNJDhA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 541758799EF;
 Mon, 15 Nov 2021 20:36:28 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.40.208.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 49A705F4E1;
 Mon, 15 Nov 2021 20:36:22 +0000 (UTC)
Received: from [192.168.42.3] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id BE3CE30027803;
 Mon, 15 Nov 2021 21:36:20 +0100 (CET)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>, netdev@vger.kernel.org
Date: Mon, 15 Nov 2021 21:36:20 +0100
Message-ID: <163700856423.565980.10162564921347693758.stgit@firesoul>
User-Agent: StGit/0.19
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: [Intel-wired-lan] [PATCH net-next 0/2] igc: driver change to
 support XDP metadata
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
Cc: intel-wired-lan@lists.osuosl.org, bjorn@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changes to fix and enable XDP metadata to a specific Intel driver igc.
Tested with hardware i225 that uses driver igc, while testing AF_XDP
access to metadata area.

---

Jesper Dangaard Brouer (2):
      igc: AF_XDP zero-copy metadata adjust breaks SKBs on XDP_PASS
      igc: enable XDP metadata in driver


 drivers/net/ethernet/intel/igc/igc_main.c |   33 +++++++++++++++++++----------
 1 file changed, 22 insertions(+), 11 deletions(-)

--

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
