Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0C120EBB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2019 20:34:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC5928160D;
	Thu, 16 May 2019 18:34:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fmfX7pxYh+1e; Thu, 16 May 2019 18:34:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11C3B82F92;
	Thu, 16 May 2019 18:34:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 14D231BF390
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 18:34:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 117AD85D3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 18:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4tFM1QtlyR1g for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2019 18:34:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB15986739
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 18:34:12 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 1C77846380B; Thu, 16 May 2019 14:34:08 -0400 (EDT)
Date: Thu, 16 May 2019 14:34:08 -0400
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20190516183407.qswotwyjwtjqfdqm@csclub.uwaterloo.ca>
References: <20190502175513.ei7kjug3az6fe753@csclub.uwaterloo.ca>
 <20190502185250.vlsainugtn6zjd6p@csclub.uwaterloo.ca>
 <CAKgT0Uc_YVzns+26-TL+hhmErqG4_w4evRqLCaa=7nME7Zq+Vg@mail.gmail.com>
 <20190503151421.akvmu77lghxcouni@csclub.uwaterloo.ca>
 <CAKgT0UcV2wCr6iUYktZ+Bju_GNpXKzR=M+NLfKhUsw4bsJSiyA@mail.gmail.com>
 <20190503205935.bg45rsso5jjj3gnx@csclub.uwaterloo.ca>
 <20190513165547.alkkgcsdelaznw6v@csclub.uwaterloo.ca>
 <CAKgT0Uf_nqZtCnHmC=-oDFz-3PuSM6=30BvJSDiAgzK062OY6w@mail.gmail.com>
 <20190514163443.glfjva3ofqcy7lbg@csclub.uwaterloo.ca>
 <CAKgT0UdPDyCBsShQVwwE5C8fBKkMcfS6_S5m3T7JP-So9fzVgA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0UdPDyCBsShQVwwE5C8fBKkMcfS6_S5m3T7JP-So9fzVgA@mail.gmail.com>
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

On Thu, May 16, 2019 at 10:10:55AM -0700, Alexander Duyck wrote:
> So I was sent a link to the datasheet for the part and I have a
> working theory that what we may be seeing is a problem in the firmware
> for the part.
> 
> Can you try applying the attached patch and send the output from the
> dmesg? Specifically I would want anything with the name "i40e" in it.
> What I am looking for is something like the following:
> [  294.383416] i40e 0000:81:00.1: fw 5.0.40043 api 1.5 nvm 5.04 0x800024cd 0.0.0
> [  294.675039] i40e 0000:81:00.1: MAC address: 68:05:ca:37:c7:99
> [  294.685941] i40e 0000:81:00.1: flow_type: 63 input_mask:0x0000000000004000
> [  294.686056] i40e 0000:81:00.1: flow_type: 46 input_mask:0x0007fff800000000
> [  294.686170] i40e 0000:81:00.1: flow_type: 45 input_mask:0x0007fff800000000
> [  294.686284] i40e 0000:81:00.1: flow_type: 44 input_mask:0x0007ffff80000000
> [  294.686399] i40e 0000:81:00.1: flow_type: 43 input_mask:0x0007fffe00000000
> [  294.686513] i40e 0000:81:00.1: flow_type: 41 input_mask:0x0007fffe00000000
> [  294.686628] i40e 0000:81:00.1: flow_type: 36 input_mask:0x0001801800000000
> [  294.686743] i40e 0000:81:00.1: flow_type: 35 input_mask:0x0001801800000000
> [  294.686858] i40e 0000:81:00.1: flow_type: 34 input_mask:0x0001801f80000000
> [  294.686973] i40e 0000:81:00.1: flow_type: 33 input_mask:0x0001801e00000000
> [  294.687087] i40e 0000:81:00.1: flow_type: 31 input_mask:0x0001801e00000000
> [  294.691906] i40e 0000:81:00.1 ens5f1: renamed from eth0
> [  294.711173] i40e 0000:81:00.1 ens5f1: NIC Link is Up, 10 Gbps Full
> Duplex, Flow Control: None
> [  294.759061] i40e 0000:81:00.1: PCI-Express: Speed 8.0GT/s Width x8
> [  294.863363] i40e 0000:81:00.1: Features: PF-id[1] VFs: 32 VSIs: 34
> QP: 32 RSS FD_ATR FD_SB NTUPLE VxLAN Geneve PTP VEPA
> 
> With that we can tell what flow types are enabled, and what input
> fields are enabled for each flow type. My suspicion is that we may see
> the two new types added to X722 for UDP, 29 and 30, may not match type
> 31 which is the current flow type supported on the X710.
> 
> I have included a copy inline below in case the patch is stripped,
> however I suspect it will not apply cleanly as the mail client I am
> using usually ends up causing white space mangling by replacing tabs
> with spaces.
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 65c2b9d2652b..0c93859f8184 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -10998,6 +10998,15 @@ static int i40e_pf_config_rss(struct i40e_pf *pf)
>                 ((u64)i40e_read_rx_ctl(hw, I40E_PFQF_HENA(1)) << 32);
>         hena |= i40e_pf_get_default_rss_hena(pf);
> 
> +       for (ret = 64; ret--;) {
> +               if (!(hena & (1ull << ret)))
> +                       continue;
> +               dev_info(&pf->pdev->dev, "flow_type: %d
> input_mask:0x%08x%08x\n",
> +                        ret,
> +                        i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(1, ret)),
> +                        i40e_read_rx_ctl(hw, I40E_GLQF_HASH_INSET(0, ret)));
> +       }
> +
>         i40e_write_rx_ctl(hw, I40E_PFQF_HENA(0), (u32)hena);
>         i40e_write_rx_ctl(hw, I40E_PFQF_HENA(1), (u32)(hena >> 32));

