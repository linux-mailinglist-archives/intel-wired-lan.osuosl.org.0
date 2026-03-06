Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGInF64sq2n6aQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 20:36:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D42B22718E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 20:36:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BC2E613C9;
	Fri,  6 Mar 2026 19:36:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 43p08HZO9kOl; Fri,  6 Mar 2026 19:36:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 038DA613D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772825771;
	bh=xdj83dFgVsPH9r/XNzb+YVgn9ygjRRPVxKePJgaQ38o=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=2CZbVRoZy5fK1VfSAO5F24dndsKRyTrSDr69IflrAqBhNgnna8RUvRgxzvcVj4NQG
	 fTrZr+jdC2PFbobmyhGJQjTFHLsmCwQYTpm1QSSIwcmbWmprYHcLG1SulVRfAiQFnC
	 TJ1Mu88wiRPy+P3W1ZbJzAd7vtiaYwrkw3mMN3PoMwc683vG2/SOLOCu9EdfY+Ucs+
	 iBJdaB5nO/MZ2NV3ix2gLZ08556etXPjB/NIB6qa8MAhQuR3C9YRmX4OaV1PGNPxMc
	 5d6agDyOLI5sbK+IcgIAE8U940Id1z+BJHzX165jWD6AZM7GOCXwR2aPGa9H0YDJqR
	 5VSpgzbawLdyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 038DA613D1;
	Fri,  6 Mar 2026 19:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B0E0D25B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 19:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9558341847
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 19:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TB1cMfWUqM4e for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Mar 2026 19:36:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::122b; helo=mail-dl1-x122b.google.com;
 envelope-from=srutherford@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2966141B66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2966141B66
