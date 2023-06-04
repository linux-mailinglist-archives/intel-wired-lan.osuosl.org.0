Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C26721872
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Jun 2023 18:08:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6844383AA0;
	Sun,  4 Jun 2023 16:08:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6844383AA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685894896;
	bh=AtF0HRoXhodbPzrbl/5ynXN7bDgRjOsZqfLf6mE+ur8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CxVafLKMHtVv39chdckdO7tHyIpvOhzW2+gKqaheCN/vUZDoTQQVyM/sNGnv6bTVs
	 057rslj1mpVgkx42JDU0yL0Yetjcd7LbB7PZYhWITQHIN49ZjiZ/CU3Cu4FHuiPceI
	 VR5SDB2qYB0B5ImAMn1+FrBKIsxDoL8mankXuU3e0jsBu8NxPOKi/pRa34w07q5RPB
	 CZ9Q9kPli0fMX0EXTtob1lnHjEA4/0HHM/GAiY2JWuVm7zjtVzXc5sQog4MpMggRht
	 I+D8EcU2HJpYjKq1eRSu6z6YNoIodBG2x2Gt+edWcS+KW2NgjA5o3WarVbcRz6niRa
	 NAduuKdOhdC4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j8RUYqfq66aU; Sun,  4 Jun 2023 16:08:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B57783AB5;
	Sun,  4 Jun 2023 16:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B57783AB5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82DB51BF574
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 16:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A79C83AB5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 16:08:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A79C83AB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r9RvEolIm95U for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jun 2023 16:08:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A538983A9B
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2102.outbound.protection.outlook.com [40.107.96.102])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A538983A9B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 16:08:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LWM8hAuwtqsppa8lO5/ac5w4wz0hTt5J22cq4kd9Ea82oaHCHhhr5p3+KGw8ErrOGJ+0ESN1cMZtXWbqharinQQJiTY/qerDH9j8BnZZBst7eOnQjh/OoSWpFkR4QtTrQKOsBdu9Iprr0JIVk+W8slxDrNr0B7KvsDyan0coldL+yDdabrtdQwCm7pdABI+gMf3uQ6WiXj4d9Z5fUj3t2IyT3p4CnKE5cQoUN9vDCadjzKy+pq7K/BwIap9fY3G9wwuyDxtIe6Bhk38CMnt0U/s2lgyga1hvkGB0iOgUfXpqNH9mIj1ikEzQnwGtE4x2y+E0t6/dgikD59CLCyHP3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gSen1C+cclMdseqEhoIdjh7NwF34MaNMB+zOKnsNkOY=;
 b=TagsPNjBDDF83grV3i5xFtSG7F30pdMlUtiFLygdZf0iUyyspaTlNZM3IEbC7ZmMOBT3377EjESYKqbCp783dVJZf4jzxn0LqYd1Ffehn0yv8B7NkMHl/P+mp8azSediBjP9shbkGuMvQO+IyCdkbmJG6B62NATlFwddlsRJEHijSv71v5k6XmYErT/QBHJb/bmVBTFxl6HzQHEUFvsDgnrHRnKskSsOVdrBwbQVjNy+01+KQpWAp/XLZiYpcE+Ko6wnCOT0h/CdMvUbBZ4kvkVQAVpcPc8L40C06XoEQ29ooeSsrNmgJO3VYCY2Q06ZKl6cNnaKQCc5c/zrHuqWrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CO6PR13MB5356.namprd13.prod.outlook.com (2603:10b6:303:14c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Sun, 4 Jun
 2023 16:08:06 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Sun, 4 Jun 2023
 16:08:06 +0000
Date: Sun, 4 Jun 2023 18:08:00 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZHy24EDbl+zyIjsU@corigine.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-9-wojciech.drewek@intel.com>
Content-Disposition: inline
In-Reply-To: <20230524122121.15012-9-wojciech.drewek@intel.com>
X-ClientProxiedBy: AS4P190CA0058.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:656::7) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CO6PR13MB5356:EE_
X-MS-Office365-Filtering-Correlation-Id: 66f10414-b25f-4b53-aa4f-08db6515e1e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JcHT8UDOriFV0dF4KRQdv1McpgntUhL4eJzqxz7gUTDHKZCcTOkkmIxfc/mLFKx/UQt/lFF1M5NQFMojX4u8yr6Ow5BVEQavZP7QHmrOw5It2g1r1pAljP6Rist2KXJAsLjAp4gEilLJ9MauhWFxVinRujVdNuT7y6l876ylpRKii7zvHI0Y2azOxtJEa5Zznq9yia1yujyapI7NDSJGXsMqFBB0Z5KDPCygt8TbRUkHbOqbw6MDKri7gQc2mIQkfkhPp4/M4gvFmFUru31wLYHVrh1RoLjuXXQVmm8D4Dzlgt1z0l5ZJZx+kAJvSi1srdMWnAicfJfcwQ/yGsdpRqF/XY2SxvpW0n//Sr13GvWFZmnGxJ6/HQtbiwFI83PBILzd3omqUM49045fHgdQ6V6BZuW52jAycoRxYa40HEtcaxmh+kIP5vs/wUBgAHW6e55RHXNsT/qV3HB9ePNeIEzd4V7JcHEYZT5jJ8vNz+hXvI5HxLgeESEEKXkYPvrWmjjUEgEixUk/c11k098QUaEnV86ECjoBZ85U/gQFdvOCB3csEUgj+Ln7VvR4mnHKsDT2SVg64fPUlnLtFkDeqQEaG85cdELQG3JPDsV7rJ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(346002)(39830400003)(136003)(396003)(366004)(451199021)(41300700001)(8936002)(8676002)(5660300002)(7416002)(44832011)(6916009)(66946007)(316002)(66556008)(66476007)(4326008)(2906002)(478600001)(38100700002)(6512007)(6506007)(86362001)(186003)(36756003)(6486002)(2616005)(6666004)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J4PjWYO9qAYj7Kb4zbi4L00xlGLc0TCCca/PaWJPU1X0F9x4KsiqNA3CULY1?=
 =?us-ascii?Q?tLz/ULjG3VhAeJNyXO0soGsyLkb/HpCUiTQB5K6vjII8f9CX66snTUVlf2It?=
 =?us-ascii?Q?Muldg+hHH1CxqHBol8tr9O9gT/mbBEZAsoPsp/JDF4DkQvK7/SkDjV02UDgm?=
 =?us-ascii?Q?vqVVtjQoISsxEqsBL5AWjOcQt0KV889SCiLHjf4WV1j3OvXtUoaU0EuxELAx?=
 =?us-ascii?Q?p6Ey4wlxJYOyoFZ7/dUoVoatF8Y+15AHZALXrtIS8wW1TbFlSw0ayKzdMPlo?=
 =?us-ascii?Q?JAsPrOOgIMTUEuc8mqR3HFCb+uxx2GKyfFt0TeHlzSG7mRxArMPXRpNk3zC1?=
 =?us-ascii?Q?nrZ24HPgmP2juD340cDl+oJrc2Wq+7GNAj+vID82zMyzdne8oVDmJkg2O1SK?=
 =?us-ascii?Q?7Uj+TAmADf6MicN9EwO4d4OoT22gEC/0S1it7czoMwHTmySfys28ZRBrpVXC?=
 =?us-ascii?Q?dounr+gMyXSDv9zC0kmxL0dCTcJVCgS0kn+TOXHI8QOLX1n6K7bLQfuMr4hb?=
 =?us-ascii?Q?vVNfx3uE1uL1Yg4QkDSZGSQ+TNCoJudsxixWOwUT9+wO45V5c+Qx1rqpGqQ8?=
 =?us-ascii?Q?Z3hIPkOl052rXtkqHsXvnBlHjmmzujY92sSDDzZGvhx0//G2Rj/bJ9RxJM1e?=
 =?us-ascii?Q?m8aRRV3Ks7N76o/1GWVfbWYvB0kGDpBKR3W/MQ6+nilq6hrqlJYnUGEb9EFL?=
 =?us-ascii?Q?4cqx212PrHW1abjIXvP5kdtnWA6Rt6Q/+XnKHxUajJ1JWXfP92yRI9P+GOoj?=
 =?us-ascii?Q?PjlpI06pQwWK12nHVzTEvMtdHMPc8/pRG+GHB/yVBEVeB010lta/syEuAjMu?=
 =?us-ascii?Q?4yqZq1V77RYfsdPrGzk/WXOlyTmehn9/flZW/J9zbDb4L/jZihCc73pb2QT/?=
 =?us-ascii?Q?x8QvGy7iz8wb40yiTt/HLzu7iwlWd4EA9mPgr4Q2T0q1PT42X8crqX6fTRR4?=
 =?us-ascii?Q?BKxYuuqaIfWg+rnluqIF2T5WK6xbH7obTmCGPS6q2imThy6gI7MHXFLjfqsX?=
 =?us-ascii?Q?E7K50ubeMjifCV4wQbuRHlICY3w69o2NqSdTt0/YVk92Jp5T37Fqoak/uKB3?=
 =?us-ascii?Q?XOGK9Yz+Kgqoojm0yWJhN6PUkR5O4p566kWicp+Rbwh+eDV0tqqVBgWXxxGZ?=
 =?us-ascii?Q?EbBS90ETZQ61y3eewZuxbIROvRa4XaLBHquD/8itil0r22edBXjFLVDrSTTu?=
 =?us-ascii?Q?g6KooRBKwCXwrurtpnLVJREmCrn+7jnhJPYo1TvUKVCP2P6MMZCEefKywCnT?=
 =?us-ascii?Q?9LTuqI01lSc9zjt7SM2HTJ3G4yd8GiA8P2JPoo3Calp2qO8tyjCTMnKVOZiP?=
 =?us-ascii?Q?V+7ka7rjsGzg9RoYFebvciZluQcflovpAnnHVgOFbXFiubAxltPkinhU0QIP?=
 =?us-ascii?Q?ZuMOPBbYjDTwWN2/VQ/W6etzUtxCod788aznMJP7VWyH6vHicJq31s0NvBkO?=
 =?us-ascii?Q?KMaqgn0yQ1CsMT6WHfeQAyfejP9dj4UOlmgSecx6Y8NNTO420DVcNwA7qCcq?=
 =?us-ascii?Q?kJ579VznwNNUDiEONgGXVjkGDth/6FwjaqmAwYIC2d5lAH29EFOaH85tDVlA?=
 =?us-ascii?Q?mG9gDv6e/ge9cZpkxUMIg2Z9dggbAxiqpRaodNKv6ciqr7pbRC0SXlQtRTHF?=
 =?us-ascii?Q?fXF2TbXM6XiG0yFtm8v9mg+FUwJBPcTF4ykI5pixFNvEcWWeWnEG7J722DBr?=
 =?us-ascii?Q?eBrcSw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66f10414-b25f-4b53-aa4f-08db6515e1e3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2023 16:08:06.3077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W/pHaEnGeyXlDwlkYTt6HAPSrhwqls8/TY7h0RQR8H6lDYp7n6EbRVa9kT5m4jD0P+Ep9yDhzzoV8vLbZm910N+u4g09/0dlxZGpP/fAMo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR13MB5356
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gSen1C+cclMdseqEhoIdjh7NwF34MaNMB+zOKnsNkOY=;
 b=uQHKMrKtq7537uq3UGBvRgq4MVRUCgpuB07NQss/Uof9+w3uJstLeBI7/CHx/S6TLNqvoCQ6Vq5RTvTh1kUj0vu7hsBuKW2mjiPTPvDhJMjnZ+v8woKyuiy0FvHCr+zHHTzOFCWKk+xFjrJ4h4TO1pPCrsON6huotk1ZayUquIE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=uQHKMrKt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 08/13] ice: Add guard rule
 when creating FDB in switchdev
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

