Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9DDAC85CB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 May 2025 02:56:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AEB640C0E;
	Fri, 30 May 2025 00:56:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WwF7LOakBWW2; Fri, 30 May 2025 00:56:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C656440C7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748566592;
	bh=XkEkIQyx+DkxwQbUFbw/COCbajasDnfPyEBJ9wORWlg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=64rs1MUDxSpoh3hga0QHMSmpFO0JmQBixiozjjBfjTFTFzuLd+DO+C27rpYGMoM90
	 88UFHxoPGf7k291M7s/dzP+ozwr1CoYaU2l34twxlMg64qAlDiEM5JHfYe15q0Kzyj
	 f4r2fJRALnDmP/wf7pKMmawpAeatafU2YsyQWjgdCgtsCCsjsouCBelDT4hWOSppQA
	 xQ4mIY/p8D2esfORfZWnFq+Cw3q8flo1dPSrY4tY6tjV0Rq+0LCU7wvXqB0QnfAWC+
	 UreC7yrTHIMKCQF/7xvySiSHXc43t7lY0TJJffwSuDqG0HitrXu36Z0UYzTr+DEJQl
	 cwUN3MVoQIPmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C656440C7C;
	Fri, 30 May 2025 00:56:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1379D236
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 00:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 057B640BF6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 00:56:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QQtUoXqYs5uJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 May 2025 00:56:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 60A6440BF1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60A6440BF1
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 60A6440BF1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 00:56:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6EDAE60010;
 Fri, 30 May 2025 00:56:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51CDEC4CEE7;
 Fri, 30 May 2025 00:56:28 +0000 (UTC)
Date: Thu, 29 May 2025 17:56:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, horms@kernel.org, vadim.fedorenko@linux.dev,
 jiri@resnulli.us, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, aleksandr.loktionov@intel.com, corbet@lwn.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Message-ID: <20250529175627.4e6a3b07@kernel.org>
In-Reply-To: <20250523172650.1517164-3-arkadiusz.kubalewski@intel.com>
References: <20250523172650.1517164-1-arkadiusz.kubalewski@intel.com>
 <20250523172650.1517164-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1748566589;
 bh=yg6Wh8XDP53XOaEfOboKxLKTBHVS/nUo2gmPowtLxbo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=D5yTMsUXYJkXKA/3AcLLVZtYKMkrbG7yBjq6Hz2CnCLmzDpTU+WuwJY/phWaP7LWK
 DH4sGRZP5sNjiuZI2lbzQ42iNVCv7M0Lqom0Yvd9yfFjLlLPun+tW5laqn3p8EPiO6
 VhGLVjm8KUzTfHtQPYo9eDBQnBW6wmwRx5MTcO3HPFAmIWG/wBR2Tn7rVV4fgCHfUF
 buiRCeXTUvQPm9FWsgGuzQBy2kAfzGJAMk+NYCX5cWZivNmpmV7UDFhsAFL+3BQwo6
 gsjjyQFKCMLAJ0P8cRIkGgi58XLvnhBBxXbrTn0iq0kNZELtg4Aj+XGs1NTiEORLZN
 Cx4g/jqxeB+WA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=D5yTMsUX
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/3] dpll: add reference
 sync get/set
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

On Fri, 23 May 2025 19:26:49 +0200 Arkadiusz Kubalewski wrote:
> +static int
> +dpll_pin_ref_sync_state_set(struct dpll_pin *pin,
> +			    unsigned long ref_sync_pin_idx,
> +			    const enum dpll_pin_state state,
> +			    struct netlink_ext_ack *extack)
> +
> +{
> +	struct dpll_pin_ref *ref, *failed;
> +	const struct dpll_pin_ops *ops;
> +	enum dpll_pin_state old_state;
> +	struct dpll_pin *ref_sync_pin;
> +	struct dpll_device *dpll;
> +	unsigned long i;
> +	int ret;
> +
> +	ref_sync_pin =3D xa_find(&pin->ref_sync_pins, &ref_sync_pin_idx,
> +			       ULONG_MAX, XA_PRESENT);
> +	if (!ref_sync_pin) {
> +		NL_SET_ERR_MSG(extack, "reference sync pin not found");
> +		return -EINVAL;
> +	}
> +	if (!dpll_pin_available(ref_sync_pin)) {
> +		NL_SET_ERR_MSG(extack, "reference sync pin not available");
> +		return -EINVAL;
> +	}
> +	ref =3D dpll_xa_ref_dpll_first(&pin->dpll_refs);
> +	ASSERT_NOT_NULL(ref);

why the assert? The next line will crash very.. "informatively"
if ref is NULL =F0=9F=A4=B7=EF=B8=8F

> +static int
> +dpll_pin_ref_sync_set(struct dpll_pin *pin, struct nlattr *nest,
> +		      struct netlink_ext_ack *extack)
> +{
> +	struct nlattr *tb[DPLL_A_PIN_MAX + 1];
> +	enum dpll_pin_state state;
> +	u32 sync_pin_id;
> +
> +	nla_parse_nested(tb, DPLL_A_PIN_MAX, nest,
> +			 dpll_reference_sync_nl_policy, extack);
> +	if (!tb[DPLL_A_PIN_ID]) {

NL_REQ_ATTR_CHECK(), please

	if (NL_REQ_ATTR_CHECK(extack, nest, tb, DPLL_A_PIN_ID) ||
	    NL_REQ_ATTR_CHECK(extack, nest, tb, DPLL_A_PIN_STATE))
		return -EINVAL;

it will set ATTR_MISS metadata for you. Not 100% sure if Python YNL
can decode miss attrs in nests but that's a SMOP :) C YNL can do it.

> +		NL_SET_ERR_MSG(extack, "sync pin id expected");
> +		return -EINVAL;
> +	}
> +	sync_pin_id =3D nla_get_u32(tb[DPLL_A_PIN_ID]);
> +
> +	if (!tb[DPLL_A_PIN_STATE]) {
> +		NL_SET_ERR_MSG(extack, "sync pin state expected");
> +		return -EINVAL;
> +	}
> +	state =3D nla_get_u32(tb[DPLL_A_PIN_STATE]);
> +
> +	return dpll_pin_ref_sync_state_set(pin, sync_pin_id, state, extack);
> +}
