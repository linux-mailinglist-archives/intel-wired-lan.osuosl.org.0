Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7F197D9EE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2024 22:02:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE3F740217;
	Fri, 20 Sep 2024 20:02:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MQceVnMw9ii8; Fri, 20 Sep 2024 20:02:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B49AD402E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726862527;
	bh=ao/DYvra/X7+HKiIGMpHSnD9nuI6QNLpI7/E5DQ3GQc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fqYJ6ur33M43ftlLwSUHsYKM4K94H32pqCiPrW/FyT3Qxj37p1EukgdYE2l+rEEbB
	 7/1SvGUi6riyq0wyU1kqG79a7MtteJHLMCkfQq+ZHywHA4BJs57MWqwmmDTxA2gg22
	 SvYTdest8K7f020e77TNoWeDAwoCuRYAPUb4UGsj7qSqyI8fLsgQPagt/xxWMtxN8C
	 pPS9zy3ycch2th2yC526eS4KSPaEh1NVraT0fD78W4HUGBxuLGPnJaBPp8Z+o4YkTm
	 /AZDDA1Ev6uHmIZVyQH9gL2JHLm8XBGFA98hpMkDRXHITFQA6VwwPYCZGOaBHIEzUt
	 Fxmsy15n7GnNA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B49AD402E3;
	Fri, 20 Sep 2024 20:02:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F9681BF275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 18:59:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 49E8E4028C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 18:59:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VIddwhdeSQQV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2024 18:59:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wander@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 618D7400E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 618D7400E5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 618D7400E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2024 18:59:53 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-549-tazn4dD-Nyyiw5N8Uomz6A-1; Fri,
 20 Sep 2024 14:59:49 -0400
X-MC-Unique: tazn4dD-Nyyiw5N8Uomz6A-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (unknown
 [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 96565192DE07; Fri, 20 Sep 2024 18:59:47 +0000 (UTC)
Received: from wcosta-thinkpadt14gen4.rmtbr.csb (unknown [10.22.33.41])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 4EF6019560AA; Fri, 20 Sep 2024 18:59:42 +0000 (UTC)
From: Wander Lairson Costa <wander@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Fri, 20 Sep 2024 15:59:15 -0300
Message-ID: <20240920185918.616302-1-wander@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Approved-At: Fri, 20 Sep 2024 20:02:05 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1726858792;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ao/DYvra/X7+HKiIGMpHSnD9nuI6QNLpI7/E5DQ3GQc=;
 b=Ij9pAvjDesGr9wqgldJht5d7cPGYh5oTAM6Kmbq36wkbGXLMvT57+pk+mgqWU9N+3saoY/
 sRDskEKb3zyG4haRz0PEqJw6gtNOu33AnmyhVCsiWJZCimAdhYBcxDg1uuQla5odcRL4RP
 W+YyWUcVGXYLaPJ969oe9i197R2rhyw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Ij9pAvjD
Subject: [Intel-wired-lan] [PATCH 0/2] Fixes in igbvf driver
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
Cc: Wander Lairson Costa <wander@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The first patch fixes a bug manifested manifested in the igbvf driver
when interrupting handling for the igb driver delays.

The second is just a cleanup for igbvf.

Wander Lairson Costa (2):
  igb: Disable threaded IRQ for igb_msix_other
  igbvf: remove unused spinlock

 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 drivers/net/ethernet/intel/igbvf/igbvf.h  | 3 ---
 drivers/net/ethernet/intel/igbvf/netdev.c | 3 ---
 3 files changed, 1 insertion(+), 7 deletions(-)

-- 
2.46.1

