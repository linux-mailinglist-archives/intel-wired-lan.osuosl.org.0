Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7994C8679AD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 16:12:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F85340802;
	Mon, 26 Feb 2024 15:12:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4hxWbHtxUqe5; Mon, 26 Feb 2024 15:12:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7657C402CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708960332;
	bh=5WVe7vsMe9lR2qfwwmPRKfxZe0asgb4zn2pd+IxD4So=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EGvutpOw2ocirxWzOelTxP26tQqD1enEbcaopleC8vGVMTpKC+t6pSztxkJHNpVu1
	 R5cFxOf7S5iUta4OnAIC2vBgh4ki4riYElo0kJPuVZpt45IYqDVBGqkouEv0Xz0aeb
	 UM19hCax87SwkE35T27PgUTCl8vZgJqs3fB4UlP85UPWYbSEBLiFlKljQBCGq4NO5k
	 D+kkhGd8PcqDDLQTKfnJCh+HyKvdPTzGqdXnV4wHyJ4hy8M8DICHVuGjZWwJhZe9+J
	 cZpwE3fpc0ugKglGf8FPxLrK9vOpudIIY4qGf6+e1W7bBxNFsp/7Tl/DH8rGSwWNTV
	 mHYW6bXs8iKqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7657C402CA;
	Mon, 26 Feb 2024 15:12:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D0691BF328
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 15:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DFD9D81EE1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 15:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pky7rQ_Yerx7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 15:12:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 143A281EED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 143A281EED
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 143A281EED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 15:12:03 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-652-FC2-jptIMoWCyTqRidptVA-1; Mon, 26 Feb 2024 10:11:59 -0500
X-MC-Unique: FC2-jptIMoWCyTqRidptVA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89754881C82;
 Mon, 26 Feb 2024 15:11:58 +0000 (UTC)
Received: from toolbox.redhat.com (unknown [10.45.226.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C84DA492BC7;
 Mon, 26 Feb 2024 15:11:56 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 26 Feb 2024 16:11:25 +0100
Message-ID: <20240226151125.45391-4-mschmidt@redhat.com>
In-Reply-To: <20240226151125.45391-1-mschmidt@redhat.com>
References: <20240226151125.45391-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1708960322;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5WVe7vsMe9lR2qfwwmPRKfxZe0asgb4zn2pd+IxD4So=;
 b=aOlIGYXBWmb0y9wjWH8vRUENv3FDG82SQU73JqNaeXErQWpnItgYfxNxeh5WNrh/gi1cle
 Mhibn0BaogWc4d93JWWdSCNBD0RMiQTZq7CtuGOZ2cxCNCK2J+Euh6aEDWXJz4ZDdbzhd6
 0LP6wVWS6h40+q44BLoS3nsitMb430I=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=aOlIGYXB
Subject: [Intel-wired-lan] [PATCH net-next 3/3] ice: fold ice_ptp_read_time
 into ice_ptp_gettimex64
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a cleanup. It is unnecessary to have this function just to call
another function.

Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 25 +++---------------------
 1 file changed, 3 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index b6c7246245c6..cb061966cc9e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1166,26 +1166,6 @@ static void ice_ptp_reset_cached_phctime(struct ice_pf *pf)
 	ice_ptp_mark_tx_tracker_stale(&pf->ptp.port.tx);
 }
 
-/**
- * ice_ptp_read_time - Read the time from the device
- * @pf: Board private structure
- * @ts: timespec structure to hold the current time value
- * @sts: Optional parameter for holding a pair of system timestamps from
- *       the system clock. Will be ignored if NULL is given.
- *
- * This function reads the source clock registers and stores them in a timespec.
- * However, since the registers are 64 bits of nanoseconds, we must convert the
- * result to a timespec before we can return.
- */
-static void
-ice_ptp_read_time(struct ice_pf *pf, struct timespec64 *ts,
-		  struct ptp_system_timestamp *sts)
-{
-	u64 time_ns = ice_ptp_read_src_clk_reg(pf, sts);
-
-	*ts = ns_to_timespec64(time_ns);
-}
-
 /**
  * ice_ptp_write_init - Set PHC time to provided value
  * @pf: Board private structure
@@ -1926,9 +1906,10 @@ ice_ptp_gettimex64(struct ptp_clock_info *info, struct timespec64 *ts,
 		   struct ptp_system_timestamp *sts)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
+	u64 time_ns;
 
-	ice_ptp_read_time(pf, ts, sts);
-
+	time_ns = ice_ptp_read_src_clk_reg(pf, sts);
+	*ts = ns_to_timespec64(time_ns);
 	return 0;
 }
 
-- 
2.43.2

