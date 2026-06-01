Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NqaJ7dUHWqnYwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Jun 2026 11:45:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2491361CB27
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Jun 2026 11:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3D7142A46;
	Mon,  1 Jun 2026 09:45:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rSKdOXyZcDxO; Mon,  1 Jun 2026 09:45:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5883D42A47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780307124;
	bh=jZdzH2mt0j0Gi1mu/PuCl/BGUjh7MK1n/fFOwKUuyvE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=60ADfXNbOADLiK36VjkHjnHmrIhnkNlQHrbHVtYnPBZsOLYbELdqKvlm6jt4qwCxy
	 Vrbm9D3COoSAfYL7j9JSj/xh0YTsCCvDlZTgjrpsczhLeC/iiFpsJ2O2Phm+qM6cgQ
	 agooBcr+6OXqYPXAP+yIhQebanITWl0phL4d5LomSR3qnR26vzVhkteqpBp/tKsD6F
	 9BnTGvK7sKgdZIN87yDYYnq6tP62y/CEtVlvqoOfncUMNWJ7ccLBcaQnGxYhLYahWd
	 yNbAUUXc/j4l0+xf6CsCZMw2ayX2KSy/n4An8JK5H+D5lLwz20Ha8ObtpqwQZHepOn
	 ZWHdW6y3TOjKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5883D42A47;
	Mon,  1 Jun 2026 09:45:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D80B7257
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C970B4083C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:45:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id emTSuGEMZP_8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jun 2026 09:45:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D8F1C40825
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8F1C40825
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8F1C40825
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:45:21 +0000 (UTC)
X-CSE-ConnectionGUID: f5aFvZcwR2uZizkGB30ryQ==
X-CSE-MsgGUID: bhUwNb1FSLem6x3bpZyvXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80200920"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80200920"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:45:21 -0700
X-CSE-ConnectionGUID: E6yG66ftRvi6/K+HeqJKCg==
X-CSE-MsgGUID: BeD92rN9Tn6kVMq9VYNI5A==
X-ExtLoop1: 1
Received: from unknown (HELO [10.217.160.157]) ([10.217.160.157])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:45:20 -0700
Message-ID: <cf39b55c-f9f2-4944-9ca3-14c6a1bff7de@linux.intel.com>
Date: Mon, 1 Jun 2026 11:45:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Cc: netdev@vger.kernel.org
References: <20260527071842.11478-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260527071842.11478-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780307122; x=1811843122;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=l0Picw4fs18nY9Kv0T1KHBRrF4f6NuQCKc3xyRlXbls=;
 b=n1eo05PUO7xl5q8GAuWo/42ohkTRZG5qGRfSR1vN9lDE5D508SLQ+s/D
 MZCKJt1IAthy9VlkxMJ8kc5phk/Nsb/E5HTkXEo4qvq8oT06JR0y3myI6
 8RkxkbmHZu99RSCBOjKb7vo5BrrSMsH0j35e3+84FwO3/1O/xLlK1Nw4h
 lbtVGvCsGiZ+UY8t2QtXgR82blZ/yNoon7tjzLUGL7b0ZlxSXBxP0sxzx
 wp4Q8UnmI6Y3j1nHPBKkYAigfmwRfVkEFXttZuRxXYjFoyGzpDQytYpLf
 KHdUeEjm+6+FlkdP/PiJqROc7eOzXjcL3ly4E07hYYpOrj2AjlWlkc61j
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n1eo05PU
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: reject out-of-range
 ptype in ice_parser_profile_init
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,linux.intel.com:mid];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2491361CB27
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 27/05/2026 09:18, Aleksandr Loktionov wrote:
> set_bit(rslt->ptype, prof->ptypes) operates on a DECLARE_BITMAP of
> ICE_FLOW_PTYPE_MAX (1024) bits. Nothing prevents a malicious VF from
> providing ptype >= 1024 through VIRTCHNL, resulting in a write past
> the end of the bitmap and a kernel page fault.
> 
> Reproduced with a custom kernel module injecting a crafted
> VIRTCHNL_OP_ADD_RSS_CFG on E810-C QSFP (8086:1592),
> FW 4.91 0x800214af 1.3909.0, ICE COMMS DDP 1.3.53.0,
> kernel 7.1.0-rc1.
> 
> crash_parser: ice_parser_profile_init @ ffffffffc0d61b60
> crash_parser: setting ptype=0xffff (max valid=1023)
> crash_parser: calling ice_parser_profile_init -- expect OOB crash!
> BUG: kernel NULL pointer dereference, address: 0000000000000000
> #PF: supervisor write access in kernel mode
> #PF: error_code(0x0002) - not-present page
> Oops: Oops: 0002 [#1] SMP NOPTI
> CPU: 56 UID: 0 PID: 165011 Comm: insmod Kdump: loaded Tainted: G S U OE 7.1.0-rc1 #1
> Hardware name: Intel Corporation S2600BPB/S2600BPB
> RIP: 0010:ice_parser_profile_init+0x2d/0x1d0 [ice]
> Call Trace:
>  <TASK>
>  ? __pfx_ice_parser_profile_init+0x10/0x10 [ice]
>  crash_init+0x127/0xff0 [crash_parser]
>  do_one_initcall+0x45/0x310
>  do_init_module+0x64/0x270
>  init_module_from_file+0xcc/0xf0
>  idempotent_init_module+0x17b/0x280
>  __x64_sys_finit_module+0x6e/0xe0
> 
> Bail out early with -EINVAL when ptype is out of range.
> 
> Fixes: e312b3a1e209 ("ice: add API for parser profile initialization")
> Cc: stable@vger.kernel.org
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_parser.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> index f8e6963..3ede4c1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -2368,6 +2368,9 @@ int ice_parser_profile_init(struct ice_parser_result *rslt,
>  	u16 proto_off = 0;
>  	u16 off;
>  
> +	if (rslt->ptype >= ICE_FLOW_PTYPE_MAX)
> +		return -EINVAL;
> +
>  	memset(prof, 0, sizeof(*prof));
>  	set_bit(rslt->ptype, prof->ptypes);
>  	if (blk == ICE_BLK_SW) {

