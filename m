Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1AE690EDB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 18:07:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A12A4176F;
	Thu,  9 Feb 2023 17:07:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A12A4176F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675962473;
	bh=oW+pTYZkr4Rf7MprKAc+G51BK1vXXNc39qygZLsmINg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P7EwJwdUjD25M7xoS6CtgLGrzoiXVC0jGDQx7iv1YVQU/EB1sfoMJqD9rtfb2ONJm
	 rwFQndO9EzFFyV//JinpCW5+Tu8YwEoiC6/ZzatxIoLbku1ZZXNf/opTtrsFbwlL0P
	 UAa1bwOpwLWHCn/ZYrId7SvMBeyrHPCXalxhZ0UBvYZNxJ2aLFI6W8Ytszr4laVSCn
	 Kn4jDbIawkGQP5lcu1x4Kq8l010MmSjeye6Z6bRhHaItABnkk2jbvkd/sSlAbl7MCU
	 q++MgXDcFXks1AGVCpR6eF+dE2TNg+of7XSPqmRjCMT2pDYMlzr8qUHpNC3AAy+gSq
	 TSlPQzSy6uong==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hlb0W2ViEtgx; Thu,  9 Feb 2023 17:07:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A735041707;
	Thu,  9 Feb 2023 17:07:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A735041707
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 130A51BF96B
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 17:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF2A8821B7
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 17:07:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF2A8821B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5yd-rEpnGyov for <intel-wired-lan@osuosl.org>;
 Thu,  9 Feb 2023 17:07:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BD92821B3
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2BD92821B3
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 17:07:45 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id o13so2716127pjg.2
 for <intel-wired-lan@osuosl.org>; Thu, 09 Feb 2023 09:07:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xUosuIF6sT5guNvUVmM1J2U0v0EW8fMgv/3In3ljd+Q=;
 b=EuicG2Xmkssn62LnVMR4HcEbne71aSEihawWp9ndVt7BsPlkSJ7yfwyWFY+94SHfxN
 sEaQuXgmR0gU5rI56X4m534KSkFYaAfHqmMS0Q5E/CIveUtNjrHnz3rIHyyMdW1NR0xm
 dw4MFH4bur/KHkICc8hegVbYmysiVp7d9wiQvMt5FgwgBxWmkZWowaqhUWs4h1w98oWs
 KqflnCONGne6zCDAsKbXLv3WDIpMqFLFF8m0RIcpW8CNYhl+1DTPWXKVi8WdedP12StK
 gOlEHJnJMav4ZwWep1nVgWCL0nsDnzyiRCX8xbLcC0kjHz023Aq68seXlL9F7iw2ysoR
 gMuw==
X-Gm-Message-State: AO0yUKVI2Xqa0/rfISJXKHxfHRDM+caDZD8+FAnJSnn6vf/L9gkB1WKQ
 aqFWopdOvD0fvWjSsTO5TTY=
X-Google-Smtp-Source: AK7set/hs6ehC54fBLh5SB3HwfgV3uku3FUfIyro6MSNNzqA8SU2MLhqOTbKnngRHVpx/vntKyuRqg==
X-Received: by 2002:a17:90b:4a4e:b0:230:8f39:d92e with SMTP id
 lb14-20020a17090b4a4e00b002308f39d92emr14346783pjb.20.1675962464488; 
 Thu, 09 Feb 2023 09:07:44 -0800 (PST)
Received: from [192.168.0.128] ([98.97.119.54])
 by smtp.googlemail.com with ESMTPSA id
 i1-20020a17090acf8100b0023347886e80sm565202pju.16.2023.02.09.09.07.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Feb 2023 09:07:43 -0800 (PST)
Message-ID: <c3fc2a72a567e26613824001324bcac6fc8c3640.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>
Date: Thu, 09 Feb 2023 09:07:42 -0800
In-Reply-To: <20230209160130.1779890-1-larysa.zaremba@intel.com>
References: <20230209160130.1779890-1-larysa.zaremba@intel.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=xUosuIF6sT5guNvUVmM1J2U0v0EW8fMgv/3In3ljd+Q=;
 b=UQnllC1ZZ4jQ17yePRdiNfhz3zNiiVIDcQMgpV9o6hCkmYQZ7hMu4BMI/bRlw2hJBG
 naBcn8KX0IP2FEdzrGDktnanCLjjseYna0D5yipRJ8eVLjUR+BSbtHX/PE900AP74QSB
 UIMle0AZ/WH4FRjynkvks0qEAl2yyl+ILBP7M4/AUDx6ZS4WQQi5st3iIGWVN0tFA6OG
 +D3IP3sIiunuLeO3dktp18VGclAh0ORX4BmBA7V5IZuAJvU7f4ZWkQGhx+NIRHs+PDVW
 1SFInSe9TGL49be7SV8T1H6NOnWzABljM8CNdp/KoS24WB5q99ES7if2R/OlOiW0Y+3f
 p93g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=UQnllC1Z
Subject: Re: [Intel-wired-lan] [PATCH net] ice: xsk: Fix cleaning of XDP_TX
 frames
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
Cc: intel-wired-lan@osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2023-02-09 at 17:01 +0100, Larysa Zaremba wrote:
> Incrementation of xsk_frames inside the for-loop produces
> infinite loop, if we have both normal AF_XDP-TX and XDP_TXed
> buffers to complete.
> 
> Split xsk_frames into 2 variables (xsk_frames and completed_frames)
> to eliminate this bug.
> 
> Fixes: 29322791bc8b ("ice: xsk: change batched Tx descriptor cleaning")
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
> To Tony: this is urgent and should go directly via net. It's tested and acked.
> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index 7105de6fb344..374b7f10b549 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -800,6 +800,7 @@ static void ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
>  	struct ice_tx_desc *tx_desc;
>  	u16 cnt = xdp_ring->count;
>  	struct ice_tx_buf *tx_buf;
> +	u16 completed_frames = 0;
>  	u16 xsk_frames = 0;
>  	u16 last_rs;
>  	int i;
> @@ -809,19 +810,21 @@ static void ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
>  	if ((tx_desc->cmd_type_offset_bsz &
>  	    cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE))) {
>  		if (last_rs >= ntc)
> -			xsk_frames = last_rs - ntc + 1;
> +			completed_frames = last_rs - ntc + 1;
>  		else
> -			xsk_frames = last_rs + cnt - ntc + 1;
> +			completed_frames = last_rs + cnt - ntc + 1;
>  	}
>  
> -	if (!xsk_frames)
> +	if (!completed_frames)
>  		return;
>  
> -	if (likely(!xdp_ring->xdp_tx_active))
> +	if (likely(!xdp_ring->xdp_tx_active)) {
> +		xsk_frames = completed_frames;
>  		goto skip;
> +	}
>  
>  	ntc = xdp_ring->next_to_clean;
> -	for (i = 0; i < xsk_frames; i++) {
> +	for (i = 0; i < completed_frames; i++) {
>  		tx_buf = &xdp_ring->tx_buf[ntc];
>  
>  		if (tx_buf->raw_buf) {
> @@ -837,7 +840,7 @@ static void ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
>  	}
>  skip:
>  	tx_desc->cmd_type_offset_bsz = 0;
> -	xdp_ring->next_to_clean += xsk_frames;
> +	xdp_ring->next_to_clean += completed_frames;
>  	if (xdp_ring->next_to_clean >= cnt)
>  		xdp_ring->next_to_clean -= cnt;
>  	if (xsk_frames)

Looks good to me.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
