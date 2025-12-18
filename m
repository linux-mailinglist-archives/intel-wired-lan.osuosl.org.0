Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B618CCBBF4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 13:14:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DA3B40FFB;
	Thu, 18 Dec 2025 12:13:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tcC-nyRrHUwz; Thu, 18 Dec 2025 12:13:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FF4140FFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766060038;
	bh=cVewZK5xu+ugU2Wd3i3iaoqWcPOVatkqKNFF+c28jHw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=c5E/AcJErQu+Sg06/rlKIo0Jrqmsbp3qir5j4cwXMIknaFBYVS1cW1Slo3HTzmLdz
	 +cxvQfxrmmrR9CXHqHBo7corwXDK37G7zPcIPEL7Iu0h6DbsB7YQ0SmGsBQKeY8sGR
	 fsjVMpHtNH0WCC9kxLr/HR+u6SGT9iHibK4BG6cmOMcTu/uhEvoj2WetfVH9Qb0NXT
	 CCOnkOGzbHA0fOQEMGYVlzVrwNaEfvYXXGU+WcqG6fdZqbo7PWcJaZmWZzI5W0kGQK
	 KWsd9gEEODfwZCk3sKhOXHXsHyOMhZdfPXiw1YCJ158PPI3fu5TT5IWEzwOkDwaQB/
	 Uefp2ovB4i8rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FF4140FFE;
	Thu, 18 Dec 2025 12:13:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4374B2A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 12:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A17D40FFB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 12:13:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VVc5P9LKEdJQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 12:13:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0BC0540F44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BC0540F44
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0BC0540F44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 12:13:55 +0000 (UTC)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-124-nDGGpP_-PKOqTLJBKY15fg-1; Thu, 18 Dec 2025 07:13:45 -0500
X-MC-Unique: nDGGpP_-PKOqTLJBKY15fg-1
X-Mimecast-MFC-AGG-ID: nDGGpP_-PKOqTLJBKY15fg_1766060022
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-430f79b8d4dso429609f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 04:13:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766060022; x=1766664822;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cVewZK5xu+ugU2Wd3i3iaoqWcPOVatkqKNFF+c28jHw=;
 b=WP2RDQoNMiFrf3/tj/oPbjshsuYHXseYIQA91eAvxy8qpm21XblADDn5foxGnSZuqa
 Ux4s+XbxjIIunetlVMytGPlwYNO7/pZ44C//RVh55m8vsGaSu6d7U/doSq52FML1A9M2
 zg2Lnu2YdIez5/AMEcHi5FMGf8ExJqqypBPUW70RdVLSxaPHz2FtJqbialxoF2nyF6g9
 +JmrFI0i6O5NwTsXtJ+rHKSN9VBlPbB3W26Iy04p83VOzsA7dFqUh96SGgs2tSJrHS5X
 ZYrxMJl/IweIQ7mdgP5iK1UatNIPQ/7atFMFhpO8YLLITHoHVaE7rBHi2JD2qflrOOyL
 nLJg==
X-Gm-Message-State: AOJu0YyUMjCSxqb+ZRuzPZCdZVgM7uI1C1B+n5orRHlpbENIqWFeGlY/
 R7Mc+eHoFjPt0/7TccxIPl/3cbyktfbX7bARP+YszCm19IfYi87P420eFSn0JGiyNlBLhahiJOd
 dnYxw6iosVwFT1+cZkkKmmWzkKWYvwtXpdm/GK0CatTTRMTDnQ74jYsahdTifdr97NOwWXmC2jM
 vk1AhhRwwVWZweVAzrKEpZC3LnldNgZCCUVfqg/U8bch3ZJ3xCfqY=
X-Gm-Gg: AY/fxX5PSrcCN8u2do8w4/tmCiG1rUK1/GTi6HZVroPnokdi2/ObNy859qEDCnNhPEi
 jaBYB4MFt/PDrGkYVKG+PGF5UlGcqQSFYoNHOGWYKazFdJ1KISoJLHGgOSN6+M8owlfZ4TF0vN5
 bgj0vor5INbr6LKD6zCCNezJnUCHRTZ1tYq6GBFGUj7+q2umq7cCPG+ldoMoMZ3g0N6dAX7RQf3
 2r8EdlWlPnjGGq6XCG5Cdx2SUazeERCWAvsZvXJY+vDJ3DquoGCkgY8ds67mU+K3L7sxw+GXPCa
 vDKBaTRQuUQI8zUF1Zd/E6AWcfo1JPUvXZNL31h2LodWGVKRNq/u/J10VusmG68Kqmi1nwyMTpH
 X9KfqcQt/4XwTCx6Nn3ailA==
