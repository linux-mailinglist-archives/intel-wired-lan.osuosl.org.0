Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 401903C850B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 15:11:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C890560B87;
	Wed, 14 Jul 2021 13:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sH9BMWJ0ERTX; Wed, 14 Jul 2021 13:11:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2316605D2;
	Wed, 14 Jul 2021 13:11:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B57491BF83A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 13:03:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A238083A4B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 13:03:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgqleapvsYSp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 13:03:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2082.outbound.protection.outlook.com [40.107.93.82])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6378D826A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 13:03:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cu6GxpGq+LRA9/sDDDts+frTj8ZTifgcIB7nrPcqVmw73RSGnzS47jZTDbyafev/gIZ5/bAS6o0K5l7yFsXMGhw6O8ZqOc39jNGxHiFWfybiQZryfMnN8h1tdbz2LcbDDENqqzOXO7p3dd8c1DTujJVdK/XoHWTUbIt23Zt16kQG5MpW+OJS3bIY4E6x9N1D1ATMUanY2qRIZjMT1GNj55avl4KPEP1Z5jARHxpZ6Hj/8pYFd5SQwKjK/pqrAymptf+GPP8Jy4yliYPTNTU/4JbFkk9QW+gh/eVrEUnpxZkJxock7rz+9IDU4zA2cOFmbX6XETQETl/RxmiUji5N7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1z8TV4lfhpsOPtaDTnMBe4NgFq6Nz02iV8vlu6k78/U=;
 b=Z9pK2sq5o1k8MBKZuwzOKTRH7Sk4m1UvSgfs5L93sfvzSA0ysa27GU/dISO206kT6RxvlSstC3SZx1tIUfhjC3UZpvSYa0vaujSuCAkrL2jQ8F1xCt7Bg8zgx+PYXmd6dG1290+xfTdqrGXkwG3uhPBVA4nkqM2x3DDKKHwix225WJQq/tM90ysIcp/zbRhskXRyI8DLjLU09RX+jPIzItZrBLdf4DrhKIa0hyHwxuVvKnqHVre0lqzVq8U3ttkUh0CERPE2NfbdUwczkIBy7s0ZHJiYayiN/Ed3TMLNafsu0UZFIgz4p3yVSSWq08tTgVii7upnsHMwrE97bcsaog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.34) smtp.rcpttodomain=broadcom.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1z8TV4lfhpsOPtaDTnMBe4NgFq6Nz02iV8vlu6k78/U=;
 b=Kp2ZUldmLhXCx18mX6gpkuIDpjCXTGbkYhSdN/o/Z5Gzhzsag/qhSDZr1b8fW8OioI+GMI//hX3iFkzEAgb66+5rJv4aMcnOLLqwAjlZBj9bPExjY/gHCK3t1JXyA50hH4aJ4Wxnf3PEZaNFk8XkCxJEkt+jbBZQaIYRbkuCU+LABgfV1aQQBGYl9li1T/vqaGChT+25wQDwBouW8Le5psjWaTAXt74N9F03JSL6njmRBgEb3S+ptEB8uxEgMK1ldJL0RlyemnHOLFsOdCIEFPnQd0+n6ZPmyVVF/amdU6yG2zUipopDfTpIlo8oatM/igeUx3ND7mwapOWT1unw+A==
Received: from MW4PR03CA0107.namprd03.prod.outlook.com (2603:10b6:303:b7::22)
 by BN8PR12MB3364.namprd12.prod.outlook.com (2603:10b6:408:40::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Wed, 14 Jul
 2021 13:03:02 +0000
Received: from CO1NAM11FT006.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:b7:cafe::d3) by MW4PR03CA0107.outlook.office365.com
 (2603:10b6:303:b7::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend
 Transport; Wed, 14 Jul 2021 13:03:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.34)
 smtp.mailfrom=nvidia.com; broadcom.com; dkim=none (message not signed)
 header.d=none;broadcom.com; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.34 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.34; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.34) by
 CO1NAM11FT006.mail.protection.outlook.com (10.13.174.246) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4331.21 via Frontend Transport; Wed, 14 Jul 2021 13:03:01 +0000
Received: from localhost (172.20.187.6) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 14 Jul
 2021 13:03:00 +0000
