Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B17767880
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jul 2023 00:29:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67E0A4218C;
	Fri, 28 Jul 2023 22:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67E0A4218C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690583369;
	bh=yhaKe3HzM8F1W7+ndAmYdTexodCGSArOmGyT4sMjgy8=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VTS62CV58u8rgMfhmcstMaifgBJLFfgHRN9up57cuJj2H+phtmSA9g7R7UUvvaQfG
	 AicwGg0+gvdr2jBgKfx6wyUraKak5/+k+tS1AATL4TVYOmZrD+wHyzBkMD0PWo1/gr
	 hnMtk3gDzQr97ol5LUSrV55pJCLSulW07F1/0mK5cPrEcduJ0uPU3IqGOzR8eE7XdM
	 Ps/q4YkxtU1hadKEVQeCdWWq1WL7XKFVxj0bVEYvCsW2ejYJ8w3M4wHxQCYsG/6cLH
	 CceBRnTy1apqIkHAym81Zg48D7EdpN30XgHM5Ma0D7GaxFbgaFnVt7M5dmvDPGynSC
	 GVPK4Y84irQug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wDptw2TsmhGj; Fri, 28 Jul 2023 22:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CA124210B;
	Fri, 28 Jul 2023 22:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CA124210B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB6C71BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 22:29:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A03F82FD5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 22:29:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A03F82FD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tZiSSuw1BISI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 22:29:20 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 28 Jul 2023 22:29:20 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 154FC82EF1
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 154FC82EF1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 22:29:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="348989326"
X-IronPort-AV: E=Sophos;i="6.01,238,1684825200"; d="scan'208";a="348989326"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 15:22:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10785"; a="757340294"
X-IronPort-AV: E=Sophos;i="6.01,238,1684825200"; d="scan'208";a="757340294"
Received: from preyes-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.255.230.246])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 15:22:11 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <0433cc77-a922-abd7-5cdb-e35c4fb57c76@intel.com>
References: <20230727000643.31093-1-vinicius.gomes@intel.com>
 <0433cc77-a922-abd7-5cdb-e35c4fb57c76@intel.com>
Date: Fri, 28 Jul 2023 15:22:10 -0700
Message-ID: <878raz3cdp.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690583360; x=1722119360;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=atDFACSxpNCOK35plMh6ISbPFljyPUeIazwyKm8gM/4=;
 b=fRVNsLDVTXaiVPk6KvNxGlP0cZt5aspNXc0GhUJ24PT+hB+2cbHPdO/I
 vhbyTqhoCISINp695VbgN5s/fujw3KDpTbHxrOFnxqXdDXmNhSHnSlwjQ
 907U3muV0wsnMRFRnOijEjR2I6RGEnlOqvY80rGr70wwY+vxWc+wx+2S5
 kMyzzF9rM8UVcMq9oHJab28Ws1AQGOdopodnm6+6TPVT4RrWVBQCrmLq6
 G4AUtuf2Q3JkLBO+gOuperae/vT8rQucIXMZI/Qk3Xd/rA8BOxbABquPm
 tGIFcQfmUJW4btm9d8PSWTNVexR6Fgcz8t7G5X0lfwLrnamiGLacG7+U7
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fRVNsLDV
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Add support for
 multiple in-flight TX timestamps
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
Cc: vladimir.oltean@nxp.com, richardcochran@gmail.com, kurt@linutronix.de,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tony Nguyen <anthony.l.nguyen@intel.com> writes:

> On 7/26/2023 5:06 PM, Vinicius Costa Gomes wrote:
>
> ...
>
>>   /**
>>    * igc_ptp_tx_hwtstamp - utility function which checks for TX time stamp
>>    * @adapter: Board private structure
>> + * @mask: bitmask of which timestamp registers are ready
>
> Probably a remnant of previous work but...
>
> igc_ptp.c:761: warning: Excess function parameter 'mask' description in 
> 'igc_ptp_tx_hwtstamp'
>

Will fix.

>>    *
>> - * If we were asked to do hardware stamping and such a time stamp is
>> - * available, then it must have been for this skb here because we only
>> - * allow only one such packet into the queue.
>> + * Check against the ready mask for which of the timestamp register
>> + * sets are ready to be retrieved, then retrieve that and notify the
>> + * rest of the stack.
>>    *
>>    * Context: Expects adapter->ptp_tx_lock to be held by caller.
>>    */
>>   static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
