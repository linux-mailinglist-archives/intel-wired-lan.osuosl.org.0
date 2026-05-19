Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KlnFFeWDGp1jAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 18:56:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F9F582B61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 18:56:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B482A40ABC;
	Tue, 19 May 2026 16:56:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0d5z4MZWn4Fq; Tue, 19 May 2026 16:56:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E34140ACB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779209812;
	bh=wEKjA8JGPMPTEBLjfdzrjPvaeCkx+1hCUv3jyjBFUdc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fNBTygZGYTnUxER/zEMXSwi8nG9oRqXMP8/LpjibFt/mZrnER7wVXKXFGH1mBOjnG
	 m6Lyam809gXLeXLIjP6SWqz/8fm0B4Zz/e/BtXxoddEC7R1vtEFPLKohJJUgBSi5dh
	 FmHy/pDqPNqFNtzfq6xnHVWQ3Ojxfr4EYUpMo2olmKb0DJbBXbqZNOeCtRQgsRCteO
	 l+9zH0RxIwAgV5xeNtGgiGpHyoP8PdW2VCzZPcLiBqJTptSZqxCl8XoQpdklWhJB1b
	 ZPuS7vovl0cxJjML7LtShdfoEBM288NwGn0WJTNYZZwpOCdN+5qbCjS0BYFgGdBaXp
	 w91AZvzyH8T8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E34140ACB;
	Tue, 19 May 2026 16:56:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EDEAC265
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 16:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF8064047B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 16:56:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z31J0syIzqYv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 16:56:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 32FC34046D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32FC34046D
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32FC34046D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 16:56:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0E3644371F;
 Tue, 19 May 2026 16:56:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A380AC2BCB3;
 Tue, 19 May 2026 16:56:46 +0000 (UTC)
Date: Tue, 19 May 2026 17:56:44 +0100
From: Simon Horman <horms@kernel.org>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 stable@vger.kernel.org, Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260519165644.GI98116@horms.kernel.org>
References: <20260514163555.8243-1-dawid.osuchowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260514163555.8243-1-dawid.osuchowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1779209807;
 bh=11ckrE4HiKyRcuenxRTtM43EpwAeL4simpAQt8lARiI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=by40fzxPMi+9tYYRKgfw4EgSDYjRkus8L/nz2bjIbc2wr7jDxXvQb9oMKb7P5RIXG
 m9qCsqWriEqXaVOYLIXsoHEkiVCQNMSOwcHgqgYeyYW4u44jFvkjySKBKjjSGO2zNt
 jByNhknh7MyLNujcim9/kRAiZRcQ9Mb+GIHYxrneFiTRNcB8EeMlXjPVBOM8Xx27em
 wtDMi2WaSbaOGfaFJEtUK6qNmchu3SRXDx37DawJ85lJG4BjWh7aRTpf8tk8EKsKeb
 CuZfHdFBwcntFeG336gGDTVD/Ok76CIkmmjcxTr8nFXo0IePVfrMmGVFS+i/kfK1EX
 f1tgBX2kgiCtw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=by40fzxP
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix VF interrupts cleanup
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dawid.osuchowski@linux.intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,m:vladimir.medvedkin@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 59F9F582B61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, May 14, 2026 at 06:35:55PM +0200, Dawid Osuchowski wrote:
> When a virtual function sends an IRQ map command, the PF will set up
> interrupts according to that request. However, because these interrupts are
> never reset, the next time Virtual Function initializes, the interrupts are
> still enabled for a given VF, which leads to performance degradation in
> certain cases (e.g. Data Plane Development Kit) due to interrupts being
> unexpectedly enabled and thus causing interrupt floods.
> 
> Cc: stable@vger.kernel.org
> Fixes: 1071a8358a28 ("ice: Implement virtchnl commands for AVF support")
> Suggested-by: Vladimir Medvedkin <vladimir.medvedkin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

