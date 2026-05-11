Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Eo6LYT4AWq7mwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 17:40:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 396E95115EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 17:40:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56EB6840CC;
	Mon, 11 May 2026 15:40:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4gMhqdsyAvqS; Mon, 11 May 2026 15:40:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D14F483E2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778514049;
	bh=jkrwhwC37i0Ghp7RxMj/GDPhvhLRktyCbFNOYn8wbUk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j2OjbLXMbqO1AbNFgvZiTdFVry4nVHuq8QlcMNfpzCwCcENDENd0+4Zszu+3F2O30
	 fZqAz7FokUwa0aReOOYry99lMfoOCLGO+vwwOGMlAKsktq4bx5yn3ntzRm5ek3OazJ
	 Wt8HccNET5UVHy86aXPKPjY33WSsuqXLKIJC4wuC4CYlRu6enyn3LhNHiu+FEwH6AW
	 qoCA4BqoC/ND0+QBz3hYJU3aTCcIlmhkfEtip/huKjWhaa2P/hSFBF5D/+lKTSv9lX
	 SoAuJxyzZ2olKP3uwD7C8/IOLbJTSfT9uTcyjZHS9TRA3hobY1S9xjYldq45g7iRLM
	 G3CmhZ6lXESYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D14F483E2B;
	Mon, 11 May 2026 15:40:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 208E1223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0641983E0E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:40:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W7B8eK0Ms3vs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 15:40:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6080583DD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6080583DD3
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6080583DD3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 15:40:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id F403E42A3E;
 Mon, 11 May 2026 15:40:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EECEFC2BCB0;
 Mon, 11 May 2026 15:40:45 +0000 (UTC)
Date: Mon, 11 May 2026 16:40:43 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260511154043.GC27589@horms.kernel.org>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
 <20260508031226.3601800-7-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260508031226.3601800-7-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778514046;
 bh=kMyxVFHBsTENAImGfysO/vdBf+qJS/bcyql+j8HczTY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A+chN3i9ViZ7leomzi38CgzYvReG407/tsMJ6BPiS5NrTI93fdTcUvW3Utxw63crK
 hLZ90JHMtJa7Tgb8bDPrsgvn3VVh827FJNz1LHHkPy07ii8h6KWsKimQN6SMP4kUcN
 3qHuYbwdK3VrjzLz/3ZC/8DXzqEdldWhnapacgGOZ8BqXMhaQE9zMelYd+apSVjVzL
 HftwDDfk43tgLzRzWvct0D0VJa86uw9+MVUSNx+DCzvwACPNPm5xmmYgOmwc4wGY7a
 yLFlMQL9x2mqMciRTQw280fXeva/UYVK4QS1GKDMAYGWWZt+XaCwVSbiVmp3SntaFh
 ExBrQpgzyz+jg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=A+chN3i9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/8] ixgbe: extract
 ixgbe_restart_auto_neg() to avoid code duplication
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
X-Rspamd-Queue-Id: 396E95115EE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,horms.kernel.org:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:12:24AM +0200, Aleksandr Loktionov wrote:
> From: Jakub Chylkowski <jakubx.chylkowski@intel.com>
> 
> Both ixgbe_setup_phy_link_generic() and ixgbe_setup_phy_link_tnx()
> end with the same three-line sequence that reads MDIO_CTRL1, sets
> the MDIO_AN_CTRL1_RESTART bit, and writes MDIO_CTRL1 back.
> 
> Factor it out into a static helper ixgbe_restart_auto_neg() and call
> it from both sites.
> 
> While at it, also check the return value of phy.ops.read_reg() in the
> helper and skip the write on failure.  The original inlined code
> ignored the read result and would OR MDIO_AN_CTRL1_RESTART into a
> stale autoneg_reg value (left over from the prior MDIO_AN_ADVERTISE
> write) and unconditionally write it back to MDIO_CTRL1 if the read
> failed.  This is a small behavioral change: on read_reg() failure the
> restart write is now skipped instead of being issued with a
> potentially garbage value.
> 
> Signed-off-by: Jakub Chylkowski <jakubx.chylkowski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

FWIIW, the AI-generated review of this patch available on sashiko.dev
flags that similar problems wrt write on failre exist earlier on in
ixgbe_setup_phy_link_generic(). It may be good to address this area
more holistically as a follow-up. (I am not suggesting increasing
the scope of this patch/patch-set.)

...
