Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A3F8FBEC5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jun 2024 00:19:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BEF68421E;
	Tue,  4 Jun 2024 22:19:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r3SZickPnqrY; Tue,  4 Jun 2024 22:19:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C36478420F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717539592;
	bh=z1WSLxOB5P04GFjJy/EPk/vgTGa266UH9uHi5DHY9oU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BaQmyHKVxViAN4VuWK64VYgHUot8HCwuxvniAEP8A07rD/gXnF95SjzHm/LdsZ3oU
	 as3b1aiIhqYZhUSxAdQZ3fDANLnx0vBG23IPPK1k8l2FmS0DBs8jHcqRvOWwG5E3CT
	 yhfxSIdARIxpQ6AYj1u+NeUsy15BVQiu/V7RIFxFEBb2n7DrMY1YyWA1VfGwRdg27+
	 IXOotrggmuH+glLxEQFFtBrBb0ZLfbwY/bMOyNF0d2kEs+GYD7yepm5TQHZHfjIQKB
	 a+41gBS+qqHeOG1vg/cA1fF6HpEqXuYTN4+i/gcS6qaKoziBQsfNBcMkuWBi/84zy8
	 WLGwDcbBHlbaQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C36478420F;
	Tue,  4 Jun 2024 22:19:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FF1A1BF409
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 22:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CA164025F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 22:19:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y19CUEAa0cCu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 22:19:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.101.87;
 helo=nam04-mw2-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 653B140136
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 653B140136
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2087.outbound.protection.outlook.com [40.107.101.87])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 653B140136
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 22:19:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GqgcdyUOoC24x0/w1l3jOHWyNXNZMsOb6t3Rq7JWGz7X/1Ilb4z5JR5aD1waFV6EOJNXT7jZSSe8qCtvooWTniW48GUUZn+oL4oTFCF27g+XyME8A74xQnpjwEoxhFHsbpddlq7G3DNzdnBQetGk8HaCbSUwvqxkxji7vQsbLGOEJpLN36EhjoVSbWWqoHIKrJKswsuyEzplcYoYZERgmfRxyThGZ0X3vxn1Rk73gLZNvXSDJc4uE0lOLuLpli9trGJcqcqIqFUx7lYEic2Z5scIu30d9T2JFQYDUWX/DqDj3d01xRSnzVus1bn2ehjfNPmXb6kpKyUR1LJ8sKe6wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z1WSLxOB5P04GFjJy/EPk/vgTGa266UH9uHi5DHY9oU=;
 b=lEk4LwdhNtRcDMfFbfKscXqQfmVE+9YXXhpsihSD+degJAm4kiJ+BM8mQQZ4YAAPeugHgTZ6YlPc6a9kvAGwiBMM9TqrTECmVp66Ki5ndSX4yZqocwPPogL6M0Khuk/oNm17UiZp2Rpcv6Y5JHyZaH2Zuc4UEBv178j2/203mUD4pszqncv96OaCmFH+an2b0ubHXGbgN4WL4uoW6gs5MOn7tn+d0JBq6aqWyXeIl5LiY3+FrKXOjRv7VYLer/kpfgSNSkaGPUHnONLSy9KJ15d2cN72VNd9ubN8BhmAIs91l4OwnriQDt/AXDHPQ45IvLPx1n5UARW6Y+PRRHMsnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB8775.namprd12.prod.outlook.com (2603:10b6:510:28e::19)
 by DM6PR12MB4234.namprd12.prod.outlook.com (2603:10b6:5:213::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Tue, 4 Jun
 2024 22:19:45 +0000
Received: from PH0PR12MB8775.namprd12.prod.outlook.com
 ([fe80::bce1:cfa8:f5cc:dcfe]) by PH0PR12MB8775.namprd12.prod.outlook.com
 ([fe80::bce1:cfa8:f5cc:dcfe%7]) with mapi id 15.20.7611.016; Tue, 4 Jun 2024
 22:19:45 +0000
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20240604221327.299184-2-jesse.brandeburg@intel.com> (Jesse
 Brandeburg's message of "Tue, 4 Jun 2024 15:13:21 -0700")
References: <20240604221327.299184-1-jesse.brandeburg@intel.com>
 <20240604221327.299184-2-jesse.brandeburg@intel.com>
Date: Tue, 04 Jun 2024 15:19:43 -0700
Message-ID: <875xuocpvk.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0016.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::29) To PH0PR12MB8775.namprd12.prod.outlook.com
 (2603:10b6:510:28e::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB8775:EE_|DM6PR12MB4234:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ec42ea1-2e87-4875-0969-08dc84e47006
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SYg38Mpurh9wKoYflyxV6qVuZa8+loALOxOxlfiej/e2O1tSOBi2H+YoPTT8?=
 =?us-ascii?Q?FwJ27HKcfZVQMqhyopT5b8uefXjmGKM3PBHxxMrv3QmsjsOh2prtvJzHXED4?=
 =?us-ascii?Q?fW8Hf0p1CnG6keikHgQ3f5bURP3zT7t8WUqWrP4AIiByB8Yon4PbVRdlaOu3?=
 =?us-ascii?Q?RmPsbH2+DGtrAszAnjGKjadd/eRERvvDIRlD0xzd31wOo7jKW5Pj+u7Louin?=
 =?us-ascii?Q?AbYIQ+FQV/U2zFi5smtd9zZyp5Vzj/oPIJIwb5u42j/2lhbcoXBx52sGgVmT?=
 =?us-ascii?Q?VKvM8Xx8OQOIi2//rVh+VVxP1AGEyDEw7Yl0spnhEYfu/9X3AsgAKT+Ck7nM?=
 =?us-ascii?Q?WFPn6OJml0jOmcEXDWE9yWbvKX0bJODq8OxlulsQiE9DyQ+BNgVhn20d4Lf5?=
 =?us-ascii?Q?DbGtTihxi4IiqbzOz84iOjzo3++TdGq9Yx3z69n7D7O3T3n2qhljZ1qhHIqt?=
 =?us-ascii?Q?nrJ+jBCOKsDRSuf9xqyMPulhSEOnL9sYL+iM6yg5jqMWMMlPHNS6wTeSFUoh?=
 =?us-ascii?Q?m4yHoihsptNOVF4h+GzT2SYRoxL3aBAB2y1SLaAeQ8Ls/ydFZjhPXorjg8Ay?=
 =?us-ascii?Q?omT0Iig1vAMXytAPIzdQ3ABslwbY5ubYSYovA0xJ39C4xgVopmJdm3wQl+JK?=
 =?us-ascii?Q?W6QQtPszMZqSzDoyOCZgLLoMFzydJjOHAfHUWosTuCyxl+lKbzRZHKy+Qqwq?=
 =?us-ascii?Q?EJsb+CvipmwOod1xAZhGIcfTu6PKD1OxVAPMGDQqRn4X3ZtJ3CsLWmkyq+/T?=
 =?us-ascii?Q?0+HGZl9rstHSIcjgq9HvfhAXj6bu0/TBb0jlWwdv6KlvcoiTrcmtopayEYcE?=
 =?us-ascii?Q?eSzkg6YkFlhtJJehAtfz7Kq9EU9G9QK96hdZ4YdM09Gw5z210YZV3Vu3ukXr?=
 =?us-ascii?Q?d7kIIxzluo9n3vUcU/5xZ5WfZXD7lEJTLOQNOcxLJAVQCAzo1FWeKEQMWYL9?=
 =?us-ascii?Q?Xf1XrlPT7NaPcmgflN3qn68UiNLJHHpQpJFtDm3/BeOdCkbblWWn+mKvj/Gh?=
 =?us-ascii?Q?j+E8RFtR+M4NKczAxPLaCAVvIcKUlcvNhzPDK1QGUk+d5XZ+EAiz9B2fXP9z?=
 =?us-ascii?Q?O/0S8EtYwougiWfXDg8bVL/ga4rKSohEFf4Mt2VpJ2ZBg6fcAPbv2Ku0ZS6h?=
 =?us-ascii?Q?5Ep/CO+WbBVxt8vFvVRBVC51OW55CpiJuOId++5uqgKoykG9wnVZftNRGXFY?=
 =?us-ascii?Q?3gMdwYyFM19UEgNTir44oRkE5l3RGKcO2qwg29gumbiY6HLS1OupJMPB2JDB?=
 =?us-ascii?Q?wzZx52+rLWNOEXpZVjZ73223neaf2jh6jYpRZvoNKw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB8775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MWcVi0IGq0bIiMy3+ii28jdwlIEjge+JDfvRIgZOIuoxRR+yo79raYiy1jTU?=
 =?us-ascii?Q?MLDlIv/v8IxuAZzKQ9buQctsdMRWPWAiNh23zjdr3IfF4pODIPvKrvFzwSxL?=
 =?us-ascii?Q?YUxpxMUcNFd20kfKL9ldvdk+YpRlzv69GL6Gvcgy6HFLT7FHdzfIg5stpQzJ?=
 =?us-ascii?Q?w/kijMJleBFr3tf8RTAAodDsnStKDErEE4BLhB0GjsdqnTfr9ODhFKJbhNY8?=
 =?us-ascii?Q?Wuh6xWvMrg6j8vtmMJeMwTdfDppQMhkm6LFqlVRZ4sKkqwkltIOWpNaDEMiR?=
 =?us-ascii?Q?SiMaKlm3n+xOkqiUs9XV4R9soHX4NfSUn6hAR+Hc5pzwXk4X3Qi7u2YxPf4b?=
 =?us-ascii?Q?efeo48HPaAMK+WxbkCNZ6yd1k1H/dmbgMgar8bCXRTQdHyl9ZKmSwx6/iFZO?=
 =?us-ascii?Q?fGZj7Ss0YYo/dk5+EOf4d5zRjribpkYQGXnBRHXVAxl739D1w9H/rC6bE9g/?=
 =?us-ascii?Q?35Z0XYSkOmnGbbsX5cAo6Wu3J53qsFaK/SKxdDgnxPZm4Bai6bXqZqLaH0Et?=
 =?us-ascii?Q?DklRsrzj2EIivNR8KUCHlp6/gbHgUMckyNn+ERcZnwl0uyMCu6MRIxIu22xU?=
 =?us-ascii?Q?TZbyPynvmGUM6GWVT7Yh6tb6nf9ABho66dJguJlgF3YT5iHVJfR9GVAo9aVF?=
 =?us-ascii?Q?aPN2rIYalu0QwDuznmFQFIB2XTvEyT9sOwanY4FPkhOLOYsqrG/6EL++owIU?=
 =?us-ascii?Q?1gM/boXgRD7s8f6pdqFmQ6qvjDCnEYKyvg7Az5SjsrmbvgLLcjyavmcHyl84?=
 =?us-ascii?Q?Ws5pCkIJ4AbE5Zu2MjMmatLnoCBwhvK7MlJAyEOvcuwfmetLvTKVnSZIi+2e?=
 =?us-ascii?Q?Ai1GK14IGtwJ5pv5MdLKSwEOnaGkcKEnt9v4z6cYIuBfGCGjAYbP2PVg4uZk?=
 =?us-ascii?Q?8gF+cEZ5Ee130duwIg7OR0nkg3pSAsArfmyGLJ9uqVv89JD6JEYJJs0mbs8A?=
 =?us-ascii?Q?fILQIoy2vDG8OsN1aVQlNQ5dKMGZE6ON5aIK3M+JgdcrWMZIp+DEcRq9oN5O?=
 =?us-ascii?Q?5t6mp6mj/4xUfiRCSoA2znMpTw05J8BDI8lyocZcqI1L+0263avxJDH/mq53?=
 =?us-ascii?Q?jLUu5nZpJ51rv0OzJSwfdzBUOtKLIipTrGegp3Pbwg3lG6loGy5Gzu+VYBmo?=
 =?us-ascii?Q?Uaps4klWXD0wi6dccda/1T6VDaMH29/mdxMF6cVbrIkGUNw9d8p5oHNh721s?=
 =?us-ascii?Q?6LyEt7h+Q2MZzVnGjsyBXPFWPUrWo3IZ5Sr0FRh7r2TMXnCSXX4Ta4yV6zsO?=
 =?us-ascii?Q?7xNixs+F3fVhoLTAMMdI7D00jciJOS8AnBpb1Orc79pCBUHjLwcJ1X5tWclP?=
 =?us-ascii?Q?+sk8Q1z5Vs9AoxOUKUrpiGTLXsUnMWFpfej5lmV2riET5Z6QEq+mw+9UV+lD?=
 =?us-ascii?Q?Q1bl3PUFZQ0gcrFkya7Y/loHkAKhS16lXCR5xo9npjteC5TYC2BTGnqJaJ5T?=
 =?us-ascii?Q?Hfm2HSoul5PXNIbHI7VbT+X8w0wG1pQrxlSZRuUC0b0Zxp+55Z/Pwt/JSGC3?=
 =?us-ascii?Q?4RvcZ83VSySqH/dSsTUQ56QlmN/6k7rVXIrEpZbASjiqAqtyRywOs7jcvGkV?=
 =?us-ascii?Q?hbccPIhEsTasp7fiNeJILmibz/hQpmyNv98N0Yn6Y9bnjlJfxtVcM1/L/aS8?=
 =?us-ascii?Q?UXDjhdLydEi/ROEKSXO8/M28V40AdFM/vqd5Ix+UlEveVZRhS8UZP9OIuOQS?=
 =?us-ascii?Q?pmoeRA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ec42ea1-2e87-4875-0969-08dc84e47006
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB8775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 22:19:45.2403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u88Xe71Q1tAtziwLXNpxn7js1TU/CN0YO0iVb/MTkWn/nrLVyvOJgHuyDggKhiO+Iq95usaaN4dwHsL56lDc1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4234
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z1WSLxOB5P04GFjJy/EPk/vgTGa266UH9uHi5DHY9oU=;
 b=uVPighAM26KIUv1N+VrgAoHGp+eJdnxtIPMdAesmIo0HokicVR0h+Deqso2UyTS6n9lOjXt/HaMtLQ2U5mqpBM8fiZJy+T1YEFSlXBbx5qSJuvsiVD47lwuhjyDfDTZraZia6VsoihY1XJoxkOc0+TKMliT1M/npHNRbYneQVBleml7/rGMcTwH9BB4wUeHBFwMkk6OdfRhZbkTuDGoc7VnAeZqMpMkCz0ET74DKd2YOdvD30/rnyKTsWB9gsWTe3WpztlJ4Ryl6glEGc6M69ZmfGQPCKiRPPHwoDlYzLDiNwqA/1ZWCVLQ6bKsjrhCpjKOWs069SJ/W9J4+kLrBtQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=uVPighAM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] net: docs: add
 missing features that can have stats
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-wired-lan@lists.osuosl.org, corbet@lwn.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 04 Jun, 2024 15:13:21 -0700 Jesse Brandeburg <jesse.brandeburg@intel.com> wrote:
> While trying to figure out ethtool -I | --include-statistics, I noticed
> some docs got missed when implementing commit 0e9c127729be ("ethtool:
> add interface to read Tx hardware timestamping statistics").
>
> Fix up the docs to match the kernel code, and while there, sort them in
> alphabetical order.
>
> Cc: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> I didn't add a Fixes: tag because this is not an urgent kind of fix that
> should require backports.
> ---
>  Documentation/networking/statistics.rst | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/networking/statistics.rst b/Documentation/networking/statistics.rst
> index 75e017dfa825..22503a90e369 100644
> --- a/Documentation/networking/statistics.rst
> +++ b/Documentation/networking/statistics.rst
> @@ -184,9 +184,11 @@ Protocol-related statistics can be requested in get commands by setting
>  the `ETHTOOL_FLAG_STATS` flag in `ETHTOOL_A_HEADER_FLAGS`. Currently
>  statistics are supported in the following commands:
>  
> -  - `ETHTOOL_MSG_PAUSE_GET`
>    - `ETHTOOL_MSG_FEC_GET`
> +  - 'ETHTOOL_MSG_LINKSTATE_GET'
>    - `ETHTOOL_MSG_MM_GET`
> +  - `ETHTOOL_MSG_PAUSE_GET`
> +  - 'ETHTOOL_MSG_TSINFO_GET'
>  
>  debugfs
>  -------

Thanks for catching this.

Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
