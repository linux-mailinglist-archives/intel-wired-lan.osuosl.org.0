Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816AC4E57BF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 18:40:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D49840FC2;
	Wed, 23 Mar 2022 17:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WnSmBFhNRrXQ; Wed, 23 Mar 2022 17:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6028400C4;
	Wed, 23 Mar 2022 17:40:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8E991BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:40:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C57C660A68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WhVLVxdkls6V for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 17:40:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F46860807
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:40:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3B923B81F9E;
 Wed, 23 Mar 2022 17:40:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77117C340E8;
 Wed, 23 Mar 2022 17:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648057207;
 bh=aGxkOrl4YHeDa3byBAwdvcVuxN7xIPGXQ+Q+9RjcAsM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ca6hDaCTaZvNvOpFrfXJq3z4ahr3/j5DZHxkTaaOxEu4uU4exx7j1xCLXwqhCub6I
 a/I6khBy2crK9TotJ15ULlh97uTkwkJ4gEYpJVd0u1oIyWkEe/x6y51ZstLZIu4A0M
 UuCXS+jCaU1pGDZxDI44tj2fmgb3bPrL+h1Qx6pkH4nNfoxNsZOdf/hLbCRhcOI8b4
 EXW2WhChYk+9LxgjGKgvIev/RE2sZfTDVDEa7K3PVMyic6LgeNHZLz93XVzak/sW3V
 vJrAjM7InYBguosjSMrv7WFRO+fwQlJrV8uEgLDB35WxE9CNrzZmOY1orw6KNjVDX2
 9WTYsvKClsoEA==
Date: Wed, 23 Mar 2022 10:40:05 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Message-ID: <20220323104005.2a58a57c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20220323124353.2762181-1-alexandr.lobakin@intel.com>
References: <20220323124353.2762181-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 0/2] ice: avoid
 sleeping/scheduling in atomic contexts
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Shiraz Saleem <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 23 Mar 2022 13:43:51 +0100 Alexander Lobakin wrote:
> --
> Urgent fix, would like to make it directly through -net.

You may want to use three hyphens, two hyphens mean footer.
Email clients gray those out, it's easy to miss :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
