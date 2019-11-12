Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F5BF9959
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2019 20:08:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 62B5686BC1;
	Tue, 12 Nov 2019 19:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L0f4jHvx3zTn; Tue, 12 Nov 2019 19:08:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD82686597;
	Tue, 12 Nov 2019 19:08:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E09351BF593
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 19:08:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B43B7203F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 19:08:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q73iR9e3vJcr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2019 19:08:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 2965920015
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2019 19:08:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 11:08:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; 
 d="asc'?scan'208";a="207573374"
Received: from sshah1-mobl7.amr.corp.intel.com ([10.254.176.99])
 by orsmga006.jf.intel.com with ESMTP; 12 Nov 2019 11:08:09 -0800
Message-ID: <2af62ac005003416c21231b94a0186a302167ec8.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Nov 2019 11:08:08 -0800
In-Reply-To: <20191112133312.21945-1-sasha.neftin@intel.com>
References: <20191112133312.21945-1-sasha.neftin@intel.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add legacy power management
 support
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
Content-Type: multipart/mixed; boundary="===============3853534478633321195=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============3853534478633321195==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Uo6cXPAjFCTzr3m5bDWr"


--=-Uo6cXPAjFCTzr3m5bDWr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-11-12 at 15:33 +0200, Sasha Neftin wrote:
> Add suspend, resume, runtime_suspend, runtime_resume and
> runtime_idle callbacks implementation.
>=20
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |   2 +
>  drivers/net/ethernet/intel/igc/igc_defines.h |  31 +++++
>  drivers/net/ethernet/intel/igc/igc_main.c    | 200
> +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   9 ++
>  4 files changed, 242 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index 0868677d43ed..612fe9ec81a4 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -370,6 +370,8 @@ struct igc_adapter {
>  	struct timer_list dma_err_timer;
>  	struct timer_list phy_info_timer;
> =20
> +	u32 wol;
> +	u32 en_mng_pt;
>  	u16 link_speed;
>  	u16 link_duplex;
> =20
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h
> b/drivers/net/ethernet/intel/igc/igc_defines.h
> index f3788f0b95b4..50dffd5db606 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -10,6 +10,37 @@
> =20
>  #define IGC_CTRL_EXT_DRV_LOAD	0x10000000 /* Drv loaded bit for FW
> */
> =20
> +/* Definitions for power management and wakeup registers */
> +/* Wake Up Control */
> +#define IGC_WUC_PME_EN	0x00000002 /* PME Enable */
> +
> +/* Wake Up Filter Control */
> +#define IGC_WUFC_LNKC	0x00000001 /* Link Status Change Wakeup
> Enable */
> +#define IGC_WUFC_MC	0x00000008 /* Directed Multicast Wakeup Enable */
> +
> +#define IGC_CTRL_ADVD3WUC	0x00100000  /* D3 WUC */
> +
> +/* Wake Up Status */
> +#define IGC_WUS_EX	0x00000004 /* Directed Exact */
> +#define IGC_WUS_ARPD	0x00000020 /* Directed ARP Request */
> +#define IGC_WUS_IPV4	0x00000040 /* Directed IPv4 */
> +#define IGC_WUS_IPV6	0x00000080 /* Directed IPv6 */
> +#define IGC_WUS_NSD	0x00000400 /* Directed IPv6 Neighbor Solicitation
> */
> +
> +/* Packet types that are enabled for wake packet delivery */
> +#define WAKE_PKT_WUS ( \
> +	IGC_WUS_EX   | \
> +	IGC_WUS_ARPD | \
> +	IGC_WUS_IPV4 | \
> +	IGC_WUS_IPV6 | \
> +	IGC_WUS_NSD)
> +
> +/* Wake Up Packet Length */
> +#define IGC_WUPL_MASK	0x00000FFF
> +
> +/* Wake Up Packet Memory stores the first 128 bytes of the wake up
> packet */
> +#define IGC_WUPM_BYTES	128
> +
>  /* Physical Func Reset Done Indication */
>  #define IGC_CTRL_EXT_LINK_MODE_MASK	0x00C00000
> =20
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 833770fd16d2..5d3023ea8a44 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -8,6 +8,7 @@
>  #include <linux/tcp.h>
>  #include <linux/udp.h>
>  #include <linux/ip.h>
> +#include <linux/pm_runtime.h>
> =20
>  #include <net/ipv6.h>
> =20
> @@ -4574,11 +4575,210 @@ static void igc_remove(struct pci_dev *pdev)
>  	pci_disable_device(pdev);
>  }
> =20
> +static int __igc_shutdown(struct pci_dev *pdev, bool *enable_wake,
> +			  bool runtime)
> +{
> +	struct net_device *netdev =3D pci_get_drvdata(pdev);
> +	struct igc_adapter *adapter =3D netdev_priv(netdev);
> +	struct igc_hw *hw =3D &adapter->hw;
> +	u32 ctrl, rctl, status;
> +	u32 wufc =3D runtime ? IGC_WUFC_LNKC : adapter->wol;

Reverse christmas tree issue above, the above line of code should go before
struct igc_hw *hw =3D &adapter->hw; line of code.

> +	bool wake;
> +
> +	rtnl_lock();
> +	netif_device_detach(netdev);
> +
> +	if (netif_running(netdev))
> +		__igc_close(netdev, true);
> +
> +	igc_clear_interrupt_scheme(adapter);
> +	rtnl_unlock();
> +
> +	status =3D rd32(IGC_STATUS);
> +	if (status & IGC_STATUS_LU)
> +		wufc &=3D ~IGC_WUFC_LNKC;
> +
> +	if (wufc) {
> +		igc_setup_rctl(adapter);
> +		igc_set_rx_mode(netdev);
> +
> +		/* turn on all-multi mode if wake on multicast is enabled
> */
> +		if (wufc & IGC_WUFC_MC) {
> +			rctl =3D rd32(IGC_RCTL);
> +			rctl |=3D IGC_RCTL_MPE;
> +			wr32(IGC_RCTL, rctl);
> +		}
> +
> +		ctrl =3D rd32(IGC_CTRL);
> +		ctrl |=3D IGC_CTRL_ADVD3WUC;
> +		wr32(IGC_CTRL, ctrl);
> +
> +		/* Allow time for pending master requests to run */
> +		igc_disable_pcie_master(hw);
> +
> +		wr32(IGC_WUC, IGC_WUC_PME_EN);
> +		wr32(IGC_WUFC, wufc);
> +	} else {
> +		wr32(IGC_WUC, 0);
> +		wr32(IGC_WUFC, 0);
> +	}
> +
> +	wake =3D wufc || adapter->en_mng_pt;
> +	if (!wake)
> +		igc_power_down_link(adapter);
> +	else
> +		igc_power_up_link(adapter);
> +
> +	if (enable_wake)
> +		*enable_wake =3D wake;
> +
> +	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
> +	 * would have already happened in close and is redundant.
> +	 */
> +	igc_release_hw_control(adapter);
> +
> +	pci_disable_device(pdev);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused igc_runtime_suspend(struct device *dev)
> +{
> +	return __igc_shutdown(to_pci_dev(dev), NULL, 1);
> +}
> +
> +static void igc_deliver_wake_packet(struct net_device *netdev)
> +{
> +	struct igc_adapter *adapter =3D netdev_priv(netdev);
> +	struct igc_hw *hw =3D &adapter->hw;
> +	struct sk_buff *skb;
> +	u32 wupl;
> +
> +	wupl =3D rd32(IGC_WUPL) & IGC_WUPL_MASK;
> +
> +	/* WUPM stores only the first 128 bytes of the wake packet.
> +	 * Read the packet only if we have the whole thing.
> +	 */
> +	if (wupl =3D=3D 0 || wupl > IGC_WUPM_BYTES)
> +		return;
> +
> +	skb =3D netdev_alloc_skb_ip_align(netdev, IGC_WUPM_BYTES);
> +	if (!skb)
> +		return;
> +
> +	skb_put(skb, wupl);
> +
> +	/* Ensure reads are 32-bit aligned */
> +	wupl =3D roundup(wupl, 4);
> +
> +	memcpy_fromio(skb->data, hw->hw_addr + IGC_WUPM_REG(0), wupl);
> +
> +	skb->protocol =3D eth_type_trans(skb, netdev);
> +	netif_rx(skb);
> +}
> +
> +static int __maybe_unused igc_resume(struct device *dev)
> +{
> +	struct pci_dev *pdev =3D to_pci_dev(dev);
> +	struct net_device *netdev =3D pci_get_drvdata(pdev);
> +	struct igc_adapter *adapter =3D netdev_priv(netdev);
> +	struct igc_hw *hw =3D &adapter->hw;
> +	u32 err, val;
> +
> +	pci_set_power_state(pdev, PCI_D0);
> +	pci_restore_state(pdev);
> +	pci_save_state(pdev);
> +
> +	if (!pci_device_is_present(pdev))
> +		return -ENODEV;
> +	err =3D pci_enable_device_mem(pdev);
> +	if (err) {
> +		dev_err(&pdev->dev,
> +			"igc: Cannot enable PCI device from suspend\n");
> +		return err;
> +	}
> +	pci_set_master(pdev);
> +
> +	pci_enable_wake(pdev, PCI_D3hot, 0);
> +	pci_enable_wake(pdev, PCI_D3cold, 0);
> +
> +	if (igc_init_interrupt_scheme(adapter, true)) {
> +		dev_err(&pdev->dev, "Unable to allocate memory for
> queues\n");
> +		return -ENOMEM;
> +	}
> +
> +	igc_reset(adapter);
> +
> +	/* let the f/w know that the h/w is now under the control of the
> +	 * driver.
> +	 */
> +	igc_get_hw_control(adapter);
> +
> +	val =3D rd32(IGC_WUS);
> +	if (val & WAKE_PKT_WUS)
> +		igc_deliver_wake_packet(netdev);
> +
> +	wr32(IGC_WUS, ~0);
> +
> +	rtnl_lock();
> +	if (!err && netif_running(netdev))
> +		err =3D __igc_open(netdev, true);
> +
> +	if (!err)
> +		netif_device_attach(netdev);
> +	rtnl_unlock();
> +
> +	return err;
> +}
> +
> +static int __maybe_unused igc_runtime_resume(struct device *dev)
> +{
> +	return igc_resume(dev);
> +}
> +
> +static int __maybe_unused igc_suspend(struct device *dev)
> +{
> +	return __igc_shutdown(to_pci_dev(dev), NULL, 0);
> +}
> +
> +static int __maybe_unused igc_runtime_idle(struct device *dev)
> +{
> +	struct net_device *netdev =3D dev_get_drvdata(dev);
> +	struct igc_adapter *adapter =3D netdev_priv(netdev);
> +
> +	if (!igc_has_link(adapter))
> +		pm_schedule_suspend(dev, MSEC_PER_SEC * 5);
> +
> +	return -EBUSY;
> +}
> +
> +static void igc_shutdown(struct pci_dev *pdev)
> +{
> +	bool wake;
> +
> +	__igc_shutdown(pdev, &wake, 0);
> +
> +	if (system_state =3D=3D SYSTEM_POWER_OFF) {
> +		pci_wake_from_d3(pdev, wake);
> +		pci_set_power_state(pdev, PCI_D3hot);
> +	}
> +}
> +
> +static const struct dev_pm_ops igc_pm_ops =3D {
> +	SET_SYSTEM_SLEEP_PM_OPS(igc_suspend, igc_resume)
> +	SET_RUNTIME_PM_OPS(igc_runtime_suspend, igc_runtime_resume,
> +			   igc_runtime_idle)
> +};
> +
>  static struct pci_driver igc_driver =3D {
>  	.name     =3D igc_driver_name,
>  	.id_table =3D igc_pci_tbl,
>  	.probe    =3D igc_probe,
>  	.remove   =3D igc_remove,
> +#ifdef CONFIG_PM
> +	.driver.pm =3D &igc_pm_ops,
> +#endif
> +	.shutdown =3D igc_shutdown,
>  };
> =20
>  void igc_set_flag_queue_pairs(struct igc_adapter *adapter,
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h
> b/drivers/net/ethernet/intel/igc/igc_regs.h
> index 50d7c04dccf5..93a9139f08c5 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -215,6 +215,15 @@
>  /* Shadow Ram Write Register - RW */
>  #define IGC_SRWR	0x12018
> =20
> +/* Wake Up registers */
> +#define IGC_WUC		0x05800  /* Wakeup Control - RW */
> +#define IGC_WUFC	0x05808  /* Wakeup Filter Control - RW */
> +#define IGC_WUS		0x05810  /* Wakeup Status - R/W1C */
> +#define IGC_WUPL	0x05900  /* Wakeup Packet Length - RW */
> +
> +/* Wake Up packet memory */
> +#define IGC_WUPM_REG(_i)	(0x05A00 + ((_i) * 4))
> +
>  /* forward declaration */
>  struct igc_hw;
>  u32 igc_rd32(struct igc_hw *hw, u32 reg);


--=-Uo6cXPAjFCTzr3m5bDWr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl3LAxgACgkQ5W/vlVpL
7c5w2hAAiZLO3z2NIj/HAyoAXjxA3Iigd0FwZqLP2RjM78a8ZwMXzuQREx831eXI
xJRneQ2iw6LwPSoa8cXMUqFJRqhJZ7AWvb97AoqJyGGDQMZZALE+zUyjgPJtn0bm
e2eUoFRW1n8ubZXtv41RdjWyPb0oFXS27OWKiwvTsFxxgwqtQtFvtdw2/z5XZNfQ
fzcMslaMnd/uuGIHAAZ5/KW5ptNWh9akfjJ7z0FV5XA910b6bH3IeLqmmprU+AF6
qvoMfzR/eG6jYhKr7dQA68ix25VWEmu+d9XVIVv9y2zkpzgmmrd09GMOyGFn4Y2c
3n7nAMybw/c0LanGHiwvYgoXoYSajlGGBL1LqLO5YObOAp7tfmqr0H778iinYd8+
b2BBgx6OaK1lf/OCqQkW2Af9IalNcDYLbOmEUg7vEWNm6HU8k0nbsZETumjdjjPv
BXhasFaWFr8yjhh5RVEZ6MLOETwdRezm5f6jEue9JdWbaF4xMPMb9JTukVwkrT5N
8yTFTfZzHOJdBpqIKDl/WqF8xYoQnl45SFiM7G9Wqq9TskpQg9xD3G58Y7vHcDGN
RzGMdzMnKx9Yi5L1Vf1Y96D9sZaOA4P6L5oMGliwYGcoFlpI1UK0o7L3St8UlsAW
61KZj8fUlUpO74r4Gluk9ZE+wpx26ziELCoTwk6CXuLnlVBAiEY=
=P2BA
-----END PGP SIGNATURE-----

--=-Uo6cXPAjFCTzr3m5bDWr--


--===============3853534478633321195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3853534478633321195==--

