Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D32B058FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Jul 2025 13:38:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AD2861076;
	Tue, 15 Jul 2025 11:37:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RqiNJB-eN8dr; Tue, 15 Jul 2025 11:37:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F07B60ECE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752579477;
	bh=EiQhKXWfmwzHyjhIqKzdgdzdHG7JhE1QoHzpErzbBMg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6V7wyeAz0sm9Z1F3os559BHxELkvRHFR99EJUVvpxBd8bwu2is15NbXyNSTbUYk+T
	 J+1NtgClBU4KFIWxgzOXGOh65dBbN1dD13S4/g9Kfx+DJiY+Lfc+jq5WjF2a9nnpgF
	 xeZN4reRury/HnAegG8HCTNggyrW0mf0OVUcd25NwiIoBzyn/J63gaxP2xyPBzmwp9
	 bNMGTN0Na7VQdaE9VGBCeFkCB6a3SsIHI1GxOzBsj0LRbo8KmbVeP06/Yd2Z1XItVT
	 XpcAgpz2jN1g/0rfz0mM3xHp2sT9SWmiEdTuTjY7Lr/1Scb77dgFipgsX908pYBXpB
	 k+yUSoAA6LKOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F07B60ECE;
	Tue, 15 Jul 2025 11:37:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A00F11AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 11:37:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B4EC40F20
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jul 2025 11:37:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qLx4VXy_UA_g for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Jul 2025 11:37:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.65.13;
 helo=du2pr03cu002.outbound.protection.outlook.com;
 envelope-from=malin.jonsson@est.tech; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D624140F1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D624140F1D
