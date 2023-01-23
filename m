Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 195DF6782C3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 18:17:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5CB7417DE;
	Mon, 23 Jan 2023 17:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5CB7417DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674494241;
	bh=5+dADFV2DOIEF4wp7gcWPUcw1Q0TWHjOrgg8MdVXGgI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nrWs2mXwI7PMktpo4oBPq5I6d+FAePuUo0MoM0IG1T1SyX4l4R7W0T2Vd3fEt7uLq
	 17CX1uE5ILl4nR92AVfGkjg8OlIQ+0TJhDxjwU9kxkcLoQkBR3DeexdpMCNaFSaoj7
	 WW7SMizAsEW1up4InFRJMhqeHRMhGO4RaYrkxpFkhQQotmaaT32pbnKJahzk1/Dn8u
	 /hOZ4tiCq0eREOUjELmkrKhbO2+FCOWU3KsLlPT3zY4sSV/4Rn30foE27MuJ1rzs/4
	 /a7HgAkJUNjDF1NGXDWmCfvpX1cuaZ6+E71h6F/QQeud2CYdZfxmd135QmRPDn3O8b
	 V6p/E2dFDCL0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Te12E14LPhUz; Mon, 23 Jan 2023 17:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 921FC417BA;
	Mon, 23 Jan 2023 17:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 921FC417BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E32521BF373
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 17:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 792C2417B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 17:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 792C2417B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQr-b4lPMdNs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 17:17:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65403417BA
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2047.outbound.protection.outlook.com [40.107.237.47])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65403417BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 17:17:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ohc/WzmTvVpKgvMtxsZg7/rzZstAmPmFH2TFiHdXWQ0H9eSjF9pGJJM1b5oCK8AgthizE1aSOWdQVP9UUHAr+8ErcUCFMEL0UNxwGOCrIm5FeYbU8gpZq+sDxcjtIQlF3nHBcfVB0fMJfSDk73TUcBkmVAT5QHjVKo6sz+jDEj/7K8LqfJAB8y7XDsd7L6tZhsSpmUkmmydWu58KP48riC9WxdDWHztgIgPEoeskpkvLa6h1Bv8jkJm6p++QBHd7CtlE7zQBLKz+Nchg0RcS29Poc61/ZAc8fZW9bZL1n5aCfcsIeczbvJDpKn5ybsaUDG2FtZwW1Z1BoTcttW4NXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+bsDCTSJLhWpGcU4weNHKRMu4zIlnyVExb7OV0ulAl0=;
 b=dHaX1ErMYuOfB5dKJICsVtMZ8RfCCdJjxUyp+vOQ1csEknQPD9m1ERdmeVb/AZXYr4cRNhRNDxBTeiIWZDLHJDBfKu/qqFXiHFXpbRtcBIiVJqxuMXIZp/5d1bpKOrbgzh621JI+lhHk50nitQeq0FtBILkoKDCji3mvEbeVy0TPxRMVoLYUgzY+GUcLSrH017wWgRgjVKgWFDeYS0pk+Q84Z9LhsoqCFRg/cnHgO0U2T+Z43/Evgl2qgr15U/gTLsoRp+0Q6d5LNR3L99Ld6xB1nSZC4EPFecv4grdy2n7Wf20LF5dFAtr/kYlSSMPxGYKme6rFGcccFEYIFlJKxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
