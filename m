Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACEB21853E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 12:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF08D88CD5;
	Wed,  8 Jul 2020 10:47:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7gX-JW8l+jBh; Wed,  8 Jul 2020 10:47:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9AC9888CAE;
	Wed,  8 Jul 2020 10:47:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 052441BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 10:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D59F820488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 10:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GQZSq+pwMx3D for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 10:47:19 +0000 (UTC)
X-Greylist: delayed 01:33:38 by SQLgrey-1.7.6
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2113.outbound.protection.outlook.com [40.107.21.113])
 by silver.osuosl.org (Postfix) with ESMTPS id 6BCAD20373
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 10:47:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Re/Km4pqkaIdZxep2g0ghJZPOET+e1VmUBUMTTRUv+WPL6xAwuYenC1P34sxlr1ePCFi7TajYpPy97PAXP/HdCC0DUa20FRbM9aO9P7JFAe18nLamkT6vx42sWQ8sg9N2VRtynmYotCxYCZMwz2trIsxcJ/UqBiDu7I3zyYqJVQ+bL46Aeh7IMVB/DPrA3V2hCkLcpoI+V9h0MzHNmvDHkvdQ0LOG/E810y48am2NThxiJyqLjxcX2+P0dt9e4g9Sj/Ux/Yn/0Sidu4lHYQDBW8pFQchaloTilAKPV+xK8paAbFSj3VUyA67pQPzNmFXAQAMUSziMbPoiAYG3GX+vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nm4ZkvZRPGEWFqlp8/iholjYIngtuN5f9SiQPGwhKrQ=;
 b=axXsiveDSwaEAR08Tc8dmU3NfgQf2mYnlK/bIoD+GQyCgxksZs+WSafFkxymxUPZT4iOJYintIiXz/PIE0fmVV+pBVU39WlPATw07xeVMviH7ksgDBg4UnJ1wU4Poa6wojOKfogjPQjqCaTmdq1aT2S3KNgm7xqOVP6sFeSnaHZxIH6JEu90d9ZCeUm/sOQPbGix1zEMpgN/fGmeDLDTKP3C/vs+bbsRZVNg1mwhD/NcbFKWiCxy9fZMnyEVKRbBIHAcRZ4WFfNhrlyShSwteiwrkAAmCSj0wx35G94gIjuqr6gnTzT+sM6knak0zkAijVqO/UM+32I6yB735QP3zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nm4ZkvZRPGEWFqlp8/iholjYIngtuN5f9SiQPGwhKrQ=;
 b=h0VFkum7ywH99cynKyOBMwZvQpDHGnGosndDQHw75cbqQ7kOvMkDO4Is7hZm/uKW6VzLrO9E4hu/imlxMv2kSJ2Khbvy9IYam2o6TiYkf/3nV2ie5WsPBolJ5fEjusbGUF9pAz5KIJ9ChRB5hZo832+6QKvILV8ukofFmOWHuTA=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none;lists.osuosl.org; dmarc=none action=none
 header.from=voleatech.de;
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11) by AM4PR05MB3281.eurprd05.prod.outlook.com
 (2603:10a6:205:8::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.29; Wed, 8 Jul
 2020 09:13:35 +0000
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39]) by AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39%11]) with mapi id 15.20.3153.030; Wed, 8 Jul 2020
 09:13:35 +0000
Date: Wed, 8 Jul 2020 11:13:33 +0200
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <20200708091333.uqj36ahs6bdcrblk@SvensMacbookPro.hq.voleatech.com>
References: <20200629044254.b2i6a5q72wagyg27@SvensMacBookAir.sven.lan>
Content-Disposition: inline
In-Reply-To: <20200629044254.b2i6a5q72wagyg27@SvensMacBookAir.sven.lan>
X-ClientProxiedBy: AM0PR03CA0106.eurprd03.prod.outlook.com
 (2603:10a6:208:69::47) To AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from SvensMacbookPro.hq.voleatech.com (37.24.174.42) by
 AM0PR03CA0106.eurprd03.prod.outlook.com (2603:10a6:208:69::47) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.21 via Frontend Transport; Wed, 8 Jul 2020 09:13:34 +0000
X-Originating-IP: [37.24.174.42]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7aa8e73f-a9f5-4352-8da2-08d8231f310d
X-MS-TrafficTypeDiagnostic: AM4PR05MB3281:
X-Microsoft-Antispam-PRVS: <AM4PR05MB3281CC1168EECC3DBA3210A9EF670@AM4PR05MB3281.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:469;
X-Forefront-PRVS: 04583CED1A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dD79jbaARN8W2LRO1qRKxDLIkWY4yBKy3vQ25nZQNCqFI+6g10NkLDUWwDjdI4iYvMltfUQa81IXd8HJca9UAFVqlOZx6CowFQYAjFnEfAxoXhBtrk2uYul5WQxYYBX429uy7tQJvN7BkW0sIP/d6vGvsmyOeV3VAAO3zEbAL5/oWiBCNWmPNStH5YQ12HotQ2WuZp8ayEG3QYZ574EQ1mQbiuGoA2xg1PCEMSWLiSuDyQCtWGgnFp6tFSbOMZax/oxv8/ti9fTJUqPboa/cNOSUnZg/eXep097w5KuMcZFtP9sg8fAIZJ8PVl+lZRbxMpA7aHQwpWqHvKcnhpxZNdjlpL5YYu470py894XN8PM037HA/rz6IkAcGOQsHgy+uR4KgZ0B0mPZXxFXxCeYVgbGkXSItQasoMhEvyE+QAc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM4PR0501MB2785.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(346002)(136003)(39830400003)(376002)(66556008)(8676002)(66946007)(66476007)(30864003)(2906002)(44832011)(5660300002)(1076003)(83380400001)(55016002)(8936002)(86362001)(9686003)(508600001)(966005)(316002)(16526019)(6506007)(6916009)(186003)(26005)(45080400002)(956004)(52116002)(7696005)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: I5d27gYsWZXdFiusXWiZlyzhEcznbWLc7fEHn2dV2U1gxheallElKG7hs9OUjIMoXyo/KDKgy2+aK/D2jb618kDqGN0Mezmn2ZHG2+mt64ilE4IZ71Ve9HwkQAxvz5KcM9jMcLvyDIVXK7oWFwmcZIKmCz3Bp0gv2cWNBWzFZHs262cotuZfsMVD3Dh6KRQKmq6S+ymPBHdY4Xa3YnSJBDJeQHs3CIdgprp9x4tlisEVChFzc1zOlqjRDor/xjuLNSmE7hGm90w3G30t+WZrsQxvPXc02XDDFH/PPMLjN984CN2PJNziABSe52Fao/te90QSGB5tCFbIi/AQ//yG69v2q3NWF/DkyphpcQtqODJPVpAXP6NzAlGPyWtkTS/ZqB3t+cQ9uszMS5MA7xfpyW/t2bc9r37+HzXQ8YFprwNWK8DaYgBuz8D7gJO27gbhRZXaN1yGuKpiE1ZO4Ag0k0Kh4OSbN5OLDv61crhnuuc=
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aa8e73f-a9f5-4352-8da2-08d8231f310d
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0501MB2785.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2020 09:13:35.5591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SC/WoOBtIRYvUY4EYdMwewE7K7+KWKf48lbpfZByQ/aNRWtkcmqjlohieMRZ49iQBPvTgZHtNxg7GbmuLXsqZ6anz0eTVN7JhrKZR/8JbdQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR05MB3281
Subject: Re: [Intel-wired-lan] [next-queue v3] igb: add XDP support
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

