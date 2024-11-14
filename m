Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CC79C90C9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 18:27:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F0F68456E;
	Thu, 14 Nov 2024 17:27:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5J7PY5HE5p7X; Thu, 14 Nov 2024 17:27:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B21C18456D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731605258;
	bh=5vLjpnUilUSe0AN+0E5B6LmtiA3DyMOP8qJymqdUv4U=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BIhhMacrsB3renMZpRUs2x01Oou2JtWngI8PJROEf16R2x5HqjeKSbDZ8UaAc4KfQ
	 dlYClaDRTIz2xbElM37TqomW2/LxhkpGZK38pZ+I1WxBHnHjiciMQEX4rjDXARbghS
	 qWjzFmmOd50e3usdCiDxGKOKZ4tq13BNWwaBuAa7TmAXyEbqCldGKbAOw2huZtA11I
	 dnWZoMK6scTn2PnFwipOJcdyWrngEbK9Lz8rY3Vh/VZw3nni0IO/D7XaxaDF5/i0qv
	 OxdGenR59MWnPPz9To1/kR3R8sV3y9KOk6VgvCYzI27NlANhbQYMMYl42ijpLV5iSe
	 Qe69+zEwX/fTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B21C18456D;
	Thu, 14 Nov 2024 17:27:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B74C1BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 17:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A41DC407D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 17:27:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0gl4C1u1Wx0M for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 17:27:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::833; helo=mail-qt1-x833.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9CE51407CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CE51407CD
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CE51407CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 17:27:35 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id
 d75a77b69052e-460b2e4c50fso5366771cf.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 09:27:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731605254; x=1732210054;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=5vLjpnUilUSe0AN+0E5B6LmtiA3DyMOP8qJymqdUv4U=;
 b=qhXRSawPDJ5GuLTYMFhFUDbWn8QoQyZa8YMW+L+72gcbhaxhj4gaKsZsTDefvz6A/2
 aj0SCtVgXapdSlJd9OvlKXC4umw1qAz/y2zI57Jyg0cXa2elkmSzrv10FWOBLAj2lwik
 jBGBQlHUUIJzcLwDF2MbheaericfQoyJiO/j7cPcjkNb7ofVtxr6TSmn+Ji5Frw4JAty
 zas3qTOmGAQ9FM7Ux2Pvg5C7E0B4FNbjbmXlvIF7FG2M2RspFRHORZOJqNqPZtLLjcu8
 QD3oVTrJTsP+ajF8G5xVazbSITrDh2rd/xq4oE5gRiTEKupgInxN+3GGFooMo2s0EtTu
 tEZw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWaSb6bPqcSzTg1YUVOE6yjUw9vZY5ng3cTllyrHFWHGRvQxr2wbEO+lH/V6wDlWaI2RsFYEYZeCmbpo93l81U=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyuNN0ZGGTkVnfeTyV31OwqspUpZCY/fooX53mgi5k7gmhyFjq0
 KdB2fdbjGQlNgGrZIHsKCn3y0jK/1Pe67bwwyAN7kJN2uyAHc2Nu
X-Google-Smtp-Source: AGHT+IFCuK27+26tZ31QAg8A2Pe1TTIj5IB/UrkmY0uHCy3DO8GUn5sB5uHzc6BxjNX1ot9/XF7VrQ==
X-Received: by 2002:a05:622a:144c:b0:45d:8b88:a98b with SMTP id
 d75a77b69052e-463094115b4mr297009391cf.35.1731605254373; 
 Thu, 14 Nov 2024 09:27:34 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7b35c9acaacsm68615385a.56.2024.11.14.09.27.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 09:27:33 -0800 (PST)
Date: Thu, 14 Nov 2024 12:27:33 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <673633054b685_3244ed29482@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241113154616.2493297-2-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-2-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731605254; x=1732210054; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5vLjpnUilUSe0AN+0E5B6LmtiA3DyMOP8qJymqdUv4U=;
 b=GtZ3Q3rv1ZiBhEQv/1BZUn3BzRh695N/cbx3DK1bGUN0rVn91fAmMNgNPvoKpvGY9t
 BoyJu5eVMFNuZ5X0k/bWkYwtv9oGu8CoYuuhKb9btfc6y0/p0mVgM78XRtwnhScFjNbc
 WRYqwCRnxf3Kjmu29Yoz2PpSSoMYKOMhRxys9SKryampaKFx2q2uAURFIXGMoKH2tzQB
 L3mLNP79or0RW6/sSDXRmH4r5dUsLY10krjFp67dZYGsI8UhYV27AlWvqz8jOoESlKH3
 UXUYWRWQkvytoYvhd//i58k71csK8nUcE9dkZ+5d+KJ8TRny/wVMOuhmh4u/VWSa/FPN
 sLJQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=GtZ3Q3rv
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 01/10] idpf: initial PTP
 support
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

Milena Olech wrote:
> PTP feature is supported if the VIRTCHNL2_CAP_PTP is negotiated during the
> capabilities recognition. Initial PTP support includes PTP initialization
> and registration of the clock.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Reviewed-by: Willem de Bruijn <willemb@google.com>
