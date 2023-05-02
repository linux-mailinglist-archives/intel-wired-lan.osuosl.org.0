Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AC16F42CB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 May 2023 13:28:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48F2982211;
	Tue,  2 May 2023 11:28:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48F2982211
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683026902;
	bh=9efDFByvByPxHlQYAHdZu99aLpioO88lvgZpDr3ROyU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NKJj5Tl6q/Owy5JRWrpasszt62lHTAoBRBGSZrNstvPJZkWy+QJ0RIQUfFd47B4B9
	 51/kMjnocfn9PL2uxcwhirDBfeqjlHGew8CYRlOzrMfMqQyhJM4ZlcIiOISdu/YTgq
	 OaaAG8s2aAeL7FBOKnxXTPe9/s2o7vN8sr7PdOx2MQT7imDSMBMfnKfSUjFC0rRgYf
	 l0eGN4iTBQ+JztqRqApl0Y5VaEP7/J6DuIPlGIBbhjRRqWtRxV209uvBcb54rLHakN
	 Gu5cx4EDoJzAwMD0BWXOvNdDGwk0a3S+XAskIKgbxYFY6NDuebdNJd3Z0rl9anh7A+
	 Vos+VxSxgdezg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 96435xRq5lqy; Tue,  2 May 2023 11:28:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30AC881FFC;
	Tue,  2 May 2023 11:28:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30AC881FFC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 94E2B1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 May 2023 11:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7990560C07
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 May 2023 11:28:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7990560C07
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZNbQ-1LUJucG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 May 2023 11:28:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 229F660BD0
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2120.outbound.protection.outlook.com [40.107.93.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 229F660BD0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 May 2023 11:28:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LzMu8xtTVBWmEm6o8pCcfD3nxkHP9tnfqlOryj3UgPTyLOTILAV1COSQRsBqAfjyVAsHZn4v34EIninQ+PkIL3kAukxGJbCSpZDQZH/XskRDiJCRYM5fntSy6P2X3oMHwTbOgF0jzGHDExGwKtjy4KRZi4H+1zKPLSd74wm7R3dhR0dDICQComcrlRNnYvRUfrymFE+7A3EZkIg14W+NFvVXoydh1Ba15nVnDT0uUSerJhR0GSNkkvFsQ0KNCbvW6cw0ZmFyah251W9iQMc7VJ4omFzcCbz+jQNT2JCTecHkI8tm9Fe8FU4S+U9gPt6Q2WzUlKDnm+ISScC9sqMWcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VQ5IyvemDr+lZLT2sbnEZzDQXbEYBDd5MT6XIxpnKiU=;
 b=it2QJKzNGJMpbzGqbIRibVuzkWKU+R5WefsiGIaHZEy74JAZtI3zpnj+JJBLzrhpFH5Bk2OlG167VSlv5vtOL1HkIP+p3pHNUrjAmwCm1EOe+xiDtYtVttsUXY81WG6CNCYVKI4Rqd5O8GPuyRgplHm4Qorx9lxhAyGKINZ25pTFwmORBY5B+8G/cLw/6WaKi51BGWLqZypTXLSK86wHlOlgan8gBgCLT3dNINXMj80sS8+UBnRELt3qN5giGXR4HqN/SYbGwWPrnWZMsAmNrKFep98s3My/JFH1ajB6vzshm5pRSw5HNiL6zE+WXrN5c5H7IDDFkuF0zil0f9X4Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MW3PR13MB4137.namprd13.prod.outlook.com (2603:10b6:303:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.31; Tue, 2 May
 2023 11:28:10 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34%5]) with mapi id 15.20.6340.031; Tue, 2 May 2023
 11:28:10 +0000
