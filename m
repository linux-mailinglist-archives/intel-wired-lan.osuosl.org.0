Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F117CB04F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 18:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94F4D40586;
	Mon, 16 Oct 2023 16:51:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94F4D40586
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697475094;
	bh=39+UV7RK5hbgPvT6wz+PNcHV0EeRyApbHX0Q0S8Gmbs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jSeSx8QgucLnIyVVQgH7XWafNdLFjXDzpX4i6g2jcpXFMEAbw75yEXL0iop28JJMI
	 B+vkSzuXI/x9ZmUGieId788cILR4DUUZPFlHCrjSlqok6jlbLDU8GHCMeEBFVVjE5z
	 o49Nfjo6Xt/C7FXsXE3WinxCpVoLYVbBxSUSfjZSivMyDLkctpJutjnVkTEYEGZ2Ax
	 32qPEHxFG7yuoOxlm1FlMo+X5l2t9HprDPwBrPSNnM03FyE04A4MIeeTRWZvqOyB42
	 JfP+d0CTsW6cO60/bZcOXbL2iw4V8o3+icxoMe+q6ba6DsVPGoWCbDFvdKUzCprT0u
	 FtBhoSR6+tImw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ceE_SG1gpBB8; Mon, 16 Oct 2023 16:51:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 396DE40474;
	Mon, 16 Oct 2023 16:51:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 396DE40474
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64B301BF30F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 495D181402
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 495D181402
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 20zygtzBZI2N for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 16:51:26 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2075.outbound.protection.outlook.com [40.107.237.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9933813A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 16:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9933813A5
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hx0wJeqnp5MHpuR83eivRCp1RyShMP32htPhVQo1cd54HSJ0eS2nBtP35/jnjBE5uE+LNI8HVVMecYYXE2iG/5DwXFjw+nifBDIjjFj38wCBafQ2sb9V4r6njEQFmdmmSxXBDSLF0rlEkpwulfr/Oc4e+61s96jxc7YFeny34FlF+1tTkKjAxJCOombOUUvGc4045nJZL8PSWP/Ust+xuXgm+Uu+zmqnv+cTKmxiSWzB/7GN/4iRTG7VivZzHn4iq+RAfbzOi4IvM6ys9xDYM9aUFk3rKPf0f6XeeY2T6W7RDh/siDZ54rM4hRTPmWRrHcABl7rp1+jXODf6uaQIbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7hjrB42UI9BqRucPzt4wp9dg2CzxPSiKZlrjnh6pUSo=;
 b=RUcU7xMHS5fNp2ERCxSjxv20BG/prkj9RGSWiRJMzJ6Kbj3PZneHWcuugHVTK3fUMH/KcVQOUpPBN9Wj447nnbhVw/IPlv4d+CrpvVooSUY893faFPZJNH2wyCXtNdgnNwcyd5wKO4XRqBE0FBu7d24qnfvBw2YR5Lw1LKGE6BzZcHgNmSl1p893AvdqfSJxyEDcAGf/lY/kxV5kf61KZ6okpZYR4BcgLYiHbgCQUM6D4lXaLl4+Nh+7MxDnBo7e/hMgbWSFbKDQ6lloM876wHo+jN8v3gfy1VkCVGGGTTS1TsD0FaqrVeTkaPasMzYYaTAkBkNS5ryFi/iZxu0jCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by DM4PR12MB7549.namprd12.prod.outlook.com (2603:10b6:8:10f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Mon, 16 Oct
 2023 16:51:21 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::3f66:c2b6:59eb:78c2]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::3f66:c2b6:59eb:78c2%6]) with mapi id 15.20.6863.046; Mon, 16 Oct 2023
 16:51:21 +0000
Date: Mon, 16 Oct 2023 13:51:20 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Yahui Cao <yahui.cao@intel.com>
Message-ID: <20231016165120.GA441518@nvidia.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
Content-Disposition: inline
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
X-ClientProxiedBy: BLAPR05CA0036.namprd05.prod.outlook.com
 (2603:10b6:208:335::17) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|DM4PR12MB7549:EE_
