Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4BF95964E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 10:10:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D91E640731;
	Wed, 21 Aug 2024 08:10:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t-gEL_3ABUZZ; Wed, 21 Aug 2024 08:10:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 181C5406C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724227830;
	bh=+0qJ2/oOU3AActLboRQoEqUOhdAXZ3DXZc816PdUA7o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xnp3s/VL/xdE96DkDq4I2fqYesIyq+m6ngp9zSKJ9/98M5Hnrqd1XicT91Efp+s9f
	 n2c/LaOKx+HW1uQqzz9yNqKLdHmvtKFYYQN3b10TxEiGB2Dt7lwIlIR/spejqOyU7Z
	 0+xEmWBwKCBukh2aPlgMWfWX+TJu3nQUje0QFD64XlXeD7Ftyg4KjHYLLtdxQqA65D
	 LFX/8MhU69mZU0++gPRC4py8vrzGQpV7zhDK8FrYRYJFoT/IkN4sUe1kagOBNVTwDC
	 ZFgNYOK13YqTrj9a1zZLFwUAXC8duG9aD+nbxWfUj1KgV8OZYX3nZHV8NPNtshiSll
	 MQsnqMHUF/OqQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 181C5406C7;
	Wed, 21 Aug 2024 08:10:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F02B1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 08:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2ABD980E73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 08:10:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I5kmvwvLHOSC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 08:10:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4511480E45
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4511480E45
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4511480E45
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 08:10:27 +0000 (UTC)
X-CSE-ConnectionGUID: fe7xm33ISpOi2kL2H66EtQ==
X-CSE-MsgGUID: ycNAoTAZSN2NtysonGh4yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="33233750"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="33233750"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 01:10:26 -0700
X-CSE-ConnectionGUID: 6cieWzGsQGKcvRqJz0aKWA==
X-CSE-MsgGUID: GxR05bmhT1CNDvyRB5Pb7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61545390"
Received: from dosuchow-mobl2.ger.corp.intel.com (HELO [10.246.27.111])
 ([10.246.27.111])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 01:10:25 -0700
Message-ID: <25c69f6d-bd04-429e-a1d5-c6985b6555bf@linux.intel.com>
Date: Wed, 21 Aug 2024 10:10:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20240820161524.108578-1-dawid.osuchowski@linux.intel.com>
 <ZsWHsaUbYo9Qb6v2@boxer>
Content-Language: pl
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
In-Reply-To: <ZsWHsaUbYo9Qb6v2@boxer>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724227827; x=1755763827;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ivvgB0cUn8JdRpMYm+PJMRBdz3lefpAdaf3PnAKhIUs=;
 b=OBacKJXYuNsPWYjo1IYQOsE9vvOCfBbe5eGmfb45NlByfrl14zOWbBLI
 WTxSV+tJgC/7npTvuTRFCeg+nlp6ZS3Eshf64W/nucuTsChIew3Fpo5aY
 QTV+qEZkciXIhutyv9h8zqIHHg/3+FL2aL+r4wuM9R6zar6H5YXx4vxa1
 L2LDNV1CFTw6FeW2E1tWwb600WEbPiIUHFoZnVJ82hhvBIL8kKkgbeeVW
 w6giil8hSFHVtfEZ702GI3LT1eACXaAynYnE1DZmVq7gOThqFH+EJNQnH
 rtXrZKSkEA10zxwLMVV4WBZHCKxdK3jWXaif5EPC6IfCMqDGF7xqgO51+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OBacKJXY
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: Add
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org,
 kalesh-anakkur.purayil@broadcom.com, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 21.08.2024 08:22, Maciej Fijalkowski wrote:
> On Tue, Aug 20, 2024 at 06:15:24PM +0200, Dawid Osuchowski wrote:
>> @@ -7591,6 +7594,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>>   {
>>   	struct device *dev = ice_pf_to_dev(pf);
>>   	struct ice_hw *hw = &pf->hw;
>> +	struct ice_vsi *vsi = ice_get_main_vsi(pf);
> 
> we have an unwritten rule that is called 'reverse christmas tree' which
> requires us to have declarations of variables sorted from longest to
> shortest.
> 
> 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
> 	struct device *dev = ice_pf_to_dev(pf);
> 	struct ice_hw *hw = &pf->hw;
> 	bool dvm;
> 	int err;
>

My apologies, I was not aware of that unwritten rule. Will fix in next 
revision, thanks. Other than that, does the rest of the changes look 
okay to you?

--Dawid
