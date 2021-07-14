Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BE33C850A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 15:11:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 247DD60BB1;
	Wed, 14 Jul 2021 13:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T7dmDfWkNmDY; Wed, 14 Jul 2021 13:11:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6004460BBB;
	Wed, 14 Jul 2021 13:11:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D25E11BF352
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 12:01:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BDBA7414BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 12:01:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t-l-DcTHF9Pt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 12:01:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on20617.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e89::617])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 609704149C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 12:01:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GtyYLmaAYy+tVJJbLzMvmG0gAPrcdx2UNH8u70yeCWGlHfpi/CBCEeZMZcd26LWqMD9U26MGS9kktQoCOfB6C63UEAm54L8jz0XzmhIGnDjJY850LEZIwb8bTDkR2Yp/+u5orjckHShFhQLkqPNAacZb+qWa2eY6WTx+SrvLIQuUDl/8UZTxQzPofo10fF7zITWeBIK09/1J0XZV9ezyh9/OSx9+UAC5AZ2LQQiiGwo2OfV2cKaU/FNdwDXH4NB2WQ25wQfO9r0dtXWlMxcpL8HI0De9B5Rd2mEGB/S4/ySnoZkMFwt/DUhBUpa3mt6kCtufC4GSu6TiDgnMmCv4tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Afk9pwx8zsfsMRAI1uzc5fLgBmmsPfPZAPCt3Nrfcxs=;
 b=G2y64mIlxPC4KGBNPEzlWH1U+4LcgQRjA7JHuJOBVovrm81mTnkY0jp/VZu8RfiSHf9nEiNW9T0A0vJol1SvdX51wNcWgAidFrMPodvjblgqRzzrAJ5hLuwQYc0KA1XEMrhaHfme+VFJBm3j/s3KM2V3fedwZ8QE0cn4dPV6Xq0EFHH/xAPYlLq5ChFti0EQyYBIHUaV5OoAY0k11GB5k8xCtz0C4aG+NXeU0AkYmiMCX/s+mKPKOUGvGgn0OdBAnChA8UPUukCPHJblwrRBm4b7HePcAhQQHgsfiFkd6/eaYRklwg7DnKgNhjMA2VhUATJZQrAJvWko1LShMeiMOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=broadcom.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Afk9pwx8zsfsMRAI1uzc5fLgBmmsPfPZAPCt3Nrfcxs=;
 b=tjEZ8FQjGJqWaRtWzrrV2knn5dAGFHP8nI0+ywbc2Xkfa7BfOcD3UDdYCtH+XaXaCP7iiMRCdRpnU3ncPn3FcDDgw/RZcoSv3gpKt0IBVPQ7yH9LVQ4AGC800r2f4qFQzt2FyuRXOpgyJiZ6po3z0DBMlxZLY4ZvF4uyapUhMXx3EDK1PWPO3EIol3wxsWFtOoo9Rh1qlYGDyj8VIYJVAs0oAAV8ANsNEJnYsl9uBUMvdfrBsRxbRgx4Yse7VuDi4AA/I6qEHMn1nDE9Jd1mapyTkotlZ0rxIX60oYNp3Wr6deyfxDo7W+phlTmHgvB1xB15cByzy6ptViAmyU4kPg==