> i40e: Debug hash inputs

Here is what I see:

i40e: Intel(R) Ethernet Connection XL710 Network Driver - version 2.1.7-k
i40e: Copyright (c) 2013 - 2014 Intel Corporation.
i40e 0000:3d:00.0: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
i40e 0000:3d:00.0: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
i40e 0000:3d:00.0: MAC address: a4:bf:01:4e:0c:87
i40e 0000:3d:00.0: flow_type: 63 input_mask:0x0000000000004000
i40e 0000:3d:00.0: flow_type: 46 input_mask:0x0007fff800000000
i40e 0000:3d:00.0: flow_type: 45 input_mask:0x0007fff800000000
i40e 0000:3d:00.0: flow_type: 44 input_mask:0x0007ffff80000000
i40e 0000:3d:00.0: flow_type: 43 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 42 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 41 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 40 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 39 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 36 input_mask:0x0006060000000000
i40e 0000:3d:00.0: flow_type: 35 input_mask:0x0006060000000000
i40e 0000:3d:00.0: flow_type: 34 input_mask:0x0006060780000000
i40e 0000:3d:00.0: flow_type: 33 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 32 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 31 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 30 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 29 input_mask:0x0006060600000000
i40e 0000:3d:00.0: Features: PF-id[0] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
i40e 0000:3d:00.1: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
i40e 0000:3d:00.1: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
i40e 0000:3d:00.1: MAC address: a4:bf:01:4e:0c:88
i40e 0000:3d:00.1: flow_type: 63 input_mask:0x0000000000004000
i40e 0000:3d:00.1: flow_type: 46 input_mask:0x0007fff800000000
i40e 0000:3d:00.1: flow_type: 45 input_mask:0x0007fff800000000
i40e 0000:3d:00.1: flow_type: 44 input_mask:0x0007ffff80000000
i40e 0000:3d:00.1: flow_type: 43 input_mask:0x0007fffe00000000
i40e 0000:3d:00.1: flow_type: 42 input_mask:0x0007fffe00000000
i40e 0000:3d:00.1: flow_type: 41 input_mask:0x0007fffe00000000
i40e 0000:3d:00.1: flow_type: 40 input_mask:0x0007fffe00000000
i40e 0000:3d:00.1: flow_type: 39 input_mask:0x0007fffe00000000
i40e 0000:3d:00.1: flow_type: 36 input_mask:0x0006060000000000
i40e 0000:3d:00.1: flow_type: 35 input_mask:0x0006060000000000
i40e 0000:3d:00.1: flow_type: 34 input_mask:0x0006060780000000
i40e 0000:3d:00.1: flow_type: 33 input_mask:0x0006060600000000
i40e 0000:3d:00.1: flow_type: 32 input_mask:0x0006060600000000
i40e 0000:3d:00.1: flow_type: 31 input_mask:0x0006060600000000
i40e 0000:3d:00.1: flow_type: 30 input_mask:0x0006060600000000
i40e 0000:3d:00.1: flow_type: 29 input_mask:0x0006060600000000
i40e 0000:3d:00.1: Features: PF-id[1] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
i40e 0000:3d:00.1 eth2: NIC Link is Up, 1000 Mbps Full Duplex, Flow Control: None
i40e_ioctl: power down: eth1
i40e_ioctl: power down: eth2

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
