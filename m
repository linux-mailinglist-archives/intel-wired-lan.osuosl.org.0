Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7181CA84250
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 14:00:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE3D8610F9;
	Thu, 10 Apr 2025 12:00:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LrnlXHrBd6IO; Thu, 10 Apr 2025 12:00:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32B1B606E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744286404;
	bh=djNbO8G3KeWaH2TuLKoR1gwPu3clpRuvOk6kHpHVvzM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lFT9Ynv6zkQHjHli/3+qKTbZgFsEJRXSSnu00SJ2aPBaYLxPFk7VUAoapET41c9ns
	 0lJntsSntu5U3SJBOP0i8BJo/UuUTxEskVkBxRq1oVf/YNviyZKcSovCu4RCH8tDCe
	 2vAVYBgYuHBcYa6XnihSnkGjJ9d5fAVNiGa7xqspRd0JrKNntma1fQqQzweeSEtWzN
	 7Xm5PmAFsjWL4ZgzAI9JygAaflrk7vFWdO1FUB3u0KfNBFTgKBPPnymAJWiQh1S3bq
	 fk8iRkCS+mcAHkM04NTtot3UtXJY2VlUeWytWzd6mqtcoJgZRV3s4Xk08q/bcspk7g
	 cOvQWhIIzYrNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32B1B606E7;
	Thu, 10 Apr 2025 12:00:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D17A1138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C26F4606E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:00:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UTWt5sYYYxWK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 12:00:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.102.66;
 helo=nam04-dm6-obe.outbound.protection.outlook.com;
 envelope-from=jgg@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F1116605D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1116605D9
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on2066.outbound.protection.outlook.com [40.107.102.66])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F1116605D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:00:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nk9MzO1cgpOg//fP/TpFF81826TiufQNSgxjFIfZf0us0I/A5vssxuOQA0TZ6JBeUQ80us5ALkfF5/8bm2aqkTYl4HsGa+hMGCbUy1kzj3kv4aaYBUp8jY3EpLPvi2hbJO0g7XpGmkfMspoPVJDQz5FQHwjuYedkDzIwWwhUO1GFz3kZzDsDRTCkiOJNIWWNvATZ8uJh5qFHwPqEXx3093VdqD/AqVWzFKA/j957PbmcBGlS3O8Cd0+kV2llAHGSm5ut7tvvqnbfUDt/ht2CrTv6jOttk/7jwqGM88O5fguqTl1ojFkNb4sHghUouJ+BO2fJzDLdCBUh+f7VZqCVww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=djNbO8G3KeWaH2TuLKoR1gwPu3clpRuvOk6kHpHVvzM=;
 b=azZteJHZpAzGYOTjo6hHiTIUCBQqn355O3QPbHJKhGiWjMxkUCtgblBFqtNP26IJQKMBUPBfw8Xe2xOfQms9EIJmCaL8sVHjUFKQkfzsM9Ou2aogvMqZ3fS1nZDqzLJJe9NxEjWhUGAFIOhOIi18AB56mHU2j5xdJ+TdpeA9bRxwSyTW2o3tLZeOpTIs7kCh5+sOVF8opEaoM01hK0biviLvN83HZ5PgCIm9erdwMltxXiwH3rggNy6Ss0PDdjELsshOyfUdFmW8LF7e+6pXrLGT+mbj6OGNJR3WNLfJo6yIK2eLFbIHz4za5Aq5+RFtVrfC6qfkKppDp6hYPYM5wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by CY5PR12MB6383.namprd12.prod.outlook.com (2603:10b6:930:3d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.23; Thu, 10 Apr
 2025 11:59:58 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%4]) with mapi id 15.20.8606.028; Thu, 10 Apr 2025
 11:59:57 +0000
Date: Thu, 10 Apr 2025 08:59:56 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20250410115956.GQ1778492@nvidia.com>
References: <202504050434.Eb4vugh5-lkp@intel.com>
 <67f72679bb038_2ce629469@dwillia2-mobl3.amr.corp.intel.com.notmuch>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <67f72679bb038_2ce629469@dwillia2-mobl3.amr.corp.intel.com.notmuch>
