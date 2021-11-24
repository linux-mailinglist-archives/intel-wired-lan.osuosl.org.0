Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0088945B44F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Nov 2021 07:34:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E8F6401EC;
	Wed, 24 Nov 2021 06:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gdRYmZVVuoKO; Wed, 24 Nov 2021 06:34:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FA5940117;
	Wed, 24 Nov 2021 06:34:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F33C31BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 06:34:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EE86A80CC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 06:34:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Joncq3BlIKgC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Nov 2021 06:34:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 028B080CB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 06:34:32 +0000 (UTC)
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 28CBF3F1E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 06:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1637735670;
 bh=guuwLJoUHG0Pp+fLEKyXR1ouSwDQ+4obA9pivZjno18=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=nyT5EXqeVUoqE4osVrTI6DpNnNZtBpnOjtVDUKcnbeqh1CD2YPfVYTXPG7+eRB+oH
 MztS42+QQ6e8Dblu0aS/c1mbwtsopd67NSLucmj/Dzat7vcLdMWvy3SkF3BE1ELohH
 D9LBkaE09gZXBYNkqz+VC+yMYMtxdT8H0q8xzfhp+oL00FlkejLW8SVs/lUDPV4hnP
 UZ8iyKp0lT9dIY35iCu9EPz8zJMwWpmeoza+c8D7yToIl0xZEIMjGan7c26YeuWflV
 O8NnouMU7lB8cinsYHhGEuJS0qz0Vx1UXvsrq2RjLqgoEkV6ac1UIAQC/uFV/UjEWf
 SaZs58YCKxA8g==
Received: by mail-oo1-f72.google.com with SMTP id
 v2-20020a4ae6c2000000b002c622008d77so1101746oot.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 22:34:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=guuwLJoUHG0Pp+fLEKyXR1ouSwDQ+4obA9pivZjno18=;
 b=X9A/vkPBYMjpyh+PlbQztJnp+LiH1Mu/DJqo8m0/3AGe+U3DVPq7X/de6eHNQvwP47
 FlM1cp4qawU+gxOAOt0Nt/tmJuQULHgCuVxTSt2VTJxtQ05k6Och37VoiWjMbKx12aDQ
 jsko6yduk6ZQxwVZZf29REiqcjf1WLPz6jFP/BhaudMgj4QiE1OGLtAgQM7Kd0QC3Qin
 ZLZ+hCZ9AhcOz49BtZBtZBbG2v7uXLOMvuD7VbweTlE4AyIfGlvm1/hADViqtMb7z+cL
 VeJNtyVRs8Xyt0X+VRC/uG8aMBH5F7dIfnI+i5PCYiJG+so1EEzeJWbH7ieyUaowd0kl
 aIhQ==
X-Gm-Message-State: AOAM532Oov+oHb3nVelhSTCryOJ3oVewirMg0J4pIouhsM7WKbZKOELC
 K886goea8xrpeLc8++bHdBIBwne4Yi8RB2/GuHNvzeMAQN4ncbEEjClLoqLOr5ntZbddlYw1+No
 fvCRnGdG8+V0hjlBJFiGOsMM5x+V9s+OAkcYSiXFxZiY9R3V2FHWqgCIm7l6HQgo=
X-Received: by 2002:a9d:58f:: with SMTP id 15mr7638196otd.11.1637735669024;
 Tue, 23 Nov 2021 22:34:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzk0s+woLJZ3U0nArE/e84jqSdDYeQUZMcxSngcU2abNCsW/mVXbjBkfmDt/xiIeXtDQ8KI08M50nmkjwh5xZk=
X-Received: by 2002:a9d:58f:: with SMTP id 15mr7638161otd.11.1637735668679;
 Tue, 23 Nov 2021 22:34:28 -0800 (PST)
MIME-Version: 1.0
References: <20211122161927.874291-1-kai.heng.feng@canonical.com>
 <14e6c86d-0764-ceaf-4244-fcbf2c2dc23e@intel.com>
In-Reply-To: <14e6c86d-0764-ceaf-4244-fcbf2c2dc23e@intel.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Wed, 24 Nov 2021 14:34:16 +0800
Message-ID: <CAAd53p4cQ+3HQKP3--SW68fNPM9LZPbkBrrA68iu12-gA4-B7Q@mail.gmail.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 1/3] Revert "e1000e: Additional PHY
 power saving in S0ix"
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 acelan.kao@canonical.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi, Vitaly,

On Tue, Nov 23, 2021 at 11:22 PM Lifshits, Vitaly
<vitaly.lifshits@intel.com> wrote:
>
> Hello Kai,
>
>
> We believe that simply reverting these patches is not a good idea. It will cause the driver to behave on a corporate system as if the CSME firmware is not there. This can lead to an unpredictable behavior in the long run.

I really don't want to revert the series either.

>
>
> The issue exposed by these patches is currently under active debug. We would like to find the root cause and fix it in a way that will still enable S0ix power savings on both corporate and consumer systems.

I am aware. But we've been waiting for the fix for a while, so I guess
it's better to revert the series now, and re-apply them when the fix
is ready.

Kai-Heng

>
>
> On 11/22/2021 18:19, Kai-Heng Feng wrote:
>
> This reverts commit 3ad3e28cb203309fb29022dea41cd65df0583632.
>
> The s0ix series makes e1000e on TGL and ADL fails to work after s2idle
> resume.
>
> There doesn't seem to be any solution soon, so revert the whole series.
>
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 44e2dc8328a22..e16b7c0d98089 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6380,16 +6380,10 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
>   ew32(CTRL_EXT, mac_data);
>
>   /* DFT control: PHY bit: page769_20[0] = 1
> - * page769_20[7] - PHY PLL stop
> - * page769_20[8] - PHY go to the electrical idle
> - * page769_20[9] - PHY serdes disable
>   * Gate PPW via EXTCNF_CTRL - set 0x0F00[7] = 1
>   */
>   e1e_rphy(hw, I82579_DFT_CTRL, &phy_data);
>   phy_data |= BIT(0);
> - phy_data |= BIT(7);
> - phy_data |= BIT(8);
> - phy_data |= BIT(9);
>   e1e_wphy(hw, I82579_DFT_CTRL, phy_data);
>
>   mac_data = er32(EXTCNF_CTRL);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
