Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 366BD1E5B2A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 10:51:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D8BCE863E2;
	Thu, 28 May 2020 08:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRLqbvv9co5C; Thu, 28 May 2020 08:51:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B74A86A78;
	Thu, 28 May 2020 08:51:09 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2941C1BF40D
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 08:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE102203E9
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 08:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oHoxpO4GhKtI for <intel-wired-lan@osuosl.org>;
 Thu, 28 May 2020 08:50:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id F058720381
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 08:50:26 +0000 (UTC)
IronPort-SDR: ZHnSAgL1L/b9FxS9HIXjEW4IW32/4j87PG3ocOnbrRn8RGEdu3A1ePwbQlqK2aXQJKc9UneHNC
 PWaTBROYc5RA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 01:50:26 -0700
IronPort-SDR: Bg9ga8Bvc1ReIh5XYkOABd6iDDeQoHTuThbJvG5g1QXNE8xRVjiLOzwdTU7WoOOVRWlMXiPSV+
 pgKtfEu5+F7Q==
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; 
 d="scan'208,217";a="414534593"
Received: from aavivi-mobl.ger.corp.intel.com (HELO [10.214.235.207])
 ([10.214.235.207])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 01:50:24 -0700
To: intel-wired-lan@osuosl.org, punit1.agrawal@toshiba.co.jp
References: <mailman.9577.1590117676.59095.intel-wired-lan@osuosl.org>
 <SN6PR11MB3424D891CB5ACD6DC8347560978E0@SN6PR11MB3424.namprd11.prod.outlook.com>
From: "Avivi, Amir" <amir.avivi@linux.intel.com>
Message-ID: <c4d14894-d0dd-1a5c-2ff5-2f9da23dbc75@linux.intel.com>
Date: Thu, 28 May 2020 11:50:22 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <SN6PR11MB3424D891CB5ACD6DC8347560978E0@SN6PR11MB3424.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Intel-wired-lan Digest, Vol 268, Issue 43
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
Content-Type: multipart/mixed; boundary="===============0191686672889005782=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--===============0191686672889005782==
Content-Type: multipart/alternative;
 boundary="------------A62B279B9A1D59F754A2B875"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A62B279B9A1D59F754A2B875
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

