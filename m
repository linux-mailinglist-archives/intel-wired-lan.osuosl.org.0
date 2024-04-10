Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5F389E90D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 06:39:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 757E440752;
	Wed, 10 Apr 2024 04:39:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zm3D6PSP_Mj0; Wed, 10 Apr 2024 04:39:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DD5240718
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712723987;
	bh=FTBKn+X9fYIhUY+SfQqhA1p7Ow+PslkWyXYeQlLznYk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=L/g+R2AlDwecSYzZcnEflIUgioRIXbTveB8ZTMkVifZSciErxr99Ot6MvIJfIAgUN
	 3RPizSK6xKGJF2+BHPuNc/NxMS72GBpx0Ne8JYoRXWBeL+nvRMQd50RRzqT8dbXITi
	 uqYdm99LcUlQO4MnqDvKIqAPx6jprcJemgiPree59ppNKhI2+Gr6Th6AoLoZGL08zl
	 Rti+x6NdHxu6io+m8wUxCi3kciDf24GM9acsiF9A21JpuY14Jv3RMS/AFP2wx6KA7n
	 kFfig47SXBQaQEy+L4WHZ++8U24OHX5BCNChiFzHqQbcQ16M1xVLMOZM1z5rV6p1g2
	 hOPagY6WrzExQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DD5240718;
	Wed, 10 Apr 2024 04:39:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E02B11BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 04:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CAE8D81B8A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 04:39:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lgn5nZ6EyflZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 04:39:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::531; helo=mail-pg1-x531.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 92C6581B6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92C6581B6D
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 92C6581B6D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 04:39:43 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id
 41be03b00d2f7-5bdbe2de25fso5064588a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Apr 2024 21:39:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712723983; x=1713328783;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FTBKn+X9fYIhUY+SfQqhA1p7Ow+PslkWyXYeQlLznYk=;
 b=u65QIhZHWzg/ZielhALA/beYJdTtJk8tSLuiwLAe//s4Xw+g4IcnX9lDF69xiHVjJj
 5jjUGshRU1YtUG1OUpNSY94i7+8U4X7k8RNptas64YdEOiSLaq0/w+AS24zHUdLIA2Lj
 /7NQ3J2eaWMTcV1R/Xzi+ABU76fILSOM31BPnK4iIEGJttLLEjjvVN7f7BkiEcI8cgcm
 c8oE+nS1rpwMLc9Iq2KpqQexfc4/JK2F+yNsAYwT87FTm93rfCTlEgS9JtFMb/+1VnFP
 4+A91kTq/ZG3nVNd0ireGV8bh6GEad2h19Tq0SmbxT15Cz9/yVX5OEdFB4YyU3ic/2XC
 q4oQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGb1YIx/pnh/YA7LlZ3+Sy5O7ooToSWocKf9MrFLip9MxL8vkkJCtxAt1voK3SsEwNdao5UQBiRsGxj1gDWqDkJx4d6egbElhwNUqzCc+fPA==
X-Gm-Message-State: AOJu0YyWaHdDjiDOFwoLZc2hX5PaT2W5/EPsBdscO3/Nr/G402LiqW8r
 RxPHST/1a2Ep3VBNGTRLamcBv/JPJjgjfa0sJv5VdIZxsldaw1QKySQDB9qf4Sg=
X-Google-Smtp-Source: AGHT+IE6idq9nTJW2mID+KEBk2ciEgsbfXSMT5eLrh1uUoPhsGEPfHjous1/IHHuE4a4LZ+5SF/hIg==
X-Received: by 2002:a17:90a:d505:b0:2a5:37cc:cc4e with SMTP id
 t5-20020a17090ad50500b002a537cccc4emr1550232pju.32.1712723982772; 
 Tue, 09 Apr 2024 21:39:42 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 gn4-20020a17090ac78400b002a5d71d48e8sm260773pjb.39.2024.04.09.21.39.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Apr 2024 21:39:42 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Apr 2024 04:39:33 +0000
Message-Id: <20240410043936.206169-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1712723983; x=1713328783; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=FTBKn+X9fYIhUY+SfQqhA1p7Ow+PslkWyXYeQlLznYk=;
 b=iRKsZCZNCYHiJSD9YiXnROjuSTlaWtsfqNzC/4sQ9bkYw6EOXKDZHRO2G/+Dn3fJ5v
 S1oKkwG/Vo0yjxu5Zd4EkV/59zS7P2Bj1hOX4tVMf/nxYfiyINf8djkfuxiczQnqNyjd
 FnPafiv1t+DntbGbhmy2R0ShwHBi95U6GLZpU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=iRKsZCZN
Subject: [Intel-wired-lan] [intel-next 0/2] i40e: Add support for netlink API
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
Cc: amritha.nambiar@intel.com, sridhar.samudrala@intel.com,
 Joe Damato <jdamato@fastly.com>, Eric Dumazet <edumazet@google.com>,
 nalramli@fastly.com, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

This change adds support for the new netlink APIs to i40e which:
  - link queues, NAPI IDs, and IRQs together
  - export per-queue stats

This change is inspired by a similar change made to the ice driver commit
91fdbce7e8d6 ("ice: Add support in the driver for associating queue with
napi").

I attempted to replicate the rtnl locking added to the ice driver in commit
080b0c8d6d26 ("ice: Fix ASSERT_RTNL() warning during certain scenarios") in
patch 1/1, but there's certainly a good chance I missed a case; so I'd
kindly ask reviewers to take a close look at, please.

Thanks,
Joe

Joe Damato (2):
  net/i40e: link NAPI instances to queues and IRQs
  net/i40e: add support for per queue netlink stats

 drivers/net/ethernet/intel/i40e/i40e.h      |   2 +
 drivers/net/ethernet/intel/i40e/i40e_main.c | 160 ++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c |   4 +
 3 files changed, 166 insertions(+)

-- 
2.25.1

