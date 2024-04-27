Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CF38B46B9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 16:56:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D25646083D;
	Sat, 27 Apr 2024 14:56:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VygkPMFTJN-4; Sat, 27 Apr 2024 14:56:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4796C6077D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714229791;
	bh=amB1hYPTQMfz40I+7JQXi5CGkpHsd144kXjd3wF8N4k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rPdf1ZrikGS/6bYBdJIj6OUouXtXafVCKLTy7YIRWEJeGlTptsJWiIUbY1hFlu+0O
	 OveGpl4SbywTqwxqeedvq0CQPl58TvaIAn820804y7dZ7eX2fpETZeqZIEWHxsm2ig
	 t2BWrP79EyryAOo0BbhWgPDn86DJvgWPr93F2/2cd9lkgo4qix/2JELAMAC91px0ei
	 SjI+W+5oRySdXSlpy9xeDBv5QjhhRKkpdhbsJsTr9ybix3dqWsyMF/024mxay9HZuv
	 L8/8JLfeyEf5y7Q2bdcAbc2SV6NTJXpd7RlWp38OOZTnoFlKxgmR2VKUo2gF94DM9m
	 6EAV2o+OPxmYw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4796C6077D;
	Sat, 27 Apr 2024 14:56:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 693F91BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6054C40726
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id egatyN2zpnbp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 14:56:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 588034070B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 588034070B
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 588034070B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4C363CE098F;
 Sat, 27 Apr 2024 14:56:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D17CEC113CE;
 Sat, 27 Apr 2024 14:56:21 +0000 (UTC)
Date: Sat, 27 Apr 2024 15:56:19 +0100
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240427145619.GO516117@kernel.org>
References: <20240427072615.226151-1-ivecera@redhat.com>
 <20240427072615.226151-3-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240427072615.226151-3-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714229784;
 bh=tKS6xrGJ1Q6azSgyWQazosphPUvdjtA4NX2ju1bSK74=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EHoB1BdoceXwUmEQxyX8i+4FOzlX0LepVXbv26RufCYZn9aNw/ZhaguAkeRIbZzKr
 t1JblNpvmPFewskVT8w/AEgsPXdYn31KDpHgf5byGjR3WK4CQb4CHaJX4p75l9bd8l
 /wuUY4MFSb5oZglQLz7167uE/3bJjgkK/htMj/m/87LgwM6JqcrBd1YJHBBaZOWxGh
 d26O8DIW1aROZbytZERsS53yvqmMX26AmrDsaCedxvHIpAykm85ugrXXjZHh/Fv3JM
 6CvEXbbkRf7TMescpl/BXFPXYIxwoRe+3GDfvqOhKAzyV/2b3hty1vJbG25e1yJFUZ
 hQFjiUdBss/9A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EHoB1Bdo
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/7] i40e: Refactor
 argument of several client notification functions
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 27, 2024 at 09:26:03AM +0200, Ivan Vecera wrote:
> Commit 0ef2d5afb12d ("i40e: KISS the client interface") simplified
> the client interface so in practice it supports only one client
> per i40e netdev. But we have still 2 notification functions that
> uses as parameter a pointer to VSI of netdevice associated with
> the client. After the mentioned commit only possible and used
> VSI is the main (LAN) VSI.
> So refactor these functions so they are called with PF pointer argument
> and the associated VSI (LAN) is taken inside them.
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

