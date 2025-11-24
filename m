Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 273FEC80439
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 12:49:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9515827AF;
	Mon, 24 Nov 2025 11:49:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xHL2hHjuflzO; Mon, 24 Nov 2025 11:49:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3665082B5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763984976;
	bh=FjdzdIPkjbTIBcp35cu3ku9sDz7C3Xa9HnUZjtJmWn0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fbn9kn4B//7d+rGLhWzpmWL6zeDJdEWrNI7qyoz2KcLEW17Umbypm+jupNLDhQ4Qw
	 uGULu57Sz3w4LXig9XLt6fsl/MQOfETf/co2XNUusCeP9q1FlfKocGIjqIl7HvdiRg
	 SjTbeyhtGmBWEwUWSiGgdeseJror9H3f/G6E5YvjDlXbuDjyvTNcVadnV+EknpZJPg
	 OsjVnygmev92OnrBjhdkBlSTZMNCNPf0df9PX5oQvkGN72wbp+R/8ZLIMBBfvKDY3n
	 5MkTs8HEezPlfYj+JIAXMGk6VXwDOvvue+nLWIYDX/w/ZNTCplinXM43V8dc/hNhTp
	 dL8UFVznRSgUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3665082B5E;
	Mon, 24 Nov 2025 11:49:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B18C3E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 11:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9DAE740377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 11:49:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CjCbYwOq8wgk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 11:49:34 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 24 Nov 2025 11:49:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D8BEA40376
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8BEA40376
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8BEA40376
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 11:49:33 +0000 (UTC)
X-CSE-ConnectionGUID: 0I+DMkxsSuGkiVMfPuLi7Q==
X-CSE-MsgGUID: 4GxuQ3mMTFu1RxsWDm0f1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="88633388"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="88633388"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 03:42:27 -0800
X-CSE-ConnectionGUID: 2IUEq4b2SGOmPHJmaemNTQ==
X-CSE-MsgGUID: o8R/nalYQP2UEybVJILtaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="193095019"
Received: from unknown (HELO [10.217.181.108]) ([10.217.181.108])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 03:42:26 -0800
Message-ID: <e822ab45-0fa7-43bd-8236-3497d8ec0ca3@linux.intel.com>
Date: Mon, 24 Nov 2025 12:42:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251118121709.122512-1-marcin.szycik@linux.intel.com>
 <84d7bbbd-5902-4b9d-9bc2-eb1704b81d57@intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <84d7bbbd-5902-4b9d-9bc2-eb1704b81d57@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763984973; x=1795520973;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=q4ntfVxQRZkW2CuKNeZO79nxICArr40RgNvtkzd65V4=;
 b=IDFQEOiwmI8PvX9+GUNwfHn/XUXd2r2YrP4/vpkLmNLfV3HOTtlv8bQB
 BakKse9AIQbuAH4uGzt42ar9VhxQ19RZfmD7YxK1UzHzddMce3L+wygLB
 LzCuL2MZNK88fExB40SoHoT1I14UOx5V8mXgmoXHLJO7pf5C/8H5f54D/
 DZ+sf+YkPaSSjmozNeYmMEdhqMdY7dLUWtFk0HAb3cooHajrE3x8Xkg56
 9NEhd7qjQ1bPEJSbRkgLNw/hc8CHpoimX1advTjS85AHx+xGJky2xERld
 MA4RrS9coZLT48MXGcjGud4NeqyLWKESRQCvnwSn594mdEZIAs9rZP1vS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IDFQEOiw
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: update DDP LAG
 package to 1.3.2.0
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



On 21.11.2025 22:38, Tony Nguyen wrote:
> 
> 
> On 11/18/2025 4:17 AM, Marcin Szycik wrote:
>> Highlights of changes since 1.3.1.0:
>>
>> - Add support for Intel E830 series SR-IOV Link Aggregation (LAG) in
>>    active-active mode. This uses a dual-segment package with one segment
>>    for E810 and one for E830, which increases package size.
>>
>> Testing hints:
>> - Install ice_lag package
>> - Load ice driver
>> - devlink dev eswitch set $PF1_PCI mode switchdev
>> - ip link add $BR type bridge
>> - echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
>> - ip link add $BOND type bond miimon 100 mode 802.3ad
>> - ip link set $PF1 down
>> - ip link set $PF1 master $BOND
>> - ip link set $PF2 down
>> - ip link set $PF2 master $BOND
>> - ip link set $BOND master $BR
>> - ip link set $VF1_PR master $BR
>> - Configure link partner in 802.3ad bond mode
>> - Verify both links in bond are transmitting/receiving VF traffic
>> - Verify bond still works after pulling one of the cables
>>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> ---
>>   ...ce_lag-1.3.1.0.pkg => ice_lag-1.3.2.0.pkg} | Bin 692776 -> 1360772 bytes
>>   1 file changed, 0 insertions(+), 0 deletions(-)
>>   rename intel/ice/ddp-lag/{ice_lag-1.3.1.0.pkg => ice_lag-1.3.2.0.pkg} (49%)
> 
> The WHENCE file needs to be updated to reflect the new version.

Sorry, will update in v2.

Marcin

>>
>> diff --git a/intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg b/intel/ice/ddp-lag/ice_lag-1.3.2.0.pkg
>> similarity index 49%
>> rename from intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
>> rename to intel/ice/ddp-lag/ice_lag-1.3.2.0.pkg
> 
> 

