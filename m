Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 448B554CD76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jun 2022 17:51:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FDBF60D90;
	Wed, 15 Jun 2022 15:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l9RZG2CBdOUW; Wed, 15 Jun 2022 15:51:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 662776079E;
	Wed, 15 Jun 2022 15:51:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E74AA1BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 15:51:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D264840940
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 15:51:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lrYt8Va-XeCg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jun 2022 15:51:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FD4C4093D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 15:51:31 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 48DB4617BA;
 Wed, 15 Jun 2022 15:51:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38986C3411C;
 Wed, 15 Jun 2022 15:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655308289;
 bh=YMAkR9zIrmdqS/6EOyVX+UljQv+WcxcGfDTx8YhjXaU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=j/pXI8YNlA4qXs/2wfrwFC4vrqJIZ6vJ6TBpg7rwUV7lJu45hn4hl4q9Nkwb/ajA9
 PonHf7ddrRXargppmxaikaWwcfxJXfbDqaq0WuibRY0xFSTRXR0eTwOk1Br6VwOj0b
 7joESKKJzXZQZhPTt+T7GSnOPeybinEeB1KKFm6BKvAj5zy9OldcXxWEgg8GWbVsXt
 AJOW9KnjRDeLxQeXIsMMip3DK+A5aJQ4W3VnQQrKh1n8nnjn8BDcND+8n00cIPrBIp
 pp0nE+5ItjCItYxl0vZe3bdWm135ZghJ/8tPM2SIRLIWITO5JrlFAw76GwLe3CJ9A3
 xjomiaeKnqU4Q==
Date: Wed, 15 Jun 2022 08:51:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20220615085128.026f1c56@kernel.org>
In-Reply-To: <CAK8P3a3Mu0MDRJU=he=gVxGKQYwzr1wePLKdgN37yLPSqm1iuQ@mail.gmail.com>
References: <202206091828.eNkyL2EI-lkp@intel.com>
 <CAK8P3a3Mu0MDRJU=he=gVxGKQYwzr1wePLKdgN37yLPSqm1iuQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan]
 drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1174:29: error:
 enumerator value for
 'i40e_static_assert_i40e_aqc_cloud_filters_element_data' is not an integer
 constant
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
Cc: kbuild-all@lists.01.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Eric Dumazet <edumazet@google.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 15 Jun 2022 16:11:17 +0200 Arnd Bergmann wrote:
> The bug is that 'i40e_aqc_cloud_filters_element_data' and some other
> structures in the
> same file are broken when building an ARM kernel without CONFIG_AEABI, which has
> unusual struct packing rules and triggers the static assertion.

What are those packing rules, out of curiosity?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