Received: from mail-dl1-x122b.google.com (mail-dl1-x122b.google.com
 [IPv6:2607:f8b0:4864:20::122b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2966141B66
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 19:36:05 +0000 (UTC)
Received: by mail-dl1-x122b.google.com with SMTP id
 a92af1059eb24-127380532eeso4299926c88.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Mar 2026 11:36:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772825765; cv=none;
 d=google.com; s=arc-20240605;
 b=QxnNcKpOXlq85bX5O1jBjEcZg4i8V8asJMHGyj9kRXvUeoYhpn24xGz4XqhYXNvmgi
 NJzBT42/CrWpNL8Kpchnws/GLfBZFwF8GtTUJwYjSzW3MrKZjM6aKjkt/jAxxgwawLKo
 BOWJX7DSGeTlMC5ijoNQfw9h+V71nOPKAKfL2gSHm2Fsc3mV1WNi/VrzVHz580qHsI/k
 6apfp/tkw2HsimLX04Q6ytf5a1ndnUqGAXtn+klZxJkteq2GcA9wYzvM4y6XlhdG3GqI
 uwhCOkkH9PwyXruHKEYqPweiPJr1cdxadxXKOZDonbTSWuNSoBJqlw9Hz2tNiE7B/+7a
 cqtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=xdj83dFgVsPH9r/XNzb+YVgn9ygjRRPVxKePJgaQ38o=;
 fh=SCLAcFzYAFh5ZRydVHJhqfiC/TLsC/rtWf+30XjNflE=;
 b=NLSigofwtQE/dktJYoDbEYufJziD5c+otrYzT+wOLH2V+nRS+M5n36lT64blVFUOb7
 yOpaLZaV6u2Kpf1pD/dK9omj+AVwHpk8KhyIZeGSxdRjSRhCDywq5lyqZDPUo+sqq0dk
 dm0JOPNd5kYvoFRpUaFiWfYAfZ0VHzlJo9LZQYBCIrQbujFbWDnfm0CaxzNj11tQjAMd
 SzAoKOKiWViObd9p+lz49o0ndlyA3ZKb0E7xThd69pwEwifGFtlpLWrptkL/yP5q33Dx
 6FoKS5utapXrKoAAjOLI+xTGsnkrFcKlzUZ0HkPrYmFvdc0tSUvgtHcePpKiAu74djr6
 LBmQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772825765; x=1773430565;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=xdj83dFgVsPH9r/XNzb+YVgn9ygjRRPVxKePJgaQ38o=;
 b=XdBBaufyu3d6aSenkLBJqmvsLfKWVl+cIvBh2WsnEaB8vNXVlRnZSy7DnCU14il+z7
 Geb/H0LEFXX0wXc05jacDe2h3cKznx3KEYSGqFihSzeHT7F58SZdEIyuz+RheLngV1x9
 hbGO4aNQIvwGQey+Po8Rwe2zjRXDp/oUt8EBJm0UmRmgtAOTxxYIcb9ZfXX3uw8xzN9p
 xjvzPUijDcGbxEh+Yj7auqLSSbh5auPOZR7SFYtuWa1UV76r6hjC4g1aKUV4KAXucgHf
 bkAyjMPkM3yvjVxSysR0xfLbcxxUgRpaLekSzRNgI6NbFW4L/B9DEDy6JocXTcdJPBpd
 D78A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWnZwlWBUFBaOQi4Vqj6D7tD1iUoV4xxTSVnvG+nh4x80VWE3K16SN30YQC0dKB5X8HcUyLdHeNHM/jV/1pp7U=@lists.osuosl.org
X-Gm-Message-State: AOJu0YweC9PDdDJvnmppR4LqWMvUmu7FdXDtsUd21C9glybAFjapLpZz
 wRsVGZg5MshNQiCW8btmgbrOdDGeYF8c6k7j+t+PmhfC/Ew+vdzXlDGLiKZuXrlBDvfqFlBvLHq
 qwtncYwCsCjpPbqsDIeM5k+0Gcc0/1PjrrgZbhQa5
X-Gm-Gg: ATEYQzy0a7t5v57tPDxp4hvyazTQfX3wweHDhHmF/Kgsh7HNj9ORGpLXYKyKMsLvb15
 pjem06oXHAQU8vrI3NqUvkBm6gXcQ/Tmec/KzaJwY+M+jaZbSZ5bgdFYRaffR3gZnnlGgcvaXtL
 eIP7c6ryjINvDrf7J/QQb94SqtTLb0s81gzetDWh4jj09AqvgZ1B1AbOhcSwqVqAs+q8uw/3rO6
 2dm+aG63/rr/t6zBKuvnTQdrfO6a/gZo0Fa+/acthO0Rkynyy+nEs5LGk45to0LSJfgxL33vVls
 zkZyASDaY1WjZjeGYckzOG50+S5OOw8ufp4uMjYnUGm8rqdfingh
X-Received: by 2002:a05:7022:e10:b0:11b:88a7:e1ac with SMTP id
 a92af1059eb24-128c2e0b9f0mr1601763c88.19.1772825764585; Fri, 06 Mar 2026
 11:36:04 -0800 (PST)
MIME-Version: 1.0
References: <20260227203457.558196-1-srutherford@google.com>
 <20260227203457.558196-2-srutherford@google.com>
 <6a7fbafa-cdcd-4bfa-ac00-204e68602f61@intel.com>
 <CABayD+eF30_OHRrGYiG-7qKbJjvs5=7U8H7SH9Hj=ou6aZJBbw@mail.gmail.com>
 <8b43d234-867a-481f-90e6-e155132100a5@intel.com>
 <CABayD+crjO3S2cC3=9HqSH+kngE1=yKp_MnKZmAdW-YwJH1idA@mail.gmail.com>
 <7c8ed118-d3c3-4bdc-913a-14f5537c44d3@intel.com>
In-Reply-To: <7c8ed118-d3c3-4bdc-913a-14f5537c44d3@intel.com>
Date: Fri, 6 Mar 2026 11:35:27 -0800
X-Gm-Features: AaiRm53_WNbb-NVZ7tDAtTMf4_ey8XW-RibCZZ-eM0UsuoJCw8DO4Max1MVJZ18
Message-ID: <CABayD+dJOxYxZYBpUP06sbgEf4rzMTiVfdmqbR4wnY9C677RFg@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 Li Li <boolli@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1772825765; x=1773430565; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xdj83dFgVsPH9r/XNzb+YVgn9ygjRRPVxKePJgaQ38o=;
 b=BaTIBBNoz/aJa7XmW/mIlNv+tqSDOVXT6UI4hJzCMjon6ScWnoAuvZRkiaqBEQT+zc
 M7yBROX9cyo5uF3X8oA54z0Pjt5ebudY9qGxbS4O24EPfeugKOzbBQ3ASkoNDckDrIWV
 +gq7N+JeVqUpOSsBrpovJUE9i/kVPzOHPF97P328BKMK3EZGj48bsLVK8GTSFgVcPaqk
 nG2jk+y4keV2kEHm+2oJpxfVkHfK249uTX022s9YJMZoM38a4g6xi8bE1Y0y1FeSDB/W
 EsrfqeqgwQ2Md2XA8E9E99wCejc6Q1HUMGvPPcXfGji+vXS2wNtFII+nvv4vLUzNNtCF
 ZPZg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=BaTIBBNo
Subject: Re: [Intel-wired-lan] [RFC PATCHv2 1/1] idpf: Fix header clobber in
 IDPF with SWIOTLB enabled
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
From: Steve Rutherford via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Steve Rutherford <srutherford@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 3D42B22718E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[srutherford@google.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

On Fri, Mar 6, 2026 at 6:52=E2=80=AFAM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Steve Rutherford <srutherford@google.com>
> Date: Wed, 4 Mar 2026 14:01:46 -0800
>
> > I believe syncing twice isn't inherently wrong - it's more that you
> > can't synthesize the header via the workaround and then sync, since it
> > will pull the uninitialized header buffer from the SWIOTLB. Outside of
> > SWIOTLB, dma syncs are more or less no-ops, while (with SWIOTLB) they
> > are copies from/to the bounce buffers.
>
> Ah I see.
>
> What if I add sync_for_device after copying the header? This should
> synchronize the bounce buffer with the copied data I guess? A bit of
> overhead, but this W/A triggers mostly on stuff like ARP/ICMP, "hotpath"
> L4 protos are fortunately not affected.

That should work fine as well. I'm not certain I have strong
preferences on the right answer here, other than "does it work and,
ideally, is it less confusing?" The patch I posted is a bit
unintuitive. I think what you are describing might make the workaround
self-contained.

thanks,
Steve
 [And sorry for my gmail-driven top posting crimes D: ]