Received: from DU2PR03CU002.outbound.protection.outlook.com
 (mail-northeuropeazon11011013.outbound.protection.outlook.com [52.101.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D624140F1D
 for <intel-wired-lan@osuosl.org>; Tue, 15 Jul 2025 11:37:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mVPFgis8a6PjkALHggzcWg7IH/DLsi6Ez7Vb+PMqxCCCC8fHZCRQ/14tam+7UTx84WPNOie5NvnVGlceWawRw6YdDUqsDBrpZ9x1wvcLgMzcbnnZozzQUb0StpCwuBIHdPSOq2O1xrFcQgvRKZ02Rt499Npfzqj0i4XmblegK1gOWosV5/CJGlgSCzfLrohX7Yt6tsfxOKceyQAxCSt6OsThhwXu5mkiEZfppS1HV8801Mrn9cICnB+UJIXUadvRhZSAJLKeyltGg3eLPseS4jnhwX681mAG77RUvgVoE+OUw/ghzrt1uQSzH6JOQM3+GvL+gjpb0dc5e9FtTjrgXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xvd1qoU4pYIAoQzn00hIzbgFbTQ3Bm8G9flXeAoOi5s=;
 b=mDDAk3L7uPFFBe0q6A3F0xKW7igN85FZct9bHemWJpDcNhdfdzm0cSMXkSPLJ57hJw+S97RQQuC5FzH5yJwDsdH+w/Q7Jjqd84p2svLfqjm6G575Szkr3+9rlm/RlMACgcGz6Oj6kKn9mmCDMtcCyXJBO3r8bKjYcsedHKpXAAqmQtP7U1dVc6iiIsXNyan+7Yar9v/btZbzOSNs7nfkk0rOvt6IFFsC7U6y1ZFY+W5Wzwc35FE+6qDSMFN8in0DA+8yGkNYpQSQOMuAbSk790Ricl5z4MhHGCAbnAiZ8Tm/V12FzrI+p2aDayKqZewHb7IpoqwxwqWdaI8diYjctQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from DU2P189MB2588.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:49f::19)
 by AM7P189MB0995.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:17e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Tue, 15 Jul
 2025 11:37:51 +0000
Received: from DU2P189MB2588.EURP189.PROD.OUTLOOK.COM
 ([fe80::8636:4f22:3af7:9aa1]) by DU2P189MB2588.EURP189.PROD.OUTLOOK.COM
 ([fe80::8636:4f22:3af7:9aa1%6]) with mapi id 15.20.8922.028; Tue, 15 Jul 2025
 11:37:50 +0000
Date: Tue, 15 Jul 2025 13:37:49 +0200
From: Malin Jonsson <malin.jonsson@est.tech>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, yong.g.gu@ericsson.com,
 roland.kovacs@est.tech, intel-wired-lan@osuosl.org
Message-ID: <aHY9jcuesPs5-zdh@jotunheim>
References: <20250711064746.649332-1-malin.jonsson@est.tech>
 <f6027166-2ab1-4221-9636-7ed40f1865d3@intel.com>
 <332dedfe-d3a4-446b-8a00-8d56bc54318d@intel.com>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <332dedfe-d3a4-446b-8a00-8d56bc54318d@intel.com>
X-ClientProxiedBy: GV3P280CA0096.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::35) To DU2P189MB2588.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:49f::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2P189MB2588:EE_|AM7P189MB0995:EE_
X-MS-Office365-Filtering-Correlation-Id: a1b0d2e0-e183-452b-d565-08ddc394079f
X-LD-Processed: d2585e63-66b9-44b6-a76e-4f4b217d97fd,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?8Gp4WglRmFI5Nkk8tdjq6FytcMyfaH8LHLf5fK3NBS3iF3gVsr8SGVczQn?=
 =?iso-8859-1?Q?6tUtFy03d+a5vhhCqB9hub60SRdbbuuXv/1dMmfYelwNmsA/d+F688QYd5?=
 =?iso-8859-1?Q?Gz58B9FumXSKmG5WpAN0U+kL4DDpArGM1h73muDyH2HNZ9mOK/SYDkU4Wq?=
 =?iso-8859-1?Q?XDUdOTgZ4HpEbD5IwFGjeDYk/RVXuKRChXeKt7co67yqNtUjK0NZ2K6VM9?=
 =?iso-8859-1?Q?eMgdkU9u/BxKyPD2wuvCbw6vNilffxBv4vYF7vllz11xdEmYalXilK4CXA?=
 =?iso-8859-1?Q?pOLcCAQNkQkoFIxFdUnmqz9dNujDMl+SI0gZEikbiufsvNMB9MBSdAi1JM?=
 =?iso-8859-1?Q?zxJroXXKgeQzOFBn0PY43fgZc/wZsOuUDvKL+fGyZIbugvMR/4if+J9G2t?=
 =?iso-8859-1?Q?1HRBZLlmaq1Oaj1Sh2bxjjK1Y8DAkI8tz3gHBIuTcqYZsiC+XjN2a0Q76k?=
 =?iso-8859-1?Q?fVKhHlHtlW/bn/O53ZQPxysboZnFMVYatpROjbYIfkqGQ5lRauBTXYlGzd?=
 =?iso-8859-1?Q?FvkyjLNppHQj/nGOD+mfQC8VBXUDeAvNkhspsM0TyKJNZJNzDaQGcLputs?=
 =?iso-8859-1?Q?JU3vgWctV5w7kRQDRcFURFNkJnqNRqSW49Xz0Q/yqs19ThINM4xU9qqX0/?=
 =?iso-8859-1?Q?gTPS0be/Kixrpa8RDrHpKP9MFIh6M8osyZc/pMnEzlKq9Obk0UUbTAevSL?=
 =?iso-8859-1?Q?ehq7BWRQFfpwJRvc/ZFtEFx39DF+Nv2s3AkX8R8hpMRIaZoTyWg2jWmeY8?=
 =?iso-8859-1?Q?4PAvBNEta+lTgZKHVUyVJ9RRHsTZnnGy4Ywuus+KVU6FHdviX+6vbPUp2d?=
 =?iso-8859-1?Q?FCqa09AqezHJB0Q4czkLoC/h2dLF5xSiE5Xo6et1C76Yu6lhuKxTPdKcZL?=
 =?iso-8859-1?Q?rTB9Y68wRULqbiTowPUEIzssVO7tguvolxqoWgXqbdUQ6Qss3y/JkdLc2k?=
 =?iso-8859-1?Q?UEj1jF/6ELcJ6GiiOyf3YvaupquWCjhFJHwXIiZxjDo2cGcK+QL97IDw6R?=
 =?iso-8859-1?Q?T89ZP75geEKAx0y5u/xBDI+QkS3bFVNl5OP/gyu6xjEGJuRdYTCoFz/QSR?=
 =?iso-8859-1?Q?wcOolbwr4OjLAQ6sfsKPkeiomUVcIo8fbqoCpOhTkNhCGPBXfAJuOy+ep4?=
 =?iso-8859-1?Q?HAWls9UR9wXCFC7w3bBNlURHnnSWxwqYpEeDKemEXnLagBsqTvqRodbdiz?=
 =?iso-8859-1?Q?q5G4BPqTH1FChhlSswNEI6sgzCWHotxSdbxkHUtCD2c+vwAhCjZFgTGgeS?=
 =?iso-8859-1?Q?6/RkjWVpAh8RiaVQxx4NNQZ/pjR5TxTGbvRNnqvPzvNyHCT0FjxP0O4Qh4?=
 =?iso-8859-1?Q?iedSR1fK7ZEFHMB+xFnt3fL+7MJC8PJmKhhXyF3vmRhbaY8lJD5UY0l3pN?=
 =?iso-8859-1?Q?k6vtsBK/EfM5Nm1NoWPMkskzch+NWFXGENO6Hkezasz3/sxTtJjOrzRavU?=
 =?iso-8859-1?Q?aBWeeLbhAyAhqEL8ZImsEWFCOz0DMCfloPdhmQCE/mIaZcr7nqZToHLGun?=
 =?iso-8859-1?Q?4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU2P189MB2588.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?UozT4HX3CfN7c7aQDUti8IKUuzDDP/ua/7TJiOkj5oCI1BM9INBRszLAM7?=
 =?iso-8859-1?Q?B2MSnLtn/maLbmS4F14I9OgjOcaluYgKErvZ94Mqz/Rh4/3eMSPlQ3rFDa?=
 =?iso-8859-1?Q?eU/xZy0igZhscHYmr0Mx82bmy2kZV3U80ZZUumuXIvs1D+SaI8Sa7Fai9E?=
 =?iso-8859-1?Q?TOZZhJ37+5lEDUqT+UKJRcvhmep/7KaxRetBp4RE3BRQvqDDcoH0rwszPh?=
 =?iso-8859-1?Q?+yDlr7ndPIvKaCDOfRxmDKT194xSIMcwwM6YNZD/jiIPsW0IYmvbaFJ38D?=
 =?iso-8859-1?Q?CWY6WZGC2SI/X/TJuRXQ0LMZwgOx+Ro3qBrfLSdfoet8dq7+1MXaRCXv89?=
 =?iso-8859-1?Q?eCApWgLQ8AD4IUgQzAbhxqdQvC/dhQFRtwN586dwolsVphgAvHZaLrwqOq?=
 =?iso-8859-1?Q?2uF46a5bA6GCGOo8vos7r7MuG7OowN69oLfY4Yv/UkPEUobewroDa8woq6?=
 =?iso-8859-1?Q?nGzaQ+YdNep9smR9oedPnNHGP/Ctz9lGsMHfDhrsKofUfPBL2xi0Hpf22u?=
 =?iso-8859-1?Q?G+z7Y5O6jXSyNIbLKUYnI9EOS3HvK79vlCA84BvdHLBgB+R/S6eTnB0OBJ?=
 =?iso-8859-1?Q?lhb+TbWLaMjhI7ReVKG+YZiLvcq3bQcx/SxCbgc3foLAybAJ9ghhymE42Q?=
 =?iso-8859-1?Q?ArLqSUzs8pZEgwyPOmVYndU03MatJqBZjcLaNhd2waLjsOLDxrac+wThn0?=
 =?iso-8859-1?Q?1uScgPxlBY5CuFKk+44GO6NYXhrAtSCgdztxNwMvTD2MkDiPwouUu4FfTX?=
 =?iso-8859-1?Q?c+b8ly25pnF+jn4b/9SGiLuxyPAOtNw4pso5fEUxLcYIDCkjDxt3aUbXGx?=
 =?iso-8859-1?Q?dMfKRhnoZGjBo7dC4mqEmhuSldE8/xVfF1c03LlHNnFUGy4bzSWap27TeL?=
 =?iso-8859-1?Q?xNqgDdUSvfRRlKtZlhZ/fYmUv/e09JqEPsYBZp9Tm0JQYj163BsCLABt4m?=
 =?iso-8859-1?Q?EBdlqIpYLNoUId8iCqLpmSd7Mb5kFczpQVscQp7rv3vNJUcuwxII6osksO?=
 =?iso-8859-1?Q?iJJsClaZbhPBeBMfh8Z40dXGNp1bbc+VHITrELJKccXC1pwjyOmhtCcVck?=
 =?iso-8859-1?Q?VbHDMc7He8PNvihLLdAGgzwMGxnQyE/QcAlWGpoixeDMcF9eIbHlqHi6hU?=
 =?iso-8859-1?Q?F0M6lbvAYH0/7n3Up0ZQLHVSMj9P3vj7EZYzfBORsmG9wMR07YLKcl5CET?=
 =?iso-8859-1?Q?EoPaBNmmhFB1d6OOjwamXxDtkJ9n+XRa3LfqHHNhQrG4BZGe64sjVF++9X?=
 =?iso-8859-1?Q?yoDUh5V5+F4RIF8agLAuUNkLvmgps0S7K3T22XcsGXlDRAzf+hEEVLjhHu?=
 =?iso-8859-1?Q?WuvI2wQp3U5EHr9LVeWFSt2F+2evCHNeAysx0tDHAbRweSFL1aAtl3jhjQ?=
 =?iso-8859-1?Q?Et4VKHUNgVx+vWMtWgucpnOk/6SiYMxMi/7q1h9Kr8AYD/NA7eMborVbzs?=
 =?iso-8859-1?Q?z7RHfW22lWIpuiYtRlC6ZesvJYRIfyyDgJnAuBEcPJiQM+kCUpaCM/Xgpk?=
 =?iso-8859-1?Q?VB80hHcwh5i9G3Lr9if68Ym0vxBtyFzicyzU4WRwMcvg5lTlMIXCGawQCM?=
 =?iso-8859-1?Q?6FoWzj7eoPpIp1oWl97W66nmQNCnSKfQ05Lpjffn+lZd5CTGVERclUn9eh?=
 =?iso-8859-1?Q?NVM2MdAB9FpJDMd39Ef+jtcspGuANVfyufP92ZYHikrM7CI+FlKv1oa51g?=
 =?iso-8859-1?Q?USfeDY3FHh5MUqUpO5HTaS2wiSlFI7PWuHVt2Q9jZdYlSyXxw7+TlbV4+a?=
 =?iso-8859-1?Q?K7ug=3D=3D?=
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: a1b0d2e0-e183-452b-d565-08ddc394079f
X-MS-Exchange-CrossTenant-AuthSource: DU2P189MB2588.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 11:37:50.8805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AGaRqCxpKf5eWVlrH1nROi7IfL4AXwrf99Bt2Bmu5rji9RDw+u4MVSwYZB3w947b0SLW2InScXL5LaR0F6hrmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P189MB0995
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=est.tech; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xvd1qoU4pYIAoQzn00hIzbgFbTQ3Bm8G9flXeAoOi5s=;
 b=MSrP6+Z/I27/pMNbA1nSzRgawrJ/EGMyYQpnTnqcf9Th/eNZtiUJdS4hFfkM/9PHb0ntN2HTzRXWSOxLjdOtCgermFGjUUs2M/CvdoTFs9KJOMFaJjNvEhKnDYNhyMDXWrUsGvpBbCA1ulRpSDEJPrcUQoMhcrlArNuLOxCutGMockS8PpQJMAN2lmbUp3hj90vaKTQrJt8lOsU0zPVYKwa24r37bbxGiaCGlsfTEISBoUpNULAxDj0n+GH6awsZ114x7KaW5pq3xVa/6w+I7drdjClwYRn6fyii5QurqieEDSUcjoUL2xqpnJxH+scyR7t3x7fSlMMM3vhUBSGnfw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=est.tech
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key,
 unprotected) header.d=est.tech header.i=@est.tech header.a=rsa-sha256
 header.s=selector1 header.b=MSrP6+Z/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: Re: [Intel-wired-lan] [PATCH 1/1] idpf: Add missing dependencies
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On mån, 14 jul 2025, Alexander Lobakin wrote:

> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Date: Fri, 11 Jul 2025 12:25:09 +0200
> 
> > On 7/11/25 08:47, Malin Jonsson wrote:
> >> The idpf driver depends on both AUXILIARY_BUS and NET_DEVLINK, but
> >> they're not selected by the Kconfig. Let's fix this so idpf builds even
> >> with a stripped config.
> >>
> >> Reported-by: Yong Gu <yong.g.gu@ericsson.com>
> >> Signed-off-by: Malin Jonsson <malin.jonsson@est.tech>
> > 
> > Thank you for the fix!
> > if you have a Link to the public report, please add it as a Closes: tag
> > 
> > Would be also great to add a Fixes: tag with the commit that introduces
> > the need for given dependency/ies
> > (there should be one tag only (per your commit), if both deps were
> > introduced by the very same pull request, just use the earlier commit)
> > 
> >> ---
> >>   drivers/net/ethernet/intel/idpf/Kconfig | 2 ++
> >>   1 file changed, 2 insertions(+)
> >>
> >> diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/
> >> ethernet/intel/idpf/Kconfig
> >> index 1f893221e2c99..5c7ce626aae16 100644
> >> --- a/drivers/net/ethernet/intel/idpf/Kconfig
> >> +++ b/drivers/net/ethernet/intel/idpf/Kconfig
> >> @@ -8,6 +8,8 @@ config IDPF
> >>       select LIBETH
> >>       select LIBETH_CP
> >>       select LIBETH_IRQ
> >> +    select AUXILIARY_BUS
> >> +    select NET_DEVLINK
> 
> Uhm, idpf currently uses neither of those...

