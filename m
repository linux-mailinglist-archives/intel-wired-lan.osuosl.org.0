Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CEF461A14
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 15:42:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7754E60A6D;
	Mon, 29 Nov 2021 14:42:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BvITmSeZAiNO; Mon, 29 Nov 2021 14:42:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81DCC60A6B;
	Mon, 29 Nov 2021 14:42:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 268FC1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 188E4402E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AipAfM1liZx9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 14:41:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E150140290
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:41:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10182"; a="322214586"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="322214586"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 06:41:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="594695339"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Nov 2021 06:41:56 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1ATEfsWP002801; Mon, 29 Nov 2021 14:41:54 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
Date: Mon, 29 Nov 2021 15:41:47 +0100
Message-Id: <20211129144147.10242-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <de14fefc-a8c1-ff6c-5354-8cce4a3f66f9@redhat.com>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <20211129141047.8939-1-alexandr.lobakin@intel.com>
 <de14fefc-a8c1-ff6c-5354-8cce4a3f66f9@redhat.com>
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, brouer@redhat.com,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesper Dangaard Brouer <jbrouer@redhat.com>
Date: Mon, 29 Nov 2021 15:29:07 +0100

> On 29/11/2021 15.10, Alexander Lobakin wrote:
> > From: Jesper Dangaard Brouer <brouer@redhat.com>
> > Date: Mon, 15 Nov 2021 21:36:20 +0100
> > 
> >> Changes to fix and enable XDP metadata to a specific Intel driver igc.
> >> Tested with hardware i225 that uses driver igc, while testing AF_XDP
> >> access to metadata area.
> > 
> > Would you mind if I take this your series into my bigger one that
> > takes care of it throughout all the Intel drivers?
> 
> I have a customer that depend on this fix.  They will have to do the 
> backport anyway (to v5.13), but it would bring confidence on their side 
> if the commits appear in an official git-tree before doing the backport 
> (and optimally with a SHA they can refer to).

Yeah, sure, it's totally fine to get them accepted separately, I'll
just refer to them in my series.

> Tony Nguyen have these landed in your git-tree?

Doesn't seem like. The reason might be that you responded to my
patch 2/2 comments only now.

> --JEsper

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
