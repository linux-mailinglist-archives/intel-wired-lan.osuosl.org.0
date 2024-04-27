Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CDA8B46C1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 16:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D735F6083D;
	Sat, 27 Apr 2024 14:57:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FTRaIv2zxnTj; Sat, 27 Apr 2024 14:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F0786076C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714229830;
	bh=g+xznPZhhPfQ1Zifyi0IyR1hj1j7tK3EsAAk5RLOEDg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mEpAGNp50t+SpNDJXQzN5WFps32+ZlsHDT78hICocb/AnA3fiMtr6ddReFTS4xgL+
	 KNht5meKTEp5Dt/i7pQjLjGeLpEL5mp2I364Ijh5a3jMlguWoyTETlOzq1Cd7SYNp4
	 w4wx7Kuv+9ITrX+/GThVKn0hOpnGQpMmR8NDQyu593A9NrrwqFP0+0ihutRaKR+PxA
	 AqSSAG7slWK3kiBb+/bESCCvxwDy3B2Hs6jfkiFc2Yj25lscijqe9OQuA2xWjtiA/S
	 CJz5G9ki/bSA87C1FDIR9OFGXXujo2GWV6FM05qYRWdFvObf6MI0RyEL/qJHBrbbh7
	 z3tlcneSp4FhA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F0786076C;
	Sat, 27 Apr 2024 14:57:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 35F9E1BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FD0782F19
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:57:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HeJpD2a_8fkK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 14:57:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7668782D62
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7668782D62
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7668782D62
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:57:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 31925CE098F;
 Sat, 27 Apr 2024 14:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FA0CC113CE;
 Sat, 27 Apr 2024 14:57:01 +0000 (UTC)
Date: Sat, 27 Apr 2024 15:56:59 +0100
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240427145659.GR516117@kernel.org>
References: <20240427072615.226151-1-ivecera@redhat.com>
 <20240427072615.226151-5-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240427072615.226151-5-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714229824;
 bh=K4QCWgAmyq0Z4+G37rNkynaf997NYbREZ5JXgdP6914=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KNQhn2Jsy7wB+sE+VebZBos/3NRCjysrC5+NKet5g0O6hYwmIXCNc9TFqgBtT5m0C
 5/qTXHS4R+XzVizEzvb93jQL8c3Fwsc0q4Ct03107MeFTvNUn7Za0Je54k0qktTr0m
 YQVwxXdnk7xAqAq6wIY9sZtTAeD49YAQVJU3yYWyEyjw86Sbi1C3rQoy6pj1cIk8wy
 tJsOQaJGGdbCyYFfl93fM6NDKVum7q5wwP3CEiP2/vj/XdW8zf+4a1abwyI5bzoXJG
 xf1w7TQqAwaYsrDYpxxLnGheHp+lC15Zi4GSLo+aaFz+ZPOz2RrGHNAssgsXTO4rDV
 f52yK880XFNRA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KNQhn2Js
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 4/7] i40e: Add helper to
 access main VSI
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
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 27, 2024 at 09:26:05AM +0200, Ivan Vecera wrote:
> Add simple helper i40e_pf_get_main_vsi(pf) to access main VSI
> that replaces pattern 'pf->vsi[pf->lan_vsi]'
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

