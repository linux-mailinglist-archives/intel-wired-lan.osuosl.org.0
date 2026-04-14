Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBxhJBIB3mkRmAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 10:55:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED35E3F78E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 10:55:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BC4E61CF0;
	Tue, 14 Apr 2026 08:55:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F48yrVYsHGS1; Tue, 14 Apr 2026 08:55:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D13561CD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776156943;
	bh=rzFrTzoq0HnCZHcVlEeNBgHotPSPhdkKZmBWoRPrbOg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6UvQ4MmyMki3f9djBEgpaamXC5FKAQmmrNeRlDJFCKntvE0WhdKpaiO+MRVgGlkP7
	 5EWBJpUgNk5Lks0KM8rsk3N4naG/rq72wj93LcfG685i+VGCK7A3ZsS5ftZs8fCs1v
	 VV59ztb8cb1ZFIkBdeCVH5Ox6LOniaYMEyeOx8w5WTIb0EGXbl3MOQ5fxQvE5X7+pq
	 HB3o2KOSNM0j340I7VjO8nrasJkgDsmpWU287c56KTbk7tSnOCm+kvErM8DwADcOsd
	 zSUKhQeawn/2wpKifnUxR2Gtc6YbGeSPDrY8MGBS/MR5ACfcqbm6TYR1sLJVHJfOFd
	 DZaKKIQUtXjiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D13561CD9;
	Tue, 14 Apr 2026 08:55:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7063E283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 08:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6149A403B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 08:55:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ew8xyKjSTj3a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 08:55:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 66F9240191
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66F9240191
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66F9240191
 for <intel-wired-lan@osuosl.org>; Tue, 14 Apr 2026 08:55:39 +0000 (UTC)
X-CSE-ConnectionGUID: d+9770hPRLuuXx7to+YLZw==
X-CSE-MsgGUID: PZ+rTnQJTFO2NzzXwVA5AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="88186418"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="88186418"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 01:55:40 -0700
X-CSE-ConnectionGUID: rfAdmeYfT7OQFopcDKEkiA==
X-CSE-MsgGUID: Aoc23v+fREy3t9eodGYHEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="223535662"
Received: from avbakuno-mobl.ccr.corp.intel.com (HELO [10.246.16.61])
 ([10.246.16.61])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 01:55:37 -0700
Message-ID: <01cee873-23d7-43f5-96eb-29826d1c157c@linux.intel.com>
Date: Tue, 14 Apr 2026 10:55:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Vollrath <tactii@gmail.com>, intel-wired-lan@osuosl.org
Cc: stable@vger.kernel.org, Avigail Dahan <avigailx.dahan@intel.com>
References: <20260413000325.33379-1-tactii@gmail.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20260413000325.33379-1-tactii@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776156941; x=1807692941;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=kudLCTIITmlAZjTqgthhq39P8xFZprhHZarcmmvo6PU=;
 b=cWkG0Mt7cdFFEvQcCH004TenPRNAgqdAm3aPHelXIa6YTlN0O7cXaH8p
 +e9eeuIybEhuIkekaXSfKrJuDWe3iND6MAyA5ueTHLjo2XLI6trwe2XRh
 6QWaFQLFM3hOBDOdKsWWHzwZeE0KZcZtMmlS68aDPOtSu8181EiETRbt3
 bcG7TPsc0MpgBKd4zKi2M6FrtCZ6nBoL3n32wJENYYV0fsaPE5KuWfBlC
 QtmV5JubuHJqA0xrKZPT3t5McgCKbMJKDGhs4V/DpsyaXYMJNCgI+K/Ll
 u1gFQu08ikVXpmhY7ewdTkFRWcLqmX78+uGwmpBDQt6x0GjEYrHbZlRI0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cWkG0Mt7
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] e1000e: Unroll PTP in
 probe error handling
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,m:stable@vger.kernel.org,m:avigailx.dahan@intel.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,osuosl.org];
	FORGED_SENDER(0.00)[dawid.osuchowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linux.intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[dawid.osuchowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: ED35E3F78E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-04-13 2:03 AM, Matt Vollrath wrote:

Hey Matt,

Thanks for the patch!

Apologies but it seems I didn't explain fully where the changelog should 
go, same goes for the Cc: stable as it should be inserted into the 
commit msg as a tag, see example below.

> If probe fails after registering the PTP clock and its delayed work,
> these resources must be released.
> 
> This was not an issue until a 2016 fix moved the e1000e_ptp_init() call
> before the jump to err_register.
> 
> Fixes: aa524b66c5ef ("e1000e: don't modify SYSTIM registers during SIOCSHWTSTAMP ioctl")
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
> ---

Changelog should go _here_, not below the:

-- 
2.43.0

and should also have the --- afterwards. So using this patch submission 
as an example your commit msg + changelog should look like the following:

If probe fails after registering the PTP clock and its delayed work,
these resources must be released.

This was not an issue until a 2016 fix moved the e1000e_ptp_init() call
before the jump to err_register.

Fixes: aa524b66c5ef ("e1000e: don't modify SYSTIM registers during 
SIOCSHWTSTAMP ioctl")
Cc: stable@vger.kernel.org
Signed-off-by: Matt Vollrath <tactii@gmail.com>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
---
Changes:
v2:
* Apply the correct Fixes tag
* Target iwl-net
* Cc stable
---

  drivers/net/ethernet/intel/e1000e/netdev.c | 1 +
  1 file changed, 1 insertion(+)

<snip of the rest of the diff/>

Once again sorry for not saying it more clearly before.

Best regards
~Dawid
