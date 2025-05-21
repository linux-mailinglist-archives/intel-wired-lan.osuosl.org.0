Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DA0ABF219
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 12:50:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3827A408A6;
	Wed, 21 May 2025 10:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KCXbJet9bZH6; Wed, 21 May 2025 10:50:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92B634081B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747824632;
	bh=M2vtiVgfR6FZgf98XhswdEOcn93NCHdD3EXICxZzTaA=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7e5YO1dm/pqPHR16v1v6w6i23+CC6N5x0KrTgH7P95HyoR8Vzg326V+ZPl0E6s9Mz
	 CbjoozMxIxUPiY4+IkoUtcfL7FqiyKK2BzQVRIqpTZqIOJA3c1vxXSRi/ZjwWbRUrC
	 h3Q0sbAMUpKQ3uKw5LnikQ3+nuprX5+sQQitfeNMuVQpJCE04F8T3OBCyLQBtqh4N+
	 Qu/OVApUXam8ribo5MJeMdddO6lrBEYULWdMDjTA5Cc5dQ0lbGCZpYEAG6A+MItymp
	 EmZysHpo1UQqIUBHsODcwwfTiRqE11UoRuj3OxmJUddieof6o3AzVk4F6TDGoDzVX1
	 H+V9yDW/CfL/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92B634081B;
	Wed, 21 May 2025 10:50:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 905E011B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 10:50:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7634540973
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 10:50:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IBINY03Zjjw0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 10:50:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62f; helo=mail-ej1-x62f.google.com;
 envelope-from=jaroslav.pulchart@gooddata.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7F3B34096F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F3B34096F
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F3B34096F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 10:50:29 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-ad545e74f60so765592266b.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 03:50:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747824627; x=1748429427;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=M2vtiVgfR6FZgf98XhswdEOcn93NCHdD3EXICxZzTaA=;
 b=ra/vuH4N2QXq/2EZ78o+He40Jd/eg2/KhpVK94kjJoWTuaEu26ZHdPrUeu0+EDB+G0
 WLD4Qx5g0X5h8M0oTShCPpgE1YYleCEJo3NUUG+i+P5QIpyg/AOoCct3BaS/+5Mamsz6
 /ZtsCZ3zjiRvOkq3W6KO+WfANgE/dF4Z4AodqvENL0oyyxWdBZRy7SwfOUEqWbDinpg1
 sq+J6+Y3ule19k+fKyMJ56N2z6GFU1VYUESg6WoThO89kEwHL/Rkm7gLQK37QMWVbbnY
 9C/cQ7gov/i6eRwFGPSyzB9jMhJIs8btUs1tLYd7mdnqmoo4bDpPDLjCScBCpFiNs+Gp
 7FCQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU7eyRMUxIeJ24UjxFzRuGjTyM99Ou9uIcKznp1XtmyuGkAaaxHeBVb5Is6oRnoPv66NL4dp5jrHTfcCmLdcm0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxTaLGc8NRoYhpUDOD1OuZNQlwkq/B2lJmkL4iIKom95pO6w0Ep
 4N/RMV7ZPnH8SAaavSOQYf6zWXk2yatHt846AekE4bwcxdUxQ03V4bOZHXqMBI32Dk2hp9q2WBJ
 hr/fTVcKGlvl9LSODiyjZ9cWNx/w/xKvG7SQ7tWED
X-Gm-Gg: ASbGncvG2Ifa28ZNVA3RWPH3KQce/D7nQ+AKv2dX2RUSUMtFnyVUjHDYHGIqL3nVKzC
 UCijbidPScqVDPXu3r8QPw9kqMLSMN+jrrQqF755qsHA26fZrbQkItg5M3I29ddKV5N39Eklrcy
 qurCIfdDIu5wbsPoYqHAnsZvd3adnB5qHmsQ==
