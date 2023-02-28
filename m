Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 069C96A5EA1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 19:16:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E52481B83;
	Tue, 28 Feb 2023 18:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E52481B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677608202;
	bh=4qfg34RFb+gDpWeGQBrQifK96ABfjDUaL/eE+rX61AY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vzzJeUcA3huyALNrYNqY14Ob0A4dyDlsWxqA2saEb9yXmdUdyFlq0JSv5+cQfiSWX
	 77Sq3HepJFhb4Ay6IyytGJcI6XePdSB6pcnfMscNuPJjsGt7wqeOyuTPYu6Revo1Ka
	 pFkmwHNrCbd7fRSLye93eo5QRPoONC1QyA7yaGDfiz04s6koB74kxNZnYByQMinzjC
	 Utr3JYbv2sr7bX8UAe6XsEzc9AH18dyiBxvjVLBnuHzKu1T7v3ehfyh62sEwOs1Ek5
	 0rxF19TR+lGWM5VWc3z2vKMNivt/ki8vPHMVpdaTEquaPxah7lTaxi98dt45XKHoV2
	 t9EBH5HCCblqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T8MfkH8b4onY; Tue, 28 Feb 2023 18:16:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E123681AAB;
	Tue, 28 Feb 2023 18:16:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E123681AAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19FBA1BF420
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 18:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4FC941908
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 18:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4FC941908
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6sSgrTung40f for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 18:16:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C16D409A2
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2062.outbound.protection.outlook.com [40.107.20.62])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C16D409A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 18:16:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IxkegoTSeYiMQ7thc9AVAYQBlbCXXoKZac8NGx078CT82TDvckbzAJNuXjmUVRerpFd1zJBlFiYBBCddQ5q+nDN5iwhAhop3lXnFWY6uLh+2xNtzjsnYfwnAHZnUXoo8SvE36qItPg58tAFcdpccHF5X6xW12riWpeVM1Cw3YVsJHz+SRytaOL6gAZVB5bnyO5OiALIzFfGVurtT1yX42Zqb6s0htkXRI/i8247i2K/xUIbPsbkxZL6fQKXJ4V+mRCIHfVP4JvrWiYpJIYlOUcmZjezlBDEU2AHAJZTgSkhnAu2E7v8501b8BvKl6T6mtQDHmCDnxc9SKnCikwOLGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9+rFRHLXaZcM6o+J4P3q+k3PAggsIqdzAe2YAGhyHfk=;
 b=V7E00TjYxiUX/1jETsdItENsJhtlQoN5ehUM7qS7Riv9e2r3us5t7ut4nvEfXVyQYfuxYEzXPrId2rlCK5jqNt0533kQawbUsX/XvYA/n85kzRth5VoXzVMUgNksRXKO9HQbNOe7WyxUv9pZo2U5a4PKS/2vSch1sY/MVNTDQ/dkxsGnsahCShBEezCdTbDO+fMdWZacTMH3VKtGklrkHbQej9VlTvfcgZD2IbK9i9y1xcMo+L8Tm78S0xKgDxcaRI0HU7mBgZ+aOMDTEvBWKlXRnVl5TSynLQs0ipAB8nhR1dYxdIKq6J8oIXAytv1PFdsP02G6w02+9BKpwCZB3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM7PR04MB7062.eurprd04.prod.outlook.com (2603:10a6:20b:122::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.17; Tue, 28 Feb
 2023 18:16:30 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::29a3:120c:7d42:3ca8]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::29a3:120c:7d42:3ca8%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 18:16:30 +0000
Date: Tue, 28 Feb 2023 20:16:26 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230228181626.cssbsgdyhphlldbp@skbuf>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-4-vinicius.gomes@intel.com>
 <20230228054534.1093483-4-vinicius.gomes@intel.com>
Content-Disposition: inline
In-Reply-To: <20230228054534.1093483-4-vinicius.gomes@intel.com>
 <20230228054534.1093483-4-vinicius.gomes@intel.com>
