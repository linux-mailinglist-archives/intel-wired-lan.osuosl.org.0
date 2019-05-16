Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A22A20EC8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2019 20:37:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB27686FFD;
	Thu, 16 May 2019 18:37:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OARBHWZ6uLGh; Thu, 16 May 2019 18:37:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F76887056;
	Thu, 16 May 2019 18:37:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF6D01BF33B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 18:37:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB4248704D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 18:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qsoeLXJSHOGr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2019 18:37:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B3B3B86FFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 18:37:09 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id D08D646380B; Thu, 16 May 2019 14:37:05 -0400 (EDT)
Date: Thu, 16 May 2019 14:37:05 -0400
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20190516183705.e4zflbli7oujlbek@csclub.uwaterloo.ca>
References: <20190502185250.vlsainugtn6zjd6p@csclub.uwaterloo.ca>
 <CAKgT0Uc_YVzns+26-TL+hhmErqG4_w4evRqLCaa=7nME7Zq+Vg@mail.gmail.com>
 <20190503151421.akvmu77lghxcouni@csclub.uwaterloo.ca>
 <CAKgT0UcV2wCr6iUYktZ+Bju_GNpXKzR=M+NLfKhUsw4bsJSiyA@mail.gmail.com>
 <20190503205935.bg45rsso5jjj3gnx@csclub.uwaterloo.ca>
 <20190513165547.alkkgcsdelaznw6v@csclub.uwaterloo.ca>
 <CAKgT0Uf_nqZtCnHmC=-oDFz-3PuSM6=30BvJSDiAgzK062OY6w@mail.gmail.com>
 <20190514163443.glfjva3ofqcy7lbg@csclub.uwaterloo.ca>
 <CAKgT0UdPDyCBsShQVwwE5C8fBKkMcfS6_S5m3T7JP-So9fzVgA@mail.gmail.com>
 <20190516183407.qswotwyjwtjqfdqm@csclub.uwaterloo.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516183407.qswotwyjwtjqfdqm@csclub.uwaterloo.ca>
User-Agent: NeoMutt/20170113 (1.7.2)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Subject: Re: [Intel-wired-lan] i40e X722 RSS problem with NAT-Traversal
 IPsec packets
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 16, 2019 at 02:34:08PM -0400, Lennart Sorensen wrote:
> Here is what I see:
> 
> i40e: Intel(R) Ethernet Connection XL710 Network Driver - version 2.1.7-k
> i40e: Copyright (c) 2013 - 2014 Intel Corporation.
> i40e 0000:3d:00.0: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
> i40e 0000:3d:00.0: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
> i40e 0000:3d:00.0: MAC address: a4:bf:01:4e:0c:87
> i40e 0000:3d:00.0: flow_type: 63 input_mask:0x0000000000004000
> i40e 0000:3d:00.0: flow_type: 46 input_mask:0x0007fff800000000
> i40e 0000:3d:00.0: flow_type: 45 input_mask:0x0007fff800000000
> i40e 0000:3d:00.0: flow_type: 44 input_mask:0x0007ffff80000000
> i40e 0000:3d:00.0: flow_type: 43 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 42 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 41 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 40 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 39 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.0: flow_type: 36 input_mask:0x0006060000000000
> i40e 0000:3d:00.0: flow_type: 35 input_mask:0x0006060000000000
> i40e 0000:3d:00.0: flow_type: 34 input_mask:0x0006060780000000
> i40e 0000:3d:00.0: flow_type: 33 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 32 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 31 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 30 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: flow_type: 29 input_mask:0x0006060600000000
> i40e 0000:3d:00.0: Features: PF-id[0] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
> i40e 0000:3d:00.1: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
> i40e 0000:3d:00.1: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
> i40e 0000:3d:00.1: MAC address: a4:bf:01:4e:0c:88
> i40e 0000:3d:00.1: flow_type: 63 input_mask:0x0000000000004000
> i40e 0000:3d:00.1: flow_type: 46 input_mask:0x0007fff800000000
> i40e 0000:3d:00.1: flow_type: 45 input_mask:0x0007fff800000000
> i40e 0000:3d:00.1: flow_type: 44 input_mask:0x0007ffff80000000
> i40e 0000:3d:00.1: flow_type: 43 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.1: flow_type: 42 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.1: flow_type: 41 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.1: flow_type: 40 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.1: flow_type: 39 input_mask:0x0007fffe00000000
> i40e 0000:3d:00.1: flow_type: 36 input_mask:0x0006060000000000
> i40e 0000:3d:00.1: flow_type: 35 input_mask:0x0006060000000000
> i40e 0000:3d:00.1: flow_type: 34 input_mask:0x0006060780000000
> i40e 0000:3d:00.1: flow_type: 33 input_mask:0x0006060600000000
> i40e 0000:3d:00.1: flow_type: 32 input_mask:0x0006060600000000
> i40e 0000:3d:00.1: flow_type: 31 input_mask:0x0006060600000000
> i40e 0000:3d:00.1: flow_type: 30 input_mask:0x0006060600000000
> i40e 0000:3d:00.1: flow_type: 29 input_mask:0x0006060600000000
> i40e 0000:3d:00.1: Features: PF-id[1] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
> i40e 0000:3d:00.1 eth2: NIC Link is Up, 1000 Mbps Full Duplex, Flow Control: None
> i40e_ioctl: power down: eth1
> i40e_ioctl: power down: eth2

Those last two lines is something I added, so ignore those.

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
