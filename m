Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EE591B25D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 00:46:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6D2D41711;
	Thu, 27 Jun 2024 22:46:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yyFt-BqPRBHs; Thu, 27 Jun 2024 22:46:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35FD641713
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719528392;
	bh=OrdlN3pha+dh991iOk9EkAYGGZ1wNDxFTO4amcCrnVI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qkRvNonPmSwhn1H6yP9JlWs0eAZRbULGft9J0kkRcPqiDzgwj3S9qDChGJxdIBmpK
	 94EyugzSp1orqrzFnL0UJfndk9Iw4NKWz9Tl4K//2Dv7j7GzkO2AWDQLSRJPX5bD/P
	 JkxFkgzaphr6wJ1+bKk2dH4rMqRKYAtIM/AF6hlquhhexOb5wfH8jQhlhFEzKD8Qse
	 CqHN5039imOT1AVg8uaUvoYbjlWiHCuP6yJyVzj6Dz54UF+yTg6bnChqWYuklk/tUM
	 /ROO3UjuxwiD9M76756me818gTR7Yv4YhKpjUXBw2sah3Cr63Q3yXL5+pNTFIMfY4a
	 obmw8VdG6ZTHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35FD641713;
	Thu, 27 Jun 2024 22:46:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A9331BF28D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 22:46:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB02A60E65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 22:46:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K-LJAs69gZVa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 22:46:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.104.73;
 helo=eur03-dba-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 801D760E3F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 801D760E3F
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2073.outbound.protection.outlook.com [40.107.104.73])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 801D760E3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 22:46:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ta7So362v0N3qJMSWJYWTVCuVM9zptiKbVTnVwOmM3k79oL6/HlVmqPBB4OYQllxVHl2KAqiaCxITDLND7tZsGDjB7LJ4puXrPAqEqvHPognFBarsO7dZEWsM4pXAIFPxBllpWG/3RKh9Kf3DDNt6Es88FSLPnknzyou860oAZlaSwSj2FeyW9S6wtS0DQ94GovV9ykVbCl8REKWJM0lMdIgdSHzQXU14MERFCO0TUlRov7Tqa1Y4kBCtfCwtUVNbriAWDhbrz8mJ6U98u0MuxiHEHqcPDriZJ1J3r2pHUaBBS0NM6Q3ve4knvzIngWZCvrsLuviD3UgriOMBeP+TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OrdlN3pha+dh991iOk9EkAYGGZ1wNDxFTO4amcCrnVI=;
 b=dl0GVrLGSwju3XMcBIGDq6WwqLT/IRLs94rk60a/Va7sq6oViZBpJjvtU3olKkq8RzSL0fKfpjfOHfy8wkqRH38wCuTeJNe15vmq9DPVASsty5WM5VxV5GhRLTZ11oRUK6WdQIaVVkSlETwDBCC/lHxf5bFtPhQkyyPFwVChbZLon73IXaWOO8L5UzB5e5hEjLViT22u8NusvQ0+B4SoTRh91Yo6pxCSmLxnz+/cdkct1kvIqAlSgSVp3wN2OCtjaR7U+f+ZEnDxWdB4cq+qMN1ocQ8znQNQ1637f45Egm8HNJHkIeAsPqO/YVWAGTjrvA4SC/pOxQgLgwsxlSsMew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from DB7PR04MB4555.eurprd04.prod.outlook.com (2603:10a6:5:33::26) by
 VI2PR04MB10145.eurprd04.prod.outlook.com (2603:10a6:800:22c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.35; Thu, 27 Jun
 2024 22:46:24 +0000
Received: from DB7PR04MB4555.eurprd04.prod.outlook.com
 ([fe80::86ff:def:c14a:a72a]) by DB7PR04MB4555.eurprd04.prod.outlook.com
 ([fe80::86ff:def:c14a:a72a%5]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 22:46:23 +0000
Date: Fri, 28 Jun 2024 01:46:20 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Message-ID: <20240627224620.brr6kivuotedzy65@skbuf>
References: <20240625082656.2702440-1-faizal.abdul.rahim@linux.intel.com>
 <106e0d31-c520-4ef6-994e-df1a4c9a986e@linux.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <106e0d31-c520-4ef6-994e-df1a4c9a986e@linux.intel.com>
X-ClientProxiedBy: BE1P281CA0058.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:23::14) To DB7PR04MB4555.eurprd04.prod.outlook.com
 (2603:10a6:5:33::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4555:EE_|VI2PR04MB10145:EE_
X-MS-Office365-Filtering-Correlation-Id: dc10800d-eeb0-4977-7f5b-08dc96faf88a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KzTo6IOVUkJx8/h+ot+oAUb+/judWKyw9jRpbIekBYtApW4bXTclYX3RN8Z1?=
 =?us-ascii?Q?GaV6eQycAvNxLUHI+p+C7aPcxQ5bZbH4AdbxFP+GfO0NCl2JjKqFnqiEPNxP?=
 =?us-ascii?Q?x/0SCxODT+Bw5o95V0WstG/05vxr29aaBillDBcQopSgVocRfiVYLwJSqBYF?=
 =?us-ascii?Q?idQ/ZjQWpn8JGJzFyNg0g+CXlJ9AQAMHq3wyKZmvGtgVT+zaLiYi6CkBf+SR?=
 =?us-ascii?Q?W4TRmhAQfoiDqvTiyDpUSPxEHPVX8OLUHjIJsGgV5wuJbv4J7d5DvBvIfytE?=
 =?us-ascii?Q?Qy0z8/KLDTi+bMLzlh5zLUIIpFvUZhi61GBWsQL/B51gYxLuLxM4JKRq9U3d?=
 =?us-ascii?Q?If4zi/qtzPGyOhV9F2BZDK/HMFnK4sy1bNJARo1s4P2Mv5l1Al1PlQ606Yue?=
 =?us-ascii?Q?BqXc/eOEpwRCX70AumKuqJ56x8wGsRDnxGNxQFiYrCa9dZ2SC0qEciSBBKrC?=
 =?us-ascii?Q?JMpS9yXV6QfhoUq4cGidbygDyTwZGCCm/i/ANdAvG9gMgMgH+KCItpBmDJeV?=
 =?us-ascii?Q?TZWVjqfchDc8ngbovj3W1xXy4h+4drVVXXHt/dLDWhz9Ua3PLRADqZl1mS6H?=
 =?us-ascii?Q?HiG2T1nF7SbBCceDvwnwv1+U83hZRT5j++OJRPdhuaYekx8nRVSbpGIoe4XS?=
 =?us-ascii?Q?agiM6iN43Wo/U44qQReetbByWifCIdlEoNx1GoulAbxzhLClFh9BRuPgB2eq?=
 =?us-ascii?Q?D5duVqkRNF95Y0BXY4Eh3+NWi4JuqmtJNzqzCfE9CEgaTCdtkm+UzamECRqn?=
 =?us-ascii?Q?8qw0G+L9Z7vq3U8FdgWzn7um85zFIqANroaTpd/hIDm+UN2UubJSVak6YauV?=
 =?us-ascii?Q?4tSZAZyuHVR2+D18F97sGwLyfYQic6aMsygcmWcL25xHDD+RjlCFWXyzHBfL?=
 =?us-ascii?Q?J8UxJt/dXSuAtkmRGat6Qx85F+sjLb0tA91htXRvyY3zNxpMvZdXH8WkcBh7?=
 =?us-ascii?Q?mOnwn3w6H4+cetUgvHbLFi5MMxUr4JKQIGwpz5pnLL1pQaSQQW6RJ0Hj3h6d?=
 =?us-ascii?Q?vFFu6BVzpT5ZoNjSwOrkAstpn6hSVUkwD3P3MQ3iLsf83hJuHE17WYTBRGIO?=
 =?us-ascii?Q?NFlIpkGGmjn7NclEjk7zweOoF1BVLPfLgdG0K6n4IUsi2tINfGSVsDtArzFi?=
 =?us-ascii?Q?EjsYgOYDX7bzpeG9b7QWqZRf8LN/hV1Izyd471bSk5SIeRZ72EzhtOKJx/KF?=
 =?us-ascii?Q?2TFx1UPKpi93mYdV2nXycC3EW9zb+ei6sMLKVxx+AS3MHA4/bh2FiGmRruHm?=
 =?us-ascii?Q?RZY4/slLiwqLTK7eUJ3YMPnLcIC3ikm3ag4y/BMqTnGbCdAFjQsK534C6vOf?=
 =?us-ascii?Q?YzsKXoiCfMpu90OgkMcj+7gLxO9r/c7EIOYJX+WFkC8e0g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR04MB4555.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5iYW2uuG6aPBpK51FpT1GZYr3nVmF/y5NovX63zYNq3gaAt7+BsmYiJUvFbz?=
 =?us-ascii?Q?g1hFv5mKv06nxpsKTB54rNw+APeBi7r2KkOzKyTQ6/fXqX/fM3/yEgKlj+sv?=
 =?us-ascii?Q?o9APNYl5eDRK4vaDf/H3uBv6i8N2yuOPev6OUeDP7B16XX7T73NZ50oixR1o?=
 =?us-ascii?Q?In92HHhnuxol6SQUyyivsGmV3F4SlmUK6m/fQS94si0Rl8wTu47qfcJJ9IPx?=
 =?us-ascii?Q?s2icfDn2KYNAgq/hp/v7DoMgEQzKn9Bi3S3kZ0dyWcz4vWGYpAKEITDG/YJ8?=
 =?us-ascii?Q?+KnX0f58xurYp9E5JVbpBbXOUA7GvY8MKVFGawKZDnG3xhff2/RDwUpezqm/?=
 =?us-ascii?Q?gOoaFoVUnDIvgdAlKkewWYMc3UN8Y694aAeVMXG79LcRupnSnJVjJ40b7LTr?=
 =?us-ascii?Q?Z4BbTsHfq/vIx/2+WJnmPa2zkMONoguF5hD6jcZOF9VCiqcm0ZScQwGTXF0p?=
 =?us-ascii?Q?9NeBy8QdiOhu7B0s5ZwHxD7tFWY335kzNT8jMpx2j715tz3hCmjIamDWgC1s?=
 =?us-ascii?Q?V/i/NIdEm36rUQC0+TJlQP1fHEX8XSZv664yaAp/TADuMniJW6hd2wAcMtYX?=
 =?us-ascii?Q?LIzXfqhBarm3gGdUp6BakNfb/1S7P+ilL8z2URtSn9U8wWs7DLzQlrcrdOm8?=
 =?us-ascii?Q?8GetfrzwwwnZw/ThhdQUsku/sYbB6ljFn+GFh65trahP5vdfAaaoweINVrbH?=
 =?us-ascii?Q?IW0ZG8a6hxZn4QCMwhTQypHmbh7glxnYMnFtfE/UqmOo+tglmqBV6rrPJ0j+?=
 =?us-ascii?Q?a2b4ogbdpA2HF6PZ7viOZqj/qHdmlAwZ4ioUAhrMNviNRqRM647oaWb7gY7Q?=
 =?us-ascii?Q?wUyYF+WIa/YRN/tDyFPA5ew2qvukLeNW2uj13rySHJWgoXVVIV/JtHLFGxwr?=
 =?us-ascii?Q?63QzRVL5n1qRmU906plUVlIh1sWRK2gnJco2IAvkqcFObkpgMlga/3Hf+L1B?=
 =?us-ascii?Q?jCrRusPmh6X6V8a75V9bf12gHylINBbeaEOAeJnRH/wgV/m+brHINSNW+kmQ?=
 =?us-ascii?Q?OBUjvFgEgqrXUkInXMZjI9oP0/9gtSkas6WCU7uXt5YlZAIdAi4gDjEKtzhe?=
 =?us-ascii?Q?BMv9P1oiNmwiYyie+RYbJsbUwWgCBbWOZ4j2pqN6EvTSd9iWvNlVKyJ6jM6M?=
 =?us-ascii?Q?3YVAhUF2WLO+3L4mOTcyKqe4HKUlbEBYKskbI6drUT3MWShVy4aLu/9dK2hY?=
 =?us-ascii?Q?yh82EfyonUi7N0rjWOU9zhVkb+Dl3UjCKg4XU5osTmmr+U4X6DQXyBZg1jAV?=
 =?us-ascii?Q?K0Dy4T5q7tLIfDnOAdBa0JvVPqtLT1uEvDBTjpSTrIjt0d45vyvs510fAvNZ?=
 =?us-ascii?Q?PlL37ems+URvD6qu1zW8uIw9nTgo52aj8jOUGV/4DBI3jQb4E6i7dOvk/2zh?=
 =?us-ascii?Q?W6sdKpmWwrhZV92//zOTD3INWmKLBOlZn3UWd/TuClj0ab2H4MGoaNnGN7wb?=
 =?us-ascii?Q?dwr/wEJ0x+FOB9JhfOskh5ViTDSeBfQMBRlVoBbgWSO0xSVxJ7tsLPgcahvX?=
 =?us-ascii?Q?W0jB3m3dgRXCLBfxqsqaZV3Bgd2cunyD0MuYu6t6AZ6xe6qaMY+2K6l/S1Hx?=
 =?us-ascii?Q?r3rGAiFBfAwS5Ml3xRu9c0sc2V6Kwgp8spAcvmZSKvaa7NuKcaKw3tQ/i32T?=
 =?us-ascii?Q?JA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc10800d-eeb0-4977-7f5b-08dc96faf88a
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4555.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 22:46:23.7122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y8B1y62eqW58vlrrjJ8dqJUTp5NsW9ZeAh4JSW7EOW4whkI3PNE3dD3sTACCnj9IfOQAm76iLxl8w46pcm+J9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10145
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OrdlN3pha+dh991iOk9EkAYGGZ1wNDxFTO4amcCrnVI=;
 b=m0Y14yge1io5lFXsF8Nrgexk2sEee5dbAZvnB6iqg6oZR6IedwyPlmRiyvNicXn9Z4L4p4iJBClAtIcgCoHaeYqLp+3vAjMABpt4pyUV857LWs74++qI+STdfb3tKuarodRDPkX+erMfY+PCusTeB2GEpSeMoga1coCoUSBXwqc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=m0Y14yge
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igc: Fix double reset adapter
 triggered from a single taprio cmd
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
Cc: muhammad.husaini.zulkifli@intel.com,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 26, 2024 at 09:19:12AM +0800, Abdul Rahim, Faizal wrote:
> Added Vladimir and Husaini in CC.
> 
> On 25/6/2024 4:26 pm, Faizal Rahim wrote:
> > Following the implementation of "igc: Add TransmissionOverrun counter"
> > patch, when a taprio command is triggered by user, igc processes two
> > commands: TAPRIO_CMD_REPLACE followed by TAPRIO_CMD_STATS. However, both
> > commands unconditionally pass through igc_tsn_offload_apply() which
> > evaluates and triggers reset adapter. The double reset causes issues in
> > the calculation of adapter->qbv_count in igc.
> > 
> > TAPRIO_CMD_REPLACE command is expected to reset the adapter since it
> > activates qbv. It's unexpected for TAPRIO_CMD_STATS to do the same
> > because it doesn't configure any driver-specific TSN settings. So, the
> > evaluation in igc_tsn_offload_apply() isn't needed for TAPRIO_CMD_STATS.
> > 
> > To address this, commands parsing are relocated to
> > igc_tsn_enable_qbv_scheduling(). Commands that don't require an adapter
> > reset will exit after processing, thus avoiding igc_tsn_offload_apply().
> > 
> > Fixes: d3750076d464 ("igc: Add TransmissionOverrun counter")
> > Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> > ---

Thank you for the patch. The code organization is much more logical this way.

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
