Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C38D59583FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 12:18:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73AF740582;
	Tue, 20 Aug 2024 10:18:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K8Nhhue5g_9f; Tue, 20 Aug 2024 10:18:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1BD840377
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724149097;
	bh=0tLvqI+Dt2xqLSDDKpu0Z+65maoJlkzCK3y3xMmxy28=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hKs9x/4W+PW2PW0Ad9GHTuAC4qzDfvO2aS+1QCZ13hRg3CU1X0SakzVRZb3rFlOmv
	 0WwGiAbN9zlOp5wvXlE/uP96IEJGATJy0CVjmP9ogTUzejuGTLqGLEnGQyKozeMvr2
	 R7YjWRXNxLCN3G6u994VyqtjaQw2il96IctxvrcjJb1ubR09JttG8XnA/RaPb+zFfE
	 O5QlrJ1ysk8Cfdb5AzrChfnkY/e8KQeZNbF6h8qkCjHwuMKBCt1EY0pugQEzHa5alU
	 /6/Hx33H+YLA5m6MkHLLPZqZ47oFs0pQU5VMPjPPATUIjdslOms19PBAc7Kq/OLzWs
	 M5WKHreGlj1Ug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1BD840377;
	Tue, 20 Aug 2024 10:18:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F1F141BF328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E48B840332
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:18:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aJWY3Py0qtF1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 10:18:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 77E5D401B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77E5D401B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77E5D401B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 10:18:12 +0000 (UTC)
X-CSE-ConnectionGUID: 1QuIsRPtQHKccgrci3vHvQ==
X-CSE-MsgGUID: sI3rQeJ2Q+K9NIKoNK4v6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="22617254"
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="22617254"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 03:18:11 -0700
X-CSE-ConnectionGUID: nUMQ5+KATBOPlv9SHaw+Pg==
X-CSE-MsgGUID: F4+GQ3kbTMWee1MSINU4Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,161,1719903600"; d="scan'208";a="60339009"
Received: from dosuchow-mobl2.ger.corp.intel.com (HELO [10.245.116.159])
 ([10.245.116.159])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 03:18:09 -0700
Message-ID: <c5e08b9f-9424-4863-b5f5-09d11c8a1dc7@linux.intel.com>
Date: Tue, 20 Aug 2024 12:18:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20240819082146.101755-1-dawid.osuchowski@linux.intel.com>
 <ba76710b-c3e2-442a-b398-2b2a87f3642c@intel.com>
Content-Language: pl
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <ba76710b-c3e2-442a-b398-2b2a87f3642c@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724149092; x=1755685092;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=XgVONl2BEHKbhJm4+IYUC4BV30j7HIE44ASG1Qz70ts=;
 b=IJ936ArJEbAFzBgH+JESiG/9vcviUj2LLYGRy8BfYr4tSUIfrB4ui/iV
 UcN0UGubvm/Uh5m7RhY9LbwxM2oT6bEGGIN+adH1nUABxWMA7Mb5R4/sP
 ZVSfqWvqCjV0ZiVRQiPweuEseX43gJfUW6YYdICNpChNValcbDjsEe1Ja
 KWDFYZQBvCplX/Y6qcGAKCPPXfNwEaDjMBT5E3gBcxght4nJVsCDzDvT8
 xm1waQ9C/16K+1prHSr1fVWHCXUIBUiGQCR2xlJ0gC/l7YbkBU3PBSxgM
 yGJ/16ocPlR6NiitA2623/bLVpGDuupE1CWJRalMfGxa4EALzAgr8Qa4B
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IJ936ArJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: maciej.fijalkowski@intel.com, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, kalesh-anakkur.purayil@broadcom.com,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 19.08.2024 10:47, Przemek Kitszel wrote:
> On 8/19/24 10:21, Dawid Osuchowski wrote:
>> @@ -7731,6 +7733,10 @@ static void ice_rebuild(struct ice_pf *pf, enum 
>> ice_reset_req reset_type)
>>           ice_rebuild_arfs(pf);
>>       }
>> +    struct ice_vsi *vsi = ice_get_main_vsi(pf);
> 
> you should separate declaration statements from expressions by one blank
> line; we also put declarations at the very front of the scope

Will fix in next revision, thanks.

>> +    if (vsi && vsi->netdev)
>> +        netif_device_attach(vsi->netdev);
>> +
>>       ice_update_pf_netdev_link(pf);
>>       /* tell the firmware we are up */
> 

