Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGbWE6oHp2k7bgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:09:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A401F3515
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:09:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C89661066;
	Tue,  3 Mar 2026 16:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mo5FpiE0wzvq; Tue,  3 Mar 2026 16:09:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFA6B6118E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772554150;
	bh=p3nxPGPXJ9kM107qxwULGc9EWRcV8lTjov+OmhiADXs=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TOFH2mArVCiS6Z5gtcBKfQXxfPHqO+/R5KlfaoduwSvoG6gUQZI43W9bwlYdnHMg8
	 tjGPINZS4xJNBEUT2etxOCZDoe9NhzarNTAzWuYqw9zvqw4jS0Qsn1KCn9q2b/HOvn
	 JRx0gfaZ/ZpLkjS6XbC8jPBNPJnVYwexzzKpUeBd9UbvhMdY00hDQlLoX2RRW3jyPM
	 NXU52lavTTorv4K9bEVIPCfjzTgRwcwql7wX09qh9n7NWGKfj+Es3zC5RvJymYn76O
	 JRF33ecCUTUB0haYUuvV0cD+TNETSSeq3C9UX5lFqypifkk3KMUPVLU5iW4I/nbsvF
	 lBD9pdla4Iatw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFA6B6118E;
	Tue,  3 Mar 2026 16:09:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 09A5F25B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EFD51822E1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:09:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A4dsIZ0lU_vO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 16:09:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=mchehab+huawei@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C342E822D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C342E822D5
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C342E822D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:09:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1F48060008;
 Tue,  3 Mar 2026 16:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA410C116C6;
 Tue,  3 Mar 2026 16:09:05 +0000 (UTC)
Received: from localhost ([::1]) by mail.kernel.org with esmtp (Exim 4.99.1)
 (envelope-from <mchehab+huawei@kernel.org>)
 id 1vxSIx-00000007ZYP-2Ep3; Tue, 03 Mar 2026 17:09:03 +0100
Date: Tue, 3 Mar 2026 17:09:02 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Jonathan Corbet <corbet@lwn.net>, Kees Cook
 <kees@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, Shuah Khan
 <skhan@linuxfoundation.org>
Message-ID: <20260303170902.1ced0c3d@localhost>
In-Reply-To: <IA3PR11MB89867A79259D027E855F38DAE57FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1771408406.git.mchehab+huawei@kernel.org>
 <33d214091909b9a060637f56f81fb8f525cf433b@intel.com>
 <20260303155310.5235b367@localhost>
 <IA3PR11MB89867A79259D027E855F38DAE57FA@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772554145;
 bh=drpuhiPjMSKuQQ4zMinEz1gBi4DieQ5gfQ9BPqJNbdw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kc8DFsSgeh3ZY2gVSJDdKiVI33Y8kR3BO0df8DKbJP6N3RHMmOcjAOCQq5KfK/2aI
 MxEVE2UWtuHn+AAfZd5gLWI0IgxcvArtoKoaiYALvNNszeKyZhnhoJ8exuB3Gr/1k3
 vVxPMBr/PGL+lnCNXC39hpj4zXUtANAI7H/hj/57F1mBNF7gHWxfzqhcmECll9ycoU
 eqsXDTAmWtXlLABPrl2PhNwkz7R3269sX07ObMP1cb4fzq1Rga/xP/mBmOLryu+9Xh
 DVWJs8Yd06/M3e/amonIdRt/wIebngyJ5dwRFx/C5N5CBWy034gpYikUh8t8UMAfSs
 ShX3qLjkfcLZQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=kc8DFsSg
Subject: Re: [Intel-wired-lan] [PATCH 00/38] docs: several improvements to
 kernel-doc
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
X-Rspamd-Queue-Id: 57A401F3515
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:jani.nikula@linux.intel.com,m:aleksander.lobakin@intel.com,m:corbet@lwn.net,m:kees@kernel.org,m:mchehab@kernel.org,m:linux-doc@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:gustavoars@kernel.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TAGGED_FROM(0.00)[huawei];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mchehab@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

On Tue, 3 Mar 2026 15:12:30 +0000
"Loktionov, Aleksandr" <aleksandr.loktionov@intel.com> wrote:

