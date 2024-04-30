Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2328B7AF1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 17:04:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9202460AE9;
	Tue, 30 Apr 2024 15:04:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tSstyVCI-Sdl; Tue, 30 Apr 2024 15:04:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53C1F60AE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714489476;
	bh=RryfsKwkoJ4og064PT7Me18BR7NgaJrzwG96U1pN7XA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tg2rRq/lopBIDhgV2A7j4a8VMMHZVbssFxyxx9VLR+MaVAPyR19od5uwnCneJTa27
	 JZFkHNabG2h6Qkw6N7M3V/RHbSew96qVyyPiZlwMw+jCGfy2sCaNPAEg1cBa3xcoXJ
	 BB9iN3FLGeE93UPksjZwHhEEFALWVVKLSEunt33NDeZpPVoYgWSUvTXaulKvhxNu84
	 tO2uYwxNtcGuJpj/awxmcckytSLobAey1rD/ji5HZh6PpmF+2QtcWBhKslW5MhX5Q2
	 0cKh+QGFNK545Y/Kr1QjU31z39Hd5nqJ4MR95UdnRP1uMkz4D+sB2Gptn7osh/1ZPH
	 gPptRswnWpQyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53C1F60AE0;
	Tue, 30 Apr 2024 15:04:36 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5711F1BF3F0
 for <intel-wired-lan@osuosl.org>; Tue, 30 Apr 2024 07:46:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F43B400E2
 for <intel-wired-lan@osuosl.org>; Tue, 30 Apr 2024 07:46:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lKzOX3MoCWhR for <intel-wired-lan@osuosl.org>;
 Tue, 30 Apr 2024 07:46:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.48;
 helo=mail-lf1-f48.google.com; envelope-from=jirislaby@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4C701400E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C701400E1
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4C701400E1
 for <intel-wired-lan@osuosl.org>; Tue, 30 Apr 2024 07:46:02 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id
 2adb3069b0e04-5196fe87775so5934373e87.3
 for <intel-wired-lan@osuosl.org>; Tue, 30 Apr 2024 00:46:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714463160; x=1715067960;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RryfsKwkoJ4og064PT7Me18BR7NgaJrzwG96U1pN7XA=;
 b=jynt1LM0bvsAuNwRsQDp3ewVT1UzpRyCmNGy7efOD89MwgEMKzJhWpNQEloCcLL9aK
 D01bx9VwQquGde6c3fuIaRq8vMdv6N5MmpAeE8s/hShcLKFXeZL9WawIbiHZKO+H0bPc
 sVCb5QrE6ZalmSJ3DImzrIJCbOfjA09sY5EZpNWUmGOxlL1MUkB7ka+57pM9mrwg0u3O
 sUMxNrZJcb9dfBoucOdLOu9et4Kh1U/AzkD2zUFoYsrRqJVscT+Owbun25xDVA+/F5RG
 lzxpVgCPFer1TN6A2r2II0uFlJmHxcfUgced7jkZuus4cGQqpiZlhTG4Bq0eLwqn3Tsl
 6BAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUBHylS4UX0RE1ZtGlhSitBlj20B2yNHJ3++DPYkx62XKGlqMlzTixkrGElx3zocPfFWoTQIQlu62kORg2egtCeDDrrIAdIkqJ6CA==
X-Gm-Message-State: AOJu0Yw43tUELgvudmq+HPw5noeugmHixMj7ewbjmbltPzEWd8f5C2ZH
 +t3dwmR8vQ+TBqEIuPhOv7tCEiCkfVWH3DC/cjB5hBXgFAm354C0
X-Google-Smtp-Source: AGHT+IFacpuRcsVU8TXc8cAnRHAoDopFzfaKGaw+zc+WoEfa1XAVDWsqmBuBhEE4mn6N3n5nCAUK/w==
X-Received: by 2002:a05:6512:3f01:b0:518:d3f5:e6d2 with SMTP id
 y1-20020a0565123f0100b00518d3f5e6d2mr7483738lfa.51.1714463159655; 
 Tue, 30 Apr 2024 00:45:59 -0700 (PDT)
Received: from ?IPV6:2a0b:e7c0:0:107::aaaa:69? ([2a0b:e7c0:0:107::aaaa:69])
 by smtp.gmail.com with ESMTPSA id
 i9-20020a170906090900b00a55b05c4598sm10766183ejd.133.2024.04.30.00.45.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Apr 2024 00:45:59 -0700 (PDT)
Message-ID: <77518cf4-4f79-4772-b0c5-2cea589615d5@kernel.org>
Date: Tue, 30 Apr 2024 09:45:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <20240417190320.3159360-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Jiri Slaby <jirislaby@kernel.org>
Autocrypt: addr=jirislaby@kernel.org; keydata=
 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
In-Reply-To: <20240417190320.3159360-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 30 Apr 2024 15:04:35 +0000
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=kernel.org
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: change
 usleep_range to udelay in PHY mdic access
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
Cc: Sasha Neftin <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 17. 04. 24, 21:03, Vitaly Lifshits wrote:
> This is a partial revert of commit 6dbdd4de0362 ("e1000e: Workaround
> for sporadic MDI error on Meteor Lake systems"). The referenced commit
> introduced an issue on vPro systems, where disconnecting and reconnecting
> the LAN cable might result in a kernel panic.
> 
> This was root caused to the usage of usleep_range in an atomic content
> while trying to access the PHY. Change back the usleep_range calls to
> udelay.

FTR 
https://lore.kernel.org/all/809b5785-e65f-47f4-b52b-f9d2af0a3484@kernel.org/
elaborates on the stack trace:
e1000_watchdog_task():
    spin_lock(&adapter->stats64_lock);
    e1000e_update_stats(adapter);
    -> e1000e_update_phy_stats()
       -> e1000e_read_phy_reg_mdic()
          -> usleep_range() ----> Boom.

> Fixes: 6dbdd4de0362 ("e1000e: Workaround for sporadic MDI error on Meteor Lake systems")
> Co-developed-by: Sasha Neftin <sasha.neftin@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/phy.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> index 93544f1cc2a5..f7ae0e0aa4a4 100644
> --- a/drivers/net/ethernet/intel/e1000e/phy.c
> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> @@ -157,7 +157,7 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
>   		 * the lower time out
>   		 */
>   		for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
> -			usleep_range(50, 60);
> +			udelay(50);
>   			mdic = er32(MDIC);
>   			if (mdic & E1000_MDIC_READY)
>   				break;
> @@ -181,7 +181,7 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
>   		 * reading duplicate data in the next MDIC transaction.
>   		 */
>   		if (hw->mac.type == e1000_pch2lan)
> -			usleep_range(100, 150);
> +			udelay(100);
>   
>   		if (success) {
>   			*data = (u16)mdic;
> @@ -237,7 +237,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
>   		 * the lower time out
>   		 */
>   		for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
> -			usleep_range(50, 60);
> +			udelay(50);
>   			mdic = er32(MDIC);
>   			if (mdic & E1000_MDIC_READY)
>   				break;
> @@ -261,7 +261,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
>   		 * reading duplicate data in the next MDIC transaction.
>   		 */
>   		if (hw->mac.type == e1000_pch2lan)
> -			usleep_range(100, 150);
> +			udelay(100);
>   
>   		if (success)
>   			return 0;

-- 
js
suse labs

