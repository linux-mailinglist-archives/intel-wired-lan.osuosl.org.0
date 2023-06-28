Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF78740D91
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 11:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E7C8822E5;
	Wed, 28 Jun 2023 09:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E7C8822E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687945881;
	bh=nwNqwHJDo0lt14sHN/4HPbFreEzdP1tx7MAsjVm6bqc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Efhrzzifc9skl3t9EdwFnruER7v5XCevfosN7mwVTFRSu/5hGjUKQDRr978/5L6IU
	 I4Xi8+eicsDXc10XxE0edaCS4glgvp6o3WjRGKqeoswjAOqevnxhI4eGnWPYkTOrLW
	 Xdlr8jbN2RDCiQlCPA3F0/vN07DT0hSTvorWArbDMJaxzeiNail7p9O3GYM5Yc/Qfu
	 GSJvOkKpY+t9FhJXy6fNnGzYTA/q7esLBcn9mROuZNr5YCDLuBF34iB3znEF2liOAB
	 vfeTPtV4xTifaQ+RTqhpGlZdzjc80TXelYmoDRJ+zgReCHq8/WN+MDPkcDxC6iXM1k
	 WQX5J/At229mQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IOSorWvtYJCw; Wed, 28 Jun 2023 09:51:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B90281A0D;
	Wed, 28 Jun 2023 09:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B90281A0D
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1D461BF408
 for <intel-wired-lan@osuosl.org>; Wed, 28 Jun 2023 09:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6D9782F76
 for <intel-wired-lan@osuosl.org>; Wed, 28 Jun 2023 09:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6D9782F76
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SLCeG7hrE7hj for <intel-wired-lan@osuosl.org>;
 Wed, 28 Jun 2023 09:51:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2EFE82D12
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D2EFE82D12
 for <intel-wired-lan@osuosl.org>; Wed, 28 Jun 2023 09:51:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="448185450"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="448185450"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 02:49:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="890978421"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="890978421"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.65])
 ([10.13.12.65])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 02:49:43 -0700
Message-ID: <a0aef313-d16d-0437-9ef2-866b33c64fd3@linux.intel.com>
Date: Wed, 28 Jun 2023 12:49:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20230614024225.13652-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230614024225.13652-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687945873; x=1719481873;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=E9BE0uzLBawtxNmNKvBCtU1Nd9E4FftovV7X64/Xo/c=;
 b=Ds3cxTAC4qc6Ht/fZFxXfbAP+eV5G6x3034p6QkaJBFAp+tPWXvLOv0O
 HnL8I7LfiOZpvIBFIZeTHc8fv59DKvTMITNdZj2u9AVAY8Rke7TPoK439
 CmsIO6ZHCDohOWLD6CnUsIp2i+TE5hmfMTlV9F62snj7m6zr8jXzUo/dM
 yQu5cNWA6D8MQHGzYZByTxKDf+/23eii/CK+uHdU0YwqOCkLGmG36NQ2k
 BP67xSiIRs/CUAB44I4VWf6t5bwe6T1b7HR5fsLATvPt5GsBMHINP1t3+
 /5f37xSC3cIlJXHE6LR17HoBX/IY83RcPPTQfD+vM6voS1JKBn2PRouBm
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ds3cxTAC
Subject: Re: [Intel-wired-lan] [PATCH iwl-net-next v4] igc: Add
 TransmissionOverrun counter
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
Cc: vladimir.oltean@nxp.com, anthony.l.nguyen@intel.com,
 tee.min.tan@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/14/2023 05:42, Muhammad Husaini Zulkifli wrote:
> Add TransmissionOverrun as per defined by IEEE 802.1Q Bridges.
> TransmissionOverrun counter shall be incremented if the implementation
> detects that a frame from a given queue is still being transmitted by
> the MAC when that gate-close event for that queue occurs.
> 
> This counter is utilised by the Certification conformance test to
> inform the user application whether any packets are currently being
> transmitted on a particular queue during a gate-close event.
> 
> Intel Discrete I225/I226 have a mechanism to not transmit a packets if
> the gate open time is insufficient for the packet transmission by setting
> the Strict_End bit. Thus, it is expected for this counter to be always
> zero at this moment.
> 
> Inspired from enetc_taprio_stats() and enetc_taprio_queue_stats(), now
> driver also report the tx_overruns counter per traffic class.
> 
> User can get this counter by using below command:
> 1) tc -s qdisc show dev <interface> root
> 2) tc -s class show dev <interface>
> 
> Test Result (Before):
> class mq :1 root
>   Sent 1289 bytes 20 pkt (dropped 0, overlimits 0 requeues 0)
>   backlog 0b 0p requeues 0
> class mq :2 root
>   Sent 124 bytes 2 pkt (dropped 0, overlimits 0 requeues 0)
>   backlog 0b 0p requeues 0
> class mq :3 root
>   Sent 46028 bytes 86 pkt (dropped 0, overlimits 0 requeues 0)
>   backlog 0b 0p requeues 0
> class mq :4 root
>   Sent 2596 bytes 14 pkt (dropped 0, overlimits 0 requeues 0)
>   backlog 0b 0p requeues 0
> 
> Test Result (After):
> class taprio 100:1 root
>   Sent 8491 bytes 38 pkt (dropped 0, overlimits 0 requeues 0)
>   backlog 0b 0p requeues 0
>   Transmit overruns: 0
> class taprio 100:2 root
>   Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
>   backlog 0b 0p requeues 0
>   Transmit overruns: 0
> class taprio 100:3 root
>   Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
>   backlog 0b 0p requeues 0
>   Transmit overruns: 0
> class taprio 100:4 root
>   Sent 994 bytes 11 pkt (dropped 0, overlimits 0 requeues 1)
>   backlog 0b 0p requeues 1
>   Transmit overruns: 0
> 
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
> V3 -> V4: Rework Vladimir's and Anthony's comments to remove the constant
> counter from the driver's ring data structure and ethtool statistic
> implementation.
> V2 -> V3: Included new infra xstats to report back the counter to qdisc
> V1 -> V2: Change per-queue stats. Driver still remains adding the
> 	  statistic independently.
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 26 +++++++++++++++++++++++
>   1 file changed, 26 insertions(+)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
