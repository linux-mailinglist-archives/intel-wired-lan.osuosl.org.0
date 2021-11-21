Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C0E4582F4
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Nov 2021 11:33:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A652980BBB;
	Sun, 21 Nov 2021 10:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HnWoKbWYEYu9; Sun, 21 Nov 2021 10:33:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FB3680C00;
	Sun, 21 Nov 2021 10:33:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5A9D1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 10:33:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A37A56078E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 10:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2HevxC8pNZCp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Nov 2021 10:33:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24865606B4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 10:33:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10174"; a="234891177"
X-IronPort-AV: E=Sophos;i="5.87,252,1631602800"; d="scan'208";a="234891177"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2021 02:33:29 -0800
X-IronPort-AV: E=Sophos;i="5.87,252,1631602800"; d="scan'208";a="508550724"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.13.8.200])
 ([10.13.8.200])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2021 02:33:24 -0800
To: Jesper Dangaard Brouer <brouer@redhat.com>, netdev@vger.kernel.org
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <163700859087.565980.3578855072170209153.stgit@firesoul>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
Message-ID: <a991d408-df9e-4a4a-1887-8973553adb23@linux.intel.com>
Date: Sun, 21 Nov 2021 12:33:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <163700859087.565980.3578855072170209153.stgit@firesoul>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] igc: enable XDP metadata
 in driver
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
> Enabling the XDP bpf_prog access to data_meta area is a very small
> change. Hint passing 'true' to xdp_prepare_buff().
> 
> The SKB layers can also access data_meta area, which required more
> driver changes to support. Reviewers, notice the igc driver have two
> different functions that can create SKBs, depending on driver config.
> 
> Hint for testers, ethtool priv-flags legacy-rx enables
> the function igc_construct_skb()
> 
>   ethtool --set-priv-flags DEV legacy-rx on
> 
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c |   29 +++++++++++++++++++----------
>   1 file changed, 19 insertions(+), 10 deletions(-)
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>




_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