Date: Wed, 14 Jul 2021 16:02:56 +0300
From: Leon Romanovsky <leonro@nvidia.com>
To: Nitesh Lal <nilal@redhat.com>
Message-ID: <YO7ggLW78FWE4z+1@unreal>
References: <20210713211502.464259-1-nitesh@redhat.com>
 <20210713211502.464259-7-nitesh@redhat.com>
 <YO7SiFE1dE0dFhkE@unreal>
 <CAFki+Lm-CpKZai1fV5aMJzEb-x+003m8wLQShSrYpyNh3XC50Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFki+Lm-CpKZai1fV5aMJzEb-x+003m8wLQShSrYpyNh3XC50Q@mail.gmail.com>
X-Originating-IP: [172.20.187.6]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29cf5632-499e-4e1a-2dfb-08d946c7b601
X-MS-TrafficTypeDiagnostic: BN8PR12MB3364:
X-Microsoft-Antispam-PRVS: <BN8PR12MB3364E7C3E9DCE1D4D04A9F04BD139@BN8PR12MB3364.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LsXtPSnnYgrI0O738l9dZX/e80v3jIB6/0kRpQHvlSy0EoSNZQO2CpmB0o1rTR4gqxklkD2ijAJ5hZdiJhwsVto/VzsEnT2IDHkX2ajHz4y03bqlWUyXzFkPgMXB93nvN0HRdKAQMk6mtf5iZ6MHpxKkO3D0nDc6JHsa6q3S8BRa6561ph/a3pvhzQvkTqgSv2w816ts70wStqmyVIKPSoyr35bG3YdvIFEEDUDv5nllrBMrgpB5LMF2zK/8oPZoIheztHkLEwSCMfliblqq4apcW5MX/9SAkQe5lSgj3AS3aFu23oMLCgLm0hHzPaBs8xl7Gg39vFIA8wWnL/ND1LqXUNatHyw1KJmKS2E8GhPR4hW+eCJsyJhy9+eQVG+z9CXd7eq8tPwHuhnVLkMQKBVidI2UcRPuqUEYCl57ooTGjMHo4nluQ8KvGsmXNEpvBu1VrwY58bk4W9cqXJhsZnYEutJ2g2TISQn+Rf6+/Vt3wjbv/qqypoC5PZaV1ZIygdmxbdIBAE3Zz9uJr4FCu1jlPc5DV5hlcjLxJD9ejSUVt3Tuap/+7ffasnEXZTlxax+L/VgwNvzDavfrDjj2EJYcmoAG1FG31lPNrLrOZu74ouChIHeAiTbpSGw+LPqHB5LWjWMM+Pef9n50PU2BDJTPWb7DTuCeBtDUQX0lHEEoQLSO+tjPf13xQuJCWOVbsBSMNBsIir565s298yiO5e0TyBF04+V32wJ6ZtG5NQbUQpL46WsEgZXM9sOuHkYW9AG9+uZOcoyW1yzLomCNgw==
X-Forefront-Antispam-Report: CIP:216.228.112.34; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:schybrid03.nvidia.com; CAT:NONE;
 SFS:(7916004)(4636009)(39850400004)(376002)(396003)(136003)(346002)(46966006)(36840700001)(478600001)(26005)(82310400003)(34020700004)(2906002)(70206006)(83380400001)(70586007)(86362001)(4326008)(54906003)(6916009)(9686003)(33716001)(186003)(356005)(16526019)(7636003)(8936002)(6666004)(336012)(53546011)(426003)(47076005)(8676002)(5660300002)(36860700001)(82740400003)(316002)(7416002)(7366002)(36906005)(7406005)(67856001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2021 13:03:01.4573 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 29cf5632-499e-4e1a-2dfb-08d946c7b601
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.112.34];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT006.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3364
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
Cc: Juri Lelli <juri.lelli@redhat.com>, ajit.khaparde@broadcom.com,
 jassisinghbrar@gmail.com, peterz@infradead.org, linux-pci@vger.kernel.org,
 james.smart@broadcom.com, "Ismail, Mustafa" <mustafa.ismail@intel.com>,
 govind@gmx.com, Alaa Hleihel <ahleihel@redhat.com>,
 Ingo Molnar <mingo@kernel.org>, Stefan Assmann <sassmann@redhat.com>,
 sfr@canb.auug.org.au, linux-scsi@vger.kernel.org, borisp@nvidia.com,
 Marc Zyngier <maz@kernel.org>, sathya.prakash@broadcom.com,
 kashyap.desai@broadcom.com, "Nikolova,
 Tatyana E" <tatyana.e.nikolova@intel.com>,
 Chandrakanth Patil <chandrakanth.patil@broadcom.com>,
 intel-wired-lan@lists.osuosl.org, Alex Belits <abelits@marvell.com>,
 dick.kennedy@broadcom.com, faisal.latif@intel.com,
 suganath-prabu.subramani@broadcom.com, frederic@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, rostedt@goodmis.org,
 rppt@linux.vnet.ibm.com, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, somnath.kotur@broadcom.com,
 shiraz.saleem@intel.com, Al Stone <ahs3@redhat.com>, pjwaskiewicz@gmail.com,
 Nitesh Narayan Lal <nitesh@redhat.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 sriharsha.basavapatna@broadcom.com, Neil Horman <nhorman@tuxdriver.com>,
 shivasharan.srikanteshwara@broadcom.com, linux-api@vger.kernel.org,
 Marcelo Tosatti <mtosatti@redhat.com>, Kamal Heib <kheib@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, stephen@networkplumber.org,
 Sumit Saxena <sumit.saxena@broadcom.com>, Tomas Henzl <thenzl@redhat.com>,
 netdev@vger.kernel.org, saeedm@nvidia.com, akpm@linux-foundation.org,
 Ken Cox <jkc@redhat.com>, jbrandeb@kernel.org, davem@davemloft.net,
 benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 14, 2021 at 08:56:41AM -0400, Nitesh Lal wrote:
