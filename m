Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B29DD33278
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 16:23:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1FF16FB5B;
	Fri, 16 Jan 2026 15:23:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 02_jWTzDjlpP; Fri, 16 Jan 2026 15:23:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E97AE6FB02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768577001;
	bh=Z9Mx0qiR4gy5rRqBE7tkWKAAaKQaESwBa/vTKMqyS+o=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5plqnPoylZkgbzJ6OMXzn+QcGkOoP/c4LyzC3p3+cf8vGWpLTgt/UScS6biaTO/EN
	 bWLy6MxR14qYxMJoYg7G9Ubv6mv3P3boZmJ53KC24dTJaSRzdJsyt//5kFIUM+/O7b
	 WqVdY+uugBA1hRE5DyUmRdiJb6JWvysAxMsvq5gSoRugOEIDNS3iRIUmQUvQQJdT23
	 Ss6vsInsu/iPNnBd4KnpMAtkB9D/F49iDuY5BXkBjx7KU9+etY/pmQePaLC654X5Wo
	 XBzBtQ65i3CgPlbYSiphaqxa+8MghOheyAKEyG9huOjAOc5VcTxw7I8cwHAtM1q18a
	 jgmyNvKu3t8dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E97AE6FB02;
	Fri, 16 Jan 2026 15:23:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DE1631C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 15:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4E614EED9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 15:23:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zoJmFgJFX1n8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 15:23:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=robh@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D261D4EED8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D261D4EED8
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D261D4EED8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 15:23:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2586344452
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 15:23:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C3D6C2BCB4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 15:23:18 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-64b7318f1b0so3384961a12.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 07:23:17 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXeWvQ7QgqEDzF1iwTtVgqWTB+/iLC5q+SvRpMg36Hyva1Z205vzwH/5lKUcvXOoEqwQCOyCc0TXm6Vl4AL5nQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyE7ME4TpiXP8XDXfTeIKc+VpvW1lU7onSlOAcxCKdeqa3oKybk
 W1lqwgYl9LxyPDvuPjPQYNGUoeZdFofq+Kz8Z31OAeDJC987hCzZjN3bvEh38GosXrW7Ke3dgkp
 Jp0Bos/fJtweY++RAfwi/gqChFope5w==
X-Received: by 2002:a17:907:9622:b0:b86:ef31:b16a with SMTP id
 a640c23a62f3a-b8796afd5dbmr247755966b.39.1768576996219; Fri, 16 Jan 2026
 07:23:16 -0800 (PST)
MIME-Version: 1.0
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-2-ivecera@redhat.com>
 <92bfc390-d706-4988-b98d-841a50f10834@redhat.com>
In-Reply-To: <92bfc390-d706-4988-b98d-841a50f10834@redhat.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 16 Jan 2026 09:23:04 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+m7-wop-AU-7R-=2JsUqb+2LsVTXCbZw==1XuAAQ4Tkg@mail.gmail.com>
X-Gm-Features: AZwV_QheQ8JZ1b9uOY1VIrHmkFgsPGZdWR9BRMf5iRCGHz0XIPV_zO5cvZNd_B0
Message-ID: <CAL_Jsq+m7-wop-AU-7R-=2JsUqb+2LsVTXCbZw==1XuAAQ4Tkg@mail.gmail.com>
To: Ivan Vecera <ivecera@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1768576998;
 bh=I95ZAYK4g0iaIBgyWWT6qE8RYqfadEs79jthdaODn8M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=L1n/6dIfvw85bk/IAvVnrRDFdcbT6PkWIhGrZ3pyV0lDH7eZ9EbGGLqDLr+m/29Zs
 tKoz9VI8UFMZfqXyuhpejY18y8OJHhgTH912dMUHbDFoJd5KrvGvtWGwLGOfbUekXI
 aEzFSjXX14soyRIDUCAQtkFVAH0YlWyX4ZOESSk6labWdb1FTWzvRjw2V7nooCwr4Y
 J5mtLygMPByKCNOAbODmus2q0GDgcQFMoLlwmoQMyUZ+CvobkhX4IjRouPWvBGW9V4
 XjqDvkp1BeXh2Vu0D/+Gk9ez8m2AfpKxPUK5WjGOh+lXwWl/uOj3GowOroVz/f1hFJ
 x5uMjOjbamPLQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=L1n/6dIf
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/12] dt-bindings: dpll: add
 common dpll-pin-consumer schema
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Leon Romanovsky <leon@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 15, 2026 at 6:02=E2=80=AFAM Ivan Vecera <ivecera@redhat.com> wr=
ote:
>
> On 1/8/26 7:23 PM, Ivan Vecera wrote:
> > Introduce a common schema for DPLL pin consumers. Devices such as Ether=
net
> > controllers and PHYs may require connections to DPLL pins for Synchrono=
us
> > Ethernet (SyncE) or other frequency synchronization tasks.
> >
> > Defining these properties in a shared schema ensures consistency across
> > different device types that consume DPLL resources.
> >
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > ---
> >   .../bindings/dpll/dpll-pin-consumer.yaml      | 30 ++++++++++++++++++=
+
> >   MAINTAINERS                                   |  1 +
> >   2 files changed, 31 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/dpll/dpll-pin-co=
nsumer.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.y=
aml b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
> > new file mode 100644
> > index 0000000000000..60c184c18318a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
> > @@ -0,0 +1,30 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/dpll/dpll-pin-consumer.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: DPLL Pin Consumer
> > +
> > +maintainers:
> > +  - Ivan Vecera <ivecera@redhat.com>
> > +
> > +description: |
> > +  Common properties for devices that require connection to DPLL (Digit=
al Phase
> > +  Locked Loop) pins for frequency synchronization (e.g. SyncE).
> > +
> > +properties:
> > +  dpll-pins:
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    description:
> > +      List of phandles to the DPLL pin nodes connected to this device.
> > +
> > +  dpll-pin-names:
> > +    $ref: /schemas/types.yaml#/definitions/string-array
> > +    description:
> > +      Names for the DPLL pins defined in 'dpll-pins', in the same orde=
r.
> > +
> > +dependencies:
> > +  dpll-pin-names: [ dpll-pins ]
> > +
> > +additionalProperties: true
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 765ad2daa2183..f6f58dfb20931 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -7648,6 +7648,7 @@ M:      Jiri Pirko <jiri@resnulli.us>
> >   L:  netdev@vger.kernel.org
> >   S:  Supported
> >   F:  Documentation/devicetree/bindings/dpll/dpll-device.yaml
> > +F:   Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
> >   F:  Documentation/devicetree/bindings/dpll/dpll-pin.yaml
> >   F:  Documentation/driver-api/dpll.rst
> >   F:  drivers/dpll/
>
> Based on private discussion with Andrew Lunn (thanks a lot), this is
> wrong approach. Referencing directly dpll-pin nodes and using their
> phandles in consumers is at least unusual.
>
> The right approach should be referencing dpll-device and use cells
> to specify the dpll pin that is used.

You only need a cells property if you expect the number of cells to
vary by provider.

However, the DPLL device just appears to be a clock provider and
consumer, so why not just use the clock binding here? Also, there is
no rule that using foo binding means you have to use foo subsystem in
the kernel.

Rob
