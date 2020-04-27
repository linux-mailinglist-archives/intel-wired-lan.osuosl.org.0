Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E8D1BCCF5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2020 22:06:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F5A786881;
	Tue, 28 Apr 2020 20:06:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rM-U9CLSylSb; Tue, 28 Apr 2020 20:06:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1825C86652;
	Tue, 28 Apr 2020 20:06:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7BAFA1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2020 19:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 74AB58756C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2020 19:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZDTvvlRSpDul for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2020 19:52:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7BE8C861B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2020 19:52:00 +0000 (UTC)
Received: from sslproxy01.your-server.de ([78.46.139.224])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jT9nE-0000wD-CR; Mon, 27 Apr 2020 21:51:52 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy01.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jT9nD-000VkW-Oy; Mon, 27 Apr 2020 21:51:51 +0200
To: Jesper Dangaard Brouer <brouer@redhat.com>, sameehj@amazon.com
References: <158757160439.1370371.13213378122947426220.stgit@firesoul>
 <158757175790.1370371.16071055208561239272.stgit@firesoul>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <69e05693-c3df-8f48-7a08-03bf4d58cb07@iogearbox.net>
Date: Mon, 27 Apr 2020 21:51:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <158757175790.1370371.16071055208561239272.stgit@firesoul>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25795/Mon Apr 27 14:00:10 2020)
X-Mailman-Approved-At: Tue, 28 Apr 2020 20:06:08 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 23/33] ixgbe: add XDP frame
 size to driver
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
Cc: steffen.klassert@secunet.com,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, zorik@amazon.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 gtzalik@amazon.com, Saeed Mahameed <saeedm@mellanox.com>,
 intel-wired-lan@lists.osuosl.org, David Ahern <dsahern@gmail.com>,
 bpf@vger.kernel.org, Daniel Borkmann <borkmann@iogearbox.net>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>, akiyano@amazon.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/22/20 6:09 PM, Jesper Dangaard Brouer wrote:
> This driver uses different memory models depending on PAGE_SIZE at
> compile time. For PAGE_SIZE 4K it uses page splitting, meaning for
> normal MTU frame size is 2048 bytes (and headroom 192 bytes). For
> larger MTUs the driver still use page splitting, by allocating
> order-1 pages (8192 bytes) for RX frames. For PAGE_SIZE larger than
> 4K, driver instead advance its rx_buffer->page_offset with the frame
> size "truesize".
> 
> For XDP frame size calculations, this mean that in PAGE_SIZE larger
> than 4K mode the frame_sz change on a per packet basis. For the page
> split 4K PAGE_SIZE mode, xdp.frame_sz is more constant and can be
> updated once outside the main NAPI loop.
> 
> The default setting in the driver uses build_skb(), which provides
> the necessary headroom and tailroom for XDP-redirect in RX-frame
> (in both modes).
> 
> There is one complication, which is legacy-rx mode (configurable via
> ethtool priv-flags). There are zero headroom in this mode, which is a
> requirement for XDP-redirect to work. The conversion to xdp_frame
> (convert_to_xdp_frame) will detect this insufficient space, and
> xdp_do_redirect() call will fail. This is deemed acceptable, as it
> allows other XDP actions to still work in legacy-mode. In
> legacy-mode + larger PAGE_SIZE due to lacking tailroom, we also
> accept that xdp_adjust_tail shrink doesn't work.
> 
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> Cc: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>

Alexander/Jeff, in case the ixgbe/i40e/ice changes look good to you,
please ack.

Thanks,
Daniel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
