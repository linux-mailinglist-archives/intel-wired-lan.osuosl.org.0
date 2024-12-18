Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 266AB9F5FA9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 08:53:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 254D681FC2;
	Wed, 18 Dec 2024 07:53:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xm7BavD7mh8O; Wed, 18 Dec 2024 07:53:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FAB282045
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734508398;
	bh=QA7qYluRuUIa7usBURYUiloTnmBO9zMmnIOKmpkGqzk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cUYnmj7h1r8gRE/P8Ka1kWwRTUQqGHb8FuzFe/juIy6M3y+rKidAqnYcDX7OpSecO
	 mLrpTOwWUj1JDbJk32s7nR6wbdOhV5k2DP0XKMjNmhpAlmvCZybORVlYoXWh0sD+z0
	 a6pICvOKnyEyJcnrMQprafFEl3Jvfb69ksZHHURvToN0fhLa4QGBEDRpcdaLp0kr5r
	 qlJ4ZImNck7BYSFJO/0VaZH37hbqZV//6O3HKfJWD+Q0BRhM5Zv52YLrWklN8bg08l
	 OvWKQiTPvYhMouDp/uQFoMi2MvXtSZNryrvcKdB2JIZ1Rx+5vwP2IAPxt39AEaH3Zo
	 qU9/M8aynYc9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FAB282045;
	Wed, 18 Dec 2024 07:53:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B563DCE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 07:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9E6781FA1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 07:53:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AkJgduYldDHC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 07:53:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=acelan.kao@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8DC1381F99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DC1381F99
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DC1381F99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 07:53:15 +0000 (UTC)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id F41053F56B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 07:53:12 +0000 (UTC)
Received: by mail-pl1-f200.google.com with SMTP id
 d9443c01a7336-216728b170cso57821375ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 23:53:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734508388; x=1735113188;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=QA7qYluRuUIa7usBURYUiloTnmBO9zMmnIOKmpkGqzk=;
 b=vdGQGRUJDnZ9YtMiFmj0oaPbXoRHFb9XoykwYug1WY6kcizzkpLJ0ehtf5xof2vmGW
 Q27YxuUqjCWGgOM5ZSw/qMaRXWt+zrSECe1J0J44o8j/l9xtToRi4GFkCgoCyWSyppdc
 rHIklOQH+WTLY/RtYSt7S4xIZ22rjEZtb6Oe6st2qSzHqWNObU1/zgng8noTHXc5ybbP
 uUe6NPvaZVC8eGZX5u3UdwQZP1BplUuF6hCivGGisAdAH5/R9f8v0glNopF1ZI6ksKkf
 caw547XGE/crTJlXs6Ffuq8Q8MFbgQzrf+NkB851kRSP6L33/kTSr9hl4RBxUDz9DPeQ
 g3IQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUoQOrNLNlZD36lygwa7AMwVsq0FAkXgpwxtlqoO0M0LnY67WVFeGi4R3zCATSAKqL3diTEIjNnD4cLt7jf9D8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxRPYXqF2FkXhWbeoFlvG8G0xWF8IJ7m8voLNOVgiAlkxTk7m/c
 7/BLVXEnHqcYi0rMYIxsRGkPRqnQJLTzxGfZetERnvBTblsSmpzqeLvTcH8KqnLPsQzGiOvDwbQ
 WmrCiQfOF1YPlLcReP+1xmgC2n58kEve20XsWkon90BSTqHrmSQXyBQr0hvFJnjJe7EnYkfRhqt
 Xr/TyKFNg=
X-Gm-Gg: ASbGncuQs76rVF6SMHHkcvd0sS2n6115ICkIU7eOSKzui6XJ2agVeJaOcmYv1EuhcXq
 LI9ZAzbH2nSeDDhCGtj6j7799JpvFu1efk+WxalYaPnuJH6FH9FM3kuSK3JT1Cem1TyxNVI9lr6
 An0PBwqOTET17Vzn1P3DbBmSHYxQpJgW6yQ099l28s+9/cFdzipH94Od79tUat9qOoWsikDWyb3
 EZVneelEHoqWIzrx5SOajBacARa+4FZjZodJiWseSBrNV07BauVZL7b8VSFMtDr5SieRyOIIklG
 WTN2ZHRWjbCXyVxzDISR1GncRsdgy0Y4AmA=
X-Received: by 2002:a17:902:e5cd:b0:215:a434:b6ad with SMTP id
 d9443c01a7336-218d7232943mr25584175ad.33.1734508388468; 
 Tue, 17 Dec 2024 23:53:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE8buoRwWFzglreuoOoKDyupa7wxpFqo9x1eMl1ZfFbJ0E6MvUkTFSZN2/LUGq0kuulji31iw==
X-Received: by 2002:a17:902:e5cd:b0:215:a434:b6ad with SMTP id
 d9443c01a7336-218d7232943mr25584005ad.33.1734508388127; 
 Tue, 17 Dec 2024 23:53:08 -0800 (PST)
