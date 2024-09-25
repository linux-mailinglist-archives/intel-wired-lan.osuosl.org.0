Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 864E89864D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 18:31:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81EC484A35;
	Wed, 25 Sep 2024 16:31:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W3bIZn3sXMsY; Wed, 25 Sep 2024 16:30:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A19DE846BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727281859;
	bh=kK7pukRuGPZ/J5N4BTKEwTPZ9aTZGIEZLBkRRr7miMU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mC6+LyrYr52oWsb09pfPq9piXH70ZpaTa0PyWj7+ZmqanDdMw5vKPaiq2KjtGWvgP
	 pGrpf/mAgm4RRF3qFmqdT0XSmS6tW1B9H83ZxC9yfDlqcJJGQucJaejhjvvRJ31Tl3
	 +RhziTZT7wWAYu8zS8oVyhdywxo+mQqgzXLw9tXJnIPUgsfXI26ynn7NOpuzcEaI5I
	 TwSdI1LsHgjwofXiZFgcrPfdaqXnATNLHLr5CRRh/5H+rb57Xs1IRyl4QqinTcIHog
	 L7ctbFRqwDFw75nImscDIhtBi3s+TeeEHmI22xFtNqd7K5DDzXETbVnoqFsrc3Kdb5
	 DvsotTxXoRaig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A19DE846BE;
	Wed, 25 Sep 2024 16:30:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC0D71BF35D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C781E848F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:30:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z-mUnFugpBox for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 16:30:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::635; helo=mail-pl1-x635.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C9E3B846BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9E3B846BE
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9E3B846BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:30:56 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-208ccde82e6so54879095ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 09:30:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727281856; x=1727886656;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kK7pukRuGPZ/J5N4BTKEwTPZ9aTZGIEZLBkRRr7miMU=;
 b=v+XDBJpGYkhqSg0gglf5SivZRInzbRc2tE5rxGdgDFQut8aE9XU0M+R22UlYUWYJky
 rI9ElV3oMVagDpkx8A0D2RUUegg8jl02IsAyG6evv702yt/PljwtucG8noiel7PSYXSF
 xZiXyEJfl84PHOUAT9X/JHOkW4JX5izP1uAKB3k9wFOxjH9RNwToanLgDDr+n35DaWBy
 z6UO/4BPjnwR981tsA1/al9lWpzM8p8W52BK6iTbIXFbNuJ1k3VvBEUODjF5QY2CzC4P
 DovwIadVnqB74SVnpFgD1WYStfJHVKcUEVoefGiHisM3qhlOmfSqRKrrBOQhL5sHm4dL
 zkfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVF5HrBxbRAxscO8odkNVj1TxQdRvGzJTDZJ1NTNZt16b7nEEeVVL6SjifGMosm9u9WtHfKT2N31OZ1ldWB1Ag=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzW/uwa4S0FDhNka9fvERIzmsyTHmTR2N0pE8iaASTF+8bi0op9
 ZEn5ZdytLbKOIlydlvOxSggpBIMB+id41v3TVHehLg2JLhzfwbasCXiWgC2mLEw=
X-Google-Smtp-Source: AGHT+IEHp2ua/y2JhHEUQmnJDaScDzANw0skOHs+EK5VHrFMUdYBMLnr1D2U0v2jjV1OmAT8NFCtbg==
X-Received: by 2002:a17:902:e5d1:b0:205:755c:dde6 with SMTP id
 d9443c01a7336-20afc4b4847mr44173255ad.30.1727281855985; 
 Wed, 25 Sep 2024 09:30:55 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20af16e0702sm26345585ad.28.2024.09.25.09.30.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2024 09:30:55 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Wed, 25 Sep 2024 16:29:35 +0000
Message-Id: <20240925162937.2218-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727281856; x=1727886656; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=kK7pukRuGPZ/J5N4BTKEwTPZ9aTZGIEZLBkRRr7miMU=;
 b=RCkbN5ywnOE0bHZltNTtGBT/z9mZg4iDWwDpSgreU4tWvVwk6CRwYxsdVZoBYSmv6v
 +hu3x3rYTJAx1XZp3D9KsCM6vOW+IFvwKqtUZ2tUzhltu/txDAQE72AkOzDqEjGyn1UD
 UzJUQhcgdjINWSuATUNdvMDxbWQsbUXdkKPow=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=RCkbN5yw
Subject: [Intel-wired-lan] [RFC v2 net-next 0/2] e1000/e1000e: Link IRQs,
 NAPIs, and queues
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

This RFC v2 follows from an RFC submission I sent [1] for e1000e. The
original RFC added netdev-genl support for e1000e, but this new RFC
includes a patch to add support for e1000, as well.

Supporting this API in these drivers is very useful as commonly used
virtualization software, like VMWare Fusion and VirtualBox, expose e1000e
and e1000 NICs to VMs.

Developers who work on user apps in VMs may find themselves in need of
access to this API to build, test, or run CI on their apps. This is
especially true for apps which use epoll based busy poll and rely on
userland mapping NAPI IDs to queues.

I plan to send this series as an official patch series next week when
net-next reopens, but wanted to give the Intel folks a head's up incase
they had any comments or feedback I could address before then.

I've tested both patches; please see the commit messages for more details.

Thanks,
Joe

[1]: https://lore.kernel.org/lkml/20240918135726.1330-1-jdamato@fastly.com/

rfcv2:
  - Added patch 2 which includes netdev-genl support for e1000


Joe Damato (2):
  e1000e: link NAPI instances to queues and IRQs
  e1000: Link IRQs and queues to NAPIs

 drivers/net/ethernet/intel/e1000/e1000_main.c |  5 +++++
 drivers/net/ethernet/intel/e1000e/netdev.c    | 11 +++++++++++
 2 files changed, 16 insertions(+)

-- 
2.34.1

