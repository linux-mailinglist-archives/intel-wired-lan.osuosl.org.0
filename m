Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C21A275A88
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 16:44:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A96F287326;
	Wed, 23 Sep 2020 14:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRwezcbGn0p8; Wed, 23 Sep 2020 14:44:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D83A87340;
	Wed, 23 Sep 2020 14:44:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1E381BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 14:44:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DD5F784E1A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 14:44:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UtktDoywOkTf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 14:44:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ABD8484DE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 14:44:18 +0000 (UTC)
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kL60G-00087u-2f
 for intel-wired-lan@lists.osuosl.org; Wed, 23 Sep 2020 14:44:16 +0000
Received: by mail-pf1-f199.google.com with SMTP id q16so13853298pfj.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 07:44:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=pLpsqwyAc34XRY67/IthHjRexsEe8HGW6p/p61VILpo=;
 b=ckccuy6swt/DSiGvN4WXS719oDfMhsoPnZZtfz6pi1b96P5wlxFFuCHnzUFtvN+ZAW
 tcIK/3SmS687x+bm4qAJfj2b9rsDEfjk3kClMSc058S6PY+s4JkOUeEbg+rb2kjVX2wR
 Blm268elIgCVN+BxdIqQbkx9JMVKtfGVKwgXEiOsVxdHziIdr1jgaaGVTUE7vVp8Q6ZH
 +pD9FJkuUZJJfO+mKzNRZ8NW77iYXIipK9n5VoG9tA/w4SEKAOMRX+zAq1qugASRrVAi
 qISk6HfITF19jIMpV2qZEYsYPHd14Vl3QVmcZ77ATPVuSxPjE1xmxfXB07WctC2UZI+r
 7dkw==
X-Gm-Message-State: AOAM5329O7mE0c67bRV4u/U1CiVDWrzzf87mCx20QpUXiEsS8a3hIoRD
 BBGzBnsmAJUXPlIpKzV7w5uQFXLJbntYrqPOBON+PsWMc8kj/34FP9fUnStNovmf4tGhM+4cop6
 /hVFV7ZdRJSEJm2o+cAysqXBeqCWrhvAaxXByFXL4iZYdIrg=
X-Received: by 2002:a17:90a:e207:: with SMTP id
 a7mr9024638pjz.117.1600872254107; 
 Wed, 23 Sep 2020 07:44:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxwIIlGXDZa+VMJLNOd0CPYXdHbIh3zAqmGsa0AyAjb9Kn7ZGhqNeA+AcMSXkAZcadbGJc7UA==
X-Received: by 2002:a17:90a:e207:: with SMTP id
 a7mr9024604pjz.117.1600872253706; 
 Wed, 23 Sep 2020 07:44:13 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id l141sm28777pfd.47.2020.09.23.07.44.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Sep 2020 07:44:13 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20200923121748.GE3770354@lunn.ch>
Date: Wed, 23 Sep 2020 22:44:10 +0800
Message-Id: <F6075687-7BC4-4348-86A8-29D83B7E5AAC@canonical.com>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
 <20200923121748.GE3770354@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailer: Apple Mail (2.3608.120.23.2.1)
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Power cycle phy on PM resume
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
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Andrew,

> On Sep 23, 2020, at 20:17, Andrew Lunn <andrew@lunn.ch> wrote:
> 
> On Wed, Sep 23, 2020 at 03:47:51PM +0800, Kai-Heng Feng wrote:
>> We are seeing the following error after S3 resume:
>> [  704.746874] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.844232] e1000e 0000:00:1f.6 eno1: MDI Write did not complete
>> [  704.902817] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.903075] e1000e 0000:00:1f.6 eno1: reading PHY page 769 (or 0x6020 shifted) reg 0x17
>> [  704.903281] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.903486] e1000e 0000:00:1f.6 eno1: writing PHY page 769 (or 0x6020 shifted) reg 0x17
>> [  704.943155] e1000e 0000:00:1f.6 eno1: MDI Error
>> ...
>> [  705.108161] e1000e 0000:00:1f.6 eno1: Hardware Error
>> 
>> Since we don't know what platform firmware may do to the phy, so let's
>> power cycle the phy upon system resume to resolve the issue.
>> 
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> ---
>> drivers/net/ethernet/intel/e1000e/netdev.c | 2 ++
>> 1 file changed, 2 insertions(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 664e8ccc88d2..c2a87a408102 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -6968,6 +6968,8 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
>> 	    !e1000e_check_me(hw->adapter->pdev->device))
>> 		e1000e_s0ix_exit_flow(adapter);
>> 
>> +	e1000_power_down_phy(adapter);
>> +
> 
> static void e1000_power_down_phy(struct e1000_adapter *adapter)
> {
> 	struct e1000_hw *hw = &adapter->hw;
> 
> 	/* Power down the PHY so no link is implied when interface is down *
> 	 * The PHY cannot be powered down if any of the following is true *
> 	 * (a) WoL is enabled
> 	 * (b) AMT is active
> 	 * (c) SoL/IDER session is active
> 	 */
> 	if (!adapter->wol && hw->mac_type >= e1000_82540 &&
> 	   hw->media_type == e1000_media_type_copper) {

Looks like the the function comes from e1000, drivers/net/ethernet/intel/e1000/e1000_main.c.
However, this patch is for e1000e, so the function with same name is different.

> 
> Could it be coming out of S3 because it just received a WoL?

No, the issue can be reproduced by pressing keyboard or rtcwake.

> 
> It seems unlikely that it is the MII_CR_POWER_DOWN which is helping,
> since that is an MDIO write itself. Do you actually know how this call
> to e1000_power_down_phy() fixes the issues?

I don't know from hardware's perspective, but I think the comment on e1000_power_down_phy_copper() can give us some insight:

/**
 * e1000_power_down_phy_copper - Restore copper link in case of PHY power down
 * @hw: pointer to the HW structure
 *
 * In the case of a PHY power down to save power, or to turn off link during a
 * driver unload, or wake on lan is not enabled, restore the link to previous
 * settings.                       
 **/
void e1000_power_down_phy_copper(struct e1000_hw *hw)
{
        u16 mii_reg = 0;

        /* The PHY will retain its settings across a power down/up cycle */
        e1e_rphy(hw, MII_BMCR, &mii_reg);
        mii_reg |= BMCR_PDOWN;
        e1e_wphy(hw, MII_BMCR, mii_reg);
        usleep_range(1000, 2000);
}

Kai-Heng

> 
>   Andrew

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
