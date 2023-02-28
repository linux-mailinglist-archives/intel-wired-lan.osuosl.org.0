Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E2D6A5E63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 18:45:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6450440C01;
	Tue, 28 Feb 2023 17:45:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6450440C01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677606334;
	bh=Cl70LC8jPgK5jQ57kH16FXSoqAZfPNe98H1b0+usZLo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WvvUYCI9KB8CUVLXXPTcfFcvWFyadqeXTjYq2U8qLpHMTl0gavAbFen84J+KFXuGJ
	 niMEQbBpkanJ6Fyb383AiQCEu9F0FtYaDaT68wQew/6VAQiPNZT+/qBouSLNZzeUG5
	 cpsml2rhp4eDGkbn1qtjCBMfdN6MXvaAhAU5xD9nsxc9tUqP/8FXf8Oan/hHo+WPHq
	 MDST2gLlaDX35mLJL1ZYPL3oFu/L9QBEueLxu+VCNzW7sxYpOZs99DkvIjv79ZjjMk
	 qB5Zfaed1ZppXAK20WekHNcZG6237ekTCjgz03RSk1DixpJvHHPNvpfbHnVqgbmYGV
	 KXEpE4ki+U3Vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QyPSV-jgMz_Y; Tue, 28 Feb 2023 17:45:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3107440BC1;
	Tue, 28 Feb 2023 17:45:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3107440BC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D7831D7F65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 17:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 153E081FFA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 17:45:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 153E081FFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id no7-ZzfBqlnA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 17:45:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 021A781FDC
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2078.outbound.protection.outlook.com [40.107.21.78])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 021A781FDC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 17:45:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YL6wYdUd3Zi8GIte8FTzfyY+RPH1L+q5cjrTrqzF+TteEAUd8odhsHypxHKf7ub6Kp5XzvPvYoxgeuwUvsw267WhKHd0papjKRFqA0207DHzoJ+U1X4OgB66v3NyJN7wQ9aNNfsYbXCe5wy5GWZ2NyLrz1pdw682h8/oQK08/hKkkilzdNOcdx+vWCCGgd9xOMDUqc8kuLjEO63kYFWS63KBiz5nPSGqzfUFk1F3eoGJBns2RxJIqyKuA53pXrJJYU/B2RoZ24Ig+CQm1R+Lvx8ToQP0jbjzuMsV/ciTMb+a/NGGdOq/EaoaArs5a9yy1MsupDs08OnehCTyb6oPNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2C0qEQ4hDvRA4pnRXyWMfHifR4pB/qo2pP5kvwEo1Ug=;
 b=n7ilC9Go28SAT9ZYasJC2eSCtw+IZvtfvpBiKwi2R3xd3g1TDrQr4RaZjqeHHfBTXZj3SH511BIBnOAKa9llLgXvEnO3L88Q0QGseQm4oNzOxQWqQ3lLfZnKhFvJPtdkAzfj6PHFjmy0K5eqVW3yt+Myj6jyzlS+Z/D8zVPEuL605MMrOEbwAR2tAKq/QCggZkBAW7PrX6lDcWuilO6Xj2cT+MPURSdCVRMwbowIFzfHhXFt3wP1p7dxMNRmZCGB1J841s8JxibPtziWAaQol87QyBCxyXpdmzEb0QbGcSFVYBXOYMiDuN2aD2g1+KSzddFwhApCvm3MEyS71QmbNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DU2PR04MB8789.eurprd04.prod.outlook.com (2603:10a6:10:2e0::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 17:45:23 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::29a3:120c:7d42:3ca8]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::29a3:120c:7d42:3ca8%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 17:45:23 +0000
Date: Tue, 28 Feb 2023 19:45:20 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230228174520.vbp6ubvn43wh7fhw@skbuf>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-3-vinicius.gomes@intel.com>
 <20230228054534.1093483-3-vinicius.gomes@intel.com>
Content-Disposition: inline
In-Reply-To: <20230228054534.1093483-3-vinicius.gomes@intel.com>
 <20230228054534.1093483-3-vinicius.gomes@intel.com>
