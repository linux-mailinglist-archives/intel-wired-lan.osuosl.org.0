Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CE855E548
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 16:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E03E83F14;
	Tue, 28 Jun 2022 14:19:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E03E83F14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656425986;
	bh=OMv8c8NoZZ6pZsbv8PYedKkXRgTV1rHfq6s3/jdisPM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lzxf+mqljDLZBfpf/50RCPWiyd5uK5SCKTAOWDJYZxOy0ZKh1AgDOS83BFdapVxWu
	 Uf7YvP3lsthk4ctLU5WL4cgzZvU7SRK69olYFkFTDKqzGvsreHSZS1ASpzTZq3UMwh
	 FMRODKbHrtdxA+PJ8rxYuXrrdwA34Oq2KDJKBoZsZBeU81UqQMgvfOv/wbf4yb0T+n
	 vSTqIkg+/wDL2jCWcAtY5ccmqzSOBk8k9ovEeAV81r2LpDLDZlZtuNul17Pxds7HCy
	 H9X2fgfBYm/kiDrt5Z1wIChRv0esmNxh3Y2vsMUA9Kj3pxuok2vo+Cb2q7BTnLecSZ
	 JUc9mqincQulA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i9Boudgv3roI; Tue, 28 Jun 2022 14:19:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EEAE829A9;
	Tue, 28 Jun 2022 14:19:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EEAE829A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E05411BF319
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 14:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C519D813F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 14:19:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C519D813F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wogWk17-te7O for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 14:19:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19DDB829A9
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19DDB829A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 14:19:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="261557761"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="261557761"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 07:19:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="732771734"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jun 2022 07:19:35 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25SEJYLc014435; Tue, 28 Jun 2022 15:19:34 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Date: Tue, 28 Jun 2022 16:19:11 +0200
Message-Id: <20220628141911.1403944-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628134308.706012-1-mateusz.palczewski@intel.com>
References: <20220628134308.706012-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656425980; x=1687961980;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EgctLtbBKHBpqqsOsPIaiaM+6CZb9vzAIjBdiHzrGCk=;
 b=Z/T7LdHu1BHT5ul9FUbPJNlp1pcdDMQOlayK1jNx84lAm5uO10n3ZWZx
 4WV7QE6TFwZ+n0C58SRYWDpiJRCgDr4/B1/2t8PKpEvvxlIw3me5801Id
 LbN/YasBPXUPWxSfePVDlA6Gh3E9tSgRNTG8hR3AYbpxXjy32n+6qVG1A
 PksQZoddFg+hAkPLarP5sfXIvechcJKPPnW+8wip8IEYZ+qnP6koJYjns
 0qp/ZgKlRQ4jwHgB3Ygowv/f7Q5Nx+odhIywmXzoiplFJ5bnyrwoRxyXT
 n+aqTvAq7+w2oodvmacDxzAtqieajtUeOY4zHtkIzX+E0Nv0uzWbXf4vs
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z/T7LdHu
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/3] iavf: Fix pending DMA
 allocations while released from device
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Date: Tue, 28 Jun 2022 15:43:08 +0200

First, please check your Git mail settings. You appear as
'"Palczewski, Mateusz"' in the 'From:' mail header, but at the same
time as 'Mateusz Palczewski' in Signed-off-bys. That's not how it
should look like, please pick one (preferably the one from SoBs) and
make sure it's configured properly everywhere.

> Fix multiple issues that can arise, when VF cannot configure ASQ/ARQ properly.
> Failing to do so can lead to driver hang, null ptr dereference and possible
> DMA allocations leak.
> 
> ---
>  v2: Add comment to make code more understandable
> ---
> 
> Przemyslaw Patynowski (3):
>   iavf: Fix reset error handling
>   iavf: Fix NULL pointer dereference in iavf_get_link_ksettings
>   iavf: Fix adminq error handling

Second, please check your Git mail settings again in regards to that
Git doesn't make a thread from your patch series, e.g. it doesn't
put correct 'In-Reply-To:' and 'References:' headers starting from
the second message. That breaks Patchwork, i.e. it won't be able to
test it as a series etc.

Please do a resend once you fix all of these.

> 
>  drivers/net/ethernet/intel/iavf/iavf_adminq.c  | 15 +++++++++++++--
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  6 ++++++
>  drivers/net/ethernet/intel/iavf/iavf_main.c    | 14 ++++++++++----
>  3 files changed, 29 insertions(+), 6 deletions(-)
> 
> -- 
> 2.27.0

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
