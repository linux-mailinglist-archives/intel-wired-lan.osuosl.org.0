Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA14AF9E95
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jul 2025 09:02:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E1ED40CF6;
	Sat,  5 Jul 2025 07:02:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3xwOlM_t08Hz; Sat,  5 Jul 2025 07:02:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF1C040BFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751698919;
	bh=4+B/RDwnbgv2srEjK10waQf0Cyf424fDE1uZHA2I9lg=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MmfI+FqJxl9gJowXwhvq6NB9hYVVeTL6w/cp2vnit27NnR7Q2MdcvHoZXDKdAztw3
	 rQXfYZtaREbVgoKlBvUWPsDHkPMMbskupQzJHoLOFyltih+xOjSV6K/HVFW/Ycy+Ls
	 NC32tchNczL413oTSh0NoCNnr0qLGQ/gyzbuwQyKRxE+9KpDUSvcB7DMv4CL1Zq8LW
	 gJhtRwIAg6HK3dayWWeXYSzkc1j7uXNJaxmlqKGB7OGXjzDFQt+5EONoytbt1vDoqA
	 myGT29ynuMg16mKABjyim1bg/NXQSdaX6usHGgi2Gnk4sfpGIog7gxBR8tdrnZXlVS
	 nCBr96RlLYX7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF1C040BFA;
	Sat,  5 Jul 2025 07:01:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CC3D67AB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jul 2025 07:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE0DB820E8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jul 2025 07:01:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TbF06AG73GuY for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Jul 2025 07:01:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::529; helo=mail-ed1-x529.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9CB35820E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CB35820E7
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9CB35820E7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jul 2025 07:01:55 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-60c5b8ee2d9so3180606a12.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 05 Jul 2025 00:01:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751698913; x=1752303713;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=4+B/RDwnbgv2srEjK10waQf0Cyf424fDE1uZHA2I9lg=;
 b=XBPU2jSk9/tkYZA3juxpVHehUplnhxl/TJu8BQotLpVXQUSSZxJRj4OOtqSMBjSp/A
 HO4jYcCFDbRIyrButylfIZoc6Uruhvx4M2wNEI8uVXQEm9tArE189hXf6ycg4gbnhcAh
 PZkdCH0l1hOfkpSp/mP3VziJHpxs5GM8kC6Nu3xx7OaieLpYz61T9JDPQVPtQYg2FBt1
 iVly5uazj4zqw5feXMpMyNIvXyruWC9vGzn+sP+II12hEvMVAJ4+kOpz4u9MpPAR1Fed
 ylq1borwohs9neuCHAbYoXXbwHLnZ8dv+p2aCiwkUHBn+QD15M5LZOHZxHWC7+MWJhNy
 AeUQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdglXG6P6Gpzznf5xfKTXxZuM1yKKEq8qQaQYba8tXn/UtJQD5jcbTW75gDMmtZf2KZBb/Fq/eB8NIT8lutas=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyzRv9qT9AlU62FNQAID6Fi/PZ/X07XrfVqB11eHefDFzlV81IX
 4KeiRcnKSoS9gwdmEbK6hTTUnIU0w73KnM8dofkv6qzJNn+RqRzXu6ZpXNn8Zf8s5vO4Bjv7+s5
 qK5RjR4BalQPN0BrBCPVOPWtCuDz6jr8BNqShSokm
X-Gm-Gg: ASbGnctqyZ7pb5iZGSVwwUZeKFoLyBp0bwNOcL7MTobz0QBmavUoia8s22RThoVPzPN
 HN1vKKXyYetMQpCgPC6mfby/jxzP1MnA3HCnayqD4mgjAXPqzCK0dGw9dU9sTwEWOaBYrkILGTZ
 2FZAmWnpUK79qQrKqh8RYx2Rn59eKqbiNwpbRelySs1RSF
X-Google-Smtp-Source: AGHT+IFZNGe5yhhDERjrdCMDkrJYVHRb+epjwumv6RBELYxXQX1wAeeejnpm1EGNA6u6CvCTxThS06tD3fpmLZpVlIM=
X-Received: by 2002:a17:907:d23:b0:ad8:9257:573a with SMTP id
 a640c23a62f3a-ae4107862a5mr122681966b.5.1751698913266; Sat, 05 Jul 2025
 00:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <aGgHka8Nm8S3fKQK@localhost.localdomain>
