Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id a3Z4K0pFV2qfIQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 10:31:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 293E675BE5B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 10:31:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=ObF3xc4F;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=linux.dev (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3F2B4067F;
	Wed, 15 Jul 2026 08:31:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HgkPJ5gYZ2ZZ; Wed, 15 Jul 2026 08:31:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BE4A40674
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784104264;
	bh=dQrae6Cm2MY06HGEjU3/xL5rXu67Kdy2Kb+NwAvEBps=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ObF3xc4FWS0a0RmXxR1x/uUrOPq7nweL7AVvdWIlN5bzo0VkPhG21LdVqhcFM1ny/
	 j5qcdE8biKEJuAu0V/eFvNwEPhJk1gWWQiU1W+a7orFqSEp5MLl1MYuz5bLE1Bs4XR
	 ZKllZphVCc0iEp69Z3o0vNug3p/dhIby/0nsCssONAFl+AFW54rYC0iHaxFlDv9tR3
	 +GtA7e7rnxBLHPg8Uf7nX7nknEMzIScATDF4mx1DBiNsn/I2BUQ6ZRwzjrFlJgm8vW
	 eVa1ZWisCtnRt/tjQd3LOyJYqa11QOtOnXxaaMy/LDuUulphCoADpcvWdz2fhj5BpN
	 tldmc+22vtWjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BE4A40674;
	Wed, 15 Jul 2026 08:31:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C4F5A203
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 08:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6EBD60640
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 08:31:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ox1h9c6v8dLs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 08:31:02 +0000 (UTC)
X-Greylist: delayed 19891 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 15 Jul 2026 08:31:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F08066063F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F08066063F
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::ad; helo=out-173.mta0.migadu.com;
 envelope-from=xuanqiang.luo@linux.dev; receiver=<UNKNOWN> 
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::ad])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F08066063F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 08:31:01 +0000 (UTC)
Message-ID: <fcd20554-beb3-4ac8-9768-14f9bb8ce8b4@linux.dev>
Date: Wed, 15 Jul 2026 16:30:06 +0800
MIME-Version: 1.0
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 Mitch Williams <mitch.a.williams@intel.com>,
 Greg Rose <gregory.v.rose@intel.com>,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Xuanqiang Luo <luoxuanqiang@kylinos.cn>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
References: <20260715061131.34420-1-xuanqiang.luo@linux.dev>
 <20260715061131.34420-2-xuanqiang.luo@linux.dev>
 <PH0PR11MB590272FD2023440F52E95689F0F82@PH0PR11MB5902.namprd11.prod.outlook.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: luoxuanqiang <xuanqiang.luo@linux.dev>
In-Reply-To: <PH0PR11MB590272FD2023440F52E95689F0F82@PH0PR11MB5902.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1784104257;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dQrae6Cm2MY06HGEjU3/xL5rXu67Kdy2Kb+NwAvEBps=;
 b=BozRlNq8VOl4+ctCscuxFAqWjvKWlDxZhZ0vNzXbzqpf6ftrM/RVx1jZTju87PpDmjx5oY
 Ks1kx1HbxJeEzhhtBmOjUT2JC46bRzooaqV23riTSdmRwc0BOG4cBUU37TQXx48DqxsZHv
 Yi0dfoPdmWHvID0sLp2lCrdZZzMkBVQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=BozRlNq8
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/2] iavf: fix ASQ command
 buffer leak on init failure
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:sudheer.mogilappagari@intel.com,m:netdev@vger.kernel.org,m:luoxuanqiang@kylinos.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,linux.dev:from_mime,linux.dev:email,linux.dev:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER(0.00)[xuanqiang.luo@linux.dev,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xuanqiang.luo@linux.dev,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 293E675BE5B


在 2026/7/15 15:24, Jagielski, Jedrzej 写道:
> From: xuanqiang.luo@linux.dev <xuanqiang.luo@linux.dev>
> Sent: Wednesday, July 15, 2026 8:12 AM
>
>> From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
>>
>> iavf_alloc_adminq_asq_ring() allocates cmd_buf before the remaining ASQ
>> resources. If iavf_alloc_asq_bufs() or iavf_config_asq_regs() fails, the
>> unwind path elides cmd_buf while freeing the other allocations.
>>
>> The ASQ count is not set until initialization succeeds, so the shutdown
>> path cannot reclaim the buffer. Free cmd_buf in the common unwind path.
>>
>> Fixes: d358aa9a7a2d ("i40evf: init code and hardware support")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
>> ---
>> drivers/net/ethernet/intel/iavf/iavf_adminq.c | 1 +
>> 1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
>> index 6937b7dd44cbb..82a32f8e78c12 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
>> @@ -346,6 +346,7 @@ static enum iavf_status iavf_init_asq(struct iavf_hw *hw)
>> 	iavf_free_virt_mem(hw, &hw->aq.asq.dma_head);
>>
>> init_adminq_free_rings:
>> +	iavf_free_virt_mem(hw, &hw->aq.asq.cmd_buf);
> Hi Xuanqiang
> much thanks for the patches!
>
> how about moving that line directly into iavf_free_adminq_asq()?
> then free func would be paired 1:1 with alloc func

Thanks for the suggestion!

I've addressed it and sent out v2.

>
>> 	iavf_free_adminq_asq(hw);
>>
>> init_adminq_exit:
>> -- 
>> 2.43.0
