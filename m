Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D58C06E5068
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 20:50:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E26C64151A;
	Mon, 17 Apr 2023 18:50:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E26C64151A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681757415;
	bh=LWorP6vq9E7zq4jryszJ2+Z9phEhE42ESNROLKq/JnA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DqdIGry4tw+VdPBTKsnAW22/yZiKQ/7EGw7jTxmkU2lq9JbWdzMPLPSpqRJrNCp7S
	 E9EtRVq6X5+lmHCfhjMGCu0orFVDIgUOCI7nKeAEHZEYsry3wH1vXTOO8bJdWpuY/R
	 pl3mG4WsHQBKiYDwyIrZrjbdBex3Xq958auwNvg0Er99M6jkqq/LZBIZiMCA5paZ0K
	 Hrp39zETUv+ZL2WPj0qKaIjAV+UK2D4go7PKzw6oa3tgS9Ahj5tPK11qHMptwhUPHE
	 ESqAGHs+j/8/YAYikBYGAWCG/xCsOCXKmj7+0tRywwC0yIGSOGPnlhIDnq3QwqUMkB
	 Eyp5/Pyq5ZsqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nxhj_YG7RvBP; Mon, 17 Apr 2023 18:50:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D2A9414E5;
	Mon, 17 Apr 2023 18:50:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D2A9414E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A56431C41E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 18:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D4A860BEA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 18:50:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D4A860BEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z3XVY6wHdZnW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 18:50:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BDE660B51
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6BDE660B51
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 18:50:07 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3513C60B8F;
 Mon, 17 Apr 2023 18:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9596C433EF;
 Mon, 17 Apr 2023 18:50:04 +0000 (UTC)
Date: Mon, 17 Apr 2023 11:50:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230417115003.0d2ac372@kernel.org>
In-Reply-To: <SJ1PR11MB618095F79E53B077E922F900B89C9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230414154902.2950535-1-yoong.siang.song@intel.com>
 <ffa2551d-ca04-3fe9-944a-0383e1d079e3@siemens.com>
 <PH0PR11MB58306BDB63286338EABAF61AD89F9@PH0PR11MB5830.namprd11.prod.outlook.com>
 <SJ1PR11MB618095F79E53B077E922F900B89C9@SJ1PR11MB6180.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681757405;
 bh=/SYyLnfM82MmE33YFZCDJXYlbvQSEgvgV14fp98uexE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oXrHVDg2ba3fKunDg88Fyb82QGklmMqoMwObeUyGwXoO78uAk+srLuf2KLzqZ6ZJm
 JBPV/Y2NYMQTNLEZcQc6bJHDCSqLDfKfrtyxk2ihTQLkvg4hFTOpU4gbJAIDh1UJxE
 IiRli5a/Q/hCmFRpE8ERVr45SZEPX5gmLI7XQDGNig7c7f2dkmJz62cEijFOiA01qy
 kPEvx7f6D6kNXjovR8vmKYvaMRojpp5rxn0848rZPzQHzVin+4N+lcWm3tl7PnIsAf
 HKLjvktaoQsne9EW3vECUV/W7qfPfBGEHfm8zXyMiOkvdpbV7z3QW2ScC8b7tCjM7G
 CNMJUt50vFSKw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oXrHVDg2
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/1] igc: read before write to
 SRRCTL register
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
Cc: "Bezdeka, Florian" <florian.bezdeka@siemens.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Stanislav
 Fomichev <sdf@google.com>, Andre Guedes <andre.guedes@intel.com>,
 "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 Daniel Borkmann <daniel@iogearbox.net>, John
 Fastabend <john.fastabend@gmail.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, Paolo Abeni <pabeni@redhat.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, "Joseph,
 Jithu" <jithu.joseph@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 David Laight <David.Laight@ACULAB.COM>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Vedang Patel <vedang.patel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 17 Apr 2023 02:53:13 +0000 Zulkifli, Muhammad Husaini wrote:
> Are you observing similar issue like below?
> ptp4l: timed out while polling for tx timestamp
> ptp4l: increasing tx_timestamp_timeout may correct this issue
> 
> If yes, only TXSTAMPO register is used for both PTP and non-PTP packets in 
> the current driver code. There is a possibility that the time stamp 
> for a PTP packet will be lost when there is a lot of traffic when multiple 
> applications request for hardware transmission timestamps. 
> Few months back, I submitted a patch series to enable the DMA 
> Timestamp for non-ptp packet which can resolve the above issue.
> https://lore.kernel.org/netdev/20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com/T/
> Will continuing back the activity soon.

FWIW the work on selecting the source of the timestamp is progressing
slowly:

https://lore.kernel.org/all/20230406173308.401924-1-kory.maincent@bootlin.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
