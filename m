Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B34E99D901
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 23:30:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A037480FBA;
	Mon, 14 Oct 2024 21:30:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gdIeu7yTMqKp; Mon, 14 Oct 2024 21:30:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E53E480FF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728941432;
	bh=WRZU25b73L4NPLcELjGuUGCIZi289xNDkjLoT7pzYSU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LEiBSILqoepv7l3OSMC/M2v8JLO96JVOHC6IlT2b6ZTuU/cusUl8O7FcDL9wn/PsA
	 gNxKVho6alFXIhqfa2wx63PAhLfuKtxhQFYX6t8NOFX/lmrDaMkl3ES1vwcylTyQbO
	 9wjCh7Vvt9/K7pAmIHfsn3VdbHJrmy9vs32PQqxskg/f3nSH7+DNBmvaVaSyHXmobX
	 mu6pDN/NgYlC/aviBLPKtucnI2eT2b5D5E9M1K/LmY5uceOGqAFLk/3772n9OEmu+2
	 YOhv6e5+0PoLPvWVg5zlv5t4EiJ4H0xapeopWt4NXcY3P2ScDnpsKKQVhQs9I50wQw
	 iwXrBYvCxrhWw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E53E480FF9;
	Mon, 14 Oct 2024 21:30:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A0A21BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 21:30:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5816D401F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 21:30:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lc3reel2gLzW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 21:30:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 44AE340146
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44AE340146
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44AE340146
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 21:30:27 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-20c8b557f91so36539155ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 14:30:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728941426; x=1729546226;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WRZU25b73L4NPLcELjGuUGCIZi289xNDkjLoT7pzYSU=;
 b=le3xONVrFuobo3b+KQDO5YA7bW7tRClU2W9IyWqwXrUPRT2odru/mb9LpSAZbM9L+y
 gUwHiBdm0H3cf2POyIZA0mHja6IkInr3nNbGHwb/OIoNW13H8V8GBQ52elHp1SzYfOdN
 WQdRBwx3ijrh617HrnV9dhdLl0TRUZosr1XCr631vMTMrl6XraD7tNODR0gXXt5Bv0ur
 IyrRWzgiQp7OnVgg06D44NkTUs19oq/89qhLANcGNxP5u66jq2QF3sRiRbRKRoXLVOjN
 R0WMi/zTZF7HzO/ABKwumGVpL+50srdXkcQY8JLh+Mr3xxvKmRwlbFFiJMLGMZrr0ktN
 6TWg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWt+c2sZKAq1u3LWQqdGTluAFeF9nFHdO8QGuuXfEO6nBKmM5iXfI4Z1h6rPMeTnc5ARGGc4prDVu5lPMShBbU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyiy3Qu+OSbztSbPlj2x9ufTxiZvneU3u/8Zp+jPPb83UWNWOow
 lDtBkL++aH1nXm/BvUgmy2vV0gCxHqarWzeHjAwOW3e8mhgsIZeykPOF+uuiNPY=
X-Google-Smtp-Source: AGHT+IEcjB4DnlZM/vxxY6J3w4JYYT/cEkUQKkJgbyxt1yDIhY/TZ2l4L6WNfes5WipW0v5x1pURKA==
X-Received: by 2002:a17:903:2b10:b0:20c:a175:1943 with SMTP id
 d9443c01a7336-20ca1751956mr191319995ad.40.1728941426605; 
 Mon, 14 Oct 2024 14:30:26 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20c8bc1a54esm70197495ad.73.2024.10.14.14.30.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2024 14:30:26 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 14 Oct 2024 21:30:10 +0000
Message-Id: <20241014213012.187976-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241014213012.187976-1-jdamato@fastly.com>
References: <20241014213012.187976-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1728941426; x=1729546226; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WRZU25b73L4NPLcELjGuUGCIZi289xNDkjLoT7pzYSU=;
 b=Rt/3CWX4ySwMqSAf0DK8GO9p6OYxe6FxudlwEki7n8ef0zyw/rbPQVvD/ECwx1KUM2
 1ZxirMdnPVP5OmRUIojkb2rOH5legAQ7ngrdWCp7WSRKFnbsnGjRSZ6yVgV709lfM8Ab
 ZvkNy1szZv2Js/cSSn/+CfwurZbZHwBtWgPhc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=Rt/3CWX4
Subject: [Intel-wired-lan] [RFC net-next v2 1/2] igc: Link IRQs to NAPI
 instances
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
Cc: vinicius.gomes@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, kurt@linutronix.de,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Link IRQs to NAPI instances via netdev-genl API so that users can query
this information with netlink.

Compare the output of /proc/interrupts (noting that IRQ 144 is the
"other" IRQ which does not appear to have a NAPI instance):

$ cat /proc/interrupts | grep enp86s0 | cut --delimiter=":" -f1
 144
 145
 146
 147
 148

The output from netlink shows the mapping of NAPI IDs to IRQs (again
noting that 144 is absent as it is the "other" IRQ):

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 2}'

[{'id': 8196, 'ifindex': 2, 'irq': 148},
 {'id': 8195, 'ifindex': 2, 'irq': 147},
 {'id': 8194, 'ifindex': 2, 'irq': 146},
 {'id': 8193, 'ifindex': 2, 'irq': 145}]

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 v2:
   - Line wrap at 80 characters

 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 6e70bca15db1..7964bbedb16c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5576,6 +5576,9 @@ static int igc_request_msix(struct igc_adapter *adapter)
 				  q_vector);
 		if (err)
 			goto err_free;
+
+		netif_napi_set_irq(&q_vector->napi,
+				   adapter->msix_entries[vector].vector);
 	}
 
 	igc_configure_msix(adapter);
-- 
2.25.1

