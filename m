Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C585A4C731
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 17:31:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1EB280EEA;
	Mon,  3 Mar 2025 16:31:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EZqa2HxwmFZl; Mon,  3 Mar 2025 16:31:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3701D822D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741019512;
	bh=5ScqBd1GToJ+/CLuRN6ICDm3Eeqqa+/KoULBNUwDsiI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I58eYdESMBPShdq5k9H6EiEcha1FG8gZmRwMks4ZfKpnkuky6UdvBbQYjUgaYBVy5
	 2lLslLfM6R6b8ktKHjP8KfBA9PY7CYYqMC81O+C5ovsi2TF+4ipcty0lyXoLenonAZ
	 v6ZpNo5g9qVt6AUSERnIk1TeKFe5lzMor1uSfwY1fk8fzUUAA6+iqS4Ov9DCRxrKdd
	 n6+biOOPdqhclWaDOIPPSnwB+l3tOpthx++npyNDqKMWjay9NvK3TIUo+D2iFvtn3T
	 5NvkVRkEkkrA9uvWq3RQXRkhp008IjX2Pg0hWdRlxb3opPk3Q44EsH3GtslGqIo/Qz
	 f4xbeneSeOW8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3701D822D9;
	Mon,  3 Mar 2025 16:31:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CB7C6182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 16:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C408540F4A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 16:31:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b6cpNbrEaCha for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 16:31:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 93EE940EC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93EE940EC3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93EE940EC3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 16:31:48 +0000 (UTC)
X-CSE-ConnectionGUID: 4QrUv0VmQCSN11OBjMN8IQ==
X-CSE-MsgGUID: dl5p0s2LTMa9+14Rk2n2hQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41814871"
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="41814871"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 08:31:48 -0800
X-CSE-ConnectionGUID: 3n7syFCqQamalbUmj3rVcg==
X-CSE-MsgGUID: EAz3T0foTqGwyZp4ZkmPEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148981543"
Received: from mszapar-mobl1.ger.corp.intel.com (HELO [10.245.84.226])
 ([10.245.84.226])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 08:31:46 -0800
Message-ID: <4cf2a594-b45c-4527-8d90-cc574d35747a@linux.intel.com>
Date: Mon, 3 Mar 2025 17:31:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
 <20250228170939.GK1615191@kernel.org>
Content-Language: en-US
From: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20250228170939.GK1615191@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741019509; x=1772555509;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=7LxWNqT1fMj8bNfdr42HT/hMBkfO3rmJ9k0l5GEGYmM=;
 b=OR47wxvwDhjz6h7JkTsMK0xtO54uPKUlP4di8G+ILSCfDPrHO3aX/QFb
 LzmGgGaSgxoMU2rJs3jYAd6GEkE8xDx9jFbASh3Kjrl/+0DBBfuw3Cght
 Zuo4doffJLfmw0tNDXu6xQNNBc8y0Uuqqrb6BkEAq0kUNpih43jeoI6r3
 s9nyc6wqMl9IDNZUby4S8tjvrLWLvEZSLG8qwqJiEjBqfuh++7lIE+YnY
 b61KaatEyD9LtKMc04ihYVdn5q7AH9Hvu9YDn5Ah76Oyhc+QUWKNDuzRA
 4cpFlS+0O5NculWxwJny3aJfBDtIiCiY4X20d2RRyCUXqQXXLWv/EgYym
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OR47wxvw
Subject: Re: [Intel-wired-lan] [iwl-net v2 5/5] ice: fix using untrusted
 value of pkt_len in ice_vc_fdir_parse_raw()
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



On 2/28/2025 6:09 PM, Simon Horman wrote:
> On Tue, Feb 25, 2025 at 10:08:49AM +0100, Martyna Szapar-Mudlaw wrote:
>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>
>> Fix using the untrusted value of proto->raw.pkt_len in function
>> ice_vc_fdir_parse_raw() by verifying if it does not exceed the
>> VIRTCHNL_MAX_SIZE_RAW_PACKET value.
>>
>> Fixes: 99f419df8a5c ("ice: enable FDIR filters from raw binary patterns for VFs")
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
>> ---
>>   .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 25 +++++++++++++------
>>   1 file changed, 17 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> index 14e3f0f89c78..6250629ee8f9 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> @@ -835,18 +835,27 @@ ice_vc_fdir_parse_raw(struct ice_vf *vf,
>>   	u8 *pkt_buf, *msk_buf __free(kfree);
>>   	struct ice_parser_result rslt;
>>   	struct ice_pf *pf = vf->pf;
>> +	u16 pkt_len, udp_port = 0;
>>   	struct ice_parser *psr;
>>   	int status = -ENOMEM;
>>   	struct ice_hw *hw;
>> -	u16 udp_port = 0;
>>   
>> -	pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
>> -	msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
>> +	if (!proto->raw.pkt_len)
>> +		return -EINVAL;
>> +
>> +	pkt_len = proto->raw.pkt_len;
> 
> Hi Martyna,
> 
> A check is made for !proto->raw.pkt_len above.
> And a check is made for !pkt_len below.
> 
> This seems redundant.

Right, thank you for spotting it, will fix

> 
>> +
>> +	if (!pkt_len || pkt_len > VIRTCHNL_MAX_SIZE_RAW_PACKET)
>> +		return -EINVAL;
> 
> ...

