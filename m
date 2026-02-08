Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMZiCGEqimm6HwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 19:41:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D13113AEE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 19:41:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33E6083BB0;
	Mon,  9 Feb 2026 18:41:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M3u9oSTZJZ_S; Mon,  9 Feb 2026 18:41:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21A3583BC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770662488;
	bh=/lsgPaZnJEzeqZBK37tJjHVn2e9UNTcYkarSBXN1Dbc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4aZQulYVNugcbFXHr5rL2WUnrPeQrHTd+9Bp08Cus97Kj0Jkg4YCODvp+USCUYldP
	 /hiPCap/YQLBpAy1IMHYCKG9ACcewfUrsURa9gfSIoX4HD7DaechriGU4aripS+O4B
	 8Chv62Lepyo8ah7wM5Fsuq1+hcFdE+HEwlLyP6mZZr0Hnkai/jlKdkCAxiLaMzZNtx
	 7mOGFQ5lbVGWLEifpBZMHIWrpWKYRKl7srWu0lfV4mCHuKjRtSoVdT+haYqMekwni7
	 yqzwKMA5BhmE++LgSofDBpMjs0l1QqTRFEbzjVS4BnNkh6v8g9Xhw6r4ZdFSX1NSy4
	 ljYzwmyTLE0dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21A3583BC6;
	Mon,  9 Feb 2026 18:41:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C3C8E219
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 01:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A8D964056F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 01:46:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XhwomIkMut7S for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Feb 2026 01:46:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=saravanak@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D883040561
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D883040561
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D883040561
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 01:46:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 11DD4441D7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 01:46:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF4B3C2BCB0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 01:46:39 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-658f1fde4bfso6853711a12.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 07 Feb 2026 17:46:39 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCVtvChns6Uoo7sYy1EG7kXhaYAy4mihePD8NDAKOp4iApzBbeMzCKzwYHDqVZHrXKCLwUDMTj6et2fVgopZe74=@lists.osuosl.org
X-Gm-Message-State: AOJu0YybOi0GDFOoq3imkV7wWSmeqp+eAVCOoLleRRuzperNXCOGSmva
 Hor3samy2oWldZPUPXSkEruyfDtc9KFr7FnXlcJPr1oixDxDrab9vzr3nxOVugJyKEkrWQdpNss
 jm3/+0Ek4Z+btr3xc0bNQM6lZBTfSCcY=
X-Received: by 2002:a17:907:3f26:b0:b80:1403:764c with SMTP id
 a640c23a62f3a-b8eba262322mr666655266b.24.1770515198428; Sat, 07 Feb 2026
 17:46:38 -0800 (PST)
MIME-Version: 1.0
References: <20260116184610.147591-1-ivecera@redhat.com>
 <20260116184610.147591-4-ivecera@redhat.com>
