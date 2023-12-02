Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBB0801DDC
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Dec 2023 17:48:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83F9240547;
	Sat,  2 Dec 2023 16:48:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83F9240547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701535719;
	bh=1xo/BDgoaYsllWGuAyeC0P2jMUnOch9r00aVgTQ1H9k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hiiDNXv0Nlx6P/zKAxw4eIWdR2GVxGmX2APGOmdDxrMar3esyC4pjAg8D/oefwr+G
	 OhDH5ZQWiJEqnyIWf9SkdeSBC8swASh+5RuAVPGQa5sw7mjL2yd8uREsZkvAha/q4n
	 viEBMRTS6XoxZmvbbL5R8qHXafuVZ11SellV+11fiX1R6LpCBK6U8cDWNbHzL+HAPt
	 vDvvLEm2jDcUdKZeNvDtEJG9UMomn3u+bgQIHpKjaIv+cQbHH1CwxLwNsUt8mDrxMg
	 0Z/SkVtXgr5QGMpy/IPvUQf60AxSoFDa/h4ZWBxJZ7HX9p/ezrF+yRSUHUFJzvDOeA
	 PsPkpNQPi4n+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IYfIs5hh9fuv; Sat,  2 Dec 2023 16:48:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B2B440530;
	Sat,  2 Dec 2023 16:48:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B2B440530
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C7E71BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Dec 2023 16:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E264740530
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Dec 2023 16:48:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E264740530
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PNNLTMyvdaQ6 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Dec 2023 16:48:30 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B754D4052D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Dec 2023 16:48:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B754D4052D
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9DA9D60B93;
 Sat,  2 Dec 2023 16:48:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECD44C433C9;
 Sat,  2 Dec 2023 16:48:26 +0000 (UTC)
Date: Sat, 2 Dec 2023 16:48:24 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231202164824.GA50400@kernel.org>
References: <20231129161711.771729-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231129161711.771729-1-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701535709;
 bh=DnZEzNXP9hV68Bv4xg8L4T2Cgy7MhrlHkGJzKWd0Rog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SZoOTDXNOwfGy+XbS4lGBQnlNtfStPpSe6XOuqQbxnbXDAUBoZaxsBOXb2D0e9dmu
 C7p8JBEBYJRi0f0bK+IiWqwRZivi4i7Yep2WYel8lRjn8pg/WNx16abD/9vaSwAyAR
 k4GatGF7Xw7DiyvOAZMGPkwt6A+K+y//RaCLR9ncjQMGdaNL+aqaolGYgZJKoIem/6
 fMHcyTIbpba7xUZLqzio6tpm7HN3f4iXQsM8BLAQs6HGWp7wxz0PXN6ghbQEEtNMDe
 NZa3CQKerGMXmPiMF4YfSgJAGp7mYigBA8NEINbq3X72XTGMZRY5/a/Q6TV9VTNUxc
 NDJVm2GW1LVYQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SZoOTDXN
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix ST code value for
 Clause 45
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 29, 2023 at 05:17:10PM +0100, Ivan Vecera wrote:
> ST code value for clause 45 that has been changed by
> commit 8196b5fd6c73 ("i40e: Refactor I40E_MDIO_CLAUSE* macros")
> is currently wrong.
> 
> The mentioned commit refactored ..MDIO_CLAUSE??_STCODE_MASK so
> their value is the same for both clauses. The value is correct
> for clause 22 but not for clause 45.
> 
> Fix the issue by adding a parameter to I40E_GLGEN_MSCA_STCODE_MASK
> macro that specifies required value.
> 
> Fixes: 8196b5fd6c73 ("i40e: Refactor I40E_MDIO_CLAUSE* macros")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Thanks Ivan,

I agree with your analysis and this fix looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
