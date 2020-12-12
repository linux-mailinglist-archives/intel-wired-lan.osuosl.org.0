Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC622D8473
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Dec 2020 05:23:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 799AC87598;
	Sat, 12 Dec 2020 04:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hnw7-zAWptRP; Sat, 12 Dec 2020 04:23:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97FBD87586;
	Sat, 12 Dec 2020 04:23:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9AD051BF28B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Dec 2020 04:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9591E87574
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Dec 2020 04:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2wzpQeThASLS for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Dec 2020 04:23:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 30A16871C3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Dec 2020 04:23:17 +0000 (UTC)
Date: Fri, 11 Dec 2020 20:23:15 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607746996;
 bh=leCvGZerFpKuIBp7BGGLuawXTLX30TAetAu1xn+PdkQ=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=AAZU+S5xH7Kh9WhNSErw6FXBpSh1emMiWiI9J4zNiH9U7KMp/H3YpmUzPw1AzlHqQ
 A2lbBfZhOpXkAxF8Ow5zE3F4SJsb2Tkpu/gffJP7BKt5JIriJbaY8BmqAPWZmCl/v8
 vxx91hC8pQUewq7c9u1JGhtdAc5tObwq+ouu00/VNxUM6+SlwFGRZtezljP+gl5D9l
 4GdNaMSIvGg02b/rkstp7zrDh5trElGxxmtRvGrcPQKdB0ay9EbkDC3xGTzvDA6dKb
 TpRvksOD7aDzARqo1G7jPcwKbqQUsq8WpSUhegSGGPiWlySPscrjNVxkjUjgutGJsP
 XbL495A8HWkDw==
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20201211202315.570b6605@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201211164956.59628-6-maciej.fijalkowski@intel.com>
References: <20201211164956.59628-1-maciej.fijalkowski@intel.com>
 <20201211164956.59628-6-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/8] ice: move skb pointer
 from rx_buf to rx_ring
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 11 Dec 2020 17:49:53 +0100 Maciej Fijalkowski wrote:
> @@ -864,14 +865,12 @@ ice_reuse_rx_page(struct ice_ring *rx_ring, struct ice_rx_buf *old_buf)
>   * for use by the CPU.
>   */
>  static struct ice_rx_buf *
> -ice_get_rx_buf(struct ice_ring *rx_ring, struct sk_buff **skb,
> -	       const unsigned int size)
> +ice_get_rx_buf(struct ice_ring *rx_ring, const unsigned int size)
>  {

FWIW I think you missed adjusting kdoc here.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
