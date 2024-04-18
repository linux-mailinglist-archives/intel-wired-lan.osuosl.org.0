Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3588AA3C9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:08:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76D194157E;
	Thu, 18 Apr 2024 20:08:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BvQRBr5o0HAB; Thu, 18 Apr 2024 20:08:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D66674155B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713470902;
	bh=5Vs/wYZPc+QNXKMo7hSTN17fygPb92qwS9KLE9j02Gc=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qYzvYJLQZTYThN7rkZRJuIAtn7cuJYOiideIHC6pr18gYMigPTDS2wBy9i00qqT/4
	 6ZPNQis8FW83f2eMjN75NsogN6GaTWzlMKvMEqJd+yItupvK0x4uxffWkveNzYEBnk
	 tfgy4GHL2iYjJ0P8eo1QFvorpjMeNofWX0HB9b8BTrQokZHbiHe5RDJrFtDapJOp0N
	 fOogsHfmvvxcFP2/WIB65DRHBnP5zloD3Fvt2sGZU1BdNMBToUhKs3JX65PVwYesdh
	 3g4k8bJMhL5X/IC+UhX3Uf5P4ISVnpPTOZIH0KuOpeTTjwdGiuj0pbMRLX4RR2c/XD
	 rtzy/QoECI67Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D66674155B;
	Thu, 18 Apr 2024 20:08:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 15B151BF33E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:04:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2F1680E2A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:04:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FhoU5jSZnaKn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 19:04:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.243.82;
 helo=nam12-dm6-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3B91080E17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B91080E17
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2082.outbound.protection.outlook.com [40.107.243.82])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B91080E17
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:04:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ImFM79DM90Di0yzb2SSHURMHJJ5j+AG0bBaVVa/j0zwOJK0H0Trgereh+F/+JmNbXwL12bM9snL4YhQBHmtELC1BT+xCOFRnL5XDvdg30a3GZmITAGkBz0zq2WgRm9iW6O4/yhxsLk4+KqMiHDweIRAT4rLM8jrrJwCZxWfv70wBPD8oirl9NPmgNrJ9R4FL+zbl/GlRuTXl4k1gK7qpiI+YGimo7F65N5a74fwLOooONT58R9ZuCKmrXwDtPs6wqyk/immOEyHQnkW3SWiTrxg63HSErgrQB/JG17wPph3qNBOIxdUUFiPje/ROZ9qPC+GyqePYvBkhqEIZ3tBXgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Vs/wYZPc+QNXKMo7hSTN17fygPb92qwS9KLE9j02Gc=;
 b=QayP8zDzINORAsLgdlKhEUrotXktdVEqW8+HogbiC1GoY5+I+PDslU2DT9tyU+t03AdCZXu5CCKc+YThHb9104fRSkvireceF/dTSzVaFD/ENQEe56ilfX/EF7r+rVHeYfp4kGsnPlmrabBkfir6CQVCdGExCODTpc3xj9V3tJgU8MgNYDd4Igo6ULCqD2DfyVqS6GHD2HbgMy8c1pDGDtq1JwNs2YgtDH0nJjFsLdwRi/iN1KxYb/YDbCFBi0F/nyS99Y8iCcLr2UfbMYz5msbtiT7ZqbwG9Cca+0carchCPAe8V/WxEJFa0LSWnvgLsTP48u9jf/7EZ4PgAR+s0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by CY5PR12MB6527.namprd12.prod.outlook.com (2603:10b6:930:30::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Thu, 18 Apr
 2024 19:04:22 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 19:04:21 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-3-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 11:57:04 -0700
In-reply-to: <20240418052500.50678-3-mateusz.polchlopek@intel.com>
Message-ID: <87a5lqfq6i.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR03CA0002.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::15) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|CY5PR12MB6527:EE_
X-MS-Office365-Filtering-Correlation-Id: ba74342d-c6a7-48e5-5c8f-08dc5fda5b2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: R9SwYPRjjOszwKSVPCugdeZ6Fgwua5eaE9SFENyHW7oHphONYJpaHZ+fNrbB0FMWJofvOFlgmZxVc/0ekkyb6plGt5aREpDBJ4OChIBJR7b9cRNZ3mZSa6ee7wHIHWjJ3m0K5dm2tgmqTvHLjTC/O85QrpKCWSQg7nRFStLVO8ol3bLkq8YuEUFRnF5T8INTTOwrC209c44+KjZPYvpeDRaXwMVb6635PCXG+6ryj7VwwF4l5/XikBRtRFRtFIQOnh7O5MbzrpvU/Vw4vY+Us3rvyRQ//z7H4fG8RoRghvqf5ReSr+OVtb5Vs1wx8so0fRT2tqu8oSrwUELc2Phg9MstT7e3serwmkL5Emy4V7d5Ow73TvM9zyoKwz8gTEsk0HuDidwKkoucbA1Hx6BlGunlrw4ccwG+Ft4/shod6yoFLHSNswHjyt2yiZAI+ayVqLh264rf3o1eqwkhwhvAq7Gqq/6viJVpVmomiPtmhxmYgooWFnPCIVEdRznFGDC/ECeuvzPJtbeFgcNiF9If096SyuqDh0VgwphTa2+WsrAgGZxsK7sO33ekK91JpuszTHWYqd7ued/gQYxv9Y7WOraPcMLlO+u4/mil7jLcxZcJPcRMw/cnc5nzOF8qFpJc9V27A+lHV1FdfEl2L9C5/7E5hF1P5e8VvXKdC87iPB8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vfzXK/6Ih2edbZ8qTwzcgEDkGCmsrS5r0gscn6mZj6cynQMyuuwBVf28iYlF?=
 =?us-ascii?Q?nAbuiNXFIpoUIBGTHIxRbvOXJXId6x11GbepIZ7kkI/eawxFHsqZx6uGlHEo?=
 =?us-ascii?Q?3f7MctuCE8YB/ZYZJK8+1WY1JBKPk/38A2PUu/J14t91yQMugY5tVhN8sodI?=
 =?us-ascii?Q?QAATL3qm4lYyVLtmhr3GDeDMwlI296bbx3uX70NoRWRQlhC7WIBoDamRc2Jl?=
 =?us-ascii?Q?81Dfg5WuuzNf3moLxlw5YD1ZW4ir0giHAnUOSEjNWD8PnQFqRGqdtnEzKQwB?=
 =?us-ascii?Q?vI3YHMbsvisAX+97v2SvSGgSfCOr3e70cFLNrjEyzKoV/vrTR9ZRzM0nvIx3?=
 =?us-ascii?Q?CSHSL5/yDt176FTSQUNoDDg6crbY8l2OHyQ4TRs57AkZUPPzt9oLWxNigC44?=
 =?us-ascii?Q?u5ckvPpbPt1vLS2jhKFIfCWgZPDpH+1jSM+nxAKQgvEFJ5Izuo1Juryzt/uX?=
 =?us-ascii?Q?iVmIGey1wajbKxmSmJKWGIsKjBmbf+uJEUlOSv0u3Aca2QpoqE5PDP71pMSc?=
 =?us-ascii?Q?/OrI46RlPXeCBI/bQCx0wSEhRSmtp4mBvbAFf6XjFJEMN8Gpqxl499SiZSZ1?=
 =?us-ascii?Q?QYrX/3LUx6BHRIDWNro9pqDhxFsVlEa8MFwvDJUdtCgSTQwyQFfxVYpOKYc5?=
 =?us-ascii?Q?MExIHmzmP5EP9OvVjo6gn7jf6yDCl5dF7fOyfnlg1CWhVMboTqELTQmhZFsx?=
 =?us-ascii?Q?Wh+n1M97FCycSL+IJOgqAZes0RV2R5NOkgyOwkSeK6il9R8dsNVccBNOQup5?=
 =?us-ascii?Q?e2+SCGGySe6yvFzvhtJEtnrVOE/YtMQn056rc+fU+OGQUvlRuXbMK5w+3Nyi?=
 =?us-ascii?Q?Bd3YHtfbVHQgIMME1EQRCds9nC5OZbYFRqZaEDfqnGJhZif9Km6rktRzWve0?=
 =?us-ascii?Q?U50yxEFQxv/BBBHEQ0EKJlmHVDpUMRgKOUjRJaxVqRHfuoblQ9f7fYDwcJyM?=
 =?us-ascii?Q?XKaasyaEbV4vTEiBxhxwBxDXzScm2Zifzx20n5OvgVLL/nHoC+axqex3T5Ng?=
 =?us-ascii?Q?wd0hp4RjX57Zxr38aHZGHNg/xuDzxILxKutGG1QokueIDB7H7utFyoYphiMX?=
 =?us-ascii?Q?c4Mv6xP/EYz87aMX6I5sILFlbizXDhP6+7974sh4dIcMRdbkyxR+Ex3Gw6yN?=
 =?us-ascii?Q?XR8Gacdg6e9LCjNsM/1k5dJ6AlneK2RzLDiGtdP0rMqf7ivUUbOpTjw2ISrb?=
 =?us-ascii?Q?4G//4Y4GV7BS8Bs+Byk5DcuPlMn/qzg358kBT1pPXDMYnM65mxIxjVfOmYcu?=
 =?us-ascii?Q?z97zkGabhpBEH2iyP149BIvfV57DlPkInO/SjsuikdUnfz+UKZGBzym7C9SU?=
 =?us-ascii?Q?KjvF8WkdyIAsAWnizn5vzk8WHZ3d98Ne3KjbfcxMonFsLwXamZF4ooTMyZpr?=
 =?us-ascii?Q?gKgi5sCTts+lT5h8cLOA8sErTVKmALV/hcAHdB4fWvTwQ2bE3fVcAypTgy+w?=
 =?us-ascii?Q?tQymt6ZPBkidl7/YS5K30ncqqHx4gjl4vh0GX6TN6SRbXHLigqXNkXkB5Bgp?=
 =?us-ascii?Q?0vJwYq6lSa9Ir9mV79VZ1Vhd7hsog9WErm2E3YQNUx/UY6Co6O6kMXoRYL9g?=
 =?us-ascii?Q?9/2TzPCb9kkYODVFqRiW5brmc8bXxRuarxncrtzVME7+IGEiySF0wc3wJj4x?=
 =?us-ascii?Q?AQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba74342d-c6a7-48e5-5c8f-08dc5fda5b2a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 19:04:21.7847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vaAJ4MA5ct9gdO++KFllAGDA8XNY96Mkkqz1autnYX27HxB0yx9sBKHBVYzoiJ16JH6PXh58jdvL8uUMdtYXrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6527
