Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i2ZJA75VV2r7JwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 11:41:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7880375C9CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 11:41:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=AR6FPDhX;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=linux.dev (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0570640650;
	Wed, 15 Jul 2026 09:41:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rj63J0SEjJjA; Wed, 15 Jul 2026 09:41:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70473406A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784108475;
	bh=9pLf70bhIsBjYYAuXnkUf9IaSpfzFW1UY6uqtiFu0Cc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AR6FPDhXyMcTCusoFyoz4uRu+JCjeqXHL/h/lihjFN7Y+x/abzLuanmstoplMYFZp
	 q97tSAkg+XqJq5Vny86lO2Okdst+mux06oMTm9IweSeBXY72v0ctYgS5y+VBZQuQ/l
	 UIdbL8SIpuo38kq07APOB2vPecXt3ujURyJi0QnL+E/hvMKQ6FkuHF+KS+Wbk+Ha4j
	 4EGQYKMaC16iulQsK95VlNRLEIvNYe+kME/1FOMd/PtbS23fZXr6gqpfsA9AFmYJXZ
	 SgUJqCyBZDlhrrhvRN6N6fu8uOQT8/f7SWsZKvorxlIYHiGXS+86TfVep8GUHVGxuP
	 9ovwgzpcJA8Mg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70473406A2;
	Wed, 15 Jul 2026 09:41:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 95F7D150
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 09:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 872A580D84
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 09:41:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aQevNNZ5sAj7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 09:41:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.218.175.181;
 helo=out-181.mta0.migadu.com; envelope-from=xuanqiang.luo@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E3AD780D83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3AD780D83
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com
 [91.218.175.181])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E3AD780D83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 09:41:07 +0000 (UTC)
Message-ID: <b2b2a0df-2164-44a5-a7a1-e7cecf1f7b86@linux.dev>
Date: Wed, 15 Jul 2026 17:40:01 +0800
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
References: <20260715082548.56687-1-xuanqiang.luo@linux.dev>
 <20260715082548.56687-2-xuanqiang.luo@linux.dev>
 <MW4PR11MB5890DCEED74E887ACBC9161AF0F82@MW4PR11MB5890.namprd11.prod.outlook.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: luoxuanqiang <xuanqiang.luo@linux.dev>
In-Reply-To: <MW4PR11MB5890DCEED74E887ACBC9161AF0F82@MW4PR11MB5890.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1784108461;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9pLf70bhIsBjYYAuXnkUf9IaSpfzFW1UY6uqtiFu0Cc=;
 b=pishA9GCA8WBAZW7KVKBT0Ofny9G+wF+WswAd6T6SRV3HSSZjsheVlF3H3Te2smds2jHX7
 d/3Irf3H7Z+CbcsQkijkkvpR7n9cEU4Yig7ZGAITVMkmWtTTqnY6hmhogBKQQB+hmZqOLT
 wZr6Gu+f84lxn/AB67o0IehsNJdxmPI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=pishA9GC
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] iavf: fix ASQ command
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:sudheer.mogilappagari@intel.com,m:netdev@vger.kernel.org,m:luoxuanqiang@kylinos.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:from_mime,linux.dev:email,linux.dev:mid,osuosl.org:from_smtp,osuosl.org:dkim,intel.com:email];
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
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7880375C9CB


在 2026/7/15 17:28, Jagielski, Jedrzej 写道:
> From: xuanqiang.luo@linux.dev <xuanqiang.luo@linux.dev>
> Sent: Wednesday, July 15, 2026 10:26 AM
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
>> index 6937b7dd44cbb..40f76f9507f4b 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
>> @@ -60,6 +60,7 @@ static enum iavf_status iavf_alloc_adminq_arq_ring(struct iavf_hw *hw)
>>   **/
>> static void iavf_free_adminq_asq(struct iavf_hw *hw)
>> {
>> +	iavf_free_virt_mem(hw, &hw->aq.asq.cmd_buf);
>> 	iavf_free_dma_mem(hw, &hw->aq.asq.desc_buf);
>> }
>>
>> -- 
>> 2.43.0
> Looks fine, thanks!
>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>
> One note for the future - please be aware that there is minimal time period to be
> waited before resubmitting new patch revision, which is at least 24h for netdev/IWL
> mailing lists

Thanks for the reminder!

I also received a notification from netdev-bot, and I'll keep this in
mind for future revisions.

