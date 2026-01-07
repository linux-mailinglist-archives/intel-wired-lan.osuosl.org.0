Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B81D0CFE829
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 16:15:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44C41808CC;
	Wed,  7 Jan 2026 15:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vmBndQmYtzCN; Wed,  7 Jan 2026 15:15:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98038808D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767798954;
	bh=btRszEfDKT0eYItv1CyxkQzic7zsq25d8SD2XhT7Hog=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b0Y8x7nDipTbOnrvXuVAAW+HTIdb2RzcjJ3XpooMA1Ds7JaVfAgYvhYA3K/qN2pKC
	 wEnfsI8qDXzWEqIUD9yVPKcZPHYoxGMMqyhXdiKMXmratosMO2gLxpijjzlukUA/X7
	 oIyAbLIFnhO3igzm1e5Cl5gCzZq2gJps2IbylG7s04Opm0IQDLfw5qDTK/gzM+osny
	 wU9yuanC60vgLJasO8Btq1q+yrEcUFPXdw55x+kS81wBDGFsJgUI/BhHWVKU7lj3dt
	 6HZhkvVRwdh/zBNlTBs/N0wlCaDixPUuCTpNXcW2wCsbVUh6ayPw8czo8uHIv2szvq
	 BAjJOzcISl7WA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98038808D1;
	Wed,  7 Jan 2026 15:15:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 530C92A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 15:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 44FFF6064A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 15:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WjleTYXSWkBK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 15:15:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=robh@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9964E6063C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9964E6063C
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9964E6063C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 15:15:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1A7D7443E3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 15:15:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED358C4CEF7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 15:15:50 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id
 4fb4d7f45d1cf-6505d3adc3aso3334013a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Jan 2026 07:15:50 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXVhaLhx2O8J4uUpU7ztoCPCqMEidt3RIyLr0aYLi6x8mBBiewcfCIACZZMpb+fa9mSWhFmxoq+woj94VxGa3s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyP3WGfG6TBEy2+vLQTXdloNlTJeVLRilgnWbgBvXRKAeT/OQxx
 vnZDxy4P/10Iv9quXypSK9fgmHj1WsDVULf4PNsZg2NqkUki2fc8sKsi4DU80GwIRmTIPh9aNmh
 ntde7WiqYEPx/3KqbXkqKkvJSY5Dcgg==
X-Google-Smtp-Source: AGHT+IHTu0IXdc7TRfyMIYF+QpCpK6DkoNxBGd6TkBQLccFk0QYJOtERX/Fnx/bdwmh+ZYEKzBXy6b/YHmlBglI6/fk=
X-Received: by 2002:a05:6402:524e:b0:649:aa2b:d34e with SMTP id
 4fb4d7f45d1cf-65097e6eb29mr2485631a12.34.1767798947742; Wed, 07 Jan 2026
 07:15:47 -0800 (PST)
MIME-Version: 1.0
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-2-ivecera@redhat.com>
 <2de556f0-d7db-47f1-a59e-197f92f93d46@lunn.ch>
 <20251217004946.GA3445804-robh@kernel.org>
 <5db81f5b-4f35-46e4-8fec-4298f1ac0c4e@redhat.com>
