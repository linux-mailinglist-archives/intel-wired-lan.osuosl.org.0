Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE20BB02294
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 19:25:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85BA883D5E;
	Fri, 11 Jul 2025 17:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9kFuAH1A9Qsg; Fri, 11 Jul 2025 17:25:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7A2583DF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752254748;
	bh=jfyUnchmurLz1khxJs7qXQs+Ki3xoGdfSQZZJx02gkE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iAGX+Iak80NVB+nOVwgeSDfKXW60FWtSeiqcGb5Y0oKKvbw0FHBlY3O39K7nJ/jem
	 5abfr7OSlZRdCWHoNQ13rZIZyexaH3rShel2AGGKbgC7XdnPJPxhu9s/4Rl3ME6UGB
	 IXuBsH47qdq0eX7tHx/b2JM8ayqGLhSsYXDQTauCy8Arp7lGvq/RYuDMukRbh1UZhq
	 RCUfkvxRl3kwJUxvxRs3VEw22XAT+FyVT0OSQPEISkYhc8Rs/By4KdMSQx4aHu4dCz
	 52Ry2W3Z0xMjrNQTv85QY4nZhBYpvZx2GszpX1u16iLDt7y6nE8oIxlMoLcmRA81OB
	 1mrLB1G8N7IFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7A2583DF6;
	Fri, 11 Jul 2025 17:25:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 19F5F199
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 17:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BB84401EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 17:25:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U4cAYrnfLzlQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 17:25:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::433; helo=mail-wr1-x433.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 30C584017A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30C584017A
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30C584017A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 17:25:46 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id
 ffacd0b85a97d-3a528243636so1417232f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 10:25:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752254744; x=1752859544;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jfyUnchmurLz1khxJs7qXQs+Ki3xoGdfSQZZJx02gkE=;
 b=XXKLhtPzYtweb8dqso8CJsqvh+AEiNqzWQZP+3pYRe5PgaTyRxfrObMZyzinLA31G2
 b/PB17lOfC1NG21gAlY9fh3PeREnbm9Xee7VZVgjKyCSnJ74Ywf4nE87WluH+4tIBPoa
 zTXP3lNp4GC+emp8hVCJhVG5unLxuFttRZJ3bU6us8Pz9LwjYYZWYPht4D9YZGB0jEp7
 OzkpxLfJ6vKXO+BXa+9NeA2a8n9UAi8fCJoALGqn9x4IvhyojKp6T0khzlqW1ZKNkgy6
 c9FA8hrm0a2du8mEQjniDHCTAQdfuBbRimIlzdZm4MwjRTntEtz6vehTFqpmq3/q6K7j
 jfSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVO1bc7+M7yBWyw5Zol3MNnD8Xf6HCuQW65hEfujPrwAGyb34brJvmRneh/cQl0S+20qACzZ+Cw4WPu857nOCc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxmwLgubXqNuSq9fuvCxGJEgq2zoDPn2Xy3u84GEhC5VH3t9Eh2
 OO4GYMCu/2XqKrpSIZ101s+USfL+MkcKvt6NzUWGzmY0yg9TDwwleVKq
X-Gm-Gg: ASbGncsKNo0QNVzmtd35xe2ZqaMHzCNnJNd46lTnp2oqfAg6PelI7RStBC3lsTl37B7
 v6BTt8McznTyJZGfM/MgIzJlvcr2+AcV11nf0ZH14rIRE6wJEnXbwt/YU6gMZM446vfOEQtryDZ
 buR/RKwiNbd0X+ZX/1MJzouWJaCKMQCPND+3e00jWpyzIu/A/NmMeBk4+COiw4RDJPdrk1fgVd3
 PVQEnfXQ1zEukN78C1H5DVoKXxophN3Byo1i6C1HMs2B0JTuhDfDz7ffT0e0Eq4i+Ad+8gWqT9+
 Le0H1NwxHqm1zOvqJ8vcTZ+3ckUc36TshLnzKCMgcafF5M1NPZEkuS1TcpVOysz1RkMw8tJxoy0
 Yw32E11J0Fur6lOuDaK4H5zJ1ga6e6vXmt3fGf3MG2AktiXGEXqshLA==
X-Google-Smtp-Source: AGHT+IG/hAmjRRBm8w4nMagkHAbq7WL27iYrMNEADPLc0KT2RVh3CY6J8usCAztKazfOKM2CUkv3DA==
X-Received: by 2002:a5d:648c:0:b0:3b4:9b82:d431 with SMTP id
 ffacd0b85a97d-3b5f188062dmr3604189f8f.13.1752254744070; 
 Fri, 11 Jul 2025 10:25:44 -0700 (PDT)
