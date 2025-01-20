Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF87FA16EBE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2025 15:48:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74B5960F86;
	Mon, 20 Jan 2025 14:48:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PqlQHRTBbL7M; Mon, 20 Jan 2025 14:48:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B92B260B0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737384513;
	bh=7xnP0gM/xPr0BCZuF0jpsM0u2zgp/scIzL5Q8DvzrAs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ml+wDqmTWfSqJrsBHDnFZ4MNCeYtk3u+l2UJzvQGlZBQRQ0j/gHhaGf8ueYL+eu0z
	 7455NqXENxP4Jcvnl1SWjDOmjtx9oe8AHqnJiWOtzmZduQeCBy8BJQFFldu3i0t2mp
	 q3glOR9BbXkM/zOOL86cBMB0qYAajBjqV5YeEVCQK7am+DBJGhlQ3TOCXAz1PItdXS
	 ig71jKHbXP63Fs7cYVq1mbluXEKD4GHZ3zXeNS1e3e+xCca7ccPKFMdGYThMq31/J2
	 lfQlfq+hoAObWv1Snt2k+U1+z54iDQz90Qq1HhaUNpnIztiomhtt57fFCHw1FHs5/M
	 WwqimdUh4Phkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B92B260B0C;
	Mon, 20 Jan 2025 14:48:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D3FFD959
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 14:48:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1B8A40300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 14:48:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KDVi6qUrfUcV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2025 14:48:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CF9CF402B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF9CF402B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF9CF402B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 14:48:30 +0000 (UTC)
X-CSE-ConnectionGUID: HUfVbxErTKaVkJG+ebmVHw==
X-CSE-MsgGUID: aMg1aePWQ8WgBb/+7S8lxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="25381893"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="25381893"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 06:48:30 -0800
X-CSE-ConnectionGUID: 4TdBiv2IRci24NhAOOVEgQ==
X-CSE-MsgGUID: 03H40J3+SB6R5ET1XbdNRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106661666"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 06:48:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 06:48:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 06:48:29 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 06:48:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CIT1/tB+q+g6t2len/e4H3FBOKBrgo2sGd5+tSbDHmLbQ4YBvdOJXxhN6GV+61Rkp6VTR429d6b7xbbI0tlHbxKIMBoUQIYcwcbLufOX4m7NEqgcHxZCsqORsBoTgdTWNSoWRmE4i79qYcYDMEfNDjrjzcs88MQ/zMiNgVYeFZ2450IK38qRW8TUMzKNKn22GX3qLU4Wgt0mkiSUu/dpMQCaUHwjhM2IgGPovomfUL8oXo8IGHEIXmrFosw7IFa6MyGQbvvXhs1dmFJ4MuPmEnLuupTprUj5YHlR05wMMvHIk45oVTVsiV0i9kQ7hhOG1qxV7A5AW659DzIL27tTsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7xnP0gM/xPr0BCZuF0jpsM0u2zgp/scIzL5Q8DvzrAs=;
 b=Ga0bhawjDNm2rwHcrwnG2+PFZkbOebIg/zMELpNj/5KOip+vmgWeeEXSKICF0ZkXAZlKk+jztvPeIoAPn6E253HuAti1CjO5f9btIdDTn9VGpnvIkcbQr/HBUghDisYwoQGHWhvLWX8XRkRXd3CIVcjBRqLAHL0F70+AHikkZOWB3FYXmxc+wZteNIJVQBGg3BdepNrIE4BTZMa/x4qpxmcF5dQCpETeOYvImj25elxgT8TX43S6ah2Y1ME+u6TNgSlqyAQehRds27E4quFRW5Bsk7tUkYAYKlzAW667RnZJCi0odc4+Wh1s+prawmFgURija5S73S4J2EA395FCmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH0PR11MB7660.namprd11.prod.outlook.com (2603:10b6:510:26f::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8356.21; Mon, 20 Jan 2025 14:48:26 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 14:48:26 +0000
Date: Mon, 20 Jan 2025 15:48:19 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Z45iMxA6bBMoLSQ5@boxer>
References: <20250117151900.525509-1-maciej.fijalkowski@intel.com>
 <20250117132208.1f87a2dc@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250117132208.1f87a2dc@kernel.org>
X-ClientProxiedBy: DU6P191CA0056.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53e::17) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH0PR11MB7660:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f2acf98-0795-437c-f2b7-08dd39617f11
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4Nz2hU+fXL+JYzohgyPdZDwGp6rHHyvxWlstA63yVpbq9ArjhJ3U6F2cwi16?=
 =?us-ascii?Q?MN3o2RytxVCaFtinLLi4qbCukK0xHLlbKME4tvq8wObu+WZPkYTxZc/G858u?=
 =?us-ascii?Q?oSGIeE0oYY81J+rv3aNmxGYrIyK+F0RrlzHEjDMTjbZVEi73H7FkvLbJ1oVX?=
 =?us-ascii?Q?Z1r6fE1E7hlPv1vayNJZxr5lYtl9ENfWQHGHM2ZZYjqHC0EtniBYE8nWZgtR?=
 =?us-ascii?Q?FgLj1T8C/9hLbZC+nC78m9wmXiyRgfAy5AIn0rXmlYkwusPsM40V1DSC5PfH?=
 =?us-ascii?Q?sGwYGgysfbvoXmGuAbj/sqLZ3z77y63NnZZjSDj07eRdc+fRm9OTwKaf6TUX?=
 =?us-ascii?Q?oDk5B6kuTQQmeROfeaB4aRAdKT4LD0Xry8y1gRrhkDciLkGO2n/GcAWJEDpA?=
 =?us-ascii?Q?rzdP2npihMz+vwTjD733QK8QxfZHz13L8rEy8aElff5i4GqLD9vTXl+NSFb/?=
 =?us-ascii?Q?jp3k+fpstxpiekxyEKRAxI4vT1vmiw3V3JPZ+1HVUmq0YD9cmzZ3652MBXzk?=
 =?us-ascii?Q?nvWRhMaMXDI2FdzDYW/YC188HTbwQVmjsjKOlXxThdBJlyV5Q6ZhdRY7CwHf?=
 =?us-ascii?Q?valUsTVXgt0KPas0S2OuCy3fYLEmeNAZWABEcT+bMMDWh84D+MySbfWP45J1?=
 =?us-ascii?Q?WcoVYil02ck7Dwv48YlCx6uNT8bf17y9yI4WLy2q/eC+ftuYaBQg+kBCV64H?=
 =?us-ascii?Q?3OKd1PGe+n7I3orCSznyVxoOVtSH5I89uLVUoyNtBiHhQlJPKFgqbTU6uP+l?=
 =?us-ascii?Q?gPBOVWwcaLOOH8D5hewL20QVSxmYckA/PrF00AGXysieTVwV4L/37IjTyoMq?=
 =?us-ascii?Q?mldFrDejdxoQ4QvfMH8wSdes/Z7LiWtx+8MuE7vWMOZUq6QLW0AWlmJwGf+F?=
 =?us-ascii?Q?9CDjRn8DwUdyu4lhZ3Q6Li3PPrQR/TrT1oF60TYMAdMlfV7UwEX54+DDudBj?=
 =?us-ascii?Q?CRNnl024a9akasvfmj696nsEAJlxHIuZFqx8GZ4AAo5kIPrSUZuXcOWwiGss?=
 =?us-ascii?Q?mVrd3GaEGtzC1baez2DQDniilIKlRYUuIzGmle1nwi7kzaTlbVIJCJShy9m/?=
 =?us-ascii?Q?1xp+UMnsu2DqORai2eZE5vl4phM6kg0Qk+qa3tQU0J/o8lpfVyw6X7jhVWS5?=
 =?us-ascii?Q?VEtANRTWFuvp+4sHSIFeBK1fahfmaWYdj7I5oej85HxfiK7fBQ/jhXNb+dJA?=
 =?us-ascii?Q?ejKtaNwTE1f5edR/YqE+l3ZZzcXSX0dPu7927rVeFwyNepGgAhsCnprrUaGO?=
 =?us-ascii?Q?Hqr6LusWCfLpiatlFp4nwPzMlaphJd4XzO9d6uzuOiQqvXXp2rJY4LRD3fqy?=
 =?us-ascii?Q?gC4ndrmMO95WPsVmaIJJiqNT89yvPTnOHqqxNcmwfE3jhD72iEqJlZhv8jI5?=
 =?us-ascii?Q?YIrovWtNWziSYZoyUOv/WYqpFUSU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?r/ZeLkU5B+Rc9H5y07+TqvUwcNJp9gJb2vYknbCeSxyTrRdQ8X76cp48lmDq?=
 =?us-ascii?Q?ahuCnGxDLRlQnpd7ip9qrI+n4Nifqizf24vt4rCwKeRVGPeNYbFgE4e1oH2r?=
 =?us-ascii?Q?P94/bM5ypDllXGFocyw0HS4aWwSMjJPIh8G6jtUqKt7e6Uqiy6PE+84K7ZaF?=
 =?us-ascii?Q?khfidRBRLzgbMs5r3Z4c3/OQCtJ3dytvxLgv0m4JFTCFFUbDYVkabEq7S+jX?=
 =?us-ascii?Q?XtMp6Ab+enFiZSYUb0yCktQ2rf7JNWIFqJ+hX/lD6SLGB63LkGTncnCpINI2?=
 =?us-ascii?Q?LXP0dCp+3tu4uHFm/PS7IleJoktnQtd2q5AZ62KXuoeVlP5b7ro7MZT7Ki1/?=
 =?us-ascii?Q?ZzKrTNHhpH5u88QN7TrSFeZ9pcbyW5M7tk+HAWRiKDbJ2fXz+9nbIwyyn1PU?=
 =?us-ascii?Q?Lce/jsi26xnfzy/3NvrVAHnob/Arfi2u58MDU4Hfp854i5pGUcZ/ABj0BReX?=
 =?us-ascii?Q?RudzXykZU4NHx/JVaukKDNuvRSeB+YOCAUrZQNlGEeqlymFam6tJ8Yt4gz6Z?=
 =?us-ascii?Q?TCyvRra6eAXDd9Cqbbg2QF2LkZbitHkFs14hNQKSpxJ/BYWdbf/G24y/oswN?=
 =?us-ascii?Q?xVO/MGI7JepbQk3Ab8tJHqJOeavOMrilyPzaLUhbQIpPMlCzDdAcW5xCEKjb?=
 =?us-ascii?Q?B3zTsnUWeP5gooBxnPw1YFaCysn4u2WkGXzde9rOSCAMRzFPW+6kwq2HmawA?=
 =?us-ascii?Q?LeZrmh8+GNBw1aGrJQlTHR+GPxEYOLiHOYT9TGX9cwLrFZEzRYAP8H53DlzM?=
 =?us-ascii?Q?HGsbb6j8TVunMvBX7BaVmYn9sMTdGFIKNvGDx48/Sc7R+p1NgZ/EoDF8wi8G?=
 =?us-ascii?Q?XI2CyqYELPM30NlWqj3Ydj1WnnUl4z2rHGnKsyI/OeiQoebhogV9U81qrAag?=
 =?us-ascii?Q?PBQcnbTkT1HR9cuzvVgQqfBeSYnMVAH3BEBbgkJkbvRnkrAd/5qwu72m4J3A?=
 =?us-ascii?Q?tNe2tOGG7F4tzplVjJZeP98nb4w7Hm4Yk8Cq/Q8sZwnIGPUnDov0o+MQBdhM?=
 =?us-ascii?Q?pbK9l5budY0Mdz+pt8l8vARREvCXyZ8dRZWVwyIpF/coVC3IamR0b6Rb7m28?=
 =?us-ascii?Q?ALbqolpMoLV/Jw4UrkTssdYdYufn6aMnsF7mHPdr34fIzTP6QPKTHzqT+hBf?=
 =?us-ascii?Q?WfOHXy1WyXd+fOsDt+caKYTmsmbFVWanwLLL1LkHjtRxRvFmpPtu9Vjt+s9Y?=
 =?us-ascii?Q?n03Q7cr7tzmP01/OOuHoydyYYFMU91PfO6E10PTR/txdjCcwQjvZF5iwugSb?=
 =?us-ascii?Q?GyBBf+CFi4xqhMK6AMECTf2mTLwOvXJNZgKWu/sZJD/rQGXNsoQjexlMWVMy?=
 =?us-ascii?Q?kxPPLsyEqV8yp+PFPz33JV3mL3Xdy6EZEtrTwqiz86ZpiEF7+g8nJ2URlCkg?=
 =?us-ascii?Q?0/zGdzyMrwZm5efqmY4C3/aHxz0zQWJ5xurER3aMcxig4h6kYKNeTt8UO7iT?=
 =?us-ascii?Q?d7W2XdKdUdd97ShGyvLfVNikK2AC6UbqZnz3KEP64QxkjESN02+TEADQbTBL?=
 =?us-ascii?Q?uRESiTaDO2fTBo9EQAjyL8ckoGdiEs2EVsq+8FcQBamGin615vndikrzt79M?=
 =?us-ascii?Q?3E2iDE9rYoLLijuMlgIpJG/4Twdu42Au1yFYJcdZC94QhzhrDp9fYw5IPxQb?=
 =?us-ascii?Q?/g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f2acf98-0795-437c-f2b7-08dd39617f11
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 14:48:26.4054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oQYZo5vkl82WHEeKre7A+2PRAd4BGHmEr83F9XIabbokNky7uA4U5kyy6BfkSqMCWxDsbmhpXnfYvqr1iTfRhYUx/ZnYBxPY2lnDvWJrcj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7660
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737384511; x=1768920511;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=H/ebBahQvH1Q0IPtaFsQ7XUsDvuj5TYzousFYg29aUo=;
 b=H9u1yeWBSf6r2haf7ha/sGz9qcnmxCT00Vz/LQrgW4pyQ77RmZ9gW8Sa
 MiiSAo+mWcgmaaoUmvHog+cYIORg0oKv3qxUnCGUtDSoLcVA0PFkgDIa8
 ffw9ewW3B5J7bsqV2zOC/IRtLM/ueWfpjwQGd0GCzfQgXXQIT1rHFWv8e
 Txnq0LwACwZFcqaIhaLFBu3qiTm2mafYl2OAB1MnaxWhMEyPEGMSOmg3t
 4FODRSlZGG/TSr/EO8p1YFlpPZnOJbOExJzPWOf6pk/2UWjgSA8+x/6IE
 hNj0+g12rmGGqTUdzgBENhpFeRg6HGtIPCjo+oBziNz0UrVcuHmD3sICP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H9u1yeWB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-net 0/3] ice: fix Rx data
 path for heavy 9k MTU traffic
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: netdev@vger.kernel.org, xudu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, jmaxwell@redhat.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 17, 2025 at 01:22:08PM -0800, Jakub Kicinski wrote:
> On Fri, 17 Jan 2025 16:18:57 +0100 Maciej Fijalkowski wrote:
> > Subject: [PATCH v2 intel-net 0/3] ice: fix Rx data path for heavy 9k MTU traffic
> 
> nit: could you use iwl-net and iwl-next as the tree names?
> That's what we match on in NIPA to categorize Intel patches.

Not sure how I came up with my very own tree target. Will send a v3 then.
