Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1841AAE8952
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 18:12:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 714E941EAC;
	Wed, 25 Jun 2025 16:12:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yCXtF9L5vvO9; Wed, 25 Jun 2025 16:12:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E81D741EB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750867940;
	bh=ZSKrbExAoGwvgE3h5wZvMDKnEiBJEg6qC3SK4TyWodQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TABXywhscMTEMHSRNsD1NEmu8l+B8fP7JXdofn84vMZmgUxm8yWerA5ULKE1PSBum
	 b7v91GOlyUE0kxCbzSZ2Q1kU5S0rujhq53RxrRp8CkrUfluVkD6GPeRTQPyH0hL0mh
	 KIZqTrCNZgUqmlDPI0vZeWKoROfQn+17E7O603dsf0JnQqqiMumER1fdnEYNR4HeK2
	 k5kuZHhDNVtZjp2tjkiIgvX6purCJp3BLDH5uP4eFkfmQWKHtkQQ5y/XljzgINchAq
	 MkUNbpmq9yEuaB4bdNTh49p4KL4lq9c4wRHj0M8Ci6qxY5QmQiPJazIMpUefplHuGN
	 3omXaR9LmGSoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E81D741EB1;
	Wed, 25 Jun 2025 16:12:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CDDE743F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B504441F12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:12:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8LFfHmzKcjQp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 16:12:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::432; helo=mail-wr1-x432.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 089D74187D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 089D74187D
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 089D74187D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 16:12:17 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id
 ffacd0b85a97d-3a6d77b43c9so4088482f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 09:12:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750867936; x=1751472736;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZSKrbExAoGwvgE3h5wZvMDKnEiBJEg6qC3SK4TyWodQ=;
 b=qS90iAJp7u+dYJcgg6s+dK5Q/An+/oHFFoGV3518T0mVhxXajiwSyhtZ7Iv477ZhKF
 bcAPgFZxZmAXb/PSyVOgs8j/DJgqX+xh9FdYHI2MsXQPXb9u80KhAMhGJSurZA75tUKw
 foEiyavukU5zqnHv61TfuJNKjnwq3fphLylm1l4vJQxP8QAsbZolFXipsMcr3P7LdyQU
 NoK0Z+/SaSq221I6bvdZv2FGMfvKwDqYXAIBmsqzg21EhYSeNmpaqiDfses4WFPfyk1f
 te/yoPUgYnO4PKhcyzz3o8zA1chFMjVZsMryKonzn/o0TGeKKOgyXNb/++mBLCoHv3L0
 c51Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0W2pX/AN4ZbaRcMWLQcEy7K4TqPNOBROX/QtaavJcM8itBTJ90Po87vPou92lYSB63yvHWJlsKMZEnYZBz14=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwENXnX/VS+ZtLfPAI501lhkYaBRlTWYk8e+4vPq63OHT38pEEw
 21FQfNH1qWS8sFiYpTCdmbo1fKrv14nA+cGz1mSKhZTwDmFa6Cu+t/rb
X-Gm-Gg: ASbGncuq2CbdzVEEIUCH8NFResiiY/hPaPvgOrwyYeQZTJ/PKSf8Kcm1e5OsbDuJ7q/
 JjgAFHvVcfP9KfgKWUspcNI7IAihjGtiVvCo23rXjIBLJecXPc4KNddcAUT8Lyfb2DNP6fDa3EQ
 VIavEkpWK11oZ9bMdE6A9mnJNuagIVUJpIczxkPfuFkSisZBWyOsQzLLsnPFsJw8hXnTUTJqYEH
 LJrWHpZtyhgQNS8tWhjQo6aEI0LUL/KCkacrQNJS33c6YZElhIpPzh4ebPoIXVE97/RFxHQc5ic
 8YAd7w6BHczEZPePX8KfIamLC681S2NKkbVtGIYKq1hDkiDeA9r1bSGeNwSM3RrQl2yoStpvCAF
 hUBav3r8zh4Fm+Km66YDkJ2Pe
X-Google-Smtp-Source: AGHT+IH4lJNGPB4RyhVXajT2id0Stq+E++QsUs8QRfnl4dQOmic7Xc9jN2I06E6CUU2T/tXSzcE8NQ==
X-Received: by 2002:a5d:5f91:0:b0:3a5:2465:c0a4 with SMTP id
 ffacd0b85a97d-3a6ed5db111mr2968525f8f.20.1750867935704; 
 Wed, 25 Jun 2025 09:12:15 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a6e8114774sm5071397f8f.94.2025.06.25.09.12.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Jun 2025 09:12:15 -0700 (PDT)
Date: Wed, 25 Jun 2025 17:12:14 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: Jacek Kowalski <jacek@jacekk.info>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250625171214.5d752668@pumpkin>
In-Reply-To: <20250625122239.GE1562@horms.kernel.org>
References: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
 <5589e73f-2f18-4c08-8d10-0498555dd6be@jacekk.info>
 <20250625122239.GE1562@horms.kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750867936; x=1751472736; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZSKrbExAoGwvgE3h5wZvMDKnEiBJEg6qC3SK4TyWodQ=;
 b=GcEw5XGfAt/haClT4NO5G+p/4mahBoBXqroWMiriN6+nckatmSrXaAd6jULdCkGIhQ
 hH+apAmoujY3yuKkAzvfukbfeYgMZEQHLYEentexldBx1vGZPPzP7QT8Gu5OdA7S23S0
 jYlRD48CZkpaazFoAvYdztt36se8nxlsfNZNMJTaXKtBBvDUte7zHn9dr2RnVm/s5GI1
 QaeSIU5XnIAO2qWbSvhUqj5Q+oCeX7DUJBd4Dmi8tPe5uP4h42Ed9vaWap+yI7YiwciS
 px/T8HV4OkstHZMTDqz1nSqerRmvBi8OBEJiyTaorbGyRQpiFADrZ5YhJEfGgGto3nz2
 itAg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=GcEw5XGf
Subject: Re: [Intel-wired-lan] [PATCH 4/4] igc: drop checksum constant cast
 to u16 in comparisons
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

On Wed, 25 Jun 2025 13:22:39 +0100
Simon Horman <horms@kernel.org> wrote:

> On Tue, Jun 24, 2025 at 09:31:08PM +0200, Jacek Kowalski wrote:
> > Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> > Suggested-by: Simon Horman <horms@kernel.org>
> > ---
> >  drivers/net/ethernet/intel/igc/igc_nvm.c | 2 +-  
> 
> I think we should add this:
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_nvm.c b/drivers/net/ethernet/intel/igc/igc_nvm.c
> index c4fb35071636..a47b8d39238c 100644
> --- a/drivers/net/ethernet/intel/igc/igc_nvm.c
> +++ b/drivers/net/ethernet/intel/igc/igc_nvm.c
> @@ -155,7 +155,7 @@ s32 igc_update_nvm_checksum(struct igc_hw *hw)
>  		}
>  		checksum += nvm_data;
>  	}
> -	checksum = (u16)NVM_SUM - checksum;
> +	checksum = NVM_SUM - checksum;

Indeed - especially as the '-' code is really:
	checksum = (int)(u16)NVM_SUM - checksum;

  David


>  	ret_val = hw->nvm.ops.write(hw, NVM_CHECKSUM_REG, 1, &checksum);
>  	if (ret_val)
>  		hw_dbg("NVM Write Error while updating checksum.\n");
> 

