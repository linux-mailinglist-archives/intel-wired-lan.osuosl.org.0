Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5C032B9ED
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 19:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACA934013C;
	Wed,  3 Mar 2021 18:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ChRXEJjleq-z; Wed,  3 Mar 2021 18:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BFAB340140;
	Wed,  3 Mar 2021 18:36:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 473011BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 18:36:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42B9740140
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 18:36:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OYM6rBX28_BP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 18:36:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 254B84013C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 18:36:28 +0000 (UTC)
IronPort-SDR: iUQ/kQkZepP2/rq/jNJ/yR2wUwsDt44VSjvJRf5Qrgo3hOO25Cg4xUkLyVouuX04Mfu0T9TE+o
 OEF1iZsDEsBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="248657803"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="248657803"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 10:36:26 -0800
IronPort-SDR: Xl25tIzuIWRAEInTAxpzFP8Vi5x5AesZbiSt6fZplwDco2ojVV61tw9OIF49omVMFeB6u6Lv0v
 Gt/mu29GxdhA==
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="445382297"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.143.10])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 10:36:25 -0800
Date: Wed, 3 Mar 2021 10:36:24 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20210303103624.00003aff@intel.com>
In-Reply-To: <20210303153928.11764-1-maciej.fijalkowski@intel.com>
References: <20210303153928.11764-1-maciej.fijalkowski@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH intel-net 0/3] intel: Rx headroom fixes
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 kuba@kernel.org, bpf@vger.kernel.org, bjorn.topel@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Maciej Fijalkowski wrote:

> Fix Rx headroom by calling *_rx_offset() after the build_skb Rx ring
> flag is set.
> 
> It was reported by Jesper in [0] that XDP_REDIRECT stopped working after
> [1] patch in i40e.

Looks good to me, thanks for the fixes Maciej, and especially to
Jesper for the report of the issue.

For the series: 
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
