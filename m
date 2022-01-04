Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E891E484289
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jan 2022 14:31:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 747DD60E64;
	Tue,  4 Jan 2022 13:31:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VhhbrfVg6kTP; Tue,  4 Jan 2022 13:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 863A560BE3;
	Tue,  4 Jan 2022 13:31:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 786A71BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 13:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 745B540249
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 13:31:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cv9SacJeYfde for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jan 2022 13:31:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D9F44022E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 13:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641303062; x=1672839062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YSDR7VqnIEeScX1Ku+T5goZVV0p2a1T6EU3r17XKwSo=;
 b=TX7/rIMyfc9IuuvW8hKdNJ+lZYFku4YMrAwYdZNQIwEVxFYe9PmM5EkG
 vbr3THLzyjpi1tCZ/BTJGcXBEnhSaYyMoazf9EPe2VM84fsVddSmqoukZ
 k/n8+2mwBpPFaDow2RBugYm05aDbQs4hnNEbfly9391aryy5z704J6/1a
 if5R2Oq+hROBTt0iz+SYNVTtL428W8HLvS5sNv4HmlN03gOZwc3AZuEKy
 A7r7dxFg1kR4S7LfJS/XnBEM3/OcUKpGI4PqZp2vnaG4r48ZyzzJlmcZo
 csgjYmMRmdgP9YLkeKpGjECCG3vc/W6tTKsGBMEUmgBAeGcC7drmOevXD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="229041849"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="229041849"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 05:31:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="526049715"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 04 Jan 2022 05:30:58 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 204DUvm7014924; Tue, 4 Jan 2022 13:30:57 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Tue,  4 Jan 2022 14:29:36 +0100
Message-Id: <20220104132936.252202-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <c7a34d0096eb4ba98dd9ce5b64ba079126cab708.1641255235.git.christophe.jaillet@wanadoo.fr>
References: <c7a34d0096eb4ba98dd9ce5b64ba079126cab708.1641255235.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] intel: Simplify DMA setting
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Tue, 4 Jan 2022 01:15:20 +0100

> As stated in [1], dma_set_mask() with a 64-bit mask will never fail if
> dev->dma_mask is non-NULL.
> So, if it fails, the 32 bits case will also fail for the same reason.
> 
> Simplify code and remove some dead code accordingly.
> 
> [1]: https://lkml.org/lkml/2021/6/7/398
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c    | 22 ++++++-------------
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  9 +++-----
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  9 +++-----
>  drivers/net/ethernet/intel/ice/ice_main.c     |  2 --
>  drivers/net/ethernet/intel/ixgb/ixgb_main.c   | 19 +++++-----------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 20 ++++++-----------
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 20 +++++------------
>  7 files changed, 31 insertions(+), 70 deletions(-)

I like it, thanks!

Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

Tony might ask to split it into per-driver patches tho, will see.

--- 8< ---

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
