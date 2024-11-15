Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1405A9CF444
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 19:48:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97FD6409AD;
	Fri, 15 Nov 2024 18:48:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yaenyLLhgxq0; Fri, 15 Nov 2024 18:48:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83E9640911
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731696503;
	bh=KtMVxTTOMI0KU4wbIFDAADxkrsXz/EzCNgQuQP9tN9w=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7mODpyFc9of0LcSNqgn2gDwZujpjbwHxV0p9rTI6pNAuMbLNEJh86tkwh0Xnwto08
	 tezvAVlj14b2sj35XRWiZYzVsK91wlg45Kxp4lbw1E87U8t51P87YrjFeJjRqXO8ed
	 EWSOgite4rw5311n3wty+oic+t+RDQegetCFhM7vVXw9C7ykZ2LfMtxiQt9VGx/biJ
	 yc579zP8yfAQ1/WfrL/AUnUZtjnjWESZblvJO6zpmmCF1VjmSybpMcuVtVYxjbpaef
	 lufyQk7IA9v2A05wU0EFrJ1i3Woe+lEOJWypFSCBkXpi64AANMLylgkyoZs01xRnHC
	 s+SuTSwLHW+Hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83E9640911;
	Fri, 15 Nov 2024 18:48:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 28AEF1EB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 18:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0901440965
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 18:48:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6TauI3I2HE4i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 18:48:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=jbrandeb@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EB8074097E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB8074097E
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB8074097E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 18:48:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9571C5C653D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 18:47:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5422BC4CEDB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 18:48:18 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id
 4fb4d7f45d1cf-5cf7b79c6a6so3126977a12.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 10:48:18 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCVxjy3O4L8/+whHWigXYjw8Mxo88FkEMQovTLaomGdfKr+/6CoaYsUYMplt9pfn0TJ7fXyFA4O83rbr8eDGGbg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxKR5otLi4XlxdCXz/00SIrUrToyxXJ33JLtr3/y9bxtCHfo2pM
 KND+GGNqiwDohk4NxAEtJvILy5rhOu6LSr9VrGGGkVd4woOZxaAyIUm3xFqhoS3OJFh6343ovSI
 lrzqGtgyLma527RG+ry12D/76KvU=
X-Google-Smtp-Source: AGHT+IGuYUD5/FMtZKhUiG0CMehc0zX1bb110lvnVpPNYCetY7IHL2qPJR1PfOavhEJt3hPwfWl83EdtZB90GphgVbc=
X-Received: by 2002:a17:907:3f03:b0:a9a:a3a:6c48 with SMTP id
 a640c23a62f3a-aa20763b6ffmr788963066b.2.1731696497126; Fri, 15 Nov 2024
 10:48:17 -0800 (PST)
MIME-Version: 1.0
References: <20241114000105.703740-1-jbrandeb@kernel.org>
 <7c63c3db-072c-4f44-a487-f7e7de9f39e4@intel.com>
In-Reply-To: <7c63c3db-072c-4f44-a487-f7e7de9f39e4@intel.com>
From: Jesse Brandeburg <jbrandeb@kernel.org>
Date: Fri, 15 Nov 2024 10:48:05 -0800
X-Gmail-Original-Message-ID: <CAEuXFEyryE_Cr+=DEzPPZFeOXLn5QpwL57nyxkQ=Eo6eTE3eyQ@mail.gmail.com>
Message-ID: <CAEuXFEyryE_Cr+=DEzPPZFeOXLn5QpwL57nyxkQ=Eo6eTE3eyQ@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: jbrandeburg@cloudflare.com, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, Dave Ertman <david.m.ertman@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, 
 Pawel Chmielewski <pawel.chmielewski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731696498;
 bh=KtMVxTTOMI0KU4wbIFDAADxkrsXz/EzCNgQuQP9tN9w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hI47qxyPOCTYej+zgfbXNd8qUfSgBy9uSxAjFPMrmWbCeZSoULle4oJCXKhfw9gnS
 lvuT6kXamKRcNdInix5yv74YmeNjwG2YNOnPa/sSDcu6QBBbqHEII3MLl3Wp0tqZEa
 JXGLh/J4fqKcw4QwbOZDe7pAnYlvBNsOrRy1Os4qF56GfwEoj8vnrP1Sk8Wx23wR0b
 KiFiBQ53MVPrT2zo4KRoAUYUWxGm/GVNG8c1NMmTNyQvqhS+ipTF1a32jpWZilDVf2
 QEIn76RRbZEbK9P6hZIusa+tOO0CT1R6wK+BP0pbpH/3ZdXRftDKCDgxOfO6/+QSRN
 Q84WNmPe4S1XA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hI47qxyP
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: do not reserve resources
 for RDMA when disabled
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

On Fri, Nov 15, 2024 at 12:51=E2=80=AFAM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
> On 11/14/24 01:00, jbrandeb@kernel.org wrote:
> > From: Jesse Brandeburg <jbrandeb@kernel.org>
> >
> > If the CONFIG_INFINIBAND_IRDMA symbol is not enabled as a module or a
> > built-in, then don't let the driver reserve resources for RDMA.
> >
> > Do this by avoiding enabling the capability when scanning hardware
> > capabilities.
> >
> > Fixes: d25a0fc41c1f ("ice: Initialize RDMA support")
> > CC: Dave Ertman <david.m.ertman@intel.com>
> > Signed-off-by: Jesse Brandeburg <jbrandeb@kernel.org>
> > ---
>
> Hi Jesse, it's good to hear back from you :)


Hi Przemek! You too.

> we are already working on resolving the issue of miss-allocating
> too many resources (would be good to know what beyond MSI-x'es
> you care about) for RDMA in the default (likely non-RDMA heavy) case.
> Here is a series from Michal that lets user to manage it a bit:
> https://lore.kernel.org/netdev/20241114122009.97416-3-michal.swiatkowski@=
linux.intel.com/T/

I agree, but that whole series is far too big to backport to stable, right?

> and we want to post another one later that changes defaults from the
> current "grab a lot when there are many CPUs" policy to more resonable

I'm looking forward to those series, and in fact had been looking to
backport one of the patches from michal's series, but found that for
us at least with RDMA disabled this limit seemed far simpler, and also
I doubt it will conflict with the more complicated work of managing
features when all are enabled.

Please see my other reply to dave (and yes I'm replying from two
different accounts, as I'm figuring out the best way to work here at
my new job.)