On Wed, May 24, 2023 at 02:21:16PM +0200, Wojciech Drewek wrote:
> From: Marcin Szycik <marcin.szycik@intel.com>
> 
> Introduce new "guard" rule upon FDB entry creation.
> 
> It matches on src_mac, has valid bit unset, allow_pass_l2 set
> and has a nop action.
> 
> Previously introduced "forward" rule matches on dst_mac, has valid
> bit set, need_pass_l2 set and has a forward action.
> 
> With these rules, a packet will be offloaded only if FDB exists in both
> directions (RX and TX).
> 
> Let's assume link partner sends a packet to VF1: src_mac = LP_MAC,
> dst_mac = is VF1_MAC. Bridge adds FDB, two rules are created:
> 1. Guard rule matching on src_mac == LP_MAC
> 2. Forward rule matching on dst_mac == LP_MAC
> Now VF1 responds with src_mac = VF1_MAC, dst_mac = LP_MAC. Before this
> change, only one rule with dst_mac == LP_MAC would have existed, and the
> packet would have been offloaded, meaning the bridge wouldn't add FDB in
> the opposite direction. Now, the forward rule matches (dst_mac == LP_MAC),
> but it has need_pass_l2 set an there is no guard rule with
> src_mac == VF1_MAC, so the packet goes through slow-path and the bridge
> adds FDB. Two rules are created:
> 1. Guard rule matching on src_mac == VF1_MAC
> 2. Forward rule matching on dst_mac == VF1_MAC
> Further packets in both directions will be offloaded.
> 
> The same example is true in opposite direction (i.e. VF1 is the first to
> send a packet out).
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