> ------------------------------------------------------------------------
>
> *From:*Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> on behalf 
> of intel-wired-lan-request@osuosl.org <intel-wired-lan-request@osuosl.org>
> *Sent:* Friday, 22 May 2020 06:21
> *To:* intel-wired-lan@osuosl.org <intel-wired-lan@osuosl.org>
> *Subject:* Intel-wired-lan Digest, Vol 268, Issue 43
>
> Send Intel-wired-lan mailing list submissions to
>         intel-wired-lan@osuosl.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> or, via email, send a message with subject or body 'help' to
>         intel-wired-lan-request@osuosl.org
>
> You can reach the person managing the list at
>         intel-wired-lan-owner@osuosl.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of Intel-wired-lan digest..."
>
>
> Today's Topics:
>
>    1. Re: [PATCH v2 1/1] igc: Add initial EEE support (Andre Guedes)
>    2. Re: [PATCH 2/2] e1000e: Make WOL info in ethtool consistent
>       with device wake up ability (Michal Kubecek)
>    3. [PATCH 0/2] Make WOL of e1000e consistent with sysfs device
>       wakeup (Chen Yu)
>    4. [PATCH 1/2] e1000e: Do not wake up the system via WOL if
>       device wakeup is disabled (Chen Yu)
>    5. [PATCH 2/2] e1000e: Make WOL info in ethtool consistent with
>       device wake up ability (Chen Yu)
>    6. Re: [PATCH] e1000e: Relax condition to trigger reset for ME
>       workaround (Punit Agrawal)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Thu, 21 May 2020 11:09:07 -0700
> From: Andre Guedes <andre.guedes@intel.com>
> To: Sasha Neftin <sasha.neftin@intel.com>,
>         intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igc: Add initial EEE
>         support
> Message-ID:
> <159008454769.70366.11413367573186547439@swaranku-mobl2.amr.corp.intel.com>
>
> Content-Type: text/plain; charset="utf-8"
>
> Hi Sasha,
>
> Quoting Sasha Neftin (2020-05-20 22:10:33)
> > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c 
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > index 2214a5d3a259..3035d3a96621 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> [...]
> > +static int igc_ethtool_set_eee(struct net_device *netdev,
> > +                              struct ethtool_eee *edata)
> > +{
> > +       struct igc_adapter *adapter = netdev_priv(netdev);
> > +       struct igc_hw *hw = &adapter->hw;
> > +       struct ethtool_eee eee_curr;
> > +       s32 ret_val;
> > +
> > +       memset(&eee_curr, 0, sizeof(struct ethtool_eee));
> > +
> > +       ret_val = igc_ethtool_get_eee(netdev, &eee_curr);
> > +       if (ret_val)
> > +               return ret_val;
> > +
> > +       if (eee_curr.eee_enabled) {
> > +               if (eee_curr.tx_lpi_enabled != edata->tx_lpi_enabled) {
> > +                       netdev_err(netdev,
> > +                                  "Setting EEE tx-lpi is not 
> supported\n");
> > +                       return -EINVAL;
> > +               }
> > +
> > +               /* Tx LPI timer is not implemented currently */
> > +               if (edata->tx_lpi_timer) {
> > +                       netdev_err(netdev,
> > +                                  "Setting EEE Tx LPI timer is not 
> supported\n");
> > +                       return -EINVAL;
> > +               }
> > +       } else if (!edata->eee_enabled) {
> > +               netdev_err(netdev,
> > +                          "Setting EEE options are not supported 
> with EEE disabled\n");
> > +               return -EINVAL;
> > +       }
> > +
> > +       adapter->eee_advert = 
> ethtool_adv_to_mmd_eee_adv_t(edata->advertised);
> > +       if (hw->dev_spec._base.eee_enable != edata->eee_enabled) {
> > +               hw->dev_spec._base.eee_enable = edata->eee_enabled;
> > +               adapter->flags |= IGC_FLAG_EEE;
> > +
> > +               /* reset link */
> > +               if (netif_running(netdev))
> > +                       igc_reinit_locked(adapter);
> > +               else
> > +                       igc_reset(adapter);
> > +       }
> > +
> > +       if (ret_val) {
> > +               netdev_err(netdev,
> > +                          "Problem setting EEE advertisement 
> options\n");
> > +               return -EINVAL;
> > +       }
>
> 'ret_val' is already checked in the beginning of this function, and it 
> is not
> set afterwards. So it seems this check is pointless.
>
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c 
> b/drivers/net/ethernet/intel/igc/igc_main.c
> > index c4df7129f930..6110093c6ad9 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> [...]
> > @@ -5190,6 +5202,10 @@ static int igc_probe(struct pci_dev *pdev,
> >         netdev_info(netdev, "MAC: %pM", netdev->dev_addr);
> >
> >         dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NEVER_SKIP);
> > +       /* Disable EEE for internal copper PHY devices */
> > +       hw->dev_spec._base.eee_enable = false;
> > +       adapter->flags &= ~IGC_FLAG_EEE;
> > +       igc_set_eee_i225(hw, false, false, false);
>
> Could you please clarify if EEE is expected to be enabled or disabled by
> default? IIUC this code, EEE is disabled by default. But in IGB it is 
> enabled
> by default.
>
> In addition to that, the comment above mentions it disables EEE for copper
> devices, but there is no check for such device. Is the comment indeed
> applicable here?
>
> Regards,
>
> Andre
>
>
> ------------------------------
>
> Message: 2
> Date: Thu, 21 May 2020 21:23:42 +0200
> From: Michal Kubecek <mkubecek@suse.cz>
> To: netdev@vger.kernel.org
> Cc: Chen Yu <yu.c.chen@intel.com>, Jeff Kirsher
>         <jeffrey.t.kirsher@intel.com>, "David S. Miller"
>         <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Auke Kok
>         <auke-jan.h.kok@intel.com>, Jeff Garzik <jeff@garzik.org>,
>         intel-wired-lan@lists.osuosl.org, 
> linux-kernel@vger.kernel.org, Len
>         Brown <len.brown@intel.com>, "Rafael J. Wysocki" 
> <rjw@rjwysocki.net>,
>         "Shevchenko, Andriy" <andriy.shevchenko@intel.com>, "Neftin, 
> Sasha"
>         <sasha.neftin@intel.com>, "Lifshits, Vitaly"
>         <vitaly.lifshits@intel.com>, Stable@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH 2/2] e1000e: Make WOL info in
>         ethtool consistent with device wake up ability
> Message-ID: <20200521192342.GE8771@lion.mk-sys.cz>
> Content-Type: text/plain; charset=us-ascii
>
> On Fri, May 22, 2020 at 01:59:13AM +0800, Chen Yu wrote:
> > Currently the ethtool shows that WOL(Wake On Lan) is enabled
> > even if the device wakeup ability has been disabled via sysfs:
> >   cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup
> >    disabled
> >
> >   ethtool eno1
> >   ...
> >   Wake-on: g
> >
> > Fix this in ethtool to check if the user has explicitly disabled the
> > wake up ability for this device.
>
> Wouldn't this lead to rather unexpected and inconsistent behaviour when
> the wakeup is disabled? As you don't touch the set_wol handler, I assume
> it will still allow setting enabled modes as usual so that you get e.g.
>
>   ethtool -s eth0 wol g   # no error or warning, returns 0
>   ethtool eth0            # reports no modes enabled
>
> The first command would set the enabled wol modes but that would be
> hidden from user and even the netlink notification would claim something
> different. Another exampe (with kernel and ethtool >= 5.6):
>
>   ethtool -s eth0 wol g
>   ethtool -s eth0 wol +m
>
> resulting in "mg" if device wakeup is enabled but "m" when it's disabled
> (but the latter would be hidden from user and only revealed when you
> enable the device wakeup).
>
> This is a general problem discussed recently for EEE and pause
> autonegotiation: if setting A can be effectively used only when B is
> enabled, should we hide actual setting of A from userspace when B is
> disabled or even reset the value of A whenever B gets toggled or rather
> allow setting A and B independently? AFAICS the consensus seemed to be
> that A should be allowed to be set and queried independently of the
> value of B.
>
> Michal
>
> > Fixes: 6ff68026f475 ("e1000e: Use device_set_wakeup_enable")
> > Reported-by: Len Brown <len.brown@intel.com>
> > Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Cc: <Stable@vger.kernel.org>
> > Signed-off-by: Chen Yu <yu.c.chen@intel.com>
> > ---
> >  drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c 
> b/drivers/net/ethernet/intel/e1000e/ethtool.c
> > index 1d47e2503072..0cccd823ff24 100644
> > --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> > +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> > @@ -1891,7 +1891,7 @@ static void e1000_get_wol(struct net_device 
> *netdev,
> >        wol->wolopts = 0;
> >
> >        if (!(adapter->flags & FLAG_HAS_WOL) ||
> > - !device_can_wakeup(&adapter->pdev->dev))
> > + !device_may_wakeup(&adapter->pdev->dev))
> >                return;
> >
> >        wol->supported = WAKE_UCAST | WAKE_MCAST |
> > --
> > 2.17.1
> >
>
>
> ------------------------------
>
> Message: 3
> Date: Fri, 22 May 2020 01:58:02 +0800
> From: Chen Yu <yu.c.chen@intel.com>
> To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>, "David S. Miller"
>         <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Auke Kok
>         <auke-jan.h.kok@intel.com>, Jeff Garzik <jeff@garzik.org>
> Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
>         linux-kernel@vger.kernel.org, Len Brown <len.brown@intel.com>, 
> "Rafael
>         J. Wysocki" <rjw@rjwysocki.net>, "Shevchenko, Andriy"
>         <andriy.shevchenko@intel.com>, "Neftin, Sasha"
>         <sasha.neftin@intel.com>, "Lifshits, Vitaly"
>         <vitaly.lifshits@intel.com>, Chen Yu <yu.c.chen@intel.com>
> Subject: [Intel-wired-lan] [PATCH 0/2] Make WOL of e1000e consistent
>         with sysfs device wakeup
> Message-ID: <cover.1590081982.git.yu.c.chen@intel.com>
>
> Currently the WOL(Wake On Lan) bahavior of e1000e is not consistent 
> with its corresponding
> device wake up ability.
> Fix this by:
> 1. Do not wake up the system via WOL if device wakeup is disabled
> 2. Make WOL display info from ethtool consistent with device wake up
>    settings in sysfs
>
> Chen Yu (2):
>   e1000e: Do not wake up the system via WOL if device wakeup is disabled
>   e1000e: Make WOL info in ethtool consistent with device wake up
>     ability
>
>  drivers/net/ethernet/intel/e1000e/ethtool.c |  2 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c  | 14 ++++++++++----
>  2 files changed, 11 insertions(+), 5 deletions(-)
>
> -- 
> 2.17.1
>
>
>
> ------------------------------
>
> Message: 4
> Date: Fri, 22 May 2020 01:59:00 +0800
> From: Chen Yu <yu.c.chen@intel.com>
> To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>, "David S. Miller"
>         <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Auke Kok
>         <auke-jan.h.kok@intel.com>, Jeff Garzik <jeff@garzik.org>
> Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
>         linux-kernel@vger.kernel.org, Len Brown <len.brown@intel.com>, 
> "Rafael
>         J. Wysocki" <rjw@rjwysocki.net>, "Shevchenko, Andriy"
>         <andriy.shevchenko@intel.com>, "Neftin, Sasha"
>         <sasha.neftin@intel.com>, "Lifshits, Vitaly"
>         <vitaly.lifshits@intel.com>, Chen Yu <yu.c.chen@intel.com>,
>         Stable@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH 1/2] e1000e: Do not wake up the
>         system via WOL if device wakeup is disabled
> Message-ID:
> <9f7ede2e2e8152704258fc11ba3755ae93f50741.1590081982.git.yu.c.chen@intel.com>
>
>
> Currently the system will be woken up via WOL(Wake On Lan) even if the
> device wakeup ability has been disabled via sysfs:
>  cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup
>  disabled
>
> The system should not be woken up if the user has explicitly
> disabled the wake up ability for this device.
>
> This patch clears the WOL ability of this network device if the
> user has disabled the wake up ability in sysfs.
>
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver")
> Reported-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Cc: <Stable@vger.kernel.org>
> Signed-off-by: Chen Yu <yu.c.chen@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c 
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 177c6da80c57..f6f730388705 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6516,11 +6516,17 @@ static int __e1000_shutdown(struct pci_dev 
> *pdev, bool runtime)
>          struct net_device *netdev = pci_get_drvdata(pdev);
>          struct e1000_adapter *adapter = netdev_priv(netdev);
>          struct e1000_hw *hw = &adapter->hw;
> -       u32 ctrl, ctrl_ext, rctl, status;
> -       /* Runtime suspend should only enable wakeup for link changes */
> -       u32 wufc = runtime ? E1000_WUFC_LNKC : adapter->wol;
> +       u32 ctrl, ctrl_ext, rctl, status, wufc;
>          int retval = 0;
>
> +       /* Runtime suspend should only enable wakeup for link changes */
> +       if (runtime)
> +               wufc = E1000_WUFC_LNKC;
> +       else if (device_may_wakeup(&pdev->dev))
> +               wufc = adapter->wol;
> +       else
> +               wufc = 0;
> +
>          status = er32(STATUS);
>          if (status & E1000_STATUS_LU)
>                  wufc &= ~E1000_WUFC_LNKC;
> @@ -6577,7 +6583,7 @@ static int __e1000_shutdown(struct pci_dev 
> *pdev, bool runtime)
>          if (adapter->hw.phy.type == e1000_phy_igp_3) {
> e1000e_igp3_phy_powerdown_workaround_ich8lan(&adapter->hw);
>          } else if (hw->mac.type >= e1000_pch_lpt) {
> -               if (!(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | 
> E1000_WUFC_BC)))
> +               if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | 
> E1000_WUFC_BC)))
>                          /* ULP does not support wake from unicast, 
> multicast
>                           * or broadcast.
>                           */
> -- 
> 2.17.1
>
>
>
> ------------------------------
>
> Message: 5
> Date: Fri, 22 May 2020 01:59:13 +0800
> From: Chen Yu <yu.c.chen@intel.com>
> To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>, "David S. Miller"
>         <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Auke Kok
>         <auke-jan.h.kok@intel.com>, Jeff Garzik <jeff@garzik.org>
> Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
>         linux-kernel@vger.kernel.org, Len Brown <len.brown@intel.com>, 
> "Rafael
>         J. Wysocki" <rjw@rjwysocki.net>, "Shevchenko, Andriy"
>         <andriy.shevchenko@intel.com>, "Neftin, Sasha"
>         <sasha.neftin@intel.com>, "Lifshits, Vitaly"
>         <vitaly.lifshits@intel.com>, Chen Yu <yu.c.chen@intel.com>,
>         Stable@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH 2/2] e1000e: Make WOL info in
>         ethtool consistent with device wake up ability
> Message-ID:
> <725bad2f3ce7f7b7f1667d53b6527dc059f9e419.1590081982.git.yu.c.chen@intel.com>
>
>
> Currently the ethtool shows that WOL(Wake On Lan) is enabled
> even if the device wakeup ability has been disabled via sysfs:
>   cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup
>    disabled
>
>   ethtool eno1
>   ...
>   Wake-on: g
>
> Fix this in ethtool to check if the user has explicitly disabled the
> wake up ability for this device.
>
> Fixes: 6ff68026f475 ("e1000e: Use device_set_wakeup_enable")
> Reported-by: Len Brown <len.brown@intel.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Cc: <Stable@vger.kernel.org>
> Signed-off-by: Chen Yu <yu.c.chen@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c 
> b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 1d47e2503072..0cccd823ff24 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -1891,7 +1891,7 @@ static void e1000_get_wol(struct net_device *netdev,
>          wol->wolopts = 0;
>
>          if (!(adapter->flags & FLAG_HAS_WOL) ||
> - !device_can_wakeup(&adapter->pdev->dev))
> + !device_may_wakeup(&adapter->pdev->dev))
>                  return;
>
>          wol->supported = WAKE_UCAST | WAKE_MCAST |
> -- 
> 2.17.1
>
>
>
> ------------------------------
>
> Message: 6
> Date: Fri, 22 May 2020 12:20:57 +0900
> From: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
> To: "Brown\, Aaron F" <aaron.f.brown@intel.com>
> Cc: "Kirsher\, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
>         "daniel.sangorrin\@toshiba.co.jp" 
> <daniel.sangorrin@toshiba.co.jp>,
>         Alexander Duyck <alexander.h.duyck@linux.intel.com>, "David S. 
> Miller"
>         <davem@davemloft.net>, "intel-wired-lan\@lists.osuosl.org"
>         <intel-wired-lan@lists.osuosl.org>, "netdev\@vger.kernel.org"
>         <netdev@vger.kernel.org>, "linux-kernel\@vger.kernel.org"
>         <linux-kernel@vger.kernel.org>
> Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Relax condition to
>         trigger reset for ME workaround
> Message-ID: <87367sac4m.fsf@kokedama.swc.toshiba.co.jp>
> Content-Type: text/plain
>
> Hi Aaron,
>
> "Brown, Aaron F" <aaron.f.brown@intel.com> writes:
>
> >> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> >> Behalf Of Punit Agrawal
> >> Sent: Thursday, May 14, 2020 9:31 PM
> >> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> >> Cc: daniel.sangorrin@toshiba.co.jp; Punit Agrawal
> >> <punit1.agrawal@toshiba.co.jp>; Alexander Duyck
> >> <alexander.h.duyck@linux.intel.com>; David S. Miller 
> <davem@davemloft.net>;
> >> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> >> kernel@vger.kernel.org
> >> Subject: [PATCH] e1000e: Relax condition to trigger reset for ME 
> workaround
> >>
> >> It's an error if the value of the RX/TX tail descriptor does not match
> >> what was written. The error condition is true regardless the duration
> >> of the interference from ME. But the driver only performs the reset if
> >> E1000_ICH_FWSM_PCIM2PCI_COUNT (2000) iterations of 50us delay have
> >> transpired. The extra condition can lead to inconsistency between the
> >> state of hardware as expected by the driver.
> >>
> >> Fix this by dropping the check for number of delay iterations.
> >>
> >> While at it, also make __ew32_prepare() static as it's not used
> >> anywhere else.
> >>
> >> Signed-off-by: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
> >> Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> >> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> >> Cc: "David S. Miller" <davem@davemloft.net>
> >> Cc: intel-wired-lan@lists.osuosl.org
> >> Cc: netdev@vger.kernel.org
> >> Cc: linux-kernel@vger.kernel.org
> >> ---
> >> Hi Jeff,
> >>
> >> If there are no further comments please consider merging the patch.
> >>
> >> Also, should it be marked for backport to stable?
> >>
> >> Thanks,
> >> Punit
> >>
> >> RFC[0] -> v1:
> >> * Dropped return value for __ew32_prepare() as it's not used
> >> * Made __ew32_prepare() static
> >> * Added tags
> >>
> >> [0] https://lkml.org/lkml/2020/5/12/20
> >>
> >>  drivers/net/ethernet/intel/e1000e/e1000.h  |  1 -
> >>  drivers/net/ethernet/intel/e1000e/netdev.c | 12 +++++-------
> >>  2 files changed, 5 insertions(+), 8 deletions(-)
> >>
> > Tested-by: Aaron Brown <aaron.f.brown@intel.com>
>
> Thanks for taking the patch for a spin.
>
> Jeff, let me know if you're okay to apply the tag or want me to send a
> new version.
>
>
> Thanks,
> Punit
>
Hi Punit,

