Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id U2gUKNOj0mmJZQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 05 Apr 2026 20:02:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FDE39F40F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 05 Apr 2026 20:02:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D33FA80E4B;
	Sun,  5 Apr 2026 18:02:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OCs_ysLZllNj; Sun,  5 Apr 2026 18:02:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2652180E56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775412175;
	bh=PrRRlohMkhEjm7NaDXtzh23cyOb4HkxrX9liPqLiX3E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T37lOGjMA8H9v+yPtA4/smuyy7eKLy5tIgwIlZIAeC7iYJ/pqekJMRA3UAgqnSdvo
	 ZF+XPU8gT29euMWHCZEOG+NwHYmsjVUU7gvP2kXGWjx+HJA305e5AQ3hmWlnN0y405
	 2XFIV/JVoP32Ed+iqtMdb58OfvrUyVp3bnr4ItOID5dwxYlortV20PK9LsiMoLge9W
	 rARezgKH1VaCwVFmlMkA5jcLL4tNikbyWbNyZx4HX1PZcW8yUsnELNKK4a+3UmzOJz
	 t0JiqFU5lMxSVI5BGWvVJOU5JTb20NRvWldRshYw/KHyEtUvHSUHUYJZ+JC1UjTXI4
	 OQ3W+ZOfk+BTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2652180E56;
	Sun,  5 Apr 2026 18:02:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 21B011EB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2026 18:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0759880E42
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2026 18:02:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CdWBMQ4A6sHk for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Apr 2026 18:02:52 +0000 (UTC)
X-Greylist: delayed 3538 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 05 Apr 2026 18:02:51 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C6F7A80E40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6F7A80E40
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6F7A80E40
 for <intel-wired-lan@osuosl.org>; Sun,  5 Apr 2026 18:02:51 +0000 (UTC)
Received: from x1 (13.3.31.150.dy.iij4u.or.jp [150.31.3.13])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 635H3mkF047151
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 6 Apr 2026 02:03:49 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Mon, 6 Apr 2026 02:03:48 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Matt Vollrath <tactii@gmail.com>
Cc: intel-wired-lan@osuosl.org
Message-ID: <adKGaJoGMhivmgBC@x1>
References: <f8ffc8de-4b1b-40fd-8807-ee8687fa984f@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f8ffc8de-4b1b-40fd-8807-ee8687fa984f@gmail.com>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=PrRRlohMkhEjm7NaDXtzh23cyOb4HkxrX9liPqLiX3E=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1775408629; v=1;
 b=lsyjIF/uWEtM43pTbIUMIJwQOn8uZHA5QoRaGBHeL2d5FpT6scjch6x5AZqoMA0m
 Ze+qFzeGM000flpWjHHT+EwnIXDFonP/jYk8WOaLdbVZl4GTJXi/rffCSV5CNpqG
 OstZHhyuFLvLbPcAHalfHt6Zc/qdPE1WGPnTJ0UzzqNXvxI40bDYaaIeC/eDaDW/
 sZkzJNnvnTilPe5x3b+/H27hpcSXMLFWuHAUeno/ow0plkvDBN8/LRueS1who1eo
 PM+BaQaWXqMtHe0SNEay6NI8xiWAUfrqIWJIx95L8v/NqB+NPHEMimkpD3+wuw9I
 opWBBecJUhd3xWWYtfNQaw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=lsyjIF/u
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Cleanup PTP upon probe
 failure
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C3FDE39F40F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 04/04 11:19, Matt Vollrath wrote:
> Fix two conditions which would leak PTP registration on probe failure:
> 
> 1. i40e_setup_pf_switch can encounter an error in
>    i40e_setup_pf_filter_control, call i40e_ptp_init, then return
>    non-zero, sending i40e_probe to err_vsis.
> 
> 2. i40e_setup_misc_vector can return non-zero, sending i40e_probe to
>    err_vsis.
> 
> Found with coccinelle.
> 

Isn't a Fixes: tag needed?

> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 598739220dfb..dacdf5fad2ea 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16112,6 +16112,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* Unwind what we've done if something failed in the setup */
>  err_vsis:
>  	set_bit(__I40E_DOWN, pf->state);
> +	i40e_ptp_stop(pf);

Perhaps this is a separate issue from this one, but if i40e_probe()
fails and jumps to err_switch_setup, doesn't pf->ptp_pins leak?

Also, maybe because I'm not very familiar with this driver, I don't
understand why i40e_ptp_alloc_pins() is called this early, outside of
i40e_ptp_init(). It seems to make the error-path handling a bit more
complicated.

>  	i40e_clear_interrupt_scheme(pf);
>  	kfree(pf->vsi);
>  err_switch_setup:
> -- 
> 2.43.0

This diff seems mangled, and doesn't apply to my local trees.

Email header says:
  User-Agent: Mozilla Thunderbird
  ...
  Content-Type: text/plain; charset=UTF-8; format=flowed

It may be worth disabling format=flowed if you use Thunderbird.
See also: https://docs.kernel.org/process/email-clients.html
