Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6F58AA3C8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 768F941576;
	Thu, 18 Apr 2024 20:08:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RPgEm5a6dGcj; Thu, 18 Apr 2024 20:08:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BB1141560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713470901;
	bh=tNVnrd2mme1WYIgl7OsPAsoYHi1cSxN3gtrOwZ3oDyg=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7fUwb6UIPcxdEzRx+NVqMjJ6OsClUSzlIhzO7V9muB0D0kTYxo4LCZHnJnKHMark1
	 M8Ddzwkcgk18FIwmxmdtjv+B0+V41aiAaNTYEgwZlb8J+P0NJTAa+LT+aKEvPRXp+5
	 kiLq4jqvmKS/gXZ8JVjUAKe9aN6qXDjZvtvYG8nRP7ZHhDIySEpQLDGCF8qAkVzlsT
	 W6mYg7bnQvzlM85tepF8gBzOPT3fE5xig0beREz7hiKhtsDw5qdVDZvN4s1Dh0/OUf
	 LcpTLBC/OYR+B1Xw6Ru1VobFniTeAXXLJY3Z8ZDDeE6KSKQgJYQbl3ewjy1jEji8sA
	 IIAso38SqjMyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BB1141560;
	Thu, 18 Apr 2024 20:08:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36C101BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 18:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D35A40272
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 18:53:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N3bxtVOkZMfq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 18:53:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.212.51;
 helo=nam02-bn1-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 884F64031F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 884F64031F
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam02on2051.outbound.protection.outlook.com [40.107.212.51])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 884F64031F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 18:53:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AvjlMRLdmJpVWiexd4yrwvn49rjuWHWfbD/QocLDHTXYMRbalG+E9R41L2bxW39vh5Gl0DNbXWQS3/Jqw9lZ0IyCX6K8szwlnrmrg0dE2JX2iD0CZVLmHUmPwZuT4uZN8rJTclujKtM9G/6AE14qaUcL3bRPEvtT2t8K9RmNvQCM4FtmmOFKI/dZGSpbZbm9Xf9gtyQTCSjrPX8Vc3Fu8rD3nwc/pLCxEFXMEJJHSo16y3lKJ5KMuLjEmbVHT1UXwOQ6+HEWiGNoHqBjaZvfJ1uPx8dTVe0LklUPjJwMlQYh8HLcLd/66NIaRQ9jwe2tjIUK8tDKISu8+1+XzAb+xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tNVnrd2mme1WYIgl7OsPAsoYHi1cSxN3gtrOwZ3oDyg=;
 b=CLns0gLDUGIEhTXiLRVrOiF3S9VN1E+j/y9PwjnbOH1JAtP81bxB0mkuP96vQ4DGVlFzswZ5ijbn49ArS+MeM84XjfoAh9ZloJTj2iOPoHQalstgpM62byN1ameRuF/pltVl8RGUrShWcCYrkSbSFqYpllH1JKJs5SWon1CJMZbwlDgu4MIG5XMAAOTiyLb7EUOzvflk6IypT83qplBgKrPp6kndtvT9kS7U9cBQOaDCDIaJoIg/G0CtoR7kTWbmaftY9F/nm8ZxmH1nCqeBnWQofcP9Ch0AmpyWd1qbsfgpfqRnKVNolBy4780Po/M4Yy7cLy8JslCKXx36Y5NJIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by SA1PR12MB6846.namprd12.prod.outlook.com (2603:10b6:806:25d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.37; Thu, 18 Apr
 2024 18:53:43 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 18:53:43 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-2-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 11:49:57 -0700
In-reply-to: <20240418052500.50678-2-mateusz.polchlopek@intel.com>
Message-ID: <87h6fyfqo9.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0039.namprd05.prod.outlook.com
 (2603:10b6:a03:74::16) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|SA1PR12MB6846:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cc1eabc-d8b1-4f27-3579-08dc5fd8deb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b6yLm2AH2Jv5O6gTBjASNBUbqmBhehouJcvbzJC9FpI2bpt5ommiFO7U8gcLgWAOdku15MnXWEAvqWH8d2sVyBR71osMiafnx9tlSzNe6YgXXOeam++0RbQ7bpNb4c0ZHyuUNNLZx+bltk2RSo/LyfHubr0nCpbgRpgLMLO6lUTnBgSCtv6EWISrhTtGs+SSeoomR5uh+rokZx6hQGD4f6MrMVxUBaqvPjpCnI8ea/kpoux8MhJw54VohjAii3LDEskv+nnNsi/m4foT19lwc1dMweVCEzMnaEsaJn//IBCokEctCr+UtpYk8+XdCHTVjyEd53iUIbcAg9nS4uXbZOB/26rSVRdDMqHP3DylU5dAExadjzbfI9FMOZDnIe0e+COg5PzNo+RSb6HGqBn2c8DKnB4X7YNmX3N/aWBr+zyHg3CKC7j9h+78F6rEHh6xmvjFzBOuQnB+420pDVQ1jFzHBCpe9eRzD9sai3eWBxza1aFnBvlqLRESBzqtK8Yd7Rb2kq1uFTVucNWPvLxHfeCdJS+hjbKhE4OnTieeNJPq4MLKzelFoX4uMcLo2yMg7QnV2ydbSc5V6aC7Xbp2PtHkqGEXlJ9/7H5WomBUcLyMRXHVFYB1NOS/4A8TIYkTu/pJX4US3rsEtTP3jggsGZPqSOvsnK0Gob+C1ys5/lU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sIhKFhnLWdabbpbHx7TPdAamyLEP+5JraDgofvdnJ28pVrJSap21k3SC+z8a?=
 =?us-ascii?Q?c1fRsbld/BocDCdHkUgbjofgpLA6bmfwjQR+zSbSkkHiVBSjTK8qIm27BYZ3?=
 =?us-ascii?Q?JdiFEAaqYjisuXtXQyh06GAhQq26seiMaPgNhRE/yWW7dFfMxacTrChBa2Y0?=
 =?us-ascii?Q?0suflil5EZ0R8/FOQi1IZ3z3wrPVefopGMuhV8f7b84U+dCia1GqK+lJzF+8?=
 =?us-ascii?Q?Si/pnqRl1740uZtMIw8asMx+Vc3aQ5aSinBuBHajvCHvpWI83+qD5nVVKbRH?=
 =?us-ascii?Q?uO249BgtmaZmMyL7A5U26oa+gKYLyCIlkMrS8dfHrVoF0ld6UhC6AVDxiFMe?=
 =?us-ascii?Q?WndC9ouj+NPxOUmdQCHiF42DleFq1uPK34D8Penm465h6r4eZfKRAezMjw93?=
 =?us-ascii?Q?J08tg5bEXtbmmyNw1Q7lxOSxwl6GuNqe7HAfrk+4FwlPI45n4aHfNNaHWw6n?=
 =?us-ascii?Q?QYBfjCLDmllDZ3uIOw3HhumsMJHu7N7dFr6sWVHvEmZfIW9APUGBiqi0FKjg?=
 =?us-ascii?Q?Qnv6LBWkc/aw5yIyG2Fr2bSfgNF45yZuxA+KKT31E+FulSPuPg+f6tUSiTjm?=
 =?us-ascii?Q?KVxY98IxAFFWcSZspnmEVxZLJf2jcGNP30/JgNP83q3YwuP1kEOtiDu1OoiH?=
 =?us-ascii?Q?gJiHoa9Cw08UQoQgbQGgJFObKyf0Xh/axqtumzpbV4yoc3+wDYX2ll2iq2CY?=
 =?us-ascii?Q?DUwp6ZO5JDQvGALYKJ6OgJUUbfYgWzxERUZyXFbsxiS68k+a0sukPNIST0QR?=
 =?us-ascii?Q?WH48Yvyx85+B+UwqshVotiJ09yGhQeYEgrb6bv3mkteWRdQAIgyD2THUYsHb?=
 =?us-ascii?Q?DfA6nOIpSt9TWU2bBH9Mi+5WvWu27CVjK619OYIiMbscpFntkPr+fh04VUky?=
 =?us-ascii?Q?axLB6p14mXqIysASwVPICvp7/ThJfWfKd2tV7U6Fp/cQIspFVvIrSIkJL0bw?=
 =?us-ascii?Q?J+pEwskAqi1zvUtLaZskk3cpG0EqGJOcGiFiLJ6I2CMnUHfRGcuP0RP6Ags1?=
 =?us-ascii?Q?5+F4R5qZhdcXYw3VO6AXuEP3KtbNOd1UCBWNNHurYsnEm5l5IQe/P4Y6iVZf?=
 =?us-ascii?Q?hGeSuK+99moLvXV825FzbGpsSq/j3PCxbV7xkYEujEZzXU4mPhO5BC0pMosC?=
 =?us-ascii?Q?F1+tOUh889GWWm0OmDwgs4FKY7dQBuNDPXrQp4eT0En2ZMNGgjnHsUcKDd+T?=
 =?us-ascii?Q?4SeZ5zviHKC3Vb+7yjMMyKKB8OHMbRe5N0ShiyZ4Rs0Y7CY86BsXmzXiy8EO?=
 =?us-ascii?Q?sGB3W6MHkW5hnEeZGAt9vb9EkjeXooGwBwPVG4cnCw7fcP4TYvVESyDUc9o0?=
 =?us-ascii?Q?lYqSX72C5+sMHKiyc0w95DkkHVxOVhK28PvGdFZRrB9DWREBtmCiS81QXDDy?=
 =?us-ascii?Q?6taDfyNXzITFoZThxp3C26cux7nDSKGHh2VoTkR/a/lOD6RoRD36rdms/pvb?=
 =?us-ascii?Q?Hsn6o8EnXLyyyZM61Bg9gUcfrtKUskL6T7/+83cAKeRCkUCVyeJVfe8BgM+m?=
 =?us-ascii?Q?5nyB1FwE2G8hUzV5HffR3yikcjSQ4UNkEwdy3/nwEuNPhkdSFPNkJyLyMYKZ?=
 =?us-ascii?Q?cJ4xnpDWsWacBOITWBWVXTCtxF9yREMFfla31S0ER//xg7NWdKbNWH8uL7Jx?=
 =?us-ascii?Q?YA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cc1eabc-d8b1-4f27-3579-08dc5fd8deb2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 18:53:43.4725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xdQdWPfHexlT0lqzZxapOzz2MPZxDghmQjMKiLqNUTtPvaogO1ovP1RA325Bm65HHw/TQH517+gQlrCcD5xHbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6846
X-Mailman-Approved-At: Thu, 18 Apr 2024 20:08:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tNVnrd2mme1WYIgl7OsPAsoYHi1cSxN3gtrOwZ3oDyg=;
 b=PaGxxpMHU/lXRmJ924hsjS1w3Q0ZDxK0MTIdcrFBj0c0jPsOtDVYGnmcKabLP1NTT9moVQYhGelsvIgOQ+Ue1BSoOslYeIGwq0RgNquVZVrz1DqjX0+o8E54CP8Ay1IXms9L5G1v1MlJd9zapLFLyxsEqlBb5dD2xYTqUEaiwvZrf2+Wv0rzoJB9aScpxldZ6nL/Nj8RindVo9upxbmJ1y0knf4h4SrE7NdushT2TZG6d1JOZGPv/HpZyf64/+Xq8y36oa+kXeQq3Z6SXM9C/K0S/xxR39UAk231OCZw+I1YCfJR/81ZLF11glFyFLeKSIWkgU/Fbnh/k8CbGwp9eA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=PaGxxpMH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 01/12] virtchnl: add
 support for enabling PTP on iAVF
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 18 Apr, 2024 01:24:49 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Add support for allowing a VF to enable PTP feature - Rx timestamps
>
> The new capability is gated by VIRTCHNL_VF_CAP_PTP, which must be
> set by the VF to request access to the new operations. In addition, the
> VIRTCHNL_OP_1588_PTP_CAPS command is used to determine the specific
> capabilities available to the VF.
>
> This support includes the following additional capabilities:
>
> * Rx timestamps enabled in the Rx queues (when using flexible advanced
>   descriptors)
> * Read access to PHC time over virtchnl using
>   VIRTCHNL_OP_1588_PTP_GET_TIME
>
> Extra space is reserved in most structures to allow for future
> extension (like set clock, Tx timestamps).  Additional opcode numbers
> are reserved and space in the virtchnl_ptp_caps structure is
> specifically set aside for this.
> Additionally, each structure has some space reserved for future
> extensions to allow some flexibility.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---

Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
