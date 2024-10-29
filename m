Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5890C9B531D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 21:12:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D79681036;
	Tue, 29 Oct 2024 20:12:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id REwl8DnBp69D; Tue, 29 Oct 2024 20:12:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63E4681029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730232759;
	bh=jzv4tUYcTG10nCYawdfXAqsh2XlyQDuHmZvQ4r/SQEI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dxUKWmHuIvgfHdqT0bNyZdGe26Bx6QrYUtKSUGsIDeIEpWDNGu3EIVMSgat6tss98
	 3B6Q+yp0fNgiSsReFpfJpxria8Nl2fNEen/85mM9m/3H6i6Aol8s9+QmADUtPbe2gR
	 GdjpX9u+Ryr2ULw/Or6iXMbvop4wYYL4gpM6rODkxbF/Xtr3xURIM6osh0HmppGVT1
	 CzRNas2+d06WJewDIjVT1Xo7M3W42195X7M8kd2iM976m3yQ0M1RtKpeJUjmYwRO5x
	 7jzL97plOqEFhLR3WNr0Gd31ltnU5F3k+iP7YQd4zQvFAexms7uY6/lBRy94R+9q/K
	 bT77T3buVNNMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63E4681029;
	Tue, 29 Oct 2024 20:12:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7225B4969
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 20:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D3FA6089E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 20:12:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YZJwvLt2rhMV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 20:12:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 90F8260899
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90F8260899
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 90F8260899
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 20:12:35 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-20c8b557f91so55501285ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 13:12:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730232755; x=1730837555;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jzv4tUYcTG10nCYawdfXAqsh2XlyQDuHmZvQ4r/SQEI=;
 b=O4mvRm/lLLDdCiCca3JBZtweBa1qhU6NJesYEXUpmeEHqVSm+KqwuGFRPjvlacxLYM
 thQk9Ln3MqdaCmovdoCq+nsX9BUHzHJ+ZWKiF3/v2nRFpnfBhCMiEsIoFRMXAbPH5knn
 6PqV3LClZuBBxuQlLFehxmYf4hJBqm+ft6qU6WYvleB56WkqPLwi6zctBGwNktNzj9Sj
 JehjG5WibKNVERYlk0pgbI0HcwCrHQghifVhv8Gu1zMswESxFTP2qEZBfTjb9/cfX/Rc
 UAHpOx9ntn8tewC3ZSBohrOr6aJgmjmJLDJWkVQbeKAy2w1oBZrJYx2Fjg2aPl/UYnJ5
 sr7Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUYTYD4xwbV9GKRCEpL4wsZ+KfzRyRsFigDS0/qaCT23zG/Iq8eaWajnu3Cma7pJmcoL8Au+nZaHTNopOfCG/Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxbBJwjGWIC6W3RQz9SNlwUjEn7gegWZw3X9z8YtrA9ll0iN4UJ
 5D6ok1bejNPaiFlklnzrPlerwfwexTgRQcvmRDGs2eR2Cm/uoifMLaUHkOcBeSo=
X-Google-Smtp-Source: AGHT+IHZz073Y/+RlP1vIxXjnGIeM7hUYatGph4Zrs5blXDeXr9Du/xPpF1b2eHy6jnE+jCF/aefag==
X-Received: by 2002:a17:902:db0f:b0:20c:9c09:8280 with SMTP id
 d9443c01a7336-210c6cc207amr156966505ad.54.1730232754740; 
 Tue, 29 Oct 2024 13:12:34 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-210bc0864d7sm70113735ad.303.2024.10.29.13.12.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2024 13:12:34 -0700 (PDT)
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
Date: Tue, 29 Oct 2024 20:12:16 +0000
Message-Id: <20241029201218.355714-2-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241029201218.355714-1-jdamato@fastly.com>
References: <20241029201218.355714-1-jdamato@fastly.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1730232755; x=1730837555; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jzv4tUYcTG10nCYawdfXAqsh2XlyQDuHmZvQ4r/SQEI=;
 b=Garu8oLGo54sDCpcmPo/WOEl1RYGPt1t7+f/SYHZ42QwsqswFJZoZaEKVh2+H0YYLF
 zX22qJDI2Pkag8x4v5vVyHOXxxloWKmGhKHm6U33huAKFTAsWNvDvf5SOYg2q3uJlc5/
 M3gD5hd15QvCDNv3zE6Cs+KM22ZwJz9iyc5Jc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=Garu8oLG
Subject: [Intel-wired-lan] [PATCH iwl-next v6 1/2] igc: Link IRQs to NAPI
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