X-Received: by 2002:a05:6000:1a8d:b0:430:f742:fbb8 with SMTP id
 ffacd0b85a97d-430f742fd90mr15115286f8f.21.1766060019950; 
 Thu, 18 Dec 2025 04:13:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH27kkLq+A8uY2cwCBat1PJ84Xqlcq0VaH2VgsIUe2PvmJU+4FaQRSQFmIkqVWZn7sETosQcQ==
X-Received: by 2002:a05:6000:1a8d:b0:430:f742:fbb8 with SMTP id
 ffacd0b85a97d-430f742fd90mr15115247f8f.21.1766060019422; 
 Thu, 18 Dec 2025 04:13:39 -0800 (PST)
Received: from fedora.redhat.com ([216.128.14.80])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43244949ba6sm4736776f8f.19.2025.12.18.04.13.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Dec 2025 04:13:39 -0800 (PST)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, aduyck@mirantis.com, kuba@kernel.org,
 netdev@vger.kernel.org, jacob.e.keller@intel.com,
 Mohammad Heib <mheib@redhat.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 18 Dec 2025 14:13:21 +0200
Message-ID: <20251218121322.154014-1-mheib@redhat.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: atq5HKyYiVurJqE-n2f_Afql3aB6h35lTG2XraLS-Vg_1766060022
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1766060034;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=cVewZK5xu+ugU2Wd3i3iaoqWcPOVatkqKNFF+c28jHw=;
 b=b73ZLWTlhnstXqNjaf8AZrTwusX813D++Aw81igw7f1ghnLO0tLFrQLWeq7B3la41qWiPj
 gBL/YIGoF36kjsibnI+q73BKq+SdKmkwJRw3LXIJqIu0vz6A4jneVg+UoYKyfYpekh9ogN
 FtX7V6LnsZezMq1xiU9PUa/njW82fR4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=b73ZLWTl
Subject: [Intel-wired-lan] [PATCH net v2 1/2] i40e: drop
 udp_tunnel_get_rx_info() call from i40e_open()
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

The i40e driver calls udp_tunnel_get_rx_info() during i40e_open().
This is redundant because UDP tunnel RX offload state is preserved
across device down/up cycles. The udp_tunnel core handles
synchronization automatically when required.

Furthermore, recent changes in the udp_tunnel infrastructure require
querying RX info while holding the udp_tunnel lock. Calling it
directly from the ndo_open path violates this requirement,
triggering the following lockdep warning:

  Call Trace:
   <TASK>
   ? __udp_tunnel_nic_assert_locked+0x39/0x40 [udp_tunnel]
   i40e_open+0x135/0x14f [i40e]
   __dev_open+0x121/0x2e0
   __dev_change_flags+0x227/0x270
   dev_change_flags+0x3d/0xb0
   devinet_ioctl+0x56f/0x860
   sock_do_ioctl+0x7b/0x130
   __x64_sys_ioctl+0x91/0xd0
   do_syscall_64+0x90/0x170
   ...
   </TASK>

Remove the redundant and unsafe call to udp_tunnel_get_rx_info() from
i40e_open() resolve the locking violation.

Fixes: 06a5f7f167c5 ("i40e: Move all UDP port notifiers to single function")
Signed-off-by: Mohammad Heib <mheib@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 50be0a60ae13..72358a34438b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -9029,7 +9029,6 @@ int i40e_open(struct net_device *netdev)
 						       TCP_FLAG_FIN |
 						       TCP_FLAG_CWR) >> 16);
 	wr32(&pf->hw, I40E_GLLAN_TSOMSK_L, be32_to_cpu(TCP_FLAG_CWR) >> 16);
-	udp_tunnel_get_rx_info(netdev);
 
 	return 0;
 }
-- 
2.52.0

