Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C22C43C850C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 15:11:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A921405F9;
	Wed, 14 Jul 2021 13:11:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ij37zrZneBBA; Wed, 14 Jul 2021 13:11:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18F074020F;
	Wed, 14 Jul 2021 13:11:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 609801BF352
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 12:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CC2D6059F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 12:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vg-r_ycHLVKb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 12:03:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on20625.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e89::625])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8414D605C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 12:03:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZXEbsHZwnm+zTbAhLSsQIn7wnrbq2V2qQyi3Os307TVMGqevuHufug9Jmioln5FpHmrBMpL4R0nvZmtvhCLsgleFETOvHamDlLOeTJonFK0Y0zFXSOCYr6s9BBGO+mFmXZwK9B07XAuAu4NPJAiKrUE1l/ZhPADEA1iDeI13o/nZt+wc87X6Pa13w8dmE+wh/Z54DohZuq2SKiJE5HWkIMAULV4lXzOQNrSMdyiVFUsVoDaEngjKqKWIa5MogKO+trd1GaAoiWL8EBgcCt9PWZ/YMxHpvZotByGS3iI++t5oqGvxyU8t/MK8oCbxgfoj79r1zN02k1oInM8flOJNwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=85SjtTEprxqrFHC+JLVNiK/0uOvPscg9jvMEIcq510I=;
 b=nbCeJTaZ5LsJ/qaCuMR6bBBeMDjInSXO0DWDnG3gWVlTvCoTX2j+8aY/EK96XLgsEoWkqs3jjC3yRV5nGOnui8Q3tZkv0kkARD4ANEd26ghmloWSRXUR436GfsAvoPqAnbwuAEacllvfzSKIJNxefKFTmO2gknqpljwc0y+Y0nOED/RaJniN6JPpP6C+279B4/mk93rxN3RHbFa5IuRaFr1k/tDTlHJTQuiHkxqWsiRApdGomHaYyMdOwvp+RphWhYN3x+jzu3NcRKnkuF5bW0qQMxm9CXBN5jxD6ZFSs8VDAywITvu+5NDq3CGLmCn3oOe1iIBpP58jKGhd2TzCJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=broadcom.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=85SjtTEprxqrFHC+JLVNiK/0uOvPscg9jvMEIcq510I=;
 b=qV9kT5RQ82cBxJCsq7grvIa9pUNE3tu2mP2Oj3pD8QiougIUPgm6ZlC6h99col8wHB5251UZWvz/mlL65J1CMrtfpmDNcSRU2Hz/iJtwOBYTmfEwEFVGsbM2OjZ0xFyi3xEfh1jmAkra6ewirODZfkt6nSlCfsd4mHc4D9mwmTYSmt8I4/rcS9PSK0ujgRn+CyysT7L1G/zX8TMnH6qqZmlEMY1RpghHfv7fqjW0hpEO/rxSvUjuIyLshcbiwRTxxc+vZI5Cg0e8T8Oa8NWDoxjpeMg3R6L9bw023YdetJVK1NAnj8A0S9T5nPRH0ptf7sq6H52lUajWFCY7PhQ4mQ==