In-Reply-To: <aGgHka8Nm8S3fKQK@localhost.localdomain>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Sat, 5 Jul 2025 09:01:27 +0200
X-Gm-Features: Ac12FXz0iPXl1W6a_JIMngDrS-AC2eXoaB-V4pPDY0n9tMd_rdWNz2tfHyTkcSo
Message-ID: <CAK8fFZ6KzyfswFE=qj6pz-18QZ16swdwyFfTf=4e_0+sPLyUcg@mail.gmail.com>
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, jdamato@fastly.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, 
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1751698913; x=1752303713; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4+B/RDwnbgv2srEjK10waQf0Cyf424fDE1uZHA2I9lg=;
 b=QeDtZ97hctTXVIUiUdD8HzIQBKGu/AK7uRGOMDHORneSfcaCYn/XBqfAHrW95PwLXe
 siEJiwmkY3dENxxnjbaJ2mMxZDp+OP+rQUOWbocdhFxotQr/wLLE22wqcJpHVQ22EHnE
 BGTZU7MVGDJSiVU1mQoDnzYpODf+svPTxtR5w=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=QeDtZ97h
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

> On Mon, Apr 14, 2025 at 06:29:01PM +0200, Jaroslav Pulchart wrote:
> > Hello,
> >
> > While investigating increased memory usage after upgrading our
> > host/hypervisor servers from Linux kernel 6.12.y to 6.13.y, I observed
> > a regression in available memory per NUMA node. Our servers allocate
> > 60GB of each NUMA node=E2=80=99s 64GB of RAM to HugePages for VMs, leav=
ing 4GB
> > for the host OS.
> >
> > After the upgrade, we noticed approximately 500MB less free RAM on
> > NUMA nodes 0 and 2 compared to 6.12.y, even with no VMs running (just
> > the host OS after reboot). These nodes host Intel 810-XXV NICs. Here's
> > a snapshot of the NUMA stats on vanilla 6.13.y:
> >
> >      NUMA nodes:  0     1     2     3     4     5     6     7     8
> >  9    10    11    12    13    14    15
> >      HPFreeGiB:   60    60    60    60    60    60    60    60    60
> >  60   60    60    60    60    60    60
> >      MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453
> > 65470 65470 65470 65470 65470 65470 65470 65462
> >      MemFree:     2793  3559  3150  3438  3616  3722  3520  3547  3547
> >  3536  3506  3452  3440  3489  3607  3729
> >
> > We traced the issue to commit 492a044508ad13a490a24c66f311339bf891cb5f
> > "ice: Add support for persistent NAPI config".
> >
> > We limit the number of channels on the NICs to match local NUMA cores
> > or less if unused interface (from ridiculous 96 default), for example:
> >    ethtool -L em1 combined 6       # active port; from 96
> >    ethtool -L p3p2 combined 2      # unused port; from 96
> >
> > This typically aligns memory use with local CPUs and keeps NUMA-local
> > memory usage within expected limits. However, starting with kernel
> > 6.13.y and this commit, the high memory usage by the ICE driver
> > persists regardless of reduced channel configuration.
> >
> > Reverting the commit restores expected memory availability on nodes 0
> > and 2. Below are stats from 6.13.y with the commit reverted:
> >     NUMA nodes:  0     1     2     3     4     5     6     7     8
> > 9    10    11    12    13    14    15
> >     HPFreeGiB:   60    60    60    60    60    60    60    60    60
> > 60   60    60    60    60    60    60
> >     MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453 65470
> > 65470 65470 65470 65470 65470 65470 65462
> >     MemFree:     3208  3765  3668  3507  3811  3727  3812  3546  3676  =
3596 ...
> >
> > This brings nodes 0 and 2 back to ~3.5GB free RAM, similar to kernel
> > 6.12.y, and avoids swap pressure and memory exhaustion when running
> > services and VMs.
> >
> > I also do not see any practical benefit in persisting the channel
> > memory allocation. After a fresh server reboot, channels are not
> > explicitly configured, and the system will not automatically resize
> > them back to a higher count unless manually set again. Therefore,
> > retaining the previous memory footprint appears unnecessary and
> > potentially harmful in memory-constrained environments
> >
> > Best regards,
> > Jaroslav Pulchart
> >
>
>
> Hello Jaroslav,
>
> I have just sent a series for converting the Rx path of the ice driver
> to use the Page Pool.
> We suspect it may help for the memory consumption issue since it removes
> the problematic code and delegates some memory management to the generic
> code.
>
> Could you please give it a try and check if it helps for your issue.
> The link to the series: https://lore.kernel.org/intel-wired-lan/202507041=
61859.871152-1-michal.kubiak@intel.com/

I can try it, however I cannot apply the patch as-is @ 6.15.y:
$ git am ~/ice-convert-Rx-path-to-Page-Pool.patch
Applying: ice: remove legacy Rx and construct SKB
Applying: ice: drop page splitting and recycling
error: patch failed: drivers/net/ethernet/intel/ice/ice_txrx.h:480
error: drivers/net/ethernet/intel/ice/ice_txrx.h: patch does not apply
Patch failed at 0002 ice: drop page splitting and recycling
hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
hint: When you have resolved this problem, run "git am --continue".
hint: If you prefer to skip this patch, run "git am --skip" instead.
hint: To restore the original branch and stop patching, run "git am --abort=
".
hint: Disable this message with "git config set advice.mergeConflict false"

>
> Thanks,
> Michal
>
