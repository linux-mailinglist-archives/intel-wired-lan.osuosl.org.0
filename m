Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FDD721787
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Jun 2023 15:59:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6429560C14;
	Sun,  4 Jun 2023 13:59:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6429560C14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685887187;
	bh=uQE7ip4GzLHF8RozdH4cobqRpCdDgD0vuAdC/IN5F00=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZZDPnp/x7pt3AnGZP9PUMznvtBD+ROPo5fw6wRJm9wIv5CGTIAlisNJ+sO1mVcD2O
	 q0GkreP9M15Xwte5peUBjXLBYb59hRWe63MAP0AdgKrLLSIDNTb7vlpf0dpfrLnLDZ
	 r3/7vzfTnr6EaeKGvgT3cuSErLddMCCdyyOtR03Jq/Khl+nbG7TJZIpx71KP6D+OUC
	 QpotCQWuvtUbJX2zNTD+q73HnqrSuymBfT44VOLUrDb9mu2scBkTnpkQPwq9FLswmR
	 I0DLamlP+jbLcNwvnmrQPnF2vgu2DQeub4JG611NsnKV/WZU/MqcPFeUuraRDNj+Dx
	 AUJxsqhXn+fDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jucafp_DmA-7; Sun,  4 Jun 2023 13:59:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D23860B20;
	Sun,  4 Jun 2023 13:59:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D23860B20
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 272C61BF215
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 13:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ECF7441B8F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 13:59:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECF7441B8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t5pGf0buvd4R for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jun 2023 13:59:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6BFC41B8A
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2109.outbound.protection.outlook.com [40.107.244.109])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6BFC41B8A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 13:59:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nNu2y+comyd3PnckgUbXI9HchXqqxuXx0Yb99NKEYkE5iwsMpAZ37W+/up+Hv30kpKaPRxSf4Y9S/eybmy9BL9RjAF3ZDIKTOs+tFqiGNrfLSxGQnGrpvTmQD3Gfyd0MuOKmNzHzjsln3xKkRE84AfT+j57bOjxn2C/kFKn7WTq16E9nD4uxVO3PmsESl3z55Mw+ePzbrxp3DjYFuyO4tcbejUOVUub7sMUH40Zucr9xG5uiHhmU1CSJwzX7SeSf50b1djjLr//XG8euktgPiIGCx8DA92k4QPDJzZNMzwgzAWerGMj3ba8ONGBWKUPBDSMZ574jaTXdZ8V2Q5doNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6EFUeLHdcEW84SI8teTfRiAIsR4B2McylZqdeNtJPw=;
 b=Rsswr6ntp1V4ZIsi8ygZ0svX1RKzRx3WwIQmhy29bd/RE7VVyZsGI3+CYe42zZsXlzhG3eXn6SxNCSIML01M6dOfv+Hv2CZiAidcEwaBe2YX/BR/ST9K4e9YqglY8qCZ7y7Ir7tEt2CIw+kcBcbXLYy77QeMhnd/XxHHPc4iXVehI0K7eGBL+CQA/VmyNenajOp5FVTz5gWyuQx+gVb0toCMYdxIoC6LWK+tMS64+JOyoclIxUkmoFM7cU1+MqvRuGO+DQ0dtFU3+8OxMeWvWj3Z6NhNFIoUnYBaJ1cplTMkjD9AytSK6ZSagCb5S8ztgWAVlEcoZ/FJGvvfcdZA5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CO1PR13MB4887.namprd13.prod.outlook.com (2603:10b6:303:f6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Sun, 4 Jun
 2023 13:59:36 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Sun, 4 Jun 2023
 13:59:36 +0000
Date: Sun, 4 Jun 2023 15:59:28 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZHyYwGf8locVmlCg@corigine.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-7-wojciech.drewek@intel.com>
Content-Disposition: inline
In-Reply-To: <20230524122121.15012-7-wojciech.drewek@intel.com>
X-ClientProxiedBy: AS4PR10CA0019.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d8::19) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CO1PR13MB4887:EE_
X-MS-Office365-Filtering-Correlation-Id: 03087dba-abb0-4f1e-76c7-08db6503ee72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cs7z5YP7FDg0SFk7VcVhqcMqUMkUeXvqbJ6Ybsf11U6TzKTljVBYE2xioC2VweX8wi3m454WadOh+IBX5iw7gIT6qlpSdR602y/tEvywOqDHt9X+Q5O/tvt3izeDzuP9YQLr7cl0CYeHeVMHB5zk1ig8875r433JEeaL8YOANMqdjDTaJ8BAHJnBiu/Wv30FNhoLNbFuXzAN3HKMjVA9vBW85EfR0HUZmAe4SjLAzZXRvlr9/t7UfhgX4ScpIvvG8nycdtPjsJJqtaVtz/xiwudWyaMrySrur6gy5iRwRaPJpg88R2BXM3XNECGyYb+ft28CWV5D+8A/Ltu6F0OTveikOEoDUNI8578O/6L2k7zwGKSiB7goFTYHKaUI8lygs5Z/fKmQ1yG/dzavAocDmAJ9Ttz0qtpNpAXWf5lw7PUDkt5yhNR/dU3SO0k8MpU5sndVjsRlkrV4QIZuf+axUWvxEPtEIobWJhzhiqZV0hk+YOmu/j1mmnGZa/4HFDpI3czFs+bvh2y/mrnf0oDnsTj3NrWM0+l+XV5HDtW7R0h2IomTkRPxY9vP4ehWRZnheDqB25IYgoqZDtv7k2tTLMToz3n1eLn+rRZ30/FJTe0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(396003)(39830400003)(376002)(346002)(136003)(451199021)(83380400001)(7416002)(44832011)(478600001)(8676002)(8936002)(41300700001)(316002)(66946007)(66476007)(66556008)(5660300002)(38100700002)(6916009)(4326008)(86362001)(6486002)(36756003)(6666004)(2906002)(186003)(6506007)(6512007)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t9a51s2H7x0fbSnfB3mEkyZHhlz+i0sHRQCc3gXejfq6geUjpIio5/lLFXm7?=
 =?us-ascii?Q?xcLRwyDac9MVl6rDdN7F0tKnjnSULDIln3piPLO6MTDD96QumLsisqOGE1EZ?=
 =?us-ascii?Q?AjOHA0ZlPW5EJZI5OMRh2vfhHx+DKoPX4y5faHRMDfHDmTViLzJlQkvzm+ps?=
 =?us-ascii?Q?/uSIi4Q71EudGQ97yDCD1nNuqx14D7+zmTevjD5Qj3QrCuEx0Vk/Gj6BDmWv?=
 =?us-ascii?Q?dOzsr5bcc1SVNYzBXs2byM/ZgFKbY8DOk+szhE7lmbdobsyExgEwJl+E2ZsM?=
 =?us-ascii?Q?eDGsx8fr+KOdYLDpzTIlxa+UiKOAmgS/OBlVzq6iwQ7YEyPCUkAJJRMWKr1j?=
 =?us-ascii?Q?OQjFadODGQtUlxIlamgWyoq1Q3qa7zV1ydVTUqat5JyDzwJN1d5BZboSImTz?=
 =?us-ascii?Q?AVlJ7hJfTZOO+B32kNsuhk3nwak6eUYKZKDCEKuC+DPiQLU73R+g+K/AnggA?=
 =?us-ascii?Q?FP21Y1bPRL4KIxlBh/aPqNNKeF6pgRhKXfeWJhG/QRQUBVgmKKQ5lEDLnxh0?=
 =?us-ascii?Q?gk8mpoqdXjzwsnW2fPEd1l5bwZtuEQBJLhVOb050rDGTLR0u7HS6Cg8nLMXY?=
 =?us-ascii?Q?P36DdYP16wIKb1PMvirvpjMhz+e4Li38hEE9Pvpa5dIuq+9R+ZzN/iYvgeTf?=
 =?us-ascii?Q?QNtpkNjIQK3/mcKrIEjlk49RCE4o/ijLN2IzIEDZltyPvHVi4nGwN46qA6q8?=
 =?us-ascii?Q?Asyeim/RolXiOa3thFZP1CGEDo2w6x/0cqpFIM9CQUSyoMeT0lG78jnZ0mAD?=
 =?us-ascii?Q?pxW2UMQvqrEhePA/iga0UJtO7RJeydfyU8Ebimo7Ql02dOiDgup5rcrgq9dc?=
 =?us-ascii?Q?HSKeaKi9ZSEpy/9UX6w0VG84kW0qJTTEpYscMwNQbsfkQY+jUNl5Pbxe67cj?=
 =?us-ascii?Q?IN219JfgzEmuDYL8B90fIkbxXVTPyfgedUXeQGbgb4QD4o+oLOspe7lavFku?=
 =?us-ascii?Q?S3CCoeOuamR0htooTq0dxz9hZC8Wwui2/JaymWuZlDL2EtM0JW7IDirHerPo?=
 =?us-ascii?Q?ij4/6neh5PI4YwS/We/UkJOs0SVSSJwK97FTynJTLheYVFMGVaH1ebbDOQnF?=
 =?us-ascii?Q?qby+lsEBGrzyjkIkXLqnmFu/zWI3D65+g/VBwwdLkMSpkV7956AFuBjcmUsr?=
 =?us-ascii?Q?yN6gDRsSI8n2ZcbAq/QLmhjCOwgyW+68SmWplZGfd4OYV3ex1ZsfcnRB4rpY?=
 =?us-ascii?Q?OJm7FWsH6WJVLa3Ro3awnTjmodJOz2Vb1kKPTM75k8E88+cH8bnvj0nvOagI?=
 =?us-ascii?Q?VvL77g9pQeQKxW7iA63B263g10vZLQwPr1L8736VZzvVZRblVW/UgYgDElEd?=
 =?us-ascii?Q?j8141bXG2wbdtrsyYluYPDTZC2MwRGDQn+Ytd88w9HqHkaApvz2J8qMwbQUv?=
 =?us-ascii?Q?bWhACKkLIt9ClxZkRItg0Edi+kYmTJRr1k/KfxOXkX6GwSoQQv7cbO70WI+C?=
 =?us-ascii?Q?tDfGxIi+Mfzf/WAaWjHy/N7h0LiB4w6GAmygaxwZ1tgMHDhPmlq1sh8At7f2?=
 =?us-ascii?Q?60+WalQXt11hDH9/Bo7+m+enhQiIYuKZzUm29EIj4P+h8mdzwQA4zIlL+bXj?=
 =?us-ascii?Q?vbfOi+38GOJn3XjatKiv/IJFzNNpF/DijsTj5nJxpXXcZnywBpsx83WzWQlr?=
 =?us-ascii?Q?B0jahIQI0AtARck4u0ztpobQNAtMNRD+EGTmB2y/qf927crhkZYy+w2cZXxq?=
 =?us-ascii?Q?Gtu1og=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03087dba-abb0-4f1e-76c7-08db6503ee72
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2023 13:59:36.5058 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jhDvj2yik7y5GTDHgWbOvTys+zzxbUavaOcG7kKtHv9VMWJId8UPD/THTsPIJrReuXd/VP5S3p3DjtXpLHRerhWYPbuw8PRu64AT5kFvML8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR13MB4887
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W6EFUeLHdcEW84SI8teTfRiAIsR4B2McylZqdeNtJPw=;
 b=SpMssfnRF/GX9rTCXiIBhin786Et1+XGgtfJmdU7ZYkckmcfazkPcp3wVy9CmzqkEXjcTwBzzdLd+EUFmaTNKdnNriRpL6L3/yV2Gj18h4C81EtJZ7uJMF9m+U1GjWnFo3/DoE5us9DVoAj39iTnSQvU7dyBpjZnpQLSYCM8U/8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=SpMssfnR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 06/13] ice: Implement
 basic eswitch bridge setup
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

