Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D55E1FAF0B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2020 13:24:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8992B87571;
	Tue, 16 Jun 2020 11:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bndDkGer75vm; Tue, 16 Jun 2020 11:24:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1AC187581;
	Tue, 16 Jun 2020 11:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFADF1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 11:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A755887562
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 11:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kPmfRfdTP1va for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2020 11:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C17787539
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 11:24:02 +0000 (UTC)
Received: from mail-pl1-f199.google.com ([209.85.214.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jl9hA-0005PY-Cj
 for intel-wired-lan@lists.osuosl.org; Tue, 16 Jun 2020 11:24:00 +0000
Received: by mail-pl1-f199.google.com with SMTP id 59so13557745pla.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 04:24:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=RKV/iihpMFOKrX8Dy/UHawwcIU/eq1oQLDV9xYsClvQ=;
 b=ntq6owyDvfr+vj0wV+v0P+Ufm3ymactbPCbDGWHKPGG79Nyuhr0HI3XekRBhtHYeAN
 OOW7lm/svXmNiU6IVyVzjkfxYMlhkZkpFlzX2SzOvggo6RsRI3VTFX3WqWlLUAHlahxs
 FbMS9QgT++QThMV6WKJxH3pIcPxEcrmYmJxj2KD4AQKqoMSHEOt8d3y3Mcv9Z3k6ptTi
 kiZE1DIhAX2qiyCn5BS8Fm9NUQfJnaRWLUgrBHBn1dz840lGnh7vaMCll6G+vh1FoWOG
 iT9rVqgT0OTpJLdlhxDb2TWxoMQNGA9ZfeSq0WgF0eTUhD3QAG0HCDEx8Mz7exRTs17U
 PZDA==
X-Gm-Message-State: AOAM531b+RdpKa0hy6/5QK520W/w+Ka0pVJseYzQ8Fui1HHmQ4YjHTgZ
 H9kXFJLY0xlsS8kZlf0HJBD0d5itzf7WyKAMhcOOB34PsHK0geeSihJU3aaw4Vzfa6azlMFJzzN
 eJE0zdOEuCVlAqIlOKX2QCZ+hSbjfZIx5PQv0qcH/Ot3Wi9A=
X-Received: by 2002:aa7:9f10:: with SMTP id g16mr1692907pfr.47.1592306638259; 
 Tue, 16 Jun 2020 04:23:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxn76cJL80QgLRqpVQR9LS39Yxme3oExRkYxI5UyhE9Nws2RV5nZr3RTYu817dCcgb8VQkTjA==
X-Received: by 2002:aa7:9f10:: with SMTP id g16mr1692885pfr.47.1592306637881; 
 Tue, 16 Jun 2020 04:23:57 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id gg10sm2268181pjb.38.2020.06.16.04.23.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jun 2020 04:23:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20200616100512.22512-1-aaron.ma@canonical.com>
Date: Tue, 16 Jun 2020 19:23:53 +0800
Message-Id: <4CC928F1-02CC-4675-908E-42B26C151FA1@canonical.com>
References: <20200616100512.22512-1-aaron.ma@canonical.com>
To: Aaron Ma <aaron.ma@canonical.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: continue to init phy even
 when failed to disable ULP
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
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On Jun 16, 2020, at 18:05, Aaron Ma <aaron.ma@canonical.com> wrote:
> 
> After commit "e1000e: disable s0ix entry and exit flows for ME systems",
> some ThinkPads always failed to disable ulp by ME.
> commit "e1000e: Warn if disabling ULP failed" break out of init phy:
> 
> error log:
> [   42.364753] e1000e 0000:00:1f.6 enp0s31f6: Failed to disable ULP
> [   42.524626] e1000e 0000:00:1f.6 enp0s31f6: PHY Wakeup cause - Unicast Packet
> [   42.822476] e1000e 0000:00:1f.6 enp0s31f6: Hardware Error
> 
> When disable s0ix, E1000_FWSM_ULP_CFG_DONE will never be 1.
> If continue to init phy like before, it can work as before.
> iperf test result good too.
> 
> Chnage e_warn to e_dbg, in case it confuses.
> 
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
> drivers/net/ethernet/intel/e1000e/ich8lan.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index f999cca37a8a..63405819eb83 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -302,8 +302,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
> 	hw->dev_spec.ich8lan.ulp_state = e1000_ulp_state_unknown;
> 	ret_val = e1000_disable_ulp_lpt_lp(hw, true);

If si0x entry isn't enabled, maybe skip calling e1000_disable_ulp_lpt_lp() altogether?
We can use e1000e_check_me() to check that.

> 	if (ret_val) {
> -		e_warn("Failed to disable ULP\n");
> -		goto out;
> +		e_dbg("Failed to disable ULP\n");
> 	}

The change of "e1000e: Warn if disabling ULP failed" is intentional to catch bugs like this.

Kai-Heng

> 
> 	ret_val = hw->phy.ops.acquire(hw);
> -- 
> 2.26.2
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
