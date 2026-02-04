Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBYCJqAfg2nWhwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 11:29:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EEEE4810
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 11:29:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAE13606AA;
	Wed,  4 Feb 2026 10:29:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nx1oFCEthc0q; Wed,  4 Feb 2026 10:29:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E249A60A89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770200990;
	bh=LSzzOC7CskprS16p2UJfaq2VcAqlVwkR2HemZkdOkY0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J6otxK0eq4B75cip1Mz2gIi0NepQQzWw2AKqhjbltbRLJmiZOawksoy+W8wzwq3xo
	 IC7dS/98f5EZbVW8GBSQh+lvJNH+LhLMbm4PrvjS1BcnnKjTJRjPy9v32RbotFJkyD
	 oh3LkTuH4fukoIWCYFwbR0oZ/JwhPd2b4XUqfEEMuZxWt6D4WWT5kJ6vhXM34NBDKZ
	 Kvp40g96n+6eriwvKATrRFhMJepobTP1y/k0xwjirKYOuaImdSPGnif7KiFkGYt6Ji
	 w/XhnUEaqyT2fqQKnBu9Eu+6++iU2asx4OF09WNHqrVhLUFQxZWFuieaYPBuBTTtfV
	 Dew5Go27jmUrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E249A60A89;
	Wed,  4 Feb 2026 10:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8BAD9F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 10:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CBDE80CEB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 10:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oL6bw4iGcAnH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 10:29:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE3AE80C6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE3AE80C6D
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE3AE80C6D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 10:29:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A77F16012B;
 Wed,  4 Feb 2026 10:29:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C91DBC4CEF7;
 Wed,  4 Feb 2026 10:29:42 +0000 (UTC)
Date: Wed, 4 Feb 2026 10:29:40 +0000
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <kohei@enjuk.jp>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, kohei.enju@gmail.com
Message-ID: <aYMflIxseCDvgmdq@horms.kernel.org>
References: <20260131163037.88108-1-kohei@enjuk.jp>
 <20260131163037.88108-4-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260131163037.88108-4-kohei@enjuk.jp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770200985;
 bh=YIUU21IB9wMtKDb5k3cUtJycso1XbTtnuYNTeLOpXFo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PUURnUy75lFJ47lfvr6v7SQEKYbogXwdwVBX1uYvo9wwxAKPjry4jY7BZ4Ftr3Bsl
 o5wrRfoxCcGXcGLhwN/yErAUskFE3Sl/Yg8+YDSLjQUr+FuB0PBASFq5bdNkfNpKJX
 jOA73CIpo8zd3beVs1wR/MzPrPnLaBIjfTjkfuDszlImxkbm314uo1+gNZj2M91kWn
 Gmn0q7axBlAROst6JIxfM51NoUMN4yo+0gVnH2bxfi8hguAEL83m9A1GLn2SSuW2Xu
 TNCtNQiujADfonQ2JDOif2BJzcYBhCSGWrEFcMHcxscX6eGEzdrAUU4Zf6/X7VpECH
 NdfWHDa+vtwfA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PUURnUy7
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 3/3] igc: allow
 configuring RSS key via ethtool set_rxfh
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
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,enjuk.jp:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:vitaly.lifshits@intel.com,m:aleksandr.loktionov@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
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
X-Rspamd-Queue-Id: 10EEEE4810
X-Rspamd-Action: no action

On Sat, Jan 31, 2026 at 04:29:38PM +0000, Kohei Enju wrote:
> Change igc_ethtool_set_rxfh() to accept and save a userspace-provided
> RSS key. When a key is provided, store it in the adapter and write the
> RSSRK registers accordingly.
> 
> This can be tested using `ethtool -X <dev> hkey <key>`.
> 
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>

Reviewed-by: Simon Horman <horms@kernel.org>

