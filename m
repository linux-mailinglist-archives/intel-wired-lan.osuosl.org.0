Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0826E3B73
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Apr 2023 21:12:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFDAF60E5C;
	Sun, 16 Apr 2023 19:12:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFDAF60E5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681672369;
	bh=iNJXThlP1cVl/+LQixieApi0LwxfRtg9dnCtCc4K9vs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=g7S4BwgH1rzTlVTetfXp+Pmz1ko6kBFXtm8GIw4GiT4knU+teYa4eV3iZcSAlw4Ma
	 5c8k15EP8QO58brNDBA8UdoUfK31H4A9ZHbe+9GhwfS5l0rB+8pcxLcOh8QEHNuy0A
	 oon3Yb3k5jVMMHXu1paYlQ4uSFteI46siYFz4bwWc0XrpwoNNJOVD59d9yrLiuIyuV
	 CEEDnDpvUB7aYrytv7VMwQTlUJZisQSxsL7odYq1oYbX5IWcKZV2oBH1NrfTO56Qwq
	 nS8a+QkmJkPLhDiPGGb9FVk1DM3F3WEZO32VaeZrreQRXoxAIrd1SqJyzQQ8yUpPIz
	 DMNBTuzcRF7PQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GyqKfxV04qox; Sun, 16 Apr 2023 19:12:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3A9B60D76;
	Sun, 16 Apr 2023 19:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3A9B60D76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3326F1BF425
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04F9241D63
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:12:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04F9241D63
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fKk1WlwYdYc0 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Apr 2023 19:12:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F079B4188F
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F079B4188F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 19:12:41 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id sz19so1700863ejc.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 12:12:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681672360; x=1684264360;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=mt9Jd2VCFKl3SzvC7vwKe2P24ZGqydFJ65cEp9GQs5Q=;
 b=H0BeyLgbTv843OQdWtrQQhZ0LCbxC1r05lPSQycidQcnfvmmTvoULS24KdbApMdcoV
 i3vPLMo7ROvX29fJfJ8vlVXHciJbPFomdac+cSoEcnnjJspYZa9fSp18KqsUMf0KRcZs
 xzQHhbyz96jBdeAD2Gqfk6XmKb4uaYN88wGqLDKuJ2VgDT8e9PR6SdnWpTx0+D1FOWFz
 ksGTY1FZEV2bY09+jGr9Ifk8t3RUvH8ONIoVo57QoFNXnQL2JY8XsFJbGP2++POGlJWq
 lzTmp/0LS7j3H2fbKp/7Scpb8dHufA5B8LOeTz87e/4rKFwr5h5CUwp0IX90KvpEnsWm
 6TLg==
X-Gm-Message-State: AAQBX9f9nPjtlxJ8upsydYvbHb5Iygs0Sgoks9PfRIrDw4Je37ayEERq
 MqaGgrhGgdnQY5APY4AjYsXm8uxHayTxo8JonYCU5rzJ4TKtxlAWISHOqhrFQhIeJP+GCbal5B2
 /lsVmL0vuPZn6g7SZyPMqLgthOAjNuBijJArlyO7jECDUP1Zd8H1U4H7sphiTcTNtyROBPRpnfa
 1UQUOESNqyCTs=
X-Google-Smtp-Source: AKy350ZG0733pE9h8xyhVHNIGFiEKgx4s3WzWi6+1pXB0Knb/0PfeOv9vte5Uiae9KaUN9gtqdOQnA==
X-Received: by 2002:a17:906:824e:b0:94f:31da:8c37 with SMTP id
 f14-20020a170906824e00b0094f31da8c37mr3577984ejx.52.1681672359530; 
 Sun, 16 Apr 2023 12:12:39 -0700 (PDT)
Received: from perf-sql133-029021.hosts.secretcdn.net
 ([2620:11a:c018:0:ea8:be91:8d1:f59b])
 by smtp.gmail.com with ESMTPSA id
 mp30-20020a1709071b1e00b00947ed087a2csm5463902ejc.154.2023.04.16.12.12.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Apr 2023 12:12:39 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 16 Apr 2023 19:12:21 +0000
Message-Id: <20230416191223.394805-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1681672360; x=1684264360;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=mt9Jd2VCFKl3SzvC7vwKe2P24ZGqydFJ65cEp9GQs5Q=;
 b=u/yotdRs9J9IY3vZCAPdto6RTvA87qDdQpFoT3YsgHFZa1qAxip2gNgENCZLaNE/97
 PG8LCkDMz8U6wav4ipaN2Kbnu3qsOHaD2D5fLv6l8gYiHqcLRDTJzsVN2S8NoQlI6zkL
 gGU80hGbJRTHmjisA2EoGdYcMnxe4I5NbmOyo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=u/yotdRs
Subject: [Intel-wired-lan] [PATCH net v2 0/2] ixgbe: Multiple RSS bugfixes
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

Welcome to v2.

See the v2 change summary below; v2 contains only cosmetic changes to
commit messages. No other changes were made from v1.

This series fixes two bugs I stumbled on with ixgbe:

1. The flow hash cannot be set manually with ethool at all. Patch 1/2
addresses this by fixing what appears to be a small bug in set_rxfh in
ixgbe. See the commit message for more details.

2. Once the above patch is applied and the flow hash can be set,
resetting the flow hash to default fails if the number of queues is
greater than the number of queues supported by RSS. Other drivers (like
i40e) will reset the flowhash to use the maximum number of queues
supported by RSS even if the queue count configured is larger. In other
words: some queues will not have packets distributed to them by the RSS
hash if the queue count is too large. Patch 2/2 allows the user to reset
ixgbe to default and the flowhash is set correctly to either the
maximum number of queues supported by RSS or the configured queue count,
whichever is smaller.

I believe this is correct and it mimics the behavior of i40e;
`ethtool -X $iface default` should probably always succeed even if all the
queues cannot be utilized. See the commit message for more details and
examples.

I tested these on an ixgbe system I have access to and they appear to
work as intended, but I would appreciate a review by the experts on this
list :)

Thanks,
Joe

v2:
  - Include Reviewed-by tags from Sridhar Samudrala.
  - Fix title of patch 2/2:
      previously: ixgbe: Allow ixgbe to reset default flow hash
      now: ixgbe: Enable setting RSS table to default values
  - No functional changes.

Joe Damato (2):
  ixgbe: Allow flow hash to be set via ethtool
  ixgbe: Enable setting RSS table to default values

 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 23 ++++++++++---------
 1 file changed, 12 insertions(+), 11 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
