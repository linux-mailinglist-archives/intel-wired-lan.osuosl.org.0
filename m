Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bQ4JHCwPOWqgmAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 12:32:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0CB6AEB85
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 12:32:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="7+K/pgnD";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA7214EC91;
	Mon, 22 Jun 2026 10:32:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CET0CIV8-4YX; Mon, 22 Jun 2026 10:32:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0619C4CACF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782124328;
	bh=o0SRWiMpacshWYzq/KKBsYhYEY49vcEVFbcZ2GI1sYo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7+K/pgnDGawPz1jIxpPYiAyWPUR7P5RH7fl1imE0f/+wT6p89rUntrzNSCSZVN+gF
	 nnrAzv61fBB7drJZsWuXkMy+Rsp7uS2xxOZYNPatNIanlyugRjwlHpBAM7NjRLB9sX
	 SiPfGrULdWeyLfg954j/FNRPdWLEOkvX3CrHPIy6IItMDsMkspM4hPsMgZgK15H3QO
	 vyto9eUXsawpMgVbqRSMIhWSGloMd09aJBTOGV4Puo7lvvAbmq437i1uFF3aN4eM7+
	 RuxgqJchCp1WSIFkVieKOygoC/FWiTwFer3KFkzpEVk5KiJQYaq/mosPZnDYeAUOuV
	 9IpsrV8IcpnCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0619C4CACF;
	Mon, 22 Jun 2026 10:32:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B5DAF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 10:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 816814CB7B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 10:32:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RuP-PadAdkYt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 10:32:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B36314CACF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B36314CACF
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B36314CACF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 10:32:05 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id DB8A160051;
 Mon, 22 Jun 2026 10:32:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 422941F000E9;
 Mon, 22 Jun 2026 10:32:01 +0000 (UTC)
Date: Mon, 22 Jun 2026 11:31:59 +0100
From: Simon Horman <horms@kernel.org>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com,
 jacob.e.keller@intel.com, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Message-ID: <20260622103159.GZ827683@horms.kernel.org>
References: <20260619061321.8554-1-jtornosm@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260619061321.8554-1-jtornosm@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782124323;
 bh=o0SRWiMpacshWYzq/KKBsYhYEY49vcEVFbcZ2GI1sYo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=kWwpze/XQWnhKBgMzO30Cwh22U7ewEbMpxb4AVnZ08kAi7Mbd2Eejj2djeHy/SZDz
 8e3Jx0LVe2I5FReK3yo/0EA/MaxI1x4Mm/SiHlWqPiNFnbyVi2j1a0/JrTJ1uVm5oX
 U+OGS3qR3HNG7gkMsDUF8sgVo38Ze2UtkMtH9cRePOFvG9IANG5B45MutPBVv21y9i
 QulAc6HOwsYGJ0b07bkM6xXv95pChrdMJOEVwMo2U6AClMwLUPp3R9e2Ik/IxO7NKp
 rARel/pFfyjKn01DtiG6PdA32BqCa1RiBliQkob65qm2SjoH90h3H2q6GRT85+CskC
 SK4uNfbAdk2/Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=kWwpze/X
Subject: Re: [Intel-wired-lan] [PATCH net v6 0/4] Fix i40e/ice/iavf VF
 bonding after netdev lock changes
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5C0CB6AEB85

On Fri, Jun 19, 2026 at 08:13:15AM +0200, Jose Ignacio Tornos Martinez wrote:
> This series fixes VF bonding failures introduced by commit ad7c7b2172c3
> ("net: hold netdev instance lock during sysfs operations").

...

Hi Jose,

Unfortunately the Netdev CI was unable to apply this series cleanly against net.
Would you be able to rebase and repost?

-- 
pw-bot: changes-requested


