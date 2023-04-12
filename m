Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 015D66DFE8F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 21:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D25E6151B;
	Wed, 12 Apr 2023 19:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D25E6151B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681326995;
	bh=epHLNJ4TgIXSCvhhv1KlUTgFT9eHgi8/zkiCisAE4y8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wjsVce5tg44sRKoMHLh2e6VzpIqY1QRrtp+bR7cKyYt0yFOvlw123Or/hCKsgsz7e
	 BXO1i6eQt/PgVLAjsOWGR3S2r1BPRtnpfeh7BdJuF3/PW4m938E/I5UiZME0ci3tmr
	 PA70XWTM8ERXMwcu2an4ldSuUvi0Qg8oIARHp6MD7ArMNjEkVBgoXHwaxH5KOq0E/+
	 JI+qawbCMOEiADmxOA3xlIRhUm/pYtDCsuxtKNVNs7NWukHHLCNsO4jVf+5KIXbThb
	 4jni9orjXEacf2r/IZWsOBVNcW1N1J0HSWrZHDNwmrIHnXZbbn0vn31Z6cGG0y45Zd
	 zC+5R/OvXC/Yw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S5G2PKjDrVKM; Wed, 12 Apr 2023 19:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56B9A6141F;
	Wed, 12 Apr 2023 19:16:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56B9A6141F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7136F1BF410
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4738141ED0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4738141ED0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RW1CfBr0HexI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 19:16:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0838441ECF
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com
 [IPv6:2607:f8b0:4864:20::f32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0838441ECF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:16:26 +0000 (UTC)
Received: by mail-qv1-xf32.google.com with SMTP id dw2so22081538qvb.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:16:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681326986; x=1683918986;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=8TIJD5LOWJoz6EIfTWXTXASfah5FIQENoashRRU1aro=;
 b=V4WT54l+L1LnMIi69vF+9W4mhDh4Cr6IPT25n+nMl9cVK6K4PVuoeNLpIhCV4Q2sN1
 sZFVNKwbNvIKjLYga5o8h0ZPSNX7e4TSXXJDWvjFtW2UE429k6xUGkcBiD+dOiJSMq/G
 0l4VNapGorvlefR47mfLLGgYE5yOXw2967m9LhVo7auljYy0bVsZfC6U4tDMcUxeOFEL
 GHjtevEZD1IR036hJKuJoScXAVp970kq9rzrI5ed6aTGheoDaR4rSdg7S/J6/9DjjEyi
 tVeP4DQxTGPQ91IQV8HR8ABtBvHLiO1JI2pdWGKNSTJAtx3T+osRIg9fFkHHFANn3cXG
 AKsQ==
X-Gm-Message-State: AAQBX9eAJMbqPxnDKLOy1sqfjgJnqA71SmRTnOZeIbUnhOlSQOppvC/s
 IrClDpH1FQ54uAjQ0oCxkDI=
X-Google-Smtp-Source: AKy350Y0h9efYDQHPz1Cy7hvMBwrgRrnqwJPu8h7jgTGY00HL+W20iWmEJswDjsskIMtmNPysLBPGw==
X-Received: by 2002:a05:6214:519a:b0:5db:4e49:b2bd with SMTP id
 kl26-20020a056214519a00b005db4e49b2bdmr4747725qvb.18.1681326985851; 
 Wed, 12 Apr 2023 12:16:25 -0700 (PDT)
Received: from localhost (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 o2-20020a0cfa82000000b005e8d802ce32sm53791qvn.143.2023.04.12.12.16.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Apr 2023 12:16:25 -0700 (PDT)
Date: Wed, 12 Apr 2023 15:16:25 -0400
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Sasha Levin <sashal@kernel.org>, 
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <643703892094_69bfb294a3@willemb.c.googlers.com.notmuch>
In-Reply-To: <ZDb3rBo8iOlTzKRd@sashalap>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <ZDb3rBo8iOlTzKRd@sashalap>
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681326986; x=1683918986;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8TIJD5LOWJoz6EIfTWXTXASfah5FIQENoashRRU1aro=;
 b=M+BjzxG553ZBjq8mtiyNoajDNqZpFXViO4gQ8yBn4sc+NRWz7YP3557PuAOwxMk6GE
 fjpppo85O7HPbMrpiGBTj112KF8Gn5KHq5bWZjk4g+tR8TLBLo3KDP7HKyNUJdqx0JPs
 n9Wx2V3eUYB0LznDuJ4Lah6hQp/cNh0feppy1kwo7Ndl6ku+sHno2PbjuQDeMbUtdMye
 2lnrWR/DcDeyD3Ky8BtQD69yVvVEUxPDzY4LqWL+T2eyRa3wxf/zvv0yHw2Rb3Br4uSG
 RuGpo8EC2rBiwrwocvrqIRpz7es7SRFNhkpFcv1qJZdWqTzYYicH7UPFdtJz12Imh82r
 fkZw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=M+BjzxG5
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/15] Introduce Intel
 IDPF driver
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
Cc: willemb@google.com, decot@google.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sasha Levin wrote:
> On Mon, Apr 10, 2023 at 06:13:39PM -0700, Pavan Kumar Linga wrote:
> >v1 --> v2: link [1]
> > * removed the OASIS reference in the commit message to make it clear
> >   that this is an Intel vendor specific driver
> 
> How will this work when the OASIS driver is ready down the road?
> 
> We'll end up with two "idpf" drivers, where one will work with hardware
> that is not fully spec compliant using this Intel driver, and everything
> else will use the OASIS driver?
> 
> Does Intel plan to remove this driver when the OASIS one lands?
> 
> At the very least, having two "idpf" drivers will be very confusing.

One approach is that when the OASIS v1 spec is published, this driver
is updated to match that and moved out of the intel directory.

This IPU/DPU/SmartNIC/.. device highly programmable. I assume a goal
is to make sure that the device meets the new v1 spec. That quite
likely requires a firmware update, but that is fine.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
