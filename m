Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1F554CFC5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jun 2022 19:28:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9513D83E3A;
	Wed, 15 Jun 2022 17:28:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LLidxbbn5OKH; Wed, 15 Jun 2022 17:28:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A972683410;
	Wed, 15 Jun 2022 17:28:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6C001BF300
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 17:28:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D40A941734
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 17:28:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 323eax4ALQTm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jun 2022 17:28:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0D31410B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 17:28:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B2FFAB820CC;
 Wed, 15 Jun 2022 17:28:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 017E1C3411E;
 Wed, 15 Jun 2022 17:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655314087;
 bh=NGsPa22nNEnE5x5vS8yssNlYfYxkSRU3+UAJVehVMag=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UiR3VvUJ39a+BVuIQoT3c+3dtQ/zKJLQT2LfcTYRqtvX68wX0kE3cNoGHW3Wx8mq5
 ekxzcWi/PdCSeLBai+XbqoWqwki3dCDMn6E/YQzZRdVQP4X2u278m2XUzoafRt/QG4
 6BDn/HLl+9f+D61T5p7BlpMtqaK1gKZgbKe9hCCyYC1cvLe9y9XCG7jVfGEWebb/Xk
 YXHq+ggIgpGCa/IWZKb6te4iWZL4ecm4NgZV2XVq0IgiU+JBC9iiB82qRYUZRsvqbI
 ihMGNUx/XpiorzvatHyo2ztg/xX2iv4iRN1G192Uv5ml7qtkaXiRUQos3cXHf/F2/h
 8m13vAmKFo2NA==
Date: Wed, 15 Jun 2022 10:28:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20220615102806.1224d227@kernel.org>
In-Reply-To: <CAK8P3a1s-jKfDFo7CXjpM4B6JJS-bV901yCfOxr9qikV7AO_LQ@mail.gmail.com>
References: <202206091828.eNkyL2EI-lkp@intel.com>
 <CAK8P3a3Mu0MDRJU=he=gVxGKQYwzr1wePLKdgN37yLPSqm1iuQ@mail.gmail.com>
 <20220615085128.026f1c56@kernel.org>
 <CAK8P3a1s-jKfDFo7CXjpM4B6JJS-bV901yCfOxr9qikV7AO_LQ@mail.gmail.com>
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

On Wed, 15 Jun 2022 17:56:24 +0200 Arnd Bergmann wrote:
> On Wed, Jun 15, 2022 at 5:51 PM Jakub Kicinski <kuba@kernel.org> wrote:
> >
> > On Wed, 15 Jun 2022 16:11:17 +0200 Arnd Bergmann wrote:  
> > > The bug is that 'i40e_aqc_cloud_filters_element_data' and some other
> > > structures in the
> > > same file are broken when building an ARM kernel without CONFIG_AEABI, which has
> > > unusual struct packing rules and triggers the static assertion.  
> >
> > What are those packing rules, out of curiosity?  
> 
> On the old OABI, each struct member is on a 32-bit boundary.

Oh. GTK!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
