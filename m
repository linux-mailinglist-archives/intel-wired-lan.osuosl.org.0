Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HFuEqudfWmYSwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 07:14:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B410CC0EF3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 07:14:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56A5283D82;
	Sat, 31 Jan 2026 06:14:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4dpMTRU4Y-FA; Sat, 31 Jan 2026 06:13:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6637E83DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769840039;
	bh=vpaHteD97DiVFaAs0Ate1NmbUcN7m/ErCU3DJJSYNzQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sHdLYOuLa9+ABRP2RsUx/gk2eqdmKtUJ/p8hWouT/jR0sh5FcYrBLmmVGOGQVXDua
	 wRqWdwzLOBFOv+ufA/0bD5splOZhmcppuWg19ZwBv4zolUvDR5GCuLBewgYEl1dLiV
	 Sqpmt6EDFDgXNoiR0pSoTeOu6pXfbr/2r6TWIruHXuT8qOXHDBplCD5wftq/0SeBPC
	 TUdK0dWlmsMOjwhoSD5hiJV/SZmv6/ouiBgBnjSqy3m5VbhsapZ5LEVvsjJ85e7s9m
	 +o0hbiALH9NgbZZ2IAjaQul23KtOitTCnmSflDQJiJyOqzW/7l3jwg3hZ3wycwc5lc
	 pvQixfN0A+S4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6637E83DBF;
	Sat, 31 Jan 2026 06:13:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A186D1E0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 06:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 900BF40860
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 06:13:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nTAQOp1Tg475 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 06:13:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 24CAB407D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24CAB407D3
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 24CAB407D3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 06:13:55 +0000 (UTC)
Received: from ms-a2 (248.212.13.160.dy.iij4u.or.jp [160.13.212.248])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 60V6D4tN072210
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 31 Jan 2026 15:13:05 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: lihaoxiang@isrc.iscas.ac.cn
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, bjorn@kernel.org,
 daniel@iogearbox.net, davem@davemloft.net, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 linux-kernel@vger.kernel.org, magnus.karlsson@intel.com,
 netdev@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, stable@vger.kernel.org
Date: Sat, 31 Jan 2026 06:12:12 +0000
Message-ID: <20260131061304.27368-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260131055217.729048-1-lihaoxiang@isrc.iscas.ac.cn>
References: <20260131055217.729048-1-lihaoxiang@isrc.iscas.ac.cn>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=vpaHteD97DiVFaAs0Ate1NmbUcN7m/ErCU3DJJSYNzQ=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1769839987; v=1;
 b=XBgenLn4wgnJ1zMAW/kbmMJyhALGrl1AWnKI5gzGzCR0l8i9KZbBLIDcu0tePkHc
 rOGF0PSUBXIVaYHmG/9n4d3faCODXk0AA2ogUrazk3Gzn+9EN0tWrhG+eOUTzLlK
 wpuUpzN6Xn3XtwUW29KXyLQ5JX0nTvYOAzgXSLHlEZ7Pw9vceAjcbwZyIX5/dLag
 95lbE4NuAlvETCjmWsU+yPEYbKa2gv5EwzWwbzu1LLdw/yxbCYuOo3yP/QmpnYi8
 H+tr4Wwf4t+WC0tytEuU9K04OYW/0QntG0I9yG3Lu1xE64Q6hieIvZjI4d+1FbQ9
 BKYHYasNAQrt8K6nJmEzRw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=XBgenLn4
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: add an error handling path in
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:lihaoxiang@isrc.iscas.ac.cn,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:bjorn@kernel.org,m:daniel@iogearbox.net,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:magnus.karlsson@intel.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.989];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B410CC0EF3
X-Rspamd-Action: no action

On Sat, 31 Jan 2026 13:52:17 +0800, Haoxiang Li wrote:

> In i40e_xsk_pool_enable(), add an error handling path to
> prevent potential memory leaks.
> 
> Fixes: 1742b3d52869 ("xsk: i40e: ice: ixgbe: mlx5: Pass buffer pool to driver instead of umem")
> Cc: stable@vger.kernel.org
> Signed-off-by: Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>
> ---
> Changes in v2:
> - Add a Fixes tag. Thanks, Paul!
> - Replace unmap with i40e_xsk_pool_disable() to prevent
> a limbo state of queues. Thanks, Maciej! 
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 9f47388eaba5..a72a309540c3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -108,23 +108,26 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
>  	if (if_running) {
>  		err = i40e_queue_pair_disable(vsi, qid);
>  		if (err)
> -			return err;
> +			goto err_out;
>  
>  		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
>  		if (err)
> -			return err;
> +			goto err_out;
>  
>  		err = i40e_queue_pair_enable(vsi, qid);
>  		if (err)
> -			return err;
> +			goto err_out;
>  
>  		/* Kick start the NAPI context so that receiving will start */
>  		err = i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX);
>  		if (err)
> -			return err;
> +			goto err_out;
>  	}
>  
>  	return 0;
> +
> +err_out:
> +	i40e_xsk_pool_disable(vsi, qid);

I think return err; is missing...

Also, since i40e_xsk_pool_disable is not declared before this line,
compilation fails due to a 'Call to undeclared function
i40e_xsk_pool_disable' error. Adding declaration or moving
i40e_xsk_pool_enable() after i40e_xsk_pool_disable() is needed.

>  }
>  
>  /**
> -- 
> 2.25.1
