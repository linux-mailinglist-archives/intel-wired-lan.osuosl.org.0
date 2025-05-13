Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B53AB55DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 15:21:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADB0940E61;
	Tue, 13 May 2025 13:21:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X2ckpQduGOmn; Tue, 13 May 2025 13:21:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDB6E40E1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747142495;
	bh=jJJ/QQSDwnX6m6dvqiV5wg7VLvG97TCkpffWq8xfx6c=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SuAX1X2xlXTcgL0p2VRDdaIggh0kicj/OJULf5eS7lOJOLSCoJgo6h2qFl/WcdQaI
	 NtjT/Xe1REhlQaDOv2RKOmBRLyp2wpTdgBpn8iv2mIHOBF/ackvoYbx2wLEg7hnKvw
	 OuXArhq9Zarq3kKcQVCNfSMUzsA78VDwyOOPg/9SOuPksrImruYywSPvrOyDm2Lgou
	 hEoxJZ8GgnPMdxeC2enfYt1I/tCe21/i+i8il3NVxsIPLcwE5qjg1b07RVufcQd1Bz
	 HX5WOw8ZCf9RH5h/EhD8o8Y9lms26Ne5VbbB0FoAGkxRg7kJW9yspm2ZA8tgg4/jXx
	 GEndlTyCCBGEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDB6E40E1C;
	Tue, 13 May 2025 13:21:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D738C12A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C865A81EE5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:21:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uF9ynNy03i4d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 13:21:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 43F30813A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43F30813A9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43F30813A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 13:21:31 +0000 (UTC)
X-CSE-ConnectionGUID: 8B8/g0OZRbaYcwxJDbCIIQ==
X-CSE-MsgGUID: yphMyPL0S9yPYLB12fRa4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="66537733"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="66537733"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 06:21:31 -0700
X-CSE-ConnectionGUID: Qd7J/lAsQY+9a3S9ZfTPEQ==
X-CSE-MsgGUID: HMxCdOBPQY+FmIGVVUcbdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="141756581"
Received: from soc-5cg4396xfb.clients.intel.com (HELO [172.28.180.78])
 ([172.28.180.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 06:21:28 -0700
Message-ID: <dbc58b6f-b15e-42d9-b4d7-344b9ab53f74@linux.intel.com>
Date: Tue, 13 May 2025 15:21:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Zilin Guan <zilin@seu.edu.cn>
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jianhao.xu@seu.edu.cn, kuba@kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com
References: <170f287e-23b1-468b-9b59-08680de1ecf1@linux.intel.com>
 <20250513122441.4065314-1-zilin@seu.edu.cn>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <20250513122441.4065314-1-zilin@seu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747142491; x=1778678491;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=5dffDf9PmzYG0Regdsf+hGkrpIjHmeqazNk/TmzOfCA=;
 b=fTD1kUN4Lsgxy0BpiMx+t65pHVW/MX0PuROSPBkNzgzWZW92AzuFZ1Vd
 DTlkdbFAh/aKyujiKamqYNWDOkZCaH99Eun64LcVUwmyi/5XWtZ/jkKgm
 V41dS3RRewKWh1mC+/AM6k3LKeZmkD2nK9ZJv3GvFzEjJFOKjb/VgM2kC
 l9hu9IPpsZ+sshhZz5jkj62bNqpZ5SP4rDNQTAcS5eLi1opoEABwrG784
 DuwOhDeEeACt6fIvKd368kNrlGhtI3VoWjaaklFk5eycVQUsrj65JHjvP
 5s8dBeupiz20ttvDuq9et2QTcibQA9yGp6SHn5CK55S8+M4/hX/UHOQrL
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fTD1kUN4
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe/ipsec: use memzero_explicit()
 for stack SA structs
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

On 2025-05-13 2:24 PM, Zilin Guan wrote:
> OK, I will resend the patch to the iwl-net branch and include the Fixes
> tag. Before I do that, I noticed that in ixgbe_ipsec_add_sa() we clear
> the Tx SA struct with memset 0 on key-parsing failure but do not clear
> the Rx SA struct in the corresponding error path:
> 
> 617     /* get the key and salt */
> 618     ret = ixgbe_ipsec_parse_proto_keys(xs, rsa.key, &rsa.salt);
> 619     if (ret) {
> 620         NL_SET_ERR_MSG_MOD(extack,
>                                "Failed to get key data for Rx SA table");
> 621         return ret;      /* <- no memzero_explicit() here */
> 622     }
> ...
> 728     if (ret) {
> 729         NL_SET_ERR_MSG_MOD(extack,
>                                "Failed to get key data for Tx SA table");
> 730         memset(&tsa, 0, sizeof(tsa));
> 731         return ret;      /* <- clears tsa on error */
> 732     }
> 
> Both paths return immediately on key-parsing failure, should I add a
> memzero_explicit(&rsa, sizeof(rsa)) before Rx-SA's return or remove the
> memset(&tsa, ...) in the Tx-SA path to keep them consistent?

 From the code in ixgbe_ipsec_parse_proto_keys() it seems that copying 
of the salt and key values occurs at the end of the function and only in 
case of success, see below.

---
if (key_len == IXGBE_IPSEC_KEY_BITS) {
	*mysalt = ((u32 *)key_data)[4];
} else if (key_len != (IXGBE_IPSEC_KEY_BITS - (sizeof(*mysalt) * 8))) {
	netdev_err(dev, "IPsec hw offload only supports keys up to 128 bits 
with a 32 bit salt\n");
	return -EINVAL;
} else {
	netdev_info(dev, "IPsec hw offload parameters missing 32 bit salt 
value\n");
	*mysalt = 0;
}
memcpy(mykey, key_data, 16);

return 0;
---

In my (limited) understanding the memset(&tsa, 0, ...) call in case of 
error after the ixgbe_ipsec_parse_proto_keys() is redundant, as there is 
nothing to clear in the tsa.key and tsa.salt. The rsa and tsa also 
contain the pointer to the xfrm_state and I am unsure whether we should 
clear that as well.

Please note that I do not have much experience with ipsec so take my 
opinion with a grain of salt. Best for someone more experienced to assess.

Thanks,
Dawid

> 
> Best Regards,
> Zilin Guan

