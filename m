Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APySNJugvWkM/wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:31:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6104C2E001D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 20:31:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10DC36073F;
	Fri, 20 Mar 2026 19:31:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cpi8utSbD35w; Fri, 20 Mar 2026 19:31:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8710761BE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774035097;
	bh=SM+UFTZxO6q0FnWRZc28+1cImZD+nUxyKt62W+NaoZo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4Dj27aIIh5Tu2lZQ1/sSreBjYzbgbSbtL89sOJtlWo2cAl2eH7px++9HIS7nOEMI4
	 6ntMuIJOa1hEeWZ+4nFitUcS0ZXE86w4eFfS3HtNawN57htmuhU3eB3quQQ1m2mtnI
	 N/IYRQXbU0E5csTzya/k8VaYmP716TyVtv+0rXq9uuDemmUXLpIJN6hPu9MUlN0IV2
	 T8H5xuZgfwKcg8EoQePQmOe34Sxyfregg1skomMv+wNzSOFJh5BHr63SSnxzCuJP7o
	 CsF+VXfsEyzf9Mxs9BMAippdQgGUEF4G6BWIFADBJGupBE3yOMcC2UbBUdSz208eh9
	 F7m2VCU61JMXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8710761BE0;
	Fri, 20 Mar 2026 19:31:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 89D0425C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F4EF41EE3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:31:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aRADNiFmWFJ4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 19:31:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CA3CF41EC9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA3CF41EC9
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA3CF41EC9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 19:31:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 96D0B60126;
 Fri, 20 Mar 2026 19:31:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2947AC2BCB7;
 Fri, 20 Mar 2026 19:31:32 +0000 (UTC)
Date: Fri, 20 Mar 2026 19:31:30 +0000
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>
Message-ID: <20260320193130.GH74886@horms.kernel.org>
References: <20260320050541.422592-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320050541.422592-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774035094;
 bh=QA/w4+khlPRy4EweZlpjnLRnmAwb/BV3yY+xixVCdvQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jdTVLv3lqiLj4KBIGwwtH1e33UD9cqU/ctYm9abicNjWz/jeJ1zynPj2hVxUIYRaU
 686SDBRQELplSM31QlCSueorVWpcacibMWHmPIMchm0g64v5lDosphVIOrnDFt7mgn
 wkry0qBN0/l7Q+M9vC0IyK27TPS5PbB+VkB+IwL8oIWmPeRESU2GdmrgB/mBN7BVxd
 2ltSzoRavGsXeQVqbvVhJXvsVIfeJgygM5cgNlGo9FtmEmiBmLzPj33uhgWmyMXM59
 Si4VCi3Sa99zZ2QMtV5cq5CnZs2XwmKH4ysxCao958g8wMXByHXuv5IxoOnXSawA5E
 2tyZm3z82GV/A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jdTVLv3l
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: init desired_dcbx_cfg
 in default DCB config
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:lukasz.czapnik@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6104C2E001D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 06:05:41AM +0100, Aleksandr Loktionov wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> When DCBX is disabled in firmware the driver falls back to software LLDP
> mode and applies a default DCB configuration via ice_dcb_sw_dflt_cfg().
> This function properly initializes local_dcbx_cfg with valid parameters
> including etscfg.maxtcs from hardware capabilities. However,
> desired_dcbx_cfg was never initialized in this path.
> 
> All DCB netlink functions (ice_dcbnl_setpfc, ice_dcbnl_setets, etc.)
> use desired_dcbx_cfg as the base configuration for user-requested changes.
> When desired_dcbx_cfg remains uninitialized with etscfg.maxtcs=0, the
> firmware rejects the configuration for 4+ port NICs, causing DCB
> configuration commands to fail.
> 
> It is not a problem for 1 or 2 port NICs where we support 8 TCs - in
> that case FW accepts maxtc=0, treating it as 8.
> 
> Fix it by copying local_dcbx_cfg (which was freshly initialized) into
> desired_dcbx_cfg after the default config is applied.
> 
> Fixes: b94b013eb626 ("ice: Implement DCBNL support")
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

