Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1B826A935
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 17:58:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB5F9868BC;
	Tue, 15 Sep 2020 15:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YuW9hCVx8rgJ; Tue, 15 Sep 2020 15:58:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1222D868CA;
	Tue, 15 Sep 2020 15:58:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 400FE1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 15:58:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 38A4986449
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 15:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTrR6Dp8gzrr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 15:58:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DE53D8638E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 15:58:03 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BDE6206B7;
 Tue, 15 Sep 2020 15:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600185483;
 bh=+HMSv9EJEU9r90uLwbq9RCqS1JjJ75MwUi2oubnP9go=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TX+VUGTdBqo7VmUC4KngVKqU3tbJFYRJKwUztePzhOVu6WSxmPLjVK1U1+ywWuh+D
 LEOxzCaAGffF/j3SR67jSXFqJpP271WzCdWVu6peEmnyq3tTF+hAjzcC80yEXTrK5w
 B6gmjCOdq9UdASu8mPw4xPF1drrDOnMQIXB9d+Io=
Date: Tue, 15 Sep 2020 08:58:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Saeed Mahameed <saeed@kernel.org>
Message-ID: <20200915085801.475e32f2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <a28498acdf87f11e81d3282d63f18dbe1a3d5329.camel@kernel.org>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
 <a28498acdf87f11e81d3282d63f18dbe1a3d5329.camel@kernel.org>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] make
 drivers/net/ethernet W=1 clean
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 14 Sep 2020 21:24:28 -0700 Saeed Mahameed wrote:
> I know Jakub and Dave do some compilation testing before merging but i
> don't know how much driver coverage they have and if they use a
> specific .config or they just manually create one on demand..

allmodconfig, it should be able to catch everything that builds on x86
and for a given GCC version.

The other advantage of this series is that we won't have to apply a
thousand single-warning fixes.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
