Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C17806284B0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 17:09:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5473540162;
	Mon, 14 Nov 2022 16:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5473540162
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668442166;
	bh=zpfWul2H2B3QZErmtu+ncMleRh5SYXUGv8yntiaLhDM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QviP4XYAx3JeOndtUfarX075oLYGDjoZ1iKkYmOb86TW+3k+xBjcGD7zGduvvZhfy
	 DjFtl6RShGuyHbvd7DzgilmNuLt+1HOjPtuBeCkTIM0V1nRbqsdH3hL1bmPJ/Z56aZ
	 hsUwxBq6htC4fFdoo3EM4krOXW6gnFxxnhGf2+4UBs6Pf30yrOsCWDhd4+Yo1+M8sS
	 +0l/B948MjMUXaxBbXq/IJjgTB/11KA0cPWJlMPFTgx1EXTgTkzXF49miu4C2IWIqz
	 0np8ZMNWJydLAWC2u1fIzx5JYAm7RGHp2UEhtVyHisFeTLlFUlb4nn8LvYK2Tt//T6
	 O98thynmWVFcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PvC_lj_bVwl7; Mon, 14 Nov 2022 16:09:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F0C1415FF;
	Mon, 14 Nov 2022 16:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F0C1415FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 952681BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 15:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72F6060681
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 15:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72F6060681
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l_qPK8uvZ9i7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 15:28:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C5A46059F
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2045.outbound.protection.outlook.com [40.107.94.45])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C5A46059F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 15:28:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h2bPylDmw+/fbLAXUWwAcP8T8/arwEOTZsaa9RS0GDgxUCGckgHaMac1q384xIskOcbHrZkmpiTA4rjmhQEw3IGPMbABAEGvgSeuNwsBmkK0M6OWijRoKgWq6ZzdROX60+2I9to+RKGQhLt6yggN+1DVCmY9EHt9GFYVMADpQwXOT1oUDDgdDi+5ObidFVkpC2ujUa/3ZoP5XQD6Vvi1V4JB8CoOHzIY4nuCJcOA6zIRnTZCUsMi40cczuM2lqioF26jwXCk2jwM90EKWSLNhHr5e3j6RwEVJudJ4Gtr4AYod3dB8q1z9w3OX9BGORpuLHSwY8B7BlK7ffjsdd6+kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sEkKuiNddioMGP1g/ATHRypsCCvUAU2QJDlxOhMdyaA=;
 b=hdv9jVvVe//365TniETR8gYrc49SCS2vlSP+Ht+B+w8ICs51oXMVbqLqh8Hhu9PNplkqWBi8N/yw28pHk5t8/kqb4TXgkbpaJmqiGbkZWYdTjfDfBgwYX6Em8hhWMX5kQTqyHEkcNKKhI7ud2eMExhyWE27BDJXsV0mHHJKqo+wt55xgib1Qs5LblEEdaOAjUVou7JJF2tfNqwb61TdkVWQUlodncTBgp+5Py8i2jHmnQI7At5NynjXWNdQA5JdkhU+z+/8bb8TgohBpqNd8hqqLlgmpe1bT0FRVna5F3sy1dV8TkzXUMUwHkHTg/+GaNlxdItnZrmCfxQYtOV/GXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MN0PR12MB5979.namprd12.prod.outlook.com (2603:10b6:208:37e::15)
 by DM4PR12MB6112.namprd12.prod.outlook.com (2603:10b6:8:aa::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.17; Mon, 14 Nov 2022 15:28:42 +0000
Received: from MN0PR12MB5979.namprd12.prod.outlook.com
 ([fe80::62b2:b96:8fd1:19f5]) by MN0PR12MB5979.namprd12.prod.outlook.com
 ([fe80::62b2:b96:8fd1:19f5%4]) with mapi id 15.20.5813.013; Mon, 14 Nov 2022
 15:28:42 +0000
Date: Mon, 14 Nov 2022 16:28:38 +0100
From: Jiri Pirko <jiri@nvidia.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Y3Jepn7bxkCFP+cg@nanopsycho>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <20221114125755.13659-14-michal.swiatkowski@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <20221114125755.13659-14-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: FR3P281CA0068.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::15) To MN0PR12MB5979.namprd12.prod.outlook.com
 (2603:10b6:208:37e::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR12MB5979:EE_|DM4PR12MB6112:EE_
X-MS-Office365-Filtering-Correlation-Id: fcde5a1a-6226-461e-a1dc-08dac654e955
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zSaw3UMHJoCTvaGeJYvJ0xsMnypsWv8WFAmfz73+HYShcQu9j/oVV6cfESmrQHuvP3tZlomeZX+a9FTxLVGEzA5d70/9hGFlWX50bIV/APve/ZPJ9fy+fQegCVC5/G98ItkFuXWzobp/dGOmH2tgfN4H52VwUt0JCE35X1VUlS9TEXfv4neCOyJlYWvQW4d+Ls3JnzHajP4Vi01AQ4FVc22Phb8+i9HuyPVwDU9lfq5J9/NIp6qHUawtITIhE8cGusV/Y0QlKzO3blbDAilJMjpej4AU+koRe2bngRGLShqBPbKjimLFrDjCsXvj4r2nM88gP6Iuhvhk0ESS27njMKxPoSHZh2oUjhraKoGr/JoUmFf8PdKnMYSG7793+Qt1nj9mrg8lMfdW2kLG0SEtrvv8kr4o59c5vjm7eTW+z5EKmZrKLGFp5kk6DcBszGbiapLz6HfI+0lXqIXCMQ3PSZHjFulTobFM6cbiOl+xxDWKv3y9uLE/8vKjvRQqsr6DCOnv4PymyxsF7+UdQFFlx/kPaFdBe1lmP21hl1eqA3MZSb5MceiD/YTqjXJcPmy1LxGnbYmQ/EX9h7hegsVA/VLahZom3sBh3UDdxXhgNa98bcaU+tAerda2YOZh02lwwCciOiO5K+XxBCs5WLgnQGboErDmfEm/550bxbBtYeg3dd0AlvYj0B2lYobDbHOAq4OsLkWXy91t+2qinvLUjHonnt5SDHTxq/VdS7QY4wZM6pKUMBcmwy14tR9ccnDG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR12MB5979.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(4636009)(396003)(136003)(376002)(346002)(366004)(39860400002)(451199015)(86362001)(38100700002)(33716001)(83380400001)(6506007)(186003)(2906002)(6512007)(26005)(9686003)(4326008)(41300700001)(7416002)(8936002)(5660300002)(6666004)(6486002)(478600001)(6916009)(8676002)(66556008)(66946007)(316002)(66476007)(67856001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1pDATQlH22U6HkQehY8r3Ga2ZlX7dL+f7A9XKFyCBrVpt66C4C5cYU/bXPeo?=
 =?us-ascii?Q?tM0w9wPanFfS6bpEkeJIE5ldKg1bhkRMPsNniZK79t6bDbKQusdv7dezS4Z5?=
 =?us-ascii?Q?qsiDuq1n3a2QSGp8jB9G5TPRSuYo9WxNYXrBG51KNA+7EMUfyS41y3vIZY6/?=
 =?us-ascii?Q?8ZnejniTbL52hspqwskmY+/OolF9JhPFZetC0xr8CqpLT2krTMQ8KJwHHwxi?=
 =?us-ascii?Q?mbebxQ0r5BWVPhPUbJI+o7Ozy5tpE2JRRyPxtgSFCYXiagNaJdf7bDQYK7Ri?=
 =?us-ascii?Q?TAL5RBJNgUricy/MWQ8R/hAftbKVszlhpnVf/ApmGweeKz87V3KhRDLCn+Gs?=
 =?us-ascii?Q?RuMyCyBQWFLlNIeSkp2a7AYgZVCOeeDZv2lUGocZu32E11QaU+LdXjnpnz7T?=
 =?us-ascii?Q?YY/vQCeNLBv5Xgo2XupasRfb3knaMvhHktvWzEjnrHhFtLeWV7WgIcbFi/fS?=
 =?us-ascii?Q?AxfEuHGYkY1JKtdGZu3wMCZ3hUlwuoohQsiISdo0P1ohiN8fAQF3o72hRlDt?=
 =?us-ascii?Q?4/Yy4V+hUZHJUmEojGKmk69e5SrgTASfGpla4vxLS0CWHDF5pfFCnehJU4m6?=
 =?us-ascii?Q?olRLXRHDC/TJhl7C/C3m0xa+lzjGuDcdRwyApi+emXzpDrnCf9CzWwJVILfz?=
 =?us-ascii?Q?fwDOAEqLyX4o0khwIh1+Xs0CI38FNQDrto17nv6TSN8CCEWo8GIN6RO4WO99?=
 =?us-ascii?Q?WoqldLVLfifEveVQmYHF51AQdVOfzJxyDCt8h/QfkRnwmzu5x8TYZF9swFPw?=
 =?us-ascii?Q?dnZJ6QKvv2ECPSUImLshtstAfBsOtarIMX3c2t4X4pr2faVTueerIuUeVOJY?=
 =?us-ascii?Q?v6jrnWrc1zZMNkl/fMM2nUlyZoZN30v+P2LooOm1wcKPxKlhApMlMqw6wi2o?=
 =?us-ascii?Q?MVDLMPHsRssBhxpOyMtNvgoJsl3G/q4A0ULofBWWOLxLTqx7aokUBhKq+LNw?=
 =?us-ascii?Q?6/MpZdZQgLd8kPcMVkzVWhlOuj58nz5/+t1B0O1nPhCwS8ITFMF6vX3Ox1S/?=
 =?us-ascii?Q?NkkbAlkZFzmpSeG5ED4rI0LYNiWn0WKsi1A76pPLTt0l8Iz4Ez6aJtT5eEQk?=
 =?us-ascii?Q?NrgX9CnOi8Fzhk8xQu4QMwhoPLV2mHqLB9VCGcAXhuDxpz6zth26iJhWSZIf?=
 =?us-ascii?Q?8iMmPQiGI29msTmIIdN02hmu2BMGg/nft2M9P4JVa/VAh/HtnpbDbqmLlkqo?=
 =?us-ascii?Q?6HlhTvTMYSYfNXpL4OJdBZQz2oV4VLc/ke/Q0/Zc9sV9YtS/UySEThxl/vaI?=
 =?us-ascii?Q?0hFjqcqZ9Hma39Sz7fW5G2wm2k834w5SE4QgCeY8J5wpfHexqBU+4uKT5od5?=
 =?us-ascii?Q?1m6l6Yt0soheZiuzQVuDAXDJNaGwG2eQm4aj4tXUCJ6GXG4VyRMdepBAmxJ3?=
 =?us-ascii?Q?IiG0AMSzQxlrcGdik261yqticPMYHmxvHvEpL1BAnR/JRJ+hzCAt2RTy/wdM?=
 =?us-ascii?Q?HsFAbpH7IZITfXI7PqUvRWsL23kQsO4D0mMCkB/rqCbbgeKRlsD+dD9iP/Rn?=
 =?us-ascii?Q?8/E838BEM9n0YLv3lMI4+qdfcwEGnd+JTIbdpm3a7tLx8Yp2OMeDJ4l1M+u/?=
 =?us-ascii?Q?UcqfSQuAchLM4elKSck=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcde5a1a-6226-461e-a1dc-08dac654e955
X-MS-Exchange-CrossTenant-AuthSource: MN0PR12MB5979.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 15:28:42.2476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R4Qv49jTgU3wTEMXe1MJ90yLaAKC/SGnUDDFsHlNJBHebJtFyekVyJq1CjBi9yij
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6112
X-Mailman-Approved-At: Mon, 14 Nov 2022 16:09:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sEkKuiNddioMGP1g/ATHRypsCCvUAU2QJDlxOhMdyaA=;
 b=RFu0cAZ9AwLvNewAas/OHA9gx6VtgXdaT9z8pBgfdRPRpKKRRKfXcHWTuq3N23rItZYPOguI3pW5Z/NmzCtgmBdTocVylqDtMcNjqeZld0uYpSNyxnDiXRxOtxrsGn8JbfZN8ypLYid23UoeuKVGE1DfFEQANjxTnIN0cDubuIpaS4FGsdLh1vqjwwzvp0PsmpxFnK0/FevSBaykbgFgKoy24EUnUecAxyrzzyU+uWoT+XzsJC5kZOc0J8gw9x064hLuL1IneRZ/Xn+cbopccLpnUxdLQF2a7YfouIbMUDbXUCVG1aqM5DpPWLAGTswsM+v+Ptq65nFUTYDSIqGqUw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=RFu0cAZ9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 13/13] devlink,
 ice: add MSIX vectors as devlink resource
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
Cc: mustafa.ismail@intel.com, netdev@vger.kernel.org,
 leszek.kaliszczuk@intel.com, przemyslaw.kitszel@intel.com, edumazet@google.com,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, shiraz.saleem@intel.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Nov 14, 2022 at 01:57:55PM CET, michal.swiatkowski@linux.intel.com wrote:
>From: Michal Kubiak <michal.kubiak@intel.com>
>
>Implement devlink resource to control how many MSI-X vectors are
>used for eth, VF and RDMA. Show misc MSI-X as read only.
>
>This is first approach to control the mix of resources managed
>by ice driver. This commit registers number of available MSI-X
>as devlink resource and also add specific resources for eth, vf and RDMA.
>
>Also, make those resources generic.
>
>$ devlink resource show pci/0000:31:00.0
>  name msix size 1024 occ 172 unit entry dpipe_tables none


So, 1024 is the total vector count available in your hw?


>    resources:
>      name msix_misc size 4 unit entry dpipe_tables none

What's misc? Why you don't show occupancy for it? Yet, it seems to be
accounted in the total (172)

Also, drop the "msix_" prefix from all, you already have parent called
"msix".


>      name msix_eth size 92 occ 92 unit entry size_min 1 size_max

Why "size_min is not 0 here?


>	128 size_gran 1 dpipe_tables none
>      name msix_vf size 128 occ 0 unit entry size_min 0 size_max
>	1020 size_gran 1 dpipe_tables none
>      name msix_rdma size 76 occ 76 unit entry size_min 0 size_max

Okay, this means that for eth and rdma, the vectors are fully used, no
VF is instanciated?



>	132 size_gran 1 dpipe_tables none
>
>example commands:
>$ devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
>$ devlink resource set pci/0000:31:00.0 path msix/msix_vf size 512
>$ devlink dev reload pci/0000:31:00.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
