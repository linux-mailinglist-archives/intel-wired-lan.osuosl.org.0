Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CEBC2428A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Oct 2025 10:30:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 293784181C;
	Fri, 31 Oct 2025 09:30:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 57VEpn7s2_Ku; Fri, 31 Oct 2025 09:30:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AF084175B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761903011;
	bh=dJCHY1xD4kMzxCb5bZ79VDVwPE90+O5Z/44h0qgKOvI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JMnwHxTuuQIjneTELq81qBF5NRKi38ZmuzuxTknszjd+XM6/8DjKwnBB2u8syYafU
	 ToXOKbv8QJUwKlKtWrrQXU2k8UakPYK8MJmoFcc5cN0ud+fXUXRv+E9dWx982H35tS
	 FcObC/ZYZagUoM+sNnybwK0AnMVYmHnRWtj//5K/8YFbG4pxwlg58vtBzl/H3D4CPN
	 iYA1oEC37JHJScc3koEI35Jq0W7A/5GuYUbIP989Oulwd28FqUx1GI6HCoI8D5ccuJ
	 MbQk1AWfbaEC9oQFwrL5GQtpJ4sR8sVIodwSzf1rc+PPJa825B5VQgwT3ZWRIFzY/E
	 R85l4oZM4dn7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AF084175B;
	Fri, 31 Oct 2025 09:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 55C68160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 09:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47C91816E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 09:30:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TvVAxmDhAHDg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Oct 2025 09:30:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 31EA083506
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31EA083506
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 31EA083506
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 09:30:07 +0000 (UTC)
X-CSE-ConnectionGUID: /ZFUl55oQe2eeHIU/+RgFw==
X-CSE-MsgGUID: BWuSyLenTf2RX3QLjtpzqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="81690555"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="81690555"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 02:30:07 -0700
X-CSE-ConnectionGUID: S5PZvJ/MTP+l9A3gvPAJwQ==
X-CSE-MsgGUID: hTCdttE1SA2eh0rICcHl5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="185465564"
Received: from soc-5cg4396xfb.clients.intel.com (HELO [172.28.180.29])
 ([172.28.180.29])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 02:30:05 -0700
Message-ID: <d4fd9c18-e8bd-4dc1-bacc-51be080cc693@linux.intel.com>
Date: Fri, 31 Oct 2025 10:29:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Sanigani, SarithaX" <sarithax.sanigani@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kubiak, Michal" <michal.kubiak@intel.com>
References: <PH8PR11MB69764650A4A2EB8CCAFD5461F9F8A@PH8PR11MB6976.namprd11.prod.outlook.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <PH8PR11MB69764650A4A2EB8CCAFD5461F9F8A@PH8PR11MB6976.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761903008; x=1793439008;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+K4yEluZ9DNkA/LHn1mgdDau/jNPIfLmkaXdvyofzzc=;
 b=QGqTwihgYpEVbt5rkx0l+WlEFfKcIhGScJh0MooVbfFH6SsclG1LeoWi
 RnVcMC1nTiyXO2lE1aFff3MzTLwFEkxEvyZiQ5WSmn3DKXm2mqhxwTGIt
 WBhQn+94/uN3V6Z7uYT2uSdjqRLA4cWIIwgHX3aEgpqF70/yPHQFYwYAR
 88YmnScu0+EkO4cola6n1qoq1X5uvSDJx5xyDdQFPcLZIFJLGte69rB6n
 NAJxv84m+a1cb8l2fkxL426ve2S9krf9pxM1SnqxCqUrr4yHcZhXeVdj9
 Nj+b/7Y4mVReyVTs+8654nnXbM5iY/dPGFKJfyUI+ZtOWvuvkeYjx2Dn9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QGqTwihg
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ice: remove legacy Rx
 and construct SKB
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