> On Wed, Jul 14, 2021 at 8:03 AM Leon Romanovsky <leonro@nvidia.com> wrote:
> >
> > On Tue, Jul 13, 2021 at 05:14:54PM -0400, Nitesh Narayan Lal wrote:
> > > The driver uses irq_set_affinity_hint() to update the affinity_hint mask
> > > that is consumed by the userspace to distribute the interrupts and to apply
> > > the provided mask as the affinity for its interrupts. However,
> > > irq_set_affinity_hint() applying the provided cpumask as an affinity for
> > > the interrupt is an undocumented side effect.
> > >
> > > To remove this side effect irq_set_affinity_hint() has been marked
> > > as deprecated and new interfaces have been introduced. Hence, replace the
> > > irq_set_affinity_hint() with the new interface irq_set_affinity_and_hint()
> > > where the provided mask needs to be applied as the affinity and
> > > affinity_hint pointer needs to be set and replace with
> > > irq_update_affinity_hint() where only affinity_hint needs to be updated.
> > >
> > > Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> > > ---
> > >  drivers/infiniband/hw/irdma/hw.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
> > > index 7afb8a6a0526..7f13a051d4de 100644
> > > --- a/drivers/infiniband/hw/irdma/hw.c
> > > +++ b/drivers/infiniband/hw/irdma/hw.c
> > > @@ -537,7 +537,7 @@ static void irdma_destroy_irq(struct irdma_pci_f *rf,
> > >       struct irdma_sc_dev *dev = &rf->sc_dev;
> > >
> > >       dev->irq_ops->irdma_dis_irq(dev, msix_vec->idx);
> > > -     irq_set_affinity_hint(msix_vec->irq, NULL);
> > > +     irq_update_affinity_hint(msix_vec->irq, NULL);
> > >       free_irq(msix_vec->irq, dev_id);
> > >  }
> > >
> > > @@ -1087,7 +1087,7 @@ irdma_cfg_ceq_vector(struct irdma_pci_f *rf, struct irdma_ceq *iwceq,
> > >       }
> > >       cpumask_clear(&msix_vec->mask);
> > >       cpumask_set_cpu(msix_vec->cpu_affinity, &msix_vec->mask);
> > > -     irq_set_affinity_hint(msix_vec->irq, &msix_vec->mask);
> > > +     irq_set_affinity_and_hint(msix_vec->irq, &msix_vec->mask);
> >
> > I think that it needs to be irq_update_affinity_hint().
> >
> 
> Ah! I got a little confused from our last conversation about mlx5.
> 
> IIUC mlx5 sub-function use case uses irdma (?) and that's why I thought
> that perhaps we would also want to define the affinity here from the beginning.

mlx5 is connected to mlx5_ib/mlx5_vdpa e.t.c.

Not sure about that, but I think that only mlx5 implements SIOV model.

> 
> In any case, I will make the change and re-post.
> 
> --
> Thanks
> Nitesh
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
