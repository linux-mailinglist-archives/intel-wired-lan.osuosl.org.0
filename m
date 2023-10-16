Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 528877CA418
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 11:27:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DA12613A8;
	Mon, 16 Oct 2023 09:27:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DA12613A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697448434;
	bh=j6J+VBSWTDxlhMPT6HpAqXkDUFhjAPnUyVU/qHuioPw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=enQt4qrRFfayd6f5pNx0cyJw9KaZakiDzs4jzcUQoeek4vZUWMWUjphRxgmzBRuZ9
	 GGjTT+bhqpNzj4YqLG7Kg+taQ8fiENTb3iPmmWgLvobHy6VhRXVhBU7IetPTzlIQQA
	 L9oupnRcEDTKGhV1ONp/I4xcPPp2MRnjIHyZrDwYHskgOPhp263hcYCqXB49ggDOZh
	 Z8Yw4w/9PFMmyuOxRfHzm2PNNp+vZxjxKeBIriha2gKoHGwSb5pKzHwgSZFlbTk6wC
	 +FTb1GWsG+VrVW3rkEahg5IT+DHLxUUEwWYcCFFtyP2a9QohOY8HAijR5hRRC9rPr6
	 nEBab4XYfzbIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id byRKOWuzG0FO; Mon, 16 Oct 2023 09:27:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6881A61388;
	Mon, 16 Oct 2023 09:27:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6881A61388
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BC1F1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 09:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6258981F16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 09:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6258981F16
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nlq08UcffE2H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 09:27:07 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C09F281F84
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 09:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C09F281F84
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A46D560CA4;
 Mon, 16 Oct 2023 09:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 485C2C433C8;
 Mon, 16 Oct 2023 09:27:04 +0000 (UTC)
Date: Mon, 16 Oct 2023 11:27:00 +0200
From: Simon Horman <horms@kernel.org>
To: Takeru Hayasaka <hayatake396@gmail.com>
Message-ID: <20231016092700.GH1501712@kernel.org>
References: <20231012060115.107183-1-hayatake396@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231012060115.107183-1-hayatake396@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697448426;
 bh=K6N7taMNzX8fRSK+a4h5bAnL1ClZhYOHgnAw8kLuxgg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IVQMhtgQmEmd5OAjsfBAeqca4uAcYytlr0LvgAArGWkEeBIyQxupcpKwvSJ5y+cD2
 gcAuDvyWNvjEoem4fP/PwlSsFromuX6NrjHd8I1xAQNtM6rPv+cDYd/p+Hk4SGqxSu
 G+6odt9u2IAzgz0QHx69p64eosCwuLnxiE/kQaioCB6Vy2/JHJGuuvb0nZb88l8kv/
 tek7Vr48wkbVNblS63Ts09cNXP3A4fxI3K/Rq9IXnxnJHKOW3M25HZkQxfxSUlomoM
 Pb7E23H35Z0rRA+yG7YMedxdyt2HLBghpMX9Ozy3RiYqlCLlXG3CNHxhZXxyK35pio
 DgR1J89bC++tw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IVQMhtgQ
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 12, 2023 at 06:01:15AM +0000, Takeru Hayasaka wrote:
> This is a patch that enables RSS functionality for GTP packets using
> ethtool.
> A user can include her TEID and make RSS work for GTP-U over IPv4 by
> doing the following:
> `ethtool -N ens3 rx-flow-hash gtpu4 sde`
> In addition to gtpu(4|6), we now support gtpc(4|6),gtpc(4|6)t,gtpu(4|6)e,
> gtpu(4|6)u, and gtpu(4|6)d.
> 
> GTP generates a flow that includes an ID called TEID to identify the
> tunnel. This tunnel is created for each UE (User Equipment).
> By performing RSS based on this flow, it is possible to apply RSS for
> each communication unit from the UE.
> Without this, RSS would only be effective within the range of IP
> addresses.
> For instance, the PGW can only perform RSS within the IP range of the
> SGW.
> problematic from a load distribution perspective, especially if there's
> a bias in the terminals connected to a particular base station.
> This case can be solved by using this patch
> 
> Signed-off-by: Takeru Hayasaka <hayatake396@gmail.com>
> ---
> Added commit messages and options based on reviews

Thanks Hayasaka-san,

Overall this looks good to me. And I see that the review of v1
has been addressed - by adding information about the need for
this to the commit message.

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
