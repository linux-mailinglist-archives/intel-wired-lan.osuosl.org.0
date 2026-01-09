Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E99D085BF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 10:55:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1717983827;
	Fri,  9 Jan 2026 09:55:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KhU2cOymMDFF; Fri,  9 Jan 2026 09:55:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8636783829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767952509;
	bh=cjz3vTKRnASzhAPFGYEKw/NSsxGGE0gPPYH6xGuydTY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a4DKVrD3Cdg/QaKxdJwqnstCVg856wJrN33R3Sm7jtVXfQbGe/rCuoOSQTGlF1FRe
	 pKCZVMw2ApnFFfZCU3W5qPpmFNmMFtgcuJKjD74vpMbBzaqFhKMuhJwDwFVKDYatBH
	 BbQG3i5H/2XNOYWvH5gSyNvOoq+sqC4yzfMEd2FWduMw1TNecRSL+/TTmAkRR1eVa/
	 +o80So17ysvGVTvT39uCedIB95uxgfoSnVbcKvE+8VUCBjmPn6GNhODH6XEOGfCcit
	 KJiSUhY5hE7Q/Jllc6chOcs3b00qXljl8qrU2e/EyLpSsMCxgcizYhi7wmnY58dH48
	 VQ7DC7unr5yHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8636783829;
	Fri,  9 Jan 2026 09:55:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2219D12E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:55:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13AA483807
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:55:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ffOjdShUO7Kv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 09:55:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=krzk@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 766AE837A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 766AE837A4
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 766AE837A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 09:55:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2382540BAE;
 Fri,  9 Jan 2026 09:55:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 733D0C4CEF1;
 Fri,  9 Jan 2026 09:55:06 +0000 (UTC)
Date: Fri, 9 Jan 2026 10:55:04 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20260109-cooperative-chinchilla-of-swiftness-aebbc8@quoll>
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-4-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260108182318.20935-4-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1767952507;
 bh=IkP/SuZc1+HGIgfAujt+bjifZCCZ5ZU7yuwDHWYE8Fc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s2x90MK0EAhZ4PAprwB0+AyumDxUtdgTloJ+xSh5vPw0sT1j1J693MTOh5xuFExx3
 upZKMBqEsOuYGvxG8IHrd2TWURcKuiIZSrxSd8ttBfdZg+DQhyuqdGBwoaTiBM/4nA
 6jxM5+fxloGBhxQss83HRXT/+paQ76TAghTAjXeUzEpV7iC6LOm2m6Sf4ebbGFL9e0
 Icjozkt6b9n/DCdcRmguLoAJy4vcgm5ZHWefXQiIb8lkU4xA29RofrsCSHUeHd5Exc
 fwMKZVwioZzz7h/XOP9hYfEHgVdOA3eRdR0dedOg7hdMzVuebFAS9ZxzT7yKZAgpRD
 nsGa3JxdJnusg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=s2x90MK0
Subject: Re: [Intel-wired-lan] [PATCH net-next 03/12] dpll: Add helpers to
 find DPLL pin fwnode
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

On Thu, Jan 08, 2026 at 07:23:09PM +0100, Ivan Vecera wrote:
> Add helper functions to the DPLL core to retrieve a DPLL pin's firmware
> node handle based on the "dpll-pins" and "dpll-pin-names" properties.
> 
> * `fwnode_dpll_pin_node_get()`: matches the given name against the
>   "dpll-pin-names" property to find the correct index, then retrieves
>   the reference from "dpll-pins".
> * `device_dpll_pin_node_get()`: a wrapper around the fwnode helper for
>   convenience when using a `struct device`.
> 
> These helpers simplify the process for consumer drivers (such as Ethernet
> controllers or PHYs) to look up their associated DPLL pins defined in
> the DT or ACPI, which can then be passed to the DPLL subsystem to acquire
> the pin object.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/dpll/dpll_core.c | 20 ++++++++++++++++++++
>  include/linux/dpll.h     | 15 +++++++++++++++
>  2 files changed, 35 insertions(+)
> 

I don't see cells defined in your binding. Neither updated property.c.

Best regards,
Krzysztof

