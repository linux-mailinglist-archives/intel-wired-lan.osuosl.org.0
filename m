Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E508B46BF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 16:56:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C57D60772;
	Sat, 27 Apr 2024 14:56:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NwiOUhx7X4Zb; Sat, 27 Apr 2024 14:56:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D2E8606E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714229816;
	bh=SAvWi28tS9Fzn0xXe26WIQie+hHDCS4rBZm/RVjXBGw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PHpvy/xQyk0/BeJuMhhn+Io7UHBrMCrZhvgdXsmh2rAx1ya8qkadYMimldauAImSE
	 GdEYGadIoQfzsFatrmw0DI/J9JD/wSlVif38Ig/jdenysA/MT6ChR7oawgdYsFk7ZO
	 ngD9w87vIup0KQw4uKbeM+g0dTvPE1cBurIBWJzTFFv5JzzZ23HGMXMnhlIIG8iJrN
	 E4VQdPHQ/+fncfrEHr+VLZGmDWwwCnNXfvYiR/v3YO1wTqccAUQcW0Tm9QRDsMhx2X
	 C2loy5FQV4BFhW9kK2waIkwo7Do/eAZ3DqaYAqDhoeWIsTkvKETHChHW7eyMS826u6
	 9FrhPGz9Rin2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D2E8606E9;
	Sat, 27 Apr 2024 14:56:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 110581BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0EF760772
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TPWewOKmqz6M for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 14:56:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3F7C4606E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F7C4606E9
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F7C4606E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 14:56:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 0133BCE1A4A;
 Sat, 27 Apr 2024 14:56:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DF92C2BD10;
 Sat, 27 Apr 2024 14:56:47 +0000 (UTC)
Date: Sat, 27 Apr 2024 15:56:45 +0100
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240427145645.GQ516117@kernel.org>
References: <20240427072615.226151-1-ivecera@redhat.com>
 <20240427072615.226151-6-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240427072615.226151-6-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1714229810;
 bh=f75jXn+JImVzW04XSBfpbAqM9Xc3DVOREU6CXnC59uY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cv6mmH0FaySGo8/F3+Qfou1j8kxBPCoudQ1Xqj6l1pidEVhFDbr/Zgl8NBaJbUlCh
 uBMbKw3l/dtFsX9tgChPvU/l2vy1pnr0WbY1HY2uGaZ082qWYeKbUDQg5lkZdUcugq
 0uCPJGoe3JbRAVm4KNBb5UjdkdCq7L/9mrxTJqK3n4gzjIAqqAa1V8AelfmkwJFsQS
 Q5bk4nw8RaTiz3vUK7cPD85qs2/OmYUAMVSGNJAHrqqLnHGdZferHqu3sjCkZDhStd
 TvvQ4vpuDJAo7MhIDgkO+3xzQVkIwDnVD+yWIoGTKL8Qq2wm03SLfIeXwvMkJ75mMx
 ispyGRaEb03/Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cv6mmH0F
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 5/7] i40e: Consolidate
 checks whether given VSI is main
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

On Sat, Apr 27, 2024 at 09:26:06AM +0200, Ivan Vecera wrote:
> In the driver code there are 3 types of checks whether given
> VSI is main or not:
> 1. vsi->type ==/!= I40E_VSI_MAIN
> 2. vsi ==/!= pf->vsi[pf->lan_vsi]
> 3. vsi->seid ==/!= pf->vsi[pf->lan_vsi]->seid
> 
> All of them are equivalent and can be consolidated. Convert cases
> 2 and 3 to case 1.
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

