Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D3440ABE6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Sep 2021 12:42:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D21C40333;
	Tue, 14 Sep 2021 10:42:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uxmkYNbVL0-P; Tue, 14 Sep 2021 10:42:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 558BA402E3;
	Tue, 14 Sep 2021 10:42:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D3FC1BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 10:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7315E80E6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 10:42:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pd6RYy_vqHqK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 10:42:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4269A80E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 10:42:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="221623910"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="221623910"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 03:42:25 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="543903493"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.13.9.164])
 ([10.13.9.164])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 03:42:23 -0700
To: Corinna Vinschen <vinschen@redhat.com>, intel-wired-lan@lists.osuosl.org
References: <20210817131620.566614-1-vinschen@redhat.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
Message-ID: <181feb46-eac6-8bd7-f75a-26d85b05da02@linux.intel.com>
Date: Tue, 14 Sep 2021 13:42:10 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210817131620.566614-1-vinschen@redhat.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix tunnel offloading
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
Cc: netdev@vger.kernel.org, pabeni@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/17/2021 16:16, Corinna Vinschen wrote:
> From: Paolo Abeni <pabeni@redhat.com>
> 
> Checking tunnel offloading, it turns out that offloading doesn't work
> as expected.  The following script allows to reproduce the issue.
> Call it as `testscript DEVICE LOCALIP REMOTEIP NETMASK'
> 
> === SNIP ===
> if [ $# -ne 4 ]
> then
>    echo "Usage $0 DEVICE LOCALIP REMOTEIP NETMASK"
>    exit 1
> fi
> DEVICE="$1"
> LOCAL_ADDRESS="$2"
> REMOTE_ADDRESS="$3"
> NWMASK="$4"
> echo "Driver: $(ethtool -i ${DEVICE} | awk '/^driver:/{print $2}') "
> ethtool -k "${DEVICE}" | grep tx-udp
> echo
> echo "Set up NIC and tunnel..."
> ip addr add "${LOCAL_ADDRESS}/${NWMASK}" dev "${DEVICE}"
> ip link set "${DEVICE}" up
> sleep 2
> ip link add vxlan1 type vxlan id 42 \
> 		   remote "${REMOTE_ADDRESS}" \
> 		   local "${LOCAL_ADDRESS}" \
> 		   dstport 0 \
> 		   dev "${DEVICE}"
> ip addr add fc00::1/64 dev vxlan1
> ip link set vxlan1 up
> sleep 2
> rm -f vxlan.pcap
> echo "Running tcpdump and iperf3..."
> ( nohup tcpdump -i any -w vxlan.pcap >/dev/null 2>&1 ) &
> sleep 2
> iperf3 -c fc00::2 >/dev/null
> pkill tcpdump
> echo
> echo -n "Max. Paket Size: "
> tcpdump -r vxlan.pcap -nnle 2>/dev/null \
> | grep "${LOCAL_ADDRESS}.*> ${REMOTE_ADDRESS}.*OTV" \
> | awk '{print $8}' | awk -F ':' '{print $1}' \
> | sort -n | tail -1
> echo
> ip link del vxlan1
> ip addr del ${LOCAL_ADDRESS}/${NWMASK} dev "${DEVICE}"
> === SNAP ===
> 
> The expected outcome is
> 
>    Max. Paket Size: 64904
> 
> This is what you see on igb, the code igc has been taken from.
> However, on igc the output is
> 
>    Max. Paket Size: 1516
> 
> so the GSO aggregate packets are segmented by the kernel before calling
> igc_xmit_frame.  Inside the subsequent call to igc_tso, the check for
> skb_is_gso(skb) fails and the function returns prematurely.
> 
> It turns out that this occurs because the feature flags aren't set
> entirely correctly in igc_probe.  In contrast to the original code
> from igb_probe, igc_probe neglects to set the flags required to allow
> tunnel offloading.
> 
> Setting the same flags as igb fixes the issue on igc.
> 
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> Tested-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
