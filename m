Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8760905740
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 17:46:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A62080EBA;
	Wed, 12 Jun 2024 15:46:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VuGOrQnX5xs9; Wed, 12 Jun 2024 15:46:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D3CC80EA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718207192;
	bh=uRTS/1/7k9uLEpm4344Kh+NF7Wq4enN7raNJbrOkX2M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PQTLaZMTGGrhnsAgLCJC09KDqmecDH5Rpi0D8dUm6v+BBHB+Ruso9m34FKaIXHKH9
	 RyJ7wy1oRgvhfOCRSlSC9DTaUlCg2W03Mt5fozQcm2iZUPoQNmRF5Scc0I4fBWz+Uv
	 AGJy0/lwuPgxkINg+BpRLboNh8DR9zR1ghXetG+7/LYKAgzUCpYGjm5zLtN3zroWWt
	 k/75CcWH7a74X09m6MSRnZGowvLtW6Ky56e9Wqjybk0snjBnRVuemLqtKwPYcwQKF4
	 iWehFVkXa+N7jgQHCPv1cPugXGPxN2mP04+7OzkUcuu33nTULctLQtE+GJ0OSbEtHr
	 3BMtRTWLIKiHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D3CC80EA6;
	Wed, 12 Jun 2024 15:46:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 867C21BF36D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 15:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D19640278
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 15:46:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HoCc02nbd8ZF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 15:46:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0629B40173
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0629B40173
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0629B40173
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 15:46:27 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-577-_9fc-zS9MAK-KGZGOqqDpA-1; Wed,
 12 Jun 2024 11:46:22 -0400
X-MC-Unique: _9fc-zS9MAK-KGZGOqqDpA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E5D2C195606B; Wed, 12 Jun 2024 15:46:16 +0000 (UTC)
Received: from swamp.brq.redhat.com (unknown [10.43.3.192])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 60C4619560AA; Wed, 12 Jun 2024 15:46:12 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 12 Jun 2024 17:46:06 +0200
Message-ID: <20240612154607.131914-1-poros@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1718207186;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=uRTS/1/7k9uLEpm4344Kh+NF7Wq4enN7raNJbrOkX2M=;
 b=TOvtwgiC9FHHnKR/1m2LdAc8zb5y8SPiYpWFyQdcyNvHwIsYWJ4udOtGCRNHMUqKigvcHm
 Gr1iiLB7OP/h9nOpnIxMxANjCwt4oWwD8lUsJfOIucIq7kBs2MJD/9NphXKZNeP1STYrWf
 q6TCeRavG/mx+aE32AM7LRtggGNr0Bs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=TOvtwgiC
Subject: [Intel-wired-lan] [PATCH] ice: use proper macro for testing bit
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
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Konrad Knitter <konrad.knitter@intel.com>, Eric Joyner <eric.joyner@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Marcin Domagala <marcinx.domagala@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do not use _test_bit() macro for testing bit. The proper macro for this
is one without underline.

Fixes: 4da71a77fc3b ("ice: read internal temperature sensor")
Signed-off-by: Petr Oros <poros@redhat.com>
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