X-Mailman-Approved-At: Thu, 18 Apr 2024 20:08:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Vs/wYZPc+QNXKMo7hSTN17fygPb92qwS9KLE9j02Gc=;
 b=q6lBo8Ex4P2KEZo+QqGwerYqvCYP3ZjkEH/i8z8zLIX8PP+3dr78R8JZycgAWMlnhEetmbDp81bTB4f1kmaySdQHZTqvPwAsbHmLee0j5tE6JgiSStx9eoOFM9+u/jAv2FY9NPZCsZBKY3JATn4Xdj/CFBfltlCdj3OvlSB9DsEK2A3/UO0bIMwlhMsjjJmXHqMFaPVihISb+31kEfkdylBz14G5BPcltOoZHdRE3/6KJVxf2E4TyXfHHf50injetnXJ/6AAryUGHTk3PLo2+4cmONZFSzK8sKuDMpBmgvONeDJwv5Uvsi1kQfnQCo6d9fxTU3OpedqSovw5cJDMlQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=q6lBo8Ex
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 02/12] ice: support Rx
 timestamp on flex descriptor
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
Cc: Simei Su <simei.su@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 18 Apr, 2024 01:24:50 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> From: Simei Su <simei.su@intel.com>
>
> To support Rx timestamp offload, VIRTCHNL_OP_1588_PTP_CAPS is sent by
> the VF to request PTP capability and responded by the PF what capability
> is enabled for that VF.
>
> Hardware captures timestamps which contain only 32 bits of nominal
> nanoseconds, as opposed to the 64bit timestamps that the stack expects.
> To convert 32b to 64b, we need a current PHC time.
> VIRTCHNL_OP_1588_PTP_GET_TIME is sent by the VF and responded by the
> PF with the current PHC time.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Simei Su <simei.su@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
<snip>
> @@ -1779,9 +1782,17 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>  				rxdid = ICE_RXDID_LEGACY_1;
>  			}
>  
> -			ice_write_qrxflxp_cntxt(&vsi->back->hw,
> -						vsi->rxq_map[q_idx],
> -						rxdid, 0x03, false);
> +			if (vf->driver_caps &
> +			    VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC &&
> +			    vf->driver_caps & VIRTCHNL_VF_CAP_PTP &&
> +			    qpi->rxq.flags & VIRTCHNL_PTP_RX_TSTAMP)

Just a general suggestion, any reason we cannot use test_bit, set_bit,
clear_bit, etc for these flags?

> +				ice_write_qrxflxp_cntxt(&vsi->back->hw,
> +							vsi->rxq_map[q_idx],
> +							rxdid, 0x03, true);
> +			else
> +				ice_write_qrxflxp_cntxt(&vsi->back->hw,
> +							vsi->rxq_map[q_idx],
> +							rxdid, 0x03, false);
>  		}
>  	}
>  
<snip>

--
Thanks,

Rahul Rameshbabu
