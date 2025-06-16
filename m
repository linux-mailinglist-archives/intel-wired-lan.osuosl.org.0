Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2BBADB533
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 17:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8401F80DA7;
	Mon, 16 Jun 2025 15:24:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cv9YT6KKclPj; Mon, 16 Jun 2025 15:24:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0699580DA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750087445;
	bh=wF60HHVrNcI4iTxK1p8Ap3HWFqO5znVdWpUelG2IIFA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SPsI8vXZyXzTyL7SOXM01zHPK7r9hyaYuOeoqdSDnDVCV3CHYvhXvtT9MFYUpWYaa
	 /Ek5F45mWoKwjC8zfnuFshVb+8n2klSbIks0MaynQFbOMJvLytbpOptW4Cy7FU38fL
	 F2f+n5xnceHuq1wbReTXN973WA7AnAsAh6GhOJ8TXLnp09NPsZEq/tftD9bWuq3lXt
	 lt0wttbV6W0P46VW0g2rbtE4HxrBTCO6Qjrd8qlxqU9kI5nrkXLlYef5RZ0yaZwvQw
	 +Z1IhvqodOxVxNF7GQ9SItYwZB9zXmKYE74U4AWdk+LdCGPVwML2EcJ3DTBKJS+jrw
	 yckqRfDNS4rZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0699580DA3;
	Mon, 16 Jun 2025 15:24:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E81D7151
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEE854030B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:24:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TiwXMHzhrnHY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 15:24:02 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::431; helo=mail-wr1-x431.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 43251402F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43251402F6
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43251402F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 15:24:00 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-3a536ecbf6fso3145939f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 08:24:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750087439; x=1750692239;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wF60HHVrNcI4iTxK1p8Ap3HWFqO5znVdWpUelG2IIFA=;
 b=QI7puLaoFujgDgNG0lBh/uq937B4ZPFoLi8XSZbVtJ0Wz1A/Xxl4DLgWi47ZiT6TP1
 iOX1YZYxfiukQsm3fbfD51lJ/Gb8JzlH5q/CfDVjAeJPPsfzDQqG7/aiIY3rCnjnUFDK
 YGxEW//bwTquA89LbstdNTF34a2qmKZmIEPiXSw0gkwX1ZkEjIqvLrOoqhCsxXcTYSSx
 zJHo90HJVYvigbKMxV8QlpqP7cHBAiTp7YZNL4PUTxyOQwM2Xvegjn86UjYWeJDkbjSB
 QjLrWP/pgD7UsTzhmu8waEWguUunHY2xiuzPz3Hq4aYQzLGhN3AF5TOSkHUPlqdy82l1
 erzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWfSiBOMpBHvgvcYkkPSIc2iSh1GFYRjbdZY6nr2whrCoRmRqBDE/doIaDc94qYmNSzkE+qR55GvYBo73zmGrI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyIwMPhWl8hMhgInZomMYlX3Y0ldLCysVIuB8UJb0+AIQZO557A
 djXf13xCu3Zxb9mmgKN5uP7+RPqaCsyLHlyRgBz9VXDuO1oZtYrtFeRIMVvkoUAYH8I=
X-Gm-Gg: ASbGnctX/phiwfIL12UB1rhpTXIFw1eigdQ+1/QnLigaCe6OPa1b/SHESJMjI3oj9FW
 BsmDMtuWOXYwuYM573HhayUZp/f0aO7jMfrWBQjyJBW0V1JPgDjgxNYsB/doF1/MfJqxaesvj6P
 8T+qt+Z1i6kD2Cr/f1UGa0s8HkC2b7X+MUAo/rUX+B5vCMPNQ22rN14/njs9Mw0wYKFL118P5TZ
 hX3BXiCyyCWyYfN8j8eblSV4psA+cWMh1OSO4bhjvXdrl/sBKrg0BuXgtwoAHVTRLYkNHXVEBYF
 CPXLEKeHRYJavZsm8WzJRvaTTlAlWfH+Bp9EKYxAlA4zYvi7d/FOxI+trVVNKdUkl2Q=
X-Google-Smtp-Source: AGHT+IGwvOWKyM412fudvPrM6z8FEgTIk+C6r8GvJ8HOktClslj4MXAPMSdndeNeikNtUQWd0wrJpg==
X-Received: by 2002:a05:6000:288d:b0:3a5:1cc5:aa6f with SMTP id
 ffacd0b85a97d-3a5723a3539mr8133077f8f.34.1750087439181; 
 Mon, 16 Jun 2025 08:23:59 -0700 (PDT)
Received: from MacBook-Air.local ([5.100.243.24])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a568a5407csm11512896f8f.12.2025.06.16.08.23.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 08:23:58 -0700 (PDT)
Date: Mon, 16 Jun 2025 18:23:55 +0300
From: Joe Damato <joe@dama.to>
To: Jakub Kicinski <kuba@kernel.org>
Cc: davem@davemloft.net, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aFA3C5sSiI5F7eZH@MacBook-Air.local>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net,
 netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 michal.swiatkowski@linux.intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250614180907.4167714-1-kuba@kernel.org>
 <20250614180907.4167714-3-kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250614180907.4167714-3-kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1750087439; x=1750692239;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wF60HHVrNcI4iTxK1p8Ap3HWFqO5znVdWpUelG2IIFA=;
 b=Boc5RYC5jtljFZ6+O56J6KcZJC6NAg7HZGwnPah3DsTfcLN5mNDhZpeBW+vgbe+pKX
 rBSwF8iedFnDL5tPgvuH5jwgqkkUliaAsQZVOW1WbeRFPUXsB0T1l3iCcq3FWG6DR72S
 TMxJM8drjuFL/BurkqSOEa/ZWWl1MZge/dlNEghaAjLQ1z8cBf5E5U0bOvkshim5EuGz
 ksSx1xHb0Fg0lfG0qE+Om/6kD/0bxG614RC6+5uP2zFKFKmrbW6dXz+jQvqhKA/541FR
 GWz+/zSiMEI21ylP3MzAhegyGa6olFKwpcmpFNu2z1dXxx1IPdYNV7Nkat3HZLYsv8Ts
 xrog==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Boc5RYC5
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/7] eth: igc: migrate to
 new RXFH callbacks
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

On Sat, Jun 14, 2025 at 11:09:02AM -0700, Jakub Kicinski wrote:
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>

Reviewed-by: Joe Damato <joe@dama.to>
