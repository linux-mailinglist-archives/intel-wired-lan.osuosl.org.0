Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ELdjKj4J3mlRmQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:30:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C08163F7EF2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 11:30:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CD6C429EB;
	Tue, 14 Apr 2026 09:30:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W5FR1WPExi_W; Tue, 14 Apr 2026 09:30:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B1FF4276C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776159035;
	bh=cQULRjvZ/T6bMWezD0wnW9hE8vXdgc+UvDKZnzX9mYc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S/B+VltqyeKeqAnm1oxlFkHAYadGlHzyYQAWdXsvdVVUATtyjfg+QJ3vHu9YfIScG
	 rNiJz03Y+sGVlpR1W6WI1T5KyZ8lFA1mk9PjgRap12qQiGL4l03LkHQwU6gmPS++Pd
	 Ipp39p4tI7lwwJKcZ7IZ1sYnil9nVKWZQHOSUdmCajmJWA/axByGld93TnkZHQjVOg
	 gjXep76gXdJ4/XD9GwFFHPYOzpUhchjFUlmYCqyMEiQ1AxPUazSBxg3pJ2wnA1BvV4
	 lkxWXlHIFh7oopwi9RezfnlzJTV6Cj81Da/S62aQsxzT4o5EhNbYbkmdQcHlyUqsBQ
	 sf1LBFCfTZDyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B1FF4276C;
	Tue, 14 Apr 2026 09:30:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B4EAA237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9167D84474
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5IpQuSkQ0rlV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 09:30:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CAC9F84006
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAC9F84006
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAC9F84006
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 09:30:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2D87942E53;
 Tue, 14 Apr 2026 09:30:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2CA6C19425;
 Tue, 14 Apr 2026 09:30:30 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 jacob.e.keller@intel.com
Date: Tue, 14 Apr 2026 10:30:21 +0100
Message-ID: <20260414093021.746323-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260410074921.1254213-6-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-6-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776159032;
 bh=1d1ygII+o1vZ67bX6XRT+CLhn9aYyYEagc5yedDHR/I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FLqMiZxfbmvEpM+PfQ6Ye7FyRFWBk/D7qrBJd/qo38jUB26k2gd7JI9P1LZyIXsLe
 O8q4NM/DFkoCfjtzDykbCgJNaajmaFK7H22Xi/evHnF3qIfORAFTwsLrlmffSzS8BU
 CvR0/sUDiOgG+4KV/OArt4uIA5FRgAR6h20c0cvU5W7DvqyuWwGaOA4/brTn4E0dAJ
 4tNmQCKhjIxsakiB6pz0UbGuBr6ToO6NSxxq/NtpWipGKdrL7187tM2EoR4Abk5tWf
 +ioCOYfNGkfvyeRbOv2B4PBuzw53p3FoWG6wuf9kwLDVtXt9SyLXvsBf0ua7y0V6AN
 CylUNfQZTHSpw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FLqMiZxf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/10] ice: improve Add/Update
 VSI error messages in ice_vsi_init()
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-0.996];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C08163F7EF2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: improve Add/Update VSI error messages in ice_vsi_init()

The error messages emitted when Add VSI or Update VSI Admin
Queue commands fail are missing the VSI index and the last AQ
error code. Add both to match the pattern used elsewhere in
the driver for AQ-command failures, which helps narrow down
firmware issues without requiring debug logs.

> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 689c6025ea82e..0e79d66959d4f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1320,14 +1320,18 @@ static int ice_vsi_init(struct ice_vsi *vsi, u32 vsi_flags)
>  	if (vsi_flags & ICE_VSI_FLAG_INIT) {
>  		ret = ice_add_vsi(hw, vsi->idx, ctxt, NULL);
>  		if (ret) {
> -			dev_err(dev, "Add VSI failed, err %d\n", ret);
> +			dev_err(dev, "Add VSI %d failed, err %d aq_err %s\n",
> +				vsi->idx, ret,
> +				libie_aq_str(hw->adminq.sq_last_status));

Will this print a misleading "aq_err OK" if ice_add_vsi() fails for software
reasons?

For instance, if devm_kzalloc() fails inside ice_add_vsi(), it calls
ice_aq_free_vsi() to clean up before returning -ENOMEM:

int ice_add_vsi(...)
{
	...
	tmp_vsi_ctx = devm_kzalloc(ice_hw_to_dev(hw), ...
	if (!tmp_vsi_ctx) {
		ice_aq_free_vsi(hw, vsi_ctx, false, cd);
		return -ENOMEM;
	}
	...
}

The successful ice_aq_free_vsi() call resets hw->adminq.sq_last_status to OK.
Since the log unconditionally prints sq_last_status, it will display the
-ENOMEM error alongside "aq_err OK".

Additionally, could reading hw->adminq.sq_last_status outside the Admin Queue
lock be racy? Could a concurrent AQ command overwrite the status before it
is printed?

>  			ret = -EIO;
>  			goto out;
>  		}
>  	} else {
>  		ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  		if (ret) {
> -			dev_err(dev, "Update VSI failed, err %d\n", ret);
> +			dev_err(dev, "Update VSI %d failed, err %d aq_err %s\n",
> +				vsi->idx, ret,
> +				libie_aq_str(hw->adminq.sq_last_status));

A similar situation applies here. If ice_update_vsi() returns early due to an
invalid VSI handle, it returns -EINVAL without executing an AQ command. This
would result in printing whatever AQ status was left behind from a previous
command.

>  			ret = -EIO;
>  			goto out;
>  		}
