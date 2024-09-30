Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7997A98AAD3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 19:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BCA18104C;
	Mon, 30 Sep 2024 17:13:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SwtHBFa2NLrZ; Mon, 30 Sep 2024 17:13:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F35E480FFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727716428;
	bh=ewHkEs/55CbQPJSd8p1HVc2KzJ7wL8ZKdD4xY+nRkAo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Iw9FHAMq8IjKtsvhDlW3U72BNzV+18GD45/C03KDFNmfaaRfmE1JC1NaEz7gj1VSd
	 i+85HXVYG/wwchAeneUSJELqVw9j3t32j/NuMpUtEj9ypvHA3/1Zopu8eEvjy5HgzK
	 hS3Ok26zu87A7eNtLsaLD47Yu7JLWAEw21uwBmIlNosYmocxJl/gkVxazMdNqx4byl
	 4bifIN0RsdGoHjajBSRgHrT7jr261c/XGS3kXvTXxDnZVMaO62iHlpTS8mIC4B5FrU
	 JqZSO7UsIhEWTVRJTbbv2y5UCYyHbZSFMVyCT4MD2OjQ+4t4JW02NUzmxfRYXXDmNY
	 vcB4dXwLB7yxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F35E480FFE;
	Mon, 30 Sep 2024 17:13:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C1DC1BF290
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 17:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69EDA40139
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 17:13:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 06tSykarEJdO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 17:13:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52a; helo=mail-pg1-x52a.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 19815400D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19815400D3
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 19815400D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 17:13:44 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-7e6ed072cdaso1184475a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 10:13:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727716424; x=1728321224;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ewHkEs/55CbQPJSd8p1HVc2KzJ7wL8ZKdD4xY+nRkAo=;
 b=fS1imr5wXXwG/WyEcMC6O6HFvqLtrF2q86gXXtRHZgvSehn9xgmALnnlBcXamdQEgA
 YbZes32QTxSgIXGodU/zLS52YEJfWGugglMV5brcf5eVcshxzjFKHuJdB3JuUnmv9J0K
 4LPJRUrOq1G+DIYBYS6wlytYOBRqsDYCya0FcWFNjHttZDRdWB9IIBvabRti73XXOq2n
 EqXYOTokxWLch599bW4NlqRDlM2cQeztVtU8qzxfo63oo9a7aalcR0dDH7erhnrDhymD
 sw0558AaaVJWcu8Go0CXEcTc1XWasBCWJ8Kt95iGi6tnFubT2NZxCnp94ko/SaTjg6bx
 OVPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWWyV73EoBWtgybvXOS+DNEp6fCYqy8vUPf+b95SQlHJ6S9qMEf++kVzw1LmAZ1G8PeEwYoh6k0psAzifSrEZ0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YztOEMrltYYJruKn73U0xYsXr9Pqp7Gh0zF8Ub124voPoCWHJbL
 MbH63T52SDruDctubPiPl7WKZgDr3JG/x7cimvqwqL4UR7jTQoF8xQozXCr/Xdc=
X-Google-Smtp-Source: AGHT+IEkPF98OsudfOg4QDza1DHSAho2n5XtlIzq7fEFmYgNWM+YoG1Qp5V4gfN/U4f54o3cVbNMWQ==
X-Received: by 2002:a17:90a:898f:b0:2d3:db53:5577 with SMTP id
 98e67ed59e1d1-2e0b8ec65a9mr13926058a91.36.1727716423996; 
 Mon, 30 Sep 2024 10:13:43 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e0b6e15976sm8188364a91.41.2024.09.30.10.13.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 10:13:43 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 30 Sep 2024 17:12:30 +0000
Message-Id: <20240930171232.1668-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727716424; x=1728321224; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ewHkEs/55CbQPJSd8p1HVc2KzJ7wL8ZKdD4xY+nRkAo=;
 b=iUN1YPIyoGsJUaNyCxSkpZ7jmUYBzI31RyuqoLnWWhftZoOCTGn7RrWW0p53r2IAAY
 /L50j8RpbeBRFxvuZrPRJnM5QmJnR2SvfnNj22Otwm+9CGw87f+0LhGvjlbA9HKwEAml
 G4egqjvtEb1iAzV4SpgM/nfFsXP1zQeyN0XcU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=iUN1YPIy
Subject: [Intel-wired-lan] [net-next v3 0/2] e1000/e1000e: Link IRQs, NAPIs,
 and queues
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

Welcome to v3.

v1 was an RFC [1] for just e1000e, v2 was an RFC [2] for both e1000e and
e1000.

This series adds support for netdev-genl to e1000e and e1000.

Supporting this API in these drivers is very useful as commonly used
virtualization software, like VMWare Fusion and VirtualBox, expose e1000e
and e1000 NICs to VMs.

Developers who work on user apps in VMs may find themselves in need of
access to this API to build, test, or run CI on their apps. This is
especially true for apps which use epoll based busy poll and rely on
userland mapping NAPI IDs to queues.

I've tested both patches; please see the commit messages for more details.

Thanks,
Joe

[1]: https://lore.kernel.org/lkml/20240918135726.1330-1-jdamato@fastly.com/T/
[2]: https://lore.kernel.org/lkml/20240925162937.2218-1-jdamato@fastly.com/

 v3:
   - No longer an RFC
   - Updated commit messages
   - No functional or code changes at all

 rfcv2:
    - Include patch for e1000
 
Joe Damato (2):
  e1000e: Link NAPI instances to queues and IRQs
  e1000: Link NAPI instances to queues and IRQs

 drivers/net/ethernet/intel/e1000/e1000_main.c |  5 +++++
 drivers/net/ethernet/intel/e1000e/netdev.c    | 11 +++++++++++
 2 files changed, 16 insertions(+)

-- 
2.34.1

