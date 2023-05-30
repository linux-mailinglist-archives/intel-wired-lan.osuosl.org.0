Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E21E371662A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 17:06:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8403783CBA;
	Tue, 30 May 2023 15:06:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8403783CBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685459185;
	bh=Jf7vXykRqiF2pjbivktyqoou8Gpi87KOsJ369Go50GA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fcUe2fTuuKb/1Q1adDIASqPMSeOAR0sNpsZEAW+8V4kVsW2EXQuKkEKVJN7ETKfHl
	 dE3Bqy1jnEKsxLM6x5tDcvvrHYJ+X0HYtv3ce1DK97DnTMjPRS3tPLanbmnBFcWVOi
	 AKDa71ie0t6dv0j9qq4BwRdqhgfvuS8KwxwRvb82g5zzkgjyoKtIdWHn3jjLjTZo9U
	 1w7UOnpK9l2hka0U97FIZTsyexfLxXYuhU2aI26EZ8wxMewQNe1dLMIIsa14zIOOPE
	 6IQCt1/d3lyNSk6iMY7GVZfBznsiAKOelr8f23H7GzCqjFHmDVA4LckfYqtuBtbqjR
	 oaVr0+dyAIx3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSxYFS390vRP; Tue, 30 May 2023 15:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EB2283C95;
	Tue, 30 May 2023 15:06:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EB2283C95
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0331BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 12:01:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 17643820F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 12:01:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17643820F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WVBqU0z6iRQE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 12:01:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1379582064
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1379582064
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 12:01:17 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="216017968"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 May 2023 05:01:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 30 May 2023 05:01:15 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 30 May 2023 05:01:15 -0700
Date: Tue, 30 May 2023 14:01:14 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20230530120114.zxh5xncibdtqkf3l@soft-dev3-1>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-3-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530091948.1408477-3-vladimir.oltean@nxp.com>
X-Mailman-Approved-At: Tue, 30 May 2023 15:06:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1685448078; x=1716984078;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SV0f890kYGMVyZmg8vt7TTw244ER+FU0s1Oc2QFPtZw=;
 b=oxaGjBLhm4tauzpAKBV7UeIb5EiT0TFWfPH5sDJgmJg7xeNF77evCzIr
 0gb5CoowKciJYUWBC4Dks+Bgd66MVM/6OlFvWl7heuGfF3n9iqNrQyFOg
 eoUvB8e9gfYWl4SJN8ZbrJ+Sp7UW7ustb8q1eHbE40wJ18IGZ7YLH1e9z
 Fj2TWrBCfGlktoRX2tvOYvTJXI9gYwaxlAc1uyTTombXIot/IUEw4cvNl
 qlik0ReqmcVJq9LOPmpBQwTBJvcGlwZnk/AGnF3YqmJrrrx1i9AbXR3Q9
 0CGZssckp4xoDo7ZaZ0+neASWGVPRj4T/57q0ToRXvjxAlL53NOBbLAFx
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=oxaGjBLh
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] net/sched: taprio:
 replace tc_taprio_qopt_offload :: enable with a "cmd" enum
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>, UNGLinuxDriver@microchip.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Xiaoliang Yang <xiaoliang.yang_1@nxp.com>, Jesse
 Brandeburg <jesse.brandeburg@intel.com>,
 Mohammad Athari Bin Ismail <mohammad.athari.ismail@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Pranavi Somisetty <pranavi.somisetty@amd.com>,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Roger Quadros <rogerq@kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Michael Sit Wei Hong <michael.wei.hong.sit@intel.com>,
 Harini Katakam <harini.katakam@amd.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jose Abreu <joabreu@synopsys.com>,
 Oleksij Rempel <linux@rempel-privat.de>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The 05/30/2023 12:19, Vladimir Oltean wrote:
