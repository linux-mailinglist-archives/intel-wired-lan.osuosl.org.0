Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C70AB6E06AC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 08:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D271405FA;
	Thu, 13 Apr 2023 06:04:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D271405FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681365851;
	bh=eo1yYGrhofmzK5negIZd+kKbhmjaetIzn9OvW2u1KRQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G7oSnQ2RpbZJbJ+dlnY6GIguyN6XIogtGxpKvSYOoFPeXBXkbHFohF9+JAhiVpvvD
	 OUb9t470rKAlM7NFgZDEiH+t+zda7i6QfLNO2bKiK43IUpW647bNgGsVnqOEXgRZHA
	 +m6JcjkVKXJmSbcm9cHQY13Iz0Bw7AlR3XJI+fhwXzMbdK3GeKgPzoEKMQPVRK/u6e
	 f/8+dDtucWar7UKqVCC927O59AvZglDZbXIEI8vrMSO8qjzEOdL/dDZnQ5m0neHQST
	 Cqum1XzZn24TEGp+vS0hPSHoY8GaCfa+LHcWyZ9es6pLfWDr0UHua1I6K3DSFFzAby
	 S11UGjjzZAw3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iQMf5a2Np4b6; Thu, 13 Apr 2023 06:04:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAD8C4059D;
	Thu, 13 Apr 2023 06:04:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAD8C4059D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 421291BF288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 06:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19DBB613A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 06:04:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19DBB613A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q6dV7vsKGkNR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 06:04:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FA9061320
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3FA9061320
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 06:04:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7BA1060C59;
 Thu, 13 Apr 2023 06:04:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23F64C433EF;
 Thu, 13 Apr 2023 06:04:00 +0000 (UTC)
Date: Thu, 13 Apr 2023 09:03:57 +0300
From: Leon Romanovsky <leon@kernel.org>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Message-ID: <20230413060357.GC182481@unreal>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-3-pavan.kumar.linga@intel.com>
 <20230411123653.GW182481@unreal>
 <b6ed7b0b-9262-3578-1d88-4c848d1aea82@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b6ed7b0b-9262-3578-1d88-4c848d1aea82@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681365841;
 bh=73jC7VuA4E5rMOY0gojw4B2rEbbMXYjFGlAFtZOIy6A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N656O0eUs1hO8fX8wktkwnalN9jyi8l9youlfvedic4HF2YRyqVhjXAabGHawzipC
 WFz58XR+FoXYW4y83rSsgZ6JVf2Zj8T2p3IUUrLKvIKOMKt5FO5dtt0BXKtDEOGwEH
 CZoVKyMxvjznTXoJQjbTfsyhKNa6YeFgcO3C88hZI8fxBNE/K9eBDGAHVJBXIArKKt
 3wb7ydCoMkdJDQqpl+dKz+cX4+V67X1/6Fdnd7QWIUrtQ1GRYkQkvwg05NmWNIrqbk
 gR4nmy8b7t+Tf4Fp8A+xrF8IDmOtxv+hiU8ecsr9nlAAifykexUcfY5S5FjT22yY1q
 r7MI+lxuoqDYA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=N656O0eU
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 02/15] idpf: add module
 register and probe functionality
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
Cc: willemb@google.com, pabeni@redhat.com,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 12, 2023 at 04:10:18PM -0700, Tantilov, Emil S wrote:
> 
> 
> On 4/11/2023 5:36 AM, Leon Romanovsky wrote:
> > On Mon, Apr 10, 2023 at 06:13:41PM -0700, Pavan Kumar Linga wrote:
> > > From: Phani Burra <phani.r.burra@intel.com>
> > > 
> > > Add the required support to register IDPF PCI driver, as well as
> > > probe and remove call backs. Enable the PCI device and request
> > > the kernel to reserve the memory resources that will be used by the
> > > driver. Finally map the BAR0 address space.
> > > 
> > > PCI IDs table is intentionally left blank to prevent the kernel from
> > > probing the device with the incomplete driver. It will be added
> > > in the last patch of the series.
> > > 
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Co-developed-by: Alan Brady <alan.brady@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> > > Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> > > Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > > Reviewed-by: Willem de Bruijn <willemb@google.com>
> > > ---
> > >   drivers/net/ethernet/intel/Kconfig            | 11 +++
> > >   drivers/net/ethernet/intel/Makefile           |  1 +
> > >   drivers/net/ethernet/intel/idpf/Makefile      | 10 ++
> > >   drivers/net/ethernet/intel/idpf/idpf.h        | 27 ++++++
> > >   .../net/ethernet/intel/idpf/idpf_controlq.h   | 14 +++
> > >   drivers/net/ethernet/intel/idpf/idpf_lib.c    | 96 +++++++++++++++++++
> > >   drivers/net/ethernet/intel/idpf/idpf_main.c   | 70 ++++++++++++++
> > >   7 files changed, 229 insertions(+)
> > >   create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
> > >   create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
> > >   create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
> > >   create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
> > >   create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
> > 
> > <...>

<...>

> > > +/**
> > > + * idpf_probe - Device initialization routine
> > > + * @pdev: PCI device information struct
> > > + * @ent: entry in idpf_pci_tbl
> > > + *
> > > + * Returns 0 on success, negative on failure
> > > + */
> > > +static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> > > +{
> > > +	struct idpf_adapter *adapter;
> > > +
> > > +	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
> > 
> > Why devm_kzalloc() and not kzalloc?
> It provides managed memory allocation on probe, which seems to be the
> preferred method in that case.

I don't think so, as PCI probe/remove has very clear lifetime model and
doesn't need garbage collection memory logic. In general, it is better
to avoid devm_*() APIs as they hide error unwind flows.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