On Wed, May 24, 2023 at 02:21:14PM +0200, Wojciech Drewek wrote:
> With this patch, ice driver is able to track if the port
> representors or uplink port were added to the linux bridge in
> switchdev mode. Listen for NETDEV_CHANGEUPPER events in order to
> detect this. ice_esw_br data structure reflects the linux bridge
> and stores all the ports of the bridge (ice_esw_br_port) in
> xarray, it's created when the first port is added to the bridge and
> freed once the last port is removed. Note that only one bridge is
> supported per eswitch.
> 
> Bridge port (ice_esw_br_port) can be either a VF port representor
> port or uplink port (ice_esw_br_port_type). In both cases bridge port
> holds a reference to the VSI, VF's VSI in case of the PR and uplink
> VSI in case of the uplink. VSI's index is used as an index to the
> xarray in which ports are stored.
> 
> Add a check which prevents configuring switchdev mode if uplink is
> already added to any bridge. This is needed because we need to listen
> for NETDEV_CHANGEUPPER events to record if the uplink was added to
> the bridge. Netdevice notifier is registered after eswitch mode
> is changed top switchdev.

Hi Wojciech,

Does the uplink here model both a physical port and the PF link between the
host and the NIC?  If so, then I think this is ok.

I mention this because I am more familiar with a model where these are
separated, in which case I think it would probably be an uplink representor
that is added to the bridge. And I want to make sure make sure that I
understand the model used here correctly.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
