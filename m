Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F273145F128
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Nov 2021 16:55:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78F5B607A5;
	Fri, 26 Nov 2021 15:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WHdMb7dwjTJE; Fri, 26 Nov 2021 15:55:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CD37607AF;
	Fri, 26 Nov 2021 15:55:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 241911BF34A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 15:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 12D0B80DA1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 15:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HTJy_e1a_xEf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Nov 2021 15:54:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59A4F80D78
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 15:54:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10180"; a="222552924"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="222552924"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 07:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="539280176"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 26 Nov 2021 07:54:51 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1AQFsn7W000916; Fri, 26 Nov 2021 15:54:49 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
Date: Fri, 26 Nov 2021 16:54:08 +0100
Message-Id: <20211126155408.147211-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <66f62ef7-f4c6-08df-a8e1-dbbe34b9b125@redhat.com>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <163700858579.565980.15265721798644582439.stgit@firesoul>
 <YaD8UHOxHasBkqEW@boxer> <66f62ef7-f4c6-08df-a8e1-dbbe34b9b125@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] igc: AF_XDP zero-copy
 metadata adjust breaks SKBs on XDP_PASS
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
Cc: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, bjorn@kernel.org,
 brouer@redhat.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesper Dangaard Brouer <jbrouer@redhat.com>
Date: Fri, 26 Nov 2021 16:32:47 +0100

> On 26/11/2021 16.25, Maciej Fijalkowski wrote:
> > On Mon, Nov 15, 2021 at 09:36:25PM +0100, Jesper Dangaard Brouer wrote:
> >> Driver already implicitly supports XDP metadata access in AF_XDP
> >> zero-copy mode, as xsk_buff_pool's xp_alloc() naturally set xdp_buff
> >> data_meta equal data.
> >>
> >> This works fine for XDP and AF_XDP, but if a BPF-prog adjust via
> >> bpf_xdp_adjust_meta() and choose to call XDP_PASS, then igc function
> >> igc_construct_skb_zc() will construct an invalid SKB packet. The
> >> function correctly include the xdp->data_meta area in the memcpy, but
> >> forgot to pull header to take metasize into account.
> >>
> >> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> >> Signed-off-by: Jesper Dangaard Brouer<brouer@redhat.com>
> > Acked-by: Maciej Fijalkowski<maciej.fijalkowski@intel.com>
> > 
> > Great catch. Will take a look at other ZC enabled Intel drivers if they
> > are affected as well.

They are. We'll cover them in a separate series, much thanks for
revealing that (:

> Thanks a lot for taking this task!!! :-)
> --Jesper

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
