Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B75648AA3FF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:22:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD27541574;
	Thu, 18 Apr 2024 20:22:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ql0ViMmMNHOI; Thu, 18 Apr 2024 20:22:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1859341558
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713471772;
	bh=h/ZgV9C8lp+/d1wPozZL8WsHV7e6weYe7e+ty5pgUzo=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Srv6yLd0rXJ+XYgpbE8ZloFtDwfV5yU5kfnBeesvWLNHOof2GAqu/LKTrYhw/tzTv
	 df8FLWcvMJN7uYiul8M8WMsGd4AgDpnWXFRyDINcGeV+vwTDRB05bCX/YfNUzhd6RJ
	 ghcfrv2YCEOFpn9NTIVYUsar152vTomQ+a/0bCYOrRB9qTfLBx5SnRF3uz3ddWiar2
	 +jFRkkUEKwiKkaJTAk9AS1SoeC8H75NxX7e0zcRQBu99MlfOM60K81FAmAiLn7fcNQ
	 cUiOo++HkjGjTc9JTWugQiH6HgZg+OaNcSXPa3a/k09uFV4M2vn4KW9k9NtxvDWy7h
	 NMRnPH3MXVd7Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1859341558;
	Thu, 18 Apr 2024 20:22:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 836CA1BF410
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F18160A59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:22:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x2CAkJ2SWaBF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 20:22:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.243.65;
 helo=nam12-dm6-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C068C60820
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C068C60820
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2065.outbound.protection.outlook.com [40.107.243.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C068C60820
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:22:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mNhyjaT+/VND3qiqDzY8cWGulcjjrSoKNYMLgPy3Qvt2Dc4U8bl7oyngR0LBJOlkA1X+JuLY4qRqfN/ptRZnvVfQiCTU67dANCIbXq9bQqz609OObmfjgzTu3re9HtT+8Ex1kCvhSlLlGaIb+NOHmAMwCMkUS/RjQECV2nX95XYcl5gqcNUxi63uT+QqoT3oRxXsyxhNE8e/y5o8R4PzBuRwaC/4uUz6vsoKhdH312OkkvqhGehg4Pari/7AmzIyJyvGUhnlM37EKWOdbTYyzEqXc6WaC58uNOOuiT/XqKzpJCG6eVhdBoL4v/6HhcnSwl3YNeaZz4rYaE5z5jmyOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h/ZgV9C8lp+/d1wPozZL8WsHV7e6weYe7e+ty5pgUzo=;
 b=jSpqYVR1Y4GJxGBNs5r295xrIJ6/B5chywTEv9DeCvruLcIMFmcOKTnNFULQMG8VuRCJb7BcJ5lkdjdUy6L6K68rsF11ZHXrMYZQbXfKqr9MRWB/SUrn9N9l9pViCNqUslpHjD/aVrXZL8Hfziq18nLceK0GOtkmr4P0RrYgY8cY/IE2Jzq9zVjHS9kR0FqgXChQOfV/uKzPuofUsf4ObAghSBnNn6OE60WOuCdU88HdTSM4upnToe6YE22+Edx0f5gw+XalQTvaRdPqvwUtVm532DAQ8pznqIpen2NgnZ/h+9WRMNVOrFP11ouf6ixIbm3vHLo3IqyqO+CVHHR60Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by CY8PR12MB7585.namprd12.prod.outlook.com (2603:10b6:930:98::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.40; Thu, 18 Apr
 2024 20:22:46 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 20:22:45 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 13:19:09 -0700
In-reply-to: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
Message-ID: <87v84ectez.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0071.namprd03.prod.outlook.com
 (2603:10b6:a03:331::16) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|CY8PR12MB7585:EE_
X-MS-Office365-Filtering-Correlation-Id: 405d7873-a75e-448e-8815-08dc5fe54ead
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xsj4wiBGFiid1wiQU64Yzlx0jaf0Vl18KBpC5Cn3KqFtvdeAcXLHBqJfW1uLu7RDRVQLV0m5j06FuoaCVV1FwlyDU49fjYhWAfR2TI/YBfkVthArswRRaQS+AgC4tljFQ6bevlw3n/8KNxP2BCDEdfHK4BA+RzQIO4m1V90kxZHeZF2Um/Mu0VL5BJKFB8HJVse4WdUeZBZxX/wEmhEO4VHLjLGwEuNUQSXmMAQcQKsd2ZE4Ehplt/15oTC+snzqLNFaZbJsOW21dMzVGG8CIVN5z8gKCO1b5QyjgVWtf1Y1pZiy8XfB3wd/gx41TEGbEp7YRdgh0tx46YmMwYM5AbS3vHmG2ht2NA0pUe1F+TS1Tgjo7PL1IKdUqQm2DkJRHT1NaQb1Iw14xzGcMH+9XcA03a84p2g2CJedvbHolMdErqYUcJYLZIZ8K0Wz9yR1KpBuHpmFPX+cLa2x6VYr2la2AIZuCdWv86TpfykG0vSH1QWi7XbMxmFIQbC0s3MPCSreyO89fRN3v/uqayng1efHtOxO07sGrYhJyzMtMr1NeVc3Gebe1g7hVHuPUUSdCSgeGRwWBtD6B+Lq+XpwGRGvYPc0KqYM7af5Bk/B9DQsr4QOv1jG9mJRLfXOqn90tw8+3ZxG0yv4C+8pKmJzCg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sjF/YVCFu8lST63jLzYX5nSpqhH8hGW2O05VVccv4CsxxEfIVTj4MJG9JgFI?=
 =?us-ascii?Q?1ZCrwgSYvO8x6CybRDcpvKmNb0JQr8oX4w9u3yGgOUgiycmyYmhF95qpJ5YK?=
 =?us-ascii?Q?R2oWxk41dfepleI4nY8FjmoXScTh40Lxo3litatYj4ikD9rkEtr2HUWlys+K?=
 =?us-ascii?Q?Lhvw/Rit4+TffBpOyNkrJlOeFZq5PXmHe3cwbjBqnyuE18cgKvgAYSYy+HnY?=
 =?us-ascii?Q?Wf77ycZzhfiuhYxh/NXjmzIl0/bSSOXl+ImqNBvNB5bX0f4FMoGqLyTeaUcL?=
 =?us-ascii?Q?YN/aPSLHckNVDe63fqfMNgmzXfVOhAQRyX3w0Oek0NHvfnkK++LiIbh2G0On?=
 =?us-ascii?Q?O172/HBryYM4/LHyRCf2Uu5vZHhHgL1J0BTGmouMy6TQizNpeZw7aA+tcJcv?=
 =?us-ascii?Q?j81CGtdJPLa6Z02XB5b+5BgRsuyM0Fjl0toh6p7HuAxS9sB77ZeP4Bc60JfH?=
 =?us-ascii?Q?rP/TJz1BN2aABmTgHzZHdFhQ6NWlM7jbUZERfSm2t6e9H5EBZ0h9CAtVZb9q?=
 =?us-ascii?Q?yLYX2HJusOjpWfcw6mR97567ngvJlKuk/CmFxzWe/nsunEiKrxQFa07xpECP?=
 =?us-ascii?Q?HIrSKUvFz6euy6omze88z1kEyHZbvxN4AUUgo3k5u4JVv7g74Xz0T2fd6nWm?=
 =?us-ascii?Q?Tc0tGm943s9mDrga643dO8kQFQke9ZgudPhfoYsZKJqydYefqoIhuVrclGk8?=
 =?us-ascii?Q?l1KQk67qacM2Ir9gZP9ABsEOnh2oZvPo7U74W4u2YxksW7WR1OoQz6Q6KNrR?=
 =?us-ascii?Q?9/yl754vaU/P6hPWCCEodFGWRmdcU45sQHu7v4jC+LLNQ+iQLCL2jlhsfS21?=
 =?us-ascii?Q?lZJyN+S6hupbmBv3+GCX73nF7CjAbKHjHQEOArJjN3q+3CrIAJ4dW0oIuARC?=
 =?us-ascii?Q?tcE6Rp1wofDAvBllA7G8YyQXTn+yB9sKBRw2+3FWG0qTi1qUe4wDpNYff+Fo?=
 =?us-ascii?Q?hF2os0H8mbN7psLqP0UaMqFAM6/SvhREwSSXIrCfhaGK5wYy03blRGTbgaoa?=
 =?us-ascii?Q?zyRhXK44mgIkpbRDD9+zyZrmmDErSb28ciIV4mm+ETnWb/2IA7SUf/7Q5qH9?=
 =?us-ascii?Q?JYOVboPG9PU9LvztObVwar+xgboEK9ZDxdvc4Wf+qBYN8uzm/+wEVECfA1B6?=
 =?us-ascii?Q?ixbVn+5wWFWuSyqBQBJzH4i9YK+foGsWvmEqmw8DMw5+aOZU9I+3oYB2anzY?=
 =?us-ascii?Q?JaVfDf+JFLs1jLpbRg9xD56x9/juWZNZhx8jBVNkIAE0KyjEJclBxPfdRFsL?=
 =?us-ascii?Q?eSQqc5I1KQXUChTLGDV+d6mltLAre5LTATbsRokhqGD2PVOREBqDDVmzMY6k?=
 =?us-ascii?Q?5NIVm8KBsypcPrf1EFfSuuvAYvGXLILE5rlcgXNY061zvsJe9/qIt2IjjubV?=
 =?us-ascii?Q?rFfnnDYNE3L4eOfB2aU8P/tUChjqxnRwybUPDr043FcuiKirrsveE9cG5kP8?=
 =?us-ascii?Q?8YiGXaxf+K2zjd42vIQdyLrJt/836me5lk8CFoZnbiwEK0ygSzCxaT4JTnkZ?=
 =?us-ascii?Q?gYSyLShX87F5/L8yOO9USzGI5qbUajbvDRaccINPOv6rmqTMId1F4NI+XYZJ?=
 =?us-ascii?Q?xZNfGQ3SoJcU/WNFun9mXDzUekHYwwi8rLR/Vi5iMWraTKmCrmcdqcOeRGyR?=
 =?us-ascii?Q?sQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 405d7873-a75e-448e-8815-08dc5fe54ead
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 20:22:45.3276 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X0mgwz5HBlXlegGmqAG1y9AZGk4zz4b6tJNbJSFp+vn/HH6FT9kbFd2YhZusNmqUoNBWzJq5hQbY5xFULvebzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7585
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h/ZgV9C8lp+/d1wPozZL8WsHV7e6weYe7e+ty5pgUzo=;
 b=ZkphSogPbQ+WpYd8yXhCTLMkel66XkXxYsp0OrbqBjnfYucMvyIOaipKfiCBbBdfcyAoKIcjz8RccAwID8MXfeDRDvtsy7tFd7MJh4MxJe9dCWMfKykGyeGxsSgc8JTOteWjM3UBlEaqE/6SyA5uN+eIV+U+ZgAq7EuabV0ANBNsqMPdqtwCNoHe5jRX/cSP45vwH/sTcwBdqBHCW94uStNEmiAy8JhUTlc3Ovr59VEHdfoyiNBWAPws0WihCriDGvIXUEpuY8/hKJ3nbwrpbEihGQQvDbjDGPTRh8bCSg2QSUudgOQ5XjFeN5WZhr4oqItcbqWWS99+iSCb9qCo9Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=ZkphSogP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 00/12] Add support for Rx
 timestamping for both ice and iavf drivers.
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On Thu, 18 Apr, 2024 01:24:48 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> Initially, during VF creation it registers the PTP clock in
> the system and negotiates with PF it's capabilities. In the
> meantime the PF enables the Flexible Descriptor for VF.
> Only this type of descriptor allows to receive Rx timestamps.
>
> Enabling virtual clock would be possible, though it would probably
> perform poorly due to the lack of direct time access.
>
> Enable timestamping should be done using SIOCSHWTSTAMP ioctl,
> e.g.
> hwstamp_ctl -i $VF -r 14
>
> In order to report the timestamps to userspace, the VF extends
> timestamp to 40b.
>
> To support this feature the flexible descriptors and PTP part
> in iavf driver have been introduced.
>
> ---

Just one general/cosmetic comment. It might make more sense for the
Reviewed-by: trailer to come after the Signed-off-by: trailer, since the
review happens after the patches have been written.

--
Thanks,

Rahul Rameshbabu