X-MS-Office365-Filtering-Correlation-Id: dcb5559d-01c1-40fb-ea31-08dbce682020
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ItrG8ZQTGrFLgpu/jHn/SvNLQYc7L28pVz5ZfCUbSWRBchv7TiK12ZNmA0UM3GI81Hyk9k84btzPLIWFr6zdoPKfMm4x5Dylx2Vi4VRHTwBVbw1t+KJ48IquWXwpSPEOwNLwzikr/mLLjp0yc9u5scHGP+B8R7dJenOPTJF9yjHmhFNhoMHM+HWRF88GxXZMQlMPKUQBmX99TgPDSPZ80QuCIMomtLpxT/zZdcYZcu1306uRBqQZVus3KkoausE7u+T3FBDlEqCXe/zmRol03JaU7UcPD6KOoxstvbpYeBAdcmUBKtdPf2/Uqfikhib1VftSuyqxDi937/HX9DtVrBjEeGaj9SnY3A2sPT6+ityBwAo3gKq3ayZb0rR9qVGB9SA9WCAYP4dcbp3jddY/CKmXEpJd/RpgoeJbl+cp295VDsNopt/rJ1QJQXrAiLzr+UH/ce/8ka/zvg9Po11niBtptuPfjpzZIttwc4NI4x0TlQxgopsLBFrVoilpSFtqeCDtHizdIy6guXdSri2Lbmtlm12WGi0RFzY+4aMv6bqKrUbwRj0MjdXgaadcN/F4rTm9vBbVzLSkdzbrax8nzd/Up1tqyDcNbw2R6X55IaASaBqcILzSvITj2ECyDHS5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR12MB5869.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(366004)(136003)(39860400002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(6486002)(36756003)(83380400001)(38100700002)(6512007)(26005)(66946007)(478600001)(66556008)(6916009)(316002)(1076003)(2616005)(66476007)(6506007)(2906002)(7416002)(33656002)(4744005)(41300700001)(86362001)(8936002)(5660300002)(4326008)(8676002)(27376004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vSMcOluMA7vwuJlaM3JjNnlt6f9Fp8Hw6xP5FFnyLbnIfuGuuaaM/Lqp1Qre?=
 =?us-ascii?Q?8EJaIzYZRr0HWLz3LSGA6AFzyImToDz8JhvKpK885me6KOkDXF0UHZUmSK2J?=
 =?us-ascii?Q?UF6P86WYAwJqMlgDlAnwqgiP38ZdNKdiUftcS4j5aBrrKPblUBOG9FXfuH6F?=
 =?us-ascii?Q?QAITcOI7Y19I13F1oHPAkFflmU1y+7VEjeDgLxyFAa/G1DMMKWKOIErkmXJU?=
 =?us-ascii?Q?OB33HbHbHk6h578r4ZNsYqbjSfRvAusk3mw8OIgKobVHZO+KqF22jgm3AToq?=
 =?us-ascii?Q?8Zu4jvcV73XIzmCDX0MslvWFyqFcX8/cu1zfwX2XLLHubLdbpcKA52mZjxoP?=
 =?us-ascii?Q?IWVxLOYSHg5TGCL3HG8oOm291dHXIKANfJdQG3TJdGHVN10n+V1XW4qpUo34?=
 =?us-ascii?Q?ZbSYfSpmjGrwA2ZoeQFJCKolbJ2kcUoXgk+dCynZEKOmWvfKuMOXS5KBr4Ei?=
 =?us-ascii?Q?mXEkcRN1eoYiScSS4XQI0Pf8W2EA1U2M7YzkB+tvoBsr0AYqjrg99Z4h0PAC?=
 =?us-ascii?Q?iwO9yEWt+cWV5hM19bab8G2snUaptWY/eHYAfWmiPNYhSapxj4xTyAMIyw8K?=
 =?us-ascii?Q?awm89CKs7pjNYfux00nz6C2jBub7uL8LJKXUFvBfT+GInOkwP9QQznE5KNU2?=
 =?us-ascii?Q?+xCA3YF/VHbkJE8bxDRdzJ6/FPaYDb2TYV20yuDVqzdsKRLIA63pCF3nnfKD?=
 =?us-ascii?Q?WegHsF0Fj6fmVosES0y+TNv4pOjfC8LUeZneeWxwD0Bf9MXCTkKSa3A4jCqz?=
 =?us-ascii?Q?B95MtAtx1w5CfiQk4RTdKBm5OK7+TBwy00mzt2CcW1d0bbRFU6mIkwWIFsO+?=
 =?us-ascii?Q?S/NMSb0sAyx8rG1E2aVkVYCxrZE7uk0YAxS3SaoYbVXBP/GKIIZKgQW9CjvZ?=
 =?us-ascii?Q?mAt7ug1CjKEChgjJ2ZdVK126leHHzjof9GYBRMFFzSqwKRr0fGq5JCjwZD3G?=
 =?us-ascii?Q?nmrFN8L9dJsbO8BYvjMaROdY0j2214atoklYsAZBS42tHErVRCK7zJOKhIvb?=
 =?us-ascii?Q?uLdc1LOXOAMh0GWzYfzFxetaXSwp+dltiHbz9VR/1b/lEiou9JzuVdbWWA7+?=
 =?us-ascii?Q?dwPyMsyOS8Rq7+INAb2WhOPQQaEc/CsbD0kN4HHK2RdDzSsrLWwY3XlQPTkR?=
 =?us-ascii?Q?5PRkPnfCVgUiKnklRw5TBmpmoC0KkLqfxJ1B+Dm/LEPWRVl5M5rosmmwfluO?=
 =?us-ascii?Q?d37QnRvK/qdzJj7TF2LDYKIqRhHiLdBwsyZ8pUuc1AgV8n3F6YQlGR2nbI2m?=
 =?us-ascii?Q?JGZ03bAW0buV1U9xTZUEnVaEU4HE5JR38rdNd/NcDw+YtNl55Wwe7tkh6G6B?=
 =?us-ascii?Q?5exmsAZ5Fs1ncvt0Qe6o4C9rIfhIOtNg5qLHQQrMFWdbdtWWd02HkOseXely?=
 =?us-ascii?Q?QlNAYuKYxHA2/cA+ElIcsNflYnD1Ap9GgHZm46oxRt1hqwBDOAAgpmsCRmnP?=
 =?us-ascii?Q?szobgQBaEdkcsdlVIlTRvBDNa8d3dgB8nRUMYPol2BmnH88aQ6L6JkwsUwB+?=
 =?us-ascii?Q?6bj8Ts5l9RENDY7mupRlhYnrP2G8RMUDEJYSit4pGR9OTGwX3JyX0eECn5J6?=
 =?us-ascii?Q?R/tMgiHoBj5DNW340OE/kvaiNFA009CS82xvfKvM?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcb5559d-01c1-40fb-ea31-08dbce682020
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 16:51:21.5544 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EpvTQH6zwtQrOOggey7rd4ggM7OreSXopFXIaaEHkwhVh1dKw+eX3XtAmPGTtRtT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB7549
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7hjrB42UI9BqRucPzt4wp9dg2CzxPSiKZlrjnh6pUSo=;
 b=uQ5+XCYNYUsgB/aon/azsaI8f/AsTECZJUeh4mxajz7Pv1pAR3tC99VTbHZBtiY+j+jkCCsb7VE/Bj1UMPRxa17PJLT2DdnJ95OAW32k/X1ZyeRGq7dFhVBF/4hfbOE/8/f17ckpc2REHlZd5WIOFPYxQKs8xWkV18ldnnakqFBe3ByoBRA7ZSGTgX/dEEKHK3SRRpQqA3sozaL1Mucmyhu2MrOXiWVVbaC2MOJeeRaTki7eaaX8zeT5oNE2kztfwcGxmS0e4yMX2HCCc2gMFaI1ccXpVQx5z/MISDXn8NXcFt4SBqKUVydCtsMX+8hl7mq2kddb4hkM7l134bElSA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=uQ5+XCYN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 00/13] Add E800 live
 migration driver
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, intel-wired-lan@lists.osuosl.org,
 sridhar.samudrala@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 18, 2023 at 06:25:33AM +0000, Yahui Cao wrote:
> This series adds vfio live migration support for Intel E810 VF devices
> based on the v2 migration protocol definition series discussed here[0].
> 
> Steps to test:
> 1. Bind one or more E810 VF devices to the module ice_vfio_pci.ko
> 2. Assign the VFs to the virtual machine and enable device live migration
> 3. Run a workload using IAVF inside the VM, for example, iperf.
> 4. Migrate the VM from the source node to a destination node.

It looked better that the previous versions, I wanted to take a closer
look but the series didn't apply to v6.6-rc6. When you send v4 with
the compilation fixed include a git link please

Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
