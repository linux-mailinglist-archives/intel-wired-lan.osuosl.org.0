Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D27964A7C4D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 01:06:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71BC541634;
	Thu,  3 Feb 2022 00:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugSCyshw7EaW; Thu,  3 Feb 2022 00:06:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87E9241615;
	Thu,  3 Feb 2022 00:06:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFC041BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 00:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9CCE041615
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 00:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jo3YdyVbTDwe for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 00:06:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 745804160A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 00:06:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 388D9616FB;
 Thu,  3 Feb 2022 00:06:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D197C340EC;
 Thu,  3 Feb 2022 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643846793;
 bh=dGZvdQzdOZtVcN74nAhfxuEEnHPJRLYx/VBd8b7uCHY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X03zhYpxeEU4a8YashBLV/UTetRkvXLn4plkwInNLCiEbQBYGmZxSJJDqt3Sdr3+q
 LsZwmKAKx904TXfWFHLLZOP4KC7nVME+7kjYAN6PJBnT/uy54UllJYfTRi9vEbVZ68
 0thpn8xOF7hZgxjbnEEE/FYm7cPQ6XsKMZi1PeKs4CAi4Vnxp/+ybTw9F/PXBqtiIS
 8Z83xvE5n4JRqxOn5ea3CewpVTTbYgJaIxD+sL+kayCd/NqoQYySqjb2gJS1WeBbzu
 bFvJ6H71u1sZR3X50OiRgYP3dFELGZ/71HM1ifjbvc2KfmlfSEMjzhkRTOwvKE1gbJ
 WpJ4i5eNZDj2A==
Date: Wed, 2 Feb 2022 16:06:31 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jonathan Toppins <jtoppins@redhat.com>
Message-ID: <20220202160631.7db4e729@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <b25f9e524c404820b310c73012507c8e65a2ef97.1643834329.git.jtoppins@redhat.com>
References: <b25f9e524c404820b310c73012507c8e65a2ef97.1643834329.git.jtoppins@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ice: change "can't set link" message
 to dbg level
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
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  2 Feb 2022 15:38:49 -0500 Jonathan Toppins wrote:
> -			dev_warn(dev, "can't set link to %s, err %d aq_err %s. not fatal, continuing\n",
> +			dev_dbg(dev, "can't set link to %s, err %d aq_err %s. not fatal, continuing\n",
>  				 (ena ? "ON" : "OFF"), status,
>  				 ice_aq_str(hw->adminq.sq_last_status));

Start of continuation lines needs to be adjusted.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
