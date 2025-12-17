Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9C1CC9578
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 20:00:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BD9040F5A;
	Wed, 17 Dec 2025 19:00:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JtZ_ACg2c_Kj; Wed, 17 Dec 2025 19:00:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 150C440F51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765998026;
	bh=AhYDK86DuWSEE7JgmhksefkOFbDEKuL8YwnjpwwufSA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lJG5Dg9wMlQB2/77iF7f40FRAYYjJOL57XaLC4BES9mz/cz7/S/YIcVu0phsKmxkE
	 hbQOiorY/SsaAdG3zZvZdb+IRjMHllbC9mGMQ27qiml9lNETb2cX+Tjh++fBs/3Jhi
	 UPELeZWIArf6WsViaFEods5UB2BirlLrjLYWnKvpNGf+p8sl0QjPxos9J0cECbFQJb
	 c3UbV9bQIorHbdKEb7i/I3hfoZgXMR0kkykZzHL+kQGaYM6fAtFPWvs2bWSVL7T44B
	 w6CU/2EMmBLrVkGNcC8YH07T9bkhncvvzrXan5i7GjSLh995+B2F15WkfOU9NJJoy0
	 sSHmNlPpXuYnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 150C440F51;
	Wed, 17 Dec 2025 19:00:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AE22261
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 19:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5883983C6B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 19:00:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G13rfyQWsg-f for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 19:00:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 330EE83C63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 330EE83C63
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 330EE83C63
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 19:00:22 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-298-ZCoWKfE0Mdq9iXSTjbCohA-1; Wed, 17 Dec 2025 14:00:20 -0500
X-MC-Unique: ZCoWKfE0Mdq9iXSTjbCohA-1
X-Mimecast-MFC-AGG-ID: ZCoWKfE0Mdq9iXSTjbCohA_1765998019
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-477771366cbso42256415e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 11:00:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765998019; x=1766602819;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=AhYDK86DuWSEE7JgmhksefkOFbDEKuL8YwnjpwwufSA=;
 b=XR8EHdxtopRTEHE1jgkzj9UQ2FhhZk01lpAz0coRL54rv8bipLhHVLNboyAWX795kk
 geJHFalOE7T8EiyrzzemETVrDQENm/EednpTMjUbZ4d/ZI+lSYfB/mnqYC5tH0Ju+93u
 6bc3adaWqo/rNrLZ8/mhisxVJ7hxxmeJ3zTDCkGKadOarOeNRmMglIA0gojx4cS6leBx
 rRJ6pRk7E2ACy39eDbEAhtTfUosHdjm7NGShB7ixQFrc0YOVB34NO0umgShwfGqU/AYb
 Y3xt0vitkOJ5irQGsIehhRuRDwRGSWWma4lXlsEVs12vQBRGWRmGArn9N9rFDiWCRkil
 DnkQ==
X-Gm-Message-State: AOJu0Ywd0w2CnLSDA/AaI8XoipXJmclakmezl014YI/ctetfGCsCtU50
 JS5NtTamq1wlXEGYSuCHjeZZy8eF1MO9HflGP5GXcVJmwwTRdUoZnLUQNExbTA3rqgpFOJFjRfy
 nr4g14bBC+G9XrQ2MHJf2G2ZmU+W3nCMnpt55BhNCmCRwTI5RVkNo8OF1GrCsordeCKhH8N7y5p
 pz6QS5BgfyNrOn1pF3tLRCwQ0kaNdaIaTrCUHeIqPYKHIfXCQvTSc=
