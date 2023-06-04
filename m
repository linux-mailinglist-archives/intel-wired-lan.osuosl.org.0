Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06183721796
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Jun 2023 16:02:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 982F860E59;
	Sun,  4 Jun 2023 14:02:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 982F860E59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685887343;
	bh=d2vbso3QRnB0fCQQjkIDk6rUnne5N5ZQJZZOwRXkrHU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4WJVMN0JbxPel15qK3SxFk83oakta0BY6vydN9AgqwjkRumMMp8Uuw3u+inyRLBjr
	 zoHoOP/zz95kPYf5rvDMLRwxdVtI7H3yI+KvqI2RctyQMTBboLMPX44X/rgl7PhDUm
	 t8r7rGZzxI2bnFDgS2ikzsyex7x3dxbHt2UdCDjpgDvQjn2l5MLfkPC8zi8j2tJEh0
	 p+xZeTYj6z4fkYq/HBPx7fBNLnPRirHN1ora/UhjDfjLM6ZxNMvBmA5b9Lls1CT4nh
	 e35LDpYtcRRBkwRW/xGCp0jA+qgAcql7l60PyWOxjSKlwYK3ZxyW5AofX5ktk8j/Vz
	 qMk8H+31xZZUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z3sdMTnzlxDu; Sun,  4 Jun 2023 14:02:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A53B860B20;
	Sun,  4 Jun 2023 14:02:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A53B860B20
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 697771BF46D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:02:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4256760E35
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:02:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4256760E35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NijzyB0oOzNJ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jun 2023 14:02:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC9B460B20
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2116.outbound.protection.outlook.com [40.107.223.116])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC9B460B20
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:02:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SoBSDZjLUvdNbXY1wwjxlMokRmzRc7/VgZzaW6d2mOyNY0XKXPVFptmblErvVUPOkf5ugSOq9BlMgH5icTOZib9ObrxhhYaXNAiIMVr1HIE4HyNXeql6n6GQhBHzoRaM8qGgqv7HKnOX/h/7oS/RrJAjJtYkQf9zCpZEzsa4eRWc/fBY33Sp0yYzfjeVJi5fU32+ADIYuz0G+Poi1Pp9w9qerpXL9GhsBtKNzv4Mdeqodbh2b+6MkI7f0QkND+QDwEBMWDyrIzfGDGfDdADZ1gXOz7D4L3NNDAyyTLYKbTdUZYCnaN2QJ/vtDfnGvNoU7YbC8J1fOb+V3w86GZnmNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4kvtpGreL2esoAmQHzVL4MLczmw76jV4g9c3jLGf5qA=;
 b=TCTppyy1eN3ty7t60y+c0mYrag+hLoYNTSuhcXQWJmWmAFbU1wmmI7U4J5BSE4fBjw+u1T/+sHMxrwkaj4e0xAjGpyddX3MXOA9MvUtf4SBJbObMDCMdc3u2XLnwFe1V7LjButIZza5uDcPjiz3EBPBRua8jfRkfSwP+P0lEv9nnOhvNpIXzqhVW8gMdILvJLsO0KqAI2N7a8dAtpGjmhCTw4fHFbMWHZCyA4nTb66AODlMBIpVuPKCG3rKtsACxV73jw5pAW714GMsYbCH3wb2F9YrZ+6l+iQw7VdDTNK/LcH42HrVhqoeo9AmbF0Gy3a18GXX+UgTXSKb1kQ8myw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by DM6PR13MB3692.namprd13.prod.outlook.com (2603:10b6:5:229::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Sun, 4 Jun
 2023 14:02:11 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Sun, 4 Jun 2023
 14:02:11 +0000
Date: Sun, 4 Jun 2023 16:02:04 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZHyZXLTY5bo0C2CU@corigine.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-6-wojciech.drewek@intel.com>
Content-Disposition: inline
In-Reply-To: <20230524122121.15012-6-wojciech.drewek@intel.com>
X-ClientProxiedBy: AM9P195CA0020.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:21f::25) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|DM6PR13MB3692:EE_
X-MS-Office365-Filtering-Correlation-Id: a1ae8643-c6b9-43f4-2e3f-08db65044aab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Hbp72TtRsoyohda69c3fQEhHlvoRlKr0UzU8CdUoN5rBfEasiYyRVZXNjV2wwQyQFXNTN0LZjfv30eqm8CIHaSRhr//ZBOIj9yVducSlL8fQtZGtYiwpVu+FtiraYWC7RfKvZ8obh/TzZj4CkxYAyLE1BC5SAH0spK07atkg6VeydZiyhenM17AQHSCvbP3kT8qAATltYAnO+R1P/oS3ourKiGP6GEiFPbEc+KDwEMRHlwXdA/ZYIrDiBjdY7Ci9hw5rfE+jFWfroxxZi0/c+zfCLcqabTyFuEwrE5Gknyq9cTwtX0P9i73M9vqjM/nXIwldK7/wWzeb5VUOwV2T3JBsumg64K52jhWFWiZD8JJEDOv5P2jRZx7FxSdSUjSK2VOtDJXMrys9egfI+ARznjDCvJWBRpxJfpA7ov33VKStLFFDRXFojMcO9zaz9m3dbJSLN5feeQN7VkjoWvcnEhuH0iLk93tFTtxc+++12Nu7jPbFTd6F+yR5S7oxhTqt39zflHYvX5vRW9p6xtUVIg2M3mS/9TQLEkCFBOLGOek3TzS2dT0XT/KX3LRiJQpj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(366004)(39830400003)(346002)(376002)(451199021)(478600001)(5660300002)(8936002)(8676002)(44832011)(7416002)(36756003)(2906002)(4744005)(86362001)(4326008)(6916009)(66476007)(66556008)(66946007)(316002)(38100700002)(41300700001)(2616005)(6512007)(6506007)(186003)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JjIr1Kz3ZQ+AJCtbNH7X0QzhlfsxVqp4cISs+lZKzvkJpOMB9QCuqP9CQMiW?=
 =?us-ascii?Q?ia1u+egORIpaSD2GU06e/3CDlypTciyQyxYKsKQY49xKjLtyI5Gw0J3KpsrC?=
 =?us-ascii?Q?aeeQpxSuCBNdhvGHavpPtCjMaE2FPJRyGPUMd9V7Xk1gsH5xhtaDwb2XA9Rt?=
 =?us-ascii?Q?R8k+zFEk6XHObbCcWWwp5Tj3uFHtiN9vJMHV1l2F71nZ5CcCH83B3lWpkfIi?=
 =?us-ascii?Q?fMB26jqxU6Jz5qW1kf94ClqhhjyVFXKxt0pN83O31vi1UQtZqH+7KTI7Atqy?=
 =?us-ascii?Q?bn/OwCXWB1VVsYQUd0o5X3LmXXllj/ZWoYg3efWx4zZjj8vlmMsa4aJ51F7g?=
 =?us-ascii?Q?QrxU5YBFEcfKfgSgCUexatfeYzIF2lSiJvWk7LT4NSStULFuFG29RzPoGrT7?=
 =?us-ascii?Q?qmYgN3+PrA8baMFgjKx18hHGxiEtlXbJLMZlR5pz6qzI9rj8aintijE6eo0o?=
 =?us-ascii?Q?IbVYH1S/r+g4G1N8Gr1ZBTVFibPX1A1xZTkTzoSdctUkWLSGSpQbUioA2sXc?=
 =?us-ascii?Q?xrFAEeaxrAycuJDNegZlMHJaGPqRycXHgrBMHTpmqoEgZn7dVBU0+NH33sMh?=
 =?us-ascii?Q?T1hFemSVzgff7zjUyrIQTulQMo3MsIBws7RjIGp5etMEHMXwMEnXXNOWFopN?=
 =?us-ascii?Q?ppUj0BgffD9X246QH9AhHNgKj+MKujnGMTqV4l3hms+wS2XTaYP63tXDHJX6?=
 =?us-ascii?Q?Sfj1E1Nm2bM4i7xA3f2oMv3UgJclZjxBsXS61KXP4cIHVeIpEQVHxf3URhs0?=
 =?us-ascii?Q?LG5cZB4kjQZJYXZnDQ2GJjRqWF+2M9p3Oz7Enrfhl21p8xMzpmK4Edq6D6TX?=
 =?us-ascii?Q?Af8iz94iHWjvY2ie0w5NwQjpPN6rGqfPBj5WqcYHXW37frbkD3AptqM4w+zn?=
 =?us-ascii?Q?YzAXeCiByFCXQIkgh1v8YYyoW6CtnYC/xeKxDfP6mICmgAWDiTZPISNedcM1?=
 =?us-ascii?Q?Zf+maIKqWiRtl7mVlY2GZFwH/j3ByuwbxkSF53AjJpI6BCQqcjKPuRCrTQUn?=
 =?us-ascii?Q?peksPeo7jioyY/wG14cnjUGhYLGL6RvAFUSNb8/cqzHLt+XsqMY1UdEDz7ie?=
 =?us-ascii?Q?pLZCrNdMWQicz5fPTbh/ZyNHNdvTf3pr2YifQ4m0t+pT+a+9a4sYMPvzNBL6?=
 =?us-ascii?Q?V/tZFl2CDUQWUqDNZ2b+Ai/z2DLTyL20wMqCRi/DBcDpHxowmshLNs679RHr?=
 =?us-ascii?Q?6/LKbuN6AjyI/wlGI7/5yfVYv9ig4EoXFqmLYto2KQrSfD+mPbxCyTx9RdYI?=
 =?us-ascii?Q?n8TkFOPOSHM/9t8xeeBWN8QelsjWuMXekg6Y0+xc5igSrumR+OMbCGZ5beLj?=
 =?us-ascii?Q?sqKhBsx42mWElh16SVhDI1cYklZWu+GSbe+yYoCzs/givd+Z5n/yNUU3ApO8?=
 =?us-ascii?Q?UnrplTPS8iG6rfzqX1QJBZnieNgU2+cQ8g6AmYPRjiT3usucqeUclphGwa39?=
 =?us-ascii?Q?HaEIMzX/Du7GCO6rbC8okaZXNvJ8/Wf6Q4SduS/B9TSlXwk6C1H0UhO75xl4?=
 =?us-ascii?Q?lWs3OuFvZcG0M6R6YyQaIGTOVrSeBz33kzLSmdKsSFASUXavEx6TyjeNigJ/?=
 =?us-ascii?Q?RZix/c8WLglTadrOPpjqGSs3Xr2mKOqoPucoS5KG+d9Lk80+kBUQ9KreS3vw?=
 =?us-ascii?Q?G6vdabDOlEBkIupYwI6ZYKk1tpuv1fdGhpGbagqJHiFve81Jsnz1meHERkcW?=
 =?us-ascii?Q?6QuLpA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1ae8643-c6b9-43f4-2e3f-08db65044aab
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2023 14:02:11.1231 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FAOictq8udougByk6V7GQeP3Q8MsgxdHhHoLmf+KgCfNlF3ez09FNaDDDSIeWei+4IjrVJi7dm7oQZrEDs0OnltdbVTikK0xamr4eUZ0wrs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB3692
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4kvtpGreL2esoAmQHzVL4MLczmw76jV4g9c3jLGf5qA=;
 b=ERx3OX2QOdocHRSZQqoYpIaqL/iwB/d75OH8verCmmEj09uZLq+q4vf2UfSjKfDogyBqNyDguuUbBCWieMlfHuVHMnEfCGJvFnGFXx98wrX/tgurGcIdS1c6gPqjVG/DR2uQUhZGuSjUCEWeq6MZm+IySmQATKtBrboKadnymME=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=ERx3OX2Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 05/13] ice: Unset src
 prune on uplink VSI
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 24, 2023 at 02:21:13PM +0200, Wojciech Drewek wrote:
> In switchdev mode uplink VSI is supposed to receive all packets that
> were not matched by existing filters. If ICE_AQ_VSI_SW_FLAG_LOCAL_LB
> bit is unset and we have a filter associated with uplink VSI
> which matches on dst mac equal to MAC1, then packets with src mac equal
> to MAC1 will be pruned from reaching uplink VSI.
> 
> Fix this by updating uplink VSI with ICE_AQ_VSI_SW_FLAG_LOCAL_LB bit
> set when configuring switchdev mode.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
