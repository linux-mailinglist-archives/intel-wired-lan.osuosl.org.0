Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D302042D4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 23:45:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B441787252;
	Mon, 22 Jun 2020 21:45:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A23Z1_pX8tRQ; Mon, 22 Jun 2020 21:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E7DF87483;
	Mon, 22 Jun 2020 21:45:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34AE71BF488
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 21:45:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 302A887239
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 21:45:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vIvGO03PmdXy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 21:45:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C94938722F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 21:45:48 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72E6D2075A;
 Mon, 22 Jun 2020 21:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592862348;
 bh=/iDamTs9vjIgEUlpWcMEymikJ1C267Z2pP/3s/Qz5nU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eysYIJSx90LttU7dgNlebd4Wk8a+HaDDgcpEDdPZTGxaHhZ9sxBAJQ+2qpzwCFxMu
 ZUWv0P5jVeNwEfiWuWNt7P0+JnVoBNy+Cv09/tH8M4fCsrgzmNtMIXBFuHNvA+xWVK
 x6QhczrBiCnlJhHoEuWIYC3oz/UMG3V4qO0QGeSg=
Date: Mon, 22 Jun 2020 14:45:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ciara Loftus <ciara.loftus@intel.com>
Message-ID: <20200622144546.04da25d6@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200622124624.18847-3-ciara.loftus@intel.com>
References: <20200622124624.18847-1-ciara.loftus@intel.com>
 <20200622124624.18847-3-ciara.loftus@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] i40e: introduce new dump
 desc xdp command
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
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 22 Jun 2020 12:46:24 +0000 Ciara Loftus wrote:
> Interfaces already exist for dumping rx and tx descriptor information.
> Introduce another for doing the same for xdp descriptors.
> 
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>

Please make sure things build cleanly with W=1 C=1

drivers/net/ethernet/intel/i40e/i40e_debugfs.c:543: warning: Function parameter or member 'type' not described in 'i40e_dbg_dump_desc'
drivers/net/ethernet/intel/i40e/i40e_debugfs.c:543: warning: Excess function parameter 'ring_type' description in 'i40e_dbg_dump_desc'
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
