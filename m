Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD826A9BA2B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 23:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80BF441587;
	Thu, 24 Apr 2025 21:51:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AE_cHfzLnd8r; Thu, 24 Apr 2025 21:51:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B10574255E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745531493;
	bh=CrITE2ezA2qu9v1v1gOjM51aW1wAmfPpMbqZ82sL8WY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SjJbx33EBmHJVtk1UTYV45aPdu3eYYdvIPwaS8U6bCeTYU64QGG5lR4SUpyjJyb22
	 +IRT8BB+53oU8af5M8RFCA4CLC/z6OKW9G6dJPeYjxB+nw1vSi0KYmlw4HPDXGaNxl
	 QIqB7S2f2PIk0HgeURDmRLrv9O+E1h1ESvR6JulCB/sRaazxhF9fvQdaeutOUoWQI4
	 EDP3KxbZLGFGF+k3zdEhzHT3o/PV9pjrmxT1iVr0zif9J4krsjPu4WqTZBgK0DfywP
	 oRG9u7yQyG+8Xc8e4iapjb0xb26MYVR6uLvBQcvjZz2l/AZBPgocG88h2w1uFp8Zt8
	 h98U1GaVkf8NQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B10574255E;
	Thu, 24 Apr 2025 21:51:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A00AB159
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 21:51:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86BDB6111A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 21:51:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FbwNKSO5buOA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 21:51:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D0CCB60B6F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0CCB60B6F
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0CCB60B6F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 21:51:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 6B6F6A49EA9;
 Thu, 24 Apr 2025 21:46:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1C6CC4CEE3;
 Thu, 24 Apr 2025 21:51:29 +0000 (UTC)
Date: Thu, 24 Apr 2025 14:51:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>
Cc: "jgg@nvidia.com" <jgg@nvidia.com>, "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Message-ID: <20250424145128.60467c51@kernel.org>
In-Reply-To: <IA1PR11MB7727AF19E37851E3A4964C77CB852@IA1PR11MB7727.namprd11.prod.outlook.com>
References: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
 <IA1PR11MB7727AF19E37851E3A4964C77CB852@IA1PR11MB7727.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745531490;
 bh=vXFnq7T8BFjilvzemBf6JKS+yPMnZnAunb0OsaIiAmQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=P3Wa5DsymeIBSXqagXow5N/PjznV9lD3vYmuGPBdGXwy1w10yw+MryLX9oMrdSWlN
 JII13UbpH78ZyMDKSSsgXu+Rgx6JbfWH9kcB6PVPD/DrNygtxYfhQ7IWBHHC0a3UvB
 JH8wG8Rue4LtbwJVvyskfwgnC9tiEUJ/VOCjEVjFI96M3OlBP2RHzvGFTHr53LAH16
 3hoVMaCxqKRkx8p6v4grBeOtTd8sv10lbkCrvQ9OIUAm3CAJhJX/v1+yAYyTtq+2yn
 N6BIYaMY5Mre+M0uXaXufvaqLtOOQzhE2Fu31LXPkdWWsoh/IBKitpFoYh5ZczzWCr
 ujdKmbEVIIb3A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=P3Wa5Dsy
Subject: Re: [Intel-wired-lan] [iwl-next v5 0/5] Refactor to prepare for
 Intel IPU E2000 (GEN3)
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

On Thu, 24 Apr 2025 15:58:56 +0000 Nikolova, Tatyana E wrote:
> Would you be able to review this updated patch series?
> 
> Netdev maintainers,
> 
> Based on Leon's previous comment https://lore.kernel.org/all/20250216111800.GV17863@unreal/, he would like to get acks on the netdev portion before creating a shared branch. Would you be able to review the series?

I think the usual process would be to submit a pull request to both
trees. 
