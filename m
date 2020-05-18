Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1471D727C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2020 10:05:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F5D885B0D;
	Mon, 18 May 2020 08:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 27M5eKA0TaqC; Mon, 18 May 2020 08:05:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7DDB285F6E;
	Mon, 18 May 2020 08:05:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56F221BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 08:05:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 50379884D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 08:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sAB7e65TyQim for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2020 08:05:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51338884CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589789120;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2zuzfJS1KoqEfDYFYkcTo1BDobs1aI+rBU/QJ6rZ0/U=;
 b=QeOLrBW65S18bxDABKguCufJCPSWwepCubguuKeCV92Xl6V/8mlqS+0D+nT+kUe2w1svMz
 xxdbCZOoNwHfibq1Rus8jMLc5iF4qP8ZRTHUdD4515nqj2fOrnGqdaH1TZBFSx4rR50fEG
 QVIg4jRv98sZMfGdLw/KPLTxoMuoZXA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-361-86-g7Mv7OCeDMuXfrLcsfQ-1; Mon, 18 May 2020 04:05:09 -0400
X-MC-Unique: 86-g7Mv7OCeDMuXfrLcsfQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 22F8B835B40;
 Mon, 18 May 2020 08:05:08 +0000 (UTC)
Received: from carbon (unknown [10.40.208.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8E1115D9DC;
 Mon, 18 May 2020 08:05:03 +0000 (UTC)
Date: Mon, 18 May 2020 10:05:02 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: kbuild test robot <lkp@intel.com>
Message-ID: <20200518100502.71f0a692@carbon>
In-Reply-To: <202005160901.jprqRj3x%lkp@intel.com>
References: <202005160901.jprqRj3x%lkp@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 7/115]
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2271:15: error: redefinition
 of 'truesize'
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org,
 brouer@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jeff,

This bug is not in net-next.  I do remember the issue, but I think it
was fixed up before the patch got applied.  Maybe you applied an old
version of the patch to your tree?

--Jesper


On Sat, 16 May 2020 09:52:03 +0800
kbuild test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
> head:   1ae51690bc317eb011c6fcc8f5549b151b347167
> commit: cc703d543a3b97138318bfe7d3c86cbf78136395 [7/115] ixgbe: fix XDP redirect on archs with PAGE_SIZE above 4K
> config: powerpc-defconfig (attached as .config)
> compiler: powerpc64-linux-gcc (GCC) 9.3.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout cc703d543a3b97138318bfe7d3c86cbf78136395
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day GCC_VERSION=9.3.0 make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>, old ones prefixed by <<):
> 
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c: In function 'ixgbe_rx_buffer_flip':
> >> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2271:15: error: redefinition of 'truesize'  
> 2271 |  unsigned int truesize = ring_uses_build_skb(rx_ring) ?
> |               ^~~~~~~~
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2267:15: note: previous definition of 'truesize' was here
> 2267 |  unsigned int truesize = ixgbe_rx_frame_truesize(rx_ring, size);
> |               ^~~~~~~~
> 
> vim +/truesize +2271 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> 
>   2262	
>   2263	static void ixgbe_rx_buffer_flip(struct ixgbe_ring *rx_ring,
>   2264					 struct ixgbe_rx_buffer *rx_buffer,
>   2265					 unsigned int size)
>   2266	{
>   2267		unsigned int truesize = ixgbe_rx_frame_truesize(rx_ring, size);
>   2268	#if (PAGE_SIZE < 8192)
>   2269		rx_buffer->page_offset ^= truesize;
>   2270	#else
> > 2271		unsigned int truesize = ring_uses_build_skb(rx_ring) ?  
>   2272					SKB_DATA_ALIGN(IXGBE_SKB_PAD + size) +
>   2273					SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) :
>   2274					SKB_DATA_ALIGN(size);
>   2275	
>   2276		rx_buffer->page_offset += truesize;
>   2277	#endif
>   2278	}
>   2279	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
