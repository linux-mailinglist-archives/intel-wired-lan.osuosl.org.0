Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D55A758262
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 18:45:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D958041743;
	Tue, 18 Jul 2023 16:45:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D958041743
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689698757;
	bh=aZf1XQx+w1tQJpR85ewvTpbzAkajnanMWb4+BG/Eeps=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=landNjFUYR7ZsLEY2WrhNUoTSt0vY+o9eSWfven90z1CouiIfB6zxV8lOi33oviKp
	 uqQ3K/41ehgtQpoC4/EHvjFMHu2FHy5kf250/wpsCcqiOzwWP3jTA7C47gk6PJG6Dz
	 S3hLbCiWmunmviGR4yl7z+a+AaVF45piOSkeNnuJ3tNhMt5I8n5gw0J4msGWWcqq1O
	 qP7FxK3sW/zNpcxf4RCsepGI5VcNmz3vtfx4QNfdAkyvEC3IahsrmPm/nM2J083RIJ
	 alWS/oqM03+LiEzCI0vzQRo2rEzPJtrhXiPoUAQrRGzOANI551gOVaIMVriyjUWEnM
	 xAEHGHKWbXgXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3WgHf-LfnEsv; Tue, 18 Jul 2023 16:45:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 623CC41742;
	Tue, 18 Jul 2023 16:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 623CC41742
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25E411BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 16:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0DF341742
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 16:45:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0DF341742
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7RREWKksSpTx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 16:45:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5205641740
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5205641740
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 16:45:49 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D0FBA61659;
 Tue, 18 Jul 2023 16:45:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16D0EC433C8;
 Tue, 18 Jul 2023 16:45:46 +0000 (UTC)
Date: Tue, 18 Jul 2023 11:45:44 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <20230718164544.GA486141@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230717171927.78516-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1689698747;
 bh=rSlNjvjzRrnWqAERbD+Th9DUDaRg0H6dEdA0hZG5nGU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=E+3zbumnbaxkGpPAaU08iYHTdifWS4XmynlZ2knsL0lfzd/vh1C/LqgvHmVR3Jp5R
 n63pl9akI/e0QSTSyJNO8OaOkbircps6YQhbD116vW++qvLlluueJgnnI3+Dq7XwmR
 iUb7weNKGWi6LIcPC0c4H6vl4FhZJ/vu3U3y/jElt5o3Oa9Qypp9C9I80JEj/vCrXO
 5dY4EQ6ajh8NHknS33gRCFhw80bsrp28d043/2awDlLSakpV9dpE/tdeM6cPNsculg
 +T5+Bd2VARhOjxF1sBenpm67Eixwubvk/Z8gDXvovZPSPKy0aFVQepVtsYdOjPgchL
 1ULW00FSogo7Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=E+3zbumn
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Correct the short
 interval between PTM requests.
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, linux-pci@vger.kernel.org,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[+cc Paul, Vinicius, Kai-Heng, Guilherme]

On Mon, Jul 17, 2023 at 08:19:27PM +0300, Sasha Neftin wrote:
> With the 10us interval, we were seeing PTM transactions taking around 12us.
> With the 1us interval, PTM dialogs took around 2us. Checked with the PCIe
> sniffer.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 44a507029946..c3722f524ea7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -549,7 +549,7 @@
>  #define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x2f) << 2)
>  #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
>  
> -#define IGC_PTM_SHORT_CYC_DEFAULT	10  /* Default Short/interrupted cycle interval */
> +#define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle interval */

Not related to *this* patch, but from looking at igc_ptp_reset(),
where IGC_PTM_SHORT_CYC_DEFAULT is used,

  /* PCIe PTM Control */
  #define IGC_PTM_CTRL_START_NOW  BIT(29) /* Start PTM Now */
  #define IGC_PTM_CTRL_EN         BIT(30) /* Enable PTM */

  ctrl = IGC_PTM_CTRL_EN |
	  IGC_PTM_CTRL_START_NOW |
	  IGC_PTM_CTRL_SHRT_CYC(IGC_PTM_SHORT_CYC_DEFAULT) |
	  IGC_PTM_CTRL_PTM_TO(IGC_PTM_TIMEOUT_DEFAULT) |
	  IGC_PTM_CTRL_TRIG;

  wr32(IGC_PTM_CTRL, ctrl);

Obviously this must be implementation-specific PTM configuration,
which is fine.  But I assume even though this sets IGC_PTM_CTRL_EN and
IGC_PTM_CTRL_START_NOW, the device will not actually send PTM Request
messages unless the architected PTM Enable bit in the PTM Capability
is set (PCIe r6.0, sec 7.9.15.3).  Right?

I'm asking because Kai-Heng has been working on issues where
Unsupported Request errors are reported because some devices seem to
send PTM Requests when we don't think they should.  See
https://lore.kernel.org/r/20230714050541.2765246-1-kai.heng.feng@canonical.com

>  #define IGC_PTM_CYC_TIME_DEFAULT	5   /* Default PTM cycle time */
>  #define IGC_PTM_TIMEOUT_DEFAULT		255 /* Default timeout for PTM errors */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