Correct, I didn't do my due diligence before I submitted the fix:

I maintain a custom kernel for an Intel chip that's still under development (PMR),
and we receive patches before submission to go with early releases of the PMR simulator.

The patches that introduce the dependencies are not on the list yet - I
only realised this when I started searching the list for the commits in question.
> 
> Could you give a real output with the linker being unable to resolve
> auxbus and/or devlink symbols for idpf.ko?

This information doesn't apply to the upstream driver of course, but for completeness' sake:

ERROR: modpost: "devlink_info_version_running_put" [drivers/net/ethernet/intel/idpf/idpf.ko] undefined!
ERROR: modpost: "auxiliary_driver_unregister" [drivers/net/ethernet/intel/idpf/idpf.ko] undefined!
ERROR: modpost: "priv_to_devlink" [drivers/net/ethernet/intel/idpf/idpf.ko] undefined!
ERROR: modpost: "devl_nested_devlink_set" [drivers/net/ethernet/intel/idpf/idpf.ko] undefined!
ERROR: modpost: "__auxiliary_device_add" [drivers/net/ethernet/intel/idpf/idpf.ko] undefined!
ERROR: modpost: "devl_port_register_with_ops" [drivers/net/ethernet/intel/idpf/idpf.ko] undefined!
ERROR: modpost: "devlink_info_serial_number_put" [drivers/net/ethernet/intel/idpf/idpf.ko] undefined!
ERROR: modpost: "devl_unlock" [drivers/net/ethernet/intel/idpf/idpf.ko] undefined!
ERROR: modpost: "devl_port_unregister" [drivers/net/ethernet/intel/idpf/idpf.ko] undefined!
ERROR: modpost: "devlink_priv" [drivers/net/ethernet/intel/idpf/idpf.ko] undefined!
WARNING: modpost: suppressed 10 unresolved symbol warnings because there were too many)
make[2]: *** [scripts/Makefile.modpost:147: Module.symvers] Error 1
make[1]: *** [/repo/malin/elin/linux/Makefile:1956: modpost] Error 2

> 
> > 
> > looks good, but please notice that we keep this list sorted
> > 
> >>       help
> >>         This driver supports Intel(R) Infrastructure Data Path Function
> >>         devices.
> 
> Thanks,
> Olek

Cheers //malin
