Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 426296D2F28
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Apr 2023 11:04:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7993841F6D;
	Sat,  1 Apr 2023 09:04:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7993841F6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680339864;
	bh=bGcH/QA5yYANFWrBE71AedGJQM+NYcSVD0zQwnw1BVI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oafo0ZQlxR5545ip/kNCWWf2681f8tX3GZhiaObsLxPMCCQL7neMMyMRhXTutURR3
	 0MOi3Jj9L5pAZQhVHy/sza/RzJxUQlgug5sL4Dquc68IcyF8HvtJ88aLe4n8Y2sbsY
	 Ivu69NEL+ZuDhInklT8txqnUrt3q+5ErWVtXSeNHAx1D6IjoJZrz4O2yXGPiuZRb8K
	 4aVXfPd0mdJOtWymOP/hBQRDasKg4uwzCZ3R+VUHsbVBSfaEXHmlL9F1LSvb3AGPXq
	 TwpXwFoOAn2UAVzRrK9RNpyN402ApT6u9B1eG/wOiNF/akm3FsT7GB2XCl3NWDnETD
	 PC+2hJy7ECIog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MYmCaE8WY7Zb; Sat,  1 Apr 2023 09:04:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B9F841E56;
	Sat,  1 Apr 2023 09:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B9F841E56
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB4731BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 09:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B33FE60A69
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 09:04:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B33FE60A69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kdBqaC-GB8i4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Apr 2023 09:04:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04F0B60A64
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2127.outbound.protection.outlook.com [40.107.244.127])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04F0B60A64
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Apr 2023 09:04:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zn2h85m4h3lUZdwFjouASCe6rpphDIPff6AQ9a8YPuSjFOjZlV2vBNXDdA0GIwZ0X97DRgzyAZWD7sB02xawXOht9QUUSKDp1uXaMdkGD9wrQvSb629Yq17wm9WPmC7qp/Rs+eL5sTsB+GwTuJJwiIsvd/0e7TtYVtUusMWYnbt9Meo14AvW/2vZ0jzhKI50UBSP1uv7TE+Q7zPJ/SbmD5J10OOf2uYkvMfekO9s9ifiroFykSUqK4u5JZFlSEGJgOcrRGDAomF19FpbWZPfk5hP/E99oqFBy43OCPB0vIwWltK920fhlvQA/Bl9KP85H1GH0JYCK5GdF66BZ7dY7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Jlk1xeB3JJ+kMra/ISg5G8q2lVH5ns94pIXJkvgSL4=;
 b=OaUSzPUbtenfnbdUlLd6gnmKnS+TYE9lfYYLi105igyWsVIQeoG4671tBeVTFRZSNbEbl/iPPnHaNvyfGVsQgLJF5o6e5/9LsMans9W1984HC/p+GzGZc6ZMhJth9ZqziXGcwr5HVhT6oQ/ScaL+b/lMnTHVqTEC99RBjShWcgc0DA37ldVaDM/dw2BIeYVFbwdRY0gRKXFEu9NXxmAtXxlnJwfj3QkV/zN4Q88hVU7PZh6Pid7mG7h1YIqucoNrBDcZMWCwvsdUA85Drx05cAWEqMwvwnHMGW+ZQoYDNrZ7EwvjrOpvgAvftL4RfD/DXe4EooEqVcd6MOEJnvs8ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by DS7PR13MB4720.namprd13.prod.outlook.com (2603:10b6:5:3a0::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.22; Sat, 1 Apr
 2023 09:04:14 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%5]) with mapi id 15.20.6254.021; Sat, 1 Apr 2023
 09:04:13 +0000
Date: Sat, 1 Apr 2023 11:04:08 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZCfziCxSqccFPsCl@corigine.com>
References: <20230331105747.89612-1-michal.swiatkowski@linux.intel.com>
 <20230331105747.89612-4-michal.swiatkowski@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <20230331105747.89612-4-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: AM0PR08CA0036.eurprd08.prod.outlook.com
 (2603:10a6:208:d2::49) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|DS7PR13MB4720:EE_