X-ClientProxiedBy: MN2PR06CA0011.namprd06.prod.outlook.com
 (2603:10b6:208:23d::16) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|CY5PR12MB6383:EE_
X-MS-Office365-Filtering-Correlation-Id: e08f8bec-bcf7-4fa2-a7af-08dd782736d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wCNCvi1qs3jwH/C7/783YY3oCAQsJ8whvHCgL8YJyn4YIku8d3ijUxu2V4Et?=
 =?us-ascii?Q?Bxq5rsfXhw3Y3/vQAJ7rh8k89/3DQYMMdvDAv/P1exwgR7nozm4S/abT03pt?=
 =?us-ascii?Q?qWPro+rrIdn486BOyxbi7nlzBID9mdo2p86LkgwLf/L+r3xHzLt69xx3ZwI4?=
 =?us-ascii?Q?FsG+UHylZkB4/BJFzWzQk2MwhwLeApwE1BfI1H3arx7fb0EUpDBZwfNtY4Iz?=
 =?us-ascii?Q?Jk8Wsa2F52mc1ocSlN0NeNaxyT/rQgYnsH/DkfntBVAIbBNlQP2JT7jRr+cS?=
 =?us-ascii?Q?/rUbHjHh0gb3oX3RpWthWSz1TWFjrqgkGIY+elx6uhHv0IbmOT7DovRya5+v?=
 =?us-ascii?Q?fQSGBAAnl5XOQmw0314hedh8D1R8zh9ZRjTXKAheScz1CzIQthPsHuMagPID?=
 =?us-ascii?Q?SOJyICSLRoMHtw+0RVn39QuUGcQ7DHFB+zl0eL8NmKOLyc9h+hFcLd+KEM1C?=
 =?us-ascii?Q?hDqtDTBF5s71duekR62B897KvWNlLECj1hulu2/jr4EkCSZK0conueZLn315?=
 =?us-ascii?Q?ItvhZjC5daoA98sNTLnAgCkoKo9v+17nWq6Ckb+di1WfiZhBnwKxVaJSIEVA?=
 =?us-ascii?Q?FzkeCzUQv96Dl6f9M+r5NK2HWF9q7OxbhUMZ8WvctYi+dSGsfHH+9rtN+xe7?=
 =?us-ascii?Q?RvK3vsMPA3r0KBNa0Ca/R4CpZXtfiUrQlS0C+FwH64f9oLwOoJ/ELxhurf/6?=
 =?us-ascii?Q?v56WUpGO3Mz1fsNX5DZFJIP2whvX45VFW0knJ65IXQc7dMcjYmn8zcLvhb+E?=
 =?us-ascii?Q?VbYHEK/pGH0Etm8G7YCXKVFyZxNqbFcV9AmJDnFo3x617dNBUfVhDalETxQO?=
 =?us-ascii?Q?9PH6O4m4Z0IllF6oBxHAKvGxXuJCq1KT9PMSjD2LqfiFnDCf6Ycr8m796d/7?=
 =?us-ascii?Q?g4uMmjuvf2LWgnI3552C7kotpaPRsl7pNAItfu06xiBurfA1m0Y8dhSYGSRC?=
 =?us-ascii?Q?/wCF5Y6xDjQ+i8lGcmOkV/a7C7L3ZUfasN3dGuoeFwHKP4KLcaSin7bhQ/jf?=
 =?us-ascii?Q?Yyg1KrMaa4mR8ptURi1k/VIaq57U++dvXFIcbg0eEVKyHib4bXtzSHseZyk7?=
 =?us-ascii?Q?uWzfoTtfApp/7BiVVTOwK8SY6pO8W5sZ3l7FMZZBfu2BbzJ1OWPq7UMpW26N?=
 =?us-ascii?Q?XMrfkUhR3E5gF7tIAxEpPXy6XBZp4fXgHPCkhg+CGmhmQIWvQniOyxGaxrpQ?=
 =?us-ascii?Q?PMgta+TxBE7MQiIp9l+Tz/pEMmuW3avq3ivezcBIeqimVp3JTzRw7+iheiqT?=
 =?us-ascii?Q?FXZs7NJtwXJr+ILjyFo8pm7GpSQHeIOOEXy+j7TkPn/7xujIbwJ6oejeXe/S?=
 =?us-ascii?Q?3A+w98P5E0wcEKU4+QxJTWYf5GC5QGCzuA/tWW2z3oH2FlfaIKSJdn0NcPBR?=
 =?us-ascii?Q?ucIKVgBXVLzU8M2pkNEB+B8uORZISq/Vrzh+jWPXEJBV7JYXl38kzexhdPDj?=
 =?us-ascii?Q?PyI+hRJ+KhY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB8659.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hGRtBbsYLEnb6S2dylmqQejIwGRl+2HGA6TSdpwNvy+U4/rYGjFE3ztdHF5p?=
 =?us-ascii?Q?+zk7iVEZL1NZUZGmExjr6omHL1n0gq/DphcSN0Mw4ZNGmgMt5HlBY7oiBWuh?=
 =?us-ascii?Q?YUZ4fNtBpxrTQEhw/IW7leHaGokiGqHRcc2xZBI06VgyBu5QVUU05yPl/iYS?=
 =?us-ascii?Q?6Xq8y2Xs/WZb40LZCfix2efUPjwgx8t5KoZAGUxPeTlc8Y8laIjrWhqG6yRi?=
 =?us-ascii?Q?SHdkDrWH7gZxTL7npaOZZZpLUqEBXYOOC6LjkZy624Z03QqO48LXpy/Uq7BJ?=
 =?us-ascii?Q?WGpnqyMjibdK9epZZE3l+Z46hJd08WzZI0Lqb/afUh4CKBI9Z75OaT3KopLv?=
 =?us-ascii?Q?vLZzjBgxsw5WaE+2Va0bk02dqttbRYOvZBgVeObrnUfYH0enS51Ofp0LOA2T?=
 =?us-ascii?Q?Y9sk9AAvsHiK4KYJam85QOxd/HSKMVMsMChSOThYDKkPaR370ewmzr/WpVrB?=
 =?us-ascii?Q?5H3RamhK4MC31BBEhm2liWc+ZrX8+amsLp3HY4HNDZb8qBgjhdK/ntdTbcmC?=
 =?us-ascii?Q?Mn/U5fJurslq9dWS8UK4VjbuoQCS1RxoVc+L2aYzaoL+WC9TiNbs/i3lG78k?=
 =?us-ascii?Q?ybZ4UMYtQbJfMUHRbqif97QyEdvhy/QJ6Lgeyf857TYdRhl/qpfVxOwVOqsQ?=
 =?us-ascii?Q?EUgfsAp2qi3FlvUmSbbi0B1m2Ioc8sVnKVs7WJ42iB9UkYLxYWQR6TRXE6Zi?=
 =?us-ascii?Q?L7ntaSr1J1CG2LYaVT+6+rFkQWjXYtA2NWtGJB5RHjUP8DZd+FlL0AwLcp6+?=
 =?us-ascii?Q?Vbb+OJkjUB9djPs+wIU1L9cvzdgEiJQkvC4SN0z1aQIry52psVOUv4akr54o?=
 =?us-ascii?Q?gLFXXGUV8pn1ysKWgY91udE8wHlzSaIfH6VSiI3n6/Huudp/IYYhMj33xtXe?=
 =?us-ascii?Q?mwY/Ae3xZnMQx+gk5ozGp2CPp20IGGUG4Qygx4yIV3zK8mgjAAgClJSX/V1h?=
 =?us-ascii?Q?0bhdCD1wnr59DAye+1BpPIU4ssfMrpBPd1ecE7HzA4F5LJijJfbRYss1R1gN?=
 =?us-ascii?Q?FXcd2xhkAGntAtsi8JrQzNBvIaKhgKakUkisRbLmDnHohY3QSDjJiUzbMPVA?=
 =?us-ascii?Q?rtTa/f/Iea5IQZvDVWmcOVYXtyZG2HLq5cENsSJ021lorcDYh6zgWQIBijrv?=
 =?us-ascii?Q?VHzzCRmb2uqL5t4hh+m4RpLMsJfDPyMtdv5S6ENVuCJXxC4roDcw7FnjnIKc?=
 =?us-ascii?Q?Wo09cN/nnv2qanpsGkSvw7IUMGSrYonmf8ilS6mikyjdGtfI/AvMEUgmpxbI?=
 =?us-ascii?Q?pTPI1UmkxNHhy4th6p9+UBAQG7N4JKw4quI9C/J/cwzxSJu3BsclfYCsRH1I?=
 =?us-ascii?Q?w6VfcekB6HPFTq733m0AfBaLaP1MwRZ/XgjUOU7EgPz7JE+8D79zAc1cX4n5?=
 =?us-ascii?Q?QyY+rao1aFdd6f6Yrw8cMfsTXfgh0P665D6AE5ddIzHUoDkwRRbLBj/TfJ3h?=
 =?us-ascii?Q?GFgZ1dkX71h6XX9aWFLOzZtt0XX2a/DMqBM+xTtocDbPCwJ2kpD/QAPBS2Ki?=
 =?us-ascii?Q?HtuLxGimpuxRTDtWtLDg8sP6ai++ocuNTUjalasPULkfFbfV6dXgEOYhExJV?=
 =?us-ascii?Q?/qdsa19/a7rIIPkN9v/tFdhaxDLzD0JceC3OcBkP?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e08f8bec-bcf7-4fa2-a7af-08dd782736d6
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 11:59:57.7449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tFMjR0upzJYoZSnmx7DswsawZnHXYPBPt+X0U//3oaabG/KbNQc5mbD5DZAzgdb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6383
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=djNbO8G3KeWaH2TuLKoR1gwPu3clpRuvOk6kHpHVvzM=;
 b=qZ1H2Yfdu1IMrkSkqtzEQI+2Mem5G/oY0M+siKhp/13qjzGHz7HuitAaU0e7EgzIaN1Ukt7a87vPBtfT58SaU2LE38KwpRoKg3Op0jHx5H6hKeIlwilByGVe2QQ9Q8mc7Ldw9h0AwyUsRGR64DhIcSjF1MkwKheqOKIBEvGU5bf8jJk7WLoyO9TmhTo0sO3BMn28PtAwWzRDbKqVlX9gPQ3rU4xWqctJo+MEeMdNDV1C7E1AUHyWrOWjq5T+7jVkmvncRO5jV+IbIXAusW3FtJ/YBDaCEfYQqiXRJ5oCA0NcEooxK3rgdF10BQdD+luP16nR0wfYfZ4VqdvVZWDHrQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=qZ1H2Yfd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [tnguy-net-queue:dev-queue 2/12]
 include/linux/build_bug.h:78:41: error: static assertion failed:
 "sizeof(__uapi_uuid_t) == sizeof(uuid_t) && __alignof__(__uapi_uuid_t) ==
 __alignof__(uuid_t)"
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, linux-cxl@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 09, 2025 at 07:01:29PM -0700, Dan Williams wrote:

> diff --git a/include/uapi/cxl/features.h b/include/uapi/cxl/features.h
> index dd8874860cec..06a1ae3f3fd0 100644
> --- a/include/uapi/cxl/features.h
> +++ b/include/uapi/cxl/features.h
> @@ -14,7 +14,8 @@ typedef unsigned char __uapi_uuid_t[16];
>  #ifdef __KERNEL__
>  #include <linux/uuid.h>
>  static_assert(sizeof(__uapi_uuid_t) == sizeof(uuid_t) &&
> -	      __alignof__(__uapi_uuid_t) == __alignof__(uuid_t));
> +	      __alignof__(struct { __uapi_uuid_t uuid; }) ==
> +		      __alignof__(struct { uuid_t uuid; }));

Really? I'm surprised that the struct wrapper increases the
alignment..

Jason
