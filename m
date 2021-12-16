Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6C2477649
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Dec 2021 16:47:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6C9C831BD;
	Thu, 16 Dec 2021 15:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mfQNXPB82wqh; Thu, 16 Dec 2021 15:47:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD79D82FA5;
	Thu, 16 Dec 2021 15:47:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC4771BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 15:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A29B82FA5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 15:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GQYUt7rTR-Gg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Dec 2021 15:47:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16B5B82CDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 15:47:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C915961E73;
 Thu, 16 Dec 2021 15:47:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EA95C36AE0;
 Thu, 16 Dec 2021 15:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639669661;
 bh=x2qJMultYb0EWrkj82u15b9av/t2/rtSDjR4mn0u0Uk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tunHtGHWos3bTThh5Ctm7Tnr85bWh2tRT8T3YDY/E3KY1YNVuKmnBI098hBcWxzpu
 JMgwPzZBfgHNWYbZ5hjVfcROCeGPRCvETfoIOkUK3qbERdIqMxtv8zsDNEom0VbkPe
 uniM32V0tVcCwk9g6eLkaYgWch4B4O3WtcrHgYsNWc3jZVO2jcpHzDex+aEeMJlvD9
 7dYxDc5prYcI4O34f+45vfWy9cXcDRG1EH+M1fJoRrIWCkC3//iXmPh/MUX1ylP++i
 SoDobbtvH1oU0j7+4H89NcdyozkJXlABToKPJ8zihX+PEV0aDQW5NzMx6tkIlcbHcD
 +mETeOr/eiGag==
Date: Thu, 16 Dec 2021 07:47:39 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <20211216074739.7f71a01b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
References: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-queue PATCH 0/5] i40e: stat counter
 updates and additions
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 14 Dec 2021 14:42:05 -0800 Joe Damato wrote:
> This patch set makes several updates to the i40e driver stats collection
> and reporting code to help users of i40e get a better sense of how the
> driver is performing and interacting with the rest of the kernel.
> 
> These patches include some new stats (like waived and busy) which were
> inspired by other drivers that track stats using the same nomenclature.
> 
> The new stats and an existing stat, rx_reuse, are now accessible with
> ethtool to make harvesting this data more convenient for users.

Looks good overall, thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
