Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1396DD745
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Apr 2023 11:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A9B06145B;
	Tue, 11 Apr 2023 09:55:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A9B06145B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681206958;
	bh=w169d0WjF4FyRrmyrRePm5WbWdjkfZXHiOTcHq2IZ6A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1+cQqrkFF2VhG39QBWIMcJVcvP22znapMRFMOWGDbnmZzBgmN7Mimyzme/wNlsxpo
	 Fsgs2ZkLK+WuzeBiG1t52XX5Alu83F8nE0/FJEyWi66Z4bHhYlppxaEu2afvSYJH7S
	 +utK5p5QUiux5rsLRHf5XSRawoyo1nw/tr4Vrqb8tP907+r1J5Xp6iFP34UEwWTbXO
	 X4KiyupzuxT+TkG5tZl8bF/X1u0Gdetm59C1nsl0jdMvAbF+Q+AoWE/bQC9od1YhsK
	 v+Gm5oO2LMbhVsjkrM01B2qHOFRp1dybmHXv3K7NeVNPLcpVZsEQfU/JyPzdC/vrL2
	 3L95k2mhrhjJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jbltZJZCI_g0; Tue, 11 Apr 2023 09:55:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0901860807;
	Tue, 11 Apr 2023 09:55:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0901860807
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C6B61C3BE7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15DD581DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15DD581DE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CHvRlw45uge3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Apr 2023 09:55:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6370881D3A
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2101.outbound.protection.outlook.com [40.107.223.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6370881D3A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Apr 2023 09:55:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aacxUOjseiJSZ1XgdrRZc5NgSbes4sXaJuYrPvcGZ8/qBtwgD+sFoa8sZYtkAi0RXzLRRaZVbxLnXzCWUBr1Rc5J8E8+dTSBk8xJYKUXb9lUmzA6BKOcglUZ4xO8YsVSNVMaC813rdHIRkvhObi8DnRUvjrC2sr42L0w8pNARKdqwY0XMtgH0HBSx4rRDIWnSBEiqfA/WLXg4hL4fxXoLNnyKUy9fh2nuVDJ1Bgk6lMGYx0X4OpSNxf3CwbkDXJ5Bz3dQg+GC/+ZlJonta3C2gF6rr3lL2fmsM6GYYbe+uHCMHCXpSo6FQkmG7VK5zH0Pg0qOIiZ3IwlwC9SXbHCvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JFpuXEXnh+FZb1Bz7wfBIMPOfu3m3RmfT6+jSezLSfA=;
 b=f6uSkefKyqTGDZbIuJZ5A4AEkpo8XpZSr3XVA5GTo4IDowJCtwHLuIrNtsIAPvGXsFZ5OkfV1zqK4asKHuV0P/8qjf3jTxkPZiQphz7pU12ef+71jLRyTgcTv6pPqSAGQAxaVTCEeY6Fki9I7G54ncW7Zb9xaiMqsY/ftQGjBlZYuC1a1jGNo3tnD3hnGqGIFfSSBVnMglvouvh4JkBSmjf+7JH+bN7zFhD03h9Lnv4kIaEnEwOgVHnKQencxpycICbfOEldsDqoKGPAVOCfGTbt8XFDHMFEx+dTeLyOzwPaYvlIucE7gx4CxSzZ31AilhCwh1cog+U4zKC4MJAWuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by DS0PR13MB6174.namprd13.prod.outlook.com (2603:10b6:8:123::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Tue, 11 Apr
 2023 09:55:49 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 09:55:49 +0000
Date: Tue, 11 Apr 2023 11:55:42 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <ZDUunmuPmM0E3Rx3@corigine.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-15-pavan.kumar.linga@intel.com>
Content-Disposition: inline
In-Reply-To: <20230411011354.2619359-15-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: AM0PR04CA0122.eurprd04.prod.outlook.com
 (2603:10a6:208:55::27) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|DS0PR13MB6174:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b7c3277-48d7-4186-cb77-08db3a72edea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jv5zL1JsKEPyyuPlc8YELJP81u527rzYj0Z1RfF495577jef58uB/cw7SXWpNrnZSFLQyGezuSWdGsrs5ePwR0NnBFbHgKzU7fLu+csFBP/AC3hF5RHr/A8RWk+Ps5Y64V3Cr+lp3B5P8XaoHxH6EUiy1wQr1+ZWohTkpSJM8tYHHgxvS29nbKcn3VWBP0Z1+wUzILOj1+JYZ5MDCt3ctQbHU5qS2kw+h/jkENRp1hSpmAVMhNvm5JB0L731/pdoe3/7oi+8Lht9tGZ7skcCb5l2MW70na06ud8tH3ozv7Jn81LqtNco5kYyNw6qYn8nbW27Sic/4x0JubyzzBQvmbPjC/to1DrM7Yc9SHVRHIi1e5aWJQR0MNi1vVfRJtyWp0XiqtgHzlin6To1cnCAe/iOvB6qJG8bJbvPE1LG90E+QRCO/+7gelQSQlGEkLAqtocE2kmVC5x+pqVxt8Dku3s269cehK5h5KEPmr+z6IexsE9/bLp2JRtVxtsnT8q+gz/TxB7r6Hn3aDkU7aM5DwJOzyGS6SUcqJeoK6Ankm45UASy7SxF0wCMb1n8Yr1+pT0otwgzfbQg2xzx0JftOOnL8SLY9I+kKkVqHXu6LBI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39850400004)(366004)(136003)(396003)(346002)(451199021)(36756003)(44832011)(7416002)(2906002)(38100700002)(5660300002)(8936002)(8676002)(86362001)(6512007)(6486002)(6666004)(6506007)(54906003)(478600001)(2616005)(186003)(66946007)(41300700001)(66476007)(6916009)(4326008)(316002)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J6X2mMqCwbzUjf9MEA+PN46+0LuwmC8OEgYpwpEorahe4enKABbEDTbVXkaD?=
 =?us-ascii?Q?ZZYt5/AiIWuVhWZwZmo02j6W81rVJuWOdYBxgOfyZiIwfs/fkKNwg9gmXqoh?=
 =?us-ascii?Q?Hh2V/XVvaJojp42neZi30uioq306mvO+pR8HJ20VD5f3D8B/yNvU3+Zdy3ER?=
 =?us-ascii?Q?bG0GCtxstqYIJDQpuaJcB8oZb6gN7esgcXFdnOzWGE2Kiepq8DDMeZq/6VOp?=
 =?us-ascii?Q?RyJfmtx+jq87GJ9quomewUmLeDmJF/p69ZiIQUMUA399CyEjg70O1x26+zo7?=
 =?us-ascii?Q?gXXYtT4LBEqP4F2PuEXGyQvSm7RTNA+q6/K2okGqOS98l8SlamATXmgL6vSE?=
 =?us-ascii?Q?Mjgl8wppjv7PGLNa/wFE+D9gFzekYPVRRj1DMZsu3Sadtue92GlwbeEqCT2r?=
 =?us-ascii?Q?vFfvQpeu/b1R+RiwBF0nQYODC4+P1UYZXfDBHfDaEgQoPM6sf2Eqx2F3N4vz?=
 =?us-ascii?Q?AKoEavTsDwONqsYDu2E52P/D1rBWOnHFJBsbYXOk+o7FdvVbYxulQssH4+by?=
 =?us-ascii?Q?h6FYYvs1hPkIlOEhOiy9qnAJhd+q++HtiLOiImoPtbH+jZdWBMBRh42tVAaQ?=
 =?us-ascii?Q?rPwSI0+6AQUHjtFALh6zDW+wVdXT9ejEsaBzKAUN9DDGE3BJQGKxMmtlQVzf?=
 =?us-ascii?Q?Cc8+mVH8G1l7L5suxQvGEHB5E+meC+LxTIbCZnU+FRyirLOMtMhRU4YUKyTw?=
 =?us-ascii?Q?nxYg5xAfDFb2ESW1KFODlgJqNdccjs0/YOFi53G+VDRnMQEFxUauOKZP+ugV?=
 =?us-ascii?Q?JFyjTqRITdFoIYZww5gbR6WJzsPTspCCyQFEMbk11BaEUqjrj+eo/fyqVQ6i?=
 =?us-ascii?Q?dgUe7VcbvTpoKyHGkXbZN2hPUYpC9eDL/HFfNRg4FyvLdqKl2p/Ab8xgru6e?=
 =?us-ascii?Q?tidRLPJGsmy+VnElbUhmXyzpgc5Dngz5F+hBXDe3cKdjS+lM+gh8Q3O6X/XB?=
 =?us-ascii?Q?MB76VKBgEWJzD2UE8UeK55Jtehuv7Lke2kATd4T4eTSdyB3Zln6/mjqapI2N?=
 =?us-ascii?Q?lYRIr/T6i5T1jXgy5Wa7nekH16WBEUFJt79zjdXOvBFs4rmehu/lCw0nI6N9?=
 =?us-ascii?Q?+kIn8SWrTmgcPGHXTHC4rf6PXN8G24s+7lPASMIRKpciOQT3kRyiSqWOGuYW?=
 =?us-ascii?Q?LYfjBFTxLm4R8CccM3l4+NT8BPC3uOCyPZ4CMUI0ORrQLNL57gAODauAtI00?=
 =?us-ascii?Q?9dnt+93oci4VAkTsPYRRtregfiJ0j9FoEiwM4uGUB85ecCtXCEeif2wlRinz?=
 =?us-ascii?Q?dc7ClyYpdHayHu/uWn0dez1ZprjktpSJJgOLw5tnJ19HbM3MAiEcZxV+pnqF?=
 =?us-ascii?Q?YrdCklFZKOemE+pdZU6dNS3u+MyX02tQ7F62wqiFuaaLCCeD+UrlC+UgPw4q?=
 =?us-ascii?Q?/QbD4R31IJej04Gy9NvChxl1ebHReUa8ZsInH4LjpKhAhSXdgwiYdctcbjqH?=
 =?us-ascii?Q?RRwcy7apQZWDwILYFbHC+y6dbygGnQKoh6RNxDl3JgpRZ0IUo1keqee08Nv/?=
 =?us-ascii?Q?E6IDPQ2MpDkmxiyQfX93IIurCHYYjSmEXOK3FkgxCe/RGXonsm8oRekgAG3w?=
 =?us-ascii?Q?h72jPWYzMg2oWunBJvyOwLGsOnYuSdPqJKDwUxvXj51r4MXbQoOE9XBq0S3O?=
 =?us-ascii?Q?1i5X5heyEpl29Yft2M3Tx68k3xfNnlcczPzkAQTeUyvwk5IQeMJzVnA/hK38?=
 =?us-ascii?Q?cqIXVQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b7c3277-48d7-4186-cb77-08db3a72edea
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 09:55:49.7255 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GyPwEaLC2SlvAlaWYL5sTnDAOREIeA+em5dGS2slmG+GrLCJlU8YUtOxGgkb72OWU9XLhEDqkvzUI6mxt/ecdUPLvflwWSt1BqoD+5mH1/E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR13MB6174
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JFpuXEXnh+FZb1Bz7wfBIMPOfu3m3RmfT6+jSezLSfA=;
 b=Pcp/MFzk5goBRxtsNYHmfFruUa35csBeMmv54WQq82betQoBFbpbmial+Cg4CYR2uVpOVyzIytjenVS19VsEK9U2pLHvarTonbhNGfqtN/ifxQnI7NxbvBTy8S//kjAj8/1wduXkWPq/GBHQQSkoz110rq4w2lIXZVWqAx/8PfM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=Pcp/MFzk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 14/15] idpf: add ethtool
 callbacks
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
Cc: willemb@google.com, pabeni@redhat.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 10, 2023 at 06:13:53PM -0700, Pavan Kumar Linga wrote:
> From: Alan Brady <alan.brady@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c

...

> +/**
> + * idpf_add_qstat_strings - Copy queue stat strings into ethtool buffer
> + * @p: ethtool supplied buffer
> + * @stats: stat definitions array
> + * @type: stat type
> + * @idx: stat idx
> + *
> + * Format and copy the strings described by the const static stats value into
> + * the buffer pointed at by p.
> + *
> + * The parameter @stats is evaluated twice, so parameters with side effects
> + * should be avoided. Additionally, stats must be an array such that
> + * ARRAY_SIZE can be called on it.
> + */
> +#define idpf_add_qstat_strings(p, stats, type, idx) \
> +	__idpf_add_qstat_strings(p, stats, ARRAY_SIZE(stats), type, idx)

Hi Pavan, Hi Alan,

FWIIW, I think __idpf_add_qstat_strings() could be a function.
It would give some type checking. And avoid possible aliasing of inputs.
Basically, I think functions should be used unless there is a reason not to.

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
