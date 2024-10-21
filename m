Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BD19A5E63
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 10:15:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 582E94035A;
	Mon, 21 Oct 2024 08:15:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kRXvoO1KEkmF; Mon, 21 Oct 2024 08:15:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F0D440354
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729498524;
	bh=U7ATVCvMfV23/S+wociAXrpGLe8LsKX0LQdxhFArAbY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NMfPk9R7dE1uUFciMV6kojlbgTo21mtzpQId5pSWM0u3fSxU6S6e+uOqt+Il4bp4s
	 tzx6nRazEESbnreWk21WyBNQOjGit5vPEeQpDQgpPXE227Z3atsVJi34DuVe/fmQ9g
	 qyqT9qzHzz3hgHplJM1rMTNdtRIFindfucuCV1AwrsqkIB4cbRue+yk5pyvQr6Z2b2
	 TL6lgXRlO7t9EWU8n+KqGX3lei0ZXaqvSMx0gX7Qa0LsMzc49U7BE4VrydNTusEtiu
	 5ZsWYZbmm5dNkZYpiS6PbxmpmYAdnPR6/EOwcaXgOsiht0wDO1S7MEfEvGO68v4HIV
	 37lCX3xcpcBuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F0D440354;
	Mon, 21 Oct 2024 08:15:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 166A5AF2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 08:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB3F560630
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 08:15:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v66xwcYq5DLU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 08:15:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.191;
 helo=szxga05-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CC55D6061C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC55D6061C
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC55D6061C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 08:15:19 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.214])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4XX7Km6XBtz1HFfR;
 Mon, 21 Oct 2024 16:10:52 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id 8FC171A016C;
 Mon, 21 Oct 2024 16:15:11 +0800 (CST)
