Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U2xbLyaqS2q7YAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 15:14:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD887111AE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 15:14:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=dDhKE4jr;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AA9B608A3;
	Mon,  6 Jul 2026 13:14:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0_2-TGuBXy7L; Mon,  6 Jul 2026 13:14:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 030A5608AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783343651;
	bh=rd1eU5fXUVGlzNSRLp2SVbgeNmB9RghvaveOS3kWy5M=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dDhKE4jrhpYvCYZR2LlIhPFP8iS6YHfuPDnKoHGKkQBi/Tm73Q450XslXaGqyyISg
	 Ow6GlG4fv44ud1kDEN4T5oLNxBaA0Aly/1Z3WYGBCk+AdcvIGu2qSq9PMyZrq0klRI
	 +R7gEivQAAEAzoMdIi1ev6y9kRDngUcbBwdcSmcZZc3vecL3QL5cR8WqtoEZ5dnPc/
	 aqxVthQ4cP8Vjpn2ApboEmcktn7LC8C/Zk6ZEg2nI7dI+gg7HoSyEDuxg2w+C387LO
	 GxVM4R6Jv41sg+83GeX3bL17AmpPngkEHm62tllQiWySJmTYE03QT/P40KlXH4ApBy
	 6DXR3Nfmy75Og==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 030A5608AA;
	Mon,  6 Jul 2026 13:14:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C407B316
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 13:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACD3440A4C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 13:14:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CHzHC3RiGV2T for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 13:14:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=tomasz.lichwala@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8082340830
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8082340830
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8082340830
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 13:14:07 +0000 (UTC)
X-CSE-ConnectionGUID: xcuD1mfVQymjn3rxUwFqgQ==
X-CSE-MsgGUID: sbnDUSgmRUSjZTw7vQQ0XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="101521530"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="101521530"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 06:14:06 -0700
X-CSE-ConnectionGUID: WQzG8MpsTY6n1o1gH5Jpzg==
X-CSE-MsgGUID: wJjsyAA6R2qcUYQWgyxI8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="251963225"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 06:14:06 -0700
Received: from [10.102.88.191] (soc-5CG4396XFD.clients.intel.com
 [10.102.88.191])
 by linux.intel.com (Postfix) with ESMTP id 8E28720C5DC7;
 Mon,  6 Jul 2026 06:14:03 -0700 (PDT)
Message-ID: <80a56d5b-da01-4ece-a7f4-56b357e654a7@linux.intel.com>
Date: Mon, 6 Jul 2026 15:14:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 Pengpeng Hou <pengpeng@iscas.ac.cn>, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260706092500.79044-1-pengpeng@iscas.ac.cn>
 <9750092f-264e-45a1-af11-2f574ab67fa4@linux.intel.com>
Content-Language: pl
From: Tomasz Lichwala <tomasz.lichwala@linux.intel.com>
In-Reply-To: <9750092f-264e-45a1-af11-2f574ab67fa4@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783343647; x=1814879647;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/gzse8Hbg6PtoujjX4AgsuIwqG3oGT1yLJT6Vw3slKo=;
 b=KXM+DUnL4MWuXk55ExkiTexIV8SC5R148UzYA34x6vtz1x7g05sQS3ZT
 vg7c1h0aySfK2FxPsJN75kgSyzfCKjK0YtdGEJyMaEhTvVZ3U13/PRlX4
 hCkJYzWDaXZcbC4PyeBhbqCUynxRx9hi+d8VLfCZuZAv4A2FwlVFmNLlg
 v1QCTaSGUEwPwIPtwmpF8rcXL/AbTy4cDQH54OOTgNto9z/djnN+Xr4eO
 znt/aN9T6xUPTtQPKQkOocCProdKlTHQrxnjCjLyvhD42kYq/C712uB/t
 Bw/IzjH9QceLuB+z8i/J/ON1YilIu8pV8Yrg+wRZityVXX6UAPsnrShzj
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KXM+DUnL
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: validate E610 PFA TLV bounds
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:pengpeng@iscas.ac.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,linux.intel.com:from_mime,iscas.ac.cn:email,osuosl.org:from_smtp,osuosl.org:dkim];
	FORGED_SENDER(0.00)[tomasz.lichwala@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomasz.lichwala@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AD887111AE



W dniu 6.07.2026 o 12:02, Marcin Szycik pisze:
> 
> 
> On 06/07/2026 11:25, Pengpeng Hou wrote:
>> ixgbe_get_pfa_module_tlv() walks E610 PFA TLV records stored in
>> EEPROM.
>>
>> Stop parsing malformed TLVs whose header or declared value length would
>> exceed the PFA boundary.
>>
>> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
>> ---
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> index 4d8ae5b56145..03e88bdf5a43 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> @@ -3895,6 +3895,9 @@ static int ixgbe_get_pfa_module_tlv(struct ixgbe_hw *hw, u16 *module_tlv,
>>  	while (next_tlv < pfa_end_ptr) {
>>  		u16 tlv_sub_module_type, tlv_len;
>>  
>> +		if (pfa_end_ptr - next_tlv < 2)
>> +			break;
> 
> This check could go in the while condition above.
> 
>> +
>>  		/* Read TLV type */
>>  		err = ixgbe_read_ee_aci_e610(hw, next_tlv,
>>  					     &tlv_sub_module_type);
>> @@ -3917,6 +3920,9 @@ static int ixgbe_get_pfa_module_tlv(struct ixgbe_hw *hw, u16 *module_tlv,
>>  		/* Check next TLV, i.e. current TLV pointer + length + 2 words
>>  		 * (for current TLV's type and length).
>>  		 */
>> +		if (tlv_len > pfa_end_ptr - next_tlv - 2)
>> +			break;
>> +
>>  		next_tlv = next_tlv + tlv_len + 2;
> 
> Would be nice to define the magic number (2), since we're reusing it now.

There is a pending patch in review that defines IXGBE_E610_SR_PFA_TLV_HDR_SIZE, which fits perfectly here.

> 
>>  	}
>>  	/* Module does not exist */
> 
> Thanks,
> Marcin

Thanks,
Tomasz
