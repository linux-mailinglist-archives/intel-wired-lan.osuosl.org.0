Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0384617BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 15:14:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 421BC6065F;
	Mon, 29 Nov 2021 14:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XMZfo24z-tLE; Mon, 29 Nov 2021 14:14:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 622BF6062B;
	Mon, 29 Nov 2021 14:14:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7BF11BF36F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:14:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A56C26062B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:14:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RRV89Yuck_Yw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 14:14:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BEA1605BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:14:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10182"; a="223200798"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="223200798"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 06:10:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="459160226"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 29 Nov 2021 06:10:56 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1ATEAsZo026826; Mon, 29 Nov 2021 14:10:55 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Date: Mon, 29 Nov 2021 15:10:47 +0100
Message-Id: <20211129141047.8939-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <163700856423.565980.10162564921347693758.stgit@firesoul>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/2] igc: driver change to
 support XDP metadata
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesper Dangaard Brouer <brouer@redhat.com>
Date: Mon, 15 Nov 2021 21:36:20 +0100

> Changes to fix and enable XDP metadata to a specific Intel driver igc.
> Tested with hardware i225 that uses driver igc, while testing AF_XDP
> access to metadata area.

Would you mind if I take this your series into my bigger one that
takes care of it throughout all the Intel drivers?

> ---
> 
> Jesper Dangaard Brouer (2):
>       igc: AF_XDP zero-copy metadata adjust breaks SKBs on XDP_PASS
>       igc: enable XDP metadata in driver
> 
> 
>  drivers/net/ethernet/intel/igc/igc_main.c |   33 +++++++++++++++++++----------
>  1 file changed, 22 insertions(+), 11 deletions(-)
> 
> --

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
