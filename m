Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 074BB738731
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 16:37:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 753BF83640;
	Wed, 21 Jun 2023 14:37:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 753BF83640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687358251;
	bh=K/IL6RUwJIQjbiW8F/ffoMViYkvdlc4NzyySX+iOz2Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CQZSb23rTmNNQC1BOwTqMBNFX/Jqtv59/64Vmx+FIdr8oAHYkRVvSllcPQ5J6FPJ0
	 trSVEvEJ0440wULl6AbWqykXrUoU6MbRt1RiFUf9gGnv38kE2OG4hSkqh1+KbEjIg1
	 pJSqj1f1KJYkT25tINRMTZDBNfNrmeyMfpz4JscNgL5NXZ/9KdsaJ6oAnHYLD1GdVC
	 cHb7ylUtrMsd8e/Kve1HBeboC7+UwJ/HK1TBZHmBV1s2/plsJfjNzho1UCo8kokAVc
	 hdtLVlR3MueqnOWjpqgTB1JUZTw1lwRloXVfU0tl5jkwVE1sFEA7I2qgUFM4bvMtWD
	 a0HFIZjvk9QTQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RM8OW2ixJlzs; Wed, 21 Jun 2023 14:37:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43399835C8;
	Wed, 21 Jun 2023 14:37:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43399835C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 816E51BF473
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41D3D613EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:37:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41D3D613EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GheoPc6-jGl4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 14:37:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B23F60B33
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2044.outbound.protection.outlook.com [40.107.93.44])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B23F60B33
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:37:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZaapAMaD6jbMDa9knKPyj0WZEwgEfLnG0/mRWP9Bp0eOmCOldHNaK5VtYS3XJ9/7Ity0rcMrMx11B6kAJEiU8eaHTo4PS1sTbPJqlIa83KOgyOM+qRWYAxjg0t4c6qMJiS1//OHaPd+wpym2uDPw/qCceyYl0G1IoSaj5I4pPvudXDIJgVCpkkCkgYyYapvkjh8he7+8bjbCluKkNJeDgM/gt///CH423ppFl8C0ZqAjwRqep6Cm8bNBQEzO72Y5DfY2vFWmUXQcQrYy5ilJUDZsqFla5zhbLxviRf81ZZQj42yRj4bcnsHkZHDi+3UfgZCg5eE7xCQcuOhEclu0WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vlznHNZ+Z6iq5f5LkvKO+1YDHoD4m4mnQgna9t99MdA=;
 b=WW1cl1Q4M44ut41C9fu2DcBZsTo2DjDkZxMALn+ZB2Vb9AjiBrwNW9uGpUefBNFA7Y9qu+DesuGz+lVfFDg1g2kMLEXQNgDQUPM6fS1ppW5zmfeQ3E94JcRR871OEBcWTSsgkjaZextuI3G7TefmxxpmhNmrLyOV2TUD1L9ljhpecFpod9UoA6RYDAff5We/nMxmBEEJu9ZOqdPPREnUnMuyh2G5nPzi141gKhzs/3hw7E5222KFNuEqIDlIe/I/xlrnTVSq5BGQ7jkSRJBeyG395C13ewshIIvGGnFZxumLh00hBOm8qH50/2BQ+hJElRRL8hj4d+Dgr7z/Yln75g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by MW4PR12MB6997.namprd12.prod.outlook.com (2603:10b6:303:20a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Wed, 21 Jun
 2023 14:37:20 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::f7a7:a561:87e9:5fab]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::f7a7:a561:87e9:5fab%7]) with mapi id 15.20.6500.031; Wed, 21 Jun 2023
 14:37:20 +0000
