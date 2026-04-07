Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDSZHnPR1GlJxwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 11:42:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 633DB3AC375
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 11:42:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BE3360B2D;
	Tue,  7 Apr 2026 09:42:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WYEU6IL00o_7; Tue,  7 Apr 2026 09:42:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FA8460AF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775554926;
	bh=BoDm839H/Q58bGECHehVlrshxSnz5Cz0VPkDCVLAodk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Wq7RTP4dztlx7IAlYzsiTPQfy/Jp4+pLJPILvjW2PXt4m3bF0ATBOAQrwu10AY9L
	 FMdSFPjbqKIw0BUIdHjKtLhRZW5all4pSRVwho6S5GgIVL/AZ7+JAG1Oo7gkZ+0BKn
	 lxxcPy3K+mGwSACuTV0qcn0JPTYwoL3iB7FSMlkMu6AcZK/4sFzoYf3ugTobH8o1MP
	 aJIkF+TYPmltsBOuNvHy5S9XAE+DbJBRSXeRRaHo5b9x1lfsQYwtWVjw7Aj6IYyORC
	 YjAEFIvy+to3KFl0RRFb3CvnrIdk7HuGZ66RYC+BkZq5iWhNcIx633U8E92CgSPS43
	 ZlOwOjyBlWDwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FA8460AF3;
	Tue,  7 Apr 2026 09:42:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C87A1F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 09:42:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E4B140092
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 09:42:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7F7U4R_E5qRR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2026 09:42:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=dawid.osuchowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0323C4005F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0323C4005F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0323C4005F
 for <intel-wired-lan@osuosl.org>; Tue,  7 Apr 2026 09:42:03 +0000 (UTC)
X-CSE-ConnectionGUID: SpkS3gHUSQSS17oiENZxEg==
X-CSE-MsgGUID: 41WMgouWRuyobQOr6Dry1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="94094799"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="94094799"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 02:42:03 -0700
X-CSE-ConnectionGUID: qVVE2tutQCCHR2WOpTIRKw==
X-CSE-MsgGUID: oDQvn7OsQfedl2wz/5etgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="232997366"
Received: from soc-5cg4396xfb.clients.intel.com (HELO [172.28.180.189])
 ([172.28.180.189])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 02:42:02 -0700
Message-ID: <eb1f3edf-5a61-4b29-a51f-17a5f9c35d2e@linux.intel.com>
Date: Tue, 7 Apr 2026 11:42:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matt Vollrath <tactii@gmail.com>, intel-wired-lan@osuosl.org
References: <20260406005830.2250373-2-tactii@gmail.com>
Content-Language: pl, en-US
From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20260406005830.2250373-2-tactii@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775554924; x=1807090924;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=f1ta2mGZqayfd3iUogVxp13Rn3KjkuNaoZO9FhCk+Mk=;
 b=cusKeDRnMI+JtCoAHwttvBfnq+MQGf7EENT0mk2JfZ2yBdgi5rDC6klG
 GObp2stH4DHl+yGSjVYsiT5v70Uqo/72anLke8iKXhT42cI66DZ9buPAS
 jijy58f3zsCbH77YQ2lyVXeqhQgYXry9aYuKR0HxHVPF44ZrI6b888iir
 VGP+0PmcFB3SRtwCBpgNtD70SHPJunPPxQRNAWaNeCPOQWof0y6hff+/V
 om8pq9ivcERLiNBLYkAu2AysgCi6BHwQwdR2LF1EI5TYjfy5cXKUa4FUU
 BtdgPDs/QOwgEmChSUSTihJ+l4ymcmQmqDWnhDy5yhE5/5zPWeT53IGc7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cusKeDRn
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Cleanup PTP registration
 on probe failure
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FREEMAIL_TO(0.00)[gmail.com,osuosl.org];
	FORGED_SENDER(0.00)[dawid.osuchowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[dawid.osuchowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 633DB3AC375
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-04-06 2:58 AM, Matt Vollrath wrote:

Hey Matt,

Thanks for the patch!

> Fix two conditions which would leak PTP registration on probe failure:
> 
> 1. i40e_setup_pf_switch can encounter an error in
>     i40e_setup_pf_filter_control, call i40e_ptp_init, then return
>     non-zero, sending i40e_probe to err_vsis.
> 
> 2. i40e_setup_misc_vector can return non-zero, sending i40e_probe to
>     err_vsis.
> 
> Both of these conditions have been present since PTP was introduced in
> this driver.
> 
> Found with coccinelle.
> 
> Fixes: beb0dff1251db ("i40e: enable PTP")
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---

In the future when sending to Intel-wired-lan (IWL) you should use 
either the iwl-net or iwl-next as the target tree, example based on this 
patch:
	[PATCH iwl-net v2] i40e: Cleanup PTP registration on probe failure

iwl-net is for fixes (such as this patch), iwl-next for new features / 
refactors that don't need to be backported to stable kernels.

Given this is a fix you could also add in the commit msg:
	Cc: stable@vger.kernel.org

that way it will be automatically picked up for backporting to currently 
maintained stable kernel versions by the -stable maintainers [1].

For future submissions, if you send a v2/v3/vX... you should put a 
changelog here of what has changed w.r.t. the previous revision. An 
example in this case:

v2:
* add Fixes tag
* change name of patch:
	i40e: Cleanup PTP upon probe failure -> i40e: Cleanup PTP registration 
on probe failure

The important bit is to do include the changelog below the '---', that 
way it will be disregarded by e.g. 'git am' and won't pollute the commit 
msg. Changelog is for reviewers only to quickly assess what to look for 
/ what has changed :)

>   drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 926d001b2150..f3de147aaddf 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16109,6 +16109,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	/* Unwind what we've done if something failed in the setup */
>   err_vsis:
>   	set_bit(__I40E_DOWN, pf->state);
> +	i40e_ptp_stop(pf);

As for the change itself I'm not a PTP expert but will try to ping 
someone internally to review your patch.

Thanks
~Dawid

[1] https://docs.kernel.org/process/stable-kernel-rules.html#option-1

>   	i40e_clear_interrupt_scheme(pf);
>   	kfree(pf->vsi);
>   err_switch_setup:

