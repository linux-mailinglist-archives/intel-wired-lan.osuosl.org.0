Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C497D501D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 14:43:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72533848DD;
	Tue, 24 Oct 2023 12:43:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72533848DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698151398;
	bh=h/xpCGUaEKX+ehccCcu1gBzbi1QtpTXzGGzsfwmXUUI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PigCcCTCE02KxaKplknPNmN4wjsxUyb3C8aGv9WO7GJI3kazikS2CQpX5MZlqmIWn
	 468/cj63KZFuX+uaEhqCSXbyIzyNY9UepGPR8wZMuj17fB1J41aMJmng2D10ScN9Ow
	 AW3RG+oCdi4UOVtzOVsGd6QUm+Cg7xNjkfB6M9/0O/37ar3/i7jpLuUoNoo2xVA7Yv
	 nGodMtuvQfdOkdl2en+OOKQaxUf/ygeo+2hREOzIpEL5GN5vdz0OfF2h/ctQsaxUeu
	 xqaWE8eHsFymjCuhbLYvKWglmFViNHjQZNzaI1u//w7H8+F9Iwinp5JSMPRtPBZC1D
	 ZEy03FG5CbEfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jcPuegLlIZaU; Tue, 24 Oct 2023 12:43:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66639848CE;
	Tue, 24 Oct 2023 12:43:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66639848CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3ABD1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB21242EDC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:43:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB21242EDC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mCnMcP9S3Z6c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 12:43:12 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D98D542ED8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 12:43:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D98D542ED8
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-664-8snoKRPkNl-P2UWdzztT7A-1; Tue, 24 Oct 2023 08:42:50 -0400
X-MC-Unique: 8snoKRPkNl-P2UWdzztT7A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA90B85C1A5;
 Tue, 24 Oct 2023 12:42:49 +0000 (UTC)
Received: from p1.luc.com (unknown [10.43.2.183])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 239342166B26;
 Tue, 24 Oct 2023 12:42:48 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 24 Oct 2023 14:42:44 +0200
Message-ID: <20231024124245.837908-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698151390;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=Q8xEvrw5kPl+Kn6m0vz2m9HYGcHh0NovL+ylnmM6Mjc=;
 b=UUgBu+QHfHfZo63zSexlWsg4+W3mb0xs7lBiexH50ZG7ASN2jeqgPaGnSNlgGMm9PpQgHk
 1M3sE9ktVE3F+mL7m18XJ/OT5UOkYd/Yp8g92nMG39DIwiLsH8mQIrT/oU3GQo/o2UCpCy
 jTwuAPTSiAASwNAoV5cKrPgUeLDKTWY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UUgBu+QH
Subject: [Intel-wired-lan] [PATCH 1/2] i40e: Do not call
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
