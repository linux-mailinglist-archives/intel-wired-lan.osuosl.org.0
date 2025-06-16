Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F29D9ADB592
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 17:36:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A713C80CF2;
	Mon, 16 Jun 2025 15:36:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kmny_ZHR969H; Mon, 16 Jun 2025 15:36:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B5AD80D3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750088166;
	bh=BRhhjNzBpPywHz29LvHHa//rV6tmBgWp6eivc4x4ByQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8FBBY41/EeeMXvel3OqHl+108G5q5GY9QQYuqN8EIxlMsb8CEWftTAe6Vc0znaAYk
	 GZ+Vum2dT9dNQxE02lCULS/GY/YRr2s5DuEfExKNe5iEN7IOhUbrm1jixuGXT/2Isf
	 kaPTX+Z5o4NTEUk/WWiNMbJkUaCrB/s0wIwQF/urfTm+nGnG/NVdlRvayj+GpjLvC+
	 4YQ00JdFOkc/biGAk2R+HZ10n5iSEh802c7PzMM1PkRzKPQGZ4aGp9Rxo3vc9C6vM0
	 acIthHsshyxAYfrsaEK2gPHKUSLhfrpG37Z+25tKe+2DMNELsi93TO2qdk3svI53gd
	 +w0AGhcfWU6SQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B5AD80D3F;
	Mon, 16 Jun 2025 15:36:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A47A9151
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8ACA5408DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:36:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N4YXIWvHenaH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 15:36:04 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32e; helo=mail-wm1-x32e.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B970940899
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B970940899
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B970940899
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:36:03 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-453398e90e9so24115705e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 08:36:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750088162; x=1750692962;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BRhhjNzBpPywHz29LvHHa//rV6tmBgWp6eivc4x4ByQ=;
 b=PmkjAOF7/+kMBiIipDfx0jr7X6tSWqh2v3Hd62J54bLvFVruqQ7OmDdj3E0F5YM4z5
 VHkUSSg0QOI952TQ+3hkoCztRC4tGUsnsF9G0mpEWSVPSM/6MXikW04bUUvyF2y/7j+3
 qqmYM7yvc+zcgIjaLg9m+3/3i0uqKN/mLLL9CIXoKGFOiDKd32W0fC9b9S+ox0sNWoPN
 AfQlvE6kzfRzahapvYVoQZocjAI3b3xEd8zHqjDYXlpI5ac1PW/8VLO6oBy5VOkxl2Um
 jgLVhArXK7+KwMSWVx+I+bbpG4wkiq+l5bWw9tqmp2nWEbfOlb4eVPNYUeF+uHj332cJ
 eFZw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUck//ckaK4gXOTh9rzYRZwQBbK1jKk9uLJVMMY0lyFlndg9zRBvWdA7xcA8lNidmeVqc9TUb6gleRDO4MWMcA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz55FxQrddFFQlr7IKyVAgUL3QHRz3ttJ8UiYLJddyD4tvO0v1R
 GyQzHMlG2ReUQYDWtgr3n4JxjM3XF6zZp4QD9m7kQiwNXOBSpOLBv6uhCjDK9rlM2KI=
X-Gm-Gg: ASbGncu0CEVw0wAVtYpZNwl8QqC9rjW5CWm4DdlPx4KjEL3osZGI5cbP1oKZAa+tFG5
 MhZGyvz7U/MDlinsRNZXABaYjseW+phtP8KCHfRB+DiKnmOr2uuM9yqmLiNQNAGZ5k0j6VeHN1l
 q0vVurLzA4QMVSwTLF59e2uG6zQERR936drCtoYoTcvXLKllk66P4+SOxpqNPf6aMVv24p7Xbtk
 k2D54V3+CwsburTSW5Mvy5XVv1TAdQd/IQgK8Qr8R1tXYjcnvNMyeeCXYb5kNeiGJKej5+I3Cl4
 uW+l3MSxWPW0lYzua02+LJes1Sx6H28eN4i2ZxX1wB7si2wI+pn4mCnL1D2MnpkdLnY=
X-Google-Smtp-Source: AGHT+IF/AJ0JSg6FcfBnP2RA68y0+f7I5WJcx4QXm83I71RwvNucpNeyvaBiE1GS+rUfNOA8YZy82A==
X-Received: by 2002:a05:600c:6388:b0:43c:f513:9591 with SMTP id
 5b1f17b1804b1-4533d49b94amr93119405e9.14.1750088161814; 
 Mon, 16 Jun 2025 08:36:01 -0700 (PDT)
Received: from MacBook-Air.local ([5.100.243.24])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4532dea17d7sm146441245e9.10.2025.06.16.08.36.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 08:36:01 -0700 (PDT)
Date: Mon, 16 Jun 2025 18:35:58 +0300
From: Joe Damato <joe@dama.to>
To: Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aFA53oKyldNcugoA@MacBook-Air.local>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net,
 netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250614180907.4167714-1-kuba@kernel.org>
 <20250614180907.4167714-8-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250614180907.4167714-8-kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1750088162; x=1750692962;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BRhhjNzBpPywHz29LvHHa//rV6tmBgWp6eivc4x4ByQ=;
 b=wfvr3HRJGUxX/o5IAY642YYzULOx/tTzCU6OqVnPQXJcnYaAzTCUpOrRBoyu17cIaL
 RgKJIK5O/ofYB/ElqUt7rp5AI3DSatYCUwfis6sRLWyI0MsccNKV3MkRey9hbs8ck+0S
 Pzj7iym9D7wbpCPauiQeXVH41jnJoGyp93Lnn4fxgzs4Z/OUhkJL5vdJ/g8avpWh6R9L
 83RUa82kASr3fpFirqgzMZk1O9CfxfCWj6+u+6+AJ3wVAVjNpsmkkLjJN7Z8liqAhbpZ
 3Yiphioa89WGFXLM+F3HIJVo3xpIwnZW/CoTNjsw00snN6jYR7TInBSla4Rv73Qk85rh
 g4KA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=wfvr3HRJ
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 7/7] eth: iavf: migrate to
 new RXFH callbacks
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

On Sat, Jun 14, 2025 at 11:09:07AM -0700, Jakub Kicinski wrote:
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
> 
> I'm deleting all the boilerplate kdoc from the affected functions.
> It is somewhere between pointless and incorrect, just a burden for
> people refactoring the code.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 52 ++++---------------
>  1 file changed, 11 insertions(+), 41 deletions(-)
> 

Reviewed-by: Joe Damato <joe@dama.to>
