Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHXBHlD3FWpxgQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 21:41:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C10F5DC13E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 21:41:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26E538207A;
	Tue, 26 May 2026 19:41:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nqjK-m_Budtf; Tue, 26 May 2026 19:40:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A47028207E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779824459;
	bh=3dc3s5FcGv5TWeqnsXrMMOMRbRrCCsMuvBGziG/wGiQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qPNO2XF/meKimPnOUGEFWjqS6NLBC1fwPe+hV80190GAA4qCVqFUZevjdrGNowkO/
	 XB4xkQI/8vwFnG3eoQsTPFvWv44OpNeXljvOit+1hL0jHjt5iKLNsDt0WF7z1o3uXG
	 2mgQq8m1cwStmD+/Eu6Iv2ixpDLNNDMKAJ7gzzkrRkrHGLpRFWF4newDaSS8oJyPbz
	 cpJuCfxWo1yYwYEIJ889pzHuB5iT89luSrDMzVyV2a3518fnQi9k7SiyrkGsXxlQTi
	 lwet5aRZWMkZC5S3l3xK2jnc0rwXq+hockj6XrKAy+2zc/yZUZPmbuKN/hvuRAvYSZ
	 lNpzLbiFpvdeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A47028207E;
	Tue, 26 May 2026 19:40:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 59905297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 19:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FA0640FC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 19:40:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eRfRS3ghg187 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 19:40:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 59D2340F79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59D2340F79
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59D2340F79
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 19:40:56 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id DCF2D60018;
 Tue, 26 May 2026 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A53231F000E9;
 Tue, 26 May 2026 19:40:52 +0000 (UTC)
Date: Tue, 26 May 2026 20:40:50 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260526194050.GC2256768@horms.kernel.org>
References: <20260522025702.1764129-1-aleksandr.loktionov@intel.com>
 <20260522025702.1764129-2-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260522025702.1764129-2-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779824453;
 bh=3dc3s5FcGv5TWeqnsXrMMOMRbRrCCsMuvBGziG/wGiQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=RInNDfHPD2F13iiBXuM2riLL4luuizpzpHuIIMCA+VQ5qip00sf7n+PbDrNZAfECb
 XOzErwmPBYnRivhowJTiOrxIHHvy7qydP/OOsyJET/rRa6J6vXDv7iVQRiUTz3T2Lu
 5+zN1G+dl+DjtCFIJWRg3f7mHTMqU4s8t/47XPQPvwbojeAQNC4EYMMpU/cqmo7+B+
 2t4N70AmhbPelQtIYzFaTDB51lIAyDOqxXAwMsQpuft3J3JuaHMR28wyNckXNZ6D6Q
 WBF9YHmX1VnZUpC093zsFGmqiCPZauViIpbpIP17jo7Kguz3+MFIHSi282jPgVQEST
 Lu+9RtCOrq/3w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=RInNDfHP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] iavf: log PF diagnostic
 message on cloud filter add failure
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,intel.com:email,sashiko.dev:url,osuosl.org:dkim];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5C10F5DC13E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 04:57:01AM +0200, Aleksandr Loktionov wrote:
> When the PF rejects a cloud filter add request it may include a
> diagnostic string in the virtchnl response. Use dev_info() to log it
> so operators can diagnose offload failures without enabling verbose
> tracing.
> 
> Use %.*s with an explicit length bound to avoid reading past the end of
> the message buffer when the PF fills all 4096 bytes and leaves no NUL
> terminator. Add the missing cloud_filter_list_lock around both the
> VIRTCHNL_OP_ADD_CLOUD_FILTER and VIRTCHNL_OP_DEL_CLOUD_FILTER error
> paths to close a pre-existing race against iavf_add_cloud_filter() and
> iavf_del_cloud_filter(). Apply the same %.*s fix to the equivalent
> VIRTCHNL_OP_ADD_FDIR_FILTER error path which carried the same bug.

This seems to be doing several things. So I would suggest it warrants
being split into several patches.

And, if they are fixes, some consideration should be given
to targeting iwl and including Fixes tags in the patches.

Partially flagged by: https://netdev-ai.bots.linux.dev/sashiko/


Also, the locking fix here is made to the error path,
but not the non-error path (v_retval == 0) where
the VIRTCHNL_OP_ADD_CLOUD_FILTER and VIRTCHNL_OP_DEL_CLOUD_FILTER cases
traverse and update  cloud_filter_list.

Flagged by https://sashiko.dev/


> Suggested-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c

...

> @@ -2434,8 +2443,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>  							       v_retval));
>  					iavf_print_fdir_fltr(adapter, fdir);
>  					if (msglen)
> -						dev_err(&adapter->pdev->dev,
> -							"%s\n", msg);
> +						dev_info(&adapter->pdev->dev,
> +							 "%.*s\n",
> +							 (int)msglen,
> +							 (const char *)msg);

As well as addressing the length of msg, ad described in the commit
message, this also changes the priority of the message from err to info.
This seems to be a separate change that is not mentioned in the commit
message.

Also flagged by: https://sashiko.dev/

>  					list_del(&fdir->list);
>  					iavf_dec_fdir_active_fltr(adapter, fdir);
>  					kfree(fdir);
