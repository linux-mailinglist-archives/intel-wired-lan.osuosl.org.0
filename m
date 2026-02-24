Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PaDDANynWmAQAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 10:40:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F585184C8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 10:40:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70A27819ED;
	Tue, 24 Feb 2026 09:40:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0KsdSOYvsR3G; Tue, 24 Feb 2026 09:40:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6BA281A15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771926015;
	bh=Naygvq3JDcsoh9FJZcKiSGe7AYZ8AZKBcLvgdvR6bG4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8T6XAzgHPgfkk6Kz03A+6lDOvIhphxrPzrqh5/sHKVnuhoKAzD6PZEF9ZETaDZ3u6
	 jzm9GmpS0kt37Mf5J31VZpCE+GgzLd4AuEW/sJM6VAuwNX4ABWIRrj+zcd2574S2QT
	 BowgnlOCE5siE3PjEf/8zB5EpCgis0nL+hSBwtMBKnOI7SO8MBas0ANAJ8poN567Ez
	 jDTnAHJUL9de4StgcY0Ss3wi36mbWwlC4Rpg7p+gTGQvN+p+Wvrh/PoYfzJqQ80vSm
	 WgUdjnCYuJJe8w7pFtaVaU5a8f7ai7VKMdKn+i93m6TNmnwkc9Lx6MjVjkFsM8gffx
	 TViEn2/KaHAaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6BA281A15;
	Tue, 24 Feb 2026 09:40:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 017CE1B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 09:40:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F344040656
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 09:40:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IaKFkj5kCfUW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 09:40:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4D1FF40654
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D1FF40654
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D1FF40654
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 09:40:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 605C36057A;
 Tue, 24 Feb 2026 09:40:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E778C116D0;
 Tue, 24 Feb 2026 09:40:08 +0000 (UTC)
Date: Tue, 24 Feb 2026 09:40:07 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <aZ1x9zwU77RJlKti@horms.kernel.org>
References: <20260223125157.819135-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223125157.819135-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771926010;
 bh=N+5C2uHwaPX2zVBtOgRhnM8WpLXGYOlGRM6SIgx9wSo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sBIdAcUOm+bfeBzKoSv7NA/F/la9TlpbClXLBOW/ATSmAvlto5kt4A9aoEXACaWXY
 i5nreYarSPqMwpKtIwAe94at5ItkbJxmXTbowPGnyK3D03b/y8pf1b0NbDPbkU9O3w
 Q0fvNr68kLjVaHLVA3gRqgUpcIH+N7Hu0++ISO3dfO0ih2PsUtbDebe4154ZtWdH2U
 UAKaqAff4/yM1QBvMUyXDbDon3ypUp4qlislzDBpFvsmU/bMr/tE3uUf2ejN/RzFXL
 +pQ9WxunOShKf0vj05ArkNQgyGC+OavjriP+snTS3NyovHyCyUaw7yYomqM43fEWnq
 /ez5ayFDJGZow==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sBIdAcUO
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: set max queues in
 alloc_etherdev_mqs()
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,intel.com:email,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2F585184C8D
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 01:51:57PM +0100, Michal Swiatkowski wrote:
> When allocating netdevice using alloc_etherdev_mqs() the maximum
> supported queues number should be passed. The vsi->alloc_txq/rxq is
> storing current number of queues, not the maximum ones.
> 
> Use the same function for getting max Tx and Rx queues which is used
> during ethtool -l call to set maximum number of queues during netdev
> allocation.
> 
> Reproduction steps:
> $ethtool -l $pf # says current 16, max 64
> $ethtool -S $pf # fine
> $ethtool -L $pf combined 40 # crash
> 
> [491187.472594] Call Trace:
> [491187.472829]  <TASK>
> [491187.473067]  netif_set_xps_queue+0x26/0x40
> [491187.473305]  ice_vsi_cfg_txq+0x265/0x3d0 [ice]
> [491187.473619]  ice_vsi_cfg_lan_txqs+0x68/0xa0 [ice]
> [491187.473918]  ice_vsi_cfg_lan+0x2b/0xa0 [ice]
> [491187.474202]  ice_vsi_open+0x71/0x170 [ice]
> [491187.474484]  ice_vsi_recfg_qs+0x17f/0x230 [ice]
> [491187.474759]  ? dev_get_min_mp_channel_count+0xab/0xd0
> [491187.474987]  ice_set_channels+0x185/0x3d0 [ice]
> [491187.475278]  ethnl_set_channels+0x26f/0x340
> 
> Fixes: ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

