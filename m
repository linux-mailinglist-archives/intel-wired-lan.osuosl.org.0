Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C43C6CC9572
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 20:00:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D98E0610D4;
	Wed, 17 Dec 2025 19:00:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3hUvyHfAac_f; Wed, 17 Dec 2025 19:00:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 626D2610C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765998022;
	bh=lfGk7+oVfvLYko0BsDkxGdiAvj1TWHX4wJkqB0V3lQ4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vJAh7qf/Adx63ONKs5N6IMKBSRUJ/dWd4pJ5Y38n97SBpyPcvPSBeCNgfswN+iebt
	 AGH8M9pH9dbmokBb1I4c5efW9jnYLtFWcDMZnkKKE89OQMYTfq0VvASTK/oufU371B
	 ca0KZkyW3WQGWMUTnzXxgi/Vp3M7Cp/CdvAdwdZni9Qpj8nY5+EeZrD4aKshj6xNdV
	 JbPeP5knpT7tRMS2K8/5X3gt7YklpyJx9kL+vtQvYoOpv/cPQ7ldQtTKOWcqPLGx+O
	 iEY6mHms0RyTUfty4fMU2/o5DA5xjAXAoGIYgx7RQW5rG1f2tmwdP/zLL8rIzsQ9vb
	 vBy0erBhIzDTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 626D2610C7;
	Wed, 17 Dec 2025 19:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CBCC261
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 19:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8383A40F46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 19:00:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ByZlcahTOWDr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 19:00:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6392540497
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6392540497
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6392540497
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 19:00:18 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-457-f5Rlj4zsOFqtTbtk-WGIsg-1; Wed, 17 Dec 2025 14:00:16 -0500
X-MC-Unique: f5Rlj4zsOFqtTbtk-WGIsg-1
X-Mimecast-MFC-AGG-ID: f5Rlj4zsOFqtTbtk-WGIsg_1765998015
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-477a1e2b372so60228695e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 11:00:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765998015; x=1766602815;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lfGk7+oVfvLYko0BsDkxGdiAvj1TWHX4wJkqB0V3lQ4=;
 b=J9IowMGKX+2BLrfGrEzkerCbpwF5sN5MgP9MbPt6rJuo68qizESenA/j/P3hIZRLq5
 Ux++4j7Lu2TOm3Sfkn9dWAqq59W7oHFCNHCUsPcRjNoZzfk3D3F/RrYF4I2j0vB9JfFk
 m6aKIR3sPb2RSy5RQCfUYLI93IfNfwLP/JZ13okRMr/o8SJbyXnAed5lUtgFPfBZcMW8
 aJF3Yzs8vC3o9dXEmER/cjUiwYeYAEt1D0Bz6B8x3gKFEmZvIhC9i7B4epxE8kITNoyv
 vm9hfGgT3EfyYNY3dF1EXdgFiVLhsLAg/qMmcW2ydJgApkcrBjc9xP9dZ2+vDGSslbOr
 6GZQ==
X-Gm-Message-State: AOJu0YyUHxQ7HDz7uCopLk1PNHAe+I/DrwHv7q9W5ABm7elHaxUi1LbF
 C0Q53SF6vgLpOJnIcefQ6yXyPOBN9lM5N+hUZHS+ls7YA2gv2UqwJTl7Sltbu6DqpQN68sshXtm
 AQEPB+Mioi3xgTZGfxZB/TqrP5Fmd8KvDdz9qxTd7zbDQmpaoyF5twa/UOlitcrMZfPXme2hCyg
 wTyobTY0H0Cf9sA1CTenobsjHe0d+YBtt8Ofnkvzp+g7QVQOkZmXw=
X-Gm-Gg: AY/fxX4IDFlkbmQZllKUUF7ycXkB/s6dzqVOuby+UxPrTNGEKa2vYMhiCAXfUl4TuGx
 5P4asZVWMXHORjcxztoNKaV+Qwc+OAQou6mcHTxNLMXIp0Nbf1WhHb+IcjKz4Osq2UuSBZlW5QN
 r1Zf7Ac8LF4tr/7uSlcuwbwCnDE1dhkNDlinv2cTvn9Ddht/fAkL0uYkCXGR5beF8y+LgJldswM
 hcrhZbDKslVzlp4utn4o74no1jxYGMv4F9u9OgmKwcOz/x5XCUH0whfL5FnspxBncgVeYn0xxdq
 Ihu+fSUXYR955uA9+DRmpufQLFBHM6dGxO/Hxauk0XTugYz0AQSLnohvBdPhEVaoUfek+EzGTHP
 LWB6Mx/SKEkc82bg3Beaqvw==
X-Received: by 2002:a05:600c:3b84:b0:477:b0b9:3129 with SMTP id
 5b1f17b1804b1-47a8f89babcmr208612045e9.3.1765998014813; 
 Wed, 17 Dec 2025 11:00:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFu44GbYRGIduy2dloYuDSn8G1tvEdfmWy81SKIKbPB+oe9uJ1A88Mup8nlb7/yoPxURaa1Tw==
X-Received: by 2002:a05:600c:3b84:b0:477:b0b9:3129 with SMTP id
 5b1f17b1804b1-47a8f89babcmr208611655e9.3.1765998014394; 
 Wed, 17 Dec 2025 11:00:14 -0800 (PST)
Received: from fedora.redhat.com ([216.128.14.80])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47be2723d19sm7782105e9.2.2025.12.17.11.00.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Dec 2025 11:00:14 -0800 (PST)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, aduyck@mirantis.com, kuba@kernel.org,
 netdev@vger.kernel.org, jacob.e.keller@intel.com,
 Mohammad Heib <mheib@redhat.com>
Date: Wed, 17 Dec 2025 20:59:50 +0200
Message-ID: <20251217185951.82341-1-mheib@redhat.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: pz3vj9IbcNpf35Le7tGRSRIlaiSyGv8gmqgb7MvNSSQ_1765998015
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765998017;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=lfGk7+oVfvLYko0BsDkxGdiAvj1TWHX4wJkqB0V3lQ4=;
 b=dgiPLhrJoEVQ0hVoEa/kpmH2tOJ6xwDawzdNnrrrvDg9BOLiPbiR+u7DP1rknQkio/EFZM
 LI7bdDXTENcrCvCXw46Zetzg0hUFfHzE8hlpQie6+lrYtZymP9c3J9oadQ0iVnOvUIippI
 0BzkMcmYAVcPTsWc8x8gpske1Sz43G8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=dgiPLhrJ
Subject: [Intel-wired-lan] [PATCH net 1/2] i40e: drop
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

Remove the redundant and unsafe call to i40e_open() to resolve the
locking violation.

Fixes: 06a5f7f167c5 ("i40e: Move all UDP port notifiers to single function")
Signed-off-by: Mohammad Heib <mheib@redhat.com>
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

