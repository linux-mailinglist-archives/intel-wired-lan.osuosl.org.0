Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 489FAA33738
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 06:26:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82BC042573;
	Thu, 13 Feb 2025 05:26:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Rq0qhO2wuAg; Thu, 13 Feb 2025 05:26:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A56EC42568
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739424378;
	bh=0HAEYUoXN1RzPu9Vc5RFXNu3L5U0k8+uT71SbgN/hXA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g00kJ2ta9ecSSKksrpSn25E9PgjTQg07kh2BcTyyYPXec+cj7qYouPZ6ymYqw+xHK
	 ZFFdcTodo+PIJxZ+jTn7jBqFGgxxuNA+9GIbEOla78sUWIRwohCsiZPVjamDgU8/Lj
	 9rzxbJMJzylvUeG43bvoKLcGPD4uF6qax1TL9WF8AVVWFhyEgxx9wOatVrCbCJ/m01
	 U3PPB+cOU9TxI8MDvnfYlVDp6WHx4AotUWAn5spsr3ADSEX0BmaLVdxfij2FfJk60I
	 Pufnx953aOekv2NPQggvogEwe+NJrjnDqgOlXRshUre/rhu9hcPUcaKfICc4Z2kArt
	 tfkiI91rJhyGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A56EC42568;
	Thu, 13 Feb 2025 05:26:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A4DF91A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 05:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B32B4255F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 05:26:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f8aq2vWZuEEh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 05:26:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62f; helo=mail-ej1-x62f.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4035942549
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4035942549
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4035942549
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 05:26:14 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-ab7483b9bf7so50411666b.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 21:26:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739424373; x=1740029173;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0HAEYUoXN1RzPu9Vc5RFXNu3L5U0k8+uT71SbgN/hXA=;
 b=cJTtCaTFW5lh8Ct7hCbnBZmdwFn+IrdS83vT4wc/Aae9b+8kLd4DeB1+Heehepxygr
 lPz1XdTY6agpo4kQrgmxAwlrYwY77Ukn7WPV2ygHXx+zgbLQNhQ8lwg1eJWg0HrxjVFP
 DYyPoZTaLwM4zrAmFun1ZGhyw/4L/JS8phi7Icekk6e8xthCLNmu+x4+nawNBsQGcNea
 f0MsuXUZiIrxwDH8Q4ecWHOq/89Quud2V5kaIW7zSAgV/7swtYuLcivpm2ydYEomuaLE
 dVGfiK4lZb+vbY85jFs/Swya5TxB6TB4px+kau7siGn3TaffmoB2k2u4V8eWynmrqMSs
 9ISQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXf6pBdSFIhUNy46Jvo/PUkOIHxnn9+3NCVF6AprGdtPfanj1/tBPfj81EbpAduTP7VdRiTqMg/o4QBpGtGcTk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy+tQkOXhl9ive3DppyNd3SnkUUN8Mun1/cOStqFk+PuzrNjDR/
 W8gca1LIOWJFJaXR/b2k1Ov9i6TYHGDN4st+i9TjtktyTqFgfMu3SY97T/7A1nM=
X-Gm-Gg: ASbGncs+nRWv000/6s5Eh2K/8w1tTPSlLsN9DVc9oWQNXwZ5Ln6EZNbQLbUhIeSW6YL
 F8LvsZ9SN6M0BWqkTBzmDIEfU0cbD94Oi1TDzWTMF5WpmPITzqyWA59IkKCjAXbsYi4TBM8UlXW
 zdWqfaeo0z0Chcio0t7E3Siwj1lY4utGO+hH7RJPChL2W6/vvvs5xpzhRwpI7nhcxlIpYuVDMhd
 Czwg/eau8rZ4BTy/j3MtErNavIqrowq/K+weqSG2diNqy/IgsKruMDsvWnDAElirpWXw1URX0xF
 rNSo94n7BOOm0TLb1CIP
X-Google-Smtp-Source: AGHT+IEzj9Ta5BdBT6AH7PreThdj8+Vp0LN+dbci6CqGFf6XXQjsFFpLhPxNkTgcclST41hSlPWi8A==
X-Received: by 2002:a17:906:7956:b0:ab7:f221:f7b4 with SMTP id
 a640c23a62f3a-ab7f34738c0mr544342766b.43.1739424373199; 
 Wed, 12 Feb 2025 21:26:13 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 a640c23a62f3a-aba53257618sm55687766b.51.2025.02.12.21.26.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2025 21:26:12 -0800 (PST)
Date: Thu, 13 Feb 2025 08:26:09 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Message-ID: <d6eaa268-e4ef-4d90-bb1e-37a7f546da93@stanley.mountain>
References: <14ebc311-6fd6-4b0b-b314-8347c4efd9fc@stanley.mountain>
 <f66b15a3-1d83-43f9-8af2-071b76b133c0@intel.com>
 <20250212175901.11199ce1@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212175901.11199ce1@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1739424373; x=1740029173; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=0HAEYUoXN1RzPu9Vc5RFXNu3L5U0k8+uT71SbgN/hXA=;
 b=J7j0HLgrZwjmsv9oiTG4Yl2+pJPx3emSalO5G8T1PltroS+yvQZMPuuen/y/LmK4Op
 byut9S3Uox1QkmtB3o8NCj4PIq/dPBVCMyGehP+ckQprKgbEIJxltU0zugP/9Pr4WLUk
 OLfWmHUefFc24Nz7Ewg23wPTbBEM0S0rNzZJqqd0tfl0rHG/LubN/c+wEnDn50T39lD4
 ZL0x5d2KrBy/t7oxvher90uSzelpC+72hOEIyOEjOHp/wrYF7wuES2SuQjVf+ZvaUUx7
 ms6+V3mYcq2DYGoaH6d/RhUkwfKYhwHDkzh1hAchA9MlsHLid2PGjMuKZMbRFsmGtLaM
 5M8g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=J7j0HLgr
Subject: Re: [Intel-wired-lan] [PATCH next] ice: Fix signedness bug in
 ice_init_interrupt_scheme()
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

On Wed, Feb 12, 2025 at 05:59:01PM -0800, Jakub Kicinski wrote:
> On Wed, 12 Feb 2025 17:46:54 +0100 Alexander Lobakin wrote:
> > > [PATCH next] ice: Fix signedness bug in ice_init_interrupt_scheme()  
> > 
> > I believe it should be "PATCH net" with
> > 
> > > If pci_alloc_irq_vectors() can't allocate the minimum number of vectors
> > > then it returns -ENOSPC so there is no need to check for that in the
> > > caller.  In fact, because pf->msix.min is an unsigned int, it means that
> > > any negative error codes are type promoted to high positive values and
> > > treated as success.  So here the "return -ENOMEM;" is unreachable code.
> > > Check for negatives instead.
> > > 
> > > Fixes: 79d97b8cf9a8 ("ice: remove splitting MSI-X between features")  
> > 
> > a 'Stable:' tag here.
> 
> Bug only exists in net-next if it comes from commit under Fixes.
> So I think the patch is good as is.

I want to resen this.  My scripts should have put a net-next in the
subject and I think that changing:

-		return -ENOMEM;
+		return vectors;

actually does fall within the scope of the patch so I want to change
that as well.  There is no point in really breaking that into a separate
patch from a practical perspective.

regards,
dan carpenter