On 2025-10-31 5:58 AM, Sanigani, SarithaX wrote:
>> -----Original Message-----
> 
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org<mailto:intel-wired-lan-bounces@osuosl.org>> On Behalf Of Michal Kubiak
> 
>> Sent: Thursday, September 25, 2025 2:53 PM
> 
>> To: intel-wired-lan@lists.osuosl.org<mailto:intel-wired-lan@lists.osuosl.org>
> 
>> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com<mailto:maciej.fijalkowski@intel.com>>; Lobakin, Aleksander <aleksander.lobakin@intel.com<mailto:aleksander.lobakin@intel.com>>; Keller, Jacob E <jacob.e.keller@intel.com<mailto:jacob.e.keller@intel.com>>;
> 
>> Zaremba, Larysa <larysa.zaremba@intel.com<mailto:larysa.zaremba@intel.com>>; netdev@vger.kernel.org<mailto:netdev@vger.kernel.org>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com<mailto:przemyslaw.kitszel@intel.com>>; pmenzel@molgen.mpg.de<mailto:pmenzel@molgen.mpg.de>;
> 
>> Nguyen, Anthony L <anthony.l.nguyen@intel.com<mailto:anthony.l.nguyen@intel.com>>; Kubiak, Michal <michal.kubiak@intel.com<mailto:michal.kubiak@intel.com>>
> 
>> Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ice: remove legacy Rx and construct SKB
> 
>>
> 
>> The commit 53844673d555 ("iavf: kill 'legacy-rx' for good") removed the legacy Rx path in the iavf driver. This change applies the same rationale to the ice driver.
> 
>>
> 
>> The legacy Rx path relied on manual skb allocation and header copying, which has become increasingly inefficient and difficult to maintain.
> 
>> With the stabilization of build_skb() and the growing adoption of features like XDP, page_pool, and multi-buffer support, the legacy approach is no longer viable.
> 
>>
> 
>> Key drawbacks of the legacy path included:
> 
>> - Higher memory pressure due to direct page allocations and splitting;
> 
>> - Redundant memcpy() operations for packet headers;
> 
>> - CPU overhead from eth_get_headlen() and Flow Dissector usage;
> 
>> - Compatibility issues with XDP, which imposes strict headroom and
> 
>> tailroom requirements.
> 
>>
> 
>> The ice driver, like iavf, does not benefit from the minimal headroom savings that legacy Rx once offered, as it already splits pages into fixed halves. Removing this path simplifies the Rx logic, eliminates unnecessary branches in the hotpath, and prepares the driver for upcoming enhancements.
> 
>>
> 
>> In addition to removing the legacy Rx path, this change also eliminates the custom construct_skb() functions from both the standard and zero-copy (ZC) Rx paths. These are replaced with the build_skb() > and standardized xdp_build_skb_from_zc() helpers, aligning the driver with the modern XDP infrastructure and reducing code duplication.
> 
>>
> 
>> This cleanup also reduces code complexity and improves maintainability as we move toward a more unified and modern Rx model across drivers.
> 
>>
> 
>> Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:aleksander.lobakin@intel.com>>
> 
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:aleksander.lobakin@intel.com>>
> 
>> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:aleksander.lobakin@intel.com>>
> 
>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com<mailto:jacob.e.keller@intel.com>>
> 
>> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com<mailto:michal.kubiak@intel.com>>
> 
>> ---
<snip>>
> Tested-by: Saritha Sanigani <sarithax.sanigani@intel.com<mailto:sarithax.sanigani@intel.com>> (A Contingent Worker at Intel)

Hello Saritha

It seems your email client is misconfigured as this message (and the 
rest of messages for this series) appear as completely separate from the 
thread "ice: convert Rx path to Page Pool". This also means patchwork 
did not pick up your Tested-by tags [1].

Another issue is the mangled email addresses in 
Signed-off-by/Reviewed-by/Tested-by tags.

Best,
Dawid

[1] 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250925092253.1306476-2-michal.kubiak@intel.com/
