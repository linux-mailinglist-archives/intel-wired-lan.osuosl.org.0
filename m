Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF5676C07A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 00:36:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CBBC81E38;
	Tue,  1 Aug 2023 22:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CBBC81E38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690929367;
	bh=IzeDXEGZ/aHc4D0gwqJJJaT9yBse7IFBhREijOVCm5c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=INxiw5Rf1LG+IX/XUmQ4LMcLjW+f3nMXvV7NKNLu9+KpPcD5kXMcJHnlQXdOKIkGT
	 zi0px3HHL5C/wJHzBQiClRB09HNhClGEDEjMFF9yf9inuL8cP+wf3iavpzyDOPmJtF
	 WDV/DJVWBLz8djbx1y7MCvt3icoBnlej2pkhtWQb+lojUO6YJzNV3TKT0mXid1e1wj
	 +x8hAl4/DzTZ96TKutNLzw1nRf/DaSZV7MYQyXeD3eleWPv4zgPvLL/gLL7/eHlYls
	 NfOUSpmbjPBMpz906wfMqtAE6usbYFDsxjH7ow9HTCI5+uLlKet/9DQnsDPlFk581F
	 LG+/Dl/85PBJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P8-BjKn8wSxE; Tue,  1 Aug 2023 22:36:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C39281D24;
	Tue,  1 Aug 2023 22:36:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C39281D24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 395401BF476
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 22:36:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CBF7040873
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 22:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBF7040873
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QwukdZDTn4CU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 22:35:23 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0387040899
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 22:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0387040899
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-1b8b4749013so49163075ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Aug 2023 15:35:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690929322; x=1691534122;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eoE3c8ICemots41uvNCVYms50IlLZwpK4rs4AeMXx54=;
 b=US36rQCXahK+9X7QeraxA3G9xKpFt4KL5aFf25wq3Po+Djk0c43wwSSIwRzEVDdeuG
 Z2TBxsTu/YRte3hwgo/txU6GBihPNw6cGDagx3cbef3wZ+HNwTOtw2WFEdB9JBqmsYCL
 QHW8xNheeVQucEI4fV2Npv1vXiPbtaRl58Qr7u9KdpkSHm21p7K4i5XlfCtb+zjqnEkm
 AMLXUPBAxuJgKd54Dbuz4nAnue3KD9T1D8lx1JwYggC9FsJsJWFoebawoTpwRTHYllXz
 OqHC/yMR5yYdjLApWLs+g7xD/AHrAM/D+OwsX84f6EOBw8VW2JqDVLedzKdlJVdQMO/o
 GQeg==
X-Gm-Message-State: ABy/qLboPc+OhwL81EiUI0yrh4wPj3Q+sswfrE/L2X/UyyvjMX8ApFDb
 3PjirFUdY5hD0kwqm9P9MEz+QQ==
X-Google-Smtp-Source: APBJJlElgraw/W6oH7KzSXHtGpfX8bqLl3oOYDzTdVMdq4PcdwrTVXZGZQ4aBsDaQXfyFx+MN3C5kQ==
X-Received: by 2002:a17:903:1ce:b0:1b8:88c5:2d2f with SMTP id
 e14-20020a17090301ce00b001b888c52d2fmr16472861plh.64.1690929322430; 
 Tue, 01 Aug 2023 15:35:22 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 j18-20020a170902759200b001ab2b4105ddsm5246480pll.60.2023.08.01.15.35.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Aug 2023 15:35:22 -0700 (PDT)
Date: Tue, 1 Aug 2023 15:35:21 -0700
From: Kees Cook <keescook@chromium.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <202308011532.A92CFB351@keescook>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-3-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230801111923.118268-3-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1690929322; x=1691534122;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=eoE3c8ICemots41uvNCVYms50IlLZwpK4rs4AeMXx54=;
 b=b8Dlc3rNrIoGeoB3AITiPCLmuLqATv0RcuCPd76wAPvqZRG/FLE/JudB8GxxwbyelX
 6U5n5WKerZH663GTEe5YbkqXZm8XsC6h57C+FmmXEEljxgjdAEuDmIoO44ZXGoh+cPvQ
 LdMyklUOsUHGQEyPJcqg0SQYQ1vXA1r4J19FU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=b8Dlc3rN
Subject: Re: [Intel-wired-lan] [RFC net-next 2/2] ice: make use of
 DECLARE_FLEX() in ice_switch.c
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 01, 2023 at 01:19:23PM +0200, Przemek Kitszel wrote:
> Use DECLARE_FLEX() macro for 1-elem flex array members of ice_switch.c
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 53 +++++----------------
>  1 file changed, 12 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index a7afb612fe32..41679cb6b548 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -1812,15 +1812,11 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
>  			   enum ice_sw_lkup_type lkup_type,
>  			   enum ice_adminq_opc opc)
>  {
> -	struct ice_aqc_alloc_free_res_elem *sw_buf;
> +	DECLARE_FLEX(struct ice_aqc_alloc_free_res_elem *, sw_buf, elem, 1);
> +	u16 buf_len = struct_size(sw_buf, elem, 1);

With the macro I suggested, I think this line can become:

	u16 buf_len = __builtin_object_size(sw_buf, 1);

but either is fine. (N.B. the "1" here is a bitfield, not the "1" size
above).

-Kees

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
