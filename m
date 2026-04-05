Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EPxNYic0mnGZAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 05 Apr 2026 19:31:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AAF39F30B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 05 Apr 2026 19:31:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E14A481066;
	Sun,  5 Apr 2026 17:31:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FZFz83U4lovX; Sun,  5 Apr 2026 17:31:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4D3E81064
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775410306;
	bh=VkkBqjlVtYWerbS6hwV+X/0b8iwtg58ZLZGFMxRNMMU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wclmt0x51OiWQ3ZkJCKfK27VZydC993zubKduo48QCiTlNBs++bwnZj1h3SwQ2oyK
	 3q4+yp9WdXNWHVDfzjW8RRqoOYsPyy2o+EBXS2Wqe/OdmJ/XXyJUFXzOZmToaY2k9J
	 eSXwlu5mE2AOKQCtsfmPAMwLNo6N40HByTUJH5YKR7amkAhVdPdrSFJ8LDwzU+p1cL
	 FxqGMKHFZBxAwNGSilw03rOaCHz0VP/1bofST6hI4Ue9hdWvnprwxSdeZYfW7wM25a
	 wp95oEXzNGO6sBegm1/HvMFxMKEs0T8IUvvUDWekQY6GwgDqWJlIclIAWZgDrZP3oS
	 mZcxRywLF3U/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4D3E81064;
	Sun,  5 Apr 2026 17:31:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B24C1EB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2026 17:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30F8581061
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Apr 2026 17:31:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DEJcHDqgEVvQ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Apr 2026 17:31:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::122d; helo=mail-dl1-x122d.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5DA1E8105B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DA1E8105B
Received: from mail-dl1-x122d.google.com (mail-dl1-x122d.google.com
 [IPv6:2607:f8b0:4864:20::122d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DA1E8105B
 for <intel-wired-lan@osuosl.org>; Sun,  5 Apr 2026 17:31:44 +0000 (UTC)
Received: by mail-dl1-x122d.google.com with SMTP id
 a92af1059eb24-12c0b72dac7so307426c88.0
 for <intel-wired-lan@osuosl.org>; Sun, 05 Apr 2026 10:31:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775410303; x=1776015103;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VkkBqjlVtYWerbS6hwV+X/0b8iwtg58ZLZGFMxRNMMU=;
 b=P7vvPNF49MTExsoaVzA0hjD2/Mr8dd9eOb1r0Glz0poOzf4VaE91ZOaWvQ823O095Z
 Eccvm772/4hKKZky2MLFJXi2BSuxMk2TnIxVxHqj+yX0UlAu4eVEr2JuksadVfNA/DiB
 5g0L6Qkr7nZ1BFaSI/e66BFlMTQobbgJ1z1+cReHecrUO/df8TSPOAP6XpM9fNUkUQso
 CTap/FwU6o/1yFMpX8rQkbb8f02WUKjAMSwgvoDpVZTmkqjC6lvvYiwNBRcL9T7dsBQf
 MG3rzi+v+vKlhV4qzcT3Jm02uR8F4u8JBEb2YK6J3jenfpI0+g98QaZxTT/8TzlqmSWG
 bFYA==
X-Gm-Message-State: AOJu0YyDpnG+Ka+/n3/My8o9+3hfrd/PyZ68jdstFw0ivlvhjQhExL8n
 Z0S9hhO9BmnE0HD4jCki1jJuGvIzlNSiFY6rLK4qH0iki+LKaUOE20+xQ8q3YA==
X-Gm-Gg: AeBDievOT+9TGcVNZYamFam/UYvi2ZaJoWF02DWMvHBgx9Y8jgiJ19VDCzklWS/icEd
 LNjqn1Fu8Go6G4dw06zO4HwZULEB6q/aNmhjm4RKvibAci6+2p8AgT8I2XgBP+HxANLD6odHMrf
 wCX5RsTxGHpeKkbxVmYi0+9NNZPU4pkhr2tP52f8v7Ggw+8z5E7HSIYGx/9Ju5GUbxqaGULFaNN
 dBF/FrgQBIzCz/zcuTiZ79ZQu4sHN8w98t08tunJn7H8IprDAIa26JLLo2jfIP10qKmT8YHUGzi
 SGRa5LcfF1W9B7PfzxmX/fORuhMmkqYbCtnzx0q0y0GF5n54uD44J46/Pge1VnsJiizCoG7WEf0
 lYavaWqP49cmCtolBb6PRgcYrTELW5jPfbas9uiT63OSUKLpz/oIGN2n0OzgF0iZyx9f7tiJVS7
 YSnowPFPBkmfjaM6ICMdRZ3nn8gVpCi381EjY=
X-Received: by 2002:a05:7022:ec17:b0:128:d23d:81a2 with SMTP id
 a92af1059eb24-12bfb777066mr4554785c88.29.1775410303034; 
 Sun, 05 Apr 2026 10:31:43 -0700 (PDT)
Received: from ?IPV6:2600:6c5c:6b00:62b::23? ([2600:6c5c:6b00:62b::23])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2ca7cf1271asm13144915eec.26.2026.04.05.10.31.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Apr 2026 10:31:42 -0700 (PDT)
Message-ID: <0897bb16-02a0-477d-920d-fc262b606e98@gmail.com>
Date: Sun, 5 Apr 2026 13:31:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>
Cc: intel-wired-lan@osuosl.org
References: <f8ffc8de-4b1b-40fd-8807-ee8687fa984f@gmail.com>
 <adKGaJoGMhivmgBC@x1>
Content-Language: en-US
From: Matt Vollrath <tactii@gmail.com>
In-Reply-To: <adKGaJoGMhivmgBC@x1>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775410303; x=1776015103; darn=osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=VkkBqjlVtYWerbS6hwV+X/0b8iwtg58ZLZGFMxRNMMU=;
 b=PRCpxJGOuUnTZosm5RvX4B48xMhLXLKLF6cjGyy/PvMwykrMqYnNbVNagpMUSU9vDD
 xw3IJqFE6btqqA41xQehRVSL2QCglKZ37mONDrEz3xFOFVZRogPYaLSac+ZnsKgt1q3M
 +YgXG0qqKbYk++UhQ3C1slonoRZ2PEXE2d0j5izoEAyECInunH5YOnnfzBwuF4X6KUyu
 UNjkQvwuDdC8asQ/SL4FjgxMYyT+8wUgWp6+vwf6pmg02YKl61tsZUGeIaP1C4dfGmc7
 TGA1TLBfowK8+Xx4nsnSdsT+uYiPCtt4BViV9ltQHhz9oMlXNZ/oQsFYWsb8M6tFQ5wP
 OH0g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=PRCpxJGO
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Cleanup PTP upon probe
 failure
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:intel-wired-lan@osuosl.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C4AAF39F30B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/5/26 13:03, Kohei Enju wrote:
> Isn't a Fixes: tag needed?

I will do the forensics and find where at least one of these conditions
was introduced.

> Perhaps this is a separate issue from this one, but if i40e_probe()
> fails and jumps to err_switch_setup, doesn't pf->ptp_pins leak?
> 
> Also, maybe because I'm not very familiar with this driver, I don't
> understand why i40e_ptp_alloc_pins() is called this early, outside of
> i40e_ptp_init(). It seems to make the error-path handling a bit more
> complicated.

I will look at this, and if I can fix it by adding a pin teardown call
to the probe exit path, I will add it.

I don't have hardware to test this with, so I am treading lightly and
not changing anything about the order of operations on the way up.

> This diff seems mangled, and doesn't apply to my local trees.
> 
> Email header says:
>    User-Agent: Mozilla Thunderbird
>    ...
>    Content-Type: text/plain; charset=UTF-8; format=flowed
> 
> It may be worth disabling format=flowed if you use Thunderbird.
> See also: https://docs.kernel.org/process/email-clients.html

It seems like setting up git for email will be the path of least
resistance for patches, so I will do that.

Thank you for the feedback.
mv