X-Google-Smtp-Source: AGHT+IFn4M467pvwWvYeEw98IU4Dc2GTeW2Js4z67oBu89Sg7yvTZK/pGdM21txGydc1ZTRTFG2e55xgFbzF1unShc4=
X-Received: by 2002:a17:906:1dc5:b0:ad5:43de:cda7 with SMTP id
 a640c23a62f3a-ad543ded27cmr1146889666b.61.1747824627327; Wed, 21 May 2025
 03:50:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Wed, 21 May 2025 12:50:01 +0200
X-Gm-Features: AX0GCFtZfcKm6dgoe5vWiOgtcBl87bqlfdi0XwVIbm4e2i0w3XJB8ODLcpCFOUs
Message-ID: <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Damato,
 Joe" <jdamato@fastly.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, 
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>, "Dumazet,
 Eric" <edumazet@google.com>, 
 "Zaki, Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>
Cc: Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, 
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google; t=1747824627; x=1748429427; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=M2vtiVgfR6FZgf98XhswdEOcn93NCHdD3EXICxZzTaA=;
 b=inZMDosUfQ2zZix7Y7f/krRzeg5n94CFwCTLxuXPaZzqadkPivqRLckUhxygki4uM0
 BP3Vq8dx/9t2mu+nGJK3iSI/8N8e88V26lGD93jYHiYzF01w8bSi4H25iBNIJaKDUxOF
 uP8Fu/SKEuiNu6++ECht+voxQcBBoSXzc+5dY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gooddata.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gooddata.com header.i=@gooddata.com header.a=rsa-sha256
 header.s=google header.b=inZMDosU
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

=C4=8Dt 17. 4. 2025 v 19:52 odes=C3=ADlatel Keller, Jacob E
<jacob.e.keller@intel.com> napsal:
>
>
>
> > -----Original Message-----
> > From: Jakub Kicinski <kuba@kernel.org>
> > Sent: Wednesday, April 16, 2025 5:13 PM
> > To: Keller, Jacob E <jacob.e.keller@intel.com>
> > Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>; Kitszel, Przemy=
slaw
> > <przemyslaw.kitszel@intel.com>; Damato, Joe <jdamato@fastly.com>; intel=
-wired-
> > lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Igor Raits <igor@gooddata.com>; Daniel Se=
cik
> > <daniel.secik@gooddata.com>; Zdenek Pesek <zdenek.pesek@gooddata.com>;
> > Dumazet, Eric <edumazet@google.com>; Martin Karsten
> > <mkarsten@uwaterloo.ca>; Zaki, Ahmed <ahmed.zaki@intel.com>; Czapnik,
> > Lukasz <lukasz.czapnik@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes wit=
h ICE
> > driver after upgrade to 6.13.y (regression in commit 492a044508ad)
> >
> > On Wed, 16 Apr 2025 22:57:10 +0000 Keller, Jacob E wrote:
> > > > > And you're reverting just and exactly 492a044508ad13 ?
> > > > > The memory for persistent config is allocated in alloc_netdev_mqs=
()
> > > > > unconditionally. I'm lost as to how this commit could make any
> > > > > difference :(
> > > >
> > > > Yes, reverted the 492a044508ad13.
> > >
> > > Struct napi_config *is* 1056 bytes
> >
> > You're probably looking at 6.15-rcX kernels. Yes, the affinity mask
> > can be large depending on the kernel config. But report is for 6.13,
> > AFAIU. In 6.13 and 6.14 napi_config was tiny.
>
> Regardless, it should still be ~64KB even in that case which is a far cry=
 from eating all available memory. Something else must be going on....
>
> Thanks,
> Jake

Hello

Some observation, this "problem" still exists with the latest 6.14.y
and there must be multiple issues, the memory utilization is slowly
going down, from 3GB to 100MB in 10-20days. at home NUMA nodes where
intel x810 NIC are (looks like some memory leak related to
networking).

So without the revert the kawadX usage is observed asap like till
1-2d, with revert of mentioned commit kswadX starts to consume
resources later like in ~10d-20d later. It is almost impossible to use
servers with Intel X810 cards (ice driver) with recent linux kernels.

Were you able to reproduce the memory problems in your testbed?

Best,
Jaroslav