> > -----Original Message-----
> > From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > Sent: Tuesday, March 3, 2026 3:53 PM
> > To: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Jonathan
> > Corbet <corbet@lwn.net>; Kees Cook <kees@kernel.org>; Mauro Carvalho
> > Chehab <mchehab@kernel.org>; intel-wired-lan@lists.osuosl.org; linux-
> > doc@vger.kernel.org; linux-hardening@vger.kernel.org; linux-
> > kernel@vger.kernel.org; netdev@vger.kernel.org; Gustavo A. R. Silva
> > <gustavoars@kernel.org>; Loktionov, Aleksandr
> > <aleksandr.loktionov@intel.com>; Randy Dunlap <rdunlap@infradead.org>;
> > Shuah Khan <skhan@linuxfoundation.org>
> > Subject: Re: [PATCH 00/38] docs: several improvements to kernel-doc
> > 
> > On Mon, 23 Feb 2026 15:47:00 +0200
> > Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >   
> > > There's always the question, if you're putting a lot of effort into
> > > making kernel-doc closer to an actual C parser, why not put all that
> > > effort into using and adapting to, you know, an actual C parser?  
> > 
> > Playing with this idea, it is not that hard to write an actual C
> > parser - or at least a tokenizer. There is already an example of it
> > at:
> > 
> > 	https://docs.python.org/3/library/re.html
> > 
> > I did a quick implementation, and it seems to be able to do its job:

...

> 
> As hobby C compiler writer, I must say that you need to implement C preprocessor first, because C preprocessor influences/changes the syntax.
> In your tokenizer I see right away that any line which begins from '#' must be just as C preprocessor command without further tokenizing.

Yeah, we may need to implement C preprocessor parser in the future,
but this will require handling #include, with could be somewhat
complex. It is also tricky to handle conditional preprocessor macros,
as kernel-doc would either require a file with at least some defines
or would have to guess how to evaluate it to produce the right
documentation, as ifdefs interfere at C macros.

For now, I want to solve some specific problems:

- fix trim_private_members() function that it is meant to handle
  /* private: */ and /* public: */ comments, as it currently have
  bugs when used on nested structs/unions, related to where the
  "private" scope finishes;

- properly parse nested struct/union and properly pick nested
  identifiers;

- detect and replace function arguments when macros with multiple 
  arguments are used at the same prototype.

Plus, kernel-doc has already a table of transforms to "convert"
the C preprocessor macros that affect documentation into something
that will work.

So, I'm considering to start simple, for now ignoring cpp, addressing
the existing issues. 

> But the real pain make C preprocessor substitutions IMHO

Agreed. For now, we're using a transforms list inside kernel-doc for
such purpose. So, those macros are manually "evaluated" there, like:

	(KernRe(r'DEFINE_DMA_UNMAP_ADDR\s*\(' + struct_args_pattern + r'\)', re.S), r'dma_addr_t \1'),

This works fine on trivial cases, where the argument is just an ID,
but there are cases were we use macros like here:

    struct page_pool_params {
	struct_group_tagged(page_pool_params_fast, fast,
		unsigned int	order;
		unsigned int	pool_size;
		int		nid;
		struct device	*dev;
		struct napi_struct *napi;
		enum dma_data_direction dma_dir;
		unsigned int	max_len;
		unsigned int	offset;
	);
	struct_group_tagged(page_pool_params_slow, slow,
		struct net_device *netdev;
		unsigned int queue_idx;
		unsigned int	flags;
    /* private: used by test code only */
		void (*init_callback)(netmem_ref netmem, void *arg);
		void *init_arg;
	);
    };

To handle it, I'm thinking on using something like this(*):

	CFunction('struct_group_tagged'), r'struct \1 { \3 } \2;')

E.g. teaching kernel-doc that, when:

	struct_group_tagged(a, b, c)

is used, it should convert it into:

	struct a { c } b;

which is basically what this macro does. On other words, hardcoding
kernel-doc with some rules to handle the cases where CPP macros
need to be evaluated. As there aren't much cases where such macros affect
documentation (on lots of cases, just drop macros are enough), such
approach kinda works.

(*) I wrote already a patch for it, but as Jani pointed, perhaps
    using a tokenizer will make the logic simpler and easier to
    be understood/maintained.

-- 
Thanks,
Mauro
