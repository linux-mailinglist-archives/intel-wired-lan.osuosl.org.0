Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 870954582F1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Nov 2021 11:32:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C0B14039B;
	Sun, 21 Nov 2021 10:32:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7fkqGSgM2sXk; Sun, 21 Nov 2021 10:32:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 31EA740285;
	Sun, 21 Nov 2021 10:32:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 480E51BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 10:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4208F40285
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 10:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Rp9Y9qzDJf4 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Nov 2021 10:32:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 116D940221
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 10:32:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10174"; a="234599344"
X-IronPort-AV: E=Sophos;i="5.87,252,1631602800"; d="scan'208";a="234599344"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2021 02:32:18 -0800
X-IronPort-AV: E=Sophos;i="5.87,252,1631602800"; d="scan'208";a="508550472"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.13.8.200])
 ([10.13.8.200])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2021 02:32:15 -0800
To: Jesper Dangaard Brouer <brouer@redhat.com>, netdev@vger.kernel.org
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <163700858579.565980.15265721798644582439.stgit@firesoul>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
Message-ID: <3e47fd8d-b725-8a52-d1ff-363a7194061c@linux.intel.com>
Date: Sun, 21 Nov 2021 12:32:13 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <163700858579.565980.15265721798644582439.stgit@firesoul>
Content-Language: en-US
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
Cc: bjorn@kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/15/2021 22:36, Jesper Dangaard Brouer wrote:
> Driver already implicitly supports XDP metadata access in AF_XDP
> zero-copy mode, as xsk_buff_pool's xp_alloc() naturally set xdp_buff
> data_meta equal data.
> 
> This works fine for XDP and AF_XDP, but if a BPF-prog adjust via
> bpf_xdp_adjust_meta() and choose to call XDP_PASS, then igc function
> igc_construct_skb_zc() will construct an invalid SKB packet. The
> function correctly include the xdp->data_meta area in the memcpy, but
> forgot to pull header to take metasize into account.
> 
> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c |    4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