In-Reply-To: <20260116184610.147591-4-ivecera@redhat.com>
From: Saravana Kannan <saravanak@kernel.org>
Date: Sat, 7 Feb 2026 17:46:27 -0800
X-Gmail-Original-Message-ID: <CACRMN=dy3eosPYSne3UKBL+ArOT-pzd3N5k3e7GPwSXJQ=6UwA@mail.gmail.com>
X-Gm-Features: AZwV_Qg_RIFSoCTTzuceW6K6a5A6HDh2-N6dPY7F917i1v3mTVT5QWLwoY0jwlk
Message-ID: <CACRMN=dy3eosPYSne3UKBL+ArOT-pzd3N5k3e7GPwSXJQ=6UwA@mail.gmail.com>
To: Ivan Vecera <ivecera@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 09 Feb 2026 18:41:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770515199;
 bh=tyWxKxHsau3OE/oOgqAMGEezSdgdUNWkxIfNxt57e0o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QDdMCyE9FaslMT+tqVeDGyLkA0xMjAYaKfS3mx6ZcgEHXqpcucaofAyQ1H09X6VW1
 mz3CWkYMvfWrn9KQ0lG9il8AmmNDS1jIP+7JLyrPF2chvbPfRanw6BzUCIZWr8NAJd
 WQXZFmkm4WMJ9Uav00q1irrRY5cx2UuUXbtvFi8ZSV32EJhQBNRqFrEoxSj67cqZy8
 bYqxrS/BjSgy/WMWQ79sWBa5wjsKXbPvaF5vbGzWfaarZM+Hx7AUZYuNOAPEtbit7M
 VFGojULfqI6GaIOM+fGSP1GvYp76cyjUsBuIkSuQbVmNW3iG6c/VOlkr+0b56NfqY6
 L/DqvALmsPqWQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=QDdMCyE9
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 03/12] dpll: Add helpers
 to find DPLL pin fwnode
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
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Saravana Kannan <saravanak@kernel.org>,
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[40];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER(0.00)[saravanak@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[google.com,intel.com,kernel.org,lunn.ch,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com,davemloft.net];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:robh@kernel.org,m:leon@kernel.org,m:andrew+netdev@lunn.ch,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:saravanak@kernel.org,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:aleksander.lobakin@intel.com,m:jonathan.lemon@gmail.com,m:krzk+dt@kernel.org,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,m:conor@kernel.org,m:jonathanlemon@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mail.gmail.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[saravanak@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 79D13113AEE
X-Rspamd-Action: no action

On Fri, Jan 16, 2026 at 10:46=E2=80=AFAM Ivan Vecera <ivecera@redhat.com> w=
rote:
>
> dpll: core: add helpers to find DPLL pin fwnode
>
> Add helper functions to the DPLL core to retrieve a DPLL pin's firmware
> node handle based on the 'dpll-pins' and 'dpll-pin-names' properties.
>
> Unlike simple phandle arrays, 'dpll-pins' entries typically contain
> a pin specifier (index and direction) as defined by '#dpll-pin-cells'.
> The new helper fwnode_dpll_pin_node_get() parses these specifiers
> using fwnode_property_get_reference_args(). It resolves the target
> pin by:
> 1. Identifying the DPLL device node from the phandle.
> 2. Selecting the correct sub-node ('input-pins' or 'output-pins') based
>    on the direction argument.
> 3. Matching the pin index argument against the 'reg' property of
>    the child nodes.
>
> Additionally, register 'dpll-pins' in drivers/of/property.c to enable
> proper parsing of the supplier bindings by the OF core.
>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
> v2:
> * added check for fwnode_property_match_string() return value
> * reworked searching for the pin using dpll device phandle and
>   pin specifier
> * added dpll-pins into OF core supplier_bindings
> ---
>  drivers/dpll/dpll_core.c | 74 ++++++++++++++++++++++++++++++++++++++++
>  drivers/of/property.c    |  2 ++
>  include/linux/dpll.h     | 15 ++++++++
>  3 files changed, 91 insertions(+)
>
> diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
> index fb68b5e19b480..b0083b5c10aa4 100644
> --- a/drivers/dpll/dpll_core.c
> +++ b/drivers/dpll/dpll_core.c
> @@ -13,6 +13,7 @@
>  #include <linux/property.h>
>  #include <linux/slab.h>
>  #include <linux/string.h>
> +#include <dt-bindings/dpll/dpll.h>
>
>  #include "dpll_core.h"
>  #include "dpll_netlink.h"
> @@ -654,6 +655,79 @@ struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_=
handle *fwnode)
>  }
>  EXPORT_SYMBOL_GPL(fwnode_dpll_pin_find);
>
> +/**
> + * fwnode_dpll_pin_node_get - get dpll pin node from given fw node and p=
in name
> + * @fwnode: firmware node that uses the dpll pin
> + * @name: dpll pin name from dpll-pin-names property
> + *
> + * Return: ERR_PTR() on error or a valid firmware node handle on success=
.
> + */
> +struct fwnode_handle *fwnode_dpll_pin_node_get(struct fwnode_handle *fwn=
ode,
> +                                              const char *name)
> +{
> +       struct fwnode_handle *parent_node, *pin_node;
> +       struct fwnode_reference_args args;
> +       const char *parent_name;
> +       int ret, index =3D 0;
> +
> +       if (name) {
> +               index =3D fwnode_property_match_string(fwnode, "dpll-pin-=
names",
> +                                                    name);
> +               if (index < 0)
> +                       return ERR_PTR(-ENOENT);
> +       }
> +
> +       ret =3D fwnode_property_get_reference_args(fwnode, "dpll-pins",
> +                                                "#dpll-pin-cells", 2, in=
dex,
> +                                                &args);
> +       if (ret)
> +               return ERR_PTR(ret);
> +
> +       /* We support only 2 cell DPLL bindings in the kernel currently. =
*/
> +       if (args.nargs !=3D 2) {
> +               fwnode_handle_put(args.fwnode);
> +               return ERR_PTR(-ENOENT);
> +       }
> +
> +       /* Resolve parent node name according pin direction type */
> +       switch (args.args[1]) {
> +       case DPLL_PIN_INPUT:
> +               parent_name =3D "input-pins";
> +               break;
> +       case DPLL_PIN_OUTPUT:
> +               parent_name =3D "output-pins";
> +               break;
> +       default:
> +               fwnode_handle_put(args.fwnode);
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       /* Get pin's parent sub-node */
> +       parent_node =3D fwnode_get_named_child_node(args.fwnode, parent_n=
ame);
> +       if (!parent_node) {
> +               fwnode_handle_put(args.fwnode);
> +               return ERR_PTR(-ENOENT);
> +       }
> +
> +       /* Enumerate child pin nodes and find the requested one */
> +       fwnode_for_each_child_node(parent_node, pin_node) {
> +               u32 reg;
> +
> +               if (fwnode_property_read_u32(pin_node, "reg", &reg))
> +                       continue;
> +
> +               if (reg =3D=3D args.args[0])
> +                       break;
> +       }
> +
> +       /* Release pin's parent and dpll device node */
> +       fwnode_handle_put(parent_node);
> +       fwnode_handle_put(args.fwnode);
> +
> +       return pin_node ? pin_node : ERR_PTR(-ENOENT);
> +}
> +EXPORT_SYMBOL_GPL(fwnode_dpll_pin_node_get);
> +
>  static int
>  __dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
>                     const struct dpll_pin_ops *ops, void *priv, void *coo=
kie)
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 4e3524227720a..8571c8bb71ade 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1410,6 +1410,7 @@ DEFINE_SIMPLE_PROP(post_init_providers, "post-init-=
providers", NULL)
>  DEFINE_SIMPLE_PROP(access_controllers, "access-controllers", "#access-co=
ntroller-cells")
>  DEFINE_SIMPLE_PROP(pses, "pses", "#pse-cells")
>  DEFINE_SIMPLE_PROP(power_supplies, "power-supplies", NULL)
> +DEFINE_SIMPLE_PROP(dpll_pins, "dpll-pins", "#dpll-pin-cells")
>  DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
>  DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
>
> @@ -1568,6 +1569,7 @@ static const struct supplier_bindings of_supplier_b=
indings[] =3D {
>                 .parse_prop =3D parse_post_init_providers,
>                 .fwlink_flags =3D FWLINK_FLAG_IGNORE,
>         },
> +       { .parse_prop =3D parse_dpll_pins, },

Keep the same order as the other table please.

-Saravana
>         {}
>  };
>
> diff --git a/include/linux/dpll.h b/include/linux/dpll.h
> index f0c31a111c304..755c36d1ef45a 100644
> --- a/include/linux/dpll.h
> +++ b/include/linux/dpll.h
> @@ -11,6 +11,7 @@
>  #include <linux/device.h>
>  #include <linux/netlink.h>
>  #include <linux/netdevice.h>
> +#include <linux/property.h>
>  #include <linux/rtnetlink.h>
>
>  struct dpll_device;
> @@ -176,6 +177,8 @@ int dpll_netdev_add_pin_handle(struct sk_buff *msg,
>                                const struct net_device *dev);
>
>  struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_handle *fwnode);
> +struct fwnode_handle *fwnode_dpll_pin_node_get(struct fwnode_handle *fwn=
ode,
> +                                              const char *name);
>  #else
>  static inline void
>  dpll_netdev_pin_set(struct net_device *dev, struct dpll_pin *dpll_pin) {=
 }
> @@ -197,8 +200,20 @@ fwnode_dpll_pin_find(struct fwnode_handle *fwnode)
>  {
>         return NULL;
>  }
> +
> +static inline struct fwnode_handle *
> +fwnode_dpll_pin_node_get(struct fwnode_handle *fwnode, const char *name)
> +{
> +       return NULL;
> +}
>  #endif
>
> +static inline struct fwnode_handle *
> +device_dpll_pin_node_get(struct device *dev, const char *name)
> +{
> +       return fwnode_dpll_pin_node_get(dev_fwnode(dev), name);
> +}
> +
>  struct dpll_device *
>  dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
>
> --
> 2.52.0
>
