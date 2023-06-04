Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DEC72186F
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Jun 2023 18:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE1C583AE6;
	Sun,  4 Jun 2023 16:07:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE1C583AE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685894831;
	bh=KLJ5/MSlN53+RQZQa8zCasDNOKADBBKcb9oPYc9L4lw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tl/wcQ+GTn7fw59AODjHZup8iSYF8HKJVpWNLTMexCCI002927IKkeQcTYLkJiNas
	 19EiV3sgYLXkNrDu0J6EwFKs4Jr7n8cbKhVEX0Rb0Fu9Kh+T6cIE9tnwRY3zD1Qm0L
	 KvajjrVKz5Oj6ca0aSDfWdc9G/RzykifXytsn+BeUs/L51lnKSLzuqsgNF9a8mvnq1
	 U5X4zNeTP/P3orL98q4q8O3edCUUsCqNgt0w+GSyA9NSL59im4bmRMRDje5iA7dilA
	 nAZhEEuopx4RHYVixYHzrlU/xNb8OqarbEvQEYgtyNRcn/ZD2LvsKokQuUfJegYQB3
	 IdSqDKHQwqrIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z5fhpRk47QJT; Sun,  4 Jun 2023 16:07:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7EC283AA0;
	Sun,  4 Jun 2023 16:07:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7EC283AA0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1ED841BF574
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 16:07:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E472A418FE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 16:07:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E472A418FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tyo-aarFvxkT for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jun 2023 16:07:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1A364181F
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2103.outbound.protection.outlook.com [40.107.101.103])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1A364181F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 16:07:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PjqGxjeUVjdxDNUZxmBo1xSQOAMOaaRI4/qC05wJdLe3EaFa7PjrYRgzTHsTHD+QDXrd+CZdxldQbyJKWSkkYX71Ecsjhu06NxH1Vz5xtBbxpo2KEw0lQF3g8B+PSeBWJFsW70QtMoMEcbu2SyMeMjqEkyVCSunQ2sooqEdI/BeBCeynRosoPreZNgqST8orflDhDDizQkRni8bQBqewMtTrVp3BQsxoOkzf9A2sipIPt7T+v/tLbiK3nv9AmtFifeAoaTXIyA9ubVFVmM+BMvEm6K7W3yMYIIoLbh6T+Zkp0QhEaBG3x8NZhn939NJqALDqpVVPA0oX1L8tWulqgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PY6OuBjS5ZCvUkQ+zfgxYFb31xSX7sLLCGAhquzadf8=;
 b=PMK/5IpFuAIDAcxs6X1OeTSNhzwzAq6F8DeUIwVIPUztj+x6lBF9P2pOC3tdketM3JMEEedqV1H80TmhGLJF7dpLuN/Kbm3BlooOe1HCMf3s5VG7kzYLZgyRkMMMl4MPGSecfvut4BheCzfpnHQUN6sWk9kg7qwRcmnN5T2ilidp+VynkVDfhece159la4F+5QmF5CBmTxf4Vcq8YUF5/GdZOeyes2tIXlQpDIO5hh3UokIYiJXnY6pRKByoGjlGmLG/8hAsDg0cZ0D/feUR7G2bwakekbM5PBKj5RyTj3Tpxe+qKWGT3YNgxi4Z8qOnUN4bLMeC6ZyWGQV3NBMgvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SJ0PR13MB5521.namprd13.prod.outlook.com (2603:10b6:a03:424::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.28; Sun, 4 Jun
 2023 16:07:00 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Sun, 4 Jun 2023
 16:06:59 +0000
Date: Sun, 4 Jun 2023 18:06:51 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZHy2m2fATV0mXgBT@corigine.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-10-wojciech.drewek@intel.com>
Content-Disposition: inline
In-Reply-To: <20230524122121.15012-10-wojciech.drewek@intel.com>
X-ClientProxiedBy: AM3PR05CA0096.eurprd05.prod.outlook.com
 (2603:10a6:207:1::22) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SJ0PR13MB5521:EE_
X-MS-Office365-Filtering-Correlation-Id: 715d3b52-f7c2-406d-8cba-08db6515ba49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rpk3jNEhcS1+Y0YWoXaKPKrqW0bU5myFIlsrcMWKl0fAct6MvqVNMWpRuR+zi324PMPrRgJrfbYRXtlJooLuvXB9bngJEyp65SgEozGSTTBdcXmR65wQRhyoK07grFRxRi8XoJl948V+gRPOesMr/os8+dWlq90owAVlIg2kyz2WIhQeYNx1K1E9eBOraCGWPPqtc3TGHil4Q87MoXduFzgS6m3dIUN17R2ARJMHn85v7juk24OHjTYXjDtiyLZYR42Dgg5eQ98/jGk0YyxOVMZCWUVipxlTY4l68bX8OFUGqzZyqkMLTfX3vebN+jkvEIoaUz1j6guQ9KmEj1Xns9YD7EfeXfR9hCrrEDzyFN5HyTIV3uIGcj2cDyoGlwI9UCJA7au6FhixR2MFJLMaxFKZYGXmPPG0UoZ40nTq1YbBfui5RYRvIyJQwmMUspjFhT9ho+z9YA6GkvNPZ+3FseRh/fVmWvh9uFKajFGnf37lpLnU2oVIhWXSZuc5vf0uc8lPdVa460KHfJh55zM1nTt+dP78Q69Gwyunib1DrYOd4aeC6GcLwxIHXwvPviZJ+are2yZqBL0T3VMX4cJK9mLRpRcpo1y2Spr/I36OIzg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(346002)(396003)(366004)(39830400003)(376002)(451199021)(38100700002)(86362001)(478600001)(6666004)(6486002)(8936002)(5660300002)(8676002)(44832011)(7416002)(66946007)(66556008)(6916009)(2906002)(41300700001)(4744005)(66476007)(316002)(4326008)(2616005)(6512007)(6506007)(36756003)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qt0FTYRLOTLccodbJp2xWx0xJg4bBkTWJ3I/3cxXxXI3sLrFgrIoNyyoMQrw?=
 =?us-ascii?Q?g+3SdoW+3mzVL9oX46eaNLeRbYs1Q+GtIh1FcLMcmMqlPXn/8MERO2S4aU0n?=
 =?us-ascii?Q?txXBXMgAkYJZdND1HrGuRYaN/Y+fZwbS+DT0am8ME2vik5a9uEutUsuBudDI?=
 =?us-ascii?Q?zXGh4IDEgiI7GbkZCedJ0fx9I3ze6M2Y28PvWNl13+9yTaTnq8L5iHqD4mYI?=
 =?us-ascii?Q?pJgtBCRRmczp/6EWzu74uBHTlHGb8/PQQxSpSswBEzLIoleVVngutZLZZrxC?=
 =?us-ascii?Q?sICuIIH7LPw2xyJOwbqlCExqa1KfsHqDisnQy/4UavY+KTZl9kTWdNKjlyq+?=
 =?us-ascii?Q?vVG50s2mfwQxwl+CGrwkqw4PEmEFvxNCyptt6sGK/YaFVAlCX4DEVu9rtkdf?=
 =?us-ascii?Q?FIOh9smBwkPZ/WJKlLsauqCpUUJsvpEJ2y7CDNJP8XEaq3aKTrWTr3gXG/Rx?=
 =?us-ascii?Q?Xejr5JQP6YWNE5yeNygjzbMtCCQ8Ct9rwU0L3UDoX57X1jE5Cb+GSYnF6wk9?=
 =?us-ascii?Q?vmXgjBSc3X+yx0K2LQs86tZ17SUSi1M+vwBU6E/iOc91wbd6HGZk8PPvq0v5?=
 =?us-ascii?Q?0RDv2xrUsEq181BjA7qIjhMCp2OpS4cmQDmI3MXnt+Laa6Ja77evQzS6wSpm?=
 =?us-ascii?Q?zlT2psulqTROfMN5hsDOZyU07vxcPsv+8q4U/orobwqui0aSqeR8MU5v4yzL?=
 =?us-ascii?Q?hL9TXiIO6lvTzZC+QLATGr67jhsY+CMezghfOuAHk+d6P+2ZyVGOz0o2RGx1?=
 =?us-ascii?Q?YrMg89jPN9avLidFLUD3fg4nLPJ4DvnoX3ihnTZhvTGSz0Gomz6jJ1wLbXEP?=
 =?us-ascii?Q?6GVv1jOKD55bSPQmI757xNx2aEYf3/Wzf/T8smZyQ7Xx7jL08hEWEwIwoMQm?=
 =?us-ascii?Q?K34WGmI6DlJ1OuuloOlBmlPl657pWXotiDO+JwORNtdyqx/vwX2bKq5Mgg/v?=
 =?us-ascii?Q?nkd9+gSKtOD708wqnoollSRPwcUN1DK4BHclRd6sLHxwzY3bHub9TjsIHOfg?=
 =?us-ascii?Q?IM/Pl8wIHu818975xAYhzOsuiL6yuI+QpDY7EEaPpgx7y0nN0J7JMgl7jxTV?=
 =?us-ascii?Q?tfT4ad7JKd8yPCgfFRn+fNeiHJAH88l9G44Dmv+0aMpFrS+Hg7+/vbTBZmI/?=
 =?us-ascii?Q?plgOYLARri4s2F4oLY5rCaMyk0n7J2A+EvQ3a4SuUVKJTQ/mdn6JzIKz+CBJ?=
 =?us-ascii?Q?1tmQZuEVOPVL5oTvA19BVDMFtqgbm0/XJMWDJOKPIQOeYkH+CeaupwEa1/7k?=
 =?us-ascii?Q?pOWr0QwJC7w1DkALZxG7n+A7D0gzkttpsnpxZO4iecvP9CWmPwnXr16UsTkE?=
 =?us-ascii?Q?lmeLPBhKqj1wo8qF9U7QVGVryT/33Ibyrbc6L9oBcVlsoII9zJC1RGDl+BX9?=
 =?us-ascii?Q?tf3CPvlnUo2dK8L3pazMNzTg12GpbmT1uksCtGjyuquUcQQgWz9wnSEdJ4Oq?=
 =?us-ascii?Q?i5S/ljytqk7Gw32b4MTb6Ka3tIB4ntPer4SISj/hYBZrNCRI08pQO1cUruOD?=
 =?us-ascii?Q?gJMOCHTfQ6NH+1D81vN9TtEyAkszu2rrG+NRTn6X08zbjjtO7k1QFUtORQ1Z?=
 =?us-ascii?Q?4b5s1PeYJNwTbky8HHDxTL6ATpB+BKXKHbDTzc+FVuxE75YtuetX/wlDaJTy?=
 =?us-ascii?Q?4Wfsl9bYciKRdbm/w7DQ9GKS0oOtx4+uDOqQ/ExVf4oCQmCqS5hABS1VYib0?=
 =?us-ascii?Q?yDKQSQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 715d3b52-f7c2-406d-8cba-08db6515ba49
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2023 16:06:59.8812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dnnZEd4HVK0jXR8S0AHK5czlZbTp8tMJPnTdtt1dsP0UvnXBDvKL+UURsptiTJLKQfXkTVLE79oGE+dyqkaFX7HHIzoSr0NxF6CjcC1WF5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR13MB5521
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PY6OuBjS5ZCvUkQ+zfgxYFb31xSX7sLLCGAhquzadf8=;
 b=CeUvtm2JKMLPmzPVjnbMgpjRnAVAPLSCML6jqk/Gqe3HynhW0buG5roioFZgthCwF7Qf6whi5sQBs4CwDAXdnVo+78SHhR9Me80rGQdk80PeDX0IdF7s/MahLfg9JZEG4zYhk1z9PVXOjJnDurkYEZ3y+eO+jqIh/2hCFpYgkKk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=CeUvtm2J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 09/13] ice: Accept LAG
 netdevs in bridge offloads
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

On Wed, May 24, 2023 at 02:21:17PM +0200, Wojciech Drewek wrote:
> Allow LAG interfaces to be used in bridge offload using
> netif_is_lag_master. In this case, search for ice netdev in
> the list of LAG's lower devices.

Hi Wojciech,

As this uses the first lower device found that is an ICE netdev, it is a
little unclear to me how this handles the (likely) case of a LAG having
more than one lower device, each of which are ICE netdevs belonging to the
same eswitch. And the perhaps less likely case where it has more than
once lower devices, but they don't all belong to the same ICE eswitch.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
