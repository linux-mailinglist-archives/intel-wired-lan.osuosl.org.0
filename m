Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ft3H2MW3mlBmwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 12:26:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3293F8A8F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 12:26:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E42BD84C4A;
	Tue, 14 Apr 2026 10:26:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l0sJXbMep0vu; Tue, 14 Apr 2026 10:26:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A05E84C4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776162395;
	bh=2ev4oZo5c7FVy2ExGAdAKJZ12B02qtohm1jRvSVyc6Q=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8tffSg0c8pZAxX6SopvESNzRqZFHiCAFZ8350J+N93LVvvx0Q/2sOAjnK7qKTkOkK
	 m30QjhcyaLFAYK6ELo49BIGBWp8zYi3qB3hPvT/0XkiakSzYtaWyy05eA1c78lgD0G
	 ExcE9AVw+IeVPimT2MFAnuGUxXZmF9ifFNer1DZ1d56o+q/Vq1g9klXPGCmzz8JKrE
	 86MFLfmwS78ko5GmgX0IHNIcZbsQEafizqGgZq75MM+szCFBLHrlbYOuKKW6CadZd1
	 Xz1CgWkZ3TTGPc3L2IjSztBHkg5foZzjK+c9dPGNu7IwspFpAlhr+EbMGwd1QA/auG
	 AWkyJAyF1DYOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A05E84C4D;
	Tue, 14 Apr 2026 10:26:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BEB1F283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 10:26:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4E5584C01
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 10:26:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RXRt7ucTvX-U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 10:26:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A342584C17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A342584C17
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A342584C17
 for <intel-wired-lan@osuosl.org>; Tue, 14 Apr 2026 10:26:32 +0000 (UTC)
X-CSE-ConnectionGUID: TjXDVj42SAy+2X6LlC/jaA==
X-CSE-MsgGUID: Ne8piqzgTNmdHjMHnGXvOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="102571119"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="102571119"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 03:26:32 -0700
X-CSE-ConnectionGUID: n9zZ52jyRge4c+1ydhqnBQ==
X-CSE-MsgGUID: /5s86mPoRu+RAs9ZvIH8Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="253279076"
Received: from avbakuno-mobl.ccr.corp.intel.com (HELO [10.246.16.61])
 ([10.246.16.61])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 03:26:30 -0700
Message-ID: <9efe2c87-fbe4-4adc-ae15-7acb3c8fe26a@linux.intel.com>
Date: Tue, 14 Apr 2026 12:26:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Vollrath <tactii@gmail.com>, intel-wired-lan@osuosl.org
Cc: Kohei Enju <kohei@enjuk.jp>, stable@vger.kernel.org
References: <20260407161447.43645-1-tactii@gmail.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20260407161447.43645-1-tactii@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776162392; x=1807698392;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ryBPjDFBhZHxlXdVvV7eSlw6JpC9aOy6QBbU9DuWzSw=;
 b=ixmox4fm6bAW0XrgfqnU1QscvCAdIv06jYkqZW0MecYBCI5IEx6eFVgX
 mfxJE8yUlIfp7i9EDLFwPvyH0C3sViI1v6hjT06UPYHOWiG+ef3ObCdEq
 +08ueR1N7ZHD0flCitrtAgeY9lyXEDDet2BIh6hwVdBVUOR/FsAbcnKFf
 RzF+mzkHbzKpcpG8Mubdvw+ZWb/w4db1zadSoZY2CAu6Fwz6fukLIu+15
 VBDYSf6nOgdtxFgt7oz/3aKaIfgI4/3blrp8xR73VuNc1DGbA8l1zgN9I
 pk+FCggHosXNf6uYGx3M0QuWsYiGoby5rZM0ukXjyK9BMHuClm0d9BwaV
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ixmox4fm
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Cleanup PTP pins on
 probe failure
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,enjuk.jp:email];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,m:kohei@enjuk.jp,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,osuosl.org];
	FORGED_SENDER(0.00)[dawid.osuchowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[dawid.osuchowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8E3293F8A8F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-04-07 6:14 PM, Matt Vollrath wrote:
> PTP pin structs are allocated early in probe, but never cleaned up.
> 
> Fix this by calling i40e_ptp_free_pins in the error path.
> 
> To support this, i40e_ptp_free_pins is added to the header and
> pin_config is correctly nullified after being freed.
> 
> This has been an issue since i40e_ptp_alloc_pins was introduced.
> 
> Fixes: 1050713026a08 ("i40e: add support for PTP external synchronization clock")
> Reported-by: Kohei Enju <kohei@enjuk.jp>
> Cc: stable@vger.kernel.org
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---

Hey Matt,

I wrote a comment on your "[PATCH iwl-net v2] e1000e: Unroll PTP in 
probe error handling" submission about the changelog positioning and 
CCing stable.

For this patch right here I see the Cc: tag is added correctly to the 
commit msg body, but the changelog is inserted in the same way as in the 
submission I mentioned above.

Not a blocker by any means, but just wanted to let you know for future 
submissions to take this into account.

Thanks
~Dawid