> 
> Inspired from struct flow_cls_offload :: cmd, in order for taprio to be
> able to report statistics (which is future work), it seems that we need
> to drill one step further with the ndo_setup_tc(TC_SETUP_QDISC_TAPRIO)
> multiplexing, and pass the command as part of the common portion of the
> muxed structure.
> 
> Since we already have an "enable" variable in tc_taprio_qopt_offload,
> refactor all drivers to check for "cmd" instead of "enable", and reject
> every other command except "replace" and "destroy" - to be future proof.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Horatiu Vultur <horatiu.vultur@microchip.com> # for lan966x

> ---
>  drivers/net/dsa/hirschmann/hellcreek.c             | 14 +++++++++-----
>  drivers/net/dsa/ocelot/felix_vsc9959.c             |  4 +++-
>  drivers/net/dsa/sja1105/sja1105_tas.c              |  7 +++++--
>  drivers/net/ethernet/engleder/tsnep_selftests.c    | 12 ++++++------
>  drivers/net/ethernet/engleder/tsnep_tc.c           |  4 +++-
>  drivers/net/ethernet/freescale/enetc/enetc_qos.c   |  6 +++++-
>  drivers/net/ethernet/intel/igc/igc_main.c          | 13 +++++++++++--
>  .../net/ethernet/microchip/lan966x/lan966x_tc.c    | 10 ++++++++--
>  drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    |  7 +++++--
>  drivers/net/ethernet/ti/am65-cpsw-qos.c            | 11 ++++++++---
>  include/net/pkt_sched.h                            |  7 ++++++-
>  net/sched/sch_taprio.c                             |  4 ++--
>  12 files changed, 71 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/dsa/hirschmann/hellcreek.c b/drivers/net/dsa/hirschmann/hellcreek.c
> index 595a548bb0a8..af50001ccdd4 100644
> --- a/drivers/net/dsa/hirschmann/hellcreek.c
> +++ b/drivers/net/dsa/hirschmann/hellcreek.c
> @@ -1885,13 +1885,17 @@ static int hellcreek_port_setup_tc(struct dsa_switch *ds, int port,
>         case TC_SETUP_QDISC_TAPRIO: {
>                 struct tc_taprio_qopt_offload *taprio = type_data;
> 
> -               if (!hellcreek_validate_schedule(hellcreek, taprio))
> -                       return -EOPNOTSUPP;
> +               switch (taprio->cmd) {
> +               case TAPRIO_CMD_REPLACE:
> +                       if (!hellcreek_validate_schedule(hellcreek, taprio))
> +                               return -EOPNOTSUPP;
> 
> -               if (taprio->enable)
>                         return hellcreek_port_set_schedule(ds, port, taprio);
> -
> -               return hellcreek_port_del_schedule(ds, port);
> +               case TAPRIO_CMD_DESTROY:
> +                       return hellcreek_port_del_schedule(ds, port);
> +               default:
> +                       return -EOPNOTSUPP;
> +               }
>         }
>         default:
>                 return -EOPNOTSUPP;
> diff --git a/drivers/net/dsa/ocelot/felix_vsc9959.c b/drivers/net/dsa/ocelot/felix_vsc9959.c
> index 030738fef60e..5de6a27052fc 100644
> --- a/drivers/net/dsa/ocelot/felix_vsc9959.c
> +++ b/drivers/net/dsa/ocelot/felix_vsc9959.c
> @@ -1411,7 +1411,7 @@ static int vsc9959_qos_port_tas_set(struct ocelot *ocelot, int port,
> 
>         mutex_lock(&ocelot->tas_lock);
> 
> -       if (!taprio->enable) {
> +       if (taprio->cmd == TAPRIO_CMD_DESTROY) {
>                 ocelot_port_mqprio(ocelot, port, &taprio->mqprio);
>                 ocelot_rmw_rix(ocelot, 0, QSYS_TAG_CONFIG_ENABLE,
>                                QSYS_TAG_CONFIG, port);
> @@ -1423,6 +1423,8 @@ static int vsc9959_qos_port_tas_set(struct ocelot *ocelot, int port,
> 
>                 mutex_unlock(&ocelot->tas_lock);
>                 return 0;
> +       } else if (taprio->cmd != TAPRIO_CMD_REPLACE) {
> +               return -EOPNOTSUPP;
>         }
> 
>         ret = ocelot_port_mqprio(ocelot, port, &taprio->mqprio);
> diff --git a/drivers/net/dsa/sja1105/sja1105_tas.c b/drivers/net/dsa/sja1105/sja1105_tas.c
> index e6153848a950..d7818710bc02 100644
> --- a/drivers/net/dsa/sja1105/sja1105_tas.c
> +++ b/drivers/net/dsa/sja1105/sja1105_tas.c
> @@ -516,10 +516,11 @@ int sja1105_setup_tc_taprio(struct dsa_switch *ds, int port,
>         /* Can't change an already configured port (must delete qdisc first).
>          * Can't delete the qdisc from an unconfigured port.
>          */
> -       if (!!tas_data->offload[port] == admin->enable)
> +       if ((!!tas_data->offload[port] && admin->cmd == TAPRIO_CMD_REPLACE) ||
> +           (!tas_data->offload[port] && admin->cmd == TAPRIO_CMD_DESTROY))
>                 return -EINVAL;
> 
> -       if (!admin->enable) {
> +       if (admin->cmd == TAPRIO_CMD_DESTROY) {
>                 taprio_offload_free(tas_data->offload[port]);
>                 tas_data->offload[port] = NULL;
> 
> @@ -528,6 +529,8 @@ int sja1105_setup_tc_taprio(struct dsa_switch *ds, int port,
>                         return rc;
> 
>                 return sja1105_static_config_reload(priv, SJA1105_SCHEDULING);
> +       } else if (admin->cmd != TAPRIO_CMD_REPLACE) {
> +               return -EOPNOTSUPP;
>         }
> 
>         /* The cycle time extension is the amount of time the last cycle from
> diff --git a/drivers/net/ethernet/engleder/tsnep_selftests.c b/drivers/net/ethernet/engleder/tsnep_selftests.c
> index 1581d6b22232..8a9145f93147 100644
> --- a/drivers/net/ethernet/engleder/tsnep_selftests.c
> +++ b/drivers/net/ethernet/engleder/tsnep_selftests.c
> @@ -329,7 +329,7 @@ static bool disable_taprio(struct tsnep_adapter *adapter)
>         int retval;
> 
>         memset(&qopt, 0, sizeof(qopt));
> -       qopt.enable = 0;
> +       qopt.cmd = TAPRIO_CMD_DESTROY;
>         retval = tsnep_tc_setup(adapter->netdev, TC_SETUP_QDISC_TAPRIO, &qopt);
>         if (retval)
>                 return false;
> @@ -360,7 +360,7 @@ static bool tsnep_test_taprio(struct tsnep_adapter *adapter)
>         for (i = 0; i < 255; i++)
>                 qopt->entries[i].command = TC_TAPRIO_CMD_SET_GATES;
> 
> -       qopt->enable = 1;
> +       qopt->cmd = TAPRIO_CMD_REPLACE;
>         qopt->base_time = ktime_set(0, 0);
>         qopt->cycle_time = 1500000;
>         qopt->cycle_time_extension = 0;
> @@ -382,7 +382,7 @@ static bool tsnep_test_taprio(struct tsnep_adapter *adapter)
>         if (!run_taprio(adapter, qopt, 100))
>                 goto failed;
> 
> -       qopt->enable = 1;
> +       qopt->cmd = TAPRIO_CMD_REPLACE;
>         qopt->base_time = ktime_set(0, 0);
>         qopt->cycle_time = 411854;
>         qopt->cycle_time_extension = 0;
> @@ -406,7 +406,7 @@ static bool tsnep_test_taprio(struct tsnep_adapter *adapter)
>         if (!run_taprio(adapter, qopt, 100))
>                 goto failed;
> 
> -       qopt->enable = 1;
> +       qopt->cmd = TAPRIO_CMD_REPLACE;
>         qopt->base_time = ktime_set(0, 0);
>         delay_base_time(adapter, qopt, 12);
>         qopt->cycle_time = 125000;
> @@ -457,7 +457,7 @@ static bool tsnep_test_taprio_change(struct tsnep_adapter *adapter)
>         for (i = 0; i < 255; i++)
>                 qopt->entries[i].command = TC_TAPRIO_CMD_SET_GATES;
> 
> -       qopt->enable = 1;
> +       qopt->cmd = TAPRIO_CMD_REPLACE;
>         qopt->base_time = ktime_set(0, 0);
>         qopt->cycle_time = 100000;
>         qopt->cycle_time_extension = 0;
> @@ -610,7 +610,7 @@ static bool tsnep_test_taprio_extension(struct tsnep_adapter *adapter)
>         for (i = 0; i < 255; i++)
>                 qopt->entries[i].command = TC_TAPRIO_CMD_SET_GATES;
> 
> -       qopt->enable = 1;
> +       qopt->cmd = TAPRIO_CMD_REPLACE;
>         qopt->base_time = ktime_set(0, 0);
>         qopt->cycle_time = 100000;
>         qopt->cycle_time_extension = 50000;
> diff --git a/drivers/net/ethernet/engleder/tsnep_tc.c b/drivers/net/ethernet/engleder/tsnep_tc.c
> index d083e6684f12..745b191a5540 100644
> --- a/drivers/net/ethernet/engleder/tsnep_tc.c
> +++ b/drivers/net/ethernet/engleder/tsnep_tc.c
> @@ -325,7 +325,7 @@ static int tsnep_taprio(struct tsnep_adapter *adapter,
>         if (!adapter->gate_control)
>                 return -EOPNOTSUPP;
> 
> -       if (!qopt->enable) {
> +       if (qopt->cmd == TAPRIO_CMD_DESTROY) {
>                 /* disable gate control if active */
>                 mutex_lock(&adapter->gate_control_lock);
> 
> @@ -337,6 +337,8 @@ static int tsnep_taprio(struct tsnep_adapter *adapter,
>                 mutex_unlock(&adapter->gate_control_lock);
> 
>                 return 0;
> +       } else if (qopt->cmd != TAPRIO_CMD_REPLACE) {
> +               return -EOPNOTSUPP;
>         }
> 
>         retval = tsnep_validate_gcl(qopt);
> diff --git a/drivers/net/ethernet/freescale/enetc/enetc_qos.c b/drivers/net/ethernet/freescale/enetc/enetc_qos.c
> index 83c27bbbc6ed..7aad824f4da7 100644
> --- a/drivers/net/ethernet/freescale/enetc/enetc_qos.c
> +++ b/drivers/net/ethernet/freescale/enetc/enetc_qos.c
> @@ -65,7 +65,7 @@ static int enetc_setup_taprio(struct net_device *ndev,
>         gcl_len = admin_conf->num_entries;
> 
>         tge = enetc_rd(hw, ENETC_PTGCR);
> -       if (!admin_conf->enable) {
> +       if (admin_conf->cmd == TAPRIO_CMD_DESTROY) {
>                 enetc_wr(hw, ENETC_PTGCR, tge & ~ENETC_PTGCR_TGE);
>                 enetc_reset_ptcmsdur(hw);
> 
> @@ -138,6 +138,10 @@ int enetc_setup_tc_taprio(struct net_device *ndev, void *type_data)
>         struct enetc_ndev_priv *priv = netdev_priv(ndev);
>         int err, i;
> 
> +       if (taprio->cmd != TAPRIO_CMD_REPLACE &&
> +           taprio->cmd != TAPRIO_CMD_DESTROY)
> +               return -EOPNOTSUPP;
> +
>         /* TSD and Qbv are mutually exclusive in hardware */
>         for (i = 0; i < priv->num_tx_rings; i++)
>                 if (priv->tx_ring[i]->tsd_enable)
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index c5ef1edcf548..88145c30c919 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6113,9 +6113,18 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
>         size_t n;
>         int i;
> 
> -       adapter->qbv_enable = qopt->enable;
> +       switch (qopt->cmd) {
> +       case TAPRIO_CMD_REPLACE:
> +               adapter->qbv_enable = true;
> +               break;
> +       case TAPRIO_CMD_DESTROY:
> +               adapter->qbv_enable = false;
> +               break;
> +       default:
> +               return -EOPNOTSUPP;
> +       }
> 
> -       if (!qopt->enable)
> +       if (!adapter->qbv_enable)
>                 return igc_tsn_clear_schedule(adapter);
> 
>         if (qopt->base_time < 0)
> diff --git a/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c b/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c
> index cf0cc7562d04..ee652f2d2359 100644
> --- a/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c
> +++ b/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c
> @@ -21,8 +21,14 @@ static int lan966x_tc_setup_qdisc_mqprio(struct lan966x_port *port,
>  static int lan966x_tc_setup_qdisc_taprio(struct lan966x_port *port,
>                                          struct tc_taprio_qopt_offload *taprio)
>  {
> -       return taprio->enable ? lan966x_taprio_add(port, taprio) :
> -                               lan966x_taprio_del(port);
> +       switch (taprio->cmd) {
> +       case TAPRIO_CMD_REPLACE:
> +               return lan966x_taprio_add(port, taprio);
> +       case TAPRIO_CMD_DESTROY:
> +               return lan966x_taprio_del(port);
> +       default:
> +               return -EOPNOTSUPP;
> +       }
>  }
> 
>  static int lan966x_tc_setup_qdisc_tbf(struct lan966x_port *port,
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
> index 9d55226479b4..ac41ef4cbd2f 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
> @@ -966,8 +966,11 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
>                 return -EOPNOTSUPP;
>         }
> 
> -       if (!qopt->enable)
> +       if (qopt->cmd == TAPRIO_CMD_DESTROY)
>                 goto disable;
> +       else if (qopt->cmd != TAPRIO_CMD_REPLACE)
> +               return -EOPNOTSUPP;
> +
>         if (qopt->num_entries >= dep)
>                 return -EINVAL;
>         if (!qopt->cycle_time)
> @@ -988,7 +991,7 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
> 
>         mutex_lock(&priv->plat->est->lock);
>         priv->plat->est->gcl_size = size;
> -       priv->plat->est->enable = qopt->enable;
> +       priv->plat->est->enable = qopt->cmd == TAPRIO_CMD_REPLACE;
>         mutex_unlock(&priv->plat->est->lock);
> 
>         for (i = 0; i < size; i++) {
> diff --git a/drivers/net/ethernet/ti/am65-cpsw-qos.c b/drivers/net/ethernet/ti/am65-cpsw-qos.c
> index 3a908db6e5b2..eced87fa261c 100644
> --- a/drivers/net/ethernet/ti/am65-cpsw-qos.c
> +++ b/drivers/net/ethernet/ti/am65-cpsw-qos.c
> @@ -450,7 +450,7 @@ static int am65_cpsw_configure_taprio(struct net_device *ndev,
> 
>         am65_cpsw_est_update_state(ndev);
> 
> -       if (!est_new->taprio.enable) {
> +       if (est_new->taprio.cmd == TAPRIO_CMD_DESTROY) {
>                 am65_cpsw_stop_est(ndev);
>                 return ret;
>         }
> @@ -476,7 +476,7 @@ static int am65_cpsw_configure_taprio(struct net_device *ndev,
>         am65_cpsw_est_set_sched_list(ndev, est_new);
>         am65_cpsw_port_est_assign_buf_num(ndev, est_new->buf);
> 
> -       am65_cpsw_est_set(ndev, est_new->taprio.enable);
> +       am65_cpsw_est_set(ndev, est_new->taprio.cmd == TAPRIO_CMD_REPLACE);
> 
>         if (tact == TACT_PROG) {
>                 ret = am65_cpsw_timer_set(ndev, est_new);
> @@ -520,7 +520,7 @@ static int am65_cpsw_set_taprio(struct net_device *ndev, void *type_data)
>         am65_cpsw_cp_taprio(taprio, &est_new->taprio);
>         ret = am65_cpsw_configure_taprio(ndev, est_new);
>         if (!ret) {
> -               if (taprio->enable) {
> +               if (taprio->cmd == TAPRIO_CMD_REPLACE) {
>                         devm_kfree(&ndev->dev, port->qos.est_admin);
> 
>                         port->qos.est_admin = est_new;
> @@ -564,8 +564,13 @@ static void am65_cpsw_est_link_up(struct net_device *ndev, int link_speed)
>  static int am65_cpsw_setup_taprio(struct net_device *ndev, void *type_data)
>  {
>         struct am65_cpsw_port *port = am65_ndev_to_port(ndev);
> +       struct tc_taprio_qopt_offload *taprio = type_data;
>         struct am65_cpsw_common *common = port->common;
> 
> +       if (taprio->cmd != TAPRIO_CMD_REPLACE &&
> +           taprio->cmd != TAPRIO_CMD_DESTROY)
> +               return -EOPNOTSUPP;
> +
>         if (!IS_ENABLED(CONFIG_TI_AM65_CPSW_TAS))
>                 return -ENODEV;
> 
> diff --git a/include/net/pkt_sched.h b/include/net/pkt_sched.h
> index f436688b6efc..f5fb11da357b 100644
> --- a/include/net/pkt_sched.h
> +++ b/include/net/pkt_sched.h
> @@ -185,6 +185,11 @@ struct tc_taprio_caps {
>         bool broken_mqprio:1;
>  };
> 
> +enum tc_taprio_qopt_cmd {
> +       TAPRIO_CMD_REPLACE,
> +       TAPRIO_CMD_DESTROY,
> +};
> +
>  struct tc_taprio_sched_entry {
>         u8 command; /* TC_TAPRIO_CMD_* */
> 
> @@ -196,7 +201,7 @@ struct tc_taprio_sched_entry {
>  struct tc_taprio_qopt_offload {
>         struct tc_mqprio_qopt_offload mqprio;
>         struct netlink_ext_ack *extack;
> -       u8 enable;
> +       enum tc_taprio_qopt_cmd cmd;
>         ktime_t base_time;
>         u64 cycle_time;
>         u64 cycle_time_extension;
> diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
> index d29e6785854d..06bf4c6355a5 100644
> --- a/net/sched/sch_taprio.c
> +++ b/net/sched/sch_taprio.c
> @@ -1524,7 +1524,7 @@ static int taprio_enable_offload(struct net_device *dev,
>                                "Not enough memory for enabling offload mode");
>                 return -ENOMEM;
>         }
> -       offload->enable = 1;
> +       offload->cmd = TAPRIO_CMD_REPLACE;
>         offload->extack = extack;
>         mqprio_qopt_reconstruct(dev, &offload->mqprio.qopt);
>         offload->mqprio.extack = extack;
> @@ -1572,7 +1572,7 @@ static int taprio_disable_offload(struct net_device *dev,
>                                "Not enough memory to disable offload mode");
>                 return -ENOMEM;
>         }
> -       offload->enable = 0;
> +       offload->cmd = TAPRIO_CMD_DESTROY;
> 
>         err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
>         if (err < 0) {
> --
> 2.34.1
> 
> 

-- 
/Horatiu
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
