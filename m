Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2276B3655
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Sep 2019 10:18:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C89F885B36;
	Mon, 16 Sep 2019 08:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hfWgTzXEcfr1; Mon, 16 Sep 2019 08:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33B448555A;
	Mon, 16 Sep 2019 08:18:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4C221BF473
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2019 08:18:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9E02B84EED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2019 08:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gcSiUFeSbNmX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Sep 2019 08:18:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C5E7682D5F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2019 08:18:52 +0000 (UTC)
Received: from sslproxy06.your-server.de ([78.46.172.3])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1i9mDc-0000qx-Em; Mon, 16 Sep 2019 10:18:44 +0200
Received: from [2a02:120b:2c12:c120:71a0:62dd:894c:fd0e] (helo=pc-66.home)
 by sslproxy06.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1i9mDc-000Jar-6t; Mon, 16 Sep 2019 10:18:44 +0200
To: Ciara Loftus <ciara.loftus@intel.com>, netdev@vger.kernel.org,
 ast@kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com,
 jonathan.lemon@gmail.com
References: <20190913103948.32053-1-ciara.loftus@intel.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <880c7613-542f-27e6-b02b-73dbe17afbc6@iogearbox.net>
Date: Mon, 16 Sep 2019 10:18:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190913103948.32053-1-ciara.loftus@intel.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.101.4/25573/Sun Sep 15 10:22:02 2019)
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 0/3] AF_XDP fixes for i40e,
 ixgbe and xdpsock
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
Cc: bruce.richardson@intel.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kevin.laatz@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/13/19 12:39 PM, Ciara Loftus wrote:
> This patch set contains some fixes for AF_XDP zero copy in the i40e and
> ixgbe drivers as well as a fix for the 'xdpsock' sample application when
> running in unaligned mode.
> 
> Patches 1 and 2 fix a regression for the i40e and ixgbe drivers which
> caused the umem headroom to be added to the xdp handle twice, resulting in
> an incorrect value being received by the user for the case where the umem
> headroom is non-zero.
> 
> Patch 3 fixes an issue with the xdpsock sample application whereby the
> start of the tx packet data (offset) was not being set correctly when the
> application was being run in unaligned mode.
> 
> This patch set has been applied against commit a2c11b034142 ("kcm: use
> BPF_PROG_RUN")
> 
> ---
> v2:
> - Rearranged local variable order in i40e_run_xdp_zc and ixgbe_run_xdp_zc
> to comply with coding standards.
> 
> Ciara Loftus (3):
>    i40e: fix xdp handle calculations
>    ixgbe: fix xdp handle calculations
>    samples/bpf: fix xdpsock l2fwd tx for unaligned mode
> 
>   drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 4 ++--
>   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 ++--
>   samples/bpf/xdpsock_user.c                   | 2 +-
>   3 files changed, 5 insertions(+), 5 deletions(-)
> 

Applied, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
