Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANs1OhwVt2llMQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 21:22:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCC129262D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 21:22:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDA9541293;
	Sun, 15 Mar 2026 20:22:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wGHwclIqaUls; Sun, 15 Mar 2026 20:22:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 866264129A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773606169;
	bh=A6gHr88sgO49lwJ/L+egufKPsQuyRH5gQjmOgF/BNa8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NWNISobrpUw/DT53fdySv+eV1SOyIUwDPqTuL/t0rpK15efsDOGjjDFkQxYIWKc5G
	 62L6J4iQSKILGP/shzWIzByQBl18WVZbzjVzIYkl6Y4ThBVYtWLX6qNW9bUTrrzQkN
	 YgPfMa8IFscFBLXN3byO6Or+mOYZ5680+2RBzqMiUFS1O+OoqwwBXyQrBOjeQG1RC2
	 RHw82vJPFChbR6pGlSSTs7YzwceALFhPBsxEod4JE0EHiFFwlqUmrqtC/C8TX8UbEL
	 igvLz3gTsqbWa/VqLf9pKRqmbaMMVMucyqa1u2ufqNEWMjOMdsHhKwDFfb1U2U9TIq
	 YIQvvSC6Pch0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 866264129A;
	Sun, 15 Mar 2026 20:22:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7271A1B4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 20:22:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6FFBD406EE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 20:22:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CRv5q98N6Xqk for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Mar 2026 20:22:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C7798403AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7798403AF
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7798403AF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 20:22:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2A68140117;
 Sun, 15 Mar 2026 20:22:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEB05C4CEF7;
 Sun, 15 Mar 2026 20:22:46 +0000 (UTC)
Date: Sun, 15 Mar 2026 13:22:45 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: intel-wired-lan@lists.osuosl.org, michal.swiatkowski@linux.intel.com
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 jacob.e.keller@intel.com, anthony.l.nguyen@intel.com
Message-ID: <20260315132245.1a7efb20@kernel.org>
In-Reply-To: <20260315130150.12829f88@kernel.org>
References: <20260315125451.3741843c@kernel.org>
 <20260315130150.12829f88@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773606167;
 bh=mEK9cUx7D03T6LsZAAaY/ZB5m0gcPHNqitim7X3Dgxk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iDsP5AYtFb6PR+Fs/NN925z9HxVd7TkcPZtcm8q4MzmQHfMuScdXsZ9xux/3cNhLK
 PWrm+PLY80zwtwij1Kw+xc4U2xoEjMzkkqWfkprflv2PFrTsuF3U0t1YwMUUF5Ggvd
 8hUsAP3sTUq2+FoY2Toi6DJhFfPB4zxHYrH26d8Mq6sHQjfs4CV8xvx6HAqmhCeJRK
 I/BEZ/E1bFZnhhWGNZoaBJ+o5s7pqcXJqr+nWwCI6t4CE6ZYEYqljzl3u3dUAU4dnr
 giOMTRg2EwJgmLrbNfrG28cAYdXCl6gVfcxQxU27zMtGwsXDKMtAx+MPcxVOVeUp/P
 cq75PQWnVL10w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=iDsP5AYt
Subject: Re: [Intel-wired-lan] ice crashes when not enough IRQs
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3CCC129262D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 15 Mar 2026 13:01:50 -0700 Jakub Kicinski wrote:
> On Sun, 15 Mar 2026 12:54:51 -0700 Jakub Kicinski wrote:
> > Trying to build a minimal kernel I dropped CONFIG_IRQ_REMAP=y from 
> > my config, and (on AMD) that caused IRQ shortage. 
> > 
> > This seems to crash ice after commit ad61cd9c67ad ("ice: get rid of
> > num_lan_msix field"). Sorry for the lack of line numbers, I also
> > dropped DEBUG_INFO. But I think the problem itself is pretty obvious.
> > The fix less so, short of reverting ad61cd9c67ad. We can't just clamp
> > the queues in ice_vsi_alloc_q_vectors() because AFAICT that would make
> > ethtool -L succeed but driver would have a lower queue count than
> > requested.  
> 
> Hm, maybe it's not just CONFIG_IRQ_REMAP=y
> Enabling it makes no difference. Let me try to see what state the IRQ
> allocation machinery is in on this kernel. On distro kernel ice gets
> all the IRQs it wants at boot. But it also barfs something RDMA so
> I can't really compare..

I think it's ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
It clamped the number of allocated queues but I think it meant to only
clamp the default enabled queue count. No idea how y'all gonna get the
extra IRQs later or whether you intended to pack multiple queues per IRQ
so I'll let you figure this out..

Thanks for letting me test crash detection and recovery in NIPA, I guess :D
