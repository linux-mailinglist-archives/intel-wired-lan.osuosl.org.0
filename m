Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6486F72178C
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Jun 2023 16:00:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 022C860E7B;
	Sun,  4 Jun 2023 14:00:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 022C860E7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685887227;
	bh=KW325+qWAByIEjMDGON5vwWNVWkVIRWHwPGxihse4Hc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9IFi/vBLOu1h66rROs9qt5BFgzovj967Wc8iwGItrAQkRWQabOSP/Osn/tfKTh5Xk
	 Kf2V1y5kSgT4EG1gverPaaZhuMgpYxh9Qw0y3uhD6YFKoV02BHYzRQdkSDWcgnt3vc
	 IiY3hbECFtm9ix2d+xW0mWrw15Up0LKbieey7SqdTFe7ul245djydUNQPzRFwjIPBo
	 r83PPAMZJC9Cs8RiG6yqY0PIWqpRvKK+eFiD3rEci5AF++YdX2dLXNwLUYZxQ7JTYW
	 i6cyPd/vas3h+WYS6cV/pJOHiqwBvUU7qA7IZRNBz/630XmWuaMp1dFSlf8x32JSwn
	 MYMfFhbG/6J6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kApMP30hOAc7; Sun,  4 Jun 2023 14:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1474860C14;
	Sun,  4 Jun 2023 14:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1474860C14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F7DD1BF46D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6297A41BA5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:00:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6297A41BA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrDzoaU3lVia for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jun 2023 14:00:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8743A41B9C
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on2091.outbound.protection.outlook.com [40.107.102.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8743A41B9C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 14:00:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gB0oflNVF3GeNJ7p79N/h0/9bb+w3TvNCWKFI0VcbrBJUJZzQ/TPxZqPERswWm6fIEOLl8+c2MWyWJ5seikRvWCwt2RnSpu8+RQ05MB1qhDOMuaKmf4Ngz9kxHQuY8WiQOcrmU6KCBoEkdMr8z3CtWFgX5DGWqleG0BoJalbVWBIn4fkj4/cWnOh/SytQqe6OkTu1XQu6TulKoNsGJ2AZ0WEY82PyA4y//LHtq4fx6GIu8oZnZucE+Cb5O/+sw7UR2CydovaJJ8RfUv8bniF/bN3qrBfYORjX6YmgSfaEIp4G7JzdaCcah7qqrM3cjdaxJbBbpcdOZmKrxAgr1uaEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WrqXNbGDkmgqz4WqBZcQuOBsdiBl3BsTdF4iO9Qc4+Q=;
 b=V5WknMJyRYe64qep5pC5foNPgmPY1m+p9E69mJXvEWXtoaVw5akKjoqc17+d8jFqt+ocBRuOU3KpcfsVXRjjxFSpnXEvMmVH88wQ7u7xDUfYHE/DgOUaOjQkwT+huWA2X+Wtla4f8vVcPTvDzksGutLZL8L2py924JDXgCo+5M8/TK7hANUIcAXTS4lJyo8UHOWXbMbyCjnad6HXemGFKBj1uC5VdaC/Ho+f6zPH3vQuY1WDGXnaUDDeLRVBTiVtShCZmZHcSbsdYhijEkUGlvU3skrWEAjt3lJn9ob54xi5ZBU6mk0phZ5m+IqaZ/wsUsnGKxVrUNXl/QgaFyArPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CO1PR13MB4887.namprd13.prod.outlook.com (2603:10b6:303:f6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Sun, 4 Jun
 2023 14:00:19 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Sun, 4 Jun 2023
 14:00:19 +0000
Date: Sun, 4 Jun 2023 16:00:11 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZHyY64I58rUpXcZU@corigine.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-4-wojciech.drewek@intel.com>
Content-Disposition: inline
In-Reply-To: <20230524122121.15012-4-wojciech.drewek@intel.com>
X-ClientProxiedBy: AM0PR05CA0091.eurprd05.prod.outlook.com
 (2603:10a6:208:136::31) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CO1PR13MB4887:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f98b457-f287-4540-24b1-08db650407a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JOh/OVi2lvJyjAE8AVzBRyK1swc2GzjIiXw51kA6ZuTTGLyAULlcyVrS8V4p5PYWTGxgD6FXKeI2MxZLdJh8yYmNNpB0YYgZ5JezzSqLeVJc+A2LmD/V2RI8ER1S5zufG9vP++T6hLOARIS+7hMST0PbLS2ukremxuP1dfpXVb/2PC0jVBz/vaaXwzMuxk+ZXH17Cy3T5rk3Kld7t0P2Q3N6Ldcd3kwgM4a7un2sr0M716jTqscnk6vgMxzlShMn6n0vt8g/C0zHT8DG22D304vjsq0FSZGGW4KUcuk2eSBQCTdc2GiY17dBevVHJ4n7kIVfoRotAjuNGT7u0JUCoNJSuYqolN1n0mWLRQOJ1AkPnEgOqjHQdZgrzci9E+aGqr4GzbqxXQ9XoNtKiNL38gE1DwH0f/lP+5KKyUmZZ1Krj6031f5yVf6BMnJIL51bH/c7i+MEv2Aa99co5B/2leNkJMslJc83GGr1jw1VEgOeoYbRGc5Olgjfrw4m+D8tLt+HcteCJooEu8xxE49SbPylJiCIaoi2zw04Y8uYmKBvxdemvWWD9DKldMxqWQW9WBM6hXikwZiqhQkcKV6EWZROkJoex+/If4yzpyOKEMk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(396003)(39830400003)(376002)(346002)(136003)(451199021)(7416002)(44832011)(478600001)(8676002)(8936002)(41300700001)(316002)(66946007)(66476007)(66556008)(5660300002)(38100700002)(6916009)(4326008)(86362001)(6486002)(36756003)(6666004)(2906002)(4744005)(186003)(6506007)(6512007)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5+onV6ma85O0iIAiI7cQGoYI6bVPTeZgvHkQgCNPwldye+DMNTY4/w7UzFEx?=
 =?us-ascii?Q?lTZRYDN+92Nhk9Ce7c3JceeyFvsF4QX7FhFI+YR92sT8wOErFiAFLL+iywsh?=
 =?us-ascii?Q?UCy4mcfYrk0+NxglZar1iS5gRUlbXbMoxDGmZHWfLgI3lCdmM0+1sAPvU/hd?=
 =?us-ascii?Q?GPqAECF4equs2sD/9sZywhnIBr0K1YjHY+ZTI008q6Phrb58bmF87AJxEFvz?=
 =?us-ascii?Q?FVw6thFg0MXzQV7LFI+ThMixjj/DbMAsqV48ZxN44JwF+G07SQrzZU71CSJg?=
 =?us-ascii?Q?vvSx48MBZb7dcx8YTCTpmZzjOph61gMCbMHZr7SG3pEOgkqw+slYC2pMdVKA?=
 =?us-ascii?Q?X37M+cmzY/S+/2siOtjyu9gruAeB60usOEAijgLNBbz2uUMj7VvPBdPCHNhx?=
 =?us-ascii?Q?CNHqGef8xwVa9w4ovYIah4cXy1wAuZWZ0YFcw89J3+mQh5EvLSrdaXR7ILiT?=
 =?us-ascii?Q?AnQJN0orzOIqJ+cR7DdqK+67c2iOT932hJLZm/O/coorhiqsoYgmrGZ2bUPs?=
 =?us-ascii?Q?4KKHG/fIl8VgysM14/Q4ydfEcKKVKT0cNLAMIll8l0vBeGCeMcM1wJhfecYm?=
 =?us-ascii?Q?kmreG1xXzHbolxTD2fzlNh0ZiudIgkjM/3zVhunrzQWGuFOHEr4u2DqnsEOT?=
 =?us-ascii?Q?K6+eBJL7eYEAl/RaREdClB0rcIQAKFM3WIHTEh/nYJLPZPj4+3YMW98SuVQ2?=
 =?us-ascii?Q?T+2kXATGbjZY9kJN1ph/z6uUO5TFJg/EkgOFh0XHY8MvZZDkK4LprApmdXoQ?=
 =?us-ascii?Q?xRatfxAHqNLBmxsxiNWkBtzTGWScnZau3eWFlHb1SfOZyB5Y06llk9clx/rM?=
 =?us-ascii?Q?gimrub/vOf81IQp6X/Y8q0aTEYgAw7JiIJjA89n52zHnRSQ2QDo9Dm5V2Qbp?=
 =?us-ascii?Q?KHDG/qNpiV5wclRpXTOoWEYvk4zIm+zvHGjtIbfZp0+ZWGwCiz7JUet2anyw?=
 =?us-ascii?Q?vANm0F1v8ltR5YGCYghutTlFNuShP2dX9alBgFhZi7k7qDIHFQlNRxHo6O26?=
 =?us-ascii?Q?HovUyNNDVaoeGEVHMz0VUiYjuiP026iG4GVgiKcMCT2H+w/seARGMIhS2JO1?=
 =?us-ascii?Q?+KOObSeRIrw1LU2Hw4xMgYLHor/TNEx+FT8WDb2MlDQxWvzn7u70vbXCpKLm?=
 =?us-ascii?Q?BbUqYXaNNh3dDFKpAapBtfHeN3keaaZwol0shbEJpdOBrb7roZ6gM5C8a2Ec?=
 =?us-ascii?Q?ml9G3JRtXpqJARea4wWQktbEk8/+NLp42tnqYJeMt2Y8YmkQD1RmcuKFWK7I?=
 =?us-ascii?Q?lTDpf2L3+CcdofqMsMBJj3vo+i9V279yCaOTcyuYG2lVF84R0A+eFjgC7Jcy?=
 =?us-ascii?Q?qgXa+qMOls2ZNV/VdJuAE9qRB6fr0BdCDLE55Ky3sfBVNWIC9YDx688ZsAEx?=
 =?us-ascii?Q?2UiJB9p3cvoKinR7pGxYPeckhy9HZhoCBJoCBaYglXc3e2Xi3JaOkuQlGg8a?=
 =?us-ascii?Q?CSjUkrQkD7eRubkOT9iFcc6YQEJU8FuDelMw4pSxY7pPlJQnDDmnt/Toz09q?=
 =?us-ascii?Q?9M/RVL9pHeCO9Xde2tLC1NOVHQctZeG5UwIT0l4sgnhOX5gVFz5YZeMqqypr?=
 =?us-ascii?Q?ylvVRJQiBPHVm8b88MR6p7cR9/5BR3i1EGtuqs/DDVaeWPbx32Ht2SL29Zx7?=
 =?us-ascii?Q?KmtiHiZwiCevOqe6imGpdh5zPyqkKEHbmA7Gw3x3wagV3S5ItFmHMRNJxsw7?=
 =?us-ascii?Q?7ZnJKQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f98b457-f287-4540-24b1-08db650407a0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2023 14:00:18.9817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: De4FWT60/gekLV4V/ekdto2oAXRhsSxm5dlGw0SHCrFwI2rYnxDYenR9R6qublPNSijFV0dYZf9mP2tXHOydw9ZQ9+pNjoM1RLZqoI6fbgU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR13MB4887
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WrqXNbGDkmgqz4WqBZcQuOBsdiBl3BsTdF4iO9Qc4+Q=;
 b=dPxqDFnTvUrcPuDH34Hl+0Efgh0C5/SlWQVXdOm8vW7clP1uVx1L7GtW6t3pOgPku/NWVoy+hU0sIzyVMieayaXM8yPJX/7kAwVClLD3ojR7yqSg33jgHmjgf2GBvALF2PLhyf67OhZoDmckWTkEEraUsEQGFGZ2Uv40ra3C4xU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=dPxqDFnT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 03/13] ice: Don't tx
 before switchdev is fully configured
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

On Wed, May 24, 2023 at 02:21:11PM +0200, Wojciech Drewek wrote:
> There is possibility that ice_eswitch_port_start_xmit might be
> called while some resources are still not allocated which might
> cause NULL pointer dereference. Fix this by checking if switchdev
> configuration was finished.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
