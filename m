Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8E476C66
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 17:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B03A22E1C;
	Fri, 26 Jul 2019 15:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BJF4cLo+wCxu; Fri, 26 Jul 2019 15:11:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5FC4B230F3;
	Fri, 26 Jul 2019 15:11:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE5B71BF29D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 15:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA60C87E5A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 15:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7kzeNxfXfSLK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 15:11:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 193DA87A24
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 15:11:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 08:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="181896003"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga002.jf.intel.com with ESMTP; 26 Jul 2019 08:11:11 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jul 2019 08:11:11 -0700
Received: from orsmsx122.amr.corp.intel.com ([169.254.11.68]) by
 ORSMSX152.amr.corp.intel.com ([169.254.8.114]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 08:11:11 -0700
From: "Allan, Bruce W" <bruce.w.allan@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S25 01/12] ice: update ethtool stats
 on-demand
Thread-Index: AQHVQxX6cSWcmLtUM0CzKb3wpMkhrabdAnyw
Date: Fri, 26 Jul 2019 15:11:10 +0000
Message-ID: <804857E1F29AAC47BF68C404FC60A18401096A0B8D@ORSMSX122.amr.corp.intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjMyNjVjZWYtNjFjZS00YTJmLTk2NDctZWRmMTUyODMxMmUzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaVlOVWllOHYyWFY5NHlxU2VcL3pSRFZTWHJ1eldtWmsxc1VEb1JLMXBUaWZsN3RGdVEyT0NsblRjUUJYTGxsYXYifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S25 01/12] ice: update ethtool stats
 on-demand
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ACK

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On Behalf
> Of Tony Nguyen
> Sent: Thursday, July 25, 2019 2:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S25 01/12] ice: update ethtool stats on-
> demand
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> Users expect ethtool statistics to be updated on-demand when invoking
> 'ethtool -S <iface>' instead of providing a snapshot of statistics taken
> once a second (the frequency of the watchdog task where stats are currently
> updated).  Update stats every time 'ethtool -S <iface>' is run.
> 
> Also, fix an indentation style issue and an unnecessary local variable
> initialization in ice_get_ethtool_stats() discovered while investigating
> the subject issue.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         | 2 ++
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 7 +++++--
>  drivers/net/ethernet/intel/ice/ice_main.c    | 6 ++----
>  3 files changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 0e233b7c40bc..2165366e9250 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -450,6 +450,8 @@ int ice_vsi_setup_tx_rings(struct ice_vsi *vsi);
>  int ice_vsi_setup_rx_rings(struct ice_vsi *vsi);
>  void ice_set_ethtool_ops(struct net_device *netdev);
>  int ice_vsi_recfg_qs(struct ice_vsi *vsi, int new_rx, int new_tx);
> +void ice_update_vsi_stats(struct ice_vsi *vsi);
> +void ice_update_pf_stats(struct ice_pf *pf);
>  int ice_up(struct ice_vsi *vsi);
>  int ice_down(struct ice_vsi *vsi);
>  int ice_vsi_cfg(struct ice_vsi *vsi);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index b60bcbcf9bf2..4b2494e7fa78 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -1319,14 +1319,17 @@ ice_get_ethtool_stats(struct net_device *netdev,
>  	struct ice_vsi *vsi = np->vsi;
>  	struct ice_pf *pf = vsi->back;
>  	struct ice_ring *ring;
> -	unsigned int j = 0;
> +	unsigned int j;
>  	int i = 0;
>  	char *p;
> 
> +	ice_update_pf_stats(pf);
> +	ice_update_vsi_stats(vsi);
> +
>  	for (j = 0; j < ICE_VSI_STATS_LEN; j++) {
>  		p = (char *)vsi + ice_gstrings_vsi_stats[j].stat_offset;
>  		data[i++] = (ice_gstrings_vsi_stats[j].sizeof_stat ==
> -			    sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
> +			     sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
>  	}
> 
>  	/* populate per queue stats */
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 833f0efc93f9..17358a10866d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -34,8 +34,6 @@ static const struct net_device_ops ice_netdev_ops;
>  static void ice_rebuild(struct ice_pf *pf);
> 
>  static void ice_vsi_release_all(struct ice_pf *pf);
> -static void ice_update_vsi_stats(struct ice_vsi *vsi);
> -static void ice_update_pf_stats(struct ice_pf *pf);
> 
>  /**
>   * ice_get_tx_pending - returns number of Tx descriptors not processed
> @@ -3290,7 +3288,7 @@ static void ice_update_vsi_ring_stats(struct ice_vsi
> *vsi)
>   * ice_update_vsi_stats - Update VSI stats counters
>   * @vsi: the VSI to be updated
>   */
> -static void ice_update_vsi_stats(struct ice_vsi *vsi)
> +void ice_update_vsi_stats(struct ice_vsi *vsi)
>  {
>  	struct rtnl_link_stats64 *cur_ns = &vsi->net_stats;
>  	struct ice_eth_stats *cur_es = &vsi->eth_stats;
> @@ -3326,7 +3324,7 @@ static void ice_update_vsi_stats(struct ice_vsi *vsi)
>   * ice_update_pf_stats - Update PF port stats counters
>   * @pf: PF whose stats needs to be updated
>   */
> -static void ice_update_pf_stats(struct ice_pf *pf)
> +void ice_update_pf_stats(struct ice_pf *pf)
>  {
>  	struct ice_hw_port_stats *prev_ps, *cur_ps;
>  	struct ice_hw *hw = &pf->hw;
> --
> 2.20.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
