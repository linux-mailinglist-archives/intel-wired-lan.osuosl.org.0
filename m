Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA30AECBFB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Jun 2025 11:36:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AEEE60FFC;
	Sun, 29 Jun 2025 09:36:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x4uHl-ltfR1a; Sun, 29 Jun 2025 09:36:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D596261007
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751189788;
	bh=r7IZF6P2H3Qklyp7Y946TAOUCcx7EHumDWuBAo4Oo5Q=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3kwKKL6kxmodUoCzX5X0sWsgG0S/8KrS8UhFcYNJM+qOY9U3aPwttN29FTPS+vZGB
	 7F28wGPacYsk9I5mZERcce8JmLHWEw4eUwhfT/YfpMTBny0ip2xRrZdYF3Lc590be2
	 osNYSBcwpK9LVlU/0N2TsAb3bVx/yZWvr4w9JPCi8GOm2v7HVwN2gr/rGrVdvChmEZ
	 KdMW/qzl0N4HBLQVuqpC4TqYz4ixcadpOb15rEk+V1wQS2ITXtNAMAkZVyqITDlaPi
	 Xgu7b7/W3yN1RU7PgYPZ3hcqfP5KGlcFeMhX5DB/Jtc2kTnNIVtnar11uGjAPBRlFH
	 0R9qLui9oMeLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D596261007;
	Sun, 29 Jun 2025 09:36:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 772E0DF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Jun 2025 09:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68A7B40106
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Jun 2025 09:36:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MeIZDgD9VMvk for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Jun 2025 09:36:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::429; helo=mail-wr1-x429.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 24B654009E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24B654009E
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24B654009E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Jun 2025 09:36:23 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id
 ffacd0b85a97d-3a54690d369so1092509f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Jun 2025 02:36:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751189782; x=1751794582;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=r7IZF6P2H3Qklyp7Y946TAOUCcx7EHumDWuBAo4Oo5Q=;
 b=a5ykoXzZ93c73HaAUGR1tPsHgrJZx97mD7mDNe7rlOssGahI22QkKmCkAKGOfi1P6y
 2J9tkriQNG9nt9qUmmp7wbbtd3LK34i7auEVJiQTdbJlphHCLF7anBx1mvHoOFCW1AeN
 ENjIR7tGYpUCl8ee0YfRoXA2ynG07rDPXN7uTWltdK/akQsylubY14TU0tqy18Ki/wMU
 lmNOtJ9roL5B70Ada3C5rfRmcWVEKKnIhITEZDkYRhdQumUWnztOBB5pRE8MrS9nwvrP
 JCWZf/B6T9C24cGwL+s0qHbgQ8xCbfk6NjgpAOVFhpgNGomZ6P2CIcpoPnx98K5MU2Fn
 2txw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3WxzC1mr9iYpxyx3CrfsZNoZ0Bgfeoe6Cx0OwTqapgtYVGxPM15pN3/tQsJULIDr9S2uC6bSy8kuv9ZTfAZs=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw4LxW2DW/EeZcZGukf49yQrA7WHO+voj3STisem3xEKqJW0MC5
 Jg6gPzdkwlhOYKLZArOlrMQ8AIYvJ7UFKv23nfNxIiAO5ryU5QEpXost
X-Gm-Gg: ASbGncv8xSEWCg39t6mwEpzE3EUFGfFnN+RCmtof7qhHcGN2Wb2QJAyQLlxvSuq4D5x
 fYimZRd8QNAlBlkpqtFdSnEEq/JJYS5eje1r6uPhCVBaRuRgqJD3nHBjVERF4A2WzUP/UBwjesh
 gTwpsN3eRz6oQQ8GH1IwrHi2s0nVJMoKm7EAVb5h7A+5ge/l4kNXZWPKXa7stiVc1TIoLwyyQP4
 TXaLk7G02+AknXAqZBTeH0yHBUGK6xhDdqa393g71O2gHhIAZpWKmbiL3ARGXHT13bFGzu3q6Jn
 Zr+sG1qqdl5AMf5qMgKDryhZvpYvCAFHZueasa+8p5xvc4yXe/lKOqrdwkxD6w8d8DPUOZm7CGU
 eA3EQF9mfs2zVovSOsw==
X-Google-Smtp-Source: AGHT+IEOnc57iTWUFaDPB8HVttZZBXkGceicoCUz2ChQ8zSFsL0MhttY/Cd1T4mxAOtbASHj5+U7yA==
X-Received: by 2002:a05:6000:2893:b0:3a9:dc5:df15 with SMTP id
 ffacd0b85a97d-3a90dc5df54mr8669775f8f.13.1751189781866; 
 Sun, 29 Jun 2025 02:36:21 -0700 (PDT)
Received: from pumpkin (host-92-21-58-28.as13285.net. [92.21.58.28])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a88c7e7396sm7208499f8f.9.2025.06.29.02.36.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Jun 2025 02:36:21 -0700 (PDT)
Date: Sun, 29 Jun 2025 10:36:20 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Simon Horman <horms@kernel.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vlad URSU <vlad@ursu.me>
Message-ID: <20250629103620.186ea33d@pumpkin>
In-Reply-To: <613026c7-319c-480f-83da-ffc85faaf42b@jacekk.info>
References: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
 <5c75ef9b-12f5-4923-aef8-01d6c998f0af@jacekk.info>
 <20250624194237.GI1562@horms.kernel.org>
 <0407b67d-e63f-4a85-b3b4-1563335607dc@jacekk.info>
 <20250625094411.GM1562@horms.kernel.org>
 <613026c7-319c-480f-83da-ffc85faaf42b@jacekk.info>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751189782; x=1751794582; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=r7IZF6P2H3Qklyp7Y946TAOUCcx7EHumDWuBAo4Oo5Q=;
 b=iiohSBUtWkrB0YoUOg9Q7aFMfMuq7cvmWP1MvxPcoXVYkrArOJbvAFQ9iwQ4Z0z8sC
 mmj/7Dd03hCGmhNaoVfIbzrgEZyl3JXpIGsbc273iZ2xG/rV5p4h0yV6pkVieqcSROUo
 lcX5Kl50O4KkyXoJcO3Ps0QBDs1eA1tv46YOFXpVUBZHXICOj7tSFK35D7sq08o6gFtW
 CMbtN2GKJfBoxZ8oSCWwAJ1J+twZSmzUkoZMxRmOR60HROT44Q7vqkK9Ftutto4UH679
 pfXjb0726MNbkYnjL5YoLoKFacezC3Cz9e6jkg44U0Q5ky7DOWe/yKSHndesWZ9rITdu
 Rbig==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=iiohSBUt
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

On Wed, 25 Jun 2025 15:05:01 +0200
Jacek Kowalski <jacek@jacekk.info> wrote:

> >>>> +#define NVM_CHECKSUM_FACTORY_DEFAULT 0xFFFF  
> >>>
> >>> Perhaps it is too long, but I liked Vlad's suggestion of naming this
> >>> NVM_CHECKSUM_WORD_FACTORY_DEFAULT.  
> 
> So the proposals are:
> 
> 1. NVM_CHECKSUM_WORD_FACTORY_DEFAULT
> 2. NVM_CHECKSUM_FACTORY_DEFAULT
> 3. NVM_CHECKSUM_INVALID
> 4. NVM_CHECKSUM_MISSING
> 5. NVM_CHECKSUM_EMPTY
> 6. NVM_NO_CHECKSUM
> 
> Any other contenders?
> 

0xffff

With a comment saying some manufacturers don't calculate the checksum.
Then you don't needs to search the definition to find out what is going on.

	David
