Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5DB35E13F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 16:19:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5287140271;
	Tue, 13 Apr 2021 14:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eP_IkwFRf5q4; Tue, 13 Apr 2021 14:19:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 724644027A;
	Tue, 13 Apr 2021 14:19:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FDF41BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 08:26:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DD4C400D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 08:26:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PoifAOGuUQn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 08:26:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com
 [185.176.79.56])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 756974057B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 08:26:09 +0000 (UTC)
Received: from fraeml710-chm.china.huawei.com (unknown [172.18.147.201])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4FKJQw67r3z688K3;
 Tue, 13 Apr 2021 16:18:48 +0800 (CST)
Received: from lhreml707-chm.china.huawei.com (10.201.108.56) by
 fraeml710-chm.china.huawei.com (10.206.15.59) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2106.2; Tue, 13 Apr 2021 10:26:01 +0200
Received: from lhreml703-chm.china.huawei.com (10.201.108.52) by
 lhreml707-chm.china.huawei.com (10.201.108.56) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2106.2; Tue, 13 Apr 2021 09:25:58 +0100
Received: from lhreml703-chm.china.huawei.com ([10.201.68.198]) by
 lhreml703-chm.china.huawei.com ([10.201.68.198]) with mapi id 15.01.2106.013; 
 Tue, 13 Apr 2021 09:25:58 +0100
From: Salil Mehta <salil.mehta@huawei.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [PATCH net] ice: Re-organizes reqstd/avail {R,T}XQ check/code
 for efficiency+readability
Thread-Index: AQHXLnSYr3LSh1DDV0C/ZapTpipD6KqxbBIAgACyFoA=
Date: Tue, 13 Apr 2021 08:25:58 +0000
Message-ID: <8fd160b556fc4d45bff2d607918aad33@huawei.com>
References: <20210411014530.25060-1-salil.mehta@huawei.com>
 <03655fb6faa595a20a1143fb3b01561042cd317f.camel@intel.com>
In-Reply-To: <03655fb6faa595a20a1143fb3b01561042cd317f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.47.73.132]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 13 Apr 2021 14:18:41 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Re-organizes reqstd/avail {R,
 T}XQ check/code for efficiency+readability
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "linuxarm@openeuler.org" <linuxarm@openeuler.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Anthony,
Thanks for reviewing!

> From: Nguyen, Anthony L [mailto:anthony.l.nguyen@intel.com]
> Sent: Monday, April 12, 2021 11:41 PM
> To: davem@davemloft.net; kuba@kernel.org; Salil Mehta <salil.mehta@huawei.com>
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; linuxarm@openeuler.org; Tieman, Henry W
> <henry.w.tieman@intel.com>; Linuxarm <linuxarm@huawei.com>
> Subject: Re: [PATCH net] ice: Re-organizes reqstd/avail {R,T}XQ check/code for
> efficiency+readability
> 
> On Sun, 2021-04-11 at 02:45 +0100, Salil Mehta wrote:
> > If user has explicitly requested the number of {R,T}XQs, then it is
> > unnecessary
> > to get the count of already available {R,T}XQs from the PF
> > avail_{r,t}xqs
> > bitmap. This value will get overriden by user specified value in any
> 
> s/overriden/overridden

Ok.

> 
> > case.
> >
> > This patch does minor re-organization of the code for improving the
> > flow and
> > readabiltiy. This scope of improvement was found during the review of
> > the ICE
> > driver code.
> 
> The changes themselves look ok, but there are some checkpatch issues.
> Also, could you include intel-wired-lan@lists.osuosl.org

Sure. will fix them.

> 
> > FYI, I could not test this change due to unavailability of the
> > hardware. It
> > would helpful if somebody can test this and provide Tested-by Tag.
> > Many thanks!
> >
> > Fixes: 11b7551e096d ("ice: Implement ethtool ops for channels")
> 
> This commit id doesn't exist.

Will fix. Sorry about this.

> 
> > Signed-off-by: Salil Mehta <salil.mehta@huawei.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lib.c | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index d13c7fc8fb0a..161e8dfe548c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -161,12 +161,13 @@ static void ice_vsi_set_num_qs(struct ice_vsi
> > *vsi, u16 vf_id)
> >
> >  	switch (vsi->type) {
> >  	case ICE_VSI_PF:
> > -		vsi->alloc_txq = min3(pf->num_lan_msix,
> > -				      ice_get_avail_txq_count(pf),
> > -				      (u16)num_online_cpus());
> >  		if (vsi->req_txq) {
> >  			vsi->alloc_txq = vsi->req_txq;
> >  			vsi->num_txq = vsi->req_txq;
> > +		} else {
> > +			vsi->alloc_txq = min3(pf->num_lan_msix,
> > +					 ice_get_avail_txq_count(pf),
> > +					 (u16)num_online_cpus());
> 
> Alignment is incorrect.

Ok. Will check, perhaps the cause of the checkpatch.pl errors.

> 
> >  		}
> >
> >  		pf->num_lan_tx = vsi->alloc_txq;
> > @@ -175,12 +176,13 @@ static void ice_vsi_set_num_qs(struct ice_vsi
> > *vsi, u16 vf_id)
> >  		if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> >  			vsi->alloc_rxq = 1;
> >  		} else {
> > -			vsi->alloc_rxq = min3(pf->num_lan_msix,
> > -					      ice_get_avail_rxq_count(p
> > f),
> > -					      (u16)num_online_cpus());
> >  			if (vsi->req_rxq) {
> >  				vsi->alloc_rxq = vsi->req_rxq;
> >  				vsi->num_rxq = vsi->req_rxq;
> > +			} else {
> > +				vsi->alloc_rxq = min3(pf->num_lan_msix,
> > +						 ice_get_avail_rxq_coun
> > t(pf),
> > +						 (u16)num_online_cpus()
> 
> Same, alignment is incorrect.

Ok. Will fix.

Thanks
Salil.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