This patch appears to be effecting some legacy code effecting old hardware.
We tried applying it but we could not get the driver to run the changed 
code lines.
Please provide some test hints(What platforms did you check it on? What 
tests did you run?) regarding this patch.

Thanks,
Amir
>
>
>
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
>
> ------------------------------
>
> End of Intel-wired-lan Digest, Vol 268, Issue 43
> ************************************************
>

--------------A62B279B9A1D59F754A2B875
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <blockquote type="cite"
cite="mid:SN6PR11MB3424D891CB5ACD6DC8347560978E0@SN6PR11MB3424.namprd11.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Times New Roman",serif;
	color:black;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span style="font-size:12.0pt;color:black"><o:p> </o:p></span></p>
        <div class="MsoNormal" style="text-align:center" align="center">
          <hr width="98%" size="2" align="center">
        </div>
        <div id="divRplyFwdMsg">
          <p class="MsoNormal"><b><span style="color:black">From:</span></b><span
              style="color:black"> Intel-wired-lan
              <a class="moz-txt-link-rfc2396E" href="mailto:intel-wired-lan-bounces@osuosl.org">&lt;intel-wired-lan-bounces@osuosl.org&gt;</a> on behalf of
              <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan-request@osuosl.org">intel-wired-lan-request@osuosl.org</a>
              <a class="moz-txt-link-rfc2396E" href="mailto:intel-wired-lan-request@osuosl.org">&lt;intel-wired-lan-request@osuosl.org&gt;</a><br>
              <b>Sent:</b> Friday, 22 May 2020 06:21<br>
              <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@osuosl.org">intel-wired-lan@osuosl.org</a>
              <a class="moz-txt-link-rfc2396E" href="mailto:intel-wired-lan@osuosl.org">&lt;intel-wired-lan@osuosl.org&gt;</a><br>
              <b>Subject:</b> Intel-wired-lan Digest, Vol 268, Issue 43</span>
            <o:p></o:p></p>
          <div>
            <p class="MsoNormal"> <o:p></o:p></p>
          </div>
        </div>
        <div>
          <div>
            <p class="MsoNormal">Send Intel-wired-lan mailing list
              submissions to<br>
                      <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@osuosl.org">intel-wired-lan@osuosl.org</a><br>
              <br>
              To subscribe or unsubscribe via the World Wide Web, visit<br>
                      <a
                href="https://lists.osuosl.org/mailman/listinfo/intel-wired-lan"
                moz-do-not-send="true">https://lists.osuosl.org/mailman/listinfo/intel-wired-lan</a><br>
              or, via email, send a message with subject or body 'help'
              to<br>
                      <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan-request@osuosl.org">intel-wired-lan-request@osuosl.org</a><br>
              <br>
              You can reach the person managing the list at<br>
                      <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan-owner@osuosl.org">intel-wired-lan-owner@osuosl.org</a><br>
              <br>
              When replying, please edit your Subject line so it is more
              specific<br>
              than "Re: Contents of Intel-wired-lan digest..."<br>
              <br>
              <br>
              Today's Topics:<br>
              <br>
                 1. Re: [PATCH v2 1/1] igc: Add initial EEE support
              (Andre Guedes)<br>
                 2. Re: [PATCH 2/2] e1000e: Make WOL info in ethtool
              consistent<br>
                    with device wake up ability (Michal Kubecek)<br>
                 3. [PATCH 0/2] Make WOL of e1000e consistent with sysfs
              device<br>
                    wakeup (Chen Yu)<br>
                 4. [PATCH 1/2] e1000e: Do not wake up the system via
              WOL if<br>
                    device wakeup is disabled (Chen Yu)<br>
                 5. [PATCH 2/2] e1000e: Make WOL info in ethtool
              consistent with<br>
                    device wake up ability (Chen Yu)<br>
                 6. Re: [PATCH] e1000e: Relax condition to trigger reset
              for ME<br>
                    workaround (Punit Agrawal)<br>
              <br>
              <br>
