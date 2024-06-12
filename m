Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E506905F4F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 01:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E6F28142A;
	Wed, 12 Jun 2024 23:39:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4gq7qU4Fup_z; Wed, 12 Jun 2024 23:39:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7820B8135E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718235586;
	bh=5Ufu0W91jnsNezwewI2l9W+821zBoZ5SoHwqtrU6i9c=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vxbt5ijfmMnjuDvBEObvMk0MZqEAXERTApW9ifhf4jtn7l2i0bL1BISf9L11eCM70
	 u2tHZFOOi7IZ1wdQQZgeS2Qnc0SY+rvRwGaenJpjwNvk+bFsnYwPB0W8oICMT1g2Kb
	 k+Ubk8dtr20k+TnDCvjkLd3eLH6HyuV3PxAk7KFdCwIF6zRmoSQ1FogHTR8fbfZSQn
	 pj+W/LpOtr9PmKcGg4FJs87zKscVVV0oY2Lp+HOI6LuniMNEiE6r5fw19Fl2dNrfLm
	 /A+vTAoVb00Go44R7rKcSivbGd5BZ7XGMb1oTgA+yenDahYQDHVVgy07CCP2OmjTYW
	 tr6ayWFUt9SlQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7820B8135E;
	Wed, 12 Jun 2024 23:39:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A66D1BF376
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 18:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6489F81171
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 18:02:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wZsJINKTdONF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 18:02:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1035; helo=mail-pj1-x1035.google.com;
 envelope-from=decot@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 96BD880F21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96BD880F21
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96BD880F21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 18:02:23 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-2c2d25b5432so50977a91.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 11:02:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718215343; x=1718820143;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5Ufu0W91jnsNezwewI2l9W+821zBoZ5SoHwqtrU6i9c=;
 b=aFeRoN8cLF4hD0Att4TznCezsBQfydYE2+GrlLCtxQ2RaYJSQ9dHGUWWZTNkKY0HYx
 IDh7zu+/ePoeBiYZAlWatPPqtc7ucDGyMrbMcGZboH+4j5Vhdld34nIxcWtYYg80LpO5
 rpJHwwYUW560A9m4gK/5KLkDuLrRWpFxwBeETM/87KLkKj0kL8jOHLYeyTUk3Vr27g38
 AwZlZCjAHgFTSSEWB5Nlr71TW0aFu73X79SRQOc64d8Q5/SYflPWIxtqKnn8dyLJpgYX
 uaoZJ6rB7c40BeoP5qHpU+QH2HSs2g1YMopPOTS34DGLp6j5PCmVsp36ziNUD7dxJgHm
 9xyg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWInexIpDryESYM9EsXcffWiJf0A0jELlvFI24U6Vm3eNW/aiiNUuAOgHH8GDRV2K6K1Y+Gr06c22Sd7qBJ6HIh5noaFLlz/Jgv+fv8SxDeiA==
X-Gm-Message-State: AOJu0YwMB8gp/M3BBeh0r3sWhsxIejNbCyZBGzzjFxC7lq9IpDjJFprq
 4cE1mB5ws1rPnFXwsT952r0jadRNJ5Fiq2ajB+/I+dnhNtc3bIPHFIH+Dftw8E9k8rGVjBWwQgC
 gEaB3+MUCq18H5e5dOY3hcwaK07cjZQ43Hncp
X-Google-Smtp-Source: AGHT+IEQwSzrDmLBTYPaHrIuq3cIAvrEiVTrsKcSF+fDe6ObdM1YZpL6g0QOq5B1PpcsbHjvxfYSIj3EXYa3aj1ShS8=
X-Received: by 2002:a17:90a:f197:b0:2c2:7e0e:4cba with SMTP id
 98e67ed59e1d1-2c4a770390cmr2462768a91.49.1718215342412; Wed, 12 Jun 2024
 11:02:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240603184714.3697911-1-joshua.a.hay@intel.com>
 <b30f34a1-48d6-4ff4-b375-d0eef5308261@gmail.com>
 <cc76768c-d8d4-4c07-93c1-807f3159b573@intel.com>
 <641b439b-2bc0-4f2b-9871-b522e1141cd1@intel.com>
