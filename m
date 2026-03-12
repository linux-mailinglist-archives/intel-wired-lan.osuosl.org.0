Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDRCBiohs2m5SQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 21:25:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1F8279019
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 21:25:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 703AA80D2C;
	Thu, 12 Mar 2026 20:25:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DiHdrLTyag0K; Thu, 12 Mar 2026 20:25:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9BC880D23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773347109;
	bh=CqByXxbCnMahQkWrGxi0yd/pRwuCgGCy15m/4YAGk1o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gvuayh1Kw0mROElDjfuAKayc7tWpCklOZ6TwJEZuLmbP3Xw5Yf83R/4FNfg0uItI3
	 480eAg1L0S7q/tjrjuFpytDP3j7DIyT0SS6xP4EAzkhaN1FYmzyCXD4PxTEUc/ZI33
	 1VuoeNJdiRpP6R/zRkEPU17D/hjBkR5eiU+eqlKhGKKT996Rf9BJqUynJe/BxBm4S7
	 GBhdBSqHy80rEOWG+xpVyDEj/EmlQCLO6k2Bktrd2XDv1rlwZwV+QfEaRbNMom5EvX
	 EFKl6Oy899Vlk+sEadQxZpNZeScJ/P7e39fz/RcmPCuLTEGvxTG4DztEXnhWyzmA9C
	 V+qml9KYycrVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9BC880D23;
	Thu, 12 Mar 2026 20:25:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B9AC0201
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 20:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F74580D1F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 20:25:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0mUnu9lefl39 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2026 20:25:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B9C5880D1C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9C5880D1C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9C5880D1C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 20:25:05 +0000 (UTC)
X-CSE-ConnectionGUID: gk2SBuE4QOa3XfNQxQsqbw==
X-CSE-MsgGUID: S6t6aVx6REi8dAcYTRv8pQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="99914521"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="99914521"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 13:25:04 -0700
X-CSE-ConnectionGUID: jUu9CdF0Rq2aq3p88XhiPA==
X-CSE-MsgGUID: hcg14RDxRtqURhFS9LhKtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="220879530"
Received: from vancungl-mobl2.ccr.corp.intel.com (HELO [10.246.17.178])
 ([10.246.17.178])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 13:25:03 -0700
Message-ID: <de5cc621-7ff1-446f-9700-f342b0527fb0@linux.intel.com>
Date: Thu, 12 Mar 2026 21:24:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Chris Friesen <chris.friesen@windriver.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <04025549-91a4-47a8-b874-eaeb35a429bd@windriver.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <04025549-91a4-47a8-b874-eaeb35a429bd@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773347105; x=1804883105;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=0yO028AXoG9wz2jGWw7KMG8kJT7Lk4PIDx9846bBaug=;
 b=IwhpIt8vjNilBRA6u32JoJDrgoyHjOl03IKySbDSySmS6WBp1BiCWH5i
 II098qwxI8YFxQTdye+ijfEYLLvpJntKxd/rcwlXvs9S110sZOFUECAt4
 S9yBtf1DXlJbUbjG2qcyRaHTWFVqzKlPShfjTIh8vMmIMySWSsM0u4rVd
 QUFMU2F4fpqnU8kgggxZmzfFUhj3SoZoMpINgDREG/+MO0wmCvYhKSa5s
 5qaUVVJbx8M6LbElGiRNTEj9wVPQTpJG+2V0RUt6f6mX+Y/8HVONUEIYr
 +Z2R5R90I9Ee16/6R2RElkbzImRwEXPwSoMFBqAo7rR4KS6wPQdKGK8X8
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IwhpIt8v
Subject: Re: [Intel-wired-lan] is there a way other than PCI IDs to
 distinguish E810 from E825/E830?
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
X-Spamd-Result: default: False [0.39 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chris.friesen@windriver.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[dawid.osuchowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[dawid.osuchowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6A1F8279019
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-09 7:37 PM, Chris Friesen via Intel-wired-lan wrote:
> Hi,

Hello Chris,

Thank you for your message. Given I'm from the more customer facing wing 
I'll try to answer / guide you towards a path satisfactory for you. As 
Przemek pointed out this is a mailing list for the upstream / in-tree 
development side of things.

> I've got an odd issue.  We've got a request to use the in-tree ice 
> driver for the "legacy" NICs like the E810, and the out-of-tree ice 
> driver for the newer NICs associated with the Granite Rapids-D (E825/E830).

As Przemek noted, our general recommendation is not to mix drivers 
within the same system. That would mean using all in-tree drivers or all 
OOT drivers.

The following scenarios:

	1. all in-tree drivers (in-tree ice, in-tree iavf, in-tree irdma),
	2. all OOT drivers (OOT ice, OOT iavf, OOT irdma).

are supported and validated.

A configuration like (and any combination similar to it):
	* OOT ice, in-tree iavf, in-tree irdma

is not validated by Intel and certainly not recommended or supported. It 
might work, but we are unable to help in case you run into issues using 
such a setup.

> Is there any way to distinguish between these other than the PCI device 
> IDs?  I'd rather not need to maintain a list of devices and need to 
> update them every time a new NIC variant comes out.

I think I know what you are trying to do here, please correct me if I'm 
wrong.

You would like to pin a specific device like e.g. E810 to the in-tree 
driver and the E825/E830 to the OOT driver.

If that's the case, then I think the PCI device ID is the only option 
I'm afraid.

One question that popped into my mind is: what happens if e.g. you have 
both an E810 and an E825 present in the system? You cannot load two ice 
drivers (one in-tree, another OOT) at the same time.

> Thanks,
> 
> Chris

Side-note: Be aware that customer support folk do not usually monitor 
this mailing list (myself being an exception rather than the rule). If 
you want / need prompt updates and something you can share with your 
team / manager for tracking, please open a support thread using the 
established support processes (e.g. IPS [1]).

Best regards
Dawid

[1] 
https://www.intel.com/content/www/us/en/support/articles/000057045/ethernet-products.html
