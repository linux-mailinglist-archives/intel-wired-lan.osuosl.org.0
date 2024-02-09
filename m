Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5CF84FB50
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 18:57:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6EDAA40386;
	Fri,  9 Feb 2024 17:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M9gJNIvroueu; Fri,  9 Feb 2024 17:57:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35AD441D94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707501440;
	bh=mVkmJreqF7pzf5DPcROSSXOAO1l0kRptoa2m3zPaFCo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ugPEBOi13tzxvmHBci1to5YfBsVM5oTiJOzFSjQf7s7MaR/Pm1FW+fOrAeWzNqEV+
	 IiMbcaKZXt9AqsO05SYlzHuz0PQKSVOAfTED8w1QygWUjYJ060fYv76o4hpgbExuF4
	 q6fUzXr6g0Ic9MyaaKnPanlGgg5KQ3Q+rh8MbGYoHuUbsLhA+NzMAME47iSfvbG515
	 dADw2m6nFKJc+ZdZbyFQjjSj+jpeTLEQMMYboxMYUDBZxidJoudX7/tIaUFrEmWhku
	 NVn4lF6oMK43D5s4Vx0VnmIjSjAy5GQEi+qbQ+FLGEivF1Ps9+fLB2jYIav5NUFnHy
	 ricEFL80TAexg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35AD441D94;
	Fri,  9 Feb 2024 17:57:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C69CA1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B26AC607EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BsM0G6lABC7O for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 17:57:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.101.76;
 helo=nam04-mw2-obe.outbound.protection.outlook.com;
 envelope-from=shannon.nelson@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CDDDA607C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDDDA607C7
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2076.outbound.protection.outlook.com [40.107.101.76])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDDDA607C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:57:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EuiBnyaQI0/pa3s9reyXiE3JFOx1XrLAOgUyZq3gFG2As3Luqz43kCzRjywXDI0h+xxwMqFiTIdVbP56GA5uVPum/8GMMyjY1/uR5qDlq/rkfkdukkfgYdRPA6ZK5DoJqd0OovUXMfs1JIIaUD6x0IkAEtxa06mtsjm0Ktf8vHmu8/KJLBDc7Rn+XKXLyKDnCQQ+V5fAZ6Sk74cPPepDbOe7gu8RElVIGjJTHlXT+GIQ4bYG2EujZTbkpgRIBIsmr2b64BzmiWzg64G72h9VCUHOnEkmEhFzhao/GtDtBZ+krlJlFNpDKm1dxKt46skIFHWj7M5+dyJ+lKUXG/0ecA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mVkmJreqF7pzf5DPcROSSXOAO1l0kRptoa2m3zPaFCo=;
 b=SmHxhV4Zw6WstiBNiS3eabWKvgGRzge+UYWO77XEs1noyVQvFJuFk7Xw8J/Q1A2l7vlDMIaePQ/BoN5XdCXFMy1hPp9jsy84a5AnvlfH2JMi1sInGRECoNxAlcGufq4ytXWiFJDDxcDauCmED1AgybX6C4xt8kfyZVSoBZJpiGIkU9ZkVVb7qgSHiq7zifmROnavnAtPYHlM1/ME1IH7/vFoyQ9sfDnUUvEt3nk3r53ws2QZG1OXa0VJIGkwxfAQAToKalEmO7xs/0Fn8nLsL+8306QKox2fEOFPD9e/fXyi7JwVpc4Y9QtFhtKWWxEUyvS1ecldS5BmgGmO+OIo6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from CY5PR12MB6573.namprd12.prod.outlook.com (2603:10b6:930:43::21)
 by LV2PR12MB5752.namprd12.prod.outlook.com (2603:10b6:408:177::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.14; Fri, 9 Feb
 2024 17:57:13 +0000
Received: from CY5PR12MB6573.namprd12.prod.outlook.com
 ([fe80::931f:6feb:d193:f870]) by CY5PR12MB6573.namprd12.prod.outlook.com
 ([fe80::931f:6feb:d193:f870%5]) with mapi id 15.20.7270.012; Fri, 9 Feb 2024
 17:57:13 +0000
Message-ID: <b5b28ce2-4322-4d39-93ac-46d32bb336fe@amd.com>
Date: Fri, 9 Feb 2024 09:57:10 -0800
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <db31a0b0-4d9f-4e6b-aed8-88266eb5665c@moroto.mountain>
Content-Language: en-US
From: "Nelson, Shannon" <shannon.nelson@amd.com>
In-Reply-To: <db31a0b0-4d9f-4e6b-aed8-88266eb5665c@moroto.mountain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0335.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::10) To CY5PR12MB6573.namprd12.prod.outlook.com
 (2603:10b6:930:43::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6573:EE_|LV2PR12MB5752:EE_
X-MS-Office365-Filtering-Correlation-Id: a62c25e8-bd7d-422e-4ee2-08dc29988b50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +PIuNV2lnuZAY0hbQqgyTygx7hZ/dcXBlpvq6Bj1yJtL6MWbDVK2mRtYZ8tWNg5usL8a6X9ofDyO8FPjj+ZUAUeqw2/DTsTIua0kolyT5VYzEUptlrXgAxEC2Gd9iOvJDQiEpzcO8aVOeXl3eRDWWpxOwiwutJH6LNun4eggG+g2kQVakEi5qf90FRs71mWsnc4CeKIzIRItRLgHt6eVXhB7zgLXgR2Syh/JoxZsMI4H6z3qimFIVVk9zUHu4zfiC07tM09rQHFP0VxEBHIueC+bIoiHskmflyK306OYOQPAN6bOlYqUUK0koM0w/V9VARv91MXe6Xc6o4WB9Xy1fdqnDrXSy9iv89FSUYFpLYHHZZHNG8pSlXseKT+s+CgXT4K439qiu5gWju3zNy6xU9eeZ5ytlWyNFsjxc8e95Xk6OVvXliBKUx2sO/wz3/MlLn491pCicKh5vXS3rIJAqj2uQw+iF4t7hmFJcTo84c155g+pRJRYX3wPaFZ7tSPOmf0cMHZBAl89MWfXhY+aV2pr6HjbKjGCN5IXQRHfPkV+BBPMOEv3GdrDlhAKa7TX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6573.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(366004)(39860400002)(346002)(230922051799003)(230273577357003)(451199024)(1800799012)(186009)(64100799003)(38100700002)(5660300002)(2906002)(31696002)(86362001)(26005)(53546011)(6512007)(6506007)(83380400001)(2616005)(110136005)(316002)(8936002)(66556008)(8676002)(66476007)(4326008)(66946007)(6486002)(478600001)(36756003)(31686004)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ni96a3lid3lGTE5rOUJ5bWcrVm9nV05FMy9LMmZxYUVYR0NVcFdEYjRlZ20z?=
 =?utf-8?B?WHNZekQ5UE40a1JzZTlxUXBOelNnNzlkVC9ERDE4WnYxOVkxQUZpeTZINUpR?=
 =?utf-8?B?dHJ2dTQrWWNzN1AxeEVncVNTbWpKbm13eis3NlByWFVER2RkQ2Z5ekgybWY2?=
 =?utf-8?B?a0l2UGpnVllZQk9JSkJQRzQvbnVLMXFuNld0RSs3SXdrbXNHN0Q0UVJSTnI4?=
 =?utf-8?B?WTdvclplQm5CbXBuSWEyeWNZVkdXOXBKUjlSWGRvdVRvcS9NejByR1U4ei9l?=
 =?utf-8?B?eWdzSmFKeW1mNUhqWENPTUpFRk9jSjNjYkM0L1ZIbmc2RGVWUDZwRElYVDd5?=
 =?utf-8?B?UkFxN1hXeXkzU3Q5MGpXSzV4NjhyTy9ZK0ZCWWtQeW9NVnAwVWVkc1J4SzhW?=
 =?utf-8?B?Qk1Ja0ltWUtxK2RPSldLU0d3Ynd6VEltZlR5ckdKWUQxa09rbU1lU2VIMjB6?=
 =?utf-8?B?L1loTEFMaFgvZklNSkNJRVNLcXFOaHljTGU4Q1BNTHBqRkJJTGtTb0lFdHNP?=
 =?utf-8?B?S3pzZElOMUNtTWNuNmdCMVF0QmJrMnNsYTlOQzQzVzNNbFRqV3lvNExPTWZh?=
 =?utf-8?B?b3ZUT2NOVS9JMXBxeUdJc3h4UkE3dHlENlQyTmQ1RFJWd0dzU215R0xJYUdm?=
 =?utf-8?B?VzNCdEVNNEVqdndpU2tnSkMxd0N5QWg2QS8reGljK2tSRmlvSmkzekh0ZlV5?=
 =?utf-8?B?SnhwRTBYcitjMU5VdFlpMk5XM3dReW5ENUorUXhjSTkrZTBneTNSZWJCclQ0?=
 =?utf-8?B?T2NvS2diYmJTWDVoSURXb2UyMEpQVnJFMHNESVNzbmlnN0dnM3VnY3I0d0VX?=
 =?utf-8?B?NzFndkZoTFlNd1dteStVM0d6Wm1PQXVrN29ER2Z5MEM3NmEvOWs5aWM0YVVs?=
 =?utf-8?B?alF1bFFIZFFrZ0RFV091VGpLY01qRTJxaHh0OFMwUWJadW0zZjdsZWs2dWx5?=
 =?utf-8?B?RTZGWHZ5Q3ovbG15RXBZbUN1U05uUWJjN1RrdGc3S2xndk41UmZ3WWFVbk1Q?=
 =?utf-8?B?ZWNDTmxwa1FNN0NHd1R2NzNHYW1KbGN6V3JiVFVpVmFtZ1lWd1UxaThMbkYy?=
 =?utf-8?B?QzZTVVlLTjFuVElMTVlGQW5aV09pZHBLcncxaHo2K202ZkRjTDdjeVJ3bXNG?=
 =?utf-8?B?NWxER1R3UHFzZndCa29DblVBdllVYkNrVmtYUWtsSnIvRlMwa3c4S0FLU2Q5?=
 =?utf-8?B?TGtvWlBQWnJTY0ltdk1ZaEFQYThWSUg4UkoyeXR4NUVyakFPcDFwUXF1RXlh?=
 =?utf-8?B?U243bWNlMmdhM3pGYkt0N0VUZTlSQTYvOUsxVjFkRndGbDVady9GK0dQcGx6?=
 =?utf-8?B?ZDVpcFJROC96QzlrY0YwM2tucWJzQnhsSC9JSSsxanl2OFp3dDFQM1Nacmo1?=
 =?utf-8?B?bkYwejQxOVpVK2dFTGxMQk40dEpRV3lSL0FMZWlJdWp1UWRHcHJwUmt1OGhX?=
 =?utf-8?B?NWpGTEI1UFFHck9vRkFuajFkSDQvVVppREo1Z3lvUDRSdEVWZ0RuMHE3Q2ds?=
 =?utf-8?B?QnN3SG1wWGdoU0tPMWE5eGZvOXQwRndEZmwzM0pVdEh2R2pTcDdLdDBFRmoy?=
 =?utf-8?B?bzNmZWFKT05KbGczYTlDSkhDaURaZS81NVkzTFJiTGVsbXJ4a2dHQURsenMv?=
 =?utf-8?B?d0FSZnhvdnJFKzdvSVd5cW5KNjh4RHJxRlFKeVRLL0g0U2RvQzhQZzlVMGZt?=
 =?utf-8?B?cEZiTHpaZG5HU0d4b0M1emtXRUUxTmtYNkJUR3VLZHFiOHdwRGdFRzk5ZmpC?=
 =?utf-8?B?VXExTXU4a3hWaWV4OTFDWW1XUW1wcDQwM3d4MldvVlJkZU4rTWM0WTVDcVBm?=
 =?utf-8?B?aWZRaFdUMG5kb0QyZjRYbldhRURXdjZBOUtPYmVJODlJMlI2ME1nQ2tjNFIy?=
 =?utf-8?B?Z3FXZXNaWFEyL25MTWJLY2lYS2NqczEzdFZJbThRaXNGL1d6akt2djRFUkgv?=
 =?utf-8?B?NFpHTWJaZmQxNjZJRTIrSm1wY0h1RWI0NXdDaU52eXJCdmMwb2R2RWw3R2xP?=
 =?utf-8?B?QStNQnJyKzVsdVZnT1haNG15QXpmKzcvWnlIdGd2bG9DaGN5U2ZLbHNleU91?=
 =?utf-8?B?RmF0amxKanpQNHNwVWVqMkZDd2w0a1dvL0ZGc3cwR3RlcTJxcEw2bi8zVUNL?=
 =?utf-8?Q?yMQCkgcxF5PG/aijoWeZMENNs?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a62c25e8-bd7d-422e-4ee2-08dc29988b50
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6573.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2024 17:57:13.0180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sp8JxQF627VurcaTRVVEOovaBDUBg3K9WD8x908iOjFfHUk96Y9pdc/1Pg1h5ywY63QzwHEpg4dTS78TVRWqFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB5752
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mVkmJreqF7pzf5DPcROSSXOAO1l0kRptoa2m3zPaFCo=;
 b=cN4hQawV/Wl29z9jhv40Sil0IkwohzmKaii3xf0ZBKM6YekXEmPpsmZJVTzz2IM+2P3ZR7wfwPyqpNfyDh/+YY+h6duQqTh/1KmKCT9dZ5go26RFbChQEhstDzb6wBVLuPL3SBpYiQzdiIh1mQSSCYs8RtzLCbRJT0W5Jwvmg40=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=cN4hQawV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [bug report] ixgbe: add VF IPsec management
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/9/2024 4:59 AM, Dan Carpenter wrote:
> 
> Hello Shannon Nelson,
> 
> The patch eda0333ac293: "ixgbe: add VF IPsec management" from Aug 13,
> 2018 (linux-next), leads to the following Smatch static checker
> warning:
> 
>          drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c:917 ixgbe_ipsec_vf_add_sa()
>          warn: sleeping in IRQ context
> 
> drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
>      890 int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
>      891 {
>      892         struct ixgbe_ipsec *ipsec = adapter->ipsec;
>      893         struct xfrm_algo_desc *algo;
>      894         struct sa_mbx_msg *sam;
>      895         struct xfrm_state *xs;
>      896         size_t aead_len;
>      897         u16 sa_idx;
>      898         u32 pfsa;
>      899         int err;
>      900
>      901         sam = (struct sa_mbx_msg *)(&msgbuf[1]);
>      902         if (!adapter->vfinfo[vf].trusted ||
>      903             !(adapter->flags2 & IXGBE_FLAG2_VF_IPSEC_ENABLED)) {
>      904                 e_warn(drv, "VF %d attempted to add an IPsec SA\n", vf);
>      905                 err = -EACCES;
>      906                 goto err_out;
>      907         }
>      908
>      909         /* Tx IPsec offload doesn't seem to work on this
>      910          * device, so block these requests for now.
>      911          */
>      912         if (sam->dir != XFRM_DEV_OFFLOAD_IN) {
>      913                 err = -EOPNOTSUPP;
>      914                 goto err_out;
>      915         }
>      916
> --> 917         xs = kzalloc(sizeof(*xs), GFP_KERNEL);
>                                            ^^^^^^^^^^
> Sleeping allocation.
> 
> The call tree that Smatch is worried about is:
> 
> ixgbe_msix_other() <- IRQ handler
> -> ixgbe_msg_task()
>     -> ixgbe_rcv_msg_from_vf()
>        -> ixgbe_ipsec_vf_add_sa()
> 
> This is a fairly new warning and those have a higher risk of false
> positives.  Plus the longer the call tree the higher the chance of
> false positives.  However, I did review it and the warning looks
> reasonable.
> 
> regards,
> dan carpenter

Hmmm... yes, this does look to be a valid issue.  Nothing like getting 
haunted by code from the past.  Thanks (?) for digging this up :-) .

I'm not sure offhand what the right answer might be.  I suppose choices 
include
   (a) pre-allocating some number of these xfrm_state structs
   (b) shoving the sa creation into a workthread
   (c) remove the VF xfrm offload feature
Neither of these options seem very appetizing.

I would guess that (b) is the "correct" answer, but I don't know how 
well the PF<->VF mailbox protocol can tolerate the need for a delayed 
response - it looks like the PF's handler wants to send an immediate 
ACK/NACK.

The pre-allocations for choice (a) would allow for not messing with the 
timing of the result message, but would require guessing at how many 744 
byte xfrm_state structs should be lying around for potential use.  The 
device has 1k slots available, but I don't think we want to store up 
that many nearly 1k structs that likely won't be used.  Maybe add a 
switch in the PF for enabling this, which defaults to off?

Meanwhile, (c) is the quick and dirty answer for a feature that likely 
doesn't see much use (I have no data for this assertion, just a guess), 
and shouldn't be relied upon anyway.

I'm not in a position at the moment to be able to address this issue, 
but I'm happy to try to answer questions for anyone who can get to it. 
I'm hoping that Jesse, Jake, or Tony might have a better idea what to do 
with this.

Thanks,
sln

