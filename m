Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r42OOL77TGr9swEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:14:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DECA771BC0C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:14:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="cum/eEB3";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDE6460793;
	Tue,  7 Jul 2026 13:14:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Qfpn-8cSmEj; Tue,  7 Jul 2026 13:14:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 480FA60796
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783430075;
	bh=gy5f1rBuEP4haLiJZu59Q3d5AY2Hnz80qE4DOJ24g3s=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cum/eEB3mbr/vTRDNhdkMYNaW50nnUz2NAoEQK6WxY4fa2/Zb2gr/7ldNwK7LZhoX
	 dsKQUD+StsqvzwO5PBPrkgVFu0rOpi5KZd19PHdXURRbULKyBqx9GIHX83FU71sONO
	 KgBwcUwNIRbvR9siQnFZBnO0/aFQNeVKuD1fJ4al8Ikfxdx/VkTBv+CKIS3i5Qr0t/
	 hjjVFVbXeks3vNWbkrbWuxgKlMmszy7RFNT3jC/zn4BpRFKBOspxQlkmNM8JrBUbOB
	 HFHlmb6U8IUfBdYbshp3wUYJrb3ZyKMJE8UJ4930S0HvmBdH/My55hOCZvZsFCQFpz
	 4itm8FT+Q+UDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 480FA60796;
	Tue,  7 Jul 2026 13:14:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E90E5315
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:14:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D26C060794
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:14:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vqPueLCwSkQo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 13:14:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2166B60793
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2166B60793
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2166B60793
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:14:32 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 517A860018;
 Tue,  7 Jul 2026 13:14:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1474F1F000E9;
 Tue,  7 Jul 2026 13:14:29 +0000 (UTC)
Date: Tue, 7 Jul 2026 14:14:27 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260707131427.GE1364329@horms.kernel.org>
References: <20260629091203.36482-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260629091203.36482-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1783430071;
 bh=gy5f1rBuEP4haLiJZu59Q3d5AY2Hnz80qE4DOJ24g3s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=GCDpl3dn5MdgX4OeFnhOET9KfX0HgmUZta/LwGXG7Q4e9TmgBILIN8ZvO/XvtPIJ5
 gcJR9BzsErQE0+3BxV28NNkoEOkc7Z27GkArLqoigSQ7wTRYlsHrhxsgpo7CWLVEGt
 7ccVTQfYZnyYy8Bn8PMoTxmhoH1kdrpJfqAazpJjb/wb0CzvSxW1TJ6cr+jqWsPL5r
 4jSkXNB2KGLuPWAswfVs0fpdihWEqRUEcw2Y+h+6azXv0lIrATmqlExBRA91+uvnWT
 GqMuc89rvBUNG3upyiyvTNUiD5GVcFZqHZiS0Rm704k/1E6m98hCb3W4WQwxl7JFEn
 0aeV25Nnoo5+Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=GCDpl3dn
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: use global queue
 index in TC to-queue offload
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,horms.kernel.org:mid,osuosl.org:from_smtp,osuosl.org:dkim];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DECA771BC0C

On Mon, Jun 29, 2026 at 11:12:03AM +0200, Michal Swiatkowski wrote:
> Previously index within PF was used, which caused rules to fail on any PF
> other than PF0.
> 
> Switch to global queue index by adding first RX queue id from caps.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Fixes: 143b86f346c7 ("ice: Enable RX queue selection using skbedit action")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

