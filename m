Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 892741E7FD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2019 07:39:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03B1A87E3F;
	Wed, 15 May 2019 05:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vw1KmSwPgcwd; Wed, 15 May 2019 05:39:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F9C987E3C;
	Wed, 15 May 2019 05:39:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93DF71BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2019 05:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8DFBB86F9F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2019 05:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z5HH9vZKPwZz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2019 05:39:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7A39486F98
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2019 05:39:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 22:39:48 -0700
X-ExtLoop1: 1
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga001.jf.intel.com with ESMTP; 14 May 2019 22:39:47 -0700
To: Juliana Rodrigueiro <juliana.rodrigueiro@intra2net.com>,
 intel-wired-lan@lists.osuosl.org
References: <1623942.pXzBnfQ100@rocinante.m.i2n>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <d308eb17-98ab-13e7-6c74-d701288e43b5@intel.com>
Date: Wed, 15 May 2019 08:39:46 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.3
MIME-Version: 1.0
In-Reply-To: <1623942.pXzBnfQ100@rocinante.m.i2n>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Work around hardware unit
 hang by disabling TSO
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
Cc: thomas.jarosch@intra2net.com, netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/9/2019 13:34, Juliana Rodrigueiro wrote:
> When forwarding traffic to a client behind NAT, some e1000e devices
> become unstable, hanging and then being reset by the watchdog.
> 
> Output from syslog:
> 
> kernel: e1000e 0000:00:19.0 eth0: Detected Hardware Unit Hang:
> kernel:  TDH                  <5f>
> kernel:  TDT                  <8d>
> kernel:  next_to_use          <8d>
> kernel:  next_to_clean        <5c>
> kernel: buffer_info[next_to_clean]:
> kernel:  time_stamp           <6bd7b>
> kernel:  next_to_watch        <5f>
> kernel:  jiffies              <6c180>
> kernel:  next_to_watch.status <0>
> kernel: MAC Status             <40080083>
> kernel: PHY Status             <796d>
> kernel: PHY 1000BASE-T Status  <7800>
> kernel: PHY Extended Status    <3000>
> kernel: PCI Status             <10>
> kernel: e1000e 0000:00:19.0 eth0: Reset adapter unexpectedly
> 
> This repeats several times and never recovers.
> 
> Disabling TCP segmentation offload (TSO) seems to be the only way to
> work around this problem on the affected devices.
> 
> This issue was first reported in 14.01.2015:
> https://marc.info/?l=linux-netdev&m=142124954120315
> 
> Signed-off-by: Juliana Rodrigueiro <juliana.rodrigueiro@intra2net.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 8b11682ebba2..4781a45c1047 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6936,6 +6936,12 @@ static netdev_features_t e1000_fix_features(struct net_device *netdev,
>   	if ((hw->mac.type >= e1000_pch2lan) && (netdev->mtu > ETH_DATA_LEN))
>   		features &= ~NETIF_F_RXFCS;
>   
> +	if (adapter->pdev->device == E1000_DEV_ID_PCH2_LV_V) {
> +		e_info("Disabling TSO on problematic device to avoid hardware unit hang.\n");
> +		features &= ~NETIF_F_TSO;
> +		features &= ~NETIF_F_TSO6;
> +	}
> +
>   	/* Since there is no support for separate Rx/Tx vlan accel
>   	 * enable/disable make sure Tx flag is always in same state as Rx.
>   	 */
> 
You are right, in some particular configurations e1000e devices stuck at 
Tx hang while TCP segmentation offload is on. But for all other users we 
should keep the TCP segmentation option is enabled as default. I suggest 
to use 'ethtool' command: ethtool -K <adapter> tso on/off to workaround 
Tx hang in your situation.
Thanks,
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
