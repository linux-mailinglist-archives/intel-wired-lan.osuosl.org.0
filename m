Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0FF50E4BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 17:48:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8759360E6D;
	Mon, 25 Apr 2022 15:48:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NRxNHdOMkYaK; Mon, 25 Apr 2022 15:48:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B4C060E6B;
	Mon, 25 Apr 2022 15:48:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF4111BF295
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 15:48:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA0C481B53
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 15:48:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySHt6kOKk-l1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Apr 2022 15:48:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 26F8481D5A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 15:48:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2D44A61021;
 Mon, 25 Apr 2022 15:48:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8EF6C385A4;
 Mon, 25 Apr 2022 15:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650901711;
 bh=/t9m4/CeRlKdtuZXaz3TIf1SxEIJdA7erFumgZsS0uw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eOh7UZUkEZo/3ZbQ3PFG7Sonks6El6PeCIN27QpESDKgQAErhvEaXm5KHbAphkzpI
 DbS3z0A806wbIW0q73FkzHUMYhjAKBeCDh22sXJeY2YzhqKHBIkrAOTHC9v2TOudcQ
 cnwD6Y+fV1mnE5tfBuHuBckGxp0n4CdDkY99FAwiw/YJLCMLdSsUKXPVdUb6YxF/MJ
 WtdvWJVvQhKG92F8KUwLIgbkDI6QRXTjwKXys/e3UTkxJ6wwqrn8LRrY7HQmI3at9V
 N4YKmmmQD26s3s3ouZxl4FixIONGLzDT6vjUa0tao1QuHX5QadQY8M9RZKdf+Qr63O
 8rWNcE/MfKKyQ==
Date: Mon, 25 Apr 2022 08:48:29 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <20220425084829.4b446748@kernel.org>
In-Reply-To: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/2] propagate extack to
 vxlan_fdb_delete
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
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, roopa@nvidia.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 25 Apr 2022 16:25:05 +0200 Alaa Mohamed wrote:
> In order to propagate extack to vxlan_fdb_delete and vxlan_fdb_parse,
> add extack to .ndo_fdb_del and edit all fdb del handelers

Your patches do not apply cleanly to net-next/master. Please rebase and
repost. Please wait 24h between postings to allow additional feedback
to come in.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