X-ClientProxiedBy: BE1P281CA0055.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:23::12) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DU2PR04MB8789:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d308aa6-0523-4cf9-34b4-08db19b39186
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p/tAhhYjlO8n4x26SlSxR1+CcjCpbBp+WOC09y3huGAcYU/wKfmQfqs8A/qM7iz17YpsHuBHboDO2Bm93RrHQByWF9YdrJmLLJ2CW9R7V/gAZS8s8RrhrMEz9sSx9aMi6d4XRB88isABQH4z4LiwK0NLGrNDxshS1yPjuXW7NxVLvq9uJDzbH8ZwIwUDvVeFdGDm1eBI+sFld3wRAwmAMvt6yfdouH6yjoXtbHOZIq/dtJj/6hpu1eJv7AP4EapBC9tR58zNby/s5TF5bJMFcMJci9DWKn/FAZnqXuXe8z06Qul5iECVIDmV6UmolmkeOL5VIX3Ik04/GBWbCOvUh7H8uAs0ZtGIt/ExeXzuz0uz7XWR306t5XlApQOZcqpKzpJvbXQ51H5f7hWgN9skcbSKTP93C6BgNIinljsnugQ4j2InrFUqRTr+Eb3fWJYuZzI6wtHsDhnOWCulw0zl8eggQIPrIqAZKLVLX1lYBL++Ys9eFi+dbxlb+JYcr+DnP0twpJMVSXakzGMCvpnQpZYsRKSuQpUaWTf2stBhW3czW9bunBjU2UbCRDJvlms7hhePSjGT3oRtPZEvKRKHmddwDz24S5dWeCLviyb4WsQfNdxpvgfOK6l1Yy4irJ2fAmNcUU3Ada1g9RBPvTz+Eg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(7916004)(136003)(39860400002)(346002)(396003)(366004)(376002)(451199018)(86362001)(38100700002)(44832011)(2906002)(66946007)(8676002)(6916009)(66556008)(66476007)(41300700001)(8936002)(4326008)(5660300002)(33716001)(1076003)(6506007)(186003)(26005)(9686003)(6512007)(83380400001)(316002)(478600001)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5KtsclnFJ467eOaCg4PFOu12GfSdUiukfM0YbvbvbMZmB5Le57DINex4qiLS?=
 =?us-ascii?Q?2yUrdyo7Pazqr4dLQ5PP6Oxp0wYOkH9EQu0GkZD0J6qrQIrX5JncDuxpEeFs?=
 =?us-ascii?Q?g0yjGbEXwzkww4rLRRxzNKnVtVsNH8Oy+rBm+gKx6jM2AdGWiLEz6jeN2IDH?=
 =?us-ascii?Q?ufbyi9+tcOqeJogMltU5lEDdW/5PxaAytrPQyFsluoj/3HcuJwv+/LpiEZ+j?=
 =?us-ascii?Q?g18pH1fPTospVjKUVb/ZbMIGmCRdqxOaVD/cJ0jF2eMLYfxpXQf545fngcxh?=
 =?us-ascii?Q?n/xiirlRUFKYyPoV2KE+PqqPTpTTvou6o4Y+t6d8sdIwqWyPurmirgKovqTV?=
 =?us-ascii?Q?QzXp8zcwcSnVkFIhr9WRRtdGtDZCO1hM1TpO2kR9nd2EUf1WX82J0bbGemF/?=
 =?us-ascii?Q?HZ93g3kyEzM8UdG25SH2ubRb63I8f9JDWjGd+SVMl/fdeAw0OihaLZRnO+o9?=
 =?us-ascii?Q?E1p2cBWIzIFJOetAHWZ5+QeK1LRTbHRzo19l3CHQZkWPIJfdTBYheHCFnN0m?=
 =?us-ascii?Q?GC+6nKIsejwxQRjaj1X92K1rxO2Xvx7rsK3ctKwmO5A3KuOth9W6YaxLy+Ov?=
 =?us-ascii?Q?BJUwWyvNAOBzS4VHlh5aky4E+qCQXEZ07049ZmK0gDupMGDy8uYQy0qM/oSr?=
 =?us-ascii?Q?WRKqeUErOdpFfd/kVVNGDbFL7/DlYf9Z4Af67/vjRdb8Bo/a6GMDEESe2jTs?=
 =?us-ascii?Q?Qs/OleBbjkCWg8FWG8dydSpv8jhOBzerXF6VR2QBQtw5WnzlgDEn2usP0GjX?=
 =?us-ascii?Q?9paMXJcBRuk/a0iME4fFu16CPRxUx+Otx8eQFKKwDux5C887t9w9kkfZ0ey/?=
 =?us-ascii?Q?S+RL8GgXMW/xYP2wvTzeA+Fp6H+2DlR+CYz2ABRp9AqYl97DmGEPg8xi30Re?=
 =?us-ascii?Q?vQg8vaAMA/RnOUN6s+1rRWOGl12xdK6NHy331o7+csFdv88vPzHK5rFPryvZ?=
 =?us-ascii?Q?lx9K0ikAb9pLxImpKiMjVl8A/1QXTDK+jSBjNRuAOEHCDHnC9lZPHETDFcdr?=
 =?us-ascii?Q?QyEXNUx5oM1+hh58GF8z2E2Y8dB5snpiGDbOfxrQR1xfV6QH5LN3i/91MS7G?=
 =?us-ascii?Q?7uGhdljtj2aw6KWIheCZ99Xec4QQ1TVSdCbaruHtaPxyY4E7E9D67Cvthfds?=
 =?us-ascii?Q?MrUsgkmOpRSaNkMJKuGqIPp4PN2WZwz4di5udeHVFdfxnSRj82Y7loG66QYb?=
 =?us-ascii?Q?EblOYZQ9EB3Dol1Z7BYuXOJHGWV7FuRqjxwBdFKGaadOJOZCvk6ousBXLhFj?=
 =?us-ascii?Q?h3hpIgTarrkzSYvDzbMBe++2QS95t6ynVnwiNfQ/4rGZ07r8X+1SAZ+Oi8Rg?=
 =?us-ascii?Q?7htAPafMZIsmJLnvJgE6Zx6+E7qm1r8P+/Gz7Nuf0q2wp77qxTbhbvYMX2rE?=
 =?us-ascii?Q?qKy1ZEoVjrxgSoT/k8MESgQs0BKTkBF+goWs7WjDwvxJaJndtdZ35lycCJgP?=
 =?us-ascii?Q?Il/FcdZfATI8clCySEKAn9F8rRBpuRyfHM3BojlJOi4Vo1/10U7OZpmfGMvQ?=
 =?us-ascii?Q?KtO3bM8HhC1Xk3TDENmQYTwMgMNMI2MUXcTRR+9tn+Hdmg6VFr9FnyT03VhO?=
 =?us-ascii?Q?WgwUzjWhNZnDEYJoYTsneuxvDsDARBk48wgUeuQTBerQRRc9EnTd7FSbRA0s?=
 =?us-ascii?Q?5g=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d308aa6-0523-4cf9-34b4-08db19b39186
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 17:45:23.5639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aB+AW/b69Bs8ZM7rCqTmqznNdE/Z0+3q8CnbebUxMrjSmjVkATepnPWxwTHjJG2rb+l77djlLQHMCvKPUN5A5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8789
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2C0qEQ4hDvRA4pnRXyWMfHifR4pB/qo2pP5kvwEo1Ug=;
 b=afAEjFZ4ESh4eQHwwZ6bVYuZhEtDWD38rXE+LIfLwhJniviZz53RhKuWVnOO9/XwsTwoWKgKom22Sr0KORUbLjuTOzpHc8is1DOP6jKu7HTDfo3SVNUGtkpvhYZUsIAmNZhM6OSDOBCwkyoVB7fyGDmP+PKikKYSlm5Q/IYmWLA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=afAEjFZ4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 2/3] igc: Add support
 for multiple in-flight TX timestamps
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

