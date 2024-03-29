Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D6E8917C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 12:32:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38C5E82897;
	Fri, 29 Mar 2024 11:32:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ww3gwUtw7L1N; Fri, 29 Mar 2024 11:32:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34900828A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711711931;
	bh=b8aQI5Vwdvjf9B9KzTrR/dCmu/39yOg7IYFtJNNj1LI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XWYhQ3BLnNC+XUbOxTQsJ0Z2JBaEMPA2y8lPqdDC1iSg6Ey1W9gucR+dRh8l92kI4
	 wvS/p/U0BJ4OpOrbgyBQHdGthOQa7T0W5i4mqLTW7jkNqWhxlZdYb39N0wHa8cTvd5
	 KPo48QdknLNueDBmQITP62pSBZbBiQHqcgimJBLFxso37K8ucRB2OE8g1FUngI+HZQ
	 eB8PiTfUDkuiyviWgHzdrLg1K8yycze/ohThykqqlgeZp1uV2zHpoXjr8KAhEOyiIW
	 KRvPXWf3D9dnOpLSifCI/gSe0cbLtH/fAcZ9Wwitf0vmJQQgnCpj95ITzlwdAd2Czd
	 hmpRa5vCrnurA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34900828A9;
	Fri, 29 Mar 2024 11:32:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 033E61BF298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE94E6067C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:32:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nfaUaYqfw0OX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 11:32:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E2E74605F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2E74605F0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2E74605F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:32:07 +0000 (UTC)
X-CSE-ConnectionGUID: cKAwIUSBQFWxEGK8Tnv2XA==
X-CSE-MsgGUID: jI4cPZgTR7a6pv2FpuCkNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="7114614"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; 
   d="scan'208";a="7114614"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 04:32:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="17583057"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.35.198])
 ([10.246.35.198])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 04:32:05 -0700
Message-ID: <fbf9dae9-c023-4b15-b3d8-6b19240f59b0@linux.intel.com>
Date: Fri, 29 Mar 2024 12:31:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240326164455.735739-1-marcin.szycik@linux.intel.com>
 <20240328173450.GH651713@kernel.org>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20240328173450.GH651713@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711711928; x=1743247928;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=k+azV62oV6xWrBVujeKKk/0NDlkN9zdK/FCzJd3A/lc=;
 b=QTRznXmwplj5VOUNeHBJJlb/zkg6UKaOa/NgTF+7enYEuPcLHSqK2YDw
 F/EU0CqXqErrPZSWAcLmSRWfvDyLPT2pd0UwjfhtyKfi8vDXX+GX6gmOv
 F64gJE6PezPGbB+PmfhSoOrxcNOHauKwir9ZfGOCItwZJrM6c09dAlx//
 +0qhkfkgz9ZIQSwdMuAUKuueWxdD6aYWyc8pAQqrlwsABFXtO2twZyJ8q
 v1vH0mCykCxggiT9kK0cgkCaF4fTdK7pkWQiEqHWszJELGnwRITXRIog4
 rWMMqNczN5iU5sNRcTi+t+cTGLoq7O6B8eRIkeb1hDXGGB402Oq/LYSku
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QTRznXmw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Reset VF on Tx MDD
 event
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 pawel.chmielewski@intel.com, anthony.l.nguyen@intel.com,
 Liang-Min Wang <liang-min.wang@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 28.03.2024 18:34, Simon Horman wrote:
> On Tue, Mar 26, 2024 at 05:44:55PM +0100, Marcin Szycik wrote:
>> In cases when VF sends malformed packets that are classified as malicious,
>> sometimes it causes Tx queue to freeze. This frozen queue can be stuck
>> for several minutes being unusable. This behavior can be reproduced with
>> a faulty userspace app running on VF.
>>
>> When Malicious Driver Detection event occurs and the mdd-auto-reset-vf
>> private flag is set, perform a graceful VF reset to quickly bring VF back
>> to operational state. Add a log message to notify about the cause of
>> the reset. Add a helper for this to be reused for both TX and RX events.
>>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Co-developed-by: Liang-Min Wang <liang-min.wang@intel.com>
>> Signed-off-by: Liang-Min Wang <liang-min.wang@intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> Hi Marcin,
> 
> If I read this correctly then a reset may be performed for several
> different conditions - values of different registers - for a VF
> as checked in a for loop.
> 
> I am wondering if multiple resets could occur for the same VF within
> an iteration of the for loop - because more than one of the conditions is
> met. And, if so, is this ok?

Hi Simon,

Good point. Nothing too bad should happen, as ice_reset_vf() acquires mutex lock
(in fact two locks), so several resets would just happen in sequence. However,
it doesn't make much sense to reset VF multiple times, so maybe instead of issuing
reset on each condition, I'll set some flag, and after checking all registers I'll
trigger reset if that flag is set. What do you think?

Thanks,
Marcin
