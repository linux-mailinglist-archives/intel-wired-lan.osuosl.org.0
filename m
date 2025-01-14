Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5925EA1155A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 00:26:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0350E41586;
	Tue, 14 Jan 2025 23:26:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VY7m6AcwVKTN; Tue, 14 Jan 2025 23:26:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97D0941582
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736897171;
	bh=NV4PmVLk16CjHPkaMxzQZluPn2DMGP8myx2jLb4e+Pg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qiuVIrvoqHQEjYlzh60Sj9opJVtiG7oVP30NTpO/cln6UOdQTqRkE6p5JRmyr5h5n
	 dfczAGsxFSQtFExBqowqnt7wB0G+Yrn/1dVPa4kFdeoTlZOZPbFsAVPSkq2biM+hu9
	 V5w7RCfVgTAnwyCSzXMJ6VMbpd/VmNn7efKl4cWkQmO43C3aspCKzrhqF0UGtX7U7V
	 VEPsi7iI0+REaLrVlXQs0s5BlNsKkdvizSE20P3q2TJ8/DjYdmrgpGDotXwZhWxJ9N
	 RZisgy8GjS5PzsD73VIbXPSL41wQlaI/XAhcJUN24jpv442o/9vG246Kr3ZCkawI9e
	 aqJGC0t6kMZMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97D0941582;
	Tue, 14 Jan 2025 23:26:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7ACAF94B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 23:26:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5AE4B610DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 23:26:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uPn0JJbAH0Ju for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 23:26:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 54A6F610D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54A6F610D9
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 54A6F610D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 23:26:06 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-21634338cfdso101300025ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 15:26:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736897165; x=1737501965;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NV4PmVLk16CjHPkaMxzQZluPn2DMGP8myx2jLb4e+Pg=;
 b=FFoN7W8pEUrjV6GtZtE8sPZJnDGkogGuL7o/KkCIGnYF+/tir8wNC8vcdqVAgut3NA
 NlYvsirxBEAeCMpv+JI3oKskzL1bDFUR6LLnTEuQMy5iUK3jnOnG9bNZd2CQagzRqBdS
 qCvUimvEfoKVkguMToM3AHe7yi9DxxY8g0YUpD1FS9Rf+GxRfvQveS5EmpGLKN8y4OHi
 VOnh13/vU19cuDS9ZA4Q8nJDSfqFimAk/bgQ0Rx3zxBNy5LFEX7Okud6rr1soWU2787m
 zmzi2KcWTYYuCY9zM6Z53yf2NP8P2F4Lg7TKA0mLk/AL/nNxaha9Uwipn2wzjHNCK098
 xNlA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdaLw7YLQKK6g69MPyMxsqgvHM729Tq81BYD62CTAF41L8cLSulkvtMPZgRwEd6tKchapxvYhBI7nyZrDqgH8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzSpfpVCmo4OX2/nz7Rm6m6aHd7QyVBplP6UCI0VSUjjRp3M3J3
 KpsblSMTKmSn91ZYRdsGFRIw9JlOj9vlKMRceoz96phGB0PyeJYhNsrt9dZ8nUt3yrhXY5KknV7
 y
X-Gm-Gg: ASbGncsppvC6tomgitl4dXR2vIvmJ6lxjDFcry8oVULN6PAFJAYr7NVmB04RWKLultm
 BXAo+juuNg6ypQ4XbU2VrjbvnnlO89br0Qm8RzF3f4o+dlHJFwVIGsE8Se/lE6PFPNFBxHSuYHx
 UJskxrLbyeyq+Amwj+Vl6d/9pgrfpNPLm6fd1NdO17ZSkCQ14tsQbFtlqOAI0lYixu2XQpoSzlY
 dri1New/0v2U4h3oywLt5cU9fHWX6wfXOp5LYIRKxgtPFnRvsGFzxQsCebHa8b6/EjRq+kpxk+y
 7ePnbI8/HSwYTiY/k4Tz6PA=
X-Google-Smtp-Source: AGHT+IHFPFr5ciMlkXuJKMpdKsuIG5B3oWU/wQ0JkBhOmdVXMKwtxjYVcUrFRpNdNfwpkhHQYwGirQ==
X-Received: by 2002:a17:902:da87:b0:215:9642:4d7a with SMTP id
 d9443c01a7336-21a83da6a40mr434425125ad.0.1736897165605; 
 Tue, 14 Jan 2025 15:26:05 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21a9f21a7f1sm71225625ad.124.2025.01.14.15.26.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2025 15:26:05 -0800 (PST)
Date: Tue, 14 Jan 2025 15:26:02 -0800
From: Joe Damato <jdamato@fastly.com>
To: Daniel Sedlak <daniel@sedlak.dev>
Cc: Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Message-ID: <Z4byihk_5pqXcLvB@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Daniel Sedlak <daniel@sedlak.dev>, Jakub Kicinski <kuba@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
References: <ca5056ef-0a1a-477c-ac99-d266dea2ff5b@sedlak.dev>
 <20250113131508.79c8511a@kernel.org>
 <adf7c053-ffde-4df8-bc24-99740906410d@sedlak.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <adf7c053-ffde-4df8-bc24-99740906410d@sedlak.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1736897165; x=1737501965; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NV4PmVLk16CjHPkaMxzQZluPn2DMGP8myx2jLb4e+Pg=;
 b=q56lOCqDGe25GGvVk0Pzaz84lKdE6Fm34CKpAMldW8MkuOgFZzL6kXPtWkNtLaST/v
 Ysoabu/8HeIcXVI+rqVH9MvBD/4Jnd7U25P8JW3oOkoYSrpSbt7Vb1bWm60eLNphEJ2N
 3GOV3k9WhBHehUEwMjVDs7NvVddzobdGg+FLI=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=q56lOCqD
Subject: Re: [Intel-wired-lan] [Question] Generic way to retrieve IRQ number
 of Tx/Rx queue
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

On Tue, Jan 14, 2025 at 09:32:26AM +0100, Daniel Sedlak wrote:
> 
> 
> On 1/13/25 10:15 PM, Jakub Kicinski wrote:
> > 
> > We do have an API for that
> > https://docs.kernel.org/next/networking/netlink_spec/netdev.html#napi
> > but unfortunately the driver needs to support it, and i40e currently
> > doesn't:
> 
> Thank you for the link, I somehow missed that part of netlink...
> 
> > $ git grep --files-with-matches  netif_napi_set_irq
> > drivers/net/ethernet/amazon/ena/ena_netdev.c
> > drivers/net/ethernet/broadcom/bnxt/bnxt.c
> > drivers/net/ethernet/broadcom/tg3.c
> > drivers/net/ethernet/google/gve/gve_utils.c
> > drivers/net/ethernet/intel/e1000/e1000_main.c
> > drivers/net/ethernet/intel/e1000e/netdev.c
> > drivers/net/ethernet/intel/ice/ice_lib.c
> > drivers/net/ethernet/intel/igc/igc_main.c
> > drivers/net/ethernet/mellanox/mlx4/en_cq.c
> > drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> > drivers/net/ethernet/meta/fbnic/fbnic_txrx.c
> > 
> > Should be easy to add. Let me CC the Intel list in case they already
> > have a relevant change queued for i40e..
> 
> Thank you for directions, will check Intel's mailing list and poke around
> with implementing that.

I previously tried to add support for this API to i40e [1], but got
pulled into other stuff and never picked it back up. Wanted to
mention it in case it is useful for you.

[1]: https://lore.kernel.org/lkml/20240410043936.206169-1-jdamato@fastly.com/
