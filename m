Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ACA366D74
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 16:00:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D47A040EBF;
	Wed, 21 Apr 2021 14:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cloj2MExizru; Wed, 21 Apr 2021 14:00:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD1B740E63;
	Wed, 21 Apr 2021 14:00:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C1EF71BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 08:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC3364068B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 08:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l-d0BHS87a6i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 08:08:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3AB240669
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 08:08:11 +0000 (UTC)
Received: from DGGEML401-HUB.china.huawei.com (unknown [172.30.72.53])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4FQClN1VDKz5rk5;
 Wed, 21 Apr 2021 16:05:04 +0800 (CST)
Received: from dggpeml100021.china.huawei.com (7.185.36.148) by
 DGGEML401-HUB.china.huawei.com (10.3.17.32) with Microsoft SMTP Server (TLS)
 id 14.3.498.0; Wed, 21 Apr 2021 16:08:04 +0800
Received: from lhreml703-chm.china.huawei.com (10.201.108.52) by
 dggpeml100021.china.huawei.com (7.185.36.148) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Wed, 21 Apr 2021 16:08:03 +0800
Received: from lhreml703-chm.china.huawei.com ([10.201.68.198]) by
 lhreml703-chm.china.huawei.com ([10.201.68.198]) with mapi id 15.01.2176.012; 
 Wed, 21 Apr 2021 09:08:00 +0100
From: Salil Mehta <salil.mehta@huawei.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH V2 net] ice: Re-organizes reqstd/avail
 {R, T}XQ check/code for efficiency+readability
Thread-Index: AQHXNnA44ik22M7HZEWiZd3JF/ZDoKq+hESggAAFGoCAABKToA==
Date: Wed, 21 Apr 2021 08:08:00 +0000
Message-ID: <fdd2432301e541baa82ec56427d40cca@huawei.com>
References: <20210413224446.16612-1-salil.mehta@huawei.com>
 <7974e665-73bd-401c-f023-9da568e1dffc@molgen.mpg.de>
 <418702bdb5244eb4811a2a1a536c55c0@huawei.com>
 <9335975a-ef19-863c-005a-d460eac83e03@molgen.mpg.de>
In-Reply-To: <9335975a-ef19-863c-005a-d460eac83e03@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.47.66.69]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 21 Apr 2021 14:00:10 +0000
Subject: Re: [Intel-wired-lan] [PATCH V2 net] ice: Re-organizes reqstd/avail
 {R, T}XQ check/code for efficiency+readability
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Paul Menzel [mailto:pmenzel@molgen.mpg.de]
> Sent: Wednesday, April 21, 2021 8:54 AM
> 
> [CC: Remove Jeff, as email is rejected]

Yes, thanks for the reminder. I had noticed it earlier.

[...]

> >>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> >>> index d13c7fc8fb0a..d77133d6baa7 100644
> >>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> >>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> >>> @@ -161,12 +161,13 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi,
> u16 vf_id)
> >>>
> >>>    	switch (vsi->type) {
> >>>    	case ICE_VSI_PF:
> >>> -		vsi->alloc_txq = min3(pf->num_lan_msix,
> >>> -				      ice_get_avail_txq_count(pf),
> >>> -				      (u16)num_online_cpus());
> >>>    		if (vsi->req_txq) {
> >>>    			vsi->alloc_txq = vsi->req_txq;
> >>>    			vsi->num_txq = vsi->req_txq;
> >>> +		} else {
> >>> +			vsi->alloc_txq = min3(pf->num_lan_msix,
> >>> +					      ice_get_avail_txq_count(pf),
> >>> +					      (u16)num_online_cpus());
> >>>    		}
> >>
> >> I am curious, did you check the compiler actually creates different
> >> code, or did it notice the inefficiency by itself and optimized it already?
> >
> > I have not looked into that detail but irrespective of what compiler generates
> > I would like to keep the code in a shape which is more efficient and more readable.
> >
> > I do understand in certain cases we have to do tradeoff between efficiency
> > and readability but I do not see that here.
> 
> I agree, as *efficiency* is mentioned several times, I assume it was
> tested. Thank you for the clarification.


I mentioned inefficient because below code gets executed unnecessarily.


/**
 * ice_get_avail_q_count - Get count of queues in use
 * @pf_qmap: bitmap to get queue use count from
 * @lock: pointer to a mutex that protects access to pf_qmap
 * @size: size of the bitmap
 */
static u16
ice_get_avail_q_count(unsigned long *pf_qmap, struct mutex *lock, u16 size)
{
	unsigned long bit;
	u16 count = 0;

	mutex_lock(lock);
	for_each_clear_bit(bit, pf_qmap, size)
		count++;
	mutex_unlock(lock);

	return count;
}

/**
 * ice_get_avail_txq_count - Get count of Tx queues in use
 * @pf: pointer to an ice_pf instance
 */
u16 ice_get_avail_txq_count(struct ice_pf *pf)
{
	return ice_get_avail_q_count(pf->avail_txqs, &pf->avail_q_mutex,
				     pf->max_pf_txqs);
}



> >>>    		pf->num_lan_tx = vsi->alloc_txq;
> >>> @@ -175,12 +176,13 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi,
> u16 vf_id)
> >>>    		if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> >>>    			vsi->alloc_rxq = 1;
> >>>    		} else {
> >>> -			vsi->alloc_rxq = min3(pf->num_lan_msix,
> >>> -					      ice_get_avail_rxq_count(pf),
> >>> -					      (u16)num_online_cpus());
> >>>    			if (vsi->req_rxq) {
> >>>    				vsi->alloc_rxq = vsi->req_rxq;
> >>>    				vsi->num_rxq = vsi->req_rxq;
> >>> +			} else {
> >>> +				vsi->alloc_rxq = min3(pf->num_lan_msix,
> >>> +						      ice_get_avail_rxq_count(pf),
> >>> +						      (u16)num_online_cpus());
> >>>    			}
> >>>    		}
> >>>
> 
> 
> Kind regards,
> 
> Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
