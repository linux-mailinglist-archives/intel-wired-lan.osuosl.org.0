Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02250AE8F70
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 22:25:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D91F61639;
	Wed, 25 Jun 2025 20:25:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zob7NRXicB6r; Wed, 25 Jun 2025 20:25:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 980C061631
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750883155;
	bh=ylxCpTUuN7sOcpqB+lMQrdkoP/CMdeKpEQdi2hpMpHk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OW9iuo1XCTm+202fOMNzh1F/O8RCI7KiFlRdZ3d95HnDryQnnuyr7R97/OUShZqQh
	 pU91yFrtXQ3jTtQNvVyfU46dnMjkyEOeH+CkrAtcWGVCQ4WqrbvTYPKuv6X3bbO/fk
	 0DKU+JjFaRgGL20lzIQ6qosVO8V+mZjXIR97UUNOmPsv8DU4y3HGukGBrY+Dk5F3V9
	 l+NHtrutWPMQQ1qc10CJf8Y9mh+tpAXvupnJagWDgaNVp5NAQztm2SAw7jlUFKAROp
	 ZSQ1EhnAUQMxXBsahnlNxqf9PEY+yesQuNfRT03MoBliYZEtycgNW1lOg+a3KEkm+B
	 NUKKh1lJAsm4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 980C061631;
	Wed, 25 Jun 2025 20:25:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D000154
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 20:25:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36AE8400FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 20:25:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U52-NOIRai67 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 20:25:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7ED29400A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ED29400A5
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7ED29400A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 20:25:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E55E45C4239;
 Wed, 25 Jun 2025 20:23:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A31B6C4CEEA;
 Wed, 25 Jun 2025 20:25:46 +0000 (UTC)
Date: Wed, 25 Jun 2025 13:25:45 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Damato, Joe"
 <jdamato@fastly.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, Igor
 Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, Zdenek
 Pesek <zdenek.pesek@gooddata.com>
Message-ID: <20250625132545.1772c6ab@kernel.org>
In-Reply-To: <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750883147;
 bh=ylxCpTUuN7sOcpqB+lMQrdkoP/CMdeKpEQdi2hpMpHk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=j2wN1DZD03yG5kovQ3urG3qKoSG7fdnUM01iTOIvpQgmmV1mnIUFEuIoO6pwZd8Fr
 br/6jjkLQuj1J6OB4nnqwJrD9M8ArNJuYGVfIAGQdu5GNQHbZHp4jaiwyFg7UvB8kw
 14+1xPoZZZAKrgIlHzSlGy9OCX2hxaAkprM4VWMdDMRVC9ewvnHh/y/jVn/cxFPo2S
 6cXF3abnhLdz5rD/Z3klTpIW5cgyOwgVWN06BLJOkWI9FIbZLLDARp6tZKWJ+Mb+NP
 yUZfze1cRDizeNmyF+drEb7Qpfnn4C3h3tttlQb64Ptfe8y2VzDBXQs7NqX29YzWRI
 mASN6oMOrziEQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=j2wN1DZD
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

On Wed, 25 Jun 2025 19:51:08 +0200 Jaroslav Pulchart wrote:
> Great, please send me a link to the related patch set. I can apply them in
> our kernel build and try them ASAP!

Sorry if I'm repeating the question - have you tried
CONFIG_MEM_ALLOC_PROFILING? Reportedly the overhead in recent kernels=20
is low enough to use it for production workloads.

> st 25. 6. 2025 v 16:03 odes=C3=ADlatel Przemek Kitszel <
> przemyslaw.kitszel@intel.com> napsal: =20
>=20
> > On 6/25/25 14:17, Jaroslav Pulchart wrote: =20
> > > Hello
> > >
> > > We are still facing the memory issue with Intel 810 NICs (even on lat=
est
> > > 6.15.y).
> > >
> > > Our current stabilization and solution is to move everything to a new
> > > INTEL-FREE server and get rid of last Intel sights there (after Intel=
's
> > > CPU vulnerabilities fuckups NICs are next step).
> > >
> > > Any help welcomed,
> > > Jaroslav P.
> > >
> > > =20
> >
> > Thank you for urging us, I can understand the frustration.
> >
> > We have identified some (unrelated) memory leaks, will soon ship fixes.
> > And, as there were no clear issue with any commit/version you have
> > posted to be a culprit, there is a chance that our random findings could
> > help. Anyway going to zero kmemleak reports is good in itself, that is
> > a good start.
> >
> > Will ask my VAL too to increase efforts in this area too.

