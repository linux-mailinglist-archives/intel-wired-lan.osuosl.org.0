Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHSROm2pfWlZTAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 08:04:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E27C1089
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Jan 2026 08:04:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 355A460B0A;
	Sat, 31 Jan 2026 07:04:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9YWV99m0GWRb; Sat, 31 Jan 2026 07:04:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95CC460AF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769843050;
	bh=9+22T3qAILLWnarXKk2rk2jH9okIYXXwV2PNBFUkk50=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TJtqYv6gyznBhV3EXdelDO0KpiDnc/UAli2F7TI4/bPWaNbZOX2X1ZboZqjk/DEnz
	 CxQytSxwPwUzTAnRM+vNTcm5tpoEBWUgbc8ycgySioWrON/MshswEkpPQLHkIze09B
	 onhj1Aog2X66gy+HJhDdEiP2XvHg7ENohAT2Eo34EHbZHEZJlgs9zYe41cKUcBQD/y
	 hxoX+BsFFNVgzpxaq+InFCRboGYH86dI3ABs6gg2FKYPTRpkYBskFojs7Sg6fom8aa
	 U++w6Jj9qYejIuMIG6gTRWE4a7IDwqciTwP5Z07Bvk1oLABIqh8P6Rw6+j+b3lRNVS
	 d5dwurjt2mhNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95CC460AF2;
	Sat, 31 Jan 2026 07:04:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C53681F6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 07:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A075783C1C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 07:04:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JOeYUE-88zhc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Jan 2026 07:04:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B94DE83C15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B94DE83C15
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B94DE83C15
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Jan 2026 07:04:07 +0000 (UTC)
Received: from ms-a2 (248.212.13.160.dy.iij4u.or.jp [160.13.212.248])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 60V73ZSS013433
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 31 Jan 2026 16:03:36 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: kohei@enjuk.jp
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, bjorn@kernel.org,
 daniel@iogearbox.net, davem@davemloft.net, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 lihaoxiang@isrc.iscas.ac.cn, linux-kernel@vger.kernel.org,
 magnus.karlsson@intel.com, netdev@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, stable@vger.kernel.org
Date: Sat, 31 Jan 2026 07:02:38 +0000
Message-ID: <20260131070335.38303-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260131061304.27368-1-kohei@enjuk.jp>
References: <20260131061304.27368-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=9+22T3qAILLWnarXKk2rk2jH9okIYXXwV2PNBFUkk50=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1769843017; v=1;
 b=DFLkZzagAsrFRi53NMETPhbWhcFfg4o9hcQnuMUXLA+1j4H5WwvOjBmv9eykxz5T
 jW4UkQWDIv0yMUtX7cCJmimqaWrj4WIBnkAI92WdByrBv4TyXcH8m9t10KgRqlPZ
 gehnhZxXZZGTayYdVsFSyM1NRhDOFiHR4/lSqYNWNjwhiytG9SSnXes38QxL7qDS
 obF5Rs+DGcWrwMzi+cR8+pBgExZOKFVCiSP2D/2wELUankdMn2dKpSDiLbQQEFls
 1dQlmUkmdZG0t+sMc+C3AqruS/u9w9a7hT4mBomgbSaG7+5EheuasQ4ZAW//4dQU
 ofR8nH7F98rogpqaFEHOLg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=DFLkZzag
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:bjorn@kernel.org,m:daniel@iogearbox.net,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:lihaoxiang@isrc.iscas.ac.cn,m:linux-kernel@vger.kernel.org,m:magnus.karlsson@intel.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,enjuk.jp:mid,iscas.ac.cn:email,osuosl.org:dkim];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.990];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: F1E27C1089
X-Rspamd-Action: no action

On Sat, 31 Jan 2026 06:12:12 +0000, Kohei Enju wrote:

> On Sat, 31 Jan 2026 13:52:17 +0800, Haoxiang Li wrote:
> 
> > In i40e_xsk_pool_enable(), add an error handling path to
> > prevent potential memory leaks.
> > 
> > Fixes: 1742b3d52869 ("xsk: i40e: ice: ixgbe: mlx5: Pass buffer pool to driver instead of umem")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Haoxiang Li <lihaoxiang@isrc.iscas.ac.cn>
> > ---
> > Changes in v2:
> > - Add a Fixes tag. Thanks, Paul!
> > - Replace unmap with i40e_xsk_pool_disable() to prevent
> > a limbo state of queues. Thanks, Maciej! 
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 11 +++++++----
> >  1 file changed, 7 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index 9f47388eaba5..a72a309540c3 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -108,23 +108,26 @@ static int i40e_xsk_pool_enable(struct i40e_vsi *vsi,
> >  	if (if_running) {
> >  		err = i40e_queue_pair_disable(vsi, qid);
> >  		if (err)
> > -			return err;
> > +			goto err_out;
> >  
> >  		err = i40e_realloc_rx_xdp_bi(vsi->rx_rings[qid], true);
> >  		if (err)
> > -			return err;
> > +			goto err_out;
> >  
> >  		err = i40e_queue_pair_enable(vsi, qid);
> >  		if (err)
> > -			return err;
> > +			goto err_out;
> >  
> >  		/* Kick start the NAPI context so that receiving will start */
> >  		err = i40e_xsk_wakeup(vsi->netdev, qid, XDP_WAKEUP_RX);
> >  		if (err)
> > -			return err;
> > +			goto err_out;
> >  	}
> >  
> >  	return 0;
> > +
> > +err_out:
> > +	i40e_xsk_pool_disable(vsi, qid);
> 
> I think return err; is missing...
> 
> Also, since i40e_xsk_pool_disable is not declared before this line,
> compilation fails due to a 'Call to undeclared function
> i40e_xsk_pool_disable' error. Adding declaration or moving
> i40e_xsk_pool_enable() after i40e_xsk_pool_disable() is needed.

After skimming the code, I think i40e_xsk_pool_disable() can fail in
this error path, right? 

Let's assume a scenario that i40e_queue_pair_disable() succeeds but
i40e_realloc_rx_xdp_bi() fails in i40e_xsk_pool_enable(). 
At this point, i40e_enter_busy_conf() called by
i40e_queue_pair_disable() has set __I40E_CONFIG_BUSY state.

Then the err_out: path is executed and i40e_xsk_pool_disable() tries to
call i40e_queue_pair_disable() when if_running.
In this case, i40e_enter_busy_conf() fails because __I40E_CONFIG_BUSY is
set, and finally xsk_pool_dma_unmap() isn't called.

Do you have any thoughts on how to handle this case?

Thanks.

> 
> >  }
> >  
> >  /**
> > -- 
> > 2.25.1
