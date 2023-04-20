Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EEB6E9B79
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 20:20:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A4A941B49;
	Thu, 20 Apr 2023 18:20:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A4A941B49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682014832;
	bh=/rICjD7NdRRZuD+xzzIHQlOHnC9/D6CrA616kHxFqwQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UFmRgP0bpQXYBu/tgS6oK++yrIwae7ZhlGy1ka34Vmce9FuhGysKye6G/HlpjrJw/
	 Pt2FclvDbbQQd1aRGtIGDVOE6ury9/ZVEzTOChkI1JZFOnrmUP7jeMeK/S7lbMGcS8
	 +hXhqqVISjivvu4Gl2ji2Vz9xmE5uDJ0p8NNzGOJC4HuOeVQnYXDyyHo/rp2JrpSBv
	 QOVO/xCgxkfxLzqpGk3DtUruUMiGHvjdGk49xF0Q8ji5Jk+oKMc6JH1CtmOZWvMubb
	 qkHRACqe6LkC9w341qnFn28/ajL4v3Pf7eAb0sxPpcICTSxx0Z6/dEikG9Av4hUbt5
	 4bxxPGGuN37Rw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZBVkOKRQTPzo; Thu, 20 Apr 2023 18:20:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93FB44186D;
	Thu, 20 Apr 2023 18:20:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93FB44186D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F7A91BF38D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 18:20:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 479EE83B62
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 18:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 479EE83B62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OkMLAbVb7gnt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 18:20:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CAEE83B29
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CAEE83B29
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 18:20:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4F71060EFE;
 Thu, 20 Apr 2023 18:20:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 399B7C433D2;
 Thu, 20 Apr 2023 18:20:21 +0000 (UTC)
Date: Thu, 20 Apr 2023 21:20:18 +0300
From: Leon Romanovsky <leon@kernel.org>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Message-ID: <20230420182018.GF4423@unreal>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-3-pavan.kumar.linga@intel.com>
 <20230411123653.GW182481@unreal>
 <b6ed7b0b-9262-3578-1d88-4c848d1aea82@intel.com>
 <4640cb7c-faac-d548-b0dd-4519396e9f25@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4640cb7c-faac-d548-b0dd-4519396e9f25@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1682014822;
 bh=/nTndpJPM0yhE1yF/A5Q9XjpDyvDelW6bgesKMV/klA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fCryIz0Mg46LzLpzSUX+UYi4RJOVoBhWAG7i72Y5jCiEhMVUND1s8S0bSv8R6VEmM
 u57PWUAofzstyj3FW4xRFPoUfJlC+LbF/Kn33HhcfFHzbmm6E1obMrYgcq9xz1iXb4
 i1AtQ2z8zPJQ3js7Pi8AzRm4CyyPn+SgD2MlFWRkRMPUM84sHduFKwYRCWwN4t3FrA
 ka6Top+HICdMRlMD+k/tle/IyUrWG3ADa1yD8rkc6+13olwlp3BvxCrnSJwpsG/DEt
 e5ZA7RzDd2B6yo+0jYWB+6EB9958rxnuMQ9YouDJWRjyPAVZ6mHU3Jdth7PQH8ROy+
 DWxxfTnboAvbg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fCryIz0M
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
Cc: willemb@google.com, decot@google.com,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 Phani Burra <phani.r.burra@intel.com>, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 20, 2023 at 11:13:09AM -0700, Tantilov, Emil S wrote:
> =

> =

> On 4/12/2023 4:10 PM, Tantilov, Emil S wrote:
> > =

> > =

> > On 4/11/2023 5:36 AM, Leon Romanovsky wrote:
> > > On Mon, Apr 10, 2023 at 06:13:41PM -0700, Pavan Kumar Linga wrote:
> > > > From: Phani Burra <phani.r.burra@intel.com>
> > > > =

> > > > Add the required support to register IDPF PCI driver, as well as
> > > > probe and remove call backs. Enable the PCI device and request
> > > > the kernel to reserve the memory resources that will be used by the
> > > > driver. Finally map the BAR0 address space.
> > > > =

> > > > PCI IDs table is intentionally left blank to prevent the kernel from
> > > > probing the device with the incomplete driver. It will be added
> > > > in the last patch of the series.
> > > > =

> > > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > > Co-developed-by: Alan Brady <alan.brady@intel.com>
> > > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > > Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> > > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > > Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.c=
om>
> > > > Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> > > > Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > > Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > > > Reviewed-by: Willem de Bruijn <willemb@google.com>
> > > > ---
> > > > =A0 drivers/net/ethernet/intel/Kconfig=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 | 11 +++
> > > > =A0 drivers/net/ethernet/intel/Makefile=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 |=A0 1 +
> > > > =A0 drivers/net/ethernet/intel/idpf/Makefile=A0=A0=A0=A0=A0 | 10 ++
> > > > =A0 drivers/net/ethernet/intel/idpf/idpf.h=A0=A0=A0=A0=A0=A0=A0 | 2=
7 ++++++
> > > > =A0 .../net/ethernet/intel/idpf/idpf_controlq.h=A0=A0 | 14 +++
> > > > =A0 drivers/net/ethernet/intel/idpf/idpf_lib.c=A0=A0=A0 | 96 ++++++=
+++++++++++++
> > > > =A0 drivers/net/ethernet/intel/idpf/idpf_main.c=A0=A0 | 70 ++++++++=
++++++
> > > > =A0 7 files changed, 229 insertions(+)
> > > > =A0 create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
> > > > =A0 create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
> > > > =A0 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_control=
q.h
> > > > =A0 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
> > > > =A0 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
> > > =

> > > <...>
> > > > +}
> > > > +
> > > > +/* idpf_pci_tbl - PCI Dev idpf ID Table
> > > > + */
> > > > +static const struct pci_device_id idpf_pci_tbl[] =3D {
> > > > +=A0=A0=A0 { /* Sentinel */ }
> > > =

> > > What does it mean empty pci_device_id table?
> > =

> > Device ID's are added later, but it does make sense to be in this patch
> > instead. Will fix in v3.
> =

> On second look, the reason PCI ids are added in the last patch is because
> none of the modules from the previous patches would result in a functional
> driver.

And yet patches should be split to meaningful and logical chunks. If
you add pci_device_id, please add relevant device at the same patch.

Thanks

> =

> Thanks,
> Emil
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
