Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B29C644C7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 14:11:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5677607FD;
	Mon, 17 Nov 2025 13:11:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Nl1ZN4p-rTK; Mon, 17 Nov 2025 13:11:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47C7360DB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763385102;
	bh=01cC7ySHWhCFyMvXlU1Mt2SGt2tFSxfshKiVMAheuoI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BRE3W60J1+2AKRl0+nQUZDhb6Yi005NVQSNeOEb27cKbp5LOBHihpRRT5zSJpavFn
	 zSyMeRgQPMfKQLiPqZodGjzQAphU3FcHu22gZo/jEZBw0880zXne52W48FZq99p2se
	 E9/eZu3VP1h1+s4UvpaaKSVPFBbgdia0MVrx58SuAxS6qkep5jOHwEJa8CZpxekxTF
	 sgWtL2D/8FBaNUuSsZtC78jprs3F5TyEMH6OBTb0AQBm/uO/A1+ZjstjnPHDbwCNoV
	 3eZe7gFYtszzvHDvkB7+FjUW0hUB7Fkmvw55qvWK4/SiKQSNOmfZplkRhTeaIRD5Mm
	 fn/drZJcw1rBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47C7360DB7;
	Mon, 17 Nov 2025 13:11:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DEF04158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C916640434
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:11:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EzF9wJ_yLbLO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 13:11:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C697140426
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C697140426
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C697140426
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 13:11:39 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-47798ded6fcso5697955e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 05:11:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763385097; x=1763989897;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=01cC7ySHWhCFyMvXlU1Mt2SGt2tFSxfshKiVMAheuoI=;
 b=rsW3CED5flKZ2JeA2+Nh80l32FmfWeg5tTEQK3sg/6THvZiHmbVBvCweLADt3sWdH8
 pMLMx6qSrOvRE9Y4/HD56xqptpO5n3SeSD6DrLX7hpSuyAYtxLVb8FmFhbXJCl0pNzVp
 osWIWmrTNxLWxjyWpy8zi1zpOeMzy3kjGHcGFXv/49mBpLmQIoWL1iV0g/Db/SRqjnq4
 px+GqwKkzCTMosNvjYhfAWMb/yLjgubk56Zmxw+Zpy9sG5PNuSgI0TSznaBq+VZqIYDi
 yuJvOZ/2MYymK5TujPdenahqy++fAIAbsg0NylIJBnCQAiyChe4b4v7N2e3l9c2VTAq6
 IyJg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV94bAs6nYxGjQPgf9TIksUuBmhV4G4kzCIKd8KURVuWhuDgIL7jTFNc3cl3665DMsQrr4Nl6tmODXaqir2/Us=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzWwKKMKKkiXiqmJVmWALTUvLpr8VFr7fcw3V4eA9Ey9MysW5MB
 VAFVE9WmLm8DlI03kWpEHpvDlE6hgFiK5eBhX++32SI/pqAWnofYaZSdehYYsTfbBMM=
X-Gm-Gg: ASbGncsa7Yar0KO36JPgzVIej3ozUCaNIK1vXemoEZEAG1uWPglAznu4kIAIwFfV8sD
 utnNkCZwXiSvU/sXEJXRnpfHhPEsFEIW1b7/6mxK01I4JjEJ8D5UZB+Kb+blTrYHwRKunyiIVFg
 WM1HYanDg346veeuhMEffyZq4Vxd2Ocv2XNn6OX623WdEqbsAEEjRn2Yp45IgG9PAH41J+PVdp9
 gSquEUIJaEIu1ENjFqoN8nv46ECF6YT7D+iGfZzpzaNIlM35ShI11PwsOj8KE4CeNm3sRp1HN9z
 ihVCAcLbyt0OBk1hIVtYU0FqW3+5wBOke5Z/UEOKQaVSSQCu/abLV34LqJlpvtIcDjR2jSx3qo3
 JdLOYwYOD2+99jYl8yqiw57E82licTGl3f6ctFU1FIQf0j5Cyy5yWqtw4lWSvMtiE6tJZXZkdA2
 0YC1GEEw==
