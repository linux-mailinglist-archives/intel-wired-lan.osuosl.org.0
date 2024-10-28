Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 859959B3AD1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 20:53:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E35D9405A0;
	Mon, 28 Oct 2024 19:53:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3fkOopxhuXXm; Mon, 28 Oct 2024 19:53:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D113D405A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730145182;
	bh=jzv4tUYcTG10nCYawdfXAqsh2XlyQDuHmZvQ4r/SQEI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eyf2qov32Au9VUxKxm2oZzvVomIIwORSomJ1L94b8eIa/SaFuubjzop0SPc9TvPsT
	 /a+jmANtoWYh9UGIaAdAUxZ1hQlJbZv2a/iemsksawjBRYokuAknvK9f4XXFKU6Ntf
	 aRzKaMqt0WgzIa6FvdX9WyRFwOFugAaSLuWQzoKHHtWfPlJ8wHDakrmsaqxO0RcPib
	 C0fdu2wfsRYCaRm1NbUmuMyEZKa04tjy7vZL97n55YRQn9pascHVOHP0VlBwnZKd/e
	 JhHnqK3h3FD4+N+3mt9br4mdQpXpy15iZRpsOggPDck927qXTvUa3EJs+sxTbnOTgx
	 velt8F05YQUOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D113D405A4;
	Mon, 28 Oct 2024 19:53:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DC7A6AEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C77FA4059E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:52:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 58W6y6lrWhTI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 19:52:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1035; helo=mail-pj1-x1035.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E30B640564
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E30B640564
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E30B640564
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:52:58 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-2e2dc61bc41so3365683a91.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 12:52:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730145178; x=1730749978;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jzv4tUYcTG10nCYawdfXAqsh2XlyQDuHmZvQ4r/SQEI=;
 b=UCoiBmyoRtcepHvBwXob9wbB4b/NtWyY94ehYS0/1AiZlCppppJqoT/jUV7xi7j6Iz
 M7RLVVeYDCEHIdhZ74rH5YVyP667AMaXyXAFW8bJgfM91esKrFclb7usIu4BdrZ7qvJe
 IBGFOvPbVsgu9jQvtf9hZB7yHHQ4zSbxkNa/Fgztb0A6Q8C+/q756E8uxZirFi2sbdNn
 2qPW8d1qIxpGy2A+pr0fxISby+TA2P37pgk/HIDc6Y/y8fXI9cNutME/kkOSmIwpJSqv
 R1D1JYEc6Bjl5dEeSMUyiknvI3gDhWE5MORwULunYzM7bPCtt6sy4cVH5YQ7fMQWhcKB
 h84Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXjktgEqzvEznmSjRzmUWrgO6KSb2sDN4a3xFLQqPTLZ/5TH0JxMFTnBfYKCi1pitqjR5ETyqXNNKNV3223WRA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwsI06qnkLPMyrVyfbQ7mXoYAB0unGjDQfkywn8awHLKmVk2KeW
 Y2cmR30+tin8cdau77nzT8F23Pfxs8j/QVRkr4zNbFNIJUfxfc2lpZw0gpc8vbM=
X-Google-Smtp-Source: AGHT+IF3b8V4O/+wSZXl5oSD4rRWeHrmI8p3REOwFvhYeIEQrlFb40BEPTWGzSfzMi4dJRV69l6Qyg==
X-Received: by 2002:a17:90b:1202:b0:2e2:d1c9:95c with SMTP id
 98e67ed59e1d1-2e8f105f207mr11133265a91.16.1730145178235; 
 Mon, 28 Oct 2024 12:52:58 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e8e3771e64sm7695247a91.50.2024.10.28.12.52.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2024 12:52:57 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: vitaly.lifshits@intel.com, jacob.e.keller@intel.com, kurt@linutronix.de,
 vinicius.gomes@intel.com, Joe Damato <jdamato@fastly.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Mon, 28 Oct 2024 19:52:41 +0000
Message-Id: <20241028195243.52488-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241028195243.52488-1-jdamato@fastly.com>
References: <20241028195243.52488-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1730145178; x=1730749978; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jzv4tUYcTG10nCYawdfXAqsh2XlyQDuHmZvQ4r/SQEI=;
 b=DgTliKzndw1JEK60k9bNq6KQs8cI8M8WgMtg6kDYmPXZl9LJ96g1OCzZ7bfV5lor6c
 g+Qy4C8kuBVM4ZnQQTiCZH4QqdQbq8ltkrQIbOprTsa1MELyR/C1/QgZtgY9n60xnnbI
 w5sE61eaOwHTxpVPBEEUNnHhNg2nU3eSnA3fA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=DgTliKzn
Subject: [Intel-wired-lan] [PATCH iwl-next v5 1/2] igc: Link IRQs to NAPI
 instances
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

Link IRQs to NAPI instances via netdev-genl API so that users can query
this information with netlink.

Compare the output of /proc/interrupts (noting that IRQ 128 is the
"other" IRQ which does not appear to have a NAPI instance):

$ cat /proc/interrupts | grep enp86s0 | cut --delimiter=":" -f1
 128
 129
 130
 131
 132

The output from netlink shows the mapping of NAPI IDs to IRQs (again
noting that 128 is absent as it is the "other" IRQ):

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 2}'

[{'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8196,
  'ifindex': 2,
  'irq': 132},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8195,
  'ifindex': 2,
  'irq': 131},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8194,
  'ifindex': 2,
  'irq': 130},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 8193,
  'ifindex': 2,
  'irq': 129}]

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 v4:
   - Fix typo in commit message (replacing 144 with 128)

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

