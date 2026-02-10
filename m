Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMg9HPJ6imnIKwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 01:25:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8F111597E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 01:25:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6875F8130B;
	Tue, 10 Feb 2026 00:25:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9iLPjkQcAPAv; Tue, 10 Feb 2026 00:25:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7E2E812E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770683119;
	bh=eMgKEXKreuvett/p/7MOi0O/FowK30KohFnnpKo8/Wk=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hfmql8Lff+Bv2uSjZHp3Qp7guRWknDjf/JQejM8xFb48/oX5S9EdwBZwq0DPKh8eR
	 Qe5Pcg94gqY4glnMujBfiDoNiVQNTayg9gNT/RiEOrA5Xc/FoQIBKfBRNv3giqagQK
	 2+yI0v04cdPS/k3InkW99pQ9PqMbTjYNfNzs6GaGdvqzK7gCRooPLmyHOO2HRnih8e
	 W6KKAmX7DsZdja+r/i11RObs4dyoVxLXbPHYNb2MCVEwxU16JZYFTbPQ1yxOe1T9qS
	 Gf12c2jrfVhumTOcR7ZfxEmhIXYIg0u/TQ7GeC6z4fJi+bjrocUTEHScUUoDCI11ae
	 9Qpi/uT9hw+Vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7E2E812E0;
	Tue, 10 Feb 2026 00:25:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 40A391A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 00:25:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22A55812BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 00:25:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uCplfnqdpG3p for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 00:25:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=tglx@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6F644812B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F644812B9
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F644812B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 00:25:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A3A8443AD7;
 Tue, 10 Feb 2026 00:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D640C116C6;
 Tue, 10 Feb 2026 00:25:14 +0000 (UTC)
From: Thomas Gleixner <tglx@kernel.org>
To: Joe Damato <joe@dama.to>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
In-Reply-To: <87a4xhbk6a.ffs@tglx>
References: <87v7g8zv2o.ffs@tglx>
 <aYpalNvTIiD4nym4@devvm20253.cco0.facebook.com> <87a4xhbk6a.ffs@tglx>
Date: Tue, 10 Feb 2026 01:25:11 +0100
Message-ID: <877bslbg2g.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770683115;
 bh=Wpfw2uqDmLqrlx715dbScHeqTNO7aVvos/5uQh5ZKms=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=ra5OCJdnfuCdFx6NO89ZSB9V2hj4VPkmFrvDZNdgGByBa5dfNQVHsoqLer8O2UTOv
 X8zibP/PJ+MGMwrDXOs+srb/xtNvrxbY+ZVHdWSx1oR7HH8caBZ3OgALUkd14Bh6zX
 pELM7Irep/kNcgWelpHebQ5VTTSv5PHSlrGU15w5YbFJhiH827vVZa/zPcCJy3mMvD
 NM/g0rJFhA/L9jySY0X0iXDkINX3BXKNh0HwUX1P+w1C/drv/tZkShwco4Ilwm5egN
 LI4PJ8izbzekt15Zbss65v9puacrwVzng32haZrfnNNIJ4i30xPF8vSXHtR2KxxjBd
 gXdlTnjLgMniw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ra5OCJdn
Subject: Re: [Intel-wired-lan] i40e: Fix preempt count leak in napi poll
 tracepoint
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
X-Spamd-Result: default: False [5.79 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[tglx@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:joe@dama.to,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DD8F111597E
X-Rspamd-Action: no action

On Mon, Feb 09 2026 at 23:56, Thomas Gleixner wrote:
> On Mon, Feb 09 2026 at 14:07, Joe Damato wrote:
>
>> On Sat, Feb 07, 2026 at 11:50:23AM +0100, Thomas Gleixner wrote:
>>> Using get_cpu() in the tracepoint assignment causes an obvious preempt
>>> count leak because nothing invokes put_cpu() to undo it:
>>> 
>>>   softirq: huh, entered softirq 3 NET_RX with preempt_count 00000100, exited with 00000101?
>>> 
>>> This clearly has seen a lot of testing in the last 3+ years...
>>
>> I'm the author who introduced the bug. FWIW, I did use it quite a bit when I
>> had i40e devices.
>
> Right, but always with PREEMPT_NONE and no debug option which would
> enforce PREEMPT_COUNT ...

Forgot to mention that's what is required before submitting patches
according to Documentation/process/submit-checklist.rst

But who cares about documentation aside of the people who write it?

Thanks,

        tglx