Received: from pumpkin (host-92-21-58-28.as13285.net. [92.21.58.28])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3b5e8e0d5f5sm5038049f8f.56.2025.07.11.10.25.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Jul 2025 10:25:43 -0700 (PDT)
Date: Fri, 11 Jul 2025 18:25:42 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Message-ID: <20250711182542.056ae1a0@pumpkin>
In-Reply-To: <e199da76-00d0-43d3-8f61-f433bc0352ad@jacekk.info>
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
 <e199da76-00d0-43d3-8f61-f433bc0352ad@jacekk.info>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1752254744; x=1752859544; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jfyUnchmurLz1khxJs7qXQs+Ki3xoGdfSQZZJx02gkE=;
 b=kZdxVzLfJ5Mfd+mQ/PcE3qTeO1QT+S5qq7Zdnmfa8sfwb/zFEDj8wLfr4lpf8psS/w
 yfLm/8gajrUSY4YGxmWRG8pLb5Jdpxg1j6oqwG2Fq2eKWr72+o9TjWA1IEitl0jHVca7
 tpn0HWW+bSD0vVp6QEL3IJkQWNBr5cYglldiz9FRbN9oIyq3MxrWnxc1trDJ0JZZYD7w
 2CMDhXacQjDVMrBp+3crUgUZZNF2pbbZ13EImJx9SzWPLmSJfIQSfjf9JmAzjpGwwh+u
 yTiyYCEsm4+/h6ExPD4cgHcid4Kd4nad+TXfl97JLqtYLOytVEjmjbYVAXKTgRZ5dEkj
 uBTg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=kZdxVzLf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] e1000: drop
 unnecessary constant casts to u16
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

On Tue, 8 Jul 2025 10:16:52 +0200
Jacek Kowalski <jacek@jacekk.info> wrote:

> Remove unnecessary casts of constant values to u16.
> Let the C type system do it's job.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

Reviewed-by: David Laight <david.laight.linux@gmain.com>

For all the patches, perhaps changing 'unnecessary' to 'pointless'.
All the cast values are immediately promoted to 'signed int' and
then possibly promoted to 'unsigned int' depending of the type of
the other arithmetic operands.

> ---
>  drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
>  drivers/net/ethernet/intel/e1000/e1000_hw.c      | 4 ++--
>  drivers/net/ethernet/intel/e1000/e1000_main.c    | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> index d06d29c6c037..d152026a027b 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> @@ -806,7 +806,7 @@ static int e1000_eeprom_test(struct e1000_adapter *adapter, u64 *data)
>  	}
>  
>  	/* If Checksum is not Correct return error else test passed */
> -	if ((checksum != (u16)EEPROM_SUM) && !(*data))
> +	if ((checksum != EEPROM_SUM) && !(*data))
>  		*data = 2;
>  
>  	return *data;
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> index f9328f2e669f..0e5de52b1067 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> @@ -3970,7 +3970,7 @@ s32 e1000_validate_eeprom_checksum(struct e1000_hw *hw)
>  		return E1000_SUCCESS;
>  
>  #endif
> -	if (checksum == (u16)EEPROM_SUM)
> +	if (checksum == EEPROM_SUM)
>  		return E1000_SUCCESS;
>  	else {
>  		e_dbg("EEPROM Checksum Invalid\n");
> @@ -3997,7 +3997,7 @@ s32 e1000_update_eeprom_checksum(struct e1000_hw *hw)
>  		}
>  		checksum += eeprom_data;
>  	}
> -	checksum = (u16)EEPROM_SUM - checksum;
> +	checksum = EEPROM_SUM - checksum;
>  	if (e1000_write_eeprom(hw, EEPROM_CHECKSUM_REG, 1, &checksum) < 0) {
>  		e_dbg("EEPROM Write Error\n");
>  		return -E1000_ERR_EEPROM;
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index d8595e84326d..09acba2ed483 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -313,7 +313,7 @@ static void e1000_update_mng_vlan(struct e1000_adapter *adapter)
>  		} else {
>  			adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
>  		}
> -		if ((old_vid != (u16)E1000_MNG_VLAN_NONE) &&
> +		if ((old_vid != E1000_MNG_VLAN_NONE) &&
>  		    (vid != old_vid) &&
>  		    !test_bit(old_vid, adapter->active_vlans))
>  			e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q),

