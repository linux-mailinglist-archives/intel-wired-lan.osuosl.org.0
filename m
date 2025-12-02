Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82210C9C464
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 17:45:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC41A41170;
	Tue,  2 Dec 2025 16:45:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LezC2KN2bsRs; Tue,  2 Dec 2025 16:45:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A6B241172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764693915;
	bh=PnViqV0YkQtl+YppXfhsJp3ZKSyJVgjyqqazIQgGydk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8h6OFetvFOHV44jzmyAMLJJUd5ysfgujEjvwEf4cA+/tZEKi+o284lvxDYUx/qiiQ
	 kgV3jcfpATG+1shRnaeg4Z7SYDeLsy9Z7Oy4NZ/7V35+ZEr42zVjmgguxCqlhWrx0P
	 nBSd6b6GpIN+NqyCjr/9iW0+FGsdix8376Pe+wsqgm1PML6cDMgxfk36VwuhyIv7HP
	 hRLCzwxIF5HBYxhB7C7jZceZZQjuDszR612cREfrGzObE17z/E+p34rnCByEpTnXyc
	 vA07mbr7VP1X9IqIJFBRhiBR+b54+xdfuUrGjHJcGYaiKDogXuwxmybLAZI+WVGRwR
	 axUu3ognRcryQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A6B241172;
	Tue,  2 Dec 2025 16:45:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C963ED3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 16:45:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AEEAF41170
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 16:45:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hHdzYd8bBf-Z for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 16:45:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BF22341169
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF22341169
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF22341169
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 16:45:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 29449433CD;
 Tue,  2 Dec 2025 16:45:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55239C4CEF1;
 Tue,  2 Dec 2025 16:45:09 +0000 (UTC)
Date: Tue, 2 Dec 2025 16:45:07 +0000
From: Simon Horman <horms@kernel.org>
To: Chwee-Lin Choong <chwee.lin.choong@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bouska@web.codeaurora.org,
 Zdenek <zdenek.bouska@siemens.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Message-ID: <aS8Xk-CeuEG2ptmf@horms.kernel.org>
References: <20251202122351.11915-1-chwee.lin.choong@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251202122351.11915-1-chwee.lin.choong@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764693912;
 bh=q4Xwekv7pUq2JA7Xkd2P4hK4oUcLcByTrqcodh8MAi8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JdrlpD4aoy+Fk/wTyRtFCtNUrQ8Ba6ZOnI+jYUb4N7ikhpivknHJWuxgOs6hPk4KD
 G0IEnklxiHd3gdUUtMzwqdjLfyuNsNQZVUgZXYAQiLbVLjFLyPCaTi2SPsljf4/QsP
 IoRjTKmicI5Mbh9QxCoS31eV/IWJw3juXx33k6LbO6SmhfSlWlOERkbMu2zC4b1xYI
 2Gd+edo4QalwFJYSdLegL2DVigrObimzCQqZlpP8AH5XgBkUT8CMDKRPRDj6/mLKik
 sgR40xN1TdQuxu9c9QHO2QAMQG5M9hWOrTG8RbuJXay+2XE7NswuDK05XCuUA1iqDI
 0EOi0ukeGlMiQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=JdrlpD4a
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Use 5KB TX packet
 buffer per queue for TSN mode
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

On Tue, Dec 02, 2025 at 08:23:51PM +0800, Chwee-Lin Choong wrote:
> Update IGC_TXPBSIZE_TSN to allocate 5KB per TX queue (TXQ0-TXQ3)
> as recommended in I225/I226 SW User Manual Section 7.5.4 for TSN
> operation.
> 
> Fixes: 0d58cdc902da ("igc: optimize TX packet buffer utilization for TSN mode")
> Reported-by: Bouska, Zdenek <zdenek.bouska@siemens.com>
> Closes: https://lore.kernel.org/netdev/AS1PR10MB5675DBFE7CE5F2A9336ABFA4EBEAA@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM/
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

