Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DCE6E2F33
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Apr 2023 07:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34F6470014;
	Sat, 15 Apr 2023 05:49:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34F6470014
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681537760;
	bh=L6NiXYGXdJZQ1uJPi8bHyyyBhdhx01GGt6r54vW0x2U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=y4i8JwIRT4oYQcQUFmKHW+dV8NUpTmvhgIA9Xm2qlzZD6yQQX62YJ4pVKXExq1d89
	 Bno9Ou7FzLui5S2Sv37wE3WMaML1MJgCoJTwvn+fBMDWbjdWRWFZT0sQlV/aUHUwAR
	 pBr1sFQlMwM6Tnbs8ubROM1YC/+Vey/aaW524E3uRCx1W7aI0vEkY6SZxBB7QWYs88
	 FnmveANdFTQNH4ookAuj1HbADvKqy3Sgbk2fkn0ks3tFKxpbC7GcfAjxyBB2xT9Vaa
	 Hhnj/CJotVcT9Jfofl+k4xAbKUiAhjfJI6DBbh6x14w8HoPgC7B2WxKGrGhIL57mnK
	 INZbHQx8exHYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0PmXG8VJh6Kt; Sat, 15 Apr 2023 05:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1135660BC0;
	Sat, 15 Apr 2023 05:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1135660BC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 563971BF312
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Apr 2023 05:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FF7C404C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Apr 2023 05:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FF7C404C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aMvbNrSu_H8L for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Apr 2023 05:49:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46807400D9
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 46807400D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Apr 2023 05:49:13 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id xd13so16945015ejb.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 22:49:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681537751; x=1684129751;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Y2YebPOWU1AKbeUIaxSAasxQVn0uumixYChKM0jWLz0=;
 b=DS/sVJ/jDUErZ82u1p6exJVIff2hDczLjF4t1M2tjaaHGjljEC2aMw68a4SUgmoFWT
 MaLcJKwADS9Bqrq+ov4F/qLAWmhD2J45nXUM9XR8o6L5W2fuehIYxTPFjafNoRP8w+1E
 yK4Ifz4u5wVz622+fvplQMzCr5wi1CwS2aRuhK74XDmDGI9vokMTQDfRwcSJewEwdWpx
 fXDNGKjbkI3mhv+YjsvQEPoHXQK2/wTqOG9Eu3IvSN0vYsCv4Pqpb0CZMVbY7OlB/puP
 6FIqMnfHIPe7L9pF28WoJQnJgvmAeQzbKg+LzHt5yDFW3VlUHA/7uv4YKuCD2vvgctmC
 UPcg==
X-Gm-Message-State: AAQBX9c6wp4L/Ckxygrz4bJePQcXRMYmVVN7wDVsdnO1laH8ZxBMcbT2
 ty3QncFnJOAoU7nLRZp/B9Ho8IJCj3zXmi5rFMLLJJOrp4Y/6e6AN54ZKkcPfH9pjU4E8Yfu3S9
 yUc7ZV/goeGlZgEmQ/mFT2IfvGqpbn4gH0o/cbUu7cnBrrDs8RN//TcPoMV6VAv1e++DzATV/4X
 S/RSf8jEqFFPtvXg==
X-Google-Smtp-Source: AKy350Zmw/ebZONsYzTdEBUgREaqpGfr3D0sH3dmepp6YGStEND7N2EasiFdz8K8Ctti/lLzhKMggA==
X-Received: by 2002:a17:906:e118:b0:94a:6c0a:63e7 with SMTP id
 gj24-20020a170906e11800b0094a6c0a63e7mr1129867ejb.54.1681537750817; 
 Fri, 14 Apr 2023 22:49:10 -0700 (PDT)
Received: from perf-sql133-029021.hosts.secretcdn.net
 ([2620:11a:c018:0:ea8:be91:8d1:f59b])
 by smtp.gmail.com with ESMTPSA id
 b1-20020a170906038100b00947ccb6150bsm3294856eja.102.2023.04.14.22.49.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Apr 2023 22:49:10 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 15 Apr 2023 05:48:53 +0000
Message-Id: <20230415054855.9293-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1681537751; x=1684129751;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Y2YebPOWU1AKbeUIaxSAasxQVn0uumixYChKM0jWLz0=;
 b=gKSabgnyjhooZFul3T8lL2HPpbvoo+I/l7jZ/S7xpRUZtbaNEc4eHceikQIZ7PwJxT
 f5y2cY6ysZH1xjmSWC3Qk2mxHAChxkDV1dY1Xhryc+Itgwa3Jpklex/QbzG43lBItIf/
 tfDxwkjOd/tEpszTToNrp7XlAXuBfesPMgO7g=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=gKSabgny
Subject: [Intel-wired-lan] [PATCH net 0/2] ixgbe: Multiple RSS bugfixes
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
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

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

Joe Damato (2):
  ixgbe: Allow flow hash to be set via ethtool
  ixgbe: Allow ixgbe to reset default flow hash

 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 23 ++++++++++---------
 1 file changed, 12 insertions(+), 11 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
