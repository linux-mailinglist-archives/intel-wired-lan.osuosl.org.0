Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJeRDPBc/mkWpgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 00:00:16 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A34DE4FC19F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 00:00:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C14084A55;
	Fri,  8 May 2026 22:00:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id enS962Wf1WS3; Fri,  8 May 2026 22:00:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5D6D84A56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778277612;
	bh=YvUyJVIIJnigpcUTciBeubD93lBY3xgoK9qBgnLvnzk=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CNGLJZE0fGlHwtTndNFllFO/fkD92Jr6GcxQgWXuFEZ09P6+a0+yGKIDg5qZpSxp1
	 CgOWLhpxsAxNKEEOrClOMWQXRyqBnfpgKjhnh/GCGi5u32i12HX7kM9+JDFGr2bXp+
	 mF5uPsSBxqIi9LxGdWMRELjIr5rHbd9wu0wLDvj5/co5pkLA4k3eNSrufY2ybmJB1d
	 XU4Am+mj8z70PQNxZK1WOA/LySjPrTH1guKGADyk8pGVSACE7L+/9SLwCI04edB7wV
	 qLhC403vHIpk5tGDvlEqSsA23ytIlJjOqzYjPmFuQkd9Y5ajArwBIQOHokXRI123Pi
	 fcEKEeFOZv85A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5D6D84A56;
	Fri,  8 May 2026 22:00:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DFDA322F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 22:00:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B563B61C17
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 22:00:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vakTM813WBCq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 22:00:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=171.64.64.25;
 helo=smtp1.cs.stanford.edu; envelope-from=ouster@cs.stanford.edu;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ACB0761C16
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACB0761C16
Received: from smtp1.cs.Stanford.EDU (smtp1.cs.stanford.edu [171.64.64.25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ACB0761C16
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 22:00:09 +0000 (UTC)
Received: from mail-yw1-f181.google.com ([209.85.128.181]:48160)
 by smtp1.cs.Stanford.EDU with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <ouster@cs.stanford.edu>) id 1wLTEt-000585-Pa
 for intel-wired-lan@lists.osuosl.org; Fri, 08 May 2026 15:00:08 -0700
Received: by mail-yw1-f181.google.com with SMTP id
 00721157ae682-7bd9f61458eso19872087b3.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 May 2026 15:00:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AFNElJ9VQzmjho9joXI6OtUzElmC7u9eGBxgtGI+ywACYl76FJZy6+ePn3ZYeNIZjItTTUen69gxAPyk66uzA8P3yNw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyasAPmPAjtljoeaAUE0DHzA47Ez9474BLhRBay3CSwiUatoi5A
 T8/B8/p4wm5NIlNCtUJyCHA3OYqPew/OcHE2Yk3kWztNzwsqe2q/9QtudaeG5nXmt5DI+fWC8Fs
 uFSSHDUL4eypSUHoyRSiLSkJd0Zvfya4=
X-Received: by 2002:a05:690c:f06:b0:7bd:4a12:f08b with SMTP id
 00721157ae682-7c10255cc5fmr3388507b3.3.1778277607075; Fri, 08 May 2026
 15:00:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260507183843.1457-1-ouster@cs.stanford.edu>
 <379cd3dc-aff5-4fcd-bf9f-4878ae21ee74@intel.com>
 <CAGXJAmzqBQha+XRu12ZpLTDBSMgAEANffD2uGKZ+VVdkMk6OVA@mail.gmail.com>
 <3de05bb6-2cae-470f-8b8d-8ada1cd0a0f4@intel.com>
In-Reply-To: <3de05bb6-2cae-470f-8b8d-8ada1cd0a0f4@intel.com>
From: John Ousterhout <ouster@cs.stanford.edu>
Date: Fri, 8 May 2026 14:59:31 -0700
X-Gmail-Original-Message-ID: <CAGXJAmxKw-85-=0CX=s33CbfUmJA32=oqpDM=SeV5ZLi04fCOg@mail.gmail.com>
X-Gm-Features: AVHnY4JwMwFAqhZa5I5X9osjxt-s62Punjr1W9agb-27xSB4PVgjKpQPNdeAu50
Message-ID: <CAGXJAmxKw-85-=0CX=s33CbfUmJA32=oqpDM=SeV5ZLi04fCOg@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: anthony.l.nguyen@intel.com, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, 
 przemyslaw.kitszel@intel.com, netdev@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scan-Signature: 993826b9125cbf1b907f71dc54053338
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=cs.stanford.edu; s=cs2308; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YvUyJVIIJnigpcUTciBeubD93lBY3xgoK9qBgnLvnzk=; t=1778277609; x=1779141609; 
 b=o0UmvbPC6D30oGiu+kM3OcsCoZf8ms8bi8VGlVYUgc7hspIz/TC/P52XT+dU4b2sCOsN2bAZROx
 Nu4HU1zCqNnmgPzUqE8m8Qs6qkG1x46nQ0+g9sjGK8QiX4drSmWSN0eXl/fxaqW/XNJvfeeQ88lHA
 JaXEqDQ/dcO+3irLfUca8WTfGix8sDZoLtlUgurU+1K/kBDjexb0i/z7Ekgh0EL/b96BsgWMDGY0G
 49yrPZ5Rc4JC4NKVjnJc5Z0UXJ9fWS7ho35+jZr2L07saojhxWDVQ5lVahyeKOqgBLr8oEcqjLdV/
 43UJ9tUXkGYm004DZaClr3R1X1CQWH50KkRw==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=cs.stanford.edu
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cs.stanford.edu header.i=@cs.stanford.edu
 header.a=rsa-sha256 header.s=cs2308 header.b=o0UmvbPC
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix packet corruption due
 to extraneous page flip
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
X-Rspamd-Queue-Id: A34DE4FC19F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[cs.stanford.edu : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ouster@cs.stanford.edu,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 8, 2026 at 2:55=E2=80=AFPM Jacob Keller <jacob.e.keller@intel.c=
om> wrote:
>
> On 5/7/2026 7:37 PM, John Ousterhout wrote:
> > Correct: this patch only applies to the ice driver before its conversio=
n.
> >
> > The patch applies to versions 6.18.27 and 6.12.86. I believe the bug
> > may also be present in 6.6.137, but the code has a slightly different
> > structure there (the function ice_put_rx_mbuf doesn't yet exist in
> > that version) so the patch would need to be reworked a bit.
> >
> > This situation isn't all that rare. It isn't a zero-length packet that
> > triggers it; it seems to happen if a packet uses every available byte
> > in a buffer, ending precisely at the end of the buffer. When this
> > happens, the NIC seems to generate an extra zero-length "buffer". This
> > happens quite frequently (thousands of times per second in some of my
> > workloads).
> >
> > What keeps corruption from happening constantly is that there is only
> > a problem if the "other half" of the buffer page is still active when
> > the 0-length buffer is received from the NIC. I suspect that with TCP
> > this is pretty unlikely: packet buffers get recycled quickly. If the
> > other half is not in use, then it doesn't matter whether the page gets
> > "flipped" while processing the 0-length buffer. I ran into this
> > problem because I was testing Homa under conditions that caused some
> > packet buffers to stay alive for longer periods of time.
> >
> > -John-
> Right. So I think we need to make sure the patch is cc'd to stable.
> Technically it doesn't strictly follow any of the 3 rules, but its
> closest to 3 with a clarification that there is no upstream equivalent
> due to the libeth Rx refactor.

It looks like messages on this chain have been cc-ed to stable since
your first message. Is that sufficient, or do I need to resubmit (e.g.
v3) with stable in the cc list?

-John-
