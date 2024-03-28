Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7E0890718
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 18:23:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0E79827F0;
	Thu, 28 Mar 2024 17:23:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tu9dRFnXHMNx; Thu, 28 Mar 2024 17:23:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F94F8266D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711646600;
	bh=aF9u+xA77Q3F3pY+X5MOo4bvVI0zzmZ2V50LddQ0D2c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=In5HukQsQxHqwn1bRSrZg/LcEGHHOXztMGOHM75LgmMxdb666sacMXQ4kkby1Km05
	 XWjjFC6FjYK5d+ehEORJAn6URbYhZ4GPKd8LKx09qSlWdOydbHCsY61CW11/m0AASw
	 UUOJiYYpEM3RQ6wd4nwyiSiyxgHBBcpj43P9gXbFBkZAoDmVbmghU6821OzvdIx+Jb
	 EXJ3djl2cCUeBlsVVGYWxDfx1J0d/e8P2OuSmQO0910Y3X1ZqfEn7Lq0++xPhywasD
	 wKUYWMoWSMPzhW0pBcq0rmicAI/x5Mns6g7CiAIuRJEst/6R4OMXgjXqXFhD432djO
	 z41pkWatSa6jA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F94F8266D;
	Thu, 28 Mar 2024 17:23:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E41C81BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDDBA60E8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:23:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zU4WPQH8G9-0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 17:23:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3702E60663
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3702E60663
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3702E60663
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:23:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id A2DF9CE2C2B;
 Thu, 28 Mar 2024 17:23:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6415BC433F1;
 Thu, 28 Mar 2024 17:23:11 +0000 (UTC)
Date: Thu, 28 Mar 2024 17:23:09 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240328172309.GB651713@kernel.org>
References: <20240327075733.8967-1-ivecera@redhat.com>
 <20240327075733.8967-2-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327075733.8967-2-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711646593;
 bh=ocaxfsxN2RcUH0BomGmZ305cwqYXx8cqNkONuTikcDY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m3O5deGfX9GRSgL/Psat0maVZbp8A5TWl7tIDu1qVpVTHzTsAIMlWJvZKr0FYIrfC
 d+B+HZQLBuSmScwh6J68J1Yod66oGgjz5r7U4txDFOXCctZWmBveQVUSeKb3DhRC1u
 HYYXh69lgfDQy0D93Hwh4xJ/OgXp1SpmVyQInq1Beh6eLgd0WpeaMSLNxDUsr2DF1D
 thZTaqRVCa0wVkLbWy371zuWYs0av2KNhf/ZAZ67f8Q4z5HUP41IMNGBkp10ZJUkKo
 pDw2eyNRQAwgDWtN5ojgraW5dW9r298ioLakOjobNgfloTOKUDYF9POjTE7KDxePJC
 IlRMDzgtkOIsQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=m3O5deGf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/7] i40e: Remove flags
 field from i40e_veb
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com,
 Kalesh AP <kalesh-anakkur.purayil@broadcom.com>,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 27, 2024 at 08:57:27AM +0100, Ivan Vecera wrote:
> The field is initialized always to zero and it is never read.
> Remove it.
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Kalesh AP <kalesh-anakkur.purayil@broadcom.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

