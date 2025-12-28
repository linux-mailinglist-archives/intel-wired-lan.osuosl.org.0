Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A79BACE569A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Dec 2025 20:41:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D49AC809A2;
	Sun, 28 Dec 2025 19:41:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LHuabCI5vhKw; Sun, 28 Dec 2025 19:41:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CC478097A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766950869;
	bh=tgpPqPLmdsUsSPtNtkW8ABI8hPv+o/LIVKkz7BOGUxY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=b77uUajtngDNt8s3F5gInPlPO2OriuvzTIYYQ+xHO3WV+z/Yo/viiatZmUocRYqrf
	 3/5JnPROqCaSiHDia41WQvHouduLwvivvOaYHSRoPVn2khDMwKVDK7czmOwd9p04l4
	 t+zsnX0bKY4b1XqBuhxihg/w9vHv/W1eXqJQXVVHmuPTb44sFk07xFbRAQ/49rEF9K
	 7r3Hc3KccIFZwydpFoi1s9lrIMepHh8bX1L7ZPUphGM+13O28N1w1AzpvEM62xKKGB
	 cw+spoOxHvxXGx0noNJIrz4wNRKM8qQWEnfcsAA6GxJvq3Lw6HHGP0INGcNGme3OBf
	 NYQ86eJiTi2NA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CC478097A;
	Sun, 28 Dec 2025 19:41:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F9741E1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 19:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0856540083
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 19:41:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f8jZ4EtrzURj for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Dec 2025 19:41:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DE61740072
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE61740072
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE61740072
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 19:41:06 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-107-FbPq93HpMl-ZopQxo7oTdQ-1; Sun, 28 Dec 2025 14:41:03 -0500
X-MC-Unique: FbPq93HpMl-ZopQxo7oTdQ-1
X-Mimecast-MFC-AGG-ID: FbPq93HpMl-ZopQxo7oTdQ_1766950862
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-4310062d97bso4465171f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 11:41:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766950862; x=1767555662;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tgpPqPLmdsUsSPtNtkW8ABI8hPv+o/LIVKkz7BOGUxY=;
 b=umfdg0n5uBy7cB++Gmmz0Eu27K88GIAfl9ZH+/oDzW0+nLysBG/2WIroOfRvXpYg8G
 5wUAlPMZHSPkC86/eucSBPBdP6LWwaKl3miB+pZfkdUr3wYonba1csPQ2NxRNRR/B9Uf
 sdZHAlCEDPlCreQNuDwdkWlusSfUTIe5n9rxykqX7Szb3Ig0QdAjO9nxYHknl3IU3wKg
 IM+SREoxt6289Fy8egGUU/xZoq0m/P1qugAqCkn3Ubgf3jPQjpOzJGSe2W5LpQBN7Fdu
 7IcqJH6jQa/cGE5hLcGGZIxoFMmORLQNCPvLdTFcGni1zcaN0B+GL37aIGi5T6qJpaxr
 Q0yw==
X-Gm-Message-State: AOJu0YzSthmg1EqrsPbIplVW8Vs4usMmlpEpGypVe74XH27jI0zKWxOp
 t0pOq75B9BEjEOcdzuY5JQo+ZKfq9CR823eKH4T158abISgk7UlTyTmvbWE4WyAaumMa3GaqaaG
 wWp3BD/t36KK6ejg1Xt5CgPZdiWCIGfUDoQdfD+kuTtxiSco1A1NvULHVuEMIE4PVF0ey7U4bHs
 uMpg7hQ2N/MR+oBROIrohZhYVZoGiV4AKdq9ktAUdu/8yLyaTXgfQ=
X-Gm-Gg: AY/fxX4FtNhH9wTfxksl+Ulq/J0D8CANrOE+ejXqJDwkhM1hWP3x48rahbtLxqQJ9AF
 IUAHTDzZd9N7MZrz8i1NPwJ9GJJDiXZfqhZPlTFcJWbUwDBdEo5s6Fib/YKpANVGmnnOHL47XmY
 p/ixd+Wv7CWeDR1tBPVun39NOmYTLxrMTt4ku0rCHreQ9cqNjYJjUC6OfeUu8HH1n0Lnk5uIqRz
 NNEHUdJpeRBZ38aZMbMLmnAgydHdc2XmwpNxONkm7gQjV+TRg35ZEcK24fz/+HtWOOB5oNQGTjY
 W6anpwxVoEj2BmQ6nGO+J2kNaezevr1VUv8hFBxYHrniDdOR13lCf97Mf2GmR5Ao2J1FR4L4Wge
 Qo3sDxyi5moNZHhp10LDaZw==
X-Received: by 2002:a05:6000:430a:b0:42f:9f18:8f59 with SMTP id
 ffacd0b85a97d-4324e50b471mr35307080f8f.42.1766950861791; 
 Sun, 28 Dec 2025 11:41:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFN0f/djG7K7w/HXLKoMoes4sa8eQvqL8fgjyIBeFFkOHGllELBBbk0GskntGEXjDDsTCwySA==
X-Received: by 2002:a05:6000:430a:b0:42f:9f18:8f59 with SMTP id
 ffacd0b85a97d-4324e50b471mr35307056f8f.42.1766950861377; 
 Sun, 28 Dec 2025 11:41:01 -0800 (PST)
Received: from fedora.redhat.com ([216.128.14.64])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4327791d2f3sm25324182f8f.11.2025.12.28.11.40.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Dec 2025 11:41:01 -0800 (PST)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, aduyck@mirantis.com, kuba@kernel.org,
 netdev@vger.kernel.org, jacob.e.keller@intel.com, pabeni@redhat.com,
 Mohammad Heib <mheib@redhat.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Sun, 28 Dec 2025 21:40:20 +0200
Message-ID: <20251228194021.48781-1-mheib@redhat.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8PAXS0eIOMPX3pYVKuDfb1pm_PCVtZIpHs9qP7RU8Z4_1766950862
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1766950865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=tgpPqPLmdsUsSPtNtkW8ABI8hPv+o/LIVKkz7BOGUxY=;
 b=deQVJByGCNFMm5+C6Ikkp+jL0VD1OGq1R6PYb5tqUzaPXmQYll2qSAt3n7aE1zN6+iswoG
 0vqY6h3gwNcRxHeC62gstGmPlmbaPUdLc09oYViSq+uHlDYA9rBQZmcLHJOP1KfzBMiq1b
 c8nRITaI5BDZrdSmAIVWGfvA/xt5l4w=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=deQVJByG
Subject: [Intel-wired-lan] [PATCH net v3 1/2] i40e: drop
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

Fixes: 1ead7501094c ("udp_tunnel: remove rtnl_lock dependency")
Signed-off-by: Mohammad Heib <mheib@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 0b1cc0481027..d3bc3207054f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -9030,7 +9030,6 @@ int i40e_open(struct net_device *netdev)
 						       TCP_FLAG_FIN |
 						       TCP_FLAG_CWR) >> 16);
 	wr32(&pf->hw, I40E_GLLAN_TSOMSK_L, be32_to_cpu(TCP_FLAG_CWR) >> 16);
-	udp_tunnel_get_rx_info(netdev);
 
 	return 0;
 }
-- 
2.52.0