In-Reply-To: <641b439b-2bc0-4f2b-9871-b522e1141cd1@intel.com>
From: David Decotigny <ddecotig@google.com>
Date: Wed, 12 Jun 2024 11:01:46 -0700
Message-ID: <CAG88wWaQaCf1rZAdh-5iWLYWOMfj3o6jtc0J=0_3pPDzP0Cyww@mail.gmail.com>
To: Josh Hay <joshua.a.hay@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 12 Jun 2024 23:39:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1718215343; x=1718820143; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5Ufu0W91jnsNezwewI2l9W+821zBoZ5SoHwqtrU6i9c=;
 b=3/ivMAdsLGwR5UnLPqFfwfgGkV1R5t3/sGUxUxeEXDX2XGCVOgaBQHGC/HZydLzcWy
 dC5swSc52Kg1fBdGEGJZ94j1kQ8TW7lnOXM2VJhc5ce+QEmyuHr1HTUKq+91n3nUQN/g
 fDzAF1jnq2q/ioHrDZHQe4mMqZh/2pjsXE4eil3LpI/148Hg9NAd27hJJ2zyiNI1EheF
 4HLuJhq1CVdJbcXnnpQG//7eHk1HUTLtnqYW6RhOayYZmUvs7IOD//4xlC67qS4tLj4Z
 6I2gDOhASulq9KQGfVyPPxK+XEgTyOYXpX0rSpMZd9jutnC6hjhkGglW2pZg3BbAO3ZM
 xwYA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=3/ivMAds
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: extend tx watchdog
 timeout
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 11, 2024 at 11:13=E2=80=AFAM Josh Hay <joshua.a.hay@intel.com> =
wrote:
>
>
>
> On 6/11/2024 3:44 AM, Alexander Lobakin wrote:
> > From: David Decotigny <ddecotig@gmail.com>
> > Date: Tue, 4 Jun 2024 16:34:48 -0700
> >
> >>
> >>
> >> On 6/3/2024 11:47 AM, Joshua Hay wrote:
> >>>
> >>> There are several reasons for a TX completion to take longer than usu=
al
> >>> to be written back by HW. For example, the completion for a packet th=
at
> >>> misses a rule will have increased latency. The side effect of these
> >>> variable latencies for any given packet is out of order completions. =
The
> >>> stack sends packet X and Y. If packet X takes longer because of the r=
ule
> >>> miss in the example above, but packet Y hits, it can go on the wire
> >>> immediately. Which also means it can be completed first.  The driver
> >>> will then receive a completion for packet Y before packet X.  The dri=
ver
> >>> will stash the buffers for packet X in a hash table to allow the tx s=
end
> >>> queue descriptors for both packet X and Y to be reused. The driver wi=
ll
> >>> receive the completion for packet X sometime later and have to search
> >>> the hash table for the associated packet.
> >>>
> >>> The driver cleans packets directly on the ring first, i.e. not out of
> >>> order completions since they are to some extent considered "slow(er)
> >>> path". However, certain workloads can increase the frequency of out o=
f
> >>> order completions thus introducing even more latency into the cleanin=
g
> >>> path. Bump up the timeout value to account for these workloads.
> >>>
> >>> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration=
")
> >>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> >>> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> >>> ---
> >>>    drivers/net/ethernet/intel/idpf/idpf_lib.c | 4 ++--
> >>>    1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >>
> >> We tested this patch with our intensive high-performance workloads tha=
t
> >> have been able to reproduce the issue, and it was sufficient to avoid =
tx
> >> timeouts. We also noticed that these longer timeouts are not unusual i=
n
> >> the smartnic space: we see 100s or 50s timeouts for a few NICs, and
> >
> > Example?

a sample:

drivers/net/ethernet/cavium/thunder/nic.h:#define
NICVF_TX_TIMEOUT                (50 * HZ)
drivers/net/ethernet/cavium/thunder/nicvf_main.c:
netdev->watchdog_timeo =3D NICVF_TX_TIMEOUT;
drivers/net/ethernet/marvell/octeontx2/nic/otx2_common.h:#define
OTX2_TX_TIMEOUT                (100 * HZ)
drivers/net/ethernet/marvell/octeontx2/nic/otx2_pf.c:
netdev->watchdog_timeo =3D OTX2_TX_TIMEOUT;
drivers/net/ethernet/marvell/octeontx2/nic/otx2_vf.c:
netdev->watchdog_timeo =3D OTX2_TX_TIMEOUT;
drivers/net/ethernet/amazon/ena/ena_netdev.c:
netdev->watchdog_timeo =3D msecs_to_jiffies(hints->netdev_wd_timeout);

> >
> >> other NICs receive this timeout as a hint from the fw.
> >>
> >> Reviewed-by: David Decotigny <ddecotig@google.com>
> >
> > We either need to teach watchdog core to account OOOs or there's
> > something really wrong in the driver. For example, how can we then
> > distinguish if > 5 sec delay happened just due to an OOO or due to that
> > something went bad with the HW?
> >
> > Note that there are several patches fixing Tx (incl. timeouts) in my
> > tree, including yours (Joshua's) which you somehow didn't send yet ._.
> > Maybe start from them first?
>
> I believe it was you who specifically asked our team to defer pushing
> any upstream patches while you were working on the XDP series "to avoid
> having to rebase", which was a reasonable request at the time. We also
> had no reason to believe the existing upstream idpf implementation was
> experiencing timeouts (it is being tested by numerous validation teams).
> So there was no urgency to get those patches upstream. Which patches in
> your tree do you believe fix specific timeout situations? It appears you
> pulled in some of the changes from the out-of-tree driver, but those
> were all enhancements. It wasn't until the workload that David mentioned
> was run on the current driver that we had any indication there were
> timeout issues.

Some issues were observed with high cpu/memory/network utilization
workloads such as a SAP HANA benchmark.

>
> >
> > I don't buy 30 seconds, at least for now. Maybe I'm missing something.
> >
> > Nacked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>
>
> In the process of debugging the newly discovered timeout, our
> architecture team made it clear that 5 seconds is too low for this type
> of device, with a non deterministic pipeline where packets can take a
> number of exception/slow paths. Admittedly, we don't know the exact
> number, so the solution for the time being was to bump it up with a
> comfortable buffer. As we tune things and debug with various workloads,
> we can bring it back down. As David mentioned, there is precedent for an
> extended timeout for smartnics. Why is it suddenly unacceptable for
> Intel's device?
>
> >
> > Thanks,
> > Olek
>
> Thanks,
> Josh
--
David Decotigny
--
David Decotigny