X-Google-Smtp-Source: AGHT+IHBC+9FsxtsdSHIREVrp/G6htztuNX/oUndRO09FTt+ZBKnna4hH64IsewtZZFfCyMd6Zo6+A==
X-Received: by 2002:a05:600c:a43:b0:477:3543:3a3b with SMTP id
 5b1f17b1804b1-4778fe59f2amr105544325e9.6.1763385097412; 
 Mon, 17 Nov 2025 05:11:37 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-4779973ddcfsm130108955e9.15.2025.11.17.05.11.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Nov 2025 05:11:36 -0800 (PST)
Date: Mon, 17 Nov 2025 16:11:32 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Ally Heev <allyheev@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org
Message-ID: <aRsfBDC3Y8OHOnOl@stanley.mountain>
References: <20251106-aheev-uninitialized-free-attr-net-ethernet-v3-1-ef2220f4f476@gmail.com>
 <575bfdb1-8fc4-4147-8af7-33c40e619b66@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <575bfdb1-8fc4-4147-8af7-33c40e619b66@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1763385097; x=1763989897; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=01cC7ySHWhCFyMvXlU1Mt2SGt2tFSxfshKiVMAheuoI=;
 b=alt/pJ9k61FTFi3Loz2PDri28lPnOww1jvg8xwwL1UqpTbY7WFNmjZJuGa/qag4pVo
 0OIOVb3xlVajIfMIUaJ9LC+v1JFYqM03Uu/q1fX3M5D84TPmU0LlMPerZeTgiE9UosAY
 YQQmpl+V4ro+hMFunXmlKj6sT5aTxYCTBd70Ob1a32dYM2LNRB+9ob0vcrHu3enqFH83
 6ur0Mqp7Vsu/gAyK+3YA5PbSMbcqyPRv27x5L9h4KY2fawHiYBbkbJXsCh5RSxxJ7oTK
 MF58k9G5HTsMTyj0Jm43aofMDaujph0eiNQoQCpeQDclE2M3vLZIh5WANNYeT1dak9k7
 UfcA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=alt/pJ9k
Subject: Re: [Intel-wired-lan] [PATCH v3] net: ethernet: fix uninitialized
 pointers with free attribute
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

On Thu, Nov 06, 2025 at 03:07:26PM +0100, Alexander Lobakin wrote:
> > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
> > index 6d5c939dc8a515c252cd2b77d155b69fa264ee92..3590dacf3ee57879b3809d715e40bb290e40c4aa 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> > @@ -1573,12 +1573,13 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
> >  			 struct ice_parser_profile *prof, enum ice_block blk)
> >  {
> >  	u64 id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
> > -	struct ice_flow_prof_params *params __free(kfree);
> >  	u8 fv_words = hw->blk[blk].es.fvw;
> >  	int status;
> >  	int i, idx;
> >  
> > -	params = kzalloc(sizeof(*params), GFP_KERNEL);
> > +	struct ice_flow_prof_params *params __free(kfree) =
> > +		kzalloc(sizeof(*params), GFP_KERNEL);
> 
> Please don't do it that way. It's not C++ with RAII and
> declare-where-you-use.
> Just leave the variable declarations where they are, but initialize them
> with `= NULL`.
> 
> Variable declarations must be in one block and sorted from the longest
> to the shortest.
> 

These days, with __free the trend is to say yes this is RAII and we
should declare it where you use it.  I personally don't have a strong
opinion on this either way, but other maintainers do and will NAK the
`= NULL` approach.

The documentation says you should do it that way and avoid the `= NULL`
as well.  The issue is with lock ordering.  It's a FILO ordering, so if
we require a specific unlock order then declaring variables at the top
could mess things up.

The counter argument is that if you declare a variable after a goto
then that's undefined behavior as well.  Clang will detect that bug so
it be detected before it hits actual users.

regards,
dan carpenter

