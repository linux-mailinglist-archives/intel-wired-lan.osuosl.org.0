Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 961363FBF6C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 01:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EDFB60B4F;
	Mon, 30 Aug 2021 23:29:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UH7eZuE6d3CD; Mon, 30 Aug 2021 23:29:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A573660B5D;
	Mon, 30 Aug 2021 23:29:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DDD01BF401
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 23:29:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F19D0608FE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 23:29:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tVy3yREQIJJC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Aug 2021 23:29:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53D1D605D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 23:29:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 803B260FC0;
 Mon, 30 Aug 2021 23:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630366150;
 bh=xq8XScnmTK4fr9P3i7S760aCutNMN+7LDzGhcmVTh4s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aprqEKThxV+fIq/CmJneljvgQ33CjmgOaY7cZuBQkpsGCkoENprHmGElGAfxTWEQq
 CRWRsd1Pjyqdh+3a9EtrIA94B7Slf0p2QkFhkDUYiVsvTIe4sueBas55hGulzNscmb
 DM7d8pAIL630qA2N3o8QN/vsWQntuZUIWxayfp9Q8GT342bxUE5u8aDitg10EYF1ey
 cUIcR2zkOJQiGK3QgB8Q1sqhkmYNyB3BYKnB+xlFU9oD3ohYBLCcjOUJRydYfMGOxG
 9mfzbPSyPXTFoeMtuZ30jYzKikRxJjhfS7nZrPPZtqmnhYLINFHuZh2xmJbYF4ZW0p
 3R0j2vPi4KehQ==
Date: Mon, 30 Aug 2021 16:29:09 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Richard Cochran <richardcochran@gmail.com>
Message-ID: <20210830162909.110753ec@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210830205758.GA26230@hoboy.vegasvil.org>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210830205758.GA26230@hoboy.vegasvil.org>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: bsd@fb.com, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 30 Aug 2021 13:57:58 -0700 Richard Cochran wrote:
> > Please take a look at the 10.2 Operation modes of the G.8264 and at the Figure A.1
> > which depicts the EEC. This interface is to report the status of the EEC.  
> 
> Well, I read it, and it is still fairly high level with no mention at
> all of "DPLL".  I hope that the new RTNL states will cover other
> possible EEC implementations, too.
> 
> The "Reference source selection mechanism" is also quite vague.  Your
> patch is more specific:
> 
> +enum if_eec_src {
> +       IF_EEC_SRC_INVALID = 0,
> +       IF_EEC_SRC_UNKNOWN,
> +       IF_EEC_SRC_SYNCE,
> +       IF_EEC_SRC_GNSS,

Hmm, IDK if this really belongs in RTNL. The OCP time card that
Jonathan works on also wants to report signal lock, and it locks
to GNSS. It doesn't have any networking functionality whatsoever.

Can we add a genetlink family for clock info/configuration? From 
what I understood discussing this with Jonathan it sounded like most
clocks today have a vendor-specific character device for configuration
and reading status.

I'm happy to write the plumbing if this seems like an okay idea 
but too much work for anyone to commit.

> +       IF_EEC_SRC_PTP,
> +       IF_EEC_SRC_EXT,
> +       __IF_EEC_SRC_MAX,
> +};
> 
> But I guess your list is reasonable.  It can always be expanded, right?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