Received: from DM6PR02CA0117.namprd02.prod.outlook.com (2603:10b6:5:1b4::19)
 by IA1PR12MB8587.namprd12.prod.outlook.com (2603:10b6:208:450::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 17:17:08 +0000
Received: from DS1PEPF0000E64E.namprd02.prod.outlook.com
 (2603:10b6:5:1b4:cafe::db) by DM6PR02CA0117.outlook.office365.com
 (2603:10b6:5:1b4::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33 via Frontend
 Transport; Mon, 23 Jan 2023 17:17:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DS1PEPF0000E64E.mail.protection.outlook.com (10.167.18.4) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.10 via Frontend Transport; Mon, 23 Jan 2023 17:17:07 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 23 Jan
 2023 09:17:00 -0800
Received: from localhost (10.126.231.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 23 Jan
 2023 09:16:59 -0800
Date: Mon, 23 Jan 2023 19:12:36 +0200
From: Leon Romanovsky <leonro@nvidia.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski
 <kuba@kernel.org>, Steffen Klassert <steffen.klassert@secunet.com>
Message-ID: <Y87ABF5mjBJXaDZF@unreal>
References: <cover.1674481435.git.leon@kernel.org>
 <a5426033528ccef6e0e71fe06b55ae56c5596e85.1674481435.git.leon@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5426033528ccef6e0e71fe06b55ae56c5596e85.1674481435.git.leon@kernel.org>
X-Originating-IP: [10.126.231.37]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF0000E64E:EE_|IA1PR12MB8587:EE_
X-MS-Office365-Filtering-Correlation-Id: f8a850ec-7620-4cc9-9cb5-08dafd65a815
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jQA8qIzYtz0KPdceBoDix6VLJ5hvfsj/u32wCY03aVQa7QjQxmLlhAy25NOogmBwJYhqJOXHFi6b4FcQRWIRd3YGIqVQtwU3gRofRuFETfqLu3hpHpK0Ik3jK2UdRdy8Gl+JPPQ48ZH1UlRBBdsaeiV54wgYrirulMVdwahBLNq2nb99BqUtKUW7ADarGgkK5DzSwhBceJET/pazGj8nxVuRs9WKsxc18GaXNxECH19MTksnu1FmnGROGqZzGGE0KVJolOGxH+d8dXn9Ev/24aD4O6B/739AX0DA72dHNwtMEyAQiLcOoIjaGSMJ5i1L3Xbx4eUEiCq3TP/EuGtdY5tFw1sbUvhqHQcV5l5aUePjWmcl9WZz2xoO0HavKceMzUZ2a0q+zUkT+6Xjwr4l8ALPcA01K9K0Ff1ku/y4DPDdn+TRoDcpd2Byx6nF4hpXVP4ojbRY9yTOPaCINFC/ubo4ortMxBhTRlk138ua04wuR/QjcJZmkmzBS4QuN2tWR/OfV/ZBGt0tXWUOqqq5Sj/yEC6m6zSX7jX96/1OxUjjVhEcVH32bJoQa7DUwze835WyoyOSuMv/hhRgw2+M7JOIwvjdWdDO091NqwM0HGQuVw8Dx/sfsJxhB7qzOpSB12bo6GUbEDTorAOkhmI4FR960LkF7u2+5CQY5kGNeGSmyJ7Na+QeJHvhgbPwBZ7kiJJ/YMRQijonUFVXLBSn/A==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230022)(7916004)(4636009)(376002)(39860400002)(136003)(396003)(346002)(451199015)(36840700001)(40470700004)(46966006)(478600001)(336012)(33716001)(7636003)(82740400003)(2906002)(426003)(41300700001)(82310400005)(5660300002)(4744005)(40460700003)(7416002)(8936002)(47076005)(4326008)(86362001)(8676002)(70206006)(70586007)(54906003)(9686003)(186003)(26005)(16526019)(110136005)(36860700001)(316002)(356005)(83380400001)(40480700001)(6666004);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 17:17:07.8453 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f8a850ec-7620-4cc9-9cb5-08dafd65a815
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF0000E64E.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB8587
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+bsDCTSJLhWpGcU4weNHKRMu4zIlnyVExb7OV0ulAl0=;
 b=s0YpYjrMvfiiEb2DAfAyLDTzeRbN0eA011GZwK8yRFS6WJsFFqsdQVLpi/cSw2aa82agRFAQjD9w72TZxp96wJwwFwWfUU/QdofXcXsNL7w+vB9dP9XKddO+O0Z7VpEQsxru9+W7KTlu/U5XdvvfhXvBYi4qqwrvkrYSSjL4DBejas6xoH9GPmzmZbfL5BbFCCH3wOjBMRYUZhLs+aUTvvHfDlHdepEWtfAnUTdHMlZw8uJ14QHTsTPjzdVSduK31FjuxapmUxuUk9Z2GnJxL7+lonWZ1BgnY5RizzyvufyWox7GOaQ59o/0hAWfTLNDe7ZDTXF+LuFrkIsdisVqvQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=s0YpYjrM
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/10] net/mlx5e: Fill IPsec
 state validation failure reason
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
Cc: Veaceslav Falico <vfalico@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jonathan Corbet <corbet@lwn.net>,
 Jay Vosburgh <j.vosburgh@gmail.com>, oss-drivers@corigine.com,
 linux-doc@vger.kernel.org, Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 23, 2023 at 04:00:17PM +0200, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Rely on extack to return failure reason.
> 
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> Signed-off-by: Leon Romanovsky <leon@kernel.org>

Ohh, I need to fix my scripts.


<...>

>  		break;
>  	default:
> -		netdev_info(netdev, "Unsupported xfrm offload type %d\n",
> -			    x->xso.type);
> +		NL_SET_ERR_MSG_MOD(extackx, "Unsupported xfrm offload type");

It is rebase error, will resend.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