X-MS-Office365-Filtering-Correlation-Id: 58adabde-5ebe-42a7-e665-08db3290108a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AMhxfSRNjfFilKl+andH6Qn6FUd+/dBW1wrZA7wwFb2HjR0zCgBcOEDapOxuT3nHIsQ3qqBH45HzyHyi7FgOmnQ/16fRzzqPoOpiGhZt/vrp38J6aUTix2opPwlgRaXF0Oy+J9p2IoyHkUgXsJn7VvKXPjQ+xrlfo+251x8MmbY8jcsVIKvwvXJjW7z1Gtiy/ggbdGzR+VmvPb02MrOtDlGZeTMzQuyjK842xwEjfRMHp52JcSK688rZnwkWrXicK0w0MC2R35lCIRGY4dXjMe4+6ZE5zZi46zKXqzVKyfMB0KHjCyAbdCkKRjtQK6vz3ZAnhagdbjv2Ua42pMJhZDLwZVeUDYMpRJslirlCS70/zQl7IqcTBxS+4ICMjg3BiEAeLPQaTa7jDDxFhpJnn57KcBbZDiz2B/Bifdrv42ZetFkrlpglFRBcQXxawZy0BtPw+As7qfijaHXh5hVxbjdGj0Wu0uAfnPgsFf9TLbPEdxLtMZJY33i36p2zg4+lh5yPls1fmSWM/YqWmdFDt/WfVYhEsz/8IpKRUvzEqKTpmqRB0gbPrs0EZldOjIL/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(39830400003)(346002)(136003)(366004)(376002)(451199021)(6486002)(44832011)(8936002)(5660300002)(8676002)(6506007)(6512007)(2616005)(36756003)(186003)(38100700002)(86362001)(4744005)(41300700001)(478600001)(66946007)(316002)(6916009)(66556008)(66476007)(2906002)(4326008)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vdSI6+psXEnYsUGadYvo41CYePa7T2MNQxmk7DtxUEhxKZ8ErbOaESfpuvt9?=
 =?us-ascii?Q?Y9Kl4hdD0qzM5XaRGihH9pBpg2mdb/ejvMTpdlX0DDS0reNkbYDVek4wl1oh?=
 =?us-ascii?Q?Xb0vofmPXcmH1q5zrMvpE0h2Sv3oPzvIc/WbXKNNg/CeuetHs5GL9wTTwLSf?=
 =?us-ascii?Q?Hisvp5FXLXpWdnk45n2ccJwxNN5NHwkdutmNXvhJXQWFN74+jHf7JKrPUSX5?=
 =?us-ascii?Q?R6Ln5qiuGql1PyZr1PbnICK3Mz+0NRXccILLrwm/GxMtXDyQu3Rmbr1J5EWI?=
 =?us-ascii?Q?rVAXqTJhZDexIbdETs0k7zHfhCQEv5nfZBsJNdzXIwLGfv0qv4eoP6xq/x1E?=
 =?us-ascii?Q?irx7Lg0GAaeXtSo2uzEiVEavuQ5iJWWRPJHE4AikMDRb2x6RteynE7SMt/RO?=
 =?us-ascii?Q?EavChIFafZF7A+ic148eKmGZBvmDLdlaD62sYq1JSs//iCP+Zhyb58Hly+qo?=
 =?us-ascii?Q?uKD9cbZ1+MpjhsPgd8KFSCHonkCXswvzalTCMvDqaeU1iX+mItnrQZtd7q/c?=
 =?us-ascii?Q?gpLJxYhfJgBm+5aartBJ8IY7CEJc7RpW8HdHTRO4/BjNOcx275HpB/7l6NWd?=
 =?us-ascii?Q?ZsZfBcWFanCQ09rQWAu9ZweBQya9pxwmUQh0gvCvpm6d1G43OJIU3xNx8yh1?=
 =?us-ascii?Q?qymQ5qDvz3NkRfEjN+AFP9wIRw3IfTm1740u8cswio2o4UF/rseoCfx/TcXl?=
 =?us-ascii?Q?81jl+A3pNOQ9b8d2ESTddl80pPfU5YZuV+LzSxt9F3o4IpAWccr8BJ967WxD?=
 =?us-ascii?Q?Ar+C3K+5PZsp3ppwIq4uOuNEPaqGPcnm04ci9+qEb83NvO49XFmFxgvyGH4e?=
 =?us-ascii?Q?R8kpSGk7NUnU56ih5WBKAOG9BX9CSOUUsWkjA0oKUa5xVdaINuHX/3AdrYhJ?=
 =?us-ascii?Q?ATUPa2JOBmb7Sh9aV7bk1Ry8M9W9I2G3KBbFQECms+kyJBv4iot52EiVvRiS?=
 =?us-ascii?Q?Mi5bzMozsS7oZANACIbXq/HI9lHqGDWlHhXCfv9/hScxBEvyhCPp5L21sBJQ?=
 =?us-ascii?Q?2EKc5K1Sx9u0QPBJ16NBgaHYiFPTNT63NssRVnNjQKpKW20dUznKuPisDXpP?=
 =?us-ascii?Q?IVKDvFjEMUW27coPIvvsrbqaKdGHS0VJaSJk+eDrARVB2RhHu5j/0yK48uDm?=
 =?us-ascii?Q?FmrsO0Ax/xDl1oiyd6okwr3g0hdqlKqMF4brfsrsO9F9S8rXmWkIWr7VsbCd?=
 =?us-ascii?Q?3C6QPjtEPxFiI+qGzuKduQjV8juCNMWZNQ/QpzLSt8GtooG64N3MGVV0qm3y?=
 =?us-ascii?Q?3w2Xk7fcM6c7oC1RzJF4ofSBv4o4gQlIQlI+vot1t39fjxIbu5+KEVrV5vMs?=
 =?us-ascii?Q?BtcQ/6YinfemSvnZR4bHp1YF7SirE5Y51e2MSC0jRerh5wXOrA870QWQ9JYR?=
 =?us-ascii?Q?OoTVEZVrgwhlgmRqLpqPBq7AaX19In1m9brNjl3SZJJu9oxuo9h57pF/BvK1?=
 =?us-ascii?Q?J+TQ9/nrPlSMQQjHcaP5uBMCzfqlDpUgYZzpblozVbT12sZPL1z8o2a3c63w?=
 =?us-ascii?Q?rlF6Upf5vKzR9XBrAYIJJecJouXxR2EvgACtvYLqOGWkD/M/001Eo4x2PjTb?=
 =?us-ascii?Q?qC0OJ9KsP5SlWM8nOHQsMX7UEisjSrZy/LsejCIurN3pmW2uc3Fn0q/G0PIZ?=
 =?us-ascii?Q?iqcxxuGSq42QTZ2qgzbpXNvevLOpn+enPuDBW0x0KG0XEaxcHrsNf0zurnlQ?=
 =?us-ascii?Q?hBsl1g=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58adabde-5ebe-42a7-e665-08db3290108a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2023 09:04:13.8835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9G4SE2vOt+iVJUK+c5qK7hLR/B4cFYUDhOeLLsnWQbMYpeJCmt6OV9ORjg6SUk0WUlw6tM8pKw4/6+S5dr7kO7pPKdFQ2g8Bjed9fHp62f4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR13MB4720
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Jlk1xeB3JJ+kMra/ISg5G8q2lVH5ns94pIXJkvgSL4=;
 b=hZeK7d5OmcZwfftVb3dFUeKlv5bvIU7yDCuOQk5c/YUrjKHzQ6KWDYn5g5ucvlA6qP/AQwhlgCA1PsVaDVvKTgCTJpWscanqhO7g20FGjfG3LHVwSgh+V+iaN5Wi22VziRmZNjVMYaE+UAsdSchJlbPR6cre2LtVe77iGv76TQs=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=hZeK7d5O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/4] ice: allow matching on
 metadata
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 31, 2023 at 12:57:46PM +0200, Michal Swiatkowski wrote:
> Add metadata matching criteria in the same place as protocol matching
> criteria. There is no need to add metadata as special words after
> parsing all lookups. Trade metadata in the same why as other lookups.
> 
> The one difference between metadata lookups and protocol lookups is
> that metadata doesn't impact how the packets looks like. Because of that
> ignore it when filling testing packet.
> 
> Match on tunnel type matadata always if tunnel type is different than
> TNL_LAST.

nit: checkpatch.pl --codespell tells me that 'matadata' is misspelt

> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
