Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EE678480C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 18:55:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE07E40BEE;
	Tue, 22 Aug 2023 16:55:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE07E40BEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692723306;
	bh=RmuSAB3MddftRmBzhc1VHb5CMR3r6OA4BgcvKHKSMAA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jfIiQouCO9X10kqEviioFQvgNUrsJ4D4UntmXjTGboTfJFLGcrl+fSpHpdRJ6awL7
	 AArwaMgOGpPmis0kiJxCFomnostttU5WPlz3ghRnqcmasJy/+N8Gm/U9cRq7xToP4K
	 UH7G5kC/2kBcc50IyF8uH7ZSS2q+6GfDlpvvWRoDa0+5P3r1WN/NaMnxjyzUmbrUvT
	 DxRk622g0EqqUtfTXXJsNBfBbrGx9bzL4suZy2sMd/CV6puQz6rHJFzCz4z4iS/YZ9
	 ICbHGztvhkXvptOMVXTTbz8PMiBNl4YRl90aBP6IPaB01uoGk1zSm+/dt5zy4OFNRE
	 1LAgrfO/pCR/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tQ_-fDjyqmYl; Tue, 22 Aug 2023 16:55:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D963040BE0;
	Tue, 22 Aug 2023 16:55:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D963040BE0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBC5C1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 16:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3710611F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 16:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3710611F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tym6K6y2Et9I for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 16:54:59 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18247611F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 16:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18247611F7
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 547C562DBA;
 Tue, 22 Aug 2023 16:54:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4254CC433C8;
 Tue, 22 Aug 2023 16:54:57 +0000 (UTC)
Date: Tue, 22 Aug 2023 09:54:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <20230822095456.0a08b008@kernel.org>
In-Reply-To: <DM6PR11MB4657E60D5A092E9FC05BC9EF9B1EA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-3-vadim.fedorenko@linux.dev>
 <20230814194336.55642f34@kernel.org>
 <DM6PR11MB4657AD95547A14234941F9399B1AA@DM6PR11MB4657.namprd11.prod.outlook.com>
 <20230817163640.2ad33a4b@kernel.org> <ZN8ccoE8X5J6yysk@nanopsycho>
 <DM6PR11MB4657E60D5A092E9FC05BC9EF9B1EA@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692723297;
 bh=UoOkKIMbPfEd0c+D0Uln/kWgFO+YI518rHnvKJm0rLE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FSW1H/InJ2afLXXYL2DTIbtdyEMvsvlV33F1+8nwiy+mPTMnZSkf5rQYOZPUIYgOJ
 KbKOR9QK5OXYgCCadIlZbHfa/ilQRbg/ewWQfBVzWcB2MlDaMnL5adQu1yRdy4ihx8
 rlyJhCqIqCnTRnUEZeSz7bllPFA5aIhZ3PFtO2sptLM9MoISuNOt6+ezpkEUAB2Wg5
 kWoGVIS0paAl0jwTiQreTve7v0Ywb5dKFSmCEJ4ZLHHSuSxqrbDDE7lHiJtOSNcnCB
 U/eNEsQZ5JYTPI5+/bhjZfm+eg+niNopnoEmKhnTdwoA9qDiXEBt6b4l4lP84Nkx+h
 W3lYaCXNI72Bw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FSW1H/In
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/9] dpll: spec: Add
 Netlink spec in YAML
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jiri Pirko <jiri@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, Paolo Abeni <pabeni@redhat.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, "Olech,
 Milena" <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 21 Aug 2023 10:15:41 +0000 Kubalewski, Arkadiusz wrote:
> I prepared some POC's and it seems most convenient way to do the
> split was to add new argument as proposed on the previous mail.
> After all the spec generated diff for uAPI header like this:
> 
> --- a/include/uapi/linux/dpll.h
> +++ b/include/uapi/linux/dpll.h
> @@ -148,7 +148,17 @@ enum dpll_a {
>         DPLL_A_LOCK_STATUS,
>         DPLL_A_TEMP,
>         DPLL_A_TYPE,
> -       DPLL_A_PIN_ID,
> +
> +       __DPLL_A_MAX,
> +       DPLL_A_MAX = (__DPLL_A_MAX - 1)
> +};
> +
> +enum dpll_a_pin {
> +       DPLL_A_PIN_ID = 1,
> +       DPLL_A_PIN_PARENT_ID,
> +       DPLL_A_PIN_MODULE_NAME,
> +       DPLL_A_PIN_PAD,
> +       DPLL_A_PIN_CLOCK_ID,
>         DPLL_A_PIN_BOARD_LABEL,
>         DPLL_A_PIN_PANEL_LABEL,
>         DPLL_A_PIN_PACKAGE_LABEL,
> @@ -164,8 +174,8 @@ enum dpll_a {
>         DPLL_A_PIN_PARENT_DEVICE,
>         DPLL_A_PIN_PARENT_PIN,
> 
> -       __DPLL_A_MAX,
> -       DPLL_A_MAX = (__DPLL_A_MAX - 1)
> +       __DPLL_A_PIN_MAX,
> +       DPLL_A_PIN_MAX = (__DPLL_A_PIN_MAX - 1)
>  };
> 
> So we have additional attribute for targeting either a pin or device
> DPLL_A_PIN_PARENT_ID (u32) - which would be enclosed in the nests as
> previously:
> - DPLL_A_PIN_PARENT_DEVICE (if parent is a device)
> - DPLL_A_PIN_PARENT_PIN (if parent is a pin)
> 
> 
> I will adapt the docs and send this to Vadim's repo for review today,
> if that is ok for us.

LGTM!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