Date: Tue, 2 May 2023 13:28:02 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Tom Rix <trix@redhat.com>
Message-ID: <ZFDzwkvMH1LdVKuF@corigine.com>
References: <20230428200009.2224348-1-trix@redhat.com>
Content-Disposition: inline
In-Reply-To: <20230428200009.2224348-1-trix@redhat.com>
X-ClientProxiedBy: AM8P189CA0007.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::12) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MW3PR13MB4137:EE_
X-MS-Office365-Filtering-Correlation-Id: d86dbb20-1627-4393-cac8-08db4b004efb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e74aq3rd2umd0757KPWBBfwdoVrumPnkz8DuUAPSUv8WaMdoPmnqZj6ddfhDeb3f02y79IGlDoZvTsQUUupcau9OpxttMnGv61BNJ4sWI1LFj/3Ad2D0EOzX3GLjnVovsp09/+RmcwLYMr/wbmqLAlLReOE9FLOMfp3UqvRSdPoSDK831TIpR5Ap7LfTjkzj7QEh9wH9w4u6H//W9ZjbEQMzzrAaQpHGs2hWe8nvcBPiADSaSR6oDgsQ8OH6AW4u5dNB+f6ABlNfn5OHlneAEex9r1WUYt4c+oam9VtrKzdVoDRw6Uwo2n3LjifblJELavZMzGA0en66ly1DVaPqM7v1AljbNSrkaMUZeFhTRPBXpz+ttJTyM2ARtiThSn4WToYBVRRrfLHZm7v5inAozgomEuhDw2W2olrOWSnSXw156AB038msFMWzI9HXg+XL7v8Ztf4m0jDU1Ci1Ie+wpm4amW5NDk3k+jI4uD1luLRrcZN3etqrFmKfo2erVz0z+AKVezZggI7WExfdJ08DLm1QEF9eBSp7Kq7Gw4dJc1/SD74NrAAj3bs/k9xBjL3FVPA6ZtFWM9hGdldqpVvHRng9WIDzZ1tstCx66m+Uh8w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(39840400004)(136003)(376002)(396003)(346002)(451199021)(38100700002)(7416002)(86362001)(44832011)(8676002)(8936002)(5660300002)(4326008)(6916009)(66476007)(66556008)(66946007)(41300700001)(316002)(4744005)(2906002)(6512007)(6506007)(6666004)(6486002)(186003)(36756003)(2616005)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1QU/1KqJPkVwWSx2LMJ0bzVxNVtKvdlSkPcetPPZj0Bq3D0rNwEoJeYA8wZO?=
 =?us-ascii?Q?kZrJEAck7BKVX4XV+a7ClNLCPCed4XR6qBLpPd0u8fCYY0xbJOe/DenU2VxG?=
 =?us-ascii?Q?KVFEA8dq9UrLzF52f/kWZ8/qjLzDFWVlIUDhNu2uqOCVCbfFpwST2NqhMED3?=
 =?us-ascii?Q?AxKMGIO6L6qIl/qtKQRWeCnNfMVQ9v87+bH3LORCKvcwo/Ciufoh3rjYxics?=
 =?us-ascii?Q?5XOHGXEDoF+NeX0zzlcZaCO+lP6hVUNFFB7zHNvrBxtcopB2gLQ9RFgeSO+N?=
 =?us-ascii?Q?kMvr9JLzaZncUIKPS70o792zdTWEDIVIc9Thkgfmr81s4Vbqf96MiDYqaaLn?=
 =?us-ascii?Q?lhOdw5yzYyRpltd78RC7jX1GAL3PzhM9KoW4HyrI1PpiChuvC1R4mGGPxBLb?=
 =?us-ascii?Q?jvEBwz70GLD9pVAc83Q20LU8qQpS3hmOi+4ngIxa4zNusAxOErUIHvDatgJS?=
 =?us-ascii?Q?iVnSJlYdCl62HMQ9SDFjzEYgfPY64Ovkp8oNmMovmikaagFlMDYiYpW6b62K?=
 =?us-ascii?Q?B3NpY0UEX0yj0Ikjb/s6ZLD4Ao2GFMTcps8QLYG90EoIffF+G0xJh9L/d+oV?=
 =?us-ascii?Q?CJHKXNcuXcgchIEAXnTXtGG2JGsrhRFjGTwWbq040F47QeYu5/KgVOs53pAc?=
 =?us-ascii?Q?xa48DsBVRiu8UO8+B3qSGT+jjmNi+btuvKt0LPRcrDKQWc0QhKp7tS5PdujU?=
 =?us-ascii?Q?GM9qTiNnG3PbeodrqJZKtFtU2U65D4kLb7WCM5NvdVN91Mzc9CIBpFpJmVPv?=
 =?us-ascii?Q?g2yj+MZlvp/DgRG98BgO64NeLpOz8Y4mxLT/AcJAgGF+43n0D2VqskGId0j7?=
 =?us-ascii?Q?9wZhu2hqtHmUoSNaLRUzYfnGohqniA20u5jI0ja8wucR/rXfajvgoZM6Gy+R?=
 =?us-ascii?Q?ZEb3BNLLkT+7HYe6tWJBM47BTzBiJatqdGPzFEoi08q83M4QvttO8AM/LRqp?=
 =?us-ascii?Q?B3Pav1DtAWJzcZnfdGpeHJ0qEZ4m9MejKmIHyWsail5dlgtq7DiPtfMnCHrW?=
 =?us-ascii?Q?RoXTVAKCLqpnTlSg0CMDvf1Sy9P8o5lH4Eiqtu9jhRzXXLyAr/leH6AUHI4Z?=
 =?us-ascii?Q?AijTd/mAkaxBJv7aOZ9VfHvHewBt885/7PP+o5ygyrMARLBOBom62hyX/cWl?=
 =?us-ascii?Q?SYjKMRHbrSlUT7xrDORaumnBIpLAMJ8W+qroWqOqbpJIKZXQuxZAZC5Jq6mu?=
 =?us-ascii?Q?gouHn2mnMo63mQgNSqWgNm0pEKUkF1B4YQwM75dwSb3UeNM5NahpDauGAvur?=
 =?us-ascii?Q?4SDWUpJCvVMKjq9tMsJOqEc8la6dKPeaagN0LtvLEAh30NGrZu5RtGj5wrVi?=
 =?us-ascii?Q?LQmC2OWE6LM/BxpHPvx8VA4uuKxImRv1X04a7MbLS5lhQPK+Vx1rmYg3JaT+?=
 =?us-ascii?Q?VFaJPU9ccSK8N/nB6cs/q5sHMjNCw4luTXy/1z4R9QTIBYzyyPJbIBJEbFCx?=
 =?us-ascii?Q?OIzL+oGMwAg2FFoF5aMREHDj6sMATi3M40vsIuTZoApKFCiTRpE/5Ddy7Th4?=
 =?us-ascii?Q?EDdOxiG0l6f1MWFusEc8E3dbLEQ4FXvYsFHNCByChMkz5iDkHZoUq9F0CeQH?=
 =?us-ascii?Q?sK/HM1UcroPTghtiku3YdPpcn83R8kuMs/otCpvVwqFahNOZGO5C+FHHDPZ8?=
 =?us-ascii?Q?Iwnt1SDcg9qnFdhoYnZcR+4m3O7zY4OkiRukxxGFHa7GuPZcrmrtiSclExK7?=
 =?us-ascii?Q?W7cjQg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d86dbb20-1627-4393-cac8-08db4b004efb
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2023 11:28:10.4180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MtPCO9R1msM0dbC+7ZPLwlRYRx7GPXp3H0nBGQNP3zEElCD4GbOB+Fd5Cx5LoJH/QN6VXoMPCe8sTccWiY0VjMmbCFQ2eNDY7IjRlqQU6NM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR13MB4137
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VQ5IyvemDr+lZLT2sbnEZzDQXbEYBDd5MT6XIxpnKiU=;
 b=kqcNz002/yOzkILtVKETwdjqcLMKmGq3ynXMOsn2XWjys4smf2EgJwB/46LL1AKeZ7NhoglzJMc6QrVIFUMlEXc2zVfjsTqBP18Xp15m2eIAs9pvaxjyyRW+32zdKky81YDb28hjCJexG62CWvlthtdLb/bEF3V2l3dO//hLRzk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=kqcNz002
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Define igb_pm_ops conditionally
 on CONFIG_PM
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 28, 2023 at 04:00:09PM -0400, Tom Rix wrote:
> For s390, gcc with W=1 reports
> drivers/net/ethernet/intel/igb/igb_main.c:186:32: error:
>   'igb_pm_ops' defined but not used [-Werror=unused-const-variable=]
>   186 | static const struct dev_pm_ops igb_pm_ops = {
>       |                                ^~~~~~~~~~
> 
> The only use of igb_pm_ops is conditional on CONFIG_PM.
> The definition of igb_pm_ops should also be conditional on CONFIG_PM
> 
> Signed-off-by: Tom Rix <trix@redhat.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
