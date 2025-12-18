Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 736D4CCBBF1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 13:13:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94C6F81702;
	Thu, 18 Dec 2025 12:13:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8cKj-dg36ud4; Thu, 18 Dec 2025 12:13:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13128816DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766060032;
	bh=KcC8708HWzanGRdv3W76eR6gK5ZwOXyZ4c+NmrctZH4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4FtT7zMGnnXXJslZgoejoJVd3Q3N5A0TMHxZNOELAqNuMFx4wuuXQGQzfMS2AMza8
	 kyCEPLah55gBWXwYDT9FhiRbhSnF2z8AIARgkwdtp74ofkBqf6mY3bZRPycmIkZKm2
	 NHLBvOMSB2VWZR1+jUA8VNWzTQSDxUDb5oBtvXfoLHIhkiWKgYans/jLsk8RtQxOng
	 eOtDfISpfJiuyymYV2X6O7tZS0gthPJkdNjbz4AWf6Z6GO2s4xYDSM5zbSLd64e/1/
	 VyDMxyfcQVu5e+YCzCEi/HXEX/jjSp7aGflML3fqCHR1FZa7fC3fHsgAn1cY7ZpThy
	 e8BB8EhJND/PA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13128816DB;
	Thu, 18 Dec 2025 12:13:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 524AE2A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 12:13:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43E1E60C0F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 12:13:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Mojm9P78GgN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 12:13:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 289F360BD2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 289F360BD2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 289F360BD2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 12:13:48 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-43-qkpcn0eqO7ewrLhLvo3Y4g-1; Thu, 18 Dec 2025 07:13:45 -0500
X-MC-Unique: qkpcn0eqO7ewrLhLvo3Y4g-1
X-Mimecast-MFC-AGG-ID: qkpcn0eqO7ewrLhLvo3Y4g_1766060025
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-4776079ada3so4427195e9.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 04:13:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766060024; x=1766664824;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=KcC8708HWzanGRdv3W76eR6gK5ZwOXyZ4c+NmrctZH4=;
 b=n82+P29mWEWr3EsnBrzRXjimBJlHExjbmAaOYVRy3GLUTlGQS0eadoQmOvg0s8tWNb
 EdfUn9lm5Bp6Prl4KdHESoICvurcNj4y5bD9u5Yff6naL6X+9Icyq2hsnQ3EMUm3N0Gx
 L3vbCBM3MV5suvIqf7fN5Ph/RDWF/GkS3UeNe4NHpWu1Nb+jAkbglfMDJJUTT8npq2wF
 MmGhEgT7gIKQQg/Ijzn6XEQ/PnHABJ1rKHSYPOtwuQz7jwXR1xNtZ1Pb+eMt8n3r1k22
 1/cFUUV/EAuuIkd3dBtZvfyL0Er9h0eBIAeREVNexjUgbkWs4tps4AE0uwzxZRHY/eIn
 UcRA==
X-Gm-Message-State: AOJu0YzjgOX/ET9mhaXs/LypFvbVJ50aChmI0MfnDYcLyQZl4MO5k01I
 ARPpKt3hFwQGcsxyQ9DFNFveHjfByMVo9SLz0juQVrdDXZQgePRLgbwpNkghzD3UBGwuvzh2O1t
 R7n0T6QNeCCtObxfT0jYWK3olRNMwHm8yQ+C82rZaibzZQbf/PzFgTHPiR2TSfMJUatiE4gFiEm
 iLR8webI9O3GxiqTD3h7MCAourwc4FxT0LOw74BptEURbw4hEuShM=
X-Gm-Gg: AY/fxX4T3veMrW2Tss2312hCbI9fBBehym4F5iUvUogBIxyPlA41YSH5KW0BzE8VoyG
 NmzvmuH5WjIUCRtmBt0t4W8N6Q6KECFvvHbDZc2MdQuijjgdWoXx2vK4/bJFjBEHBnuw9J9k3Hq
 ICEsEJ4/kJzLiB11BSDK7uwWAfK7xsmc5qVkD10b/R6ueDtAPHwTFxsT3FDbSSovyf7qiXFlc2S
 6AtWacDANtF3sUbB440THpj49o9c6VXJzAUmRGscNWd/9d37pL5CZZACfRkmPATimd9Ev9JWRp9
 EbAzFAPyTHmVyaK+LKVCbYO5wASxIGmu3NeK/yha8V0Wh2oUUOL2XNcXDIQ9BH+41px1cGdUlXa
 8Lu/sTXE7ElgszFQTn9IzGA==
X-Received: by 2002:a05:600c:4f09:b0:477:fad:acd9 with SMTP id
 5b1f17b1804b1-47a8f916685mr192993945e9.34.1766060024509; 
 Thu, 18 Dec 2025 04:13:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSjzigBljqVHxrq2NFftERN7thLI7BKGOWw3WfBzVAkcGIWXhr7Dc5D9WQa5nOHuam1MNyEA==
X-Received: by 2002:a05:600c:4f09:b0:477:fad:acd9 with SMTP id
 5b1f17b1804b1-47a8f916685mr192993515e9.34.1766060024012; 
 Thu, 18 Dec 2025 04:13:44 -0800 (PST)
Received: from fedora.redhat.com ([216.128.14.80])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43244949ba6sm4736776f8f.19.2025.12.18.04.13.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Dec 2025 04:13:42 -0800 (PST)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, aduyck@mirantis.com, kuba@kernel.org,
 netdev@vger.kernel.org, jacob.e.keller@intel.com,
 Mohammad Heib <mheib@redhat.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 18 Dec 2025 14:13:22 +0200
Message-ID: <20251218121322.154014-2-mheib@redhat.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251218121322.154014-1-mheib@redhat.com>
References: <20251218121322.154014-1-mheib@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: UtuMLP6Zr3EClf29Lc2i3_1wH2BLGyZgv-DgyOI7Wg4_1766060025
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1766060027;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KcC8708HWzanGRdv3W76eR6gK5ZwOXyZ4c+NmrctZH4=;
 b=SqQ6De3RI8SN/JiSC8z0ze5naz4BA6EK6wNQvMuizdEbVrLP+C2kaBRlWwgmRXJu6ysWso
 KgpYqiFeniSU5IhfoVHGyFxr3+aKFuk06oPPNvCVkRZSc6jq9IT00QYkvQcd7tgBFVWJPG
 toVhS0PnCo5pZS3UEL6Cr3Qkq3Tv7fo=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=SqQ6De3R
Subject: [Intel-wired-lan] [PATCH net v2 2/2] ice: drop
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
triggering the following lockdep warning:

Call Trace:
  <TASK>
  ice_open_internal+0x253/0x350 [ice]
  __udp_tunnel_nic_assert_locked+0x86/0xb0 [udp_tunnel]
  __dev_open+0x2f5/0x880
  __dev_change_flags+0x44c/0x660
  netif_change_flags+0x80/0x160
  devinet_ioctl+0xd21/0x15f0
  inet_ioctl+0x311/0x350
  sock_ioctl+0x114/0x220
  __x64_sys_ioctl+0x131/0x1a0
  ...
  </TASK>

Remove the redundant and unsafe call to udp_tunnel_get_rx_info() from
ice_open_internal() to resolve the locking violation

Fixes: a4e82a81f573 ("ice: Add support for tunnel offloads")
Signed-off-by: Mohammad Heib <mheib@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
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

