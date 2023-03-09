Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4066B2FB9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 22:39:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DEBF821AF;
	Thu,  9 Mar 2023 21:39:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DEBF821AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678397961;
	bh=9dBEl0/4dLAqIgVuuqhRB/I+sppol02iZc+I9h2r9UM=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m49y3tEng8vVS4cv+f/g6N2Pu2e9Vv/TRozW6ZJ9ijFnoqknINVSmOt4juscMVHgB
	 ayBEk37Tp3sFUNcZzhd5jtWp2AoOPvMNIM3tki8u/q+nJUIOQkUeSuhwW1jAZHI7e5
	 gw/lDj6gjG/oVUcC5478HEx34YHxlHga8RHOkP+nKrhIpgbf+tWHmSLgjovWJn2oGD
	 E7GB5/KC7T/LYVY4McZZPRTehngaBoVaFq94nXByb+z26vaikkc/ojUR9AHpXPb4C8
	 oOwkOvNlgO9l/sUo0CJrH4FW+UPiU7MPnCcF8mdVvidimNSyuxpjZdVaNTRBzgseRA
	 jQ6xRvenYnncw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WukOTPzFKhau; Thu,  9 Mar 2023 21:39:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0479B821A4;
	Thu,  9 Mar 2023 21:39:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0479B821A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 09ED51BF366
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 21:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E2693821A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 21:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2693821A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HQcZAIY3gEjE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 21:39:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EEB1821A2
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0EEB1821A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 21:39:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="320431545"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="320431545"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 13:39:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="670872643"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="670872643"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 13:39:13 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20230228174520.vbp6ubvn43wh7fhw@skbuf>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-3-vinicius.gomes@intel.com>
 <20230228054534.1093483-3-vinicius.gomes@intel.com>
 <20230228174520.vbp6ubvn43wh7fhw@skbuf>