Received: from acelan-precision5470 (118-163-61-247.hinet-ip.hinet.net.
 [118.163.61.247]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-218a1e500a2sm69929225ad.118.2024.12.17.23.53.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2024 23:53:07 -0800 (PST)
Date: Wed, 18 Dec 2024 15:53:00 +0800
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: En-Wei Wu <en-wei.wu@canonical.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, 
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, vitaly.lifshits@intel.com
Message-ID: <rdwtgcpvchdejucyraohjm52sqyhqm23sec6omkbys6wrxaslv@tspjghkgsx2m>
Mail-Followup-To: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>, 
 En-Wei Wu <en-wei.wu@canonical.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, 
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, vitaly.lifshits@intel.com
References: <20241218023742.882811-1-en-wei.wu@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218023742.882811-1-en-wei.wu@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1734508393;
 bh=QA7qYluRuUIa7usBURYUiloTnmBO9zMmnIOKmpkGqzk=;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
 Content-Type:In-Reply-To;
 b=jkzayl4J3zUh3FSufL6yeQvLqCVJaWcbfJmp5XChyENF1ln+0PphfoLmWps1tSIXG
 +h9SPNiByF0Ym7phNAU+KrRJEki4MIRFts+su6POQ3MBiSghNhhVrdKblSNoiuhDHw
 lD7JyxX9VRUIBYgjcPBZI4xi1rh4c9VpnEo9GruTbyJspJiHpEEmIEAv3Jrdu6D1kp
 CN/b7Vd3/qXQnHyn0C3CnOmo4XPbgg7oFw4QbbtsyQqtShbHEFVPMynh3gDuRBPiY/
 DbtxdC6ulAUQYsMeGQU2x0kgnPkIiPfvzvM7JnSw/Jpd629zLh3CshdAx7ELNx2yYX
 1Z4e57jza57Iw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=jkzayl4J
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: return early when
 failing to read EECD register
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

On Wed, Dec 18, 2024 at 10:37:42AM +0800, En-Wei Wu wrote:
> When booting with a dock connected, the igc driver may get stuck for ~40
> seconds if PCIe link is lost during initialization.
> 
> This happens because the driver access device after EECD register reads
> return all F's, indicating failed reads. Consequently, hw->hw_addr is set
> to NULL, which impacts subsequent rd32() reads. This leads to the driver
> hanging in igc_get_hw_semaphore_i225(), as the invalid hw->hw_addr
> prevents retrieving the expected value.
> 
> To address this, a validation check and a corresponding return value
> catch is added for the EECD register read result. If all F's are
> returned, indicating PCIe link loss, the driver will return -ENXIO
> immediately. This avoids the 40-second hang and significantly improves
> boot time when using a dock with an igc NIC.
> 
> Log before the patch:
> [    0.911913] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [    0.912386] igc 0000:70:00.0: PTM enabled, 4ns granularity
> [    1.571098] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
> [   43.449095] igc_get_hw_semaphore_i225: igc 0000:70:00.0 (unnamed net_device) (uninitialized): Driver can't access device - SMBI bit is set.
> [   43.449186] igc 0000:70:00.0: probe with driver igc failed with error -13
> [   46.345701] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [   46.345777] igc 0000:70:00.0: PTM enabled, 4ns granularity
> 
> Log after the patch:
> [    1.031000] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [    1.032097] igc 0000:70:00.0: PTM enabled, 4ns granularity
> [    1.642291] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
> [    5.480490] igc 0000:70:00.0: enabling device (0000 -> 0002)
> [    5.480516] igc 0000:70:00.0: PTM enabled, 4ns granularity
Thank En-Wei, this is a good fix.

> 
> Fixes: ab4056126813 ("igc: Add NVM support")
> Cc: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> Signed-off-by: En-Wei Wu <en-wei.wu@canonical.com>
> ---
> Changes in v2:
> - Added "after" logs showing improved boot time
> - Fixed error code (use -ENXIO instead of -ENODEV)
> - Added error propagation in igc_get_invariants_base()
> - Added Fixes tag
> - Added [PATCH iwl-net] prefix
> - Changed original author from AceLan to En-Wei
> 
>  drivers/net/ethernet/intel/igc/igc_base.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
> index 9fae8bdec2a7..1613b562d17c 100644
> --- a/drivers/net/ethernet/intel/igc/igc_base.c
> +++ b/drivers/net/ethernet/intel/igc/igc_base.c
> @@ -68,6 +68,10 @@ static s32 igc_init_nvm_params_base(struct igc_hw *hw)
>  	u32 eecd = rd32(IGC_EECD);
>  	u16 size;
>  
> +	/* failed to read reg and got all F's */
> +	if (!(~eecd))
> +		return -ENXIO;
> +
>  	size = FIELD_GET(IGC_EECD_SIZE_EX_MASK, eecd);
>  
>  	/* Added to a constant, "size" becomes the left-shift value
> @@ -221,6 +225,8 @@ static s32 igc_get_invariants_base(struct igc_hw *hw)
>  
>  	/* NVM initialization */
>  	ret_val = igc_init_nvm_params_base(hw);
> +	if (ret_val)
> +		goto out;
>  	switch (hw->mac.type) {
>  	case igc_i225:
>  		ret_val = igc_init_nvm_params_i225(hw);
> -- 
> 2.43.0
> 
