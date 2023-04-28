Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D956F1FFD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Apr 2023 23:13:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EB6442749;
	Fri, 28 Apr 2023 21:13:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EB6442749
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682716405;
	bh=WFUgy8wCjuukdfTyfshj/qsQ32oYOcHa0ABMjWIo0/4=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VX+bUO6gj3uQVUjh+QjvpIRWbgNshGuX9pen2VPT6g3zY4Y62BHwPnw5tBHc1wXXE
	 UbwMDDXpHCtLW/Z+NXJ8yuL1ku6f2N9Od20YkaghyEKN1htLVuenp8J8FSEGbUw9L1
	 AhYhZiF0wZcmXAxFfbNigy/C3LrUJpIJm1gqoZx3TbpQm3we8sbOTr5FGJtqwAtSyi
	 04Q2J9iVLFQx00LxVJLsQ1ZZJnX2wpWeo7J2hJWWMX5G6FpbMYt75ysnK/qXn2cFx8
	 UwOXcHbKx3QtGik1fmyXarSiBAHnAUJnq+AKL9DVBhZsOefOAkLgx2pRUnz9RxPp1r
	 x4iyxP/BxWKWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rMGxfCsHwfVt; Fri, 28 Apr 2023 21:13:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D850941FB5;
	Fri, 28 Apr 2023 21:13:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D850941FB5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B8E8F1BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 21:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A1116FF01
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 21:13:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A1116FF01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P0_o_5ZgxC04 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Apr 2023 21:13:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC90860759
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com
 [IPv6:2607:f8b0:4864:20::a33])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC90860759
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 21:13:17 +0000 (UTC)
Received: by mail-vk1-xa33.google.com with SMTP id
 71dfb90a1353d-44035aba96aso97023e0c.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 14:13:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682716396; x=1685308396;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YyQJ8dypzKK5h+s+LHP6pXUcDAgTp/jCb6ye+VF9RoE=;
 b=KpdyGZ8tIFNN7M4gWGtNrGXIT+0clHvp5ZnoBIR/k6x2z+jrPgdXfvyG33WDn/VJWc
 PqMow79HXZNjJzPHpXd13n9zm+k7oKq25uVF1w8Q8BLXVjXchZ2rRIhPSDGc1T2+SPDQ
 8cmPUiQRmY0g6Yl4xRXpOVCP2DHLHNMh8qHsvG1cE3VKQUeFn/4hHrLS7penACkFL3AA
 KjvyUVGL/3cMIa3/tAJ0UHIh7zfma0+Jko5UuzeiQXZ2zyEU3nBEQSjm6YRm1YzO0qs4
 c7Ae1bSPtUWcYOvJmkltOE9zHFWwLYQXVb2jrVNzuLh8Q72UJJwAzdduGqs8+NHlCzkY
 oD9w==
X-Gm-Message-State: AC+VfDxG8hgqngYA/W8gScjkVodTTx+ZGda78H12uSDT+QrhI7wOnjVL
 4CVL9vUtl+eS8fcoxaYa6HBEOqLWrXBxxSAu56U8j/cqCiM=
X-Google-Smtp-Source: ACHHUZ5KVKasKMrYCSCCphDNLwxEL99/kz7laLO0dDuWGjV2ZG7yMRBWfQ1fp//FspkqOvPgoVoqM7rTw/vi2S1NDX0=
X-Received: by 2002:a1f:d2c7:0:b0:3e2:ecf4:9f82 with SMTP id
 j190-20020a1fd2c7000000b003e2ecf49f82mr2738922vkg.11.1682716395974; Fri, 28
 Apr 2023 14:13:15 -0700 (PDT)
MIME-Version: 1.0
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Fri, 28 Apr 2023 23:13:04 +0200
Message-ID: <CAA85sZuTsq4cKMV0=pTP_=mgb5CxYXGxNDpmF1NCfrmpvCpJdQ@mail.gmail.com>
To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682716396; x=1685308396;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=YyQJ8dypzKK5h+s+LHP6pXUcDAgTp/jCb6ye+VF9RoE=;
 b=eSvmsiFH6KlTVHrjqI9phP38uwsj22fUyLFcLs/6hSsQuyaEyoShcd3FACUYlCAaQa
 hksSD2uItYUqXltP2CSm19itY8kQ3B2gr4fEExLMt5k23HEbou6aDKp2thl8ZmsFlstS
 BjmqxnjxxfVQLn0pM3JrINg7cq6i6dyR27cclYsbOgaE3fnWR3O3VNCcdR1YKXFaQ0ru
 oYIKokEfUhqSqdbb11KdeEKXm9d1zDJRfWT1lKxvxp9ZCbWnBP/jpVTmvRDODMDSMazR
 JnkGmWkBCygN736OnL4HaOFESUAC8mmQsOIobyv0kQJenqfdf0g9IbVN1iCsj1l/xGTi
 yzaA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=eSvmsiFH
Subject: [Intel-wired-lan] [ixgbe] regression: jumbo frames not working
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Since upgrading to kenel 6.3, I've hit an issue...

I historically use 9k jumboframes on my network as such:
3: eno1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP
group default qlen 1000

But now the largest frame i can send is 2030 bytes (ie ping -s 2002)...

I don't see any warning from the XDP subsystem so I almost assume
that's not it...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
