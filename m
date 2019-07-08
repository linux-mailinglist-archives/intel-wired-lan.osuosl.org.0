Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64438638ED
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2019 17:55:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2179B2155D;
	Tue,  9 Jul 2019 15:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rIjxc-FVHwQD; Tue,  9 Jul 2019 15:55:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1E8BD2153E;
	Tue,  9 Jul 2019 15:55:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 311F61BF36C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 00:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2AB6E864F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 00:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PC90uKA4aoIn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2019 00:07:20 +0000 (UTC)
X-Greylist: delayed 00:26:35 by SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 95C5D864CB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 00:07:20 +0000 (UTC)
Received: from [78.46.172.2] (helo=sslproxy05.your-server.de)
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1hkdFI-0005Rv-Lr; Tue, 09 Jul 2019 01:40:32 +0200
Received: from [178.193.45.231] (helo=linux.home)
 by sslproxy05.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1hkdFI-000VD0-Du; Tue, 09 Jul 2019 01:40:32 +0200
To: Magnus Karlsson <magnus.karlsson@intel.com>, bjorn.topel@intel.com,
 ast@kernel.org, netdev@vger.kernel.org, brouer@redhat.com
References: <1562244134-19069-1-git-send-email-magnus.karlsson@intel.com>
 <1562244134-19069-2-git-send-email-magnus.karlsson@intel.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <57e022b7-ac0e-6a9c-5078-c44988fd9fe6@iogearbox.net>
Date: Tue, 9 Jul 2019 01:40:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1562244134-19069-2-git-send-email-magnus.karlsson@intel.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.3/25504/Mon Jul  8 10:05:57 2019)
X-Mailman-Approved-At: Tue, 09 Jul 2019 15:55:21 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 1/6] xsk: replace
 ndo_xsk_async_xmit with ndo_xsk_wakeup
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, maciejromanfijalkowski@gmail.com,
 bruce.richardson@intel.com, ciara.loftus@intel.com,
 ilias.apalodimas@linaro.org, xiaolong.ye@intel.com,
 intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 maciej.fijalkowski@intel.com, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 07/04/2019 02:42 PM, Magnus Karlsson wrote:
> This commit replaces ndo_xsk_async_xmit with ndo_xsk_wakeup. This new
> ndo provides the same functionality as before but with the addition of
> a new flags field that is used to specifiy if Rx, Tx or both should be
> woken up. The previous ndo only woke up Tx, as implied by the
> name. The i40e and ixgbe drivers (which are all the supported ones)
> are updated with this new interface.
> 
> This new ndo will be used by the new need_wakeup functionality of XDP
> sockets that need to be able to wake up both Rx and Tx driver
> processing.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c          |  5 +++--
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c           |  7 ++++---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.h           |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c        |  5 +++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c         |  4 ++--
>  drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c  |  2 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.h  |  2 +-
>  drivers/net/ethernet/mellanox/mlx5/core/en_main.c    |  2 +-
>  include/linux/netdevice.h                            | 14 ++++++++++++--
>  net/xdp/xdp_umem.c                                   |  3 +--
>  net/xdp/xsk.c                                        |  3 ++-
>  12 files changed, 32 insertions(+), 19 deletions(-)

Looks good, but given driver changes to support the AF_XDP need_wakeup
feature are quite trivial, is there a reason that you updated mlx5 here
but not for the actual support such that all three in-tree drivers are
supported?

Thanks,
Daniel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