In-Reply-To: <5db81f5b-4f35-46e4-8fec-4298f1ac0c4e@redhat.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 7 Jan 2026 09:15:36 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJoybgJTAbSjGbTBxo-v=dbYY68tT309CV98=ohWhnC=w@mail.gmail.com>
X-Gm-Features: AQt7F2pnzqJSJSW6Fy5D7MtV-9H8Kn_aFTARkU6M2TNlskQ2igYg-G95nQ8JUTs
Message-ID: <CAL_JsqJoybgJTAbSjGbTBxo-v=dbYY68tT309CV98=ohWhnC=w@mail.gmail.com>
To: Ivan Vecera <ivecera@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1767798951;
 bh=btRszEfDKT0eYItv1CyxkQzic7zsq25d8SD2XhT7Hog=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PZFG6rArI1rafjM9p6K9XVRoeDbGE0yi5XjjCAeEvEaG13rUbG/7Z9mc+ZWX59bI7
 BFH+3NMRrYPZbNk8wgRe/Egp7Hij8SNiea3qoWD7PibntexGynn44NNxe/Qlo6WHzt
 Q5z8h9NXgyC+pHIWhSyHZdfKqo3UvevCgYmKoRqIaSjp/8MC0/FArr5nfh73aB5ZAf
 KHr6XJfkxp4y8OKHi1pOQ/LytemiMFxMSZHix6l2hM5vKD13Di0gO0gQSQCKFApRBH
 qlXODmswjXKEhyjCeByTEt1CKH3kN75LW8hirOBr1UlVz8hqhW3HR0O2G7HYRYveTS
 YBW1LVXejTk2g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PZFG6rAr
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 01/13] dt-bindings: net:
 ethernet-controller: Add DPLL pin properties
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
Cc: Andrew Lunn <andrew@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Horatiu Vultur <Horatiu.Vultur@microchip.com>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 5, 2026 at 10:24=E2=80=AFAM Ivan Vecera <ivecera@redhat.com> wr=
ote:
>
> On 12/17/25 1:49 AM, Rob Herring wrote:
> > On Thu, Dec 11, 2025 at 08:56:52PM +0100, Andrew Lunn wrote:
> >> On Thu, Dec 11, 2025 at 08:47:44PM +0100, Ivan Vecera wrote:
> >>> Ethernet controllers may be connected to DPLL (Digital Phase Locked L=
oop)
> >>> pins for frequency synchronization purposes, such as in Synchronous
> >>> Ethernet (SyncE) configurations.
> >>>
> >>> Add 'dpll-pins' and 'dpll-pin-names' properties to the generic
> >>> ethernet-controller schema. This allows describing the physical
> >>> connections between the Ethernet controller and the DPLL subsystem pi=
ns
> >>> in the Device Tree, enabling drivers to request and manage these
> >>> resources.
> >>
> >> Please include a .dts patch in the series which actually makes use of
> >> these new properties.
> >
> > Actually, first you need a device (i.e. a specific ethernet
> > controller bindings) using this and defining the number of dpll-pins
> > entries and the names.
>
> The goal of this patch is to define properties that allow referencing
> dpll pins from other devices. I included it in this series to allow
> implementing helpers that use the property names defined in the schema.
>
> This series implements the dpll pin consumer in the ice driver. This is
> usually present on ACPI platforms, so the properties are stored in _DSD
> ACPI nodes. Although I don't have a DT user right now, isn't it better
> to define the schema now?

I have no idea what makes sense for ACPI and little interest in
reviewing ACPI bindings. While I think the whole idea of shared
bindings is questionable, really it's a question of review bandwidth
and so far no one has stepped up to review ACPI bindings.

> Thinking about this further, consumers could be either an Ethernet
> controller (where the PHY is not exposed and is driven directly by the
> NIC driver) or an Ethernet PHY.
>
> For the latter case (Ethernet PHY), I have been preparing a similar
> implementation for the Micrel phy driver (lan8814) on the Microchip EDS2
> board (pcb8385). Unfortunately, the DTS is not upstreamed yet [1], so I
> cannot include the necessary bindings here.
>
> Since there can be multiple consumer types (Ethernet controller or PHY),
> would it be better to define a dpll-pin-consumer.yaml schema instead
> (similar to mux-consumer)?

The consumer type doesn't matter for that. What matters is you have
specific device bindings and if they are consumers of some
provider/consumer style binding, then typically each device binding
has to define the constraints if there can be multiple
entries/connections (e.g. how many interrupts, clocks, etc. and what
each one is).

Hard to say what's needed for DPLL exactly because I know next to
nothing about it.

Rob