On Mon, Jun 29, 2020 at 06:42:54AM +0200, Sven Auhagen wrote:
> From: Sven Auhagen <sven.auhagen@voleatech.de>
> 
> Add XDP support to the IGB driver.
> The implementation follows the IXGBE XDP implementation
> closely and I used the following patches as basis:
> 
> 1. commit 924708081629 ("ixgbe: add XDP support for pass and drop actions")
> 2. commit 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
> 3. commit ed93a3987128 ("ixgbe: tweak page counting for XDP_REDIRECT")
> 
> Due to the hardware constraints of the devices using the
> IGB driver we must share the TX queues with XDP which
> means locking the TX queue also for non XDP cases.
> This comes with a small penalty ~5% in my tests.
> 
> I ran tests on an older device to get better numbers.
> Test machine:
> 
> Intel(R) Atom(TM) CPU C2338 @ 1.74GHz (2 Cores)
> 2x Intel I211
> 
> Routing Original Driver Network Stack: 382 Kpps
> Routing XDP Driver Network Stack: 364 Kpps
> 
> Routing XDP Redirect (xdp_fwd_kern): 1.48 Mpps
> XDP Drop: 1.48 Mpps
> 
> Using XDP we can achieve line rate forwarding even on
> on older Intel Atom CPU.
> 
> Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
> Reported-by: kernel test robot <lkp@intel.com>
> ---
> 
> v3: igb_xdp_ring_update_tail should be static
> 
> v2: original did not apply to my dev-queue branch, so fixed the
>     conflicts in the patch
> 
>  drivers/net/ethernet/intel/igb/igb.h         |  84 +++-
>  drivers/net/ethernet/intel/igb/igb_ethtool.c |   8 +-
>  drivers/net/ethernet/intel/igb/igb_main.c    | 466 +++++++++++++++++--
>  3 files changed, 510 insertions(+), 48 deletions(-)
> 
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -19,6 +19,8 @@
>  #include <linux/pci.h>
>  #include <linux/mdio.h>
>  
> +#include <net/xdp.h>
> +
>  struct igb_adapter;
>  
>  #define E1000_PCS_CFG_IGN_SD	1
> @@ -79,6 +81,12 @@ struct igb_adapter;
>  #define IGB_I210_RX_LATENCY_100		2213
>  #define IGB_I210_RX_LATENCY_1000	448
>  
> +/* XDP */
> +#define IGB_XDP_PASS		0
> +#define IGB_XDP_CONSUMED	BIT(0)
> +#define IGB_XDP_TX		BIT(1)
> +#define IGB_XDP_REDIR		BIT(2)
> +
>  struct vf_data_storage {
>  	unsigned char vf_mac_addresses[ETH_ALEN];
>  	u16 vf_mc_hashes[IGB_MAX_VF_MC_ENTRIES];
> @@ -132,17 +140,62 @@ struct vf_mac_filter {
>  
>  /* Supported Rx Buffer Sizes */
>  #define IGB_RXBUFFER_256	256
> +#define IGB_RXBUFFER_1536	1536
>  #define IGB_RXBUFFER_2048	2048
>  #define IGB_RXBUFFER_3072	3072
>  #define IGB_RX_HDR_LEN		IGB_RXBUFFER_256
>  #define IGB_TS_HDR_LEN		16
>  
> -#define IGB_SKB_PAD		(NET_SKB_PAD + NET_IP_ALIGN)
> +/* Attempt to maximize the headroom available for incoming frames.  We
> + * use a 2K buffer for receives and need 1536/1534 to store the data for
> + * the frame.  This leaves us with 512 bytes of room.  From that we need
> + * to deduct the space needed for the shared info and the padding needed
> + * to IP align the frame.
> + *
> + * Note: For cache line sizes 256 or larger this value is going to end
> + *	 up negative.  In these cases we should fall back to the 3K
> + *	 buffers.
> + */
>  #if (PAGE_SIZE < 8192)
> -#define IGB_MAX_FRAME_BUILD_SKB \
> -	(SKB_WITH_OVERHEAD(IGB_RXBUFFER_2048) - IGB_SKB_PAD - IGB_TS_HDR_LEN)
> +#define IGB_MAX_2K_FRAME_BUILD_SKB (IGB_RXBUFFER_1536 - NET_IP_ALIGN)
> +#define IGB_2K_TOO_SMALL_WITH_PADDING \
> +((NET_SKB_PAD + IGB_RXBUFFER_1536) > SKB_WITH_OVERHEAD(IGB_RXBUFFER_2048))
> +
> +static inline int igb_compute_pad(int rx_buf_len)
> +{
> +	int page_size, pad_size;
> +
> +	page_size = ALIGN(rx_buf_len, PAGE_SIZE / 2);
> +	pad_size = SKB_WITH_OVERHEAD(page_size) - rx_buf_len;
> +
> +	return pad_size;
> +}
> +
> +static inline int igb_skb_pad(void)
> +{
> +	int rx_buf_len;
> +
> +	/* If a 2K buffer cannot handle a standard Ethernet frame then
> +	 * optimize padding for a 3K buffer instead of a 1.5K buffer.
> +	 *
> +	 * For a 3K buffer we need to add enough padding to allow for
> +	 * tailroom due to NET_IP_ALIGN possibly shifting us out of
> +	 * cache-line alignment.
> +	 */
> +	if (IGB_2K_TOO_SMALL_WITH_PADDING)
> +		rx_buf_len = IGB_RXBUFFER_3072 + SKB_DATA_ALIGN(NET_IP_ALIGN);
> +	else
> +		rx_buf_len = IGB_RXBUFFER_1536;
> +
> +	/* if needed make room for NET_IP_ALIGN */
> +	rx_buf_len -= NET_IP_ALIGN;
> +
> +	return igb_compute_pad(rx_buf_len);
> +}
> +
> +#define IGB_SKB_PAD	igb_skb_pad()
>  #else
> -#define IGB_MAX_FRAME_BUILD_SKB (IGB_RXBUFFER_2048 - IGB_TS_HDR_LEN)
> +#define IGB_SKB_PAD	(NET_SKB_PAD + NET_IP_ALIGN)
>  #endif
>  
>  /* How many Rx Buffers do we bundle into one write to the hardware ? */
> @@ -194,13 +247,22 @@ enum igb_tx_flags {
>  #define IGB_SFF_ADDRESSING_MODE		0x4
>  #define IGB_SFF_8472_UNSUP		0x00
>  
> +enum igb_tx_buf_type {
> +	IGB_TYPE_SKB = 0,
> +	IGB_TYPE_XDP,
> +};
> +
>  /* wrapper around a pointer to a socket buffer,
>   * so a DMA handle can be stored along with the buffer
>   */
>  struct igb_tx_buffer {
>  	union e1000_adv_tx_desc *next_to_watch;
>  	unsigned long time_stamp;
> -	struct sk_buff *skb;
> +	enum igb_tx_buf_type type;
> +	union {
> +		struct sk_buff *skb;
> +		struct xdp_frame *xdpf;
> +	};
>  	unsigned int bytecount;
>  	u16 gso_segs;
>  	__be16 protocol;
> @@ -248,6 +310,7 @@ struct igb_ring_container {
>  struct igb_ring {
>  	struct igb_q_vector *q_vector;	/* backlink to q_vector */
>  	struct net_device *netdev;	/* back pointer to net_device */
> +	struct bpf_prog *xdp_prog;
>  	struct device *dev;		/* device pointer for dma mapping */
>  	union {				/* array of buffer info structs */
>  		struct igb_tx_buffer *tx_buffer_info;
> @@ -288,6 +351,9 @@ struct igb_ring {
>  			struct u64_stats_sync rx_syncp;
>  		};
>  	};
> +	/* lock for TX */
> +	spinlock_t tx_lock;
> +	struct xdp_rxq_info xdp_rxq;
>  } ____cacheline_internodealigned_in_smp;
>  
>  struct igb_q_vector {
> @@ -339,7 +405,7 @@ static inline unsigned int igb_rx_bufsz(struct igb_ring *ring)
>  		return IGB_RXBUFFER_3072;
>  
>  	if (ring_uses_build_skb(ring))
> -		return IGB_MAX_FRAME_BUILD_SKB + IGB_TS_HDR_LEN;
> +		return IGB_MAX_2K_FRAME_BUILD_SKB;
>  #endif
>  	return IGB_RXBUFFER_2048;
>  }
> @@ -467,6 +533,7 @@ struct igb_adapter {
>  	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
>  
>  	struct net_device *netdev;
> +	struct bpf_prog *xdp_prog;
>  
>  	unsigned long state;
>  	unsigned int flags;
> @@ -643,6 +710,9 @@ enum igb_boards {
>  
>  extern char igb_driver_name[];
>  
> +int igb_xmit_xdp_ring(struct igb_adapter *adapter,
> +		      struct igb_ring *ring,
> +		      struct xdp_frame *xdpf);
>  int igb_open(struct net_device *netdev);
>  int igb_close(struct net_device *netdev);
>  int igb_up(struct igb_adapter *);
> @@ -653,7 +723,7 @@ int igb_reinit_queues(struct igb_adapter *);
>  void igb_write_rss_indir_tbl(struct igb_adapter *);
>  int igb_set_spd_dplx(struct igb_adapter *, u32, u8);
>  int igb_setup_tx_resources(struct igb_ring *);
> -int igb_setup_rx_resources(struct igb_ring *);
> +int igb_setup_rx_resources(struct igb_ring *, struct igb_adapter *);
>  void igb_free_tx_resources(struct igb_ring *);
>  void igb_free_rx_resources(struct igb_ring *);
>  void igb_configure_tx_ring(struct igb_adapter *, struct igb_ring *);
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index c2cf414d126b..66c3086ed475 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -961,8 +961,12 @@ static int igb_set_ringparam(struct net_device *netdev,
>  			memcpy(&temp_ring[i], adapter->rx_ring[i],
>  			       sizeof(struct igb_ring));
>  
> +			/* Clear copied XDP RX-queue info */
> +			memset(&temp_ring[i].xdp_rxq, 0,
> +			       sizeof(temp_ring[i].xdp_rxq));
> +
>  			temp_ring[i].count = new_rx_count;
> -			err = igb_setup_rx_resources(&temp_ring[i]);
> +			err = igb_setup_rx_resources(&temp_ring[i], adapter);
>  			if (err) {
>  				while (i) {
>  					i--;
> @@ -1577,7 +1581,7 @@ static int igb_setup_desc_rings(struct igb_adapter *adapter)
>  	rx_ring->netdev = adapter->netdev;
>  	rx_ring->reg_idx = adapter->vfs_allocated_count;
>  
> -	if (igb_setup_rx_resources(rx_ring)) {
> +	if (igb_setup_rx_resources(rx_ring, adapter)) {
>  		ret_val = 3;
>  		goto err_nomem;
>  	}
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index ae8d64324619..e003245effae 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -30,6 +30,8 @@
>  #include <linux/if_ether.h>
>  #include <linux/aer.h>
>  #include <linux/prefetch.h>
> +#include <linux/bpf.h>
> +#include <linux/bpf_trace.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/etherdevice.h>
>  #ifdef CONFIG_IGB_DCA
> @@ -2825,6 +2827,147 @@ static int igb_setup_tc(struct net_device *dev, enum tc_setup_type type,
>  	}
>  }
>  
> +static int igb_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
> +{
> +	int i, frame_size = dev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
> +	struct igb_adapter *adapter = netdev_priv(dev);
> +	struct bpf_prog *old_prog;
> +	bool running = netif_running(dev);
> +	bool need_reset;
> +
> +	/* verify igb ring attributes are sufficient for XDP */
> +	for (i = 0; i < adapter->num_rx_queues; i++) {
> +		struct igb_ring *ring = adapter->rx_ring[i];
> +
> +		if (frame_size > igb_rx_bufsz(ring))
> +			return -EINVAL;
> +	}
> +
> +	old_prog = xchg(&adapter->xdp_prog, prog);
> +	need_reset = (!!prog != !!old_prog);
> +
> +	/* device is up and bpf is added/removed, must setup the RX queues */
> +	if (need_reset && running) {
> +		igb_close(dev);
> +	} else {
> +		for (i = 0; i < adapter->num_rx_queues; i++)
> +			(void)xchg(&adapter->rx_ring[i]->xdp_prog,
> +			    adapter->xdp_prog);
> +	}
> +
> +	if (old_prog)
> +		bpf_prog_put(old_prog);
> +
> +	/* bpf is just replaced, RXQ and MTU are already setup */
> +	if (!need_reset)
> +		return 0;
> +
> +	if (running)
> +		igb_open(dev);
> +
> +	return 0;
> +}
> +
> +static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
> +{
> +	struct igb_adapter *adapter = netdev_priv(dev);
> +
> +	switch (xdp->command) {
> +	case XDP_SETUP_PROG:
> +		return igb_xdp_setup(dev, xdp->prog);
> +	case XDP_QUERY_PROG:
> +		xdp->prog_id = adapter->xdp_prog ?
> +			adapter->xdp_prog->aux->id : 0;
> +		return 0;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static void igb_xdp_ring_update_tail(struct igb_ring *ring)
> +{
> +	/* Force memory writes to complete before letting h/w know there
> +	 * are new descriptors to fetch.
> +	 */
> +	wmb();
> +	writel(ring->next_to_use, ring->tail);
> +}
> +
> +static inline struct igb_ring *igb_xdp_tx_queue_mapping(struct igb_adapter *adapter)
> +{
> +	unsigned int r_idx = smp_processor_id();
> +
> +	if (r_idx >= adapter->num_tx_queues)
> +		r_idx = r_idx % adapter->num_tx_queues;
> +
> +	return adapter->tx_ring[r_idx];
> +}
> +
> +static int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
> +{
> +	struct igb_ring *tx_ring;
> +	struct xdp_frame *xdpf = xdp_convert_buff_to_frame(xdp);
> +	u32 ret;
> +
> +	if (unlikely(!xdpf))
> +		return IGB_XDP_CONSUMED;
> +
> +	/* During program transitions its possible adapter->xdp_prog is assigned
> +	 * but ring has not been configured yet. In this case simply abort xmit.
> +	 */
> +	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
> +	if (unlikely(!tx_ring))
> +		return -ENXIO;
> +
> +	spin_lock(&tx_ring->tx_lock);
> +	ret = igb_xmit_xdp_ring(adapter, tx_ring, xdpf);
> +	spin_unlock(&tx_ring->tx_lock);
> +
> +	return ret;
> +}
> +
> +static int igb_xdp_xmit(struct net_device *dev, int n,
> +			struct xdp_frame **frames, u32 flags)
> +{
> +	struct igb_adapter *adapter = netdev_priv(dev);
> +	struct igb_ring *tx_ring;
> +	int drops = 0;
> +	int i;
> +
> +	if (unlikely(test_bit(__IGB_DOWN, &adapter->state)))
> +		return -ENETDOWN;
> +
> +	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
> +		return -EINVAL;
> +
> +	/* During program transitions its possible adapter->xdp_prog is assigned
> +	 * but ring has not been configured yet. In this case simply abort xmit.
> +	 */
> +	tx_ring = adapter->xdp_prog ? igb_xdp_tx_queue_mapping(adapter) : NULL;
> +	if (unlikely(!tx_ring))
> +		return -ENXIO;
> +
> +	spin_lock(&tx_ring->tx_lock);
> +
> +	for (i = 0; i < n; i++) {
> +		struct xdp_frame *xdpf = frames[i];
> +		int err;
> +
> +		err = igb_xmit_xdp_ring(adapter, tx_ring, xdpf);
> +		if (err != IGB_XDP_TX) {
> +			xdp_return_frame_rx_napi(xdpf);
> +			drops++;
> +		}
> +	}
> +
> +	spin_unlock(&tx_ring->tx_lock);
> +
> +	if (unlikely(flags & XDP_XMIT_FLUSH))
> +		igb_xdp_ring_update_tail(tx_ring);
> +
> +	return n - drops;
> +}
> +
>  static const struct net_device_ops igb_netdev_ops = {
>  	.ndo_open		= igb_open,
>  	.ndo_stop		= igb_close,
> @@ -2849,6 +2992,8 @@ static const struct net_device_ops igb_netdev_ops = {
>  	.ndo_fdb_add		= igb_ndo_fdb_add,
>  	.ndo_features_check	= igb_features_check,
>  	.ndo_setup_tc		= igb_setup_tc,
> +	.ndo_bpf		= igb_xdp,
> +	.ndo_xdp_xmit		= igb_xdp_xmit,
>  };
>  
>  /**
> @@ -4051,6 +4196,8 @@ int igb_setup_tx_resources(struct igb_ring *tx_ring)
>  	tx_ring->next_to_use = 0;
>  	tx_ring->next_to_clean = 0;
>  
> +	spin_lock_init(&tx_ring->tx_lock);
> +
>  	return 0;
>  
>  err:
> @@ -4177,7 +4324,7 @@ static void igb_configure_tx(struct igb_adapter *adapter)
>   *
>   *  Returns 0 on success, negative on failure
>   **/
> -int igb_setup_rx_resources(struct igb_ring *rx_ring)
> +int igb_setup_rx_resources(struct igb_ring *rx_ring, struct igb_adapter *adapter)
>  {
>  	struct device *dev = rx_ring->dev;
>  	int size;
> @@ -4201,6 +4348,13 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
>  	rx_ring->next_to_clean = 0;
>  	rx_ring->next_to_use = 0;
>  
> +	rx_ring->xdp_prog = adapter->xdp_prog;
> +
> +	/* XDP RX-queue info */
> +	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
> +			     rx_ring->queue_index) < 0)
> +		goto err;
> +
>  	return 0;
>  
>  err:
> @@ -4223,7 +4377,7 @@ static int igb_setup_all_rx_resources(struct igb_adapter *adapter)
>  	int i, err = 0;
>  
>  	for (i = 0; i < adapter->num_rx_queues; i++) {
> -		err = igb_setup_rx_resources(adapter->rx_ring[i]);
> +		err = igb_setup_rx_resources(adapter->rx_ring[i], adapter);
>  		if (err) {
>  			dev_err(&pdev->dev,
>  				"Allocation for Rx Queue %u failed\n", i);
> @@ -4505,6 +4659,10 @@ void igb_configure_rx_ring(struct igb_adapter *adapter,
>  	int reg_idx = ring->reg_idx;
>  	u32 rxdctl = 0;
>  
> +	xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
> +	WARN_ON(xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> +					   MEM_TYPE_PAGE_SHARED, NULL));
> +
>  	/* disable the queue */
>  	wr32(E1000_RXDCTL(reg_idx), 0);
>  
> @@ -4556,7 +4714,7 @@ static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
>  	set_ring_build_skb_enabled(rx_ring);
>  
>  #if (PAGE_SIZE < 8192)
> -	if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
> +	if (adapter->max_frame_size <= IGB_MAX_2K_FRAME_BUILD_SKB)
>  		return;
>  
>  	set_ring_uses_large_buffer(rx_ring);
> @@ -4709,6 +4867,8 @@ void igb_free_rx_resources(struct igb_ring *rx_ring)
>  {
>  	igb_clean_rx_ring(rx_ring);
>  
> +	rx_ring->xdp_prog = NULL;
> +	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
>  	vfree(rx_ring->rx_buffer_info);
>  	rx_ring->rx_buffer_info = NULL;
>  
> @@ -5054,8 +5214,8 @@ static void igb_set_rx_mode(struct net_device *netdev)
>  
>  #if (PAGE_SIZE < 8192)
>  	if (!adapter->vfs_allocated_count) {
> -		if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
> -			rlpml = IGB_MAX_FRAME_BUILD_SKB;
> +		if (adapter->max_frame_size <= IGB_MAX_2K_FRAME_BUILD_SKB)
> +			rlpml = IGB_MAX_2K_FRAME_BUILD_SKB;
>  	}
>  #endif
>  	wr32(E1000_RLPML, rlpml);
> @@ -5077,8 +5237,8 @@ static void igb_set_rx_mode(struct net_device *netdev)
>  	/* enable Rx jumbo frames, restrict as needed to support build_skb */
>  	vmolr &= ~E1000_VMOLR_RLPML_MASK;
>  #if (PAGE_SIZE < 8192)
> -	if (adapter->max_frame_size <= IGB_MAX_FRAME_BUILD_SKB)
> -		vmolr |= IGB_MAX_FRAME_BUILD_SKB;
> +	if (adapter->max_frame_size <= IGB_MAX_2K_FRAME_BUILD_SKB)
> +		vmolr |= IGB_MAX_2K_FRAME_BUILD_SKB;
>  	else
>  #endif
>  		vmolr |= MAX_JUMBO_FRAME_SIZE;
> @@ -6078,6 +6238,80 @@ static int igb_tx_map(struct igb_ring *tx_ring,
>  	return -1;
>  }
>  
> +int igb_xmit_xdp_ring(struct igb_adapter *adapter,
> +		      struct igb_ring *tx_ring,
> +		      struct xdp_frame *xdpf)
> +{
> +	struct igb_tx_buffer *tx_buffer;
> +	union e1000_adv_tx_desc *tx_desc;
> +	u32 len, cmd_type, olinfo_status;
> +	dma_addr_t dma;
> +	u16 i;
> +
> +	len = xdpf->len;
> +
> +	if (unlikely(!igb_desc_unused(tx_ring)))
> +		return IGB_XDP_CONSUMED;
> +
> +	dma = dma_map_single(tx_ring->dev, xdpf->data, len, DMA_TO_DEVICE);
> +	if (dma_mapping_error(tx_ring->dev, dma))
> +		return IGB_XDP_CONSUMED;
> +
> +	/* record the location of the first descriptor for this packet */
> +	tx_buffer = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
> +	tx_buffer->bytecount = len;
> +	tx_buffer->gso_segs = 1;
> +	tx_buffer->protocol = 0;
> +
> +	i = tx_ring->next_to_use;
> +	tx_desc = IGB_TX_DESC(tx_ring, i);
> +
> +	dma_unmap_len_set(tx_buffer, len, len);
> +	dma_unmap_addr_set(tx_buffer, dma, dma);
> +	tx_buffer->type = IGB_TYPE_XDP;
> +	tx_buffer->xdpf = xdpf;
> +
> +	tx_desc->read.buffer_addr = cpu_to_le64(dma);
> +
> +	/* put descriptor type bits */
> +	cmd_type = E1000_ADVTXD_DTYP_DATA |
> +		   E1000_ADVTXD_DCMD_DEXT |
> +		   E1000_ADVTXD_DCMD_IFCS;
> +	cmd_type |= len | IGB_TXD_DCMD;
> +	tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> +
> +	olinfo_status = cpu_to_le32(len << E1000_ADVTXD_PAYLEN_SHIFT);
> +	/* 82575 requires a unique index per ring */
> +	if (test_bit(IGB_RING_FLAG_TX_CTX_IDX, &tx_ring->flags))
> +		olinfo_status |= tx_ring->reg_idx << 4;
> +
> +	tx_desc->read.olinfo_status = olinfo_status;
> +
> +	netdev_tx_sent_queue(txring_txq(tx_ring), tx_buffer->bytecount);
> +
> +	/* set the timestamp */
> +	tx_buffer->time_stamp = jiffies;
> +
> +	/* Avoid any potential race with xdp_xmit and cleanup */
> +	smp_wmb();
> +
> +	/* set next_to_watch value indicating a packet is present */
> +	i++;
> +	if (i == tx_ring->count)
> +		i = 0;
> +
> +	tx_buffer->next_to_watch = tx_desc;
> +	tx_ring->next_to_use = i;
> +
> +	/* Make sure there is space in the ring for the next send. */
> +	igb_maybe_stop_tx(tx_ring, DESC_NEEDED);
> +
> +	if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())
> +		writel(i, tx_ring->tail);
> +
> +	return IGB_XDP_TX;
> +}
> +
>  netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
>  				struct igb_ring *tx_ring)
>  {
> @@ -6089,6 +6323,8 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
>  	__be16 protocol = vlan_get_protocol(skb);
>  	u8 hdr_len = 0;
>  
> +	spin_lock_bh(&tx_ring->tx_lock);
> +

Hi,

I am looking for some feedback.
The test robot returned the following error:

kern  :warn  : [  107.048722] ------------[ cut here ]------------
kern  :warn  : [  107.048722] WARNING: CPU: 14 PID: 379 at kernel/softirq.c:168 __local_bh_enable_ip+0x35/0x50
kern  :warn  : [  107.048724] Modules linked in: snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hda_core snd_hwdep i915 video netconsole btrfs blake2b_generic xor zstd_decompress zstd_compress raid6_pq libcrc32c sd_mod t10_pi sg intel_rapl_msr intel_rapl_common sb_edac x86_pkg_temp_thermal intel_powerclamp coretemp mxm_wmi kvm_intel ipmi_ssif kvm ast drm_vram_helper drm_ttm_helper ttm irqbypass snd_pcm drm_kms_helper ahci snd_timer syscopyarea crct10dif_pclmul sysfillrect crc32_pclmul sysimgblt crc32c_intel fb_sys_fops ghash_clmulni_intel libahci snd aesni_intel mei_me acpi_ipmi crypto_simd ioatdma soundcore cryptd libata glue_helper pcspkr gpio_ich mei joydev ipmi_si drm dca ipmi_devintf ipmi_msghandler wmi acpi_pad ip_tables
kern  :warn  : [  107.048738] CPU: 14 PID: 379 Comm: in:imklog Not tainted 5.8.0-rc2-00674-gecc216aee233b6 #1
kern  :warn  : [  107.048738] Hardware name: Supermicro SYS-5018D-FN4T/X10SDV-8C-TLN4F, BIOS 1.1 03/02/2016
kern  :warn  : [  107.048738] RIP: 0010:__local_bh_enable_ip+0x35/0x50
kern  :warn  : [  107.048739] Code: 7e a9 00 00 0f 00 75 22 83 ee 01 f7 de 65 01 35 91 fe f6 7e 65 8b 05 8a fe f6 7e a9 00 ff ff 00 74 0c 65 ff 0d 7c fe f6 7e c3 <0f> 0b eb da 65 66 8b 05 ef 39 f8 7e 66 85 c0 74 e7 e8 65 ff ff ff
kern  :warn  : [  107.048739] RSP: 0018:ffffc90000388e00 EFLAGS: 00010006
kern  :warn  : [  107.048740] RAX: 0000000080010205 RBX: ffff888c7fd3b240 RCX: 000000000000f2e2
kern  :warn  : [  107.048740] RDX: ffff888c7cc64000 RSI: 0000000000000201 RDI: ffffffff8170aa14
kern  :warn  : [  107.048741] RBP: 0000000000000080 R08: ffffffffffffffff R09: 0000000000000000
kern  :warn  : [  107.048741] R10: 000000002b300058 R11: ffff888c7df4c300 R12: ffff888c7c98f7f0
kern  :warn  : [  107.048741] R13: 0000000000000000 R14: ffff888c7fd3b2e0 R15: ffffc9000060abc8
kern  :warn  : [  107.048742] FS:  00007f95c1409700(0000) GS:ffff888c7fd80000(0000) knlGS:0000000000000000
kern  :warn  : [  107.048742] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
kern  :warn  : [  107.048742] CR2: 00007f308d6ba420 CR3: 0000000c79c58004 CR4: 00000000003606e0
kern  :warn  : [  107.048744] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
kern  :warn  : [  107.048744] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
kern  :warn  : [  107.048744] Call Trace:
kern  :warn  : [  107.048744]  <IRQ>
kern  :warn  : [  107.048745]  igb_xmit_frame_ring+0x6d4/0xcb0
kern  :warn  : [  107.048745]  netpoll_start_xmit+0x108/0x1a0
kern  :warn  : [  107.048745]  netpoll_send_skb+0x166/0x270
kern  :warn  : [  107.048745]  write_msg+0xe6/0x100 [netconsole]
kern  :warn  : [  107.048746]  console_unlock+0x37e/0x520
kern  :warn  : [  107.048746]  wake_up_klogd_work_func+0x3b/0x60
kern  :warn  : [  107.048746]  irq_work_single+0x2c/0x40
kern  :warn  : [  107.048746]  irq_work_run_list+0x2d/0x40
kern  :warn  : [  107.048747]  __sysvec_irq_work+0x2d/0xd0
kern  :warn  : [  107.048747]  asm_call_on_stack+0x12/0x20
kern  :warn  : [  107.048747]  </IRQ>
kern  :warn  : [  107.048747]  sysvec_irq_work+0x74/0x80
kern  :warn  : [  107.048748]  asm_sysvec_irq_work+0x12/0x20
kern  :warn  : [  107.048748] RIP: 0010:finish_task_switch+0x83/0x2a0
kern  :warn  : [  107.048749] Code: 8b 1c 25 c0 7b 01 00 0f 1f 44 00 00 0f 1f 44 00 00 41 c7 45 3c 00 00 00 00 4c 89 e7 c6 07 00 0f 1f 40 00 fb 66 0f 1f 44 00 00 <65> ff 0d c6 40 f4 7e 65 48 8b 04 25 c0 7b 01 00 0f 1f 44 00 00 4d
kern  :warn  : [  107.048749] RSP: 0018:ffffc900006e3d70 EFLAGS: 00000246
kern  :warn  : [  107.048750] RAX: ffff888bcfd2cd80 RBX: ffff888bcfc64d80 RCX: 0000000000000002
kern  :warn  : [  107.048750] RDX: 0000000000000000 RSI: 00000000c1409700 RDI: ffff888c7fdabf00
kern  :warn  : [  107.048751] RBP: ffffc900006e3d98 R08: 0000000000000001 R09: 0000000000000000
kern  :warn  : [  107.048751] R10: ffff888c774cba10 R11: ffff888c7fdabfb0 R12: ffff888c7fdabf00
kern  :warn  : [  107.048751] R13: ffff888bcfd2cd80 R14: ffff888106f06600 R15: 0000000000000402
kern  :warn  : [  107.048752]  __schedule+0x2da/0x7b0
kern  :warn  : [  107.048752]  ? msg_print_text+0x104/0x260
kern  :warn  : [  107.048752]  schedule+0x6e/0xf0
kern  :warn  : [  107.048752]  do_syslog+0x8a3/0x9a0
kern  :warn  : [  107.048753]  ? finish_wait+0x90/0x90
kern  :warn  : [  107.048753]  kmsg_read+0x3e/0x50
kern  :warn  : [  107.048753]  vfs_read+0xc2/0x180
kern  :warn  : [  107.048753]  ksys_read+0x5f/0xe0
kern  :warn  : [  107.048753]  do_syscall_64+0x4d/0x90
kern  :warn  : [  107.048754]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
kern  :warn  : [  107.048754] RIP: 0033:0x7f95c294aeac
kern  :warn  : [  107.048754] Code: Bad RIP value.
kern  :warn  : [  107.048754] RSP: 002b:00007f95c13e8540 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
kern  :warn  : [  107.048755] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f95c294aeac
kern  :warn  : [  107.048755] RDX: 0000000000001fa0 RSI: 00007f95c13e8d80 RDI: 0000000000000004
kern  :warn  : [  107.048756] RBP: 000055c0140d9200 R08: 0000000000000000 R09: 000055c0140d57a8
kern  :warn  : [  107.048756] R10: 0000000000000000 R11: 0000000000000246 R12: 00007f95c13e8d80
kern  :warn  : [  107.048756] R13: 0000000000001fa0 R14: 0000000000001f9f R15: 00007f95c13e8dd5
kern  :warn  : [  107.048757] ---[ end trace 69bf761e0b101498 ]---

Is it sufficient to change the spin_lock_bh to spin_lock_irqsave in the igb_xmit_frame_ring function
and keep the normal spin_lock in the xdp_xmit function?

Any help is appreciated.

Best
Sven

>  	/* need: 1 descriptor per page * PAGE_SIZE/IGB_MAX_DATA_PER_TXD,
>  	 *       + 1 desc for skb_headlen/IGB_MAX_DATA_PER_TXD,
>  	 *       + 2 desc gap to keep tail from touching head,
> @@ -6101,11 +6337,13 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
>  
>  	if (igb_maybe_stop_tx(tx_ring, count + 3)) {
>  		/* this is a hard error */
> +		spin_unlock_bh(&tx_ring->tx_lock);
>  		return NETDEV_TX_BUSY;
>  	}
>  
>  	/* record the location of the first descriptor for this packet */
>  	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
> +	first->type = IGB_TYPE_SKB;
>  	first->skb = skb;
>  	first->bytecount = skb->len;
>  	first->gso_segs = 1;
> @@ -6146,6 +6384,8 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
>  	if (igb_tx_map(tx_ring, first, hdr_len))
>  		goto cleanup_tx_tstamp;
>  
> +	spin_unlock_bh(&tx_ring->tx_lock);
> +
>  	return NETDEV_TX_OK;
>  
>  out_drop:
> @@ -6162,6 +6402,8 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
>  		clear_bit_unlock(__IGB_PTP_TX_IN_PROGRESS, &adapter->state);
>  	}
>  
> +	spin_unlock_bh(&tx_ring->tx_lock);
> +
>  	return NETDEV_TX_OK;
>  }
>  
> @@ -6248,6 +6490,21 @@ static int igb_change_mtu(struct net_device *netdev, int new_mtu)
>  	struct igb_adapter *adapter = netdev_priv(netdev);
>  	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
>  
> +	if (adapter->xdp_prog) {
> +		int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
> +				     VLAN_HLEN;
> +		int i;
> +
> +		for (i = 0; i < adapter->num_rx_queues; i++) {
> +			struct igb_ring *ring = adapter->rx_ring[i];
> +
> +			if (new_frame_size > igb_rx_bufsz(ring)) {
> +				netdev_warn(adapter->netdev, "Requested MTU size is not supported with XDP\n");
> +				return -EINVAL;
> +			}
> +		}
> +	}
> +
>  	/* adjust max frame to be at least the size of a standard frame */
>  	if (max_frame < (ETH_FRAME_LEN + ETH_FCS_LEN))
>  		max_frame = ETH_FRAME_LEN + ETH_FCS_LEN;
> @@ -7775,6 +8032,8 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
>  	if (test_bit(__IGB_DOWN, &adapter->state))
>  		return true;
>  
> +	spin_lock(&tx_ring->tx_lock);
> +
>  	tx_buffer = &tx_ring->tx_buffer_info[i];
>  	tx_desc = IGB_TX_DESC(tx_ring, i);
>  	i -= tx_ring->count;
> @@ -7801,7 +8060,10 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
>  		total_packets += tx_buffer->gso_segs;
>  
>  		/* free the skb */
> -		napi_consume_skb(tx_buffer->skb, napi_budget);
> +		if (tx_buffer->type == IGB_TYPE_XDP)
> +			xdp_return_frame(tx_buffer->xdpf);
> +		else
> +			napi_consume_skb(tx_buffer->skb, napi_budget);
>  
>  		/* unmap skb header data */
>  		dma_unmap_single(tx_ring->dev,
> @@ -7854,6 +8116,9 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
>  				  total_packets, total_bytes);
>  	i += tx_ring->count;
>  	tx_ring->next_to_clean = i;
> +
> +	spin_unlock(&tx_ring->tx_lock);
> +
>  	u64_stats_update_begin(&tx_ring->tx_syncp);
>  	tx_ring->tx_stats.bytes += total_bytes;
>  	tx_ring->tx_stats.packets += total_packets;
> @@ -7985,8 +8250,8 @@ static bool igb_can_reuse_rx_page(struct igb_rx_buffer *rx_buffer)
>  	 * the pagecnt_bias and page count so that we fully restock the
>  	 * number of references the driver holds.
>  	 */
> -	if (unlikely(!pagecnt_bias)) {
> -		page_ref_add(page, USHRT_MAX);
> +	if (unlikely(pagecnt_bias == 1)) {
> +		page_ref_add(page, USHRT_MAX - 1);
>  		rx_buffer->pagecnt_bias = USHRT_MAX;
>  	}
>  
> @@ -8025,22 +8290,23 @@ static void igb_add_rx_frag(struct igb_ring *rx_ring,
>  
>  static struct sk_buff *igb_construct_skb(struct igb_ring *rx_ring,
>  					 struct igb_rx_buffer *rx_buffer,
> -					 union e1000_adv_rx_desc *rx_desc,
> -					 unsigned int size)
> +					 struct xdp_buff *xdp,
> +					 union e1000_adv_rx_desc *rx_desc)
>  {
> -	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
> +	unsigned int size = xdp->data_end - xdp->data;
>  #if (PAGE_SIZE < 8192)
>  	unsigned int truesize = igb_rx_pg_size(rx_ring) / 2;
>  #else
> -	unsigned int truesize = SKB_DATA_ALIGN(size);
> +	unsigned int truesize = SKB_DATA_ALIGN(xdp->data_end -
> +					       xdp->data_hard_start);
>  #endif
>  	unsigned int headlen;
>  	struct sk_buff *skb;
>  
>  	/* prefetch first cache line of first page */
> -	prefetch(va);
> +	prefetch(xdp->data);
>  #if L1_CACHE_BYTES < 128
> -	prefetch(va + L1_CACHE_BYTES);
> +	prefetch(xdp->data + L1_CACHE_BYTES);
>  #endif
>  
>  	/* allocate a skb to store the frags */
> @@ -8049,24 +8315,24 @@ static struct sk_buff *igb_construct_skb(struct igb_ring *rx_ring,
>  		return NULL;
>  
>  	if (unlikely(igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP))) {
> -		igb_ptp_rx_pktstamp(rx_ring->q_vector, va, skb);
> -		va += IGB_TS_HDR_LEN;
> +		igb_ptp_rx_pktstamp(rx_ring->q_vector, xdp->data, skb);
> +		xdp->data += IGB_TS_HDR_LEN;
>  		size -= IGB_TS_HDR_LEN;
>  	}
>  
>  	/* Determine available headroom for copy */
>  	headlen = size;
>  	if (headlen > IGB_RX_HDR_LEN)
> -		headlen = eth_get_headlen(skb->dev, va, IGB_RX_HDR_LEN);
> +		headlen = eth_get_headlen(skb->dev, xdp->data, IGB_RX_HDR_LEN);
>  
>  	/* align pull length to size of long to optimize memcpy performance */
> -	memcpy(__skb_put(skb, headlen), va, ALIGN(headlen, sizeof(long)));
> +	memcpy(__skb_put(skb, headlen), xdp->data, ALIGN(headlen, sizeof(long)));
>  
>  	/* update all of the pointers */
>  	size -= headlen;
>  	if (size) {
>  		skb_add_rx_frag(skb, 0, rx_buffer->page,
> -				(va + headlen) - page_address(rx_buffer->page),
> +				(xdp->data + headlen) - page_address(rx_buffer->page),
>  				size, truesize);
>  #if (PAGE_SIZE < 8192)
>  		rx_buffer->page_offset ^= truesize;
> @@ -8082,32 +8348,32 @@ static struct sk_buff *igb_construct_skb(struct igb_ring *rx_ring,
>  
>  static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
>  				     struct igb_rx_buffer *rx_buffer,
> -				     union e1000_adv_rx_desc *rx_desc,
> -				     unsigned int size)
> +				     struct xdp_buff *xdp,
> +				     union e1000_adv_rx_desc *rx_desc)
>  {
> -	void *va = page_address(rx_buffer->page) + rx_buffer->page_offset;
>  #if (PAGE_SIZE < 8192)
>  	unsigned int truesize = igb_rx_pg_size(rx_ring) / 2;
>  #else
>  	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
> -				SKB_DATA_ALIGN(IGB_SKB_PAD + size);
> +				SKB_DATA_ALIGN(xdp->data_end -
> +					       xdp->data_hard_start);
>  #endif
>  	struct sk_buff *skb;
>  
>  	/* prefetch first cache line of first page */
> -	prefetch(va);
> +	prefetch(xdp->data_meta);
>  #if L1_CACHE_BYTES < 128
> -	prefetch(va + L1_CACHE_BYTES);
> +	prefetch(xdp->data_meta + L1_CACHE_BYTES);
>  #endif
>  
>  	/* build an skb around the page buffer */
> -	skb = build_skb(va - IGB_SKB_PAD, truesize);
> +	skb = build_skb(xdp->data_hard_start, truesize);
>  	if (unlikely(!skb))
>  		return NULL;
>  
>  	/* update pointers within the skb to store the data */
> -	skb_reserve(skb, IGB_SKB_PAD);
> -	__skb_put(skb, size);
> +	skb_reserve(skb, xdp->data - xdp->data_hard_start);
> +	__skb_put(skb, xdp->data_end - xdp->data);
>  
>  	/* pull timestamp out of packet data */
>  	if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
> @@ -8125,6 +8391,79 @@ static struct sk_buff *igb_build_skb(struct igb_ring *rx_ring,
>  	return skb;
>  }
>  
> +static struct sk_buff *igb_run_xdp(struct igb_adapter *adapter,
> +				   struct igb_ring *rx_ring,
> +				   struct xdp_buff *xdp)
> +{
> +	int err, result = IGB_XDP_PASS;
> +	struct bpf_prog *xdp_prog;
> +	u32 act;
> +
> +	rcu_read_lock();
> +	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
> +
> +	if (!xdp_prog)
> +		goto xdp_out;
> +
> +	prefetchw(xdp->data_hard_start); /* xdp_frame write */
> +
> +	act = bpf_prog_run_xdp(xdp_prog, xdp);
> +	switch (act) {
> +	case XDP_PASS:
> +		break;
> +	case XDP_TX:
> +		result = igb_xdp_xmit_back(adapter, xdp);
> +		break;
> +	case XDP_REDIRECT:
> +		err = xdp_do_redirect(adapter->netdev, xdp, xdp_prog);
> +		if (!err)
> +			result = IGB_XDP_REDIR;
> +		else
> +			result = IGB_XDP_CONSUMED;
> +		break;
> +	default:
> +		bpf_warn_invalid_xdp_action(act);
> +		/* fallthrough */
> +	case XDP_ABORTED:
> +		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
> +		/* fallthrough -- handle aborts by dropping packet */
> +	case XDP_DROP:
> +		result = IGB_XDP_CONSUMED;
> +		break;
> +	}
> +xdp_out:
> +	rcu_read_unlock();
> +	return ERR_PTR(-result);
> +}
> +
> +static unsigned int igb_rx_frame_truesize(struct igb_ring *rx_ring,
> +					  unsigned int size)
> +{
> +	unsigned int truesize;
> +
> +#if (PAGE_SIZE < 8192)
> +	truesize = igb_rx_pg_size(rx_ring) / 2; /* Must be power-of-2 */
> +#else
> +	truesize = ring_uses_build_skb(rx_ring) ?
> +		SKB_DATA_ALIGN(IGB_SKB_PAD + size) +
> +		SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) :
> +		SKB_DATA_ALIGN(size);
> +#endif
> +	return truesize;
> +}
> +
> +static void igb_rx_buffer_flip(struct igb_ring *rx_ring,
> +			       struct igb_rx_buffer *rx_buffer,
> +			       unsigned int size)
> +{
> +	unsigned int truesize = igb_rx_frame_truesize(rx_ring, size);
> +#if (PAGE_SIZE < 8192)
> +	rx_buffer->page_offset ^= truesize;
> +#else
> +	rx_buffer->page_offset += truesize;
> +#endif
> +}
> +
>  static inline void igb_rx_checksum(struct igb_ring *ring,
>  				   union e1000_adv_rx_desc *rx_desc,
>  				   struct sk_buff *skb)
> @@ -8221,6 +8560,10 @@ static bool igb_cleanup_headers(struct igb_ring *rx_ring,
>  				union e1000_adv_rx_desc *rx_desc,
>  				struct sk_buff *skb)
>  {
> +	/* XDP packets use error pointer so abort at this point */
> +	if (IS_ERR(skb))
> +		return true;
> +
>  	if (unlikely((igb_test_staterr(rx_desc,
>  				       E1000_RXDEXT_ERR_FRAME_ERR_MASK)))) {
>  		struct net_device *netdev = rx_ring->netdev;
> @@ -8279,6 +8622,11 @@ static void igb_process_skb_fields(struct igb_ring *rx_ring,
>  	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
>  }
>  
> +static inline unsigned int igb_rx_offset(struct igb_ring *rx_ring)
> +{
> +	return ring_uses_build_skb(rx_ring) ? IGB_SKB_PAD : 0;
> +}
> +
>  static struct igb_rx_buffer *igb_get_rx_buffer(struct igb_ring *rx_ring,
>  					       const unsigned int size)
>  {
> @@ -8323,9 +8671,19 @@ static void igb_put_rx_buffer(struct igb_ring *rx_ring,
>  static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
>  {
>  	struct igb_ring *rx_ring = q_vector->rx.ring;
> +	struct igb_adapter *adapter = q_vector->adapter;
>  	struct sk_buff *skb = rx_ring->skb;
>  	unsigned int total_bytes = 0, total_packets = 0;
> +	unsigned int xdp_xmit = 0;
>  	u16 cleaned_count = igb_desc_unused(rx_ring);
> +	struct xdp_buff xdp;
> +
> +	xdp.rxq = &rx_ring->xdp_rxq;
> +
> +	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
> +#if (PAGE_SIZE < 8192)
> +	xdp.frame_sz = igb_rx_frame_truesize(rx_ring, 0);
> +#endif
>  
>  	while (likely(total_packets < budget)) {
>  		union e1000_adv_rx_desc *rx_desc;
> @@ -8352,13 +8710,38 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
>  		rx_buffer = igb_get_rx_buffer(rx_ring, size);
>  
>  		/* retrieve a buffer from the ring */
> -		if (skb)
> +		if (!skb) {
> +			xdp.data = page_address(rx_buffer->page) +
> +				   rx_buffer->page_offset;
> +			xdp.data_meta = xdp.data;
> +			xdp.data_hard_start = xdp.data -
> +					      igb_rx_offset(rx_ring);
> +			xdp.data_end = xdp.data + size;
> +#if (PAGE_SIZE > 4096)
> +			/* At larger PAGE_SIZE, frame_sz depend on len size */
> +			xdp.frame_sz = igb_rx_frame_truesize(rx_ring, size);
> +#endif
> +			skb = igb_run_xdp(adapter, rx_ring, &xdp);
> +		}
> +
> +		if (IS_ERR(skb)) {
> +			unsigned int xdp_res = -PTR_ERR(skb);
> +
> +			if (xdp_res & (IGB_XDP_TX | IGB_XDP_REDIR)) {
> +				xdp_xmit |= xdp_res;
> +				igb_rx_buffer_flip(rx_ring, rx_buffer, size);
> +			} else {
> +				rx_buffer->pagecnt_bias++;
> +			}
> +			total_packets++;
> +			total_bytes += size;
> +		} else if (skb)
>  			igb_add_rx_frag(rx_ring, rx_buffer, skb, size);
>  		else if (ring_uses_build_skb(rx_ring))
> -			skb = igb_build_skb(rx_ring, rx_buffer, rx_desc, size);
> +			skb = igb_build_skb(rx_ring, rx_buffer, &xdp, rx_desc);
>  		else
>  			skb = igb_construct_skb(rx_ring, rx_buffer,
> -						rx_desc, size);
> +						&xdp, rx_desc);
>  
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
> @@ -8398,6 +8781,15 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
>  	/* place incomplete frames back on ring for completion */
>  	rx_ring->skb = skb;
>  
> +	if (xdp_xmit & IGB_XDP_REDIR)
> +		xdp_do_flush_map();
> +
> +	if (xdp_xmit & IGB_XDP_TX) {
> +		struct igb_ring *tx_ring = igb_xdp_tx_queue_mapping(adapter);
> +
> +		igb_xdp_ring_update_tail(tx_ring);
> +	}
> +
>  	u64_stats_update_begin(&rx_ring->rx_syncp);
>  	rx_ring->rx_stats.packets += total_packets;
>  	rx_ring->rx_stats.bytes += total_bytes;
> @@ -8411,11 +8803,6 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
>  	return total_packets;
>  }
>  
> -static inline unsigned int igb_rx_offset(struct igb_ring *rx_ring)
> -{
> -	return ring_uses_build_skb(rx_ring) ? IGB_SKB_PAD : 0;
> -}
> -
>  static bool igb_alloc_mapped_page(struct igb_ring *rx_ring,
>  				  struct igb_rx_buffer *bi)
>  {
> @@ -8452,7 +8839,8 @@ static bool igb_alloc_mapped_page(struct igb_ring *rx_ring,
>  	bi->dma = dma;
>  	bi->page = page;
>  	bi->page_offset = igb_rx_offset(rx_ring);
> -	bi->pagecnt_bias = 1;
> +	page_ref_add(page, USHRT_MAX - 1);
> +	bi->pagecnt_bias = USHRT_MAX;
>  
>  	return true;
>  }
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.osuosl.org%2Fmailman%2Flistinfo%2Fintel-wired-lan&amp;data=02%7C01%7Csven.auhagen%40voleatech.de%7C187e84a4f47946f5ac5408d81beb72b2%7Cb82a99f679814a7295344d35298f847b%7C0%7C0%7C637290045354443124&amp;sdata=SGATWWWPoeWqp9b9YTwqD%2Fyp8YoRmMaYVQIkd0j7gFk%3D&amp;reserved=0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