On Mon, Feb 27, 2023 at 09:45:33PM -0800, Vinicius Costa Gomes wrote:
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index e804a566bdd3..f0617838a16a 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -35,6 +35,8 @@ void igc_ethtool_set_ops(struct net_device *);
>  
>  #define MAX_FLEX_FILTER			32
>  
> +#define IGC_MAX_TX_TSTAMP_REGS		4
> +
>  enum igc_mac_filter_type {
>  	IGC_MAC_FILTER_TYPE_DST = 0,
>  	IGC_MAC_FILTER_TYPE_SRC
> @@ -67,6 +69,15 @@ struct igc_rx_packet_stats {
>  	u64 other_packets;
>  };
>  
> +struct igc_tx_timestamp_request {
> +	struct sk_buff *skb;   /* reference to the packet being timestamped */
> +	unsigned long start;   /* when the tstamp request started (jiffies) */
> +	u32 mask;              /* _TSYNCTXCTL_TXTT_{X} bit for this request */
> +	u32 regl;              /* which TXSTMPL_{X} register should be used */
> +	u32 regh;              /* which TXSTMPH_{X} register should be used */
> +	u32 flags;             /* flags that should be added to the tx_buffer */
> +};
> +
>  struct igc_ring_container {
>  	struct igc_ring *ring;          /* pointer to linked list of rings */
>  	unsigned int total_bytes;       /* total bytes processed this int */
> @@ -231,9 +242,8 @@ struct igc_adapter {
>  	 * ptp_tx_lock.
>  	 */
>  	spinlock_t ptp_tx_lock;
> -	struct sk_buff *ptp_tx_skb;
> +	struct igc_tx_timestamp_request tx_tstamp[IGC_MAX_TX_TSTAMP_REGS];
>  	struct hwtstamp_config tstamp_config;
> -	unsigned long ptp_tx_start;

This comment added by patch 1/3 already became obsolete:

	/* Access to ptp_tx_skb and ptp_tx_start is protected by the
	 * ptp_tx_lock.
	 */
	spinlock_t ptp_tx_lock;

>  	unsigned int ptp_flags;
>  	/* System time value lock */
>  	spinlock_t tmreg_lock;
> @@ -416,6 +426,10 @@ enum igc_tx_flags {
>  	/* olinfo flags */
>  	IGC_TX_FLAGS_IPV4	= 0x10,
>  	IGC_TX_FLAGS_CSUM	= 0x20,
> +
> +	IGC_TX_FLAGS_TSTAMP_1	= 0x100,
> +	IGC_TX_FLAGS_TSTAMP_2	= 0x200,
> +	IGC_TX_FLAGS_TSTAMP_3	= 0x400,
>  };
>  
>  enum igc_boards {
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 9247395911c9..0cb932b52a7b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -604,92 +604,109 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
>  }
>  
>  /* Requires adapter->ptp_tx_lock held by caller. */
> -static void igc_ptp_tx_timeout(struct igc_adapter *adapter)
> +static void igc_ptp_tx_timeout(struct igc_adapter *adapter,
> +			       struct igc_tx_timestamp_request *tstamp)
>  {
>  	struct igc_hw *hw = &adapter->hw;
>  
> -	dev_kfree_skb_any(adapter->ptp_tx_skb);
> -	adapter->ptp_tx_skb = NULL;
> -	adapter->ptp_tx_start = 0;
> +	dev_kfree_skb_any(tstamp->skb);
> +	tstamp->skb = NULL;
> +	tstamp->start = 0;
>  	adapter->tx_hwtstamp_timeouts++;
> -	/* Clear the tx valid bit in TSYNCTXCTL register to enable interrupt. */
> -	rd32(IGC_TXSTMPH);
> +
> +	/* Reading the high register of one of the timestamp registers
> +	 * clears the equivalent bit in the TSYNCTXCTL register.
> +	 */
> +	rd32(tstamp->regh);
> +
>  	netdev_warn(adapter->netdev, "Tx timestamp timeout\n");
>  }
>  
>  void igc_ptp_tx_hang(struct igc_adapter *adapter)
>  {
> +	struct igc_tx_timestamp_request *tstamp;
>  	unsigned long flags;
> +	int i;
>  
>  	spin_lock_irqsave(&adapter->ptp_tx_lock, flags);

Since this is called unconditionally and periodically from igc_watchdog_task(),
it will periodically temporarily disable IRQs and therefore also
softirqs, to not race with the data path, right?

Does it make sense to only do this if adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON?
There shouldn't be TX timestamps in flight if that isn't set, and an
_irqsave could be avoided.

I suppose this is more of a comment on patch 1/3 really.

>  
> -	if (!adapter->ptp_tx_skb)
> -		goto unlock;
> +	for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> +		tstamp = &adapter->tx_tstamp[i];
>  
> -	if (time_is_after_jiffies(adapter->ptp_tx_start + IGC_PTP_TX_TIMEOUT))
> -		goto unlock;
> +		if (!tstamp->skb)
> +			continue;
>  
> -	igc_ptp_tx_timeout(adapter);
> +		if (time_is_after_jiffies(tstamp->start + IGC_PTP_TX_TIMEOUT))
> +			continue;
> +
> +		igc_ptp_tx_timeout(adapter, tstamp);
> +	}
>  
> -unlock:
>  	spin_unlock_irqrestore(&adapter->ptp_tx_lock, flags);
>  }
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
