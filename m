Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DC2192016
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 05:17:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 282B420354;
	Wed, 25 Mar 2020 04:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jYdAvoyS6dV9; Wed, 25 Mar 2020 04:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A999C20531;
	Wed, 25 Mar 2020 04:17:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD7D61BF292
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 04:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D17D485C57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 04:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 59YlUoMZmytp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 04:17:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD8DF85C3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 04:17:23 +0000 (UTC)
Received: from mail-pf1-f197.google.com ([209.85.210.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jGxTl-0006Sn-4L
 for intel-wired-lan@lists.osuosl.org; Wed, 25 Mar 2020 04:17:21 +0000
Received: by mail-pf1-f197.google.com with SMTP id i26so1065232pfk.20
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2020 21:17:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=vVoJdtTocGUlP29HjnLch4GTGfFRHYMMlLvLUSfKJds=;
 b=g81LjtNo6pksji+cwqw29xLD0v6YYQfjkg2C1Mj5j4TyY7EvkFs8XiktSC2wEpmJXU
 H/WBFWRijW9hM23HwphIf7CFaoBdqMWf5Vt7g57Kjoz/SZy8+35/R3R5bHpgeUCJdnu5
 Wb9HvtPv6+nidnobVcMCYnSVJf7dXaoe6TldvnTr+I4I3P/wkH+HdKgfx4r/BP3tT9IR
 eWtEGyRghJbYKPXUbY0kjs0Yw3335dAl/77kOaKt8vJ0U8r/HeAhFMIMg78RqYSpezJW
 922LswocNm8qzeFda/PfbKEsTSIBl6OfnVWKmigcMGy5u0lMSt/9SuL6rTVZR0BFF42D
 HYvQ==
X-Gm-Message-State: ANhLgQ3JiIsMTVcWM8V+L4Z3BaCqMXFiV9licsN/YAJV3/otIbUO5RD8
 a2Y+MmoPxX2imjF6qsKMYJxLGCfhymm3j+/rtO8J31tgEuz4A68T7GjTQwtuIzCQJAO9y/SfG3T
 XQQEZaUBFldPLNCRPH274T0Dd4OSTMRGQID5fgqwMQ6W04Og=
X-Received: by 2002:aa7:947d:: with SMTP id t29mr1294535pfq.184.1585109839584; 
 Tue, 24 Mar 2020 21:17:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvQpxqBo4YHRa+qrNZnbKcUGaBxApWGqCw9RRRFcwLQK05ook0U0OCinknPd7UlfBZiO4AOKQ==
X-Received: by 2002:aa7:947d:: with SMTP id t29mr1294515pfq.184.1585109839226; 
 Tue, 24 Mar 2020 21:17:19 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id q19sm6720989pgn.93.2020.03.24.21.17.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 21:17:18 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20200323191639.48826-1-aaron.ma@canonical.com>
Date: Wed, 25 Mar 2020 12:17:15 +0800
Message-Id: <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
To: Aaron Ma <aaron.ma@canonical.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Aaron,

> On Mar 24, 2020, at 03:16, Aaron Ma <aaron.ma@canonical.com> wrote:
> 
> ME takes 2+ seconds to un-configure ULP mode done after resume
> from s2idle on some ThinkPad laptops.
> Without enough wait, reset and re-init will fail with error.

Thanks, this patch solves the issue. We can drop the DMI quirk in favor of this patch.

> 
> Fixes: f15bb6dde738cc8fa0 ("e1000e: Add support for S0ix")
> BugLink: https://bugs.launchpad.net/bugs/1865570
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
> drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index b4135c50e905..147b15a2f8b3 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -1240,9 +1240,9 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
> 			ew32(H2ME, mac_reg);
> 		}
> 
> -		/* Poll up to 300msec for ME to clear ULP_CFG_DONE. */
> +		/* Poll up to 2.5sec for ME to clear ULP_CFG_DONE. */
> 		while (er32(FWSM) & E1000_FWSM_ULP_CFG_DONE) {
> -			if (i++ == 30) {
> +			if (i++ == 250) {
> 				ret_val = -E1000_ERR_PHY;
> 				goto out;
> 			}

The return value was not caught by the caller, so the error ends up unnoticed.
Maybe let the caller check the return value of e1000_disable_ulp_lpt_lp()?

Kai-Heng

> -- 
> 2.17.1
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