----------------------------------------------------------------------<br>
              <br>
              Message: 1<br>
              Date: Thu, 21 May 2020 11:09:07 -0700<br>
              From: Andre Guedes <a class="moz-txt-link-rfc2396E" href="mailto:andre.guedes@intel.com">&lt;andre.guedes@intel.com&gt;</a><br>
              To: Sasha Neftin <a class="moz-txt-link-rfc2396E" href="mailto:sasha.neftin@intel.com">&lt;sasha.neftin@intel.com&gt;</a>,<br>
                      <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.osuosl.org</a><br>
              Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igc: Add
              initial EEE<br>
                      support<br>
              Message-ID:<br>
                     
<a class="moz-txt-link-rfc2396E" href="mailto:159008454769.70366.11413367573186547439@swaranku-mobl2.amr.corp.intel.com">&lt;159008454769.70366.11413367573186547439@swaranku-mobl2.amr.corp.intel.com&gt;</a><br>
                      <br>
              Content-Type: text/plain; charset="utf-8"<br>
              <br>
              Hi Sasha,<br>
              <br>
              Quoting Sasha Neftin (2020-05-20 22:10:33)<br>
              &gt; diff --git
              a/drivers/net/ethernet/intel/igc/igc_ethtool.c
              b/drivers/net/ethernet/intel/igc/igc_ethtool.c<br>
              &gt; index 2214a5d3a259..3035d3a96621 100644<br>
              &gt; --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c<br>
              &gt; +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c<br>
              [...]<br>
              &gt; +static int igc_ethtool_set_eee(struct net_device
              *netdev,<br>
              &gt; +                              struct ethtool_eee
              *edata)<br>
              &gt; +{<br>
              &gt; +       struct igc_adapter *adapter =
              netdev_priv(netdev);<br>
              &gt; +       struct igc_hw *hw = &amp;adapter-&gt;hw;<br>
              &gt; +       struct ethtool_eee eee_curr;<br>
              &gt; +       s32 ret_val;<br>
              &gt; +<br>
              &gt; +       memset(&amp;eee_curr, 0, sizeof(struct
              ethtool_eee));<br>
              &gt; +<br>
              &gt; +       ret_val = igc_ethtool_get_eee(netdev,
              &amp;eee_curr);<br>
              &gt; +       if (ret_val)<br>
              &gt; +               return ret_val;<br>
              &gt; +<br>
              &gt; +       if (eee_curr.eee_enabled) {<br>
              &gt; +               if (eee_curr.tx_lpi_enabled !=
              edata-&gt;tx_lpi_enabled) {<br>
              &gt; +                       netdev_err(netdev,<br>
              &gt; +                                  "Setting EEE
              tx-lpi is not supported\n");<br>
              &gt; +                       return -EINVAL;<br>
              &gt; +               }<br>
              &gt; +<br>
              &gt; +               /* Tx LPI timer is not implemented
              currently */<br>
              &gt; +               if (edata-&gt;tx_lpi_timer) {<br>
              &gt; +                       netdev_err(netdev,<br>
              &gt; +                                  "Setting EEE Tx
              LPI timer is not supported\n");<br>
              &gt; +                       return -EINVAL;<br>
              &gt; +               }<br>
              &gt; +       } else if (!edata-&gt;eee_enabled) {<br>
              &gt; +               netdev_err(netdev,<br>
              &gt; +                          "Setting EEE options are
              not supported with EEE disabled\n");<br>
              &gt; +               return -EINVAL;<br>
              &gt; +       }<br>
              &gt; +<br>
              &gt; +       adapter-&gt;eee_advert =
              ethtool_adv_to_mmd_eee_adv_t(edata-&gt;advertised);<br>
              &gt; +       if (hw-&gt;dev_spec._base.eee_enable !=
              edata-&gt;eee_enabled) {<br>
              &gt; +               hw-&gt;dev_spec._base.eee_enable =
              edata-&gt;eee_enabled;<br>
              &gt; +               adapter-&gt;flags |= IGC_FLAG_EEE;<br>
              &gt; +<br>
              &gt; +               /* reset link */<br>
              &gt; +               if (netif_running(netdev))<br>
              &gt; +                       igc_reinit_locked(adapter);<br>
              &gt; +               else<br>
              &gt; +                       igc_reset(adapter);<br>
              &gt; +       }<br>
              &gt; +<br>
              &gt; +       if (ret_val) {<br>
              &gt; +               netdev_err(netdev,<br>
              &gt; +                          "Problem setting EEE
              advertisement options\n");<br>
              &gt; +               return -EINVAL;<br>
              &gt; +       }<br>
              <br>
              'ret_val' is already checked in the beginning of this
              function, and it is not<br>
              set afterwards. So it seems this check is pointless.<br>
              <br>
              &gt; diff --git
              a/drivers/net/ethernet/intel/igc/igc_main.c
              b/drivers/net/ethernet/intel/igc/igc_main.c<br>
              &gt; index c4df7129f930..6110093c6ad9 100644<br>
              &gt; --- a/drivers/net/ethernet/intel/igc/igc_main.c<br>
              &gt; +++ b/drivers/net/ethernet/intel/igc/igc_main.c<br>
              [...]<br>
              &gt; @@ -5190,6 +5202,10 @@ static int igc_probe(struct
              pci_dev *pdev,<br>
              &gt;         netdev_info(netdev, "MAC: %pM",
              netdev-&gt;dev_addr);<br>
              &gt;  <br>
              &gt;         dev_pm_set_driver_flags(&amp;pdev-&gt;dev,
              DPM_FLAG_NEVER_SKIP);<br>
              &gt; +       /* Disable EEE for internal copper PHY
              devices */<br>
              &gt; +       hw-&gt;dev_spec._base.eee_enable = false;<br>
              &gt; +       adapter-&gt;flags &amp;= ~IGC_FLAG_EEE;<br>
              &gt; +       igc_set_eee_i225(hw, false, false, false);<br>
              <br>
              Could you please clarify if EEE is expected to be enabled
              or disabled by<br>
              default? IIUC this code, EEE is disabled by default. But
              in IGB it is enabled<br>
              by default.<br>
              <br>
              In addition to that, the comment above mentions it
              disables EEE for copper<br>
              devices, but there is no check for such device. Is the
              comment indeed<br>
              applicable here?<br>
              <br>
              Regards,<br>
              <br>
              Andre<br>
              <br>
              <br>
              ------------------------------<br>
              <br>
              Message: 2<br>
              Date: Thu, 21 May 2020 21:23:42 +0200<br>
              From: Michal Kubecek <a class="moz-txt-link-rfc2396E" href="mailto:mkubecek@suse.cz">&lt;mkubecek@suse.cz&gt;</a><br>
              To: <a class="moz-txt-link-abbreviated" href="mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a><br>
              Cc: Chen Yu <a class="moz-txt-link-rfc2396E" href="mailto:yu.c.chen@intel.com">&lt;yu.c.chen@intel.com&gt;</a>, Jeff Kirsher<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:jeffrey.t.kirsher@intel.com">&lt;jeffrey.t.kirsher@intel.com&gt;</a>, "David S.
              Miller"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:davem@davemloft.net">&lt;davem@davemloft.net&gt;</a>, Jakub Kicinski
              <a class="moz-txt-link-rfc2396E" href="mailto:kuba@kernel.org">&lt;kuba@kernel.org&gt;</a>, Auke Kok<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:auke-jan.h.kok@intel.com">&lt;auke-jan.h.kok@intel.com&gt;</a>, Jeff Garzik
              <a class="moz-txt-link-rfc2396E" href="mailto:jeff@garzik.org">&lt;jeff@garzik.org&gt;</a>,<br>
                      <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.osuosl.org</a>,
              <a class="moz-txt-link-abbreviated" href="mailto:linux-kernel@vger.kernel.org">linux-kernel@vger.kernel.org</a>, Len<br>
                      Brown <a class="moz-txt-link-rfc2396E" href="mailto:len.brown@intel.com">&lt;len.brown@intel.com&gt;</a>, "Rafael J.
              Wysocki" <a class="moz-txt-link-rfc2396E" href="mailto:rjw@rjwysocki.net">&lt;rjw@rjwysocki.net&gt;</a>,<br>
                      "Shevchenko, Andriy"
              <a class="moz-txt-link-rfc2396E" href="mailto:andriy.shevchenko@intel.com">&lt;andriy.shevchenko@intel.com&gt;</a>, "Neftin, Sasha"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:sasha.neftin@intel.com">&lt;sasha.neftin@intel.com&gt;</a>, "Lifshits, Vitaly"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:vitaly.lifshits@intel.com">&lt;vitaly.lifshits@intel.com&gt;</a>,
              <a class="moz-txt-link-abbreviated" href="mailto:Stable@vger.kernel.org">Stable@vger.kernel.org</a><br>
              Subject: Re: [Intel-wired-lan] [PATCH 2/2] e1000e: Make
              WOL info in<br>
                      ethtool consistent with device wake up ability<br>
              Message-ID: <a class="moz-txt-link-rfc2396E" href="mailto:20200521192342.GE8771@lion.mk-sys.cz">&lt;20200521192342.GE8771@lion.mk-sys.cz&gt;</a><br>
              Content-Type: text/plain; charset=us-ascii<br>
              <br>
              On Fri, May 22, 2020 at 01:59:13AM +0800, Chen Yu wrote:<br>
              &gt; Currently the ethtool shows that WOL(Wake On Lan) is
              enabled<br>
              &gt; even if the device wakeup ability has been disabled
              via sysfs:<br>
              &gt;   cat
              /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup<br>
              &gt;    disabled<br>
              &gt; <br>
              &gt;   ethtool eno1<br>
              &gt;   ...<br>
              &gt;   Wake-on: g<br>
              &gt; <br>
              &gt; Fix this in ethtool to check if the user has
              explicitly disabled the<br>
              &gt; wake up ability for this device.<br>
              <br>
              Wouldn't this lead to rather unexpected and inconsistent
              behaviour when<br>
              the wakeup is disabled? As you don't touch the set_wol
              handler, I assume<br>
              it will still allow setting enabled modes as usual so that
              you get e.g.<br>
              <br>
                ethtool -s eth0 wol g   # no error or warning, returns 0<br>
                ethtool eth0            # reports no modes enabled<br>
              <br>
              The first command would set the enabled wol modes but that
              would be<br>
              hidden from user and even the netlink notification would
              claim something<br>
              different. Another exampe (with kernel and ethtool &gt;=
              5.6):<br>
              <br>
                ethtool -s eth0 wol g<br>
                ethtool -s eth0 wol +m<br>
              <br>
              resulting in "mg" if device wakeup is enabled but "m" when
              it's disabled<br>
              (but the latter would be hidden from user and only
              revealed when you<br>
              enable the device wakeup).<br>
              <br>
              This is a general problem discussed recently for EEE and
              pause<br>
              autonegotiation: if setting A can be effectively used only
              when B is<br>
              enabled, should we hide actual setting of A from userspace
              when B is<br>
              disabled or even reset the value of A whenever B gets
              toggled or rather<br>
              allow setting A and B independently? AFAICS the consensus
              seemed to be<br>
              that A should be allowed to be set and queried
              independently of the<br>
              value of B.<br>
              <br>
              Michal<br>
              <br>
              &gt; Fixes: 6ff68026f475 ("e1000e: Use
              device_set_wakeup_enable")<br>
              &gt; Reported-by: Len Brown <a class="moz-txt-link-rfc2396E" href="mailto:len.brown@intel.com">&lt;len.brown@intel.com&gt;</a><br>
              &gt; Reviewed-by: Andy Shevchenko
              <a class="moz-txt-link-rfc2396E" href="mailto:andriy.shevchenko@linux.intel.com">&lt;andriy.shevchenko@linux.intel.com&gt;</a><br>
              &gt; Cc: <a class="moz-txt-link-rfc2396E" href="mailto:Stable@vger.kernel.org">&lt;Stable@vger.kernel.org&gt;</a><br>
              &gt; Signed-off-by: Chen Yu <a class="moz-txt-link-rfc2396E" href="mailto:yu.c.chen@intel.com">&lt;yu.c.chen@intel.com&gt;</a><br>
              &gt; ---<br>
              &gt;  drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-<br>
              &gt;  1 file changed, 1 insertion(+), 1 deletion(-)<br>
              &gt; <br>
              &gt; diff --git
              a/drivers/net/ethernet/intel/e1000e/ethtool.c
              b/drivers/net/ethernet/intel/e1000e/ethtool.c<br>
              &gt; index 1d47e2503072..0cccd823ff24 100644<br>
              &gt; --- a/drivers/net/ethernet/intel/e1000e/ethtool.c<br>
              &gt; +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c<br>
              &gt; @@ -1891,7 +1891,7 @@ static void
              e1000_get_wol(struct net_device *netdev,<br>
              &gt;        wol-&gt;wolopts = 0;<br>
              &gt;  <br>
              &gt;        if (!(adapter-&gt;flags &amp; FLAG_HAS_WOL) ||<br>
              &gt; -        
              !device_can_wakeup(&amp;adapter-&gt;pdev-&gt;dev))<br>
              &gt; +        
              !device_may_wakeup(&amp;adapter-&gt;pdev-&gt;dev))<br>
              &gt;                return;<br>
              &gt;  <br>
              &gt;        wol-&gt;supported = WAKE_UCAST | WAKE_MCAST |<br>
              &gt; -- <br>
              &gt; 2.17.1<br>
              &gt; <br>
              <br>
              <br>
              ------------------------------<br>
              <br>
              Message: 3<br>
              Date: Fri, 22 May 2020 01:58:02 +0800<br>
              From: Chen Yu <a class="moz-txt-link-rfc2396E" href="mailto:yu.c.chen@intel.com">&lt;yu.c.chen@intel.com&gt;</a><br>
              To: Jeff Kirsher <a class="moz-txt-link-rfc2396E" href="mailto:jeffrey.t.kirsher@intel.com">&lt;jeffrey.t.kirsher@intel.com&gt;</a>,
              "David S. Miller"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:davem@davemloft.net">&lt;davem@davemloft.net&gt;</a>, Jakub Kicinski
              <a class="moz-txt-link-rfc2396E" href="mailto:kuba@kernel.org">&lt;kuba@kernel.org&gt;</a>, Auke Kok<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:auke-jan.h.kok@intel.com">&lt;auke-jan.h.kok@intel.com&gt;</a>, Jeff Garzik
              <a class="moz-txt-link-rfc2396E" href="mailto:jeff@garzik.org">&lt;jeff@garzik.org&gt;</a><br>
              Cc: <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.osuosl.org</a>,
              <a class="moz-txt-link-abbreviated" href="mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a>,<br>
                      <a class="moz-txt-link-abbreviated" href="mailto:linux-kernel@vger.kernel.org">linux-kernel@vger.kernel.org</a>, Len Brown
              <a class="moz-txt-link-rfc2396E" href="mailto:len.brown@intel.com">&lt;len.brown@intel.com&gt;</a>, "Rafael<br>
                      J. Wysocki" <a class="moz-txt-link-rfc2396E" href="mailto:rjw@rjwysocki.net">&lt;rjw@rjwysocki.net&gt;</a>,
              "Shevchenko, Andriy"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:andriy.shevchenko@intel.com">&lt;andriy.shevchenko@intel.com&gt;</a>, "Neftin,
              Sasha"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:sasha.neftin@intel.com">&lt;sasha.neftin@intel.com&gt;</a>, "Lifshits, Vitaly"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:vitaly.lifshits@intel.com">&lt;vitaly.lifshits@intel.com&gt;</a>, Chen Yu
              <a class="moz-txt-link-rfc2396E" href="mailto:yu.c.chen@intel.com">&lt;yu.c.chen@intel.com&gt;</a><br>
              Subject: [Intel-wired-lan] [PATCH 0/2] Make WOL of e1000e
              consistent<br>
                      with sysfs device wakeup<br>
              Message-ID:
              <a class="moz-txt-link-rfc2396E" href="mailto:cover.1590081982.git.yu.c.chen@intel.com">&lt;cover.1590081982.git.yu.c.chen@intel.com&gt;</a><br>
              <br>
              Currently the WOL(Wake On Lan) bahavior of e1000e is not
              consistent with its corresponding<br>
              device wake up ability.<br>
              Fix this by:<br>
              1. Do not wake up the system via WOL if device wakeup is
              disabled<br>
              2. Make WOL display info from ethtool consistent with
              device wake up<br>
                 settings in sysfs<br>
              <br>
              Chen Yu (2):<br>
                e1000e: Do not wake up the system via WOL if device
              wakeup is disabled<br>
                e1000e: Make WOL info in ethtool consistent with device
              wake up<br>
                  ability<br>
              <br>
               drivers/net/ethernet/intel/e1000e/ethtool.c |  2 +-<br>
               drivers/net/ethernet/intel/e1000e/netdev.c  | 14
              ++++++++++----<br>
               2 files changed, 11 insertions(+), 5 deletions(-)<br>
              <br>
              -- <br>
              2.17.1<br>
              <br>
              <br>
              <br>
              ------------------------------<br>
              <br>
              Message: 4<br>
              Date: Fri, 22 May 2020 01:59:00 +0800<br>
              From: Chen Yu <a class="moz-txt-link-rfc2396E" href="mailto:yu.c.chen@intel.com">&lt;yu.c.chen@intel.com&gt;</a><br>
              To: Jeff Kirsher <a class="moz-txt-link-rfc2396E" href="mailto:jeffrey.t.kirsher@intel.com">&lt;jeffrey.t.kirsher@intel.com&gt;</a>,
              "David S. Miller"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:davem@davemloft.net">&lt;davem@davemloft.net&gt;</a>, Jakub Kicinski
              <a class="moz-txt-link-rfc2396E" href="mailto:kuba@kernel.org">&lt;kuba@kernel.org&gt;</a>, Auke Kok<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:auke-jan.h.kok@intel.com">&lt;auke-jan.h.kok@intel.com&gt;</a>, Jeff Garzik
              <a class="moz-txt-link-rfc2396E" href="mailto:jeff@garzik.org">&lt;jeff@garzik.org&gt;</a><br>
              Cc: <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.osuosl.org</a>,
              <a class="moz-txt-link-abbreviated" href="mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a>,<br>
                      <a class="moz-txt-link-abbreviated" href="mailto:linux-kernel@vger.kernel.org">linux-kernel@vger.kernel.org</a>, Len Brown
              <a class="moz-txt-link-rfc2396E" href="mailto:len.brown@intel.com">&lt;len.brown@intel.com&gt;</a>, "Rafael<br>
                      J. Wysocki" <a class="moz-txt-link-rfc2396E" href="mailto:rjw@rjwysocki.net">&lt;rjw@rjwysocki.net&gt;</a>,
              "Shevchenko, Andriy"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:andriy.shevchenko@intel.com">&lt;andriy.shevchenko@intel.com&gt;</a>, "Neftin,
              Sasha"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:sasha.neftin@intel.com">&lt;sasha.neftin@intel.com&gt;</a>, "Lifshits, Vitaly"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:vitaly.lifshits@intel.com">&lt;vitaly.lifshits@intel.com&gt;</a>, Chen Yu
              <a class="moz-txt-link-rfc2396E" href="mailto:yu.c.chen@intel.com">&lt;yu.c.chen@intel.com&gt;</a>,<br>
                      <a class="moz-txt-link-abbreviated" href="mailto:Stable@vger.kernel.org">Stable@vger.kernel.org</a><br>
              Subject: [Intel-wired-lan] [PATCH 1/2] e1000e: Do not wake
              up the<br>
                      system via WOL if device wakeup is disabled<br>
              Message-ID:<br>
                     
<a class="moz-txt-link-rfc2396E" href="mailto:9f7ede2e2e8152704258fc11ba3755ae93f50741.1590081982.git.yu.c.chen@intel.com">&lt;9f7ede2e2e8152704258fc11ba3755ae93f50741.1590081982.git.yu.c.chen@intel.com&gt;</a><br>
                      <br>
              <br>
              Currently the system will be woken up via WOL(Wake On Lan)
              even if the<br>
              device wakeup ability has been disabled via sysfs:<br>
               cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup<br>
               disabled<br>
              <br>
              The system should not be woken up if the user has
              explicitly<br>
              disabled the wake up ability for this device.<br>
              <br>
              This patch clears the WOL ability of this network device
              if the<br>
              user has disabled the wake up ability in sysfs.<br>
              <br>
              Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000
              driver")<br>
              Reported-by: Rafael J. Wysocki
              <a class="moz-txt-link-rfc2396E" href="mailto:rafael.j.wysocki@intel.com">&lt;rafael.j.wysocki@intel.com&gt;</a><br>
              Reviewed-by: Andy Shevchenko
              <a class="moz-txt-link-rfc2396E" href="mailto:andriy.shevchenko@linux.intel.com">&lt;andriy.shevchenko@linux.intel.com&gt;</a><br>
              Cc: <a class="moz-txt-link-rfc2396E" href="mailto:Stable@vger.kernel.org">&lt;Stable@vger.kernel.org&gt;</a><br>
              Signed-off-by: Chen Yu <a class="moz-txt-link-rfc2396E" href="mailto:yu.c.chen@intel.com">&lt;yu.c.chen@intel.com&gt;</a><br>
              ---<br>
               drivers/net/ethernet/intel/e1000e/netdev.c | 14
              ++++++++++----<br>
               1 file changed, 10 insertions(+), 4 deletions(-)<br>
              <br>
              diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
              b/drivers/net/ethernet/intel/e1000e/netdev.c<br>
              index 177c6da80c57..f6f730388705 100644<br>
              --- a/drivers/net/ethernet/intel/e1000e/netdev.c<br>
              +++ b/drivers/net/ethernet/intel/e1000e/netdev.c<br>
              @@ -6516,11 +6516,17 @@ static int __e1000_shutdown(struct
              pci_dev *pdev, bool runtime)<br>
                       struct net_device *netdev =
              pci_get_drvdata(pdev);<br>
                       struct e1000_adapter *adapter =
              netdev_priv(netdev);<br>
                       struct e1000_hw *hw = &amp;adapter-&gt;hw;<br>
              -       u32 ctrl, ctrl_ext, rctl, status;<br>
              -       /* Runtime suspend should only enable wakeup for
              link changes */<br>
              -       u32 wufc = runtime ? E1000_WUFC_LNKC :
              adapter-&gt;wol;<br>
              +       u32 ctrl, ctrl_ext, rctl, status, wufc;<br>
                       int retval = 0;<br>
               <br>
              +       /* Runtime suspend should only enable wakeup for
              link changes */<br>
              +       if (runtime)<br>
              +               wufc = E1000_WUFC_LNKC;<br>
              +       else if (device_may_wakeup(&amp;pdev-&gt;dev))<br>
              +               wufc = adapter-&gt;wol;<br>
              +       else<br>
              +               wufc = 0;<br>
              +<br>
                       status = er32(STATUS);<br>
                       if (status &amp; E1000_STATUS_LU)<br>
                               wufc &amp;= ~E1000_WUFC_LNKC;<br>
              @@ -6577,7 +6583,7 @@ static int __e1000_shutdown(struct
              pci_dev *pdev, bool runtime)<br>
                       if (adapter-&gt;hw.phy.type == e1000_phy_igp_3) {<br>
                              
              e1000e_igp3_phy_powerdown_workaround_ich8lan(&amp;adapter-&gt;hw);<br>
                       } else if (hw-&gt;mac.type &gt;= e1000_pch_lpt) {<br>
              -               if (!(wufc &amp; (E1000_WUFC_EX |
              E1000_WUFC_MC | E1000_WUFC_BC)))<br>
              +               if (wufc &amp;&amp; !(wufc &amp;
              (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC)))<br>
                                       /* ULP does not support wake from
              unicast, multicast<br>
                                        * or broadcast.<br>
                                        */<br>
              -- <br>
              2.17.1<br>
              <br>
              <br>
              <br>
              ------------------------------<br>
              <br>
              Message: 5<br>
              Date: Fri, 22 May 2020 01:59:13 +0800<br>
              From: Chen Yu <a class="moz-txt-link-rfc2396E" href="mailto:yu.c.chen@intel.com">&lt;yu.c.chen@intel.com&gt;</a><br>
              To: Jeff Kirsher <a class="moz-txt-link-rfc2396E" href="mailto:jeffrey.t.kirsher@intel.com">&lt;jeffrey.t.kirsher@intel.com&gt;</a>,
              "David S. Miller"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:davem@davemloft.net">&lt;davem@davemloft.net&gt;</a>, Jakub Kicinski
              <a class="moz-txt-link-rfc2396E" href="mailto:kuba@kernel.org">&lt;kuba@kernel.org&gt;</a>, Auke Kok<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:auke-jan.h.kok@intel.com">&lt;auke-jan.h.kok@intel.com&gt;</a>, Jeff Garzik
              <a class="moz-txt-link-rfc2396E" href="mailto:jeff@garzik.org">&lt;jeff@garzik.org&gt;</a><br>
              Cc: <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.osuosl.org</a>,
              <a class="moz-txt-link-abbreviated" href="mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a>,<br>
                      <a class="moz-txt-link-abbreviated" href="mailto:linux-kernel@vger.kernel.org">linux-kernel@vger.kernel.org</a>, Len Brown
              <a class="moz-txt-link-rfc2396E" href="mailto:len.brown@intel.com">&lt;len.brown@intel.com&gt;</a>, "Rafael<br>
                      J. Wysocki" <a class="moz-txt-link-rfc2396E" href="mailto:rjw@rjwysocki.net">&lt;rjw@rjwysocki.net&gt;</a>,
              "Shevchenko, Andriy"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:andriy.shevchenko@intel.com">&lt;andriy.shevchenko@intel.com&gt;</a>, "Neftin,
              Sasha"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:sasha.neftin@intel.com">&lt;sasha.neftin@intel.com&gt;</a>, "Lifshits, Vitaly"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:vitaly.lifshits@intel.com">&lt;vitaly.lifshits@intel.com&gt;</a>, Chen Yu
              <a class="moz-txt-link-rfc2396E" href="mailto:yu.c.chen@intel.com">&lt;yu.c.chen@intel.com&gt;</a>,<br>
                      <a class="moz-txt-link-abbreviated" href="mailto:Stable@vger.kernel.org">Stable@vger.kernel.org</a><br>
              Subject: [Intel-wired-lan] [PATCH 2/2] e1000e: Make WOL
              info in<br>
                      ethtool consistent with device wake up ability<br>
              Message-ID:<br>
                     
<a class="moz-txt-link-rfc2396E" href="mailto:725bad2f3ce7f7b7f1667d53b6527dc059f9e419.1590081982.git.yu.c.chen@intel.com">&lt;725bad2f3ce7f7b7f1667d53b6527dc059f9e419.1590081982.git.yu.c.chen@intel.com&gt;</a><br>
                      <br>
              <br>
              Currently the ethtool shows that WOL(Wake On Lan) is
              enabled<br>
              even if the device wakeup ability has been disabled via
              sysfs:<br>
                cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup<br>
                 disabled<br>
              <br>
                ethtool eno1<br>
                ...<br>
                Wake-on: g<br>
              <br>
              Fix this in ethtool to check if the user has explicitly
              disabled the<br>
              wake up ability for this device.<br>
              <br>
              Fixes: 6ff68026f475 ("e1000e: Use
              device_set_wakeup_enable")<br>
              Reported-by: Len Brown <a class="moz-txt-link-rfc2396E" href="mailto:len.brown@intel.com">&lt;len.brown@intel.com&gt;</a><br>
              Reviewed-by: Andy Shevchenko
              <a class="moz-txt-link-rfc2396E" href="mailto:andriy.shevchenko@linux.intel.com">&lt;andriy.shevchenko@linux.intel.com&gt;</a><br>
              Cc: <a class="moz-txt-link-rfc2396E" href="mailto:Stable@vger.kernel.org">&lt;Stable@vger.kernel.org&gt;</a><br>
              Signed-off-by: Chen Yu <a class="moz-txt-link-rfc2396E" href="mailto:yu.c.chen@intel.com">&lt;yu.c.chen@intel.com&gt;</a><br>
              ---<br>
               drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-<br>
               1 file changed, 1 insertion(+), 1 deletion(-)<br>
              <br>
              diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c
              b/drivers/net/ethernet/intel/e1000e/ethtool.c<br>
              index 1d47e2503072..0cccd823ff24 100644<br>
              --- a/drivers/net/ethernet/intel/e1000e/ethtool.c<br>
              +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c<br>
              @@ -1891,7 +1891,7 @@ static void e1000_get_wol(struct
              net_device *netdev,<br>
                       wol-&gt;wolopts = 0;<br>
               <br>
                       if (!(adapter-&gt;flags &amp; FLAG_HAS_WOL) ||<br>
              -          
              !device_can_wakeup(&amp;adapter-&gt;pdev-&gt;dev))<br>
              +          
              !device_may_wakeup(&amp;adapter-&gt;pdev-&gt;dev))<br>
                               return;<br>
               <br>
                       wol-&gt;supported = WAKE_UCAST | WAKE_MCAST |<br>
              -- <br>
              2.17.1<br>
              <br>
              <br>
              <br>
              ------------------------------<br>
              <br>
              Message: 6<br>
              Date: Fri, 22 May 2020 12:20:57 +0900<br>
              From: Punit Agrawal <a class="moz-txt-link-rfc2396E" href="mailto:punit1.agrawal@toshiba.co.jp">&lt;punit1.agrawal@toshiba.co.jp&gt;</a><br>
              To: "Brown\, Aaron F" <a class="moz-txt-link-rfc2396E" href="mailto:aaron.f.brown@intel.com">&lt;aaron.f.brown@intel.com&gt;</a><br>
              Cc: "Kirsher\, Jeffrey T"
              <a class="moz-txt-link-rfc2396E" href="mailto:jeffrey.t.kirsher@intel.com">&lt;jeffrey.t.kirsher@intel.com&gt;</a>,<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:daniel.sangorrin\@toshiba.co.jp">"daniel.sangorrin\@toshiba.co.jp"</a>
              <a class="moz-txt-link-rfc2396E" href="mailto:daniel.sangorrin@toshiba.co.jp">&lt;daniel.sangorrin@toshiba.co.jp&gt;</a>,<br>
                      Alexander Duyck
              <a class="moz-txt-link-rfc2396E" href="mailto:alexander.h.duyck@linux.intel.com">&lt;alexander.h.duyck@linux.intel.com&gt;</a>, "David S.
              Miller"<br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:davem@davemloft.net">&lt;davem@davemloft.net&gt;</a>,
              <a class="moz-txt-link-rfc2396E" href="mailto:intel-wired-lan\@lists.osuosl.org">"intel-wired-lan\@lists.osuosl.org"</a><br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:intel-wired-lan@lists.osuosl.org">&lt;intel-wired-lan@lists.osuosl.org&gt;</a>,
              <a class="moz-txt-link-rfc2396E" href="mailto:netdev\@vger.kernel.org">"netdev\@vger.kernel.org"</a><br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:netdev@vger.kernel.org">&lt;netdev@vger.kernel.org&gt;</a>,
              <a class="moz-txt-link-rfc2396E" href="mailto:linux-kernel\@vger.kernel.org">"linux-kernel\@vger.kernel.org"</a><br>
                      <a class="moz-txt-link-rfc2396E" href="mailto:linux-kernel@vger.kernel.org">&lt;linux-kernel@vger.kernel.org&gt;</a><br>
              Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Relax
              condition to<br>
                      trigger reset for ME workaround<br>
              Message-ID:
              <a class="moz-txt-link-rfc2396E" href="mailto:87367sac4m.fsf@kokedama.swc.toshiba.co.jp">&lt;87367sac4m.fsf@kokedama.swc.toshiba.co.jp&gt;</a><br>
              Content-Type: text/plain<br>
              <br>
              Hi Aaron,<br>
              <br>
              "Brown, Aaron F" <a class="moz-txt-link-rfc2396E" href="mailto:aaron.f.brown@intel.com">&lt;aaron.f.brown@intel.com&gt;</a> writes:<br>
              <br>
              &gt;&gt; From: <a class="moz-txt-link-abbreviated" href="mailto:netdev-owner@vger.kernel.org">netdev-owner@vger.kernel.org</a>
              <a class="moz-txt-link-rfc2396E" href="mailto:netdev-owner@vger.kernel.org">&lt;netdev-owner@vger.kernel.org&gt;</a> On<br>
              &gt;&gt; Behalf Of Punit Agrawal<br>
              &gt;&gt; Sent: Thursday, May 14, 2020 9:31 PM<br>
              &gt;&gt; To: Kirsher, Jeffrey T
              <a class="moz-txt-link-rfc2396E" href="mailto:jeffrey.t.kirsher@intel.com">&lt;jeffrey.t.kirsher@intel.com&gt;</a><br>
              &gt;&gt; Cc: <a class="moz-txt-link-abbreviated" href="mailto:daniel.sangorrin@toshiba.co.jp">daniel.sangorrin@toshiba.co.jp</a>; Punit Agrawal<br>
              &gt;&gt; <a class="moz-txt-link-rfc2396E" href="mailto:punit1.agrawal@toshiba.co.jp">&lt;punit1.agrawal@toshiba.co.jp&gt;</a>; Alexander
              Duyck<br>
              &gt;&gt; <a class="moz-txt-link-rfc2396E" href="mailto:alexander.h.duyck@linux.intel.com">&lt;alexander.h.duyck@linux.intel.com&gt;</a>; David
              S. Miller <a class="moz-txt-link-rfc2396E" href="mailto:davem@davemloft.net">&lt;davem@davemloft.net&gt;</a>;<br>
              &gt;&gt; <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.osuosl.org</a>;
              <a class="moz-txt-link-abbreviated" href="mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a>; linux-<br>
              &gt;&gt; <a class="moz-txt-link-abbreviated" href="mailto:kernel@vger.kernel.org">kernel@vger.kernel.org</a><br>
              &gt;&gt; Subject: [PATCH] e1000e: Relax condition to
              trigger reset for ME workaround<br>
              &gt;&gt; <br>
              &gt;&gt; It's an error if the value of the RX/TX tail
              descriptor does not match<br>
              &gt;&gt; what was written. The error condition is true
              regardless the duration<br>
              &gt;&gt; of the interference from ME. But the driver only
              performs the reset if<br>
              &gt;&gt; E1000_ICH_FWSM_PCIM2PCI_COUNT (2000) iterations
              of 50us delay have<br>
              &gt;&gt; transpired. The extra condition can lead to
              inconsistency between the<br>
              &gt;&gt; state of hardware as expected by the driver.<br>
              &gt;&gt; <br>
              &gt;&gt; Fix this by dropping the check for number of
              delay iterations.<br>
              &gt;&gt; <br>
              &gt;&gt; While at it, also make __ew32_prepare() static as
              it's not used<br>
              &gt;&gt; anywhere else.<br>
              &gt;&gt; <br>
              &gt;&gt; Signed-off-by: Punit Agrawal
              <a class="moz-txt-link-rfc2396E" href="mailto:punit1.agrawal@toshiba.co.jp">&lt;punit1.agrawal@toshiba.co.jp&gt;</a><br>
              &gt;&gt; Reviewed-by: Alexander Duyck
              <a class="moz-txt-link-rfc2396E" href="mailto:alexander.h.duyck@linux.intel.com">&lt;alexander.h.duyck@linux.intel.com&gt;</a><br>
              &gt;&gt; Cc: Jeff Kirsher
              <a class="moz-txt-link-rfc2396E" href="mailto:jeffrey.t.kirsher@intel.com">&lt;jeffrey.t.kirsher@intel.com&gt;</a><br>
              &gt;&gt; Cc: "David S. Miller" <a class="moz-txt-link-rfc2396E" href="mailto:davem@davemloft.net">&lt;davem@davemloft.net&gt;</a><br>
              &gt;&gt; Cc: <a class="moz-txt-link-abbreviated" href="mailto:intel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.osuosl.org</a><br>
              &gt;&gt; Cc: <a class="moz-txt-link-abbreviated" href="mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a><br>
              &gt;&gt; Cc: <a class="moz-txt-link-abbreviated" href="mailto:linux-kernel@vger.kernel.org">linux-kernel@vger.kernel.org</a><br>
              &gt;&gt; ---<br>
              &gt;&gt; Hi Jeff,<br>
              &gt;&gt; <br>
              &gt;&gt; If there are no further comments please consider
              merging the patch.<br>
              &gt;&gt; <br>
              &gt;&gt; Also, should it be marked for backport to stable?<br>
              &gt;&gt; <br>
              &gt;&gt; Thanks,<br>
              &gt;&gt; Punit<br>
              &gt;&gt; <br>
              &gt;&gt; RFC[0] -&gt; v1:<br>
              &gt;&gt; * Dropped return value for __ew32_prepare() as
              it's not used<br>
              &gt;&gt; * Made __ew32_prepare() static<br>
              &gt;&gt; * Added tags<br>
              &gt;&gt; <br>
              &gt;&gt; [0] <a href="https://lkml.org/lkml/2020/5/12/20"
                moz-do-not-send="true">https://lkml.org/lkml/2020/5/12/20</a><br>
              &gt;&gt; <br>
              &gt;&gt;  drivers/net/ethernet/intel/e1000e/e1000.h  |  1
              -<br>
              &gt;&gt;  drivers/net/ethernet/intel/e1000e/netdev.c | 12
              +++++-------<br>
              &gt;&gt;  2 files changed, 5 insertions(+), 8 deletions(-)<br>
              &gt;&gt; <br>
              &gt; Tested-by: Aaron Brown
              <a class="moz-txt-link-rfc2396E" href="mailto:aaron.f.brown@intel.com">&lt;aaron.f.brown@intel.com&gt;</a><br>
              <br>
              Thanks for taking the patch for a spin.<br>
              <br>
              Jeff, let me know if you're okay to apply the tag or want
              me to send a<br>
              new version.<br>
            </p>
          </div>
        </div>
      </div>
    </blockquote>
    <blockquote type="cite"
cite="mid:SN6PR11MB3424D891CB5ACD6DC8347560978E0@SN6PR11MB3424.namprd11.prod.outlook.com">
      <div class="WordSection1">
        <div>
          <div>
            <p class="MsoNormal">
              <br>
              Thanks,<br>
              Punit<br>
            </p>
          </div>
        </div>
      </div>
    </blockquote>
    Hi Punit,<br>
    <br>
    This patch appears to be effecting some legacy code effecting old
    hardware. <br>
    We tried applying it but we could not get the driver to run the
    changed code lines.<br>
    Please provide some test hints(What platforms did you check it on?
    What tests did you run?) regarding this patch.<br>
    <br>
    Thanks,<br>
    Amir<br>
    <blockquote type="cite"
cite="mid:SN6PR11MB3424D891CB5ACD6DC8347560978E0@SN6PR11MB3424.namprd11.prod.outlook.com">
      <div class="WordSection1">
        <div>
          <div>
            <p class="MsoNormal">
              <br>
              <br>
              <br>
              ------------------------------<br>
              <br>
              Subject: Digest Footer<br>
              <br>
              _______________________________________________<br>
              Intel-wired-lan mailing list<br>
              <a class="moz-txt-link-abbreviated" href="mailto:Intel-wired-lan@osuosl.org">Intel-wired-lan@osuosl.org</a><br>
              <a
                href="https://lists.osuosl.org/mailman/listinfo/intel-wired-lan"
                moz-do-not-send="true">https://lists.osuosl.org/mailman/listinfo/intel-wired-lan</a><br>
              <br>
              <br>
              ------------------------------<br>
              <br>
              End of Intel-wired-lan Digest, Vol 268, Issue 43<br>
              ************************************************<o:p></o:p></p>
          </div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------A62B279B9A1D59F754A2B875--

--===============0191686672889005782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0191686672889005782==--
