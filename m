Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9rz8K9JxlWn8RQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 09:01:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B91153D2B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 09:01:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2633660785;
	Wed, 18 Feb 2026 08:01:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pRnUia1eg_vJ; Wed, 18 Feb 2026 08:01:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C99060770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771401677;
	bh=JqZxxgFTscDRv2qt+8+7+JArKe7kFI0tzMCha9y0Pb8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QV+GexhaDTfuKjJcGTcAcZrtBfH4LRXNtVku7v6yzZOSSo1Pzdj5eMj53iWxKaTE8
	 wk3odQe98yiB8G8aogaqj1pqgKAW5TVXoXoBM0909JKDx5cw/jJV0kX0SX4GVSWfKC
	 ScggatFL5LusD9HsAtxetdwJKki36tB9Ysna93+R8+ajLAbLXVpHJ1BW89ng8H2Uoe
	 wy3DghXKwx/+5UtQYgB2X/slBoWyQUPEIqQ0kz1RPtD9K3fBEc9Iyw3c7TO+QVhDno
	 2RBVcJUwjIV4EqtGtEJ3ja8cBw7zjXnYrTLPEzzNaJM0ZMtOBHkv8XbaBDL9OEbxO0
	 UP5jedXeAl/ug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C99060770;
	Wed, 18 Feb 2026 08:01:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5EED5206
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 08:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 44390400BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 08:01:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UYQTx7RusvxR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 08:01:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5811E40092
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5811E40092
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5811E40092
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 08:01:13 +0000 (UTC)
Received: from [192.168.2.221] (p5b13aefb.dip0.t-ipconnect.de [91.19.174.251])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EC80C4C2C37D45;
 Wed, 18 Feb 2026 09:00:33 +0100 (CET)