X-Gm-Gg: AY/fxX7Y7XCaASAnDpKKrfBS2ksbLcSHiZB4uhK0/HOniNT1WC7SlPodiSJe5zXYUZI
 jdpqC5rMS4MtlsqCAlYaXorqXnV7xZohVtZeF+vay9QNxf4Y5pKnQIE5q0UtOsulbFIO1XhiCi/
 /kEtukMV7xAdnbeIuCRIt34KoPnPrUEF7wHqibVQNg+cIoGOTGI3gg2d9FMg4h0gn/9Na56z00F
 3f9pITOWQY7HfSpSOyYoLmdFNu3W0qE/o7Jm/BLhicEgiCNngNEDZZgXM4FMbKgSwzselaiPb7k
 rzDVbeBz/BWceCOEPrx+BD1uCpVEyRZ8xsKXWmhVJuG8CnB9alHfhOmxpAHMAH7aD6GLj+/rAf/
 VvgFE6uV3AKUnQY864+vMSQ==
X-Received: by 2002:a05:600c:1c2a:b0:477:6d96:b3c8 with SMTP id
 5b1f17b1804b1-47a8f905313mr209064645e9.23.1765998018998; 
 Wed, 17 Dec 2025 11:00:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsZN+tAEw+K3Kn5UGDn9/s6CoBzkm/8OUw3hbNVQOUbAyPedrBp7TFbhiYDnOhq8MNoPTfZg==
X-Received: by 2002:a05:600c:1c2a:b0:477:6d96:b3c8 with SMTP id
 5b1f17b1804b1-47a8f905313mr209064325e9.23.1765998018584; 
 Wed, 17 Dec 2025 11:00:18 -0800 (PST)
Received: from fedora.redhat.com ([216.128.14.80])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47be2723d19sm7782105e9.2.2025.12.17.11.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Dec 2025 11:00:18 -0800 (PST)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, aduyck@mirantis.com, kuba@kernel.org,
 netdev@vger.kernel.org, jacob.e.keller@intel.com,
 Mohammad Heib <mheib@redhat.com>
Date: Wed, 17 Dec 2025 20:59:51 +0200
Message-ID: <20251217185951.82341-2-mheib@redhat.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251217185951.82341-1-mheib@redhat.com>
References: <20251217185951.82341-1-mheib@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: I47MPVy5Xost5OQ6p3xEZXfXfxr8dVncPLxF07hca3Y_1765998019
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765998022;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AhYDK86DuWSEE7JgmhksefkOFbDEKuL8YwnjpwwufSA=;
 b=gMAo79IF/WTtwFGfGWCukF6JqprCY4yegxSzdvgM0T/hsCw8wULGZL/8wI6XNzYQD6SNwk
 /5Vr7f+is2+lCO8g+K5xFPr+oNx+HdP5TRBIp+yZRIpYmGVPu11CNp97Uf3u3B6qLConwK
 eSqcEvhd8ABtI2lgJ3SyYJMxZSE7qJk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=gMAo79IF
Subject: [Intel-wired-lan] [PATCH net 2/2] ice: drop
 udp_tunnel_get_rx_info() call from ndo_open()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mohammad Heib <mheib@redhat.com>

The ice driver calls udp_tunnel_get_rx_info() during ice_open_internal().
This is redundant because UDP tunnel RX offload state is preserved
across device down/up cycles. The udp_tunnel core handles
synchronization automatically when required.

Furthermore, recent changes in the udp_tunnel infrastructure require
querying RX info while holding the udp_tunnel lock. Calling it
directly from the ndo_open path violates this requirement,
triggering the lockdep warning.

Remove the redundant and unsafe call to ice_open_internal() to resolve the
locking violation.

Fixes: a4e82a81f573 ("ice: Add support for tunnel offloads")
Signed-off-by: Mohammad Heib <mheib@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2533876f1a2f..1f94bdcbbba9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -9633,9 +9633,6 @@ int ice_open_internal(struct net_device *netdev)
 		netdev_err(netdev, "Failed to open VSI 0x%04X on switch 0x%04X\n",
 			   vsi->vsi_num, vsi->vsw->sw_id);
 
-	/* Update existing tunnels information */
-	udp_tunnel_get_rx_info(netdev);
-
 	return err;
 }
 
-- 
2.52.0