Received: from BN6PR19CA0062.namprd19.prod.outlook.com (2603:10b6:404:e3::24)
 by MWHPR12MB1647.namprd12.prod.outlook.com (2603:10b6:301:c::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Wed, 14 Jul
 2021 12:01:17 +0000
Received: from BN8NAM11FT003.eop-nam11.prod.protection.outlook.com
 (2603:10b6:404:e3:cafe::2a) by BN6PR19CA0062.outlook.office365.com
 (2603:10b6:404:e3::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend
 Transport; Wed, 14 Jul 2021 12:01:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; broadcom.com; dkim=none (message not signed)
 header.d=none;broadcom.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 BN8NAM11FT003.mail.protection.outlook.com (10.13.177.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4331.21 via Frontend Transport; Wed, 14 Jul 2021 12:01:16 +0000
Received: from localhost (172.20.187.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 14 Jul
 2021 12:01:15 +0000
Date: Wed, 14 Jul 2021 15:01:11 +0300
From: Leon Romanovsky <leonro@nvidia.com>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <YO7SB4q9Q7S0lIbR@unreal>
References: <20210713211502.464259-1-nitesh@redhat.com>
 <20210713211502.464259-14-nitesh@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210713211502.464259-14-nitesh@redhat.com>
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 797b4754-2ad9-49a3-ea44-08d946bf15fd
X-MS-TrafficTypeDiagnostic: MWHPR12MB1647:
X-Microsoft-Antispam-PRVS: <MWHPR12MB16475C114E3A6D82D238DB70BD139@MWHPR12MB1647.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lHd8QiqpZAqYtLAnlPeVNhluLMUv7ZLOLrxyKbdLM2va1jb/KRejkIADZMVNCHcvGZ7p0NGXi8evV0PEyXNgAvPT1fER36ofobKa2IOyKRLtYB12bZgGLGRnuhj6iRNA0L+5RRphJx/KjyO9VmYrKApc+8OBhjGXGGsU9OLQKj7UGzGqFnveFz9o5mlUJwTsJ8nHEqM7/Ypxplm2F+ZQH4m5riJOlbJNz7FhoZn4pMKUEfB3F69qvTEsJSRb2Tm1pf6FByqVlhkE+8wF30ZahCIfqFZQx9MBKLrlfG6kMB/Uzd1CaVHEQCz+by51+oGtvN7PgClTee5W9i94A7Hd8zepPZEiNHnUrwOmXliSQBV3e2pjMTwaP+e/3o4sptZ/n2+AERc7ucB9FHqrDZSiJQShNigovmzlsAgEXV93X2Rpv6k876yJvbFj60tqWi+AZ4Kcn0ZupG+r1y2DlctGgk9/MsyUGcdixX999R9xiPmxKt70XqGKu/YPum2M2Fk+5bJ5J8ugef/PAZsKAn8jYqvglQfDQBV9uDzv2npHOjS4TYuwxj0rNSYJC0fw4NQFbXOhr/nyIW0mgY7zN9sbLTpoAkooOIyMa9VR8JdkszKkXQVvRNzKb+puYbYknGK1vwHPiRB5mpNkbLZSIdQg0F00wO9OlabyV+g0v54sZdn4M1qZYXkB+N6evm1C8PO2UNn5+BjqoIN4HI4Irl1fXNSYTNK+cyqS728duAlksBI=
X-Forefront-Antispam-Report: CIP:216.228.112.34; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:schybrid03.nvidia.com; CAT:NONE;
 SFS:(4636009)(7916004)(346002)(39860400002)(136003)(376002)(396003)(46966006)(36840700001)(2906002)(70206006)(478600001)(6666004)(26005)(36906005)(70586007)(186003)(16526019)(82740400003)(82310400003)(356005)(86362001)(5660300002)(7636003)(47076005)(8676002)(9686003)(4326008)(36860700001)(83380400001)(316002)(7366002)(33716001)(34020700004)(7406005)(8936002)(7416002)(426003)(6916009)(54906003)(336012);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2021 12:01:16.9526 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 797b4754-2ad9-49a3-ea44-08d946bf15fd
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.112.34];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT003.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1647
X-Mailman-Approved-At: Wed, 14 Jul 2021 13:10:50 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3 13/14] net/mlx5: Use
 irq_set_affinity_and_hint
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
Cc: juri.lelli@redhat.com, ajit.khaparde@broadcom.com, jassisinghbrar@gmail.com,
 peterz@infradead.org, linux-pci@vger.kernel.org, james.smart@broadcom.com,
 mustafa.ismail@intel.com, govind@gmx.com, ahleihel@redhat.com,
 mingo@kernel.org, sassmann@redhat.com, sfr@canb.auug.org.au,
 linux-scsi@vger.kernel.org, borisp@nvidia.com, maz@kernel.org,
 sathya.prakash@broadcom.com, kashyap.desai@broadcom.com,
 tatyana.e.nikolova@intel.com, chandrakanth.patil@broadcom.com,
 intel-wired-lan@lists.osuosl.org, abelits@marvell.com, nilal@redhat.com,
 dick.kennedy@broadcom.com, faisal.latif@intel.com,
 suganath-prabu.subramani@broadcom.com, frederic@kernel.org,
 robin.murphy@arm.com, rostedt@goodmis.org, rppt@linux.vnet.ibm.com,
 bhelgaas@google.com, tglx@linutronix.de, somnath.kotur@broadcom.com,
 shiraz.saleem@intel.com, ahs3@redhat.com, pjwaskiewicz@gmail.com,
 sreekanth.reddy@broadcom.com, sriharsha.basavapatna@broadcom.com,
 nhorman@tuxdriver.com, shivasharan.srikanteshwara@broadcom.com,
 netdev@vger.kernel.org, mtosatti@redhat.com, kheib@redhat.com,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, stephen@networkplumber.org,
 sumit.saxena@broadcom.com, thenzl@redhat.com, linux-api@vger.kernel.org,
 saeedm@nvidia.com, akpm@linux-foundation.org, jkc@redhat.com,
 jbrandeb@kernel.org, davem@davemloft.net, benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 13, 2021 at 05:15:01PM -0400, Nitesh Narayan Lal wrote:
> The driver uses irq_set_affinity_hint() to update the affinity_hint mask
> that is consumed by the userspace to distribute the interrupts and to apply
> the provided mask as the affinity for the mlx5 interrupts. However,
> irq_set_affinity_hint() applying the provided cpumask as an affinity for
> the interrupt is an undocumented side effect.
> 
> To remove this side effect irq_set_affinity_hint() has been marked
> as deprecated and new interfaces have been introduced. Hence, replace the
> irq_set_affinity_hint() with the new interface irq_set_affinity_and_hint()
> where the provided mask needs to be applied as the affinity and
> affinity_hint pointer needs to be set and replace with
> irq_update_affinity_hint() where only affinity_hint needs to be updated.
> 
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