Received: from [10.174.179.113] (10.174.179.113) by
 dggpemf500002.china.huawei.com (7.185.36.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Mon, 21 Oct 2024 16:15:11 +0800
Message-ID: <3c784db3-bb9e-4319-788b-44a090f48c22@huawei.com>
Date: Mon, 21 Oct 2024 16:15:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>, <oe-kbuild@lists.linux.dev>
References: <4fcf3e40-06b1-49ac-806e-078e3df79243@stanley.mountain>
From: Yue Haibing <yuehaibing@huawei.com>
In-Reply-To: <4fcf3e40-06b1-49ac-806e-078e3df79243@stanley.mountain>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.174.179.113]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: Re: [Intel-wired-lan] [tnguy-next-queue:dev-queue 50/51]
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2391 ixgbe_clean_rx_irq()
 error: uninitialized symbol 'xdp_res'.
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024/10/21 15:57, Dan Carpenter wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
> head:   02a4f6b6bf8145719b1318ef112758c889660044
> commit: 25892a448d275daf1dd6714aa5ffa51ad78e9dda [50/51] ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()
> config: x86_64-randconfig-161-20241020 (https://download.01.org/0day-ci/archive/20241021/202410210921.qWQ9GIQR-lkp@intel.com/config)
> compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Closes: https://lore.kernel.org/r/202410210921.qWQ9GIQR-lkp@intel.com/
> 
> New smatch warnings:
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2391 ixgbe_clean_rx_irq() error: uninitialized symbol 'xdp_res'.

Sorry，I forget to initialized 'xdp_res' in ixgbe and ixgbevf, should I send v3 or just a fix patch on v2?
> 
> vim +/xdp_res +2391 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> 
> 5a85e737f30ce7 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Eliezer Tamir          2013-06-10  2328  static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2329  			       struct ixgbe_ring *rx_ring,
> f4de00ed58df50 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-09-25  2330  			       const int budget)
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2331  {
> 43b5169d8355cc drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Lorenzo Bianconi       2020-12-22  2332  	unsigned int total_rx_bytes = 0, total_rx_packets = 0, frame_sz = 0;
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2333  	struct ixgbe_adapter *adapter = q_vector->adapter;
> 33fdc82f08835d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-04-24  2334  #ifdef IXGBE_FCOE
> 4ffdf91a5feae6 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Mark Rustad            2012-07-18  2335  	int ddp_bytes;
> 4ffdf91a5feae6 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Mark Rustad            2012-07-18  2336  	unsigned int mss = 0;
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2337  #endif /* IXGBE_FCOE */
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2338  	u16 cleaned_count = ixgbe_desc_unused(rx_ring);
> c0d4e9d223c5f4 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Maciej Fijalkowski     2021-01-18  2339  	unsigned int offset = rx_ring->rx_offset;
> ad088ec4807688 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2018-06-26  2340  	unsigned int xdp_xmit = 0;
> 99ffc5ade4e870 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2018-01-03  2341  	struct xdp_buff xdp;
> 25892a448d275d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Yue Haibing            2024-10-18  2342  	int xdp_res;
> 99ffc5ade4e870 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2018-01-03  2343  
> cf02512899805d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2020-05-14  2344  	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
> cf02512899805d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2020-05-14  2345  #if (PAGE_SIZE < 8192)
> 43b5169d8355cc drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Lorenzo Bianconi       2020-12-22  2346  	frame_sz = ixgbe_rx_frame_truesize(rx_ring, 0);
> cf02512899805d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2020-05-14  2347  #endif
> 43b5169d8355cc drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Lorenzo Bianconi       2020-12-22  2348  	xdp_init_buff(&xdp, frame_sz, &rx_ring->xdp_rxq);
> cf02512899805d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2020-05-14  2349  
> fdabfc8a74c713 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Eric W. Biederman      2014-03-14  2350  	while (likely(total_rx_packets < budget)) {
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2351  		union ixgbe_adv_rx_desc *rx_desc;
> 3fd218767fa498 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2017-01-17  2352  		struct ixgbe_rx_buffer *rx_buffer;
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2353  		struct sk_buff *skb;
> a06316dc87bdc0 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Björn Töpel            2020-08-25  2354  		int rx_buffer_pgcnt;
> 3fd218767fa498 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2017-01-17  2355  		unsigned int size;
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2356  
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2357  		/* return some buffers to hardware, one at a time is too slow */
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2358  		if (cleaned_count >= IXGBE_RX_BUFFER_WRITE) {
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2359  			ixgbe_alloc_rx_buffers(rx_ring, cleaned_count);
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2360  			cleaned_count = 0;
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2361  		}
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2362  
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2363  		rx_desc = IXGBE_RX_DESC(rx_ring, rx_ring->next_to_clean);
> 3fd218767fa498 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2017-01-17  2364  		size = le16_to_cpu(rx_desc->wb.upper.length);
> 3fd218767fa498 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2017-01-17  2365  		if (!size)
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2366  			break;
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2367  
> 124b74c18e0e31 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2014-12-11  2368  		/* This memory barrier is needed to keep us from reading
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2369  		 * any other fields out of the rx_desc until we know the
> 124b74c18e0e31 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2014-12-11  2370  		 * descriptor has been written back
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2371  		 */
> 124b74c18e0e31 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2014-12-11  2372  		dma_rmb();
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2373  
> a06316dc87bdc0 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Björn Töpel            2020-08-25  2374  		rx_buffer = ixgbe_get_rx_buffer(rx_ring, rx_desc, &skb, size, &rx_buffer_pgcnt);
> 3fd218767fa498 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2017-01-17  2375  
> 18806c9ea28320 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck        2012-07-20  2376  		/* retrieve a buffer from the ring */
> 9247080816297d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-04-24  2377  		if (!skb) {
> be9df4aff65f18 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Lorenzo Bianconi       2020-12-22  2378  			unsigned char *hard_start;
> be9df4aff65f18 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Lorenzo Bianconi       2020-12-22  2379  
> be9df4aff65f18 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Lorenzo Bianconi       2020-12-22  2380  			hard_start = page_address(rx_buffer->page) +
> be9df4aff65f18 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Lorenzo Bianconi       2020-12-22  2381  				     rx_buffer->page_offset - offset;
> be9df4aff65f18 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Lorenzo Bianconi       2020-12-22  2382  			xdp_prepare_buff(&xdp, hard_start, offset, size, true);
> 470bcfd6039b39 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Lorenzo Bianconi       2022-05-12  2383  			xdp_buff_clear_frags_flag(&xdp);
> cf02512899805d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2020-05-14  2384  #if (PAGE_SIZE > 4096)
> cf02512899805d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2020-05-14  2385  			/* At larger PAGE_SIZE, frame_sz depend on len size */
> cf02512899805d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2020-05-14  2386  			xdp.frame_sz = ixgbe_rx_frame_truesize(rx_ring, size);
> cf02512899805d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2020-05-14  2387  #endif
> 25892a448d275d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Yue Haibing            2024-10-18  2388  			xdp_res = ixgbe_run_xdp(adapter, rx_ring, &xdp);
> 9247080816297d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-04-24  2389  		}
> 
> xdp_res isn't initialized on else path
> 
> 9247080816297d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-04-24  2390  
> 25892a448d275d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Yue Haibing            2024-10-18 @2391  		if (xdp_res) {
> ad088ec4807688 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2018-06-26  2392  			if (xdp_res & (IXGBE_XDP_TX | IXGBE_XDP_REDIR)) {
> ad088ec4807688 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jesper Dangaard Brouer 2018-06-26  2393  				xdp_xmit |= xdp_res;
> 33fdc82f08835d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-04-24  2394  				ixgbe_rx_buffer_flip(rx_ring, rx_buffer, size);
> 7379f97a4fce3c drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-03-28  2395  			} else {
> 33fdc82f08835d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-04-24  2396  				rx_buffer->pagecnt_bias++;
> 7379f97a4fce3c drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-03-28  2397  			}
> 9247080816297d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-04-24  2398  			total_rx_packets++;
> 9247080816297d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-04-24  2399  			total_rx_bytes += size;
> 9247080816297d drivers/net/ethernet/intel/ixgbe/ixgbe_main.c John Fastabend         2017-04-24  2400  		} else if (skb) {
> 
