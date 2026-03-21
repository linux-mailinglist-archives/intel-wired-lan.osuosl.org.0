Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEP3EE9ivmnDOAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 10:18:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B38672E4562
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 10:18:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DC92612F1;
	Sat, 21 Mar 2026 09:18:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LHCaJBhl_kUZ; Sat, 21 Mar 2026 09:18:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D08F612ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774084684;
	bh=nBC8V2iTU1XkJSJcD9DqT6FEejB6eDAI0LxnistceK8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GUOsp9iv2abAD3s4BqDiMgjl0MRrhQlNazN22V2B1e5az3LD8dfRffdWq/L3tCBv4
	 s+TLzcGnunyqPHPb8c3J6Ca1cF/DP0f22M44uA26x+0k4wPUhrP7GjutErSy+TgPW+
	 TYGrd8iNg4JBG2qYj8IkNunKVEaJGgMXq6m+VCOeLAibF6dnejmkV6pQPdK0Jg9xJL
	 18m82tRUSIORp4/yDFnBQWKhZLoqWUezk7puh3p9Jsu/PY2oc85cg2UsK+CTLWY9VH
	 hxP2iIQYcI6G9bql6OoQvRc5IDqg8noW7xI4y/NnFpZsR8c0dZki1KuebzZxCNlZBp
	 Ih3zSmSuhvvlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D08F612ED;
	Sat, 21 Mar 2026 09:18:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 86F7534C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 09:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C27A8258D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 09:18:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AdT2VUUA_qCF for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Mar 2026 09:18:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 720DF82572
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 720DF82572
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 720DF82572
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 09:18:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BEE5860054;
 Sat, 21 Mar 2026 09:18:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81CFDC19421;
 Sat, 21 Mar 2026 09:17:56 +0000 (UTC)
Date: Sat, 21 Mar 2026 09:17:53 +0000
From: Simon Horman <horms@kernel.org>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Cc: daniel@iogearbox.net, ast@kernel.org, willemb@google.com,
 stable@vger.kernel.org, decot@google.com, bpf@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org, edumazet@google.com,
 netdev@vger.kernel.org, pabeni@redhat.com, andrew+netdev@lunn.ch,
 kuba@kernel.org, davem@davemloft.net, sdf@fomichev.me,
 aleksandr.loktionov@intel.com, aleksander.lobakin@intel.com,
 john.fastabend@gmail.com, hawk@kernel.org
Message-ID: <20260321091753.GT74886@horms.kernel.org>
References: <20260319224159.23885-1-emil.s.tantilov@intel.com>
 <20260320174843.137651-1-horms@kernel.org>
 <0275cffc-7a61-46fb-9d1e-c309ac680b80@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0275cffc-7a61-46fb-9d1e-c309ac680b80@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774084680;
 bh=oa4pCeGObUtEmfpti4pdZQ10bKk+YYr47M7vQbAVYYM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ck5quWWHUFYlP4Evri1ddtI3Hvyf3AKxDDkWR6oOf/vzlL40QEX/GODXybpTmPHN+
 zcBgNvuS/Q1b28wywTWhz5gKRLcKnATDnYif0RlLD6HD9sc8rm3ypfQP5bQM3ZYZXQ
 4Wphk8whbbg3E6vpPI8bQYCk5jVyRlIYCYIfMKZ4RUIeB8phnDfydVpe+G0xQ+UF13
 iuC3mBBFCZTCqY81qOaQqPAhsswpIAXMJlUYzevmnLcmWzofwLmRfK2Pm2OaZEBCCt
 xGl+23YrSMocPQjJdoxpKPDxdO5trFINJU2Cj9T8mc1GLJWs4opNpReHEzTGJdOpj3
 MJejaBfjs3cJA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ck5quWWH
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix xdp crash in
 soft reset error path
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
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[iogearbox.net,kernel.org,google.com,vger.kernel.org,intel.com,lists.osuosl.org,redhat.com,lunn.ch,davemloft.net,fomichev.me,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,osuosl.org:dkim,linux.dev:url,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:daniel@iogearbox.net,m:ast@kernel.org,m:willemb@google.com,m:stable@vger.kernel.org,m:decot@google.com,m:bpf@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:aleksander.lobakin@intel.com,m:john.fastabend@gmail.com,m:hawk@kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B38672E4562
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 02:35:42PM -0700, Tantilov, Emil S wrote:
> 
> 
> On 3/20/2026 10:48 AM, Simon Horman wrote:
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > 
> > For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
> > ---
> > idpf: fix xdp crash in soft reset error path
> > 
> > This commit fixes a NULL pointer dereference that occurs when
> > idpf_vport_open() fails during soft reset. The fix restores
> > vport->xdp_prog in the error path and updates the restart check in
> > idpf_xsk_pool_setup() to use IDPF_VPORT_UP instead of netif_running().
> > 
> > > Fixes: 3d57b2c00f09 ("idpf: add XSk pool initialization")
> > 
> > The Fixes: tag may not be targeting the correct commit. The primary bug
> > being fixed is the NULL pointer dereference crash in idpf_xdp_setup_prog()
> > that occurs when soft reset fails and vport->xdp_prog is not restored.
> 
> This is not exactly true, this is just one of the instances that would
> cause idpf_qp_switch() to be called. [1]
> 
> > 
> > Looking at the git history, this missing restoration was introduced in
> > commit 705457e7211f ("idpf: implement XDP_SETUP_PROG in ndo_bpf for
> > splitq"), where idpf_xdp_setup_prog() was first implemented. While commit
> > 3d57b2c00f09 introduced the secondary issue with the netif_running()
> > check, the main crash fix addresses code from commit 705457e7211f.
> > 
> > Should the Fixes: tag point to commit 705457e7211f instead?
> 
> The reason I chose commit 3d57b2c00f09 is because it is the commit
> introducing the function where the crash is occurring:
> [ 3179.284770] RIP: 0010:idpf_find_rxq_vec+0x17/0x30 [idpf]
> ...
> [ 3179.291937] Call Trace:
> [ 3179.292392]  <TASK>
> [ 3179.292843]  idpf_qp_switch+0x25/0x820 [idpf]
> 
> The setting of the restart variable is where the above commits "meet",
> in that both conditions - netif_ruinning() and idpf_xdp_enabled() [1]
> can be wrong:
> https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/tree/drivers/net/ethernet/intel/idpf/xsk.c#n571
> 
> which would end up calling idpf_qp_switch() instead of taking the
> alternate path:
> 	restart = idpf_xdp_enabled(vport) && netif_running(vport->netdev);
> 	if (!restart)
> 		goto pool;
> 
> Which was introduced by 3d57b2c00f09.

Thanks for the clarification.
I agree that using 3d57b2c00f09 makes sense.

...