Received: from BN9PR03CA0971.namprd03.prod.outlook.com (2603:10b6:408:109::16)
 by CY4PR12MB1733.namprd12.prod.outlook.com (2603:10b6:903:11d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Wed, 14 Jul
 2021 12:03:25 +0000
Received: from BN8NAM11FT052.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:109:cafe::ac) by BN9PR03CA0971.outlook.office365.com
 (2603:10b6:408:109::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend
 Transport; Wed, 14 Jul 2021 12:03:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; broadcom.com; dkim=none (message not signed)
 header.d=none;broadcom.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 BN8NAM11FT052.mail.protection.outlook.com (10.13.177.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4331.21 via Frontend Transport; Wed, 14 Jul 2021 12:03:25 +0000
Received: from localhost (172.20.187.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 14 Jul
 2021 12:03:24 +0000
Date: Wed, 14 Jul 2021 15:03:20 +0300
From: Leon Romanovsky <leonro@nvidia.com>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <YO7SiFE1dE0dFhkE@unreal>
References: <20210713211502.464259-1-nitesh@redhat.com>
 <20210713211502.464259-7-nitesh@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210713211502.464259-7-nitesh@redhat.com>
X-Originating-IP: [172.20.187.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9dadaf63-fa90-4550-036a-08d946bf6278
X-MS-TrafficTypeDiagnostic: CY4PR12MB1733:
X-Microsoft-Antispam-PRVS: <CY4PR12MB17338AAAF23F30B6BBE2FD70BD139@CY4PR12MB1733.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FyCFlaDzwYybc19i92z3NayEgYnxaaKT14xiwx/u3+784TdeUdjPBrsVrRw/t7WqCTcnuInM5zkYi2fstN28i4YlH4Xk4ahjB0yJ721/MWUIKZbnlqpamJpgKMcCqhlR2QFSeF+d9OlLjC78cvvjzQloFwRDVh35FaLDy9aSLuiRVh7+0f8kgVoXNPUaL/gpN3qGoqiiPxi8Y6c+SRwKPxJF/Vzchp1TMFSlgttD0RLyo9mC9hLLLSGvzMQBgsokCWrf8xwtTl2arcVG5Yo95Fbo7ijC4d+L1TLnivyoLTpB7011I7tLaoGKdvAAp2Eng/pIHl1NlpFoJdbOAcpr3W+9o5Uad/fXId+pIn8x9HlX0mzGkUNdvc0g4jDMgupH1AdQtPeacZGoYzPscNU4zXsseSRGoX4cCqXGEM9TtlDDP1UI4tA5/VcIfHy47KP/W02PsO//OEB3i6ZVfcGT1zM4Wil/+rYTiu06S06Sly0qP3wtq20/C6ZVIyQXd3lgACOBIwgy9nCUhm6ywt0NXj/YjqHaIIs9h4vtOmZiYk0VseTbIhEHdjAn1olqBj0actbynmBCgVYWHcdAU/Zc+dajsJKWYh9eMQp0RyPo4RfFMxuTXwjJcGwOsDHLnfsuZqy7qhTC8pEu1SIMJau0WVhCyfNbTsdaYdQW0f4RmXkqDSnzyNpfsYRhaQbv06vuMjDIB+jHlk4knUbA2pr7QO3F89A+uawjQ289jOKlH2A=
X-Forefront-Antispam-Report: CIP:216.228.112.34; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:schybrid03.nvidia.com; CAT:NONE;
 SFS:(7916004)(4636009)(376002)(39860400002)(136003)(346002)(396003)(46966006)(36840700001)(33716001)(426003)(316002)(82740400003)(9686003)(6916009)(186003)(8936002)(36906005)(83380400001)(16526019)(478600001)(36860700001)(47076005)(5660300002)(26005)(34020700004)(86362001)(8676002)(70586007)(82310400003)(54906003)(70206006)(336012)(7366002)(7416002)(4326008)(7406005)(356005)(6666004)(2906002)(7636003);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2021 12:03:25.2137 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dadaf63-fa90-4550-036a-08d946bf6278
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.112.34];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT052.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1733
X-Mailman-Approved-At: Wed, 14 Jul 2021 13:10:50 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3 06/14] RDMA/irdma: Use
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

On Tue, Jul 13, 2021 at 05:14:54PM -0400, Nitesh Narayan Lal wrote:
> The driver uses irq_set_affinity_hint() to update the affinity_hint mask
> that is consumed by the userspace to distribute the interrupts and to apply
> the provided mask as the affinity for its interrupts. However,
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
>  drivers/infiniband/hw/irdma/hw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
> index 7afb8a6a0526..7f13a051d4de 100644
> --- a/drivers/infiniband/hw/irdma/hw.c
> +++ b/drivers/infiniband/hw/irdma/hw.c
> @@ -537,7 +537,7 @@ static void irdma_destroy_irq(struct irdma_pci_f *rf,
>  	struct irdma_sc_dev *dev = &rf->sc_dev;
>  
>  	dev->irq_ops->irdma_dis_irq(dev, msix_vec->idx);
> -	irq_set_affinity_hint(msix_vec->irq, NULL);
> +	irq_update_affinity_hint(msix_vec->irq, NULL);
>  	free_irq(msix_vec->irq, dev_id);
>  }
>  
> @@ -1087,7 +1087,7 @@ irdma_cfg_ceq_vector(struct irdma_pci_f *rf, struct irdma_ceq *iwceq,
>  	}
>  	cpumask_clear(&msix_vec->mask);
>  	cpumask_set_cpu(msix_vec->cpu_affinity, &msix_vec->mask);
> -	irq_set_affinity_hint(msix_vec->irq, &msix_vec->mask);
> +	irq_set_affinity_and_hint(msix_vec->irq, &msix_vec->mask);

I think that it needs to be irq_update_affinity_hint().

>  	if (status) {
>  		ibdev_dbg(&rf->iwdev->ibdev, "ERR: ceq irq config fail\n");
>  		return IRDMA_ERR_CFG;
> -- 
> 2.27.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