Message-ID: <705e0576-db72-4ea1-b548-b69197bbaf87@molgen.mpg.de>
Date: Wed, 18 Feb 2026 09:00:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Witold Fijalkowski <witoldx.fijalkowski@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 kohei.enju@gmail.com
References: <20260214191502.267670-1-kohei@enjuk.jp>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260214191502.267670-1-kohei@enjuk.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] iavf: fix out-of-bounds
 writes in iavf_get_ethtool_stats()
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:mateusz.palczewski@intel.com,m:witoldx.fijalkowski@intel.com,m:przemyslawx.patynowski@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	DMARC_NA(0.00)[mpg.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 90B91153D2B
X-Rspamd-Action: no action

Dear Kohei,


Thank you for your patch.

Am 14.02.26 um 20:14 schrieb Kohei Enju:
> iavf incorrectly uses real_num_tx_queues for ETH_SS_STATS. Since the
> value could change in runtime, we should use num_tx_queues instead.
> 
> Moreover iavf_get_ethtool_stats() uses num_active_queues while
> iavf_get_sset_count() and iavf_get_stat_strings() use
> real_num_tx_queues, which triggers out-of-bounds writes when we do
> "ethtool -L" and "ethtool -S" simultaneously [1].
> 
> For example when we change channels from 1 to 8, Thread 3 could be
> scheduled before Thread 2, and out-of-bounds writes could be triggered
> in Thread 3:
> 
> Thread 1 (ethtool -L)       Thread 2 (work)        Thread 3 (ethtool -S)
> iavf_set_channels()
> ...
> iavf_alloc_queues()
> -> num_active_queues = 8
> iavf_schedule_finish_config()
>                                                     iavf_get_sset_count()
>                                                     real_num_tx_queues: 1
>                                                     -> buffer for 1 queue
>                                                     iavf_get_ethtool_stats()
>                                                     num_active_queues: 8
>                                                     -> out-of-bounds!
>                              iavf_finish_config()
>                              -> real_num_tx_queues = 8
> 
> Use immutable num_tx_queues in all related functions to avoid the issue.
> 
> [1]
>   BUG: KASAN: vmalloc-out-of-bounds in iavf_add_one_ethtool_stat+0x200/0x270
>   Write of size 8 at addr ffffc900031c9080 by task ethtool/5800
> 
>   CPU: 1 UID: 0 PID: 5800 Comm: ethtool Not tainted 6.19.0-enjuk-08403-g8137e3db7f1c #241 PREEMPT(full)
>   Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
>   Call Trace:
>    <TASK>
>    dump_stack_lvl+0x6f/0xb0
>    print_report+0x170/0x4f3
>    kasan_report+0xe1/0x180
>    iavf_add_one_ethtool_stat+0x200/0x270
>    iavf_get_ethtool_stats+0x14c/0x2e0
>    __dev_ethtool+0x3d0c/0x5830
>    dev_ethtool+0x12d/0x270
>    dev_ioctl+0x53c/0xe30
>    sock_do_ioctl+0x1a9/0x270
>    sock_ioctl+0x3d4/0x5e0
>    __x64_sys_ioctl+0x137/0x1c0
>    do_syscall_64+0xf3/0x690
>    entry_SYSCALL_64_after_hwframe+0x77/0x7f
>   RIP: 0033:0x7f7da0e6e36d
>   ...
>    </TASK>
> 
>   The buggy address belongs to a 1-page vmalloc region starting at 0xffffc900031c9000 allocated at __dev_ethtool+0x3cc9/0x5830
>   The buggy address belongs to the physical page: page: refcount:1 mapcount:0 mapping:0000000000000000
>   index:0xffff88813a013de0 pfn:0x13a013
>   flags: 0x200000000000000(node=0|zone=2)
>   raw: 0200000000000000 0000000000000000 dead000000000122 0000000000000000
>   raw: ffff88813a013de0 0000000000000000 00000001ffffffff 0000000000000000
>   page dumped because: kasan: bad access detected
> 
>   Memory state around the buggy address:
>    ffffc900031c8f80: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
>    ffffc900031c9000: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>   >ffffc900031c9080: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
>                      ^
>    ffffc900031c9100: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
>    ffffc900031c9180: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
> 
> Fixes: 64430f70ba6f ("iavf: Fix displaying queue statistics shown by ethtool")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>   .../net/ethernet/intel/iavf/iavf_ethtool.c    | 31 +++++++++----------
>   1 file changed, 15 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 6ff3842a1ff1..98bec3afc200 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -313,14 +313,13 @@ static int iavf_get_sset_count(struct net_device *netdev, int sset)
>   {
>   	/* Report the maximum number queues, even if not every queue is
>   	 * currently configured. Since allocation of queues is in pairs,
> -	 * use netdev->real_num_tx_queues * 2. The real_num_tx_queues is set
> -	 * at device creation and never changes.
> +	 * use netdev->num_tx_queues * 2. The num_tx_queues is set at
> +	 * device creation and never changes.
>   	 */
>   
>   	if (sset == ETH_SS_STATS)
>   		return IAVF_STATS_LEN +
> -			(IAVF_QUEUE_STATS_LEN * 2 *
> -			 netdev->real_num_tx_queues);
> +		       (IAVF_QUEUE_STATS_LEN * 2 * netdev->num_tx_queues);
>   	else
>   		return -EINVAL;
>   }
> @@ -345,19 +344,19 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
>   	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
>   
>   	rcu_read_lock();
> -	/* As num_active_queues describe both tx and rx queues, we can use
> -	 * it to iterate over rings' stats.
> +	/* Use num_tx_queues to report stats for the maximum number of queues.
> +	 * Queues beyond num_active_queues will report zero.
>   	 */
> -	for (i = 0; i < adapter->num_active_queues; i++) {
> -		struct iavf_ring *ring;
> +	for (i = 0; i < netdev->num_tx_queues; i++) {
> +		struct iavf_ring *tx_ring = NULL, *rx_ring = NULL;
>   
> -		/* Tx rings stats */
> -		ring = &adapter->tx_rings[i];
> -		iavf_add_queue_stats(&data, ring);
> +		if (i < adapter->num_active_queues) {
> +			tx_ring = &adapter->tx_rings[i];
> +			rx_ring = &adapter->rx_rings[i];
> +		}
>   
> -		/* Rx rings stats */
> -		ring = &adapter->rx_rings[i];
> -		iavf_add_queue_stats(&data, ring);
> +		iavf_add_queue_stats(&data, tx_ring);
> +		iavf_add_queue_stats(&data, rx_ring);
>   	}
>   	rcu_read_unlock();
>   }
> @@ -376,9 +375,9 @@ static void iavf_get_stat_strings(struct net_device *netdev, u8 *data)
>   	iavf_add_stat_strings(&data, iavf_gstrings_stats);
>   
>   	/* Queues are always allocated in pairs, so we just use
> -	 * real_num_tx_queues for both Tx and Rx queues.
> +	 * num_tx_queues for both Tx and Rx queues.
>   	 */
> -	for (i = 0; i < netdev->real_num_tx_queues; i++) {
> +	for (i = 0; i < netdev->num_tx_queues; i++) {
>   		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,
>   				      "tx", i);
>   		iavf_add_stat_strings(&data, iavf_gstrings_queue_stats,

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
