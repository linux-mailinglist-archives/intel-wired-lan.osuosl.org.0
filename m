Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC76B9087C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 11:44:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CB2641481;
	Fri, 14 Jun 2024 09:44:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fq8D8o72tJPl; Fri, 14 Jun 2024 09:44:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FFB04056F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718358241;
	bh=MfqTN/CbY1HyFIhalUL/iKeJVM9fDG1FDPUMa7yrEEo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3hYE6oNnYGbBCi2ZXNMDqbfP7DKadrBxVc/kNMjke4FD3azGTDXAnPZB6u/LZzfKT
	 cmwemWHIMhf5un/3iz6js7xVgxely35RRTleeG5m8KGOHyDAjk10205arGt3xAsUei
	 SySQjeCVO7rZ+IQGklYVSfu9+xB8HlHxJX0D0LNwP1xghSJX+272275V4LjKdZurOy
	 d9PkqzbrQsZZFTtawj1ZhimpB9S4tbTy9v1pZbq/6lHXpHCel6/pFcVLmsoFEOE+FA
	 0sgQutJCb9KxSUf7sXdmeZlDXmMDnDtBFc70YSk3H6ZX3yWvLuHybydXiCZPZr83bC
	 U0nvZ4bDBcb2g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6FFB04056F;
	Fri, 14 Jun 2024 09:44:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3529F1BF331
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 09:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2103140269
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 09:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yk039_YEPbQk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 09:43:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 36B0A40267
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36B0A40267
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36B0A40267
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 09:43:56 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-314-ZQfYF44uPSqh_GPFT--fjA-1; Fri,
 14 Jun 2024 05:43:51 -0400
X-MC-Unique: ZQfYF44uPSqh_GPFT--fjA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5FF941956086; Fri, 14 Jun 2024 09:43:49 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.224.22])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 07AFC1955E91; Fri, 14 Jun 2024 09:43:44 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 14 Jun 2024 11:43:38 +0200
Message-ID: <20240614094338.467052-1-poros@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1718358235;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=MfqTN/CbY1HyFIhalUL/iKeJVM9fDG1FDPUMa7yrEEo=;
 b=OTFhVD5XvMG538y+AcC6eshdzNQstLANFeIQGpwYVw5FOkHMcwhaPSNgJGdv+3rcBTmZa7
 uV0+k3qgo3xUTWluSON5m6jRG0KBV+ECZ4aGMzLEu2ZC0hLZKWSjCjXXLOWCQ4cvNfc+0P
 VzM+SCREyllZ4IcjCd5zZf/q2VfPr38=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=OTFhVD5X
Subject: [Intel-wired-lan] [PATCH net v2] ice: use proper macro for testing
 bit
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
Cc: ivecera@redhat.com, Eric Dumazet <edumazet@google.com>,
 przemyslaw.kitszel@intel.com, Konrad Knitter <konrad.knitter@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Marcin Domagala <marcinx.domagala@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do not use _test_bit() macro for testing bit. The proper macro for this
is one without underline.

Fixes: 4da71a77fc3b ("ice: read internal temperature sensor")
Signed-off-by: Petr Oros <poros@redhat.com>
Acked-by: Ivan Vecera <ivecera@redhat.com>
---
Changes for v2:
- added target tree
---
 drivers/net/ethernet/intel/ice/ice_hwmon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_hwmon.c b/drivers/net/ethernet/intel/ice/ice_hwmon.c
index e4c2c1bff6c086..b7aa6812510a4f 100644
--- a/drivers/net/ethernet/intel/ice/ice_hwmon.c
+++ b/drivers/net/ethernet/intel/ice/ice_hwmon.c
@@ -96,7 +96,7 @@ static bool ice_is_internal_reading_supported(struct ice_pf *pf)
 
 	unsigned long sensors = pf->hw.dev_caps.supported_sensors;
 
-	return _test_bit(ICE_SENSOR_SUPPORT_E810_INT_TEMP_BIT, &sensors);
+	return test_bit(ICE_SENSOR_SUPPORT_E810_INT_TEMP_BIT, &sensors);
 };
 
 void ice_hwmon_init(struct ice_pf *pf)
-- 
2.44.2