Date: Thu, 09 Mar 2023 13:39:13 -0800
Message-ID: <87jzzpr4e6.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678397954; x=1709933954;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QGaTu6ymWUI0epZg+j7aecP/zgLb55oiwsL36omkbzw=;
 b=PhiC03loOabxNiaswG4qZvOqzLzD5TJzWdMi4Tr6tjWJ5FlLC4+sQzGc
 Y+1cR7M8iGb6WqCD8SzTHHfnPYyrG/aXG+rZ4XPSzT7Q3KaJXD9vlU2oh
 K9H+NVFFsBY1FIlO2a7eGtrD/2TosM8XGbdkT8v38yVdRA6oEyLEzxqxn
 IB2pJb3vNn+HPsxIbGWktHxWfqMvqRzVIoiVCDxTYTaWIeZZtQZgFWmT7
 ytIOmkvWCsBIFn2Zh4cgcMPJji9C7OR1uCtU6vdedvRoEyyMdRRyUD6Qk
 j5GfEzxfAIq1iyHUXtEeqmhdWxqhYnxo1B+sgf6QJG1cNWrihFgjeRIU/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PhiC03lo
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 2/3] igc: Add support
 for multiple in-flight TX timestamps
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
Cc: kurt@linutronix.de, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Mon, Feb 27, 2023 at 09:45:33PM -0800, Vinicius Costa Gomes wrote:
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
>> index e804a566bdd3..f0617838a16a 100644
>> --- a/drivers/net/ethernet/intel/igc/igc.h
>> +++ b/drivers/net/ethernet/intel/igc/igc.h
>> @@ -35,6 +35,8 @@ void igc_ethtool_set_ops(struct net_device *);
>>  
>>  #define MAX_FLEX_FILTER			32
>>  
>> +#define IGC_MAX_TX_TSTAMP_REGS		4
>> +
>>  enum igc_mac_filter_type {
>>  	IGC_MAC_FILTER_TYPE_DST = 0,
>>  	IGC_MAC_FILTER_TYPE_SRC
>> @@ -67,6 +69,15 @@ struct igc_rx_packet_stats {
>>  	u64 other_packets;
>>  };
>>  
>> +struct igc_tx_timestamp_request {
>> +	struct sk_buff *skb;   /* reference to the packet being timestamped */
>> +	unsigned long start;   /* when the tstamp request started (jiffies) */
>> +	u32 mask;              /* _TSYNCTXCTL_TXTT_{X} bit for this request */
>> +	u32 regl;              /* which TXSTMPL_{X} register should be used */
>> +	u32 regh;              /* which TXSTMPH_{X} register should be used */
>> +	u32 flags;             /* flags that should be added to the tx_buffer */
>> +};
>> +
>>  struct igc_ring_container {
>>  	struct igc_ring *ring;          /* pointer to linked list of rings */
>>  	unsigned int total_bytes;       /* total bytes processed this int */
>> @@ -231,9 +242,8 @@ struct igc_adapter {
>>  	 * ptp_tx_lock.
>>  	 */
>>  	spinlock_t ptp_tx_lock;
>> -	struct sk_buff *ptp_tx_skb;
>> +	struct igc_tx_timestamp_request tx_tstamp[IGC_MAX_TX_TSTAMP_REGS];
>>  	struct hwtstamp_config tstamp_config;
>> -	unsigned long ptp_tx_start;
>
> This comment added by patch 1/3 already became obsolete:
>
> 	/* Access to ptp_tx_skb and ptp_tx_start is protected by the
> 	 * ptp_tx_lock.
> 	 */
> 	spinlock_t ptp_tx_lock;
>

Good catch. Will fix.

>>  	unsigned int ptp_flags;
>>  	/* System time value lock */
>>  	spinlock_t tmreg_lock;
>> @@ -416,6 +426,10 @@ enum igc_tx_flags {
>>  	/* olinfo flags */
>>  	IGC_TX_FLAGS_IPV4	= 0x10,
>>  	IGC_TX_FLAGS_CSUM	= 0x20,
>> +
>> +	IGC_TX_FLAGS_TSTAMP_1	= 0x100,
>> +	IGC_TX_FLAGS_TSTAMP_2	= 0x200,
>> +	IGC_TX_FLAGS_TSTAMP_3	= 0x400,
>>  };
>>  
>>  enum igc_boards {
>> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
>> index 9247395911c9..0cb932b52a7b 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>> @@ -604,92 +604,109 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
>>  }
>>  
>>  /* Requires adapter->ptp_tx_lock held by caller. */
>> -static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
>> +static void igc_ptp_tx_timeout(struct igc_adapter *adapter,
>> +			       struct igc_tx_timestamp_request *tstamp)
>>  {
>>  	struct igc_hw *hw = &adapter->hw;
>>  
>> -	dev_kfree_skb_any(adapter->ptp_tx_skb);
>> -	adapter->ptp_tx_skb = NULL;
>> -	adapter->ptp_tx_start = 0;
>> +	dev_kfree_skb_any(tstamp->skb);
>> +	tstamp->skb = NULL;
>> +	tstamp->start = 0;
>>  	adapter->tx_hwtstamp_timeouts++;
>> -	/* Clear the tx valid bit in TSYNCTXCTL register to enable interrupt. */
>> -	rd32(IGC_TXSTMPH);
>> +
>> +	/* Reading the high register of one of the timestamp registers
>> +	 * clears the equivalent bit in the TSYNCTXCTL register.
>> +	 */
>> +	rd32(tstamp->regh);
>> +
>>  	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
>>  }
>>  
>>  void igc_ptp_tx_hang(struct igc_adapter *adapter)
>>  {
>> +	struct igc_tx_timestamp_request *tstamp;
>>  	unsigned long flags;
>> +	int i;
>>  
>>  	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
>
> Since this is called unconditionally and periodically from igc_watchdog_task(),
> it will periodically temporarily disable IRQs and therefore also
> softirqs, to not race with the data path, right?
>
> Does it make sense to only do this if adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON?
> There shouldn't be TX timestamps in flight if that isn't set, and an
> _irqsave could be avoided.
>
> I suppose this is more of a comment on patch 1/3 really.
>

That's a good point. Yeah, if noone has enabled hardware timestamps,
then there's no timestamps requests able to timeout. Will take a closer
look and see if I am missing anything, but good idea. Will fix.

>>  
>> -	if (!adapter->ptp_tx_skb)
>> -		goto unlock;
>> +	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
>> +		tstamp = &adapter->tx_tstamp[i];
>>  
>> -	if (time_is_after_jiffies(adapter->ptp_tx_start + IGC_PTP_TX_TIMEOUT))
>> -		goto unlock;
>> +		if (!tstamp->skb)
>> +			continue;
>>  
>> -	igc_ptp_tx_timeout(adapter);
>> +		if (time_is_after_jiffies(tstamp->start + IGC_PTP_TX_TIMEOUT))
>> +			continue;
>> +
>> +		igc_ptp_tx_timeout(adapter, tstamp);
>> +	}
>>  
>> -unlock:
>>  	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>>  }

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
