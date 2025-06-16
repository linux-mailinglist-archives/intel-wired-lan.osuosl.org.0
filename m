Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 557CCADB552
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 17:28:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63DF140931;
	Mon, 16 Jun 2025 15:28:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Is9qZFbuKHTY; Mon, 16 Jun 2025 15:28:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E327E40921
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750087683;
	bh=EywZQByriqxyaKItN5w0ENYjV/SBb1jnJW8uecqoy3g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8KgCjVXkxgJ49VEZjhx7FcEzE9Bp/tOZhek+Qt/sGKNR6SSvPGfQu96MIkx2R3ScA
	 LJCV2nXx0ekQAkUo30oAzvXI8WGV3to0DfJxgrIo2TbLm8Dc36OrVn7b27encTtIJw
	 Fjf55AUBpnE0yoNpe3w7b59fDdVGR/rT/mtjYe3XT9QAx8pKS9Yk9RGennwrnmnUcA
	 zbWCbrcXAywlGAQwfiPR68jMf0/cHUdmK7DbSqlXEZfVnTB0RW1O7+cfkC4rd76dK+
	 bxTvMqTfqAhsI1we8JqLg78OL4GgD5PbOUxIGhZ2L2kSIvgtDTY6dcB4P/agtPnabZ
	 L/j1BMfSG6qDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E327E40921;
	Mon, 16 Jun 2025 15:28:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BEE0C151
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:28:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC0134088C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:28:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qt0OE6Oukdep for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 15:28:02 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 10360408DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10360408DF
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10360408DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:28:01 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-450cb2ddd46so26103905e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 08:28:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750087680; x=1750692480;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EywZQByriqxyaKItN5w0ENYjV/SBb1jnJW8uecqoy3g=;
 b=F2rE3feJIu8vHI29OODCVM7rSiFy1J6lpewbmpUgyczVsqhYIU/t3B2eqiubeVHCuU
 XAYPI6fzFi3z+3rD1X+Oaw53+1MQqyeTYfM+sYbkTeViTE92xKODaYDwHg9aj2yRCatv
 JNMhN7EwzwUJAkI0kVsZT5aWh1LicsjD7TbpjKaU3NZ1VCIp9x2k4PPE1m9VqCoNqKZJ
 ySkHW69tsNZ68hNJ0ouKfZyf7ZoYqKa922k0Yv8OlyPhtxDKqx2CeGAueI/gV/yJXgYZ
 Akh06h7cF0SPxjFayZzZO9uVwdkvOzhSPpbX6xBQRY2jbsT7cW+K/NOudO7yqf6FGQc9
 ZAbQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGbQFEyHImFTX91OgjYPYLHWERsM3sGYyJu1yopB1NvbGOLQjfk6keLJjyzFo9kE4Pbu26v2qDyBQQhinU8IM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YznkOvPx1eTlh4BAvJ84wBgAI6Cg8J5oTdyiC4/EXYllIiJiz3y
 yf9Dr7GWvZkWJkWdP163C9LsdTo5lerNTMN3j6ayBz76l+ORz7pZOBukLk/EqZv0O9E=
X-Gm-Gg: ASbGnctqbW4kA4rAEIfSiHN2V5xlSe2kOISheumQB0DkGaxTNhTc4RAbwhb3bEjACL5
 sJbcSe7+eHMVVd/5+K7wPYkcOjmPh3yb0I7mYOl1KLgWRFJKJnMQHW21k+i32BikrUdMGuSaEgp
 UugAn203DN3fM/q04jEZE0blBRNvtMR8tOdJfTxLzzf4eDoK4XgNf3DgrwVEDsyOKtYVgmZsIW8
 RL+/HSUeXW9F4JmlGl54qjXSYrPPKKNmyNpH2vxlft0tJpxladv22sr6FgtkWIvpIzzEp6oe+A2
 JGk20M4rF3ee6XPuGmF3uKRVYaqBxu1XaqOxfNejoG/BOeM3T5w0BJXJXfZzP7HezFw=
X-Google-Smtp-Source: AGHT+IFQ94WybWoeIXZsZB8kvlpjrnVoEs1KWw2ZohRTy2I4x2HUzm4lT9NO6WRU8shndKD74kYMXg==
X-Received: by 2002:a05:600c:1d01:b0:442:ccf9:e6f2 with SMTP id
 5b1f17b1804b1-4533caa6bb6mr91893515e9.16.1750087680082; 
 Mon, 16 Jun 2025 08:28:00 -0700 (PDT)
Received: from MacBook-Air.local ([5.100.243.24])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a568a6ee12sm11379533f8f.31.2025.06.16.08.27.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 08:27:59 -0700 (PDT)
Date: Mon, 16 Jun 2025 18:27:56 +0300
From: Joe Damato <joe@dama.to>
To: Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aFA3_EErsL_9lLlv@MacBook-Air.local>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net,
 netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250614180907.4167714-1-kuba@kernel.org>
 <20250614180907.4167714-5-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250614180907.4167714-5-kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1750087680; x=1750692480;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EywZQByriqxyaKItN5w0ENYjV/SBb1jnJW8uecqoy3g=;
 b=jdVToftV5KFzBqX87GU1u/PGwad7GDRyOOOYjztcyWlN1F6Ep8fyk/0cVEGrVccZ5m
 7o/9dcddhSCbWNzehxYm0XxoYVxSNShyBAqjpEdMfTu1UK3rn9eDt/8dIJ0bEzM1VPTO
 yFhmZJfTH3iSnJ8HL7vyvHvfUn41VUBTT/9XHYEeDvydLFgyvUrlenYtFEuNgduqHxGX
 mX0huTpc701XcVxWVGr8UaOb7M7xAxqwKqqBf575bKmfoXni3eIKJ1s3LGmiyHyLBVOo
 NABZUnc6FFfSYuoXCpGBVrk+/IA1+ZaMK9YTrAp/N/nhb1eEevxK1B6626nCfxNBiYjx
 rR0g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=jdVToftV
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/7] eth: fm10k: migrate
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

On Sat, Jun 14, 2025 at 11:09:04AM -0700, Jakub Kicinski wrote:
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
> .get callback moves out of the switch and set_rxnfc disappears
> as ETHTOOL_SRXFH as the only functionality.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 34 ++++++-------------
>  1 file changed, 10 insertions(+), 24 deletions(-)

Reviewed-by: Joe Damato <joe@dama.to>
