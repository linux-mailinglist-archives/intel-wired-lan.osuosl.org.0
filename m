Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C07368AA37
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Feb 2023 14:35:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50D8941C3F;
	Sat,  4 Feb 2023 13:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50D8941C3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675517751;
	bh=CNLXSQKqDJy6dVEp00yA4GInO5v60b68jjiJG8XcN08=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gzQtTPyFsb07MHHWbjUuZ36b1m7pm9kftTL7KZt3Yk/wgePNY+2goVIQvi9fy0VtO
	 BeBODjxdLqsboxdETyftbs2txC1LfBY+u5/yDahE1n/48ktqo6B36i+R6GMjk9i8KR
	 yjBz6aWbn45IteWyR0PfDVk4pQ/tdiDqiIBln/QExguL6YTDu2qP1KSwDt/kJok2jg
	 DdIO43zC2h5vQLAU4n4AC4aZHhyRa4SYBpEJUswVQCgFONTyep0MGDqXCDuCNNGuTm
	 7ukHN08qQKHrp7MpHOHNZf88UuBVZ2RwDBA3QZ5a7kxue8ZWUqomAOlw9uRV4yMrnI
	 nbLd1CUIHwvsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbxu_3Sx4mod; Sat,  4 Feb 2023 13:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11FEE41C4B;
	Sat,  4 Feb 2023 13:35:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11FEE41C4B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4CE11BF362
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:35:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74987401AE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:35:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74987401AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sV1N49ELScPE for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Feb 2023 13:35:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2B0340136
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2B0340136
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Feb 2023 13:35:43 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id m2so7897184plg.4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Feb 2023 05:35:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JESTXBXpvE2dnrDBgzuJeMZn7XvTRpG9gQzTmSpRBHs=;
 b=HONCf27XhXFGGoKbXJi4UausO4k9AsfVE+Fn7jZMLnC863FvCj6BOtcSwmAbWQn276
 cmtEQhY7BttlaYrO59Y7tK0cnuZfTbZL3OfuFwLjjPWeT8sTlNAdU0rzeXqTh/govBvD
 76pPMu51AM5l2LMu10U0Sh7unKWCH1JST4CqshG1WsdWKqOUpI5G/bhwr1OTa54IzCSk
 7uW2SWnbB3kwI7fTsSrWKxzaIGZ4uBaNGTO50+ZHqz4ZFKXBipqquS4VAYH4w369v8vs
 RvNXZheBZ5wGFBm6fy2ubPvVYk1DjTKl9Dsx+a4xkSLsLw9X5lyurxjwzNg36C3rvij7
 5u1Q==
X-Gm-Message-State: AO0yUKWYeQjPcY+E8bjTi391YIMjwZ11jja7WU8Px330NSeL7IRKD6Ke
 z3T5z+93VRScJP0MxfNpgzY=
X-Google-Smtp-Source: AK7set9xruy2VOYusg3UI6hKD/B5ieAba9v9cPg4ywRWHDVdsQpwQwcaSV7JzYJJjOHZzdJEF25vEw==
X-Received: by 2002:a17:903:3293:b0:196:7906:b4e with SMTP id
 jh19-20020a170903329300b0019679060b4emr12562223plb.19.1675517743350; 
 Sat, 04 Feb 2023 05:35:43 -0800 (PST)
Received: from KERNELXING-MB0.tencent.com ([114.253.32.172])
 by smtp.gmail.com with ESMTPSA id
 21-20020a170902c25500b0019605a51d50sm3463575plg.61.2023.02.04.05.35.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Feb 2023 05:35:42 -0800 (PST)
From: Jason Xing <kerneljasonxing@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 alexandr.lobakin@intel.com, maciej.fijalkowski@intel.com
Date: Sat,  4 Feb 2023 21:35:32 +0800
Message-Id: <20230204133535.99921-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=JESTXBXpvE2dnrDBgzuJeMZn7XvTRpG9gQzTmSpRBHs=;
 b=KcGjfh7vdYjSnpRH0dqpbF0f0a6GacpSypj/xI83J3TqG+DbFLN4gy6m0aHeVgYGZJ
 7bKvEALX1C+wqAPc1UV9d+NZz8+mPEsae1BF0eBNGMJtq4amTLaAfa5epu7VrbGQBIDO
 jzsT+o6+6tCoXgZep8nk9uGDauKtB/zvTMYDjR6Rh6hcrGnU3iWZ/ZJOgIcELJiJQvF2
 u1rh/OkeC8vux+RfIAVqBroO44CB7z45wPa/NylgNMDK9miIvdokDDzCPpDQ7wd/Xwlk
 Q7HTkpRXOkVcyGY86u2AOE6nEkmoTW1pIWJ9rGZMjs4hYn9r0HweTkxdZhYDcolZnPoL
 I/Lg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KcGjfh7v
Subject: [Intel-wired-lan] [PATCH net 0/3] Fix MTU related issues
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
Cc: kerneljasonxing@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <kernelxing@tencent.com>

As suggested by Alexander Lobakin before, I follows the behavior when
computing MTU size as other drivers do. Adding a second VLAN HLEN could
solve the issue. I have some i40e and ixgbe drivers running on the servers,
so I choose to fix both of them.

Besides, I resent the first patch because the third patch is wrote based
on the first patch. It's relatively for maintainers to handle the
patchset, I think.

Jason Xing (3):
  ixgbe: allow to increase MTU to 3K with XDP enabled
  i40e: add double of VLAN header when computing the max MTU
  ixgbe: add double of VLAN header when computing the max MTU

 drivers/net/ethernet/intel/i40e/i40e.h        |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 28 +++++++++++--------
 4 files changed, 22 insertions(+), 12 deletions(-)

-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
