Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2BD483C35
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jan 2022 08:24:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6B6B40179;
	Tue,  4 Jan 2022 07:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1hcw8ZKepBzR; Tue,  4 Jan 2022 07:24:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 791DA4010F;
	Tue,  4 Jan 2022 07:24:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3ACC1BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 07:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 83B4C60B43
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 07:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IWkBYuwguvrO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jan 2022 07:24:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D223A60AFF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 07:24:16 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9A1E36129E;
 Tue,  4 Jan 2022 07:24:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EECEC36AED;
 Tue,  4 Jan 2022 07:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641281054;
 bh=CExcfHqPr4EO+0TkF9lRajV/MGP8IkIBhKsioRKlgJo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LwtEYeuTK2ZpxkytTOKRUaqWkpMMM4o+NbnJg+fgvE5RMsk0De9MgjuRP3U5svnmK
 lZHifn+9L91ncs0v9SXohuIwSZyxAYKeSer+V2Ng7lnyRUel1zwci7tEqMKBwH7naI
 rdVVawrNaLtLor+PCiWtn1l7bqbmVaqBt7rpKa6IdXngDyhdrQKFqkxPQkg2uzIki0
 tf+hy7AYXg1TTs9Hhccdr/jRiHCEtD3TkbQHVqJxsgBb0N4ufXPkVq8UbWwqZ689cB
 gEnHc8nIyVO1VhY2qGPCYLCm7HHlHdV9kbCjt2tecXqlJcsBZDiG04tQH4zZFSihA5
 sgW77KGR0bIGQ==
Date: Mon, 3 Jan 2022 23:24:11 -0800
From: Saeed Mahameed <saeed@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20220104072411.esukmdx7sy3milmx@sx1>
References: <20220104034827.1564167-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220104034827.1564167-1-kuba@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: fixup build after bpf
 header changes
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
Cc: leon@kernel.org, linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Abdul Haleem <abdhalee@linux.vnet.ibm.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 03, 2022 at 07:48:27PM -0800, Jakub Kicinski wrote:
>Recent bpf-next merge brought in header changes which uncovered
>includes missing in net-next which were not present in bpf-next.
>Build problems happen only on less-popular arches like hppa,
>sparc, alpha etc.
>
>I could repro the build problem with ice but not the mlx5 problem
>Abdul was reporting. mlx5 does look like it should include filter.h,
>anyway.
>

I got an internal report on the same thing also, but I couldn't repro
myself neither, I will ask them to test your patch.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