Date: Wed, 21 Jun 2023 11:37:17 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Lingyu Liu <lingyu.liu@intel.com>
Message-ID: <ZJMLHSq9rjGIVS4V@nvidia.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-11-lingyu.liu@intel.com>
Content-Disposition: inline
In-Reply-To: <20230621091112.44945-11-lingyu.liu@intel.com>
X-ClientProxiedBy: BYAPR02CA0025.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::38) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|MW4PR12MB6997:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c5b6c91-167f-4351-693e-08db726504f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: id13rWXTs3zQDSiYl4ymN0qUeH0fZCLqem+2DjJq/bb5JEqE6gULrzS8aAKOdznZFEiZfuqGLmXMX3TOd6W6wWqwrrdnvjmyT8aYs9HwhDCe+jP6q/mrp8U/V+W3WDNCNKqGSJr1lF7mlbmYzVyYS1ow8XWxoMlkFLnsj4h3/0zEIcNrhow6qEBEBgFDsVJl3oJEVq3zrB7ImCDmh3K3Cm9VRYFYPbXalHwejLT84z0kacr1sqbxAawJs/Xe7NlpTLFJiWQFKJxXJLOpRBVmclb4Ug5/GPjb9XnDt/Xg9UlYQit243nSeR+1/ZqQVOjDwOGPnTdwhAJvuGs1P6rtyBQMAO/MXUyXzDMpWDLT6+LfYN5P7NU6PUgDB8pV02SlENiRwS7kKU7cpyoiw98z7T2sfW0Mn0BegfqW7xOoAFtmR1P/YYrUIb9nWWoogJXqhXMy1Zfl998o2ejlHSgChI0LEjCmKa50w/D1n82cD1WboQKLMCtdHlMksqVpS3F7/Vo4GAKhPVh10+/J59XOOCSeVXx7LPCKNqjvVy8eTOvdDCLoMqjw9pXD1i6SO+eq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR12MB5869.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(39860400002)(346002)(366004)(136003)(376002)(451199021)(186003)(36756003)(5660300002)(41300700001)(6916009)(8676002)(66476007)(66556008)(8936002)(38100700002)(316002)(86362001)(4326008)(66946007)(2616005)(6486002)(478600001)(26005)(6506007)(2906002)(6512007)(6666004)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QpXFdn2IsISTJn9DGeOCOWmYF7xJbcAzhYTFUA3kUKum9uo8/azeEDu8sK6z?=
 =?us-ascii?Q?EFdcv6IklllfLpDIVv/VDd+0ssWtFd/30H5oBJ7sZyf2OMzI9RfpgNNyScSG?=
 =?us-ascii?Q?bj27oQtT3GnVWEk+gFjlG5+1pUynY/c3i5k7wvNJZqxh37nRlyB5o7LFAjsi?=
 =?us-ascii?Q?jmXpDmchPo/szVkqj7Kuqpmccxj9bluNoJK562mjhL3pFhh8aLC+niNkFHUv?=
 =?us-ascii?Q?4N5MfU+Y1/O13NNwDebiTTPpV3iGWZNzy8KJmXJwkr5PKedkeEOq5uCchvnP?=
 =?us-ascii?Q?zCu2Ozu97oSkYkQsUuxvyvqgwEnbznavnD9Lm8rpw0SnwJQ5Qfro0sxApkX8?=
 =?us-ascii?Q?kvJKRXQ8mBB53SF73iwQldPeZOFK/2Lx0Xaz3tkx0tCffiB5U0NPxOC+srLg?=
 =?us-ascii?Q?ZaMsdTJOB7lMeA8dxDXshfey72BbwJCWckLzgxZ8XebesOlbVFOf8+GYbSB6?=
 =?us-ascii?Q?fGwX62OR9CcCQ7+G7mIBmlbCFjhCgqNYltO7xn/DxjbOox7/xTMeKuMPiKZd?=
 =?us-ascii?Q?x7JaSwCmUbaZV9sDLG8ZiJYrVthzfqZuZ0Jn/tYDUXef2mIMeC+1lhLtVfSN?=
 =?us-ascii?Q?/rOVFriqkgYb555j55+EZ9/+I/L/TceZ63Pfj3sudS1tjZjG5dciIDDNXKfg?=
 =?us-ascii?Q?jgmWyqd5k5tuzWRcCZrpIiNjmaFKlqxo+RiVMeYRlZtUt3O+Rw0sWJQsHswN?=
 =?us-ascii?Q?/1rVV7hR6n7fAelU/SVJwDQt0PYmGJh/4dj3QAIGMc4rDO71K6KDYmktOiAo?=
 =?us-ascii?Q?swRe97qPfLwMA8SAWl5R/DrTub6cHZJDKRWo9CNVlgNRHpBHDQB8cQ2RJyYq?=
 =?us-ascii?Q?JUdD3dA3hVaeWF8DqoOZSigHaHorPU8Fttnz+xpylkCU+E0zX8gNVgykr1Wo?=
 =?us-ascii?Q?EBdbg5qR9HFDQPsT64XBZVHwrDMzabiU0aD+wlveVRWN7zEgHJ1KncggmTZx?=
 =?us-ascii?Q?M49Y9KGWYJqMGnHvN+u1mROZbsJv6ej59jMeNgHY47oPhl1dMyuwOWrv7XeH?=
 =?us-ascii?Q?5rH6Kd8BbZnyTMuk+4GpzXLlN6Owc50w0RJTAlX6oS+NY22tVUTWkEooOHPD?=
 =?us-ascii?Q?G6RUkXEsP8oXQ2cqMjgzNKeA4Cp63QKYT+anirXMQRggG6gs03V0kChnOfw6?=
 =?us-ascii?Q?ruATJv78jhTZ48T3exFDNN6TXojQCxrm5Nxt1HuCpWQTHktSZU20R+RUvObH?=
 =?us-ascii?Q?MZB6J1gvNlXTKG7LEjB/XdZooizzI4A5c0xadB/U2COeCL84JwdnaTkSTxp2?=
 =?us-ascii?Q?cHgtHEiHjY+KQjqWSsguF2ZfMMKTpZ8G94Rb6H0ztRYEzf4wet2agdIxE8hT?=
 =?us-ascii?Q?ZJ4xoimOcq1Ze+Sh7gHfjtzH/8tM218jJcgn3ZqiTKuiXw4T8tPHHdn7HucI?=
 =?us-ascii?Q?uJeOadknlNPM99fLmHLB8uepx1s2baVBQaiLezLXjRS3pBOdeXaMrsotgKIG?=
 =?us-ascii?Q?6Dtxn40xn8oBXR2PUQvyGMbTl4inruBM9c9StP4qPPjri2ec/0mn35mXOfKP?=
 =?us-ascii?Q?P7+ILx0Elg9ZlhkmIO28XkwyrFhF8JWNoWEv/6fGeimPQWVA0wZF1whH2Suh?=
 =?us-ascii?Q?C4PvKBesnKeRJjO2+ty62IE/J7Dgg5uu7YFJ3Yvp?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c5b6c91-167f-4351-693e-08db726504f6
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2023 14:37:20.6684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i0gCJBN8IWZ7G1cmUOlpjjLlVYUnfj3unQD8sO7vEs62FNtfIElwRTLAJ9onoiCg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6997
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vlznHNZ+Z6iq5f5LkvKO+1YDHoD4m4mnQgna9t99MdA=;
 b=Wnl5kShtkbdiVZvmXsSjTGoNvbujDQQTKV73A4RI+1rAe3MLs8AF8pBP5MuydzS4UNxRtjlh+weLmixz6KNpRX2q5w6fNOLcWKQTn5zdBlxRKL5A89L76Z9k+35jJoYK95OqgAaanExAAMak60out9DOCCijBlNNNzLqbThQPaP5JkAWDpLvlzX7MbIASwo3K2uujMi2Jew46zSPL5NY6zzNb4cTLzUbZokPMFre9PZRTAk0R9762wAEpzY15k9iEPGT/X/daGRXZ6+1CtD7TUfUyqbR+A/m8sZ3eZ3AtD4iIw+afSviwhkRCZP0NwSENKU0Vl2i8uQqem3j/x+BjA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Wnl5kSht
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 10/15] ice: save and
 restore TX queue head
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, intel-wired-lan@lists.osuosl.org,
 phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 21, 2023 at 09:11:07AM +0000, Lingyu Liu wrote:
> diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
> index 2579bc0bd193..c2a83a97af05 100644
> --- a/drivers/net/ethernet/intel/ice/ice_migration.c
> +++ b/drivers/net/ethernet/intel/ice/ice_migration.c

> +static int
> +ice_migration_restore_tx_head(struct ice_vf *vf,
> +			      struct ice_migration_dev_state *devstate,
> +			      struct vfio_device *vdev)
> +{
> +	struct ice_tx_desc *tx_desc_dummy, *tx_desc;
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
> +	struct ice_pf *pf = vf->pf;
> +	u16 max_ring_len = 0;
> +	struct device *dev;
> +	int ret = 0;
> +	int i = 0;
> +
> +	dev = ice_pf_to_dev(vf->pf);
> +
> +	if (!vsi) {
> +		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
> +		return -EINVAL;
> +	}
> +
> +	ice_for_each_txq(vsi, i) {
> +		if (!test_bit(i, vf->txq_ena))
> +			continue;
> +
> +		max_ring_len = max(vsi->tx_rings[i]->count, max_ring_len);
> +	}
> +
> +	if (max_ring_len == 0)
> +		return 0;
> +
> +	tx_desc = (struct ice_tx_desc *)kcalloc
> +		  (max_ring_len, sizeof(struct ice_tx_desc), GFP_KERNEL);
> +	tx_desc_dummy = (struct ice_tx_desc *)kcalloc
> +			(max_ring_len, sizeof(struct ice_tx_desc), GFP_KERNEL);
> +	if (!tx_desc || !tx_desc_dummy) {
> +		dev_err(dev, "VF %d failed to allocate memory for tx descriptors to restore tx head\n",
> +			vf->vf_id);
> +		ret = -ENOMEM;
> +		goto err;
> +	}
> +
> +	for (i = 0; i < max_ring_len; i++) {
> +		u32 td_cmd;
> +
> +		td_cmd = ICE_TXD_LAST_DESC_CMD | ICE_TX_DESC_CMD_DUMMY;
> +		tx_desc_dummy[i].cmd_type_offset_bsz =
> +					ice_build_ctob(td_cmd, 0, SZ_256, 0);
> +	}
> +
> +	/* For each tx queue, we restore the tx head following below steps:
> +	 * 1. backup original tx ring descriptor memory
> +	 * 2. overwrite the tx ring descriptor with dummy packets
> +	 * 3. kick doorbell register to trigger descriptor writeback,
> +	 *    then tx head will move from 0 to tail - 1 and tx head is restored
> +	 *    to the place we expect.
> +	 * 4. restore the tx ring with original tx ring descriptor memory in
> +	 *    order not to corrupt the ring context.
> +	 */
> +	ice_for_each_txq(vsi, i) {
> +		struct ice_tx_ring *tx_ring = vsi->tx_rings[i];
> +		u16 *tx_heads = devstate->tx_head;
> +		u32 tx_head;
> +		int j;
> +
> +		if (!test_bit(i, vf->txq_ena) || tx_heads[i] == 0)
> +			continue;
> +
> +		if (tx_heads[i] >= tx_ring->count) {
> +			dev_err(dev, "saved tx ring head exceeds tx ring count\n");
> +			ret = -EINVAL;
> +			goto err;
> +		}
> +		ret = vfio_dma_rw(vdev, tx_ring->dma, (void *)tx_desc,
> +				  tx_ring->count * sizeof(tx_desc[0]), false);
> +		if (ret) {
> +			dev_err(dev, "kvm read guest tx ring error: %d\n",
> +				ret);
> +			goto err;

You can't call VFIO functions from a netdev driver. All this code
needs to be moved into the varient driver.

This design seems pretty wild to me, it doesn't seem too robust
against a hostile VM - eg these DMAs can all fail under guest control,
and then what?

We also don't have any guarentees defined for the VFIO protocol about
what state the vIOMMU will be in prior to reaching RUNNING.

IDK, all of this looks like it is trying really hard to hackily force
HW that was never ment to support live migration to somehow do
something that looks like it.

You really need to present an explanation in the VFIO driver comments
about how this whole scheme actually works and is secure and
functional against a hostile guest.

Jason

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
