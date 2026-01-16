Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2185D38A52
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jan 2026 00:39:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6125642957;
	Fri, 16 Jan 2026 23:39:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkSkRTXsnKbp; Fri, 16 Jan 2026 23:39:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C8A54295C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768606792;
	bh=+xSLgqmYqADDvOhr4tDCHqeAwYjPjRCmUSmxYOUh3bk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JuHBJgjYpqSPf80bXxrnq1xmiKcJnqpG1mqGUPKOL41jOCUmdKyjtDBiI0PNfOmmE
	 FE04uKQlUGepU8dSEHv7qeC7pyKu6xM4Lq9QXs8fKvTVfYz84Kf2dWavcYb6CQGkVA
	 qgQxCcmt5nVe86FWuqUp0/lroTMQQMG7havd1VAa018livNXCRjH9zybVTFiWDNH54
	 ble8Reo075Rt5qJfj5r0sDN/Kmj3i9haezwRMeKR9VbDdY4qSWey0s2yqkJvoHqt8T
	 2osmW5upJTePemIy5Wx9JaBAN6uj+dEK6mgrp2ZMZwKD7LdEDDP0+wtGHocVYZL7Yk
	 BfWQEYZVYadRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C8A54295C;
	Fri, 16 Jan 2026 23:39:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 74711223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 23:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 627FF42000
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 23:39:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sbwnbF2n2xWx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 23:39:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=robh@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2ACE2404EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ACE2404EB
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2ACE2404EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 23:39:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4101B443CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 23:39:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12A27C2BCB4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 23:39:48 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id
 4fb4d7f45d1cf-64b7318f1b0so4010941a12.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 15:39:48 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWcm0xGr/CEZr//jvw84Wvra5415pqDaCaCc8klcRRwdmV23rhLrhC0DRt5imJWCfheVaMOZ7OHWZKbtGo+OKg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YysdZfXRpQwIbd/SV1iNMasbrNjc10CQsqZuwG9c5conAUISF49
 L0WoOVdpVw2v6WWMUpnglwo3PjmCZ666M+Kx3t4+D7O3/x0PWoGmETXZaiETWUBmOzEY1nDtFKP
 lj1uRzy+UHc0ddH1r4HOE3Z3GRSVyjQ==
X-Received: by 2002:a05:6402:3547:b0:653:10be:c89b with SMTP id
 4fb4d7f45d1cf-654bb70fa92mr3102930a12.34.1768606786546; Fri, 16 Jan 2026
 15:39:46 -0800 (PST)
MIME-Version: 1.0
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-2-ivecera@redhat.com>
 <92bfc390-d706-4988-b98d-841a50f10834@redhat.com>
 <CAL_Jsq+m7-wop-AU-7R-=2JsUqb+2LsVTXCbZw==1XuAAQ4Tkg@mail.gmail.com>
 <a5dad0f9-001c-468f-99bc-e24c23bc9b36@redhat.com>
In-Reply-To: <a5dad0f9-001c-468f-99bc-e24c23bc9b36@redhat.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 16 Jan 2026 17:39:35 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJhqp-cgj604eEgxD47gJci0d3CFYf1wC_t1c00OptTiQ@mail.gmail.com>
X-Gm-Features: AZwV_Qgghn897CtG_q8P6welgr6_MD-NJlyOmC0cWTEkTMdvGwzWh8_gNK8Dfu8
Message-ID: <CAL_JsqJhqp-cgj604eEgxD47gJci0d3CFYf1wC_t1c00OptTiQ@mail.gmail.com>
To: Ivan Vecera <ivecera@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1768606788;
 bh=1L4Z10EN3fStlLWrOTv25Pq3Qk48HrL3c61DmZOsz6s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CPr7Dtsnm5xqqjXRoF4zmWwxIcvihEIqjlYx3ZOjBpFWmdO+6X/jWujdQK9oaw2gp
 khc5ZIXwQLm32zCcGPWx58h/7b6Ar2SeZjjylFefDa0SyPZIeuCm6XPVxTVyqNILYc
 cGsBKMlC8DlhJQBl8v1ITDHAkqoEFnW9nnuMOmPQB8eW5+CjcfMo1mLhzsZUDYPFUe
 9v4fwygvZqHklVK8cdq+xo90aLrH+KhrA+JxOZ/C3EeM4rPHAzNTB3gjfXlwpPsg/y
 Q8Q8RCBh7QIaWDcGjgqE6LFQa5rq0PmGvEBeOg/QC57ckm0PJ4lqje94zowytehp0k
 N2SK0WfBEUNyw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=CPr7Dtsn
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

