Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B429B75F838
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 15:27:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5CB4440C88;
	Mon, 24 Jul 2023 13:27:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CB4440C88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690205221;
	bh=VWObpQzkWkY2cdvzUtDi/BAnW+qmipxvZJpg+nyx1KM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gGQAEVZkPRaOoAt4jHiQOvM84SA7LCBh2RN+9JX2eLdhpt1jBSBAkEOQ/cHZLnaLS
	 8iWNsQu6MPNTc9J8/PakOTAb6ugxRzqkgCYEaD80rZO61fMiBk6e1A4BjxF1Ctzt/N
	 JSR0slB5PbrZ1YcnZHTDwv/qjSAWazTBtZLo/fdUPAe6aGyA4tlt6kTch+mJ9GQUQQ
	 a2DfIsn19/OKEvcNlSAIjscs1866lEUfcgXGXKcxcJs1GTw0ffoSHn+jlXxAZqRnH4
	 PktwmmAPkxTVvXGFe0FLf35gHEBQEg+xhThLv5vSZxIcr2slPDr8SEE9y76P6G+goR
	 BzHp0K/cufqeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mkCzVxwK0I2X; Mon, 24 Jul 2023 13:27:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B7ED40972;
	Mon, 24 Jul 2023 13:27:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B7ED40972
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 462191BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 13:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 28B9941601
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 13:26:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28B9941601
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zmc6b9wDw5IT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 13:26:54 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 24 Jul 2023 13:26:54 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 082AB415FE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 082AB415FE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 13:26:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="347040218"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="347040218"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 06:19:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="795779345"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="795779345"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.237.140.125])
 ([10.237.140.125])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 06:19:43 -0700
Message-ID: <9c3da951-7a08-2b97-309c-e7939703d11c@linux.intel.com>
Date: Mon, 24 Jul 2023 15:19:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andy Shevchenko <andy@kernel.org>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-5-marcin.szycik@linux.intel.com>
 <ZLqeB/0aoe6GQUVi@smile.fi.intel.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <ZLqeB/0aoe6GQUVi@smile.fi.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690205214; x=1721741214;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=9cSa9Pr63Zee1J/8qMmYF8Epv+z90Luvz/CAk4fTxM0=;
 b=ch1siAT9SvhMHCjTSIho5M0ehr5GZ8qcwuYZWzTXN+aNBqA7mX3OnIUu
 fEsPZ/ltL9geSdG6x1xGlccSZ1aqDvPnxeSn6Wa8xxl6OZIq8XTsMpk0/
 WadghVIp7wPJriakR3zn/xRQtTKaRAtz+3zy7ehQaQ/bMFd8ouKQ3PL51
 IPlpUQ1vKb3raz6sksK7VRRVz3kV3ShvUQAq+OFHEeXw3RUvPX3a0yq6N
 ioUr3KUFoAU1ouSucT5htD52xhMWXf6Z34dIQCZPj+xZmyJO2SbWDnIZH
 EYbQ13vNHb0yUVQLaTDZ++/Qd/uZWFJMCEuKWmQ/GIiyZquxzeRyrdiBl
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ch1siAT9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/6] pfcp: always set pfcp
 metadata
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 21.07.2023 17:02, Andy Shevchenko wrote:
> On Fri, Jul 21, 2023 at 09:15:30AM +0200, Marcin Szycik wrote:
>> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>
>> In PFCP receive path set metadata needed by flower code to do correct
>> classification based on this metadata.
> 
> ...
> 
> + bits.h
> + types.h

Will add.

> 
>> +#include <net/udp_tunnel.h>
>> +#include <net/dst_metadata.h>
>> +
>>  #define PFCP_PORT 8805
>>  
>> +/* PFCP protocol header */
>> +struct pfcphdr {
>> +	u8	flags;
>> +	u8	message_type;
>> +	__be16	message_length;
>> +};
>> +
>> +/* PFCP header flags */
>> +#define PFCP_SEID_FLAG		BIT(0)
>> +#define PFCP_MP_FLAG		BIT(1)
>> +
>> +#define PFCP_VERSION_SHIFT	5
>> +#define PFCP_VERSION_MASK	((1 << PFCP_VERSION_SHIFT) - 1)
> 
> GENMASK() since you already use BIT()

Will change.

> 
>> +#define PFCP_HLEN (sizeof(struct udphdr) + sizeof(struct pfcphdr))
>> +
>> +/* PFCP node related messages */
>> +struct pfcphdr_node {
>> +	u8	seq_number[3];
>> +	u8	reserved;
>> +};
>> +
>> +/* PFCP session related messages */
>> +struct pfcphdr_session {
>> +	__be64	seid;
>> +	u8	seq_number[3];
>> +#ifdef __LITTLE_ENDIAN_BITFIELD
>> +	u8	message_priority:4,
>> +		reserved:4;
>> +#elif defined(__BIG_ENDIAN_BITFIELD)
>> +	u8	reserved:4,
>> +		message_priprity:4;
>> +#else
>> +#error "Please fix <asm/byteorder>"
>> +#endif
>> +};
>> +
>> +struct pfcp_metadata {
>> +	u8 type;
>> +	__be64 seid;
>> +} __packed;
>> +
>> +enum {
>> +	PFCP_TYPE_NODE		= 0,
>> +	PFCP_TYPE_SESSION	= 1,
>> +};
> 
> ...
> 
>> +/* IP header + UDP + PFCP + Ethernet header */
>> +#define PFCP_HEADROOM (20 + 8 + 4 + 14)
> 
> Instead of comment like above, just use defined sizes.
> 
>> +/* IPv6 header + UDP + PFCP + Ethernet header */
>> +#define PFCP6_HEADROOM (40 + 8 + 4 + 14)

Will change.

> 
> sizeof(ipv6hdr)
> sizeof(updhdr)
> ...
> 
> Don't forget to include respective headers.
> 

Thank you for review!
Marcin
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
