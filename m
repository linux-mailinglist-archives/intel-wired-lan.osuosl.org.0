Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC67311AA6
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Feb 2021 05:06:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4BF46203D4;
	Sat,  6 Feb 2021 04:06:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vi2JM5WZq-aZ; Sat,  6 Feb 2021 04:06:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F290520404;
	Sat,  6 Feb 2021 04:06:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D0551BF59A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Feb 2021 04:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 585A381AC0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Feb 2021 04:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SJ0a6L0eBdg2 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Feb 2021 04:06:33 +0000 (UTC)
X-Greylist: delayed 00:29:17 by SQLgrey-1.7.6
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A546687297
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Feb 2021 04:06:29 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id z22so6606731qto.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Feb 2021 20:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=coverfire.com; s=google;
 h=message-id:subject:from:to:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=fCYbyJiau8eYKEiT5Ul9Gu2ILhXQXzX0HPM30FeQ8fI=;
 b=ZfQPGyD+0cLCPAYI9LKSO5y/vqSzeUQoDfsNIQGlRZPExy9JPHzyEKcRV/9T0VZkxo
 sm6N/YDm9Zty3WHlkx6IWDnEGiTWqdyD5wGbRa+m12JbWWlRzDcEDPUxQSPhOQ0hXots
 f3+J2oQzefynp2BVwqbz4ukhOiwiUVJsdrd7tiBGNlevi0ZpeyNPaPcfsnvukmAyswpl
 CVCdy5/QRJef6plpVFnod3i8CY0ULEsCXIgPIb2HLrX2F1AZMw9iMzBJ+MqWjfBhQ/is
 HE2eeo94nbGsfQH2lgRsOzzyIA9a4psIkWZXKc8YGD3frkUWIXsQXLGzjiEx9nRVOhF+
 ZTEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=fCYbyJiau8eYKEiT5Ul9Gu2ILhXQXzX0HPM30FeQ8fI=;
 b=V50JF9FUbVSzLXU42C1jR8MZQphOXz5gTHcwnu6R448h1kppgzjd5NQppg9iZoqzN/
 ZhpUahi/DzizbiH6V9Vj9aoeuW/QRXzxXChzM7WP5VmQFq0DLiys3En6Cy+v8S87zKih
 MMxhWDFAEYXis7SGCuQaaJEGnIfrCELOFpsNyVvWfsQDSGzhVRJwWMh4bs757BlDCPXn
 AhtPcpM9DrNaipD5EvI7zm+JGVzhchxsjen06pba3YC78YlzwMiKFdviqHt+3kcNbPXl
 uipygQJtY0+8RXu8bxZcJOXu0Fm+TS0mnBNKerxvUvJmDMaXkr2Vqyjk4bYzA7M45Czi
 UE2Q==
X-Gm-Message-State: AOAM533EgTJ483/zytg1G0XjaCdA5XvfUedXooTSkZ5H8z4sTysFFH8R
 Tn1no7p5UEIbePs43/tu/cR1mAN2y+qMDg==
X-Google-Smtp-Source: ABdhPJw2sI3qKEzYLlzzQEp3LRLMRylncue/IM5tt8jPzbT5q5CWyfTaSeakSnHU2mJf5FgSpv4wWw==
X-Received: by 2002:ac8:7453:: with SMTP id h19mr7208371qtr.354.1612582631052; 
 Fri, 05 Feb 2021 19:37:11 -0800 (PST)
Received: from ?IPv6:2607:f2c0:e56e:28c:b8f7:fcbb:9172:cd19?
 ([2607:f2c0:e56e:28c:b8f7:fcbb:9172:cd19])
 by smtp.gmail.com with ESMTPSA id 9sm11037010qtr.64.2021.02.05.19.37.10
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Feb 2021 19:37:10 -0800 (PST)
Message-ID: <fc55ca6fb012c9e36e53d2ab80d47894c38e85a8.camel@coverfire.com>
From: dan@coverfire.com
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 05 Feb 2021 22:37:10 -0500
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
Subject: [Intel-wired-lan] 710/i40e, RSS and 802.1ad (double vlan)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When receiving 802.1ad traffic, the 710 puts it all on one queue by
default which limits the scalability.

The use case I care about is simply skipping both VLAN headers to get
the 5-tuple and select the RSS queue based on that.

I've tried to find a way to do this but have failed.

Can the hardware do this? Would a DDP package be able to do this?

Pointers appreciated.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
