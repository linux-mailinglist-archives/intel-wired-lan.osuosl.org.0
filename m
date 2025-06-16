Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C17BADB540
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 17:25:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1D79408DF;
	Mon, 16 Jun 2025 15:25:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KD-LRtNiVtSM; Mon, 16 Jun 2025 15:25:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E80D140561
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750087546;
	bh=kHuEtxvP5CQwH09EDUcVI9pu4VR3Rvg+g2yAszHQh0A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pgFU/QD9QSfXOC0jYl7Ti49uFG9Rf1orDEO5sraGFiV+fxpYN/kXlmnIgQa6RLPRX
	 D+7xuz9GCcCuZG9BwWVK5zEc6OYZ5PWikDxS63DYqWlg7pNT6KRnQc02/z16x+NhaV
	 EE5dLwrYj+U67IblNkbRifO+occZAciUWQJSsL6RwzU3dbeh/UYNUDrWH8YfwzX2+S
	 9G1HN6tC1pkiyJ29X/FnQ8fP+TqM/QhVLaUbZH0ZKBn+nn05PukXrJNSbaFnUY95E/
	 1xEMzLs6yOFpN3y4rse2w6DCQfYAqtKkoihYP5WKQp8pfL9+RsA11YdW41mh/bVJLp
	 BtQcqWPVYoWKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E80D140561;
	Mon, 16 Jun 2025 15:25:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 045841A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E98EB606EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:25:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PK9GNMAoFgs8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 15:25:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42f; helo=mail-wr1-x42f.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 111A36068D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 111A36068D
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 111A36068D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:25:42 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-3a525eee2e3so3619947f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 08:25:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750087541; x=1750692341;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kHuEtxvP5CQwH09EDUcVI9pu4VR3Rvg+g2yAszHQh0A=;
 b=pjqaxOkFrf7p+Bls2UNmsNX1yeP+LD50B2hqq7ECsf6ZtvHDBvwJc91buLz+M50KJ7
 NrSCMWyCqmpdBSG6/2+Zk+6ViYmE15bPK+n/jPgn0MH82pH9XGO9K861YN4PBuNEkVuh
 lVOj2BfJytOdTGMVBSRAo9IhhodAqN2HAq31vkpeSDBZ4bk1BBGWQ+/j0v9706dP+Chy
 qA/ECLfNBzCIFSdk6dTtOlq9ww3gr5MqcFA2nBQ0VTpAPQNWrXHCaIjI7h+KUcSY7Ds/
 YPg69TooTw3+KBSiyTPHwnx9VsD2OVhfmbkyiO1hjlNH2QNTfpZOLax47+1erQgDByqP
 naWA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU+5JQsX0DrhBt/aRqy82bxcM8R6IevvPpKvDQH0GT8Rx6bMV8tMq2euXN1zAeMgW7/ys2GUlAe7j8aIGIyHsI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YynufhxsBcIlYmgfhi+4gy8BiYAVon83XKXou8Ei1RicCeSTR6V
 4U5IkrVlZOLgCJm+uS5NF0NcLfo7ao3KRGBmP3e3UHMlFg4h5P/emnoDWtnEEqrCtQs=
X-Gm-Gg: ASbGncuIOWkorn5ojwjVoHJUvuBXXJUg4pMAiQzLR+L6YnM1+m8YJSFfYIhVdpLkOZ0
 nwbzh/U5wOsd2kANXGYicJGmmn7sZ4AxpBAhFQoDOXW5Ns8w2ppaqvpMQBsNh2UjyYgx8UOGTFO
 teIof7AHyYBtcjA/keFKA9J+LNTKKl5XeRBKWOlb2NlrAGpjzuo5fg0a0SyKkdDk8iyZwbvB/Xw
 HVJgd8S4w/JFOpOHNJIgaB8LwpYcijpF3SqVOiWEg+/s9/LxDZcmyb6QO/ZzUPho+wcKKZbOu+K
 AnYaem0MmF/Q3slYAUbEmnxrG7BQVUueWMvG2IxcNcbWkFCsmv6CU3+/Nd5hJYDHjLsE3s1rahR
 42Q==
X-Google-Smtp-Source: AGHT+IEjdQ2eXcXa1tg11zwUYlrBcZhvY0FHRnP9f6gECsYozFCvtG8tbBbfziJjX0k7hPLCRfFRDQ==
X-Received: by 2002:a05:6000:402a:b0:3a5:2cb5:6429 with SMTP id
 ffacd0b85a97d-3a572e92000mr7965291f8f.43.1750087541046; 
 Mon, 16 Jun 2025 08:25:41 -0700 (PDT)
Received: from MacBook-Air.local ([5.100.243.24])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a568b70d77sm11494831f8f.94.2025.06.16.08.25.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 08:25:40 -0700 (PDT)
Date: Mon, 16 Jun 2025 18:25:37 +0300
From: Joe Damato <joe@dama.to>
To: Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aFA3caDNfOaNVYM8@MacBook-Air.local>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net,
 netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250614180907.4167714-1-kuba@kernel.org>
 <20250614180907.4167714-4-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250614180907.4167714-4-kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1750087541; x=1750692341;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kHuEtxvP5CQwH09EDUcVI9pu4VR3Rvg+g2yAszHQh0A=;
 b=yA0509n31cF2l+LhZj49dGX+Jr2eRACPcsLQBACbKeoD6wyyFXoTtjliL9l7PjoYKC
 56YI+EUIJ34RsOACWAVyo8GbXdDOMIJeGezax5ZTq/+GScCMHfJWgMwm9Ih9cnTF4Rac
 1hU0b3e0UL2I4zA92HpokUPm6x09iJH1YjfPks+rjd4ptVAx238c6iHdnvBu43TR/BYW
 aKDXfPTqjaRxBBx8DZVbRJ/4JUeJ8aRvbpYFPYcWHn3wm2SUpxE4xifVDX4ledE87jym
 xHstTfeD+suO6Ur35f4CvziUhrGu5Qkm3dDGpmaxnOOyxtLtRWlhs4Z+yYfNztLFceLA
 7jLQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=yA0509n3
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/7] eth: ixgbe: migrate
 to new RXFH callbacks
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

On Sat, Jun 14, 2025 at 11:09:03AM -0700, Jakub Kicinski wrote:
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
> v2:
>  - add callbacks to ixgbe_ethtool_ops
> v1: https://lore.kernel.org/20250613010111.3548291-4-kuba@kernel.org
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 22 ++++++++++---------
>  1 file changed, 12 insertions(+), 10 deletions(-)
>

Good catch on the other ethtool_ops struct.

Reviewed-by: Joe Damato <joe@dama.to>