On Fri, Jan 16, 2026 at 1:00=E2=80=AFPM Ivan Vecera <ivecera@redhat.com> wr=
ote:
>
> On 1/16/26 4:23 PM, Rob Herring wrote:
> > On Thu, Jan 15, 2026 at 6:02=E2=80=AFAM Ivan Vecera <ivecera@redhat.com=
> wrote:
> >>
> >> On 1/8/26 7:23 PM, Ivan Vecera wrote:
> >>> Introduce a common schema for DPLL pin consumers. Devices such as Eth=
ernet
> >>> controllers and PHYs may require connections to DPLL pins for Synchro=
nous
> >>> Ethernet (SyncE) or other frequency synchronization tasks.
> >>>
> >>> Defining these properties in a shared schema ensures consistency acro=
ss
> >>> different device types that consume DPLL resources.
> >>>
> >>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> >>> ---
> >>>    .../bindings/dpll/dpll-pin-consumer.yaml      | 30 +++++++++++++++=
++++
> >>>    MAINTAINERS                                   |  1 +
> >>>    2 files changed, 31 insertions(+)
> >>>    create mode 100644 Documentation/devicetree/bindings/dpll/dpll-pin=
-consumer.yaml
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/dpll/dpll-pin-consumer=
.yaml b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
> >>> new file mode 100644
> >>> index 0000000000000..60c184c18318a
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
> >>> @@ -0,0 +1,30 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/dpll/dpll-pin-consumer.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: DPLL Pin Consumer
> >>> +
> >>> +maintainers:
> >>> +  - Ivan Vecera <ivecera@redhat.com>
> >>> +
> >>> +description: |
> >>> +  Common properties for devices that require connection to DPLL (Dig=
ital Phase
> >>> +  Locked Loop) pins for frequency synchronization (e.g. SyncE).
> >>> +
> >>> +properties:
> >>> +  dpll-pins:
> >>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> >>> +    description:
> >>> +      List of phandles to the DPLL pin nodes connected to this devic=
e.
> >>> +
> >>> +  dpll-pin-names:
> >>> +    $ref: /schemas/types.yaml#/definitions/string-array
> >>> +    description:
> >>> +      Names for the DPLL pins defined in 'dpll-pins', in the same or=
der.
> >>> +
> >>> +dependencies:
> >>> +  dpll-pin-names: [ dpll-pins ]
> >>> +
> >>> +additionalProperties: true
> >>> diff --git a/MAINTAINERS b/MAINTAINERS
> >>> index 765ad2daa2183..f6f58dfb20931 100644
> >>> --- a/MAINTAINERS
> >>> +++ b/MAINTAINERS
> >>> @@ -7648,6 +7648,7 @@ M:      Jiri Pirko <jiri@resnulli.us>
> >>>    L:  netdev@vger.kernel.org
> >>>    S:  Supported
> >>>    F:  Documentation/devicetree/bindings/dpll/dpll-device.yaml
> >>> +F:   Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
> >>>    F:  Documentation/devicetree/bindings/dpll/dpll-pin.yaml
> >>>    F:  Documentation/driver-api/dpll.rst
> >>>    F:  drivers/dpll/
> >>
> >> Based on private discussion with Andrew Lunn (thanks a lot), this is
> >> wrong approach. Referencing directly dpll-pin nodes and using their
> >> phandles in consumers is at least unusual.
> >>
> >> The right approach should be referencing dpll-device and use cells
> >> to specify the dpll pin that is used.
> >
> > You only need a cells property if you expect the number of cells to
> > vary by provider.
> >
> > However, the DPLL device just appears to be a clock provider and
> > consumer, so why not just use the clock binding here? Also, there is
> > no rule that using foo binding means you have to use foo subsystem in
> > the kernel.
>
> Hmm, do you mean something like this example?
>
> &dpll0 {
>      ...
>      #clock-cells =3D <2>; /* 1st pin index, 2nd pin type (input/output) =
*/
>
>      input-pins {
>          pin@2 {
>              reg =3D <2>;
>              ...
>          };
>          pin@4 {
>              reg =3D <4>;
>              ...
>          };
>      };
>      output-pins {
>          pin@3 {
>              reg =3D <3>;
>          };
>      };
> };
> &phy0 {
>      ...
>      clock-names =3D "rclk0", "rclk1", "synce_ref";
>      clocks =3D <&dpll0 2 DPLL_INPUT>,
>               <&dpll0 4 DPLL_INPUT>,
>               <&dpll0 3 DPLL_OUTPUT>;
>      ...
> };

No, clock providers are always the clock outputs, and clock consumers
are the clock inputs. So something like this:

&dpll0 {
     ...
     #clock-cells =3D <1>; /* 1st pin index */

     // clocks index corresponds to input pins on dpll0 */
     clocks =3D <&phy0 0>, <&phy0 1>, <&phy1 0>, <&phy1 1>
};
&phy0 {
     ...
     #clock-cells =3D <1>;
     clocks =3D <&dpll0 3>;
     ...
};

Rob
