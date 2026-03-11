Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4P2eFMmysGkHmQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 01:09:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF5E25981D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 01:09:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3502941A4D;
	Wed, 11 Mar 2026 00:09:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AvEiyQn92y8n; Wed, 11 Mar 2026 00:09:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B302E41925
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773187780;
	bh=w831jCp2lEinpGyIAtgZOZkL+Nb730nx7r4AR6nRVwk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ewj+BrBVIa9oXUR9gbZMCP1RqGkvYAZjih2c942kx5kXlB6wlrIbE/QkVDiwZxfb/
	 gMtSwAveuQHUPnMb9bGWl3dXribStelXyPQGyRA1PrNU6C8atgzR7PZ9dQYYZh8xd7
	 HgU4w+u79IuxvRCwWnYTPldST2xDnDEVo88TLROS0IWy/G3x9AY8U3aQhyQEkeWrDN
	 tz/jtVuykH4M7LA7am6DECJt45WDLDf/xVKmdRyJjDHp73Nstbai2UGnqti7uzqSQQ
	 qIQNo6wEyxpQyb+Q7lMVNokr5v259JXQZI2eDOr8Lkv5aNxRe1OOni1wuh/mRfqLQI
	 UXsJdv4VFUWPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B302E41925;
	Wed, 11 Mar 2026 00:09:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1792933A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 00:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F1A10407FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 00:09:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DEWqKyhNBpoS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 00:09:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 60311407D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60311407D1
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60311407D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 00:09:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 86DB6408A5;
 Wed, 11 Mar 2026 00:09:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29183C19423;
 Wed, 11 Mar 2026 00:09:37 +0000 (UTC)
Date: Tue, 10 Mar 2026 17:09:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jakub Ramaseuski <jramaseu@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 przemyslaw.korba@intel.com
Message-ID: <20260310170936.07d429b1@kernel.org>
In-Reply-To: <20260310115556.1004263-1-jramaseu@redhat.com>
References: <20260310115556.1004263-1-jramaseu@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773187777;
 bh=G+EASqo5sUpecmd/NHO5XZFZ8PZbl576yUz1wTKeVIk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BxUBogDEud91vrfh78nE6b4Psf0sX8c+IxSKV5cvZjPiQq+lV7C8uTr3X4/SPlL/r
 AstzdooFZue0vECnrRMKFBC+owKjeOlmDTGjZYeBz33tkCK4RF6okZlwT727EN2nKe
 PKqDT7Kq5K9MZE159ubgG4Vl0jYdSZhk7TbNb9xw+QV/iHOkJV3/pVGSgOeh8lQo/i
 B6OI2e6azFmokt22bveYZbK3BtOZM58l4PHgI2uyFaOZkW7nd7lvOoaSwy/ogUdpbE
 Lt27el5LLlGc3PHmsdal92LE0/tcdoPL7Z5wGE5OrQ5/7u6diSOs49Mq47xFCMDLhv
 6qLwGYh/+Dqhg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BxUBogDE
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: enable NETIF_F_HW_CSUM
 for GSO packets
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
X-Rspamd-Queue-Id: 5FF5E25981D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:jramaseu@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:przemyslaw.korba@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Tue, 10 Mar 2026 12:55:56 +0100 Jakub Ramaseuski wrote:
> IPv4 over IPv6 GRE currently fails on E810 with skb_warn_bad_offload,
> while IPv6 over IPv6 GRE falls back to software segmentation.
> This happens because the kernel's GSO engine requires the generic HW_CSUM
> flag to trust the hardware with complex encapsulation offloads.
> 
> Add NETIF_F_HW_CSUM to the device's csumo_features to satisfy the network
> stack and unlock full hardware segmentation for GRE tunnels.
> To prevent checksum corruption on standard traffic, evaluate the packet
> in ice_features_check() and dynamically clear the NETIF_F_HW_CSUM bit
> if it is not a GSO frame. This forces the driver to fall back to safe,
> protocol-specific checksum features for non-GSO packets
> while preserving the generic offload for tunnels.

If you're CCing netdev on iwl submissions you have to follow the 24h
min reposting period.
-- 
pv-bot: 24h
