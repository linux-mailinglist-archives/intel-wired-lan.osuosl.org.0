Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC2641EE9C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Oct 2021 15:31:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5042D614CB;
	Fri,  1 Oct 2021 13:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3rAPj-Zlm4DF; Fri,  1 Oct 2021 13:31:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E86B614CA;
	Fri,  1 Oct 2021 13:31:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 091721BF47A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 08:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0460640368
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 08:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=ibm.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WRba8An_13af for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Oct 2021 08:23:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F3124034C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Oct 2021 08:23:43 +0000 (UTC)
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1918C2PX001177; 
 Fri, 1 Oct 2021 04:23:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : subject :
 from : to : cc : date : in-reply-to : references : content-type :
 mime-version : content-transfer-encoding; s=pp1;
 bh=G6K+sVMkbV9kGDxT1j5qPRAw9MwY5YvJSeK69w1o8mE=;
 b=GWGytIFg+r0GWNcfDTaPJxZeGudeWy/fRZDp/+picKBzPRfP8eOMTDsAQL7gwkRo3uo2
 YRTA1cW/vJJquRTHqHs7jH2KJnmKUeG42btRUg6Xj9ngFFlDN4JHLHt9q6iRyp04IiJz
 aikPnyxRmUvQVl5nM9Hc5XN3zXUqDp4EfbeVsYOyzDIxgenO31ZaiTnFV2m7mpSRhei1
 qC12nZJyGp5Bh6mBghpKuGmtjq1YprFWtLY8YV7AUopdQ7LhvRHoFRTojufUKUe3arXi
 P2ZNd2Bl5kDKGuDqjfIkM8rjL1/I53VzI0vuLIOz8cgGF5Fup+XxW6Z0sSzVsHJ6m5DN 6Q== 
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.71])
 by mx0a-001b2d01.pphosted.com with ESMTP id 3bdxku07ak-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 01 Oct 2021 04:23:41 -0400
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
 by ppma02fra.de.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 1918CQeq022296;
 Fri, 1 Oct 2021 08:23:38 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com
 (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
 by ppma02fra.de.ibm.com with ESMTP id 3b9uda8kkt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 01 Oct 2021 08:23:38 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 1918NaBE53412280
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 1 Oct 2021 08:23:36 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0FDFF11C064;
 Fri,  1 Oct 2021 08:23:36 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9BFE811C04A;
 Fri,  1 Oct 2021 08:23:35 +0000 (GMT)
Received: from sig-9-145-167-144.de.ibm.com (unknown [9.145.167.144])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri,  1 Oct 2021 08:23:35 +0000 (GMT)
Message-ID: <924c2d6ef51a83cce5c9bcf4004bbf1506c5a768.camel@linux.ibm.com>
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>
Date: Fri, 01 Oct 2021 10:23:35 +0200
In-Reply-To: <CAJZ5v0hsQvHp2PqFjxvyx4tPCnNC7BCWyfPj-eADFa1w68BCMQ@mail.gmail.com>
References: <8e4bbd5c59de31db71f718556654c0aa077df03d.camel@linux.ibm.com>
 <5ea40608-388e-1137-9b86-85aad1cad6f6@intel.com>
 <b9e461a5-75de-6f45-1709-d9573492f7ac@intel.com>
 <CAJZ5v0gpxRDt0V3Eh1_edZAudxyL3-ik4MhT7TzijTYeOd=_Vg@mail.gmail.com>
 <CAJZ5v0hsQvHp2PqFjxvyx4tPCnNC7BCWyfPj-eADFa1w68BCMQ@mail.gmail.com>
X-Mailer: Evolution 3.28.5 (3.28.5-16.el8) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: -x7WUWAeS2lx3fdAEJUTltwZzXq29tRr
X-Proofpoint-GUID: -x7WUWAeS2lx3fdAEJUTltwZzXq29tRr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-30_07,2021-09-30_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0
 mlxscore=0 adultscore=0 clxscore=1011 suspectscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2110010055
X-Mailman-Approved-At: Fri, 01 Oct 2021 13:31:49 +0000
Subject: Re: [Intel-wired-lan] Oops in during sriov_enable with ixgbe driver
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
Cc: ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-09-30 at 20:37 +0200, Rafael J. Wysocki wrote:
> On Thu, Sep 30, 2021 at 8:20 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
> > On Thu, Sep 30, 2021 at 7:38 PM Rafael J. Wysocki
> > <rafael.j.wysocki@intel.com> wrote:
> > > On 9/30/2021 7:31 PM, Jesse Brandeburg wrote:
> > > > On 9/28/2021 4:56 AM, Niklas Schnelle wrote:
> > > > > Hi Jesse, Hi Tony,
> > > > > 
> > > > > Since v5.15-rc1 I've been having problems with enabling SR-IOV VFs on
> > > > > my private workstation with an Intel 82599 NIC with the ixgbe driver. I
> > > > > haven't had time to bisect or look closer but since it still happens on
> > > > > v5.15-rc3 I wanted to at least check if you're aware of the problem as
> > > > > I couldn't find anything on the web.
> > > > We haven't heard anything of this problem.
> > > > 
> > > > 
> > > > > I get below Oops when trying "echo 2 > /sys/bus/pci/.../sriov_numvfs"
> > > > > and suspect that the earlier ACPI messages could have something to do
> > > > > with that, absolutely not an ACPI expert though. If there is a need I
> > > > > could do a bisect.
> > > > Hi Niklas, thanks for the report, I added the Intel Driver's list for
> > > > more exposure.
> > > > 
> > > > I asked the developers working on that driver to take a look and they
> > > > tried to reproduce, and were unable to do so. This might be related to
> > > > your platform, which strongly suggests that the ACPI stuff may be related.
> > > > 
> > > > We have tried to reproduce but everything works fine no call trace in
> > > > scenario with creating VF.
> > > > 
> > > > This is good in that it doesn't seem to be a general failure, you may
> > > > want to file a kernel bugzilla (bugzilla.kernel.org) to track the issue,
> > > > and I hope that @Rafael might have some insight.
> > > > 
> > > > This issue may be related to changes in acpi_pci_find_companion,
> > > > but as I say, we are not able to reproduce this.
> > > > 
> > > > commit 59dc33252ee777e02332774fbdf3381b1d5d5f5d
> > > > Author: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > Date:   Tue Aug 24 16:43:55 2021 +0200
> > > >      PCI: VMD: ACPI: Make ACPI companion lookup work for VMD bus
> > > 
> > > This change doesn't affect any devices beyond the ones on the VMD bus.
> > 
> > The only failing case I can see is when the device is on the VMD bus
> > and its bus pointer is NULL, so the dereference in
> > vmd_acpi_find_companion() crashes.
> > 
> > Can anything like that happen?
> 
> Not really, because pci_iov_add_virtfn() sets virtfn->bus.
> 
> However, it doesn\t set virtfn->dev.parent AFAICS, so when that gets
> dereferenced by ACPI_COMPANIO(dev->parent) in
> acpi_pci_find_companion(), the crash occurs.
> 
> We need a !dev->parent check in acpi_pci_find_companion() I suppose:
> 
> Does the following change help?
> 
> Index: linux-pm/drivers/pci/pci-acpi.c
> ===================================================================
> --- linux-pm.orig/drivers/pci/pci-acpi.c
> +++ linux-pm/drivers/pci/pci-acpi.c
> @@ -1243,6 +1243,9 @@ static struct acpi_device *acpi_pci_find
>      bool check_children;
>      u64 addr;
> 
> +    if (!dev->parent)
> +        return NULL;
> +
>      down_read(&pci_acpi_companion_lookup_sem);
> 
>      adev = pci_acpi_find_companion_hook ?


Yes the above change fixes the problem for me. SR-IOV enables
successfully and the VFs are fully usable. Thanks!

Just out of curiosity and because I use this system to test common code
PCI changed. Do you have an idea what makes my system special here? 

The call to pci_set_acpi_fwnode() in pci_setup_device() is
unconditional and should do the same on any ACPI enabled system.
Also nothing in your explanation sounds specific to my system.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
