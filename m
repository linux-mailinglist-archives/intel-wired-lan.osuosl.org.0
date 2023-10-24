Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC7F7D5048
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 14:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A763883E43;
	Tue, 24 Oct 2023 12:51:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A763883E43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698151883;
	bh=h/xpCGUaEKX+ehccCcu1gBzbi1QtpTXzGGzsfwmXUUI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NKGqe3aI3X3U8J+JmTbGQw/oH3BPGOu5fMySN6EopTGMHqORXW2iBBVkbCpVjcb8F
	 TrDyyQy0CwVaInpA26W6cPJxbCbCECpQdDX4whc+ai/OQhh2xaVMi/2oOxG6bJQQ9p
	 oPMnohSFLAanapSSz+rDmqs+7NwHSTjpnex9bzxWMEIiGscNaXXIlaGJRSBJ/Tz4Z5
	 LoJYW0cBchEldRiZj1c87Pcz6oHDUVw8Rkl55XdKTh5lT42G5LyrkZEI4lw9+XvNAN
	 VuEclobinHlFM7UMcQtu8rVeV0IubPq/BDvYL9CS7n3KuxAcSrMedGscm0ASsmWA7w
	 mVE9iFsBrSvmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PuXdG1KjxuzX; Tue, 24 Oct 2023 12:51:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6354C83E80;
	Tue, 24 Oct 2023 12:51:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6354C83E80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5721BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:51:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7663742D62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7663742D62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CKHykNC2ZRuM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 12:51:16 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A246B42D40
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:51:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A246B42D40
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-tXnH1RsiM6Clwt0Q6F78EA-1; Tue, 24 Oct 2023 08:51:12 -0400
X-MC-Unique: tXnH1RsiM6Clwt0Q6F78EA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E336088CC4D;
 Tue, 24 Oct 2023 12:51:11 +0000 (UTC)
Received: from p1.luc.com (unknown [10.43.2.183])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6DC568C0A;
 Tue, 24 Oct 2023 12:51:10 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 24 Oct 2023 14:51:08 +0200
Message-ID: <20231024125109.844045-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698151875;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Q8xEvrw5kPl+Kn6m0vz2m9HYGcHh0NovL+ylnmM6Mjc=;
 b=Weyi/WnqS+Z4wvL/yFnI1FAM9WvyNhE8wlPUpNWdLLHtS8mZ2Uf4R/4NMI3qzCzYMVVQQN
 wGn2sUZsOq+ack5P7QnAala0FS76NxjiHUSxCyl7vGfEWeSc5rMfnnOF1mJp1tkOHDMrT0
 1C1PU5UkVOCAP2Q1+vs3+xe6M0fQO2s=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Weyi/Wnq
Subject: [Intel-wired-lan] [PATCH net-next 1/2] i40e: Do not call
 devlink_port_type_clear()
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do not call devlink_port_type_clear() prior devlink port unregister
and let devlink core to take care about it.

Reproducer:
[root@host ~]# rmmod i40e
[ 4539.964699] i40e 0000:02:00.0: devlink port type for port 0 cleared without a software interface reference, device type not supported by the kernel?
[ 4540.319811] i40e 0000:02:00.1: devlink port type for port 1 cleared without a software interface reference, device type not supported by the kernel?

Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_devlink.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
index 74bc111b4849..cc4e9e2addb7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
@@ -231,6 +231,5 @@ int i40e_devlink_create_port(struct i40e_pf *pf)
  **/
 void i40e_devlink_destroy_port(struct i40e_pf *pf)
 {
-	devlink_port_type_clear(&pf->devlink_port);
 	devlink_port_unregister(&pf->devlink_port);
 }
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
