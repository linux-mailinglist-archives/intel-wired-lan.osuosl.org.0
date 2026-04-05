Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHf3HJOu0mm6ZgcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 05 Apr 2026 20:48:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5810439F507
	for <lists+intel-wired-lan@lfdr.de>; Sun, 05 Apr 2026 20:48:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F413D407C7;
	Sun,  5 Apr 2026 18:48:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VD_V522mrVfn; Sun,  5 Apr 2026 18:48:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F53B4080E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775414925;
	bh=d0m/uSUpZ4dD0X+/7W9eQ9TTrjWvnwv1/3y5kplZ7gI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yw10QEUUHqHPe+ltU86kmKnmAlDTt8lmBxsTlGBsSRq8I6FaN7XKI6SBL/citHH1w
	 v95wX9M16rCribqnjSguyoaCtQgE/UGocHUPktyjTKa0GPwxtgiAWaQzzViFC26/Af
	 rv4G7YT/IzKoEOYd54FOwQ1wbUyBIwfyatcAgeLvaD8wLibjPZL9IhIGQC9SC7JVGW
	 H1GNUCWt6R0o0lVNyui/8cjeAD+78fAWQw7zAAeLXxQ9aQfV+AcBdV7putFo1X5axM
	 Qlmf9uFcXmiVL5g1Wgzpl7hGWMw5NSnyjO+dXjz56L7rjmIdQSWOugqtJoedyFTUu8
	 ZGkMdsPnTMJtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F53B4080E;
	Sun,  5 Apr 2026 18:48:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 276672EF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2026 18:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24CA440095
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2026 18:48:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NP2wpMr-qMkK for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Apr 2026 18:48:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3FD154006E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FD154006E
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FD154006E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2026 18:48:41 +0000 (UTC)
Received: from x1 (13.3.31.150.dy.iij4u.or.jp [150.31.3.13])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 635Im9t1020855
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 6 Apr 2026 03:48:10 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Mon, 6 Apr 2026 03:48:09 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Aaron Ma <aaron.ma@canonical.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <adKr6gLrkL9TGimW@x1>
References: <20260402024220.210466-1-aaron.ma@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260402024220.210466-1-aaron.ma@canonical.com>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=d0m/uSUpZ4dD0X+/7W9eQ9TTrjWvnwv1/3y5kplZ7gI=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1775414890; v=1;
 b=bR4vDQAON069DCBuPJt/JmmvOJNWItx17AaDhUEi0qRxG0wZ+Pkq5h92ALAZEZJz
 zq0QdsondLNMACcqc1aOvseBkboSqI6yq2OnQI8Eqls1amAB3Q2AdV+ALVArGHt7
 ZI9aUPP+GE3du892uBTWFsSyhHrNz5j7Cq5y+q3mTpfFBTvkXZ+Q4l3kdBW37lbA
 mgU2nrR5PAizp93ZXRsN8LwuPHVhQIERDfGpv1i6RgFfkOwl8v1vOmI7vvZysIga
 Vq1MDbmUU5bRNd0IEs02hMmMRIl0CjHkDBs/Kwj9eE7l/KGlTgo1nof6MjsqB1gt
 pXsH5aTQktwSxxyJxiG1yQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=bR4vDQAO
Subject: Re: [Intel-wired-lan] [PATCH] ice: wait for reset completion in
 ice_resume()
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aaron.ma@canonical.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5810439F507
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 04/02 10:42, Aaron Ma via Intel-wired-lan wrote:
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 3c36e3641b9e9..a029c247510fd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5702,6 +5702,16 @@ static int ice_resume(struct device *dev)
>  	/* Restart the service task */
>  	mod_timer(&pf->serv_tmr, round_jiffies(jiffies + pf->serv_tmr_period));
>  
> +	/* Wait for the scheduled reset to finish so that the device is fully
> +	 * operational before returning. Without this, userspace (e.g.
> +	 * NetworkManager) may try to open the net device while the
> +	 * asynchronous reset and rebuild is still in progress, resulting in
> +	 * "can't open net device while reset is in progress" errors.
> +	 */

nit:
IIUC, this change is best-effort, since ice_resume() still returns
success even if ice_wait_for_reset() fails. If so, the new comment may
be better phrased to reflect that.

Otherwise, it looks good to me.

