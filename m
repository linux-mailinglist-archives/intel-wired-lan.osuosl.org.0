Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C895A6412
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 14:54:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F34BD403BE;
	Tue, 30 Aug 2022 12:54:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F34BD403BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661864060;
	bh=ZZ3Rfv9FlB01RFh0EK7LFplkt+FmCLKhYjoB5viCU1E=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1SVLCNMx+XbE9u76t+pjw7Zvghwq/1Xw7FaSiFATUbkmh9rb6lY040oC1itezwrbi
	 Q1Jzz4Z3Lj9MIBeRe/wWYMhCzlUA6sXl01ReOAdCuw1dX4yN4jN8NLFDRPv7GEdp0x
	 W6Q5fYeXnYEqENhZc0ujE/wx1RoT03wA4UQHHKiRa/uN2n/FXUJjSTv3rKjRpAzOSk
	 BVvhoMAft/QKZOR6EiJPmhicrwQSGfW8LM/RRj+dcdoXBIF+DZ+b+0gnSK2EmPgVma
	 LnKzAfABHfHDrtQ+KuAkb42/ingjMDdluMgqpePxJ1v4ZfrofLgXvBTSwZmtqjc8nW
	 qU0dq1Rca/D+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kcizufBwl2n6; Tue, 30 Aug 2022 12:54:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5112408E0;
	Tue, 30 Aug 2022 12:54:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5112408E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9485E1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 07:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6EFF060687
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 07:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EFF060687
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xLJdY-BgIipZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Aug 2022 07:05:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9533460E49
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9533460E49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 07:05:57 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 i7-20020a17090adc0700b001fd7ccbec3cso985651pjv.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 00:05:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=UYQLKisXo/BAxNrAA7zsBCJdL0psoCAOEA7a+b76dao=;
 b=S+cTxkaVf66MVYSOojlqOGcVoyAmSBSc0QNUqgN16+tUbLt4ppbvBIkeL96TCiS1an
 jLFGK17Hr1UyNmE51s20VYV4ArpfwElBpKg74LSuZ976YoD5r+oOPxHKhcpgyaAaBmIY
 4k2CtenM4PAgCLOOSgycsJhjr3B/MdGScyJ97Gx/nCyaJEkMno+ozjhdHfxZJuolhUPr
 dwAVEScR2vHNdKAnuxpOIno542NHr1n2W8cgMeMxO1j34UXAbbSYonWms4f9HmUJkwVb
 dvlPnUxehs4g9792F+6s2YwsJ92VCTgA7Uj4Dbhx61bpveQa42TVlwv8EhnRfrH87bnk
 axRw==
X-Gm-Message-State: ACgBeo0XzVchQ6/Eo9A/JZZ0pHESlW/WXPMlGuizLm/8e7Q/satFHNME
 gi7OPtdvoZrdjsbyxVhBi5mhqRN7CbFcnZKgevE=
X-Google-Smtp-Source: AA6agR6BNX2F9Y9ZIIDa+QrhIR5b6dHU1HcqWxalSzQWPAX0UT1Ya2RppBBoss/cwv/5Aq4IVZ82hDLQrVPH8bwsqrw=
X-Received: by 2002:a17:903:40cf:b0:174:be28:6d3c with SMTP id
 t15-20020a17090340cf00b00174be286d3cmr8688553pld.126.1661843156836; Tue, 30
 Aug 2022 00:05:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220826065627.1615965-1-floridsleeves@gmail.com>
 <3226a822-b8be-b712-737a-f8cc523ebed1@intel.com>