X-ClientProxiedBy: BE1P281CA0055.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:23::12) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM7PR04MB7062:EE_
X-MS-Office365-Filtering-Correlation-Id: d90fbc43-fcc5-4950-a1b9-08db19b7ea42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WS+EfpIJ9wDqNO4bu1DCXg1mzypJHxOoZhHLKgEy6Cw77C9azXExdNwcbs4rS6OR8vKwPVoDH+T41S10S4eG6jlCz035WZXHdneaJrTups74eHbu0bN8Ljc7eXGD/Bwxm6PHu4tnvm7P06br/tZ2sgSzW5GIaryGIcOh+ltGWqTEQkEJir3dbLAy/AqoDSTmGLQQ34DaU9UhE1/zSgFNQH0Z+kpN44VgEBisn0kuV+/Intqtil1pw/kChGd69UaE6oDUKl21e10KVsOYzQPatQXlI8ML96mKvtLVQk/HWCaVgPV/14evK2xusCe0ilW9YcQ0bUGw78NU5hJNDoBpeX/02K4q4kwd76vLFLMJr/7pu25J0PIeoFm4Yb61aZTEBynNrLkKxdFYajCu+ceYC5HFciomu9qpBgkOhrJgWSw7ZpNhbNY09QQ8mqSqqOKqrtahnZ4nhvCppB9HHWKtyrW1dx0ccCJHpPh2J6QVob8kwepKARFhfXO5PSW9pIaoSCNW4QDqIOshH48Z0Qf9znb0sLk1qLUbSuPD6LK/HvAQG84GtaPJfpbDRA0nn6EzSXx+nllTdXqHZiaB6Q50W3Tr4555wgHyqMxpDFFkHAjQwYbHtgtf+KUnq13HicgI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(7916004)(396003)(346002)(376002)(136003)(39860400002)(366004)(451199018)(86362001)(41300700001)(66946007)(66556008)(66476007)(5660300002)(8936002)(6916009)(4326008)(8676002)(3716004)(2906002)(44832011)(38100700002)(6666004)(6486002)(966005)(478600001)(316002)(33716001)(83380400001)(9686003)(186003)(26005)(6512007)(6506007)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R/VKtS5MsWaYk0ojWF3BpSNHgVlBf1JUb1leVgYF5CDI6EQcXU+Gi0YIb0Ob?=
 =?us-ascii?Q?Mf+SU8rQQuVj8eSH0WW68DBzN3wRGT7nV111TyB8DPSeb/0avHXKDRYf4iyw?=
 =?us-ascii?Q?TiTA3eFF3XnfQx5xd+D+Zkr4zB18bJO6vx17ALpRBAptCOoG0aYn5fqCkAFj?=
 =?us-ascii?Q?rqmcDnBwZMoMNvFPYBITuCqBEfPjgoN9Jha6eZoXgn2b5fqNr7XPsSnTRb3H?=
 =?us-ascii?Q?HGP0IdOmWOay+AlYrdqY90vFntvut6L0K8aWAdB4rWzM5QVQ6eKXke0BfSyD?=
 =?us-ascii?Q?XMRCLGLl1pkGYcAtySzptEVg+BRZTN7uA00wxSSuf4SOIpP2aAxvX7Ip8znM?=
 =?us-ascii?Q?cAiNHSKkQgCNCBdy0wAqp7MyC02HVKEmY5IPbGRlfhsXJYsfsLUlMQy3ntv5?=
 =?us-ascii?Q?L0O5hA8Wr5Q4H/q0QuWjxz2piu+pFHEHnA1l/W/pgWd8lWod8iIPgOj1ypb0?=
 =?us-ascii?Q?ZDIG7vUD0N0QMx1Ocv1v0fnpqyryh+cT+xiXfJgQc5yaRagCbt6wWJdMP8Xi?=
 =?us-ascii?Q?ZeU1AYmgOXAAiJuDS0jbunlLn7t61HI3P7jCuGIRUg3AUiA6dEhGcAu3oIxM?=
 =?us-ascii?Q?hK9XUGpSLJlVxasl2CpoWeJK0WN4GwmMC1CUXt9taZjbbeb/ZxJSOJIYscrw?=
 =?us-ascii?Q?uZFvnxlSLkge12S/Gag8euMV0XJrkBcP5xiuR5QTa2yPzuYutpZhhoGESbkw?=
 =?us-ascii?Q?8oFuXWac9JX+UitPdDIMKRrH6Ow29Vk1/7wGtZC+4lAkkBK5+8oFy5OTU69P?=
 =?us-ascii?Q?UctHwz2a0sGy8l9nWfWc7/lJHJpxhKz8niAK2vZV0yq1s5L/fw1JTMgVH7nT?=
 =?us-ascii?Q?fftWLx46rcobmb8IeIfUxaHTS3zHiTeM+VfQCpIio5FK0lfZR3Fez95Y6WLe?=
 =?us-ascii?Q?6damVZLxu3uoz93PT7pYoFnbBR5h2S/Cps4/HKhi1ykVmj3jLFQmr6i8QyAb?=
 =?us-ascii?Q?0CdG6wyMROGQWSTNvy7W4c2js2jIrjooVfAsM22cQGQrG7zkiyy9oV3zKCz5?=
 =?us-ascii?Q?c12tJEiRh5VxihbahjKmoCC/FqlZAM8MZXbV/hD+C984++PzfmnQ/L9JQx/n?=
 =?us-ascii?Q?VktXVxrpmzEZ2A2nCRXBR1F+v98/tREFZofttaq5O80Mm51M2Ih0i2cEh2nM?=
 =?us-ascii?Q?HorocnZTnwFkDZ9ijXr8mHjOVDpNA7PD5t/Nxudcn5FACEXIf1/WBCsW1BTE?=
 =?us-ascii?Q?/zbj96Ax5z+qcxD9p9Mls3dLTl1uCEwOpMRWuZ/dbldawYdreky32OKDQc/N?=
 =?us-ascii?Q?uhHv9llW3+ObCtUVeISFkQoLl5GYegzYZBkQRRChCzHk2kSzozIxqhUP64Cd?=
 =?us-ascii?Q?raQRMAw+EBS6wYd6oondQ0uGFA//yTaeoQgXi5ub1YI4oj8mwfCBRfE3tBAo?=
 =?us-ascii?Q?xLnOm3EB3efRWMphMp0prI3hjjCC6PvMt5YQiECzqYmrk18KcyWzZfwt9ITH?=
 =?us-ascii?Q?qRdUSwcrWL9nHsCvJ0gO69w2RtJp9lNJz6Pfg1A2v8ZvfyO6/khyQO2O+afh?=
 =?us-ascii?Q?+O6XEzKCd/TgEIt0OdIyMr17ZXskQKKmYuCpSjenwrfLnSFygC2K5VTBzcFg?=
 =?us-ascii?Q?XK6318oxUXffGYDqUZ3wu5ybndiZDdOD8U46zyasFQHxahhOZzpCZAuOUlry?=
 =?us-ascii?Q?oA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d90fbc43-fcc5-4950-a1b9-08db19b7ea42
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 18:16:30.4564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w4cEJXGb4/tovGJzFzz6d6g8+V6LbEC855v9fksLdIIjQqRviiMl5AvKQmflVlO/I/2DSDATwFtS32KJxfMfAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7062
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9+rFRHLXaZcM6o+J4P3q+k3PAggsIqdzAe2YAGhyHfk=;
 b=A/BzKIRXv6HvOkoux+/sRBVfUaGlymgCHsHuowmc1YKZOI/u8elF2/22Sj/BIn0v4wF9yEwUqdew1kq/At2DLCag8n/pqoCdBxWPYcvQIOknODrQWH/PANDmviDBpffzNHrYSloXK5xQZBaEEGOXGQYYVGIMQv8GDLMkvGT/gFQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=A/BzKIRX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 3/3] igc: Use
 ptp->aux_worker to retrieve TX timestamps
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
Cc: kurt@linutronix.de, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 27, 2023 at 09:45:34PM -0800, Vinicius Costa Gomes wrote:
> ptp->aux_worker is a kthread and allows the user to set it's priority,
> which is useful for workloads that time synchronization is required.
> 
> As an optimization, when the interrupt is handled try to retrieve the
> timestamps "inline", if they are not, schedule the workload. This
> should reduce the delay before the TX timestamp is available to
> userspace.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |  2 +-
>  drivers/net/ethernet/intel/igc/igc_main.c |  7 +++++-
>  drivers/net/ethernet/intel/igc/igc_ptp.c  | 29 ++++++++++++++++-------
>  3 files changed, 28 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index f0617838a16a..ce7754cb7e6f 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -237,7 +237,6 @@ struct igc_adapter {
>  
>  	struct ptp_clock *ptp_clock;
>  	struct ptp_clock_info ptp_caps;
> -	struct work_struct ptp_tx_work;
>  	/* Access to ptp_tx_skb and ptp_tx_start is protected by the
>  	 * ptp_tx_lock.
>  	 */
> @@ -651,6 +650,7 @@ int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
>  int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
>  void igc_ptp_tx_hang(struct igc_adapter *adapter);
>  void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
> +long igc_ptp_tx_work(struct ptp_clock_info *ptp);
>  
>  #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
>  
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 4861ad0689ed..a7775d618867 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5226,8 +5226,13 @@ static void igc_tsync_interrupt(struct igc_adapter *adapter)
>  	}
>  
>  	if (tsicr & IGC_TSICR_TXTS) {
> +		long delay;
>  		/* retrieve hardware timestamp */
> -		schedule_work(&adapter->ptp_tx_work);
> +		delay = igc_ptp_tx_work(&adapter->ptp_caps);
> +		if (delay >= 0) {
> +			/* The timestamp is not ready, schedule to check later */
> +			ptp_schedule_worker(adapter->ptp_clock, delay);
> +		}
>  		ack |= IGC_TSICR_TXTS;
>  	}
>  
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 0cb932b52a7b..34237464f26d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -713,24 +713,37 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter, u32 mask)
>   * igc_ptp_tx_work
>   * @work: pointer to work struct
>   *
> - * This work function polls the TSYNCTXCTL valid bit to determine when a
> - * timestamp has been taken for the current stored skb.
> + * This work function polls the TSYNCTXCTL valid bit to determine when
> + * a timestamp has been taken for the current stored skb. Return a
> + * delay in case there's no timestamp ready.
>   */
> -static void igc_ptp_tx_work(struct work_struct *work)
> +long igc_ptp_tx_work(struct ptp_clock_info *ptp)
>  {
> -	struct igc_adapter *adapter = container_of(work, struct igc_adapter,
> -						   ptp_tx_work);
> +	struct igc_adapter *adapter = container_of(ptp, struct igc_adapter,
> +						   ptp_caps);
>  	struct igc_hw *hw = &adapter->hw;
>  	unsigned long flags;
>  	u32 tsynctxctl;
> +	long delay = -1;

idk what the coding style is in the igc driver, but this line is longer
than the previous one, and with network drivers, one usually prefers the
"reverse Christmas tree".

>  
>  	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
>  
>  	tsynctxctl = rd32(IGC_TSYNCTXCTL);
> +	tsynctxctl &= IGC_TSYNCTXCTL_TXTT_ANY;
> +	if (!tsynctxctl) {
> +		/* We got the interrupt but the timestamp is not ready
> +		 * still, schedule to check later.
> +		 */

this comment raises many hairs reading it, it sure makes it sound like the
hardware is buggy for raising an interrupt before the data is available.

I had this same question a while ago, could you borrow some of the wording
you used back then to explain in this comment, here, how it is possible to
get IGC_TSICR_TXTS ("Transmit Timestamp") set in the Time Sync Interrupt
Causes register, and for there not to be any TX timestamps available?
https://lore.kernel.org/netdev/20220815222639.346wachaaq5zjwue@skbuf/

> +		delay = usecs_to_jiffies(1);

it will surely take more than 1 us anyway to schedule, and so, setting a
timer for the kthread seems slightly pointless? The ptp_schedule_worker()/
__kthread_queue_delayed_work() API accepts 0 for delay, meaning "immediately".

> +		goto unlock;
> +	}
>  
> -	igc_ptp_tx_hwtstamp(adapter, tsynctxctl & IGC_TSYNCTXCTL_TXTT_ANY);
> +	igc_ptp_tx_hwtstamp(adapter, tsynctxctl);
>  
> +unlock:
>  	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
> +
> +	return delay;

On the same note: from the kthread you can also busy poll for a while;
for TX timestamps (which should be delivered rather quickly) I guess
this is more productive than rescheduling again (with such a short
interval), since it makes the slot available quicker for TX. Though,
I have to say, not quite clear how rescheduling ends up being needed in
the first place....

>  }
>  
>  /**
> @@ -993,6 +1006,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
>  		adapter->ptp_caps.n_per_out = IGC_N_PEROUT;
>  		adapter->ptp_caps.n_pins = IGC_N_SDP;
>  		adapter->ptp_caps.verify = igc_ptp_verify_pin;
> +		adapter->ptp_caps.do_aux_work = igc_ptp_tx_work;
>  
>  		if (!igc_is_crosststamp_supported(adapter))
>  			break;
> @@ -1006,7 +1020,6 @@ void igc_ptp_init(struct igc_adapter *adapter)
>  
>  	spin_lock_init(&adapter->tmreg_lock);
>  	spin_lock_init(&adapter->ptp_tx_lock);
> -	INIT_WORK(&adapter->ptp_tx_work, igc_ptp_tx_work);
>  
>  	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
>  	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
> @@ -1081,7 +1094,7 @@ void igc_ptp_suspend(struct igc_adapter *adapter)
>  	if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
>  		return;
>  
> -	cancel_work_sync(&adapter->ptp_tx_work);
> +	ptp_cancel_worker_sync(adapter->ptp_clock);
>  
>  	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);
>  
> -- 
> 2.39.2
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
