Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D566DED6C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 10:20:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DD7F614DC;
	Wed, 12 Apr 2023 08:20:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DD7F614DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681287601;
	bh=eQwLfndX7JipRlTY4Wz+SCzqSyC65rUu46w7hMgjfiQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uDXIT7T7djguSKhYxzDrk52rvbyJgzCV12FR7Fpt8t6avcayeHfx6HG5XdrhyVIbR
	 V0Qc6Gr2pUik9fU4aOcIMhqh6H1Nq33r4sZekneiGVG2LVPfmltkaZWxY/1T7orzOf
	 9RUtzltsHCikU5In+CqirGwbq3/cTZtNtxMfSm/PoNauMIjiSGSL17RAgSbTOknCJa
	 uWT1zfOejpKZwthKmeNjd/PWtae4pIwq2rtSYwYMbR54nVef8B+KGC27QcM9achmMs
	 vXB/u0sRxheLm901xnLVxuf6AQyM4j+y5H5krNcYkWna8jtJy9gbKzau6LYZ2vS8pe
	 y0Fx8hV8G5TLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZBAjWOoCYoJt; Wed, 12 Apr 2023 08:20:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C10B6140E;
	Wed, 12 Apr 2023 08:20:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C10B6140E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DAFD41BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE44440939
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:19:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE44440939
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lW93SOZ77kGa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 08:19:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C35CF416F5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C35CF416F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 08:19:53 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-9-vikeAygTOGiBbHvyVpg8RA-1; Wed, 12 Apr 2023 04:19:48 -0400
X-MC-Unique: vikeAygTOGiBbHvyVpg8RA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE6843C0F187;
 Wed, 12 Apr 2023 08:19:47 +0000 (UTC)
Received: from toolbox.infra.bos2.lab (ovpn-192-9.brq.redhat.com [10.40.192.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F2C441415117;
 Wed, 12 Apr 2023 08:19:45 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Apr 2023 10:19:23 +0200
Message-Id: <20230412081929.173220-1-mschmidt@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681287591;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=oJ0AvAxU8YiIt1rkYJGTfQA8ueLL73KkTt4yrMJFcSA=;
 b=K+9K1oHwqndA+DxrTi5ChcP1i2xbCJRgsoQLToMwnT10pbNgu3AWr5VRewZrabFV1xUBje
 x7KgUwY5+MdJ+CI+i5jN2qgiDSz5amP4/JbOc3b++m+G4RzKht7qcaIIu8AwWckpFbdxrY
 YDWqnJNIpKrVo3MKodqELZ2Bx2DW5oo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=K+9K1oHw
Subject: [Intel-wired-lan] [PATCH net-next v2 0/6] ice: lower CPU usage with
 GNSS
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series lowers the CPU usage of the ice driver when using its
provided /dev/gnss*.

v2:
 - Changed subject of patch 1. Requested by Andrew Lunn.
 - Added patch 2 to change the polling interval as recommended by Intel.
 - Added patch 3 to remove sq_cmd_timeout as suggested by Simon Horman.

Michal Schmidt (6):
  ice: do not busy-wait to read GNSS data
  ice: increase the GNSS data polling interval to 20 ms
  ice: remove ice_ctl_q_info::sq_cmd_timeout
  ice: sleep, don't busy-wait, for ICE_CTL_Q_SQ_CMD_TIMEOUT
  ice: remove unused buffer copy code in ice_sq_send_cmd_retry()
  ice: sleep, don't busy-wait, in the SQ send retry loop

 drivers/net/ethernet/intel/ice/ice_common.c   | 29 +++++--------
 drivers/net/ethernet/intel/ice/ice_controlq.c | 12 +++---
 drivers/net/ethernet/intel/ice/ice_controlq.h |  3 +-
 drivers/net/ethernet/intel/ice/ice_gnss.c     | 42 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_gnss.h     |  3 +-
 5 files changed, 36 insertions(+), 53 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