In-Reply-To: <3226a822-b8be-b712-737a-f8cc523ebed1@intel.com>
From: Li Zhong <floridsleeves@gmail.com>
Date: Tue, 30 Aug 2022 00:05:45 -0700
Message-ID: <CAMEuxRr7qmP7e=HzbX=W1s7rC9b8noVJmxsMvBj9LLMgjcHvtA@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Tue, 30 Aug 2022 12:54:14 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=UYQLKisXo/BAxNrAA7zsBCJdL0psoCAOEA7a+b76dao=;
 b=c1ax37GJTbb8ap0dMglhKXjm2j8LhQAeTuYyh7wsb0Nj1UFwv7ktd6XmU6SBBN9sL5
 LklTffP+wP7AmnqEgo5TgfxQW4Be8a9AODFxVGX2wSjC2kpnk95O1tmaZWWtMHsLMWUH
 aEzYC3aJanKwnGtNUpLLAMDAEFShdQMGjUocb+AykBl8jA+LuM4jWTOvN0zV7uNrSGz/
 O0/BGTXX6sshb/y2HS015kXFXW1cn8Yz93mzRkGeOtWw7tztyFJQN1biTNwkElbWCXsY
 m/C6fDjiQ3SK+KpKu5aRBJ2TC7vHJ9gxsFx94DuOh0AramrIqjLXBoXE0YkWd3l8oLP0
 FvEg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=c1ax37GJ
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] drivers/net/ethernet:
 check return value of e1e_rphy()
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 29, 2022 at 11:03 AM Neftin, Sasha <sasha.neftin@intel.com> wrote:
>
> On 8/26/2022 09:56, Li Zhong wrote:
> > e1e_rphy() could return error value, which needs to be checked and
> > reported for debugging and diagnose.
> >
> > Signed-off-by: Li Zhong <floridsleeves@gmail.com>
> > ---
> > drivers/net/ethernet/intel/e1000e/phy.c | 20 +++++++++++++++++---
> > 1 file changed, 17 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> > index fd07c3679bb1..060b263348ce 100644
> > --- a/drivers/net/ethernet/intel/e1000e/phy.c
> > +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> > @@ -2697,9 +2697,14 @@ static s32 e1000_access_phy_wakeup_reg_bm(struct e1000_hw *hw, u32 offset,
> > void e1000_power_up_phy_copper(struct e1000_hw *hw)
> > {
> > u16 mii_reg = 0;
> > + int ret;
> >
> > /* The PHY will retain its settings across a power down/up cycle */
> > - e1e_rphy(hw, MII_BMCR, &mii_reg);
> > + ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
> > + if (ret) {
> > + e_dbg("Error reading PHY register\n");
> > + return;
> > + }
> > mii_reg &= ~BMCR_PDOWN;
> > e1e_wphy(hw, MII_BMCR, mii_reg);
> > }
> > @@ -2715,9 +2720,14 @@ void e1000_power_up_phy_copper(struct e1000_hw *hw)
> > void e1000_power_down_phy_copper(struct e1000_hw *hw)
> > {
> > u16 mii_reg = 0;
> > + int ret;
> >
> > /* The PHY will retain its settings across a power down/up cycle */
> > - e1e_rphy(hw, MII_BMCR, &mii_reg);
> > + ret = e1e_rphy(hw, MII_BMCR, &mii_reg);
> > + if (ret) {
> > + e_dbg("Error reading PHY register\n");
> > + return;
> > + }
> > mii_reg |= BMCR_PDOWN;
> > e1e_wphy(hw, MII_BMCR, mii_reg);
> > usleep_range(1000, 2000);
> > @@ -3037,7 +3047,11 @@ s32 e1000_link_stall_workaround_hv(struct e1000_hw *hw)
> > return 0;
> >
> > /* Do not apply workaround if in PHY loopback bit 14 set */
> > - e1e_rphy(hw, MII_BMCR, &data);
> > + ret_val = e1e_rphy(hw, MII_BMCR, &data);
> > + if (ret_val) {
> > + e_dbg("Error reading PHY register\n");
> > + return ret_val;
> > + }
> > if (data & BMCR_LOOPBACK)
> > return 0;
> >
> Generally, I am good with this patch. One question - it is old HW, any
> idea how to check it? (82577/82578 GbE LOM - from 2008)
> Li, how did you check it manually?

These bugs are detected by static analysis. Therefore it's not run-time
checked. However, since currently there is no error handling after
e1e_rphy(), so I think it's necessary to at least check it and expect
there is a chance to fail.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
