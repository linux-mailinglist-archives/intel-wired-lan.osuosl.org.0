Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D6D193D1F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2020 11:41:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B5B7204D7;
	Thu, 26 Mar 2020 10:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YCw5-SyB5NIZ; Thu, 26 Mar 2020 10:41:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 273CE2079D;
	Thu, 26 Mar 2020 10:41:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 720851BF354
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 10:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6ABBB20767
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 10:41:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z-Lsf6vqMSVJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2020 10:41:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A9D3204D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 10:41:34 +0000 (UTC)
Received: from mail-pl1-f199.google.com ([209.85.214.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jHPx7-00047t-2z
 for intel-wired-lan@lists.osuosl.org; Thu, 26 Mar 2020 10:41:33 +0000
Received: by mail-pl1-f199.google.com with SMTP id x6so3960346plo.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 03:41:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=UeRJQevSUHXBRlf/4ze6OiB+Fx/GsXnxWvYb+Xd4brE=;
 b=luS237/ljB9jPlIsRB4H/6KbG32/EE1xtSlD0d3gB9fFuVbpV68weczTdzLTCiSqQM
 x7VhE7/UmdRy7cw4j8vfygDoZcYbCdNrM3LUb2RjgY4QY3MTy6DZb52lFckkEH5cCp6Y
 Z66xKDkvCpCzgwLAS2TNgEQiPY/oQ+86ffAdSs7gk7YfcbGEhV2wJuQpXQkRyyTsZb94
 8LTNOfRYM1vFWN/fySXdhLR7V+iA3mQGEinwzgj0YNxjoKPwfPbSlIc8FF5pTIIfy5qH
 rt/GYzAepGf9tAQArMHk+7P439zf4lPbqG34whkmVg8kgFMg30KYgIzP1E36kJsDeod2
 8sGw==
X-Gm-Message-State: ANhLgQ2HIKwIt5/l9UWA6zsnGON81/xzMs1HszF4CMz5PUj9nb3LbFzM
 aT9hfURsmY+YzXoVfQi4emo+7ffCh709liElsJLqmGZkqKxl+XHjsH1/S+fouHECMiPaiE3SpL0
 MEqMvYRNDKg7kLydW4TbzRbF1gxec7Z7G0eI417ywx6GF0b8=
X-Received: by 2002:a17:90a:1784:: with SMTP id
 q4mr2309537pja.174.1585219291697; 
 Thu, 26 Mar 2020 03:41:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvtvJeTgPnEHGqTVNs/nJiX7tpC4tKYPn4puM7/6xSliRABW/x4XN6hP9XhPfgKgJi/+xPhqw==
X-Received: by 2002:a17:90a:1784:: with SMTP id
 q4mr2309504pja.174.1585219291245; 
 Thu, 26 Mar 2020 03:41:31 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id mm18sm1341970pjb.39.2020.03.26.03.41.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Mar 2020 03:41:30 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20200326103926.20888-1-kai.heng.feng@canonical.com>
Date: Thu, 26 Mar 2020 18:41:28 +0800
Message-Id: <EEE6C808-A7FC-42B6-8FA7-3958EE4C0BBC@canonical.com>
References: <20200326103926.20888-1-kai.heng.feng@canonical.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: Re: [Intel-wired-lan] [PATCH] igb: Use a sperate mutex insead of
 rtnl_lock()
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
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

> On Mar 26, 2020, at 18:39, Kai-Heng Feng <kai.heng.feng@canonical.com> wrote:
> 
> Commit 9474933caf21 ("igb: close/suspend race in netif_device_detach")
> fixed race condition between close and power management ops by using
> rtnl_lock().
> 
> This fix is a preparation for next patch, to prevent a dead lock under
> rtnl_lock() when calling runtime resume routine.
> 
> However, we can't use device_lock() in igb_close() because when module
> is getting removed, the lock is already held for igb_remove(), and
> igb_close() gets called during unregistering the netdev, hence causing a
> deadlock. So let's introduce a new mutex so we don't cause a deadlock
> with driver core or netdev core.
> 
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

Please drop "igb: Use device_lock() insead of rtnl_lock()" and use this one instead.
Thanks!

Kai-Heng

> ---
> drivers/net/ethernet/intel/igb/igb_main.c | 19 +++++++++++++------
> 1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index b46bff8fe056..dc7ed5dd216b 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -288,6 +288,8 @@ static const struct igb_reg_info igb_reg_info_tbl[] = {
> 	{}
> };
> 
> +static DEFINE_MUTEX(igb_mutex);
> +
> /* igb_regdump - register printout routine */
> static void igb_regdump(struct e1000_hw *hw, struct igb_reg_info *reginfo)
> {
> @@ -4026,9 +4028,14 @@ static int __igb_close(struct net_device *netdev, bool suspending)
> 
> int igb_close(struct net_device *netdev)
> {
> +	int err = 0;
> +
> +	mutex_lock(&igb_mutex);
> 	if (netif_device_present(netdev) || netdev->dismantle)
> -		return __igb_close(netdev, false);
> -	return 0;
> +		err = __igb_close(netdev, false);
> +	mutex_unlock(&igb_mutex);
> +
> +	return err;
> }
> 
> /**
> @@ -8760,7 +8767,7 @@ static int __igb_shutdown(struct pci_dev *pdev, bool *enable_wake,
> 	u32 wufc = runtime ? E1000_WUFC_LNKC : adapter->wol;
> 	bool wake;
> 
> -	rtnl_lock();
> +	mutex_lock(&igb_mutex);
> 	netif_device_detach(netdev);
> 
> 	if (netif_running(netdev))
> @@ -8769,7 +8776,7 @@ static int __igb_shutdown(struct pci_dev *pdev, bool *enable_wake,
> 	igb_ptp_suspend(adapter);
> 
> 	igb_clear_interrupt_scheme(adapter);
> -	rtnl_unlock();
> +	mutex_unlock(&igb_mutex);
> 
> 	status = rd32(E1000_STATUS);
> 	if (status & E1000_STATUS_LU)
> @@ -8897,13 +8904,13 @@ static int __maybe_unused igb_resume(struct device *dev)
> 
> 	wr32(E1000_WUS, ~0);
> 
> -	rtnl_lock();
> +	mutex_lock(&igb_mutex);
> 	if (!err && netif_running(netdev))
> 		err = __igb_open(netdev, true);
> 
> 	if (!err)
> 		netif_device_attach(netdev);
> -	rtnl_unlock();
> +	mutex_unlock(&igb_mutex);
> 
> 	return err;
> }
> -- 
> 2.17.1
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
