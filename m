Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9554A50899D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 15:46:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 444C383F6E;
	Wed, 20 Apr 2022 13:46:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v7LxXZHfXi7Y; Wed, 20 Apr 2022 13:46:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4B4A8407C;
	Wed, 20 Apr 2022 13:46:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57D161BF301
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 23:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A855610E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 23:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=qsc.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ublXayBDdbn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Apr 2022 23:11:11 +0000 (UTC)
X-Greylist: delayed 00:05:08 by SQLgrey-1.8.0
Received: from us-smtp-delivery-160.mimecast.com
 (us-smtp-delivery-160.mimecast.com [170.10.129.160])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F1F2660EB6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 23:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qsc.com;
 s=mimecast20190503; t=1650323469;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jOPJiV67EkGrlw/BDAbXbxHsHhcxdXkIw5TditZBAuo=;
 b=C41oH9mRO+zpGMA6hjD5u3RdHNROaTtHeDfyUiunJPdIGz8jX3/HrUyauPvPgX82Mwgm/Y
 0Djav0cGf5ftxUQD+Nh7jfRdVCjtgJl4kNq9/yNN8BfDHIFAs0UhRgmKqAEVn9G7CLKmel
 0EMx1OjaKV15Qd8A18lHZPXfWja9cGE=
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-448-JZUpCIgePpmFjM9x11OUCg-1; Mon, 18 Apr 2022 19:04:04 -0400
X-MC-Unique: JZUpCIgePpmFjM9x11OUCg-1
Received: from CY4PR16MB0023.namprd16.prod.outlook.com (2603:10b6:903:da::19)
 by PH7PR16MB4745.namprd16.prod.outlook.com (2603:10b6:510:137::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Mon, 18 Apr
 2022 23:03:59 +0000
Received: from CY4PR16MB0023.namprd16.prod.outlook.com
 ([fe80::458a:1620:d220:26b6]) by CY4PR16MB0023.namprd16.prod.outlook.com
 ([fe80::458a:1620:d220:26b6%12]) with mapi id 15.20.5164.025; Mon, 18 Apr
 2022 23:03:59 +0000
From: Jeff Evanson <Jeff.Evanson@qsc.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Jeff Evanson
 <jeff.evanson@gmail.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH 2/2] Trigger proper interrupts in igc_xsk_wakeup
Thread-Index: AQHYUQybCTI0E92i8ka2vo72M+w346z19daAgABUKUA=
Date: Mon, 18 Apr 2022 23:03:59 +0000
Message-ID: <CY4PR16MB002318405355FB6AC87CA0919BF39@CY4PR16MB0023.namprd16.prod.outlook.com>
References: <20220415210546.11294-1-jeff.evanson@qsc.com>
 <87v8v6477g.fsf@intel.com>
In-Reply-To: <87v8v6477g.fsf@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52f3aa96-037d-412f-f82a-08da218fb92c
x-ms-traffictypediagnostic: PH7PR16MB4745:EE_
x-microsoft-antispam-prvs: <PH7PR16MB4745F35BC5520EDEFF774A2F9BF39@PH7PR16MB4745.namprd16.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: ohTjexFv2f/HU0LQEompOcuRhZdrb4mXPc8Yw74hAyuA49K74Mlu1bEZkGMNWaFscHZ6YJM0jzU03Ff8lpnCK697H7NXhOrn/4mrfLkOVtqke8TzpoK04wDxz05Cf0aevrg6QCTjJiwI+u/3hLpljIcwNGjCzuM7NmRb+QcjUE6E2TOt/4BoOGLFWcGKytq34cEhRzuW/YQzCxBM3fsPwSRmbSCCqj0vCgwfe7/FiWMRORd9SYaWLCjGvhvWntlITDL67i2DInmUgDOUK9/M/ahg+mhZgFcOeIDBLmVfLtjgKv0NgO6Oa1OH+TRIP8yi09+teCOUywDc94zdqpx75NFr31J7utkbp5qScbyhyzaXSFJo9VbXiCAp00ZST8Txe6KfyL5K6uCBIe4heOdsIFONhmRBBlN6qm+COpm+Kacn5Y95MvVIC/9G8R5M83coQy+2w0yzMWb8zpH4fgYvn2d02lX+2ND7e0S4KKIdZglyyY1CWIQYL31GHXCvVVBJGzn27DZUGpIUy9DH6mASrx3VWWklAVStAxYGhteaVImhviGoynopW7xcSq0fduqnW568E3FBn7yXNVITBsceCDktjrCc/vyeVm4Ohy8m1s445T6aX53sRmjIqHRLdh4OK/k+ztsppVUM/nByy8dIxeUpUzI0Va3//mCDb4AWtAvB2e3ywkP7t32Wre4a/+1O/gqQ6GtdconHr9pGd1BzrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR16MB0023.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(122000001)(9686003)(52536014)(33656002)(5660300002)(508600001)(71200400001)(316002)(38070700005)(6506007)(4326008)(8676002)(7696005)(76116006)(66476007)(64756008)(66446008)(66946007)(66556008)(8936002)(86362001)(53546011)(55016003)(2906002)(186003)(26005)(83380400001)(110136005)(38100700002);
 DIR:OUT; SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U/mMKE7W06S7AF6kl6zRPJwyuYUEcPqkHJ2qBgL1gFxHQSQxTAwwB573Qj4b?=
 =?us-ascii?Q?LnXsMthwAPaQnvkyt1zA5S2bx4rOWbT+Lk4nBWpR/A9iHZ1Q9NC0lOR/d9Pf?=
 =?us-ascii?Q?T4LkC25abJ0Q+ZpnIZx5w0WAFfqKcr6IJ6Wm63r2THVq6lY3j+j0uDAlickB?=
 =?us-ascii?Q?7r3a/GcgTRvONTFg+wvfFTOe0ACzbCIeqYclpoTUCXbV2yFJGeDlNCAUcdl1?=
 =?us-ascii?Q?JXfPDEO+Xcerb4NVzKmmxFnPWHDM8UgniDcpZcXckIRVX/THz27sioLdMwwC?=
 =?us-ascii?Q?KzvC1vlklyef123fLblFmmWlge2iad44oPVfRMw1KM0ZXonGYpW2tPvFdN8D?=
 =?us-ascii?Q?P0P1dwVzlhWrg96NBnPVnrpUfVFxAcetnXiyOkP2yVN+ccsx3D8VCAmU1H7l?=
 =?us-ascii?Q?TymEiWHWAOMus+LYsvG1NWaRGxnMp1NTGjyN9OE5GJoqTzxgPSwFVCCn2GrH?=
 =?us-ascii?Q?bEHprH1IPq9d3zHTyDhpkkRwH3kbOnHJ55OMsEvjnmxVYZ6mGwmal73Vn2/B?=
 =?us-ascii?Q?r5TxN6vot1EsgVlh0y3qR/NVOkQuM8wB2VqposXSFqDKeZPEVU55/2ZlAmq7?=
 =?us-ascii?Q?HoiX5WiRzZIWi406OiwD071lyHpiMODyGA14ce/X4/LR32eMJUq3XNXW542R?=
 =?us-ascii?Q?yih2kBvgI5HNhiBnIKFOir0vMAph1UUh6gQs61U6Fs+gKYSyK8WUfjQkSlwD?=
 =?us-ascii?Q?FqcziEdc//zDEgnTDCsbtxLts6vp6W4yww6h65maYJwFsju04cF7awrl5QkD?=
 =?us-ascii?Q?mEGjzjAbnBqCsKhEZ48rsZKENVj7Y3N+VZMEaasp/jSX8zPVwabkni384VhT?=
 =?us-ascii?Q?CUtIgUp+S/4egxeKkyuoJPHqjylfa+jJInQ1v+2gA4w3jo8i56jdEt9ccew7?=
 =?us-ascii?Q?Fr78kQsVexo8pdYXwUZkZfaCn/Hnr2aJI3k6HCKYnXF5XuLsbS6ueibIOObZ?=
 =?us-ascii?Q?5mYydY4UU76O2oJQAVROIkpPGgqmRb9V9btKu6UulHNlbPIdfR5rt13HHGJj?=
 =?us-ascii?Q?Mpgv0DXy6sPI5hCGnepEb1wVzaXop9Xuvg8VhbFAfx3I1/ObvONXvWXNCg7y?=
 =?us-ascii?Q?hGrrRt4E6TUwSTdvC2i+n1KiCoY96Stg/rfnD0WzlTQUM/bVJG+aXs9XYMK7?=
 =?us-ascii?Q?+i0tsbGuj113adXRuTsx7SqLN2xuulZ4XZqjpHe9bMakfSkhavuiaFjRVxle?=
 =?us-ascii?Q?OSNacucRERtgmL6+h+UC+G5n31Wj/NiFm8+6tZ07XDPzUDE5BhvIKVPhzIfA?=
 =?us-ascii?Q?BpT79uhC0FDbMNhdvdEeoauaK7uVECb8srb9wBzKcj5HleRolL5IFiMGJI0T?=
 =?us-ascii?Q?hLpd2O+rABeK3kI27BK2sPmx1wBfQJcrr62JGgqFaFwD8lGk/Yu0KZW6PEcf?=
 =?us-ascii?Q?kO0qrTY3CYq23eyDY5p4JYcLo+eMiyD1xVMp7PtZWE1tUORN9eXiCAZ7CMod?=
 =?us-ascii?Q?QP8fbvexUVcAGjZlHx+K5ac0Pfpi5Ayyw0EakUkjc8VT9fxrfxF1NfIojAK8?=
 =?us-ascii?Q?n7i4+f13AIB03kp8RDdeCRMzcSWgZ6gMEogon3RLMC3y8kZR/Pj88T2YKcKA?=
 =?us-ascii?Q?yXVdY59u7d7uNKIoRP4O3/TXzhpDFxbpWtPSdmcPBLOsedOtCncn6qkZBbqF?=
 =?us-ascii?Q?d9E1sQKP+7imngc5whXifubmw2z7NVnwRg4G6RdXF2KDjIGQD3awDLfEAqg9?=
 =?us-ascii?Q?YBTB0q82QGg+CfJhiKZRf3t5TcMsE31FT5yi8x+nHqzxNa+Ct23ni8wnObIL?=
 =?us-ascii?Q?Wnn1T63KNg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: qsc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR16MB0023.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52f3aa96-037d-412f-f82a-08da218fb92c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2022 23:03:59.5399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 23298f55-90ba-49c3-9286-576ec76d1e38
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiTxz/XG0w6n/AEmOiC/PR0hUVXTb5y7Qq53bCPlUwnG/J7CTXdzymv677n5FMbRH4+G5WinaMZ1IXDwVHSaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR16MB4745
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA60A255 smtp.mailfrom=jeff.evanson@qsc.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: qsc.com
Content-Language: en-US
X-Mailman-Approved-At: Wed, 20 Apr 2022 13:46:02 +0000
Subject: Re: [Intel-wired-lan] [PATCH 2/2] Trigger proper interrupts in
 igc_xsk_wakeup
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
Cc: "jeff.evanson@gmail.com" <jeff.evanson@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius. Thank you for the reply.

The scenario only happens when the transmit queue interrupt is mapped to a different interrupt from the receive queue. In the case where XDP_WAKEUP_TX is set in the flags argument, the previous code would only trigger the interrupt for the receive queue, causing the transmit queue's napi_struct to never be scheduled.

In the scenario where XDP_WAKEUP_TX and XDP_WAKEUP_RX are both set in flags, the receive interrupt is always triggered and the transmit interrupt is only triggered when the transmit q_vector differs from the receive q_vector.

Regards,
Jeff Evanson

-----Original Message-----
From: Vinicius Costa Gomes <vinicius.gomes@intel.com> 
Sent: Monday, April 18, 2022 11:45 AM
To: Jeff Evanson <jeff.evanson@gmail.com>; Jesse Brandeburg <jesse.brandeburg@intel.com>; Tony Nguyen <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org
Cc: Jeff Evanson <Jeff.Evanson@qsc.com>; jeff.evanson@gmail.com
Subject: Re: [PATCH 2/2] Trigger proper interrupts in igc_xsk_wakeup

-External-

Jeff Evanson <jeff.evanson@gmail.com> writes:

> in igc_xsk_wakeup, trigger the proper interrupt based on whether flags 
> contains XDP_WAKEUP_RX and/or XDP_WAKEUP_TX
>
> Signed-off-by: Jeff Evanson <jeff.evanson@qsc.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 36 
> +++++++++++++++++------
>  1 file changed, 27 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c 
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index a36a18c84aeb..d706de95dc06 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6073,7 +6073,7 @@ static void igc_trigger_rxtxq_interrupt(struct 
> igc_adapter *adapter,  int igc_xsk_wakeup(struct net_device *dev, u32 
> queue_id, u32 flags)  {
>  	struct igc_adapter *adapter = netdev_priv(dev);
> -	struct igc_q_vector *q_vector;
> +	struct igc_q_vector *txq_vector = 0, *rxq_vector = 0;
>  	struct igc_ring *ring;
>  
>  	if (test_bit(__IGC_DOWN, &adapter->state)) @@ -6082,17 +6082,35 @@ 
> int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
>  	if (!igc_xdp_is_enabled(adapter))
>  		return -ENXIO;
>  
> -	if (queue_id >= adapter->num_rx_queues)
> -		return -EINVAL;
> +	if (flags & XDP_WAKEUP_RX) {
> +		if (queue_id >= adapter->num_rx_queues)
> +			return -EINVAL;
>  
> -	ring = adapter->rx_ring[queue_id];
> +		ring = adapter->rx_ring[queue_id];
> +		if (!ring->xsk_pool)
> +			return -ENXIO;
>  
> -	if (!ring->xsk_pool)
> -		return -ENXIO;
> +		rxq_vector = ring->q_vector;
> +	}
> +
> +	if (flags & XDP_WAKEUP_TX) {
> +		if (queue_id >= adapter->num_tx_queues)
> +			return -EINVAL;
> +
> +		ring = adapter->tx_ring[queue_id];
> +		if (!ring->xsk_pool)
> +			return -ENXIO;
> +
> +		txq_vector = ring->q_vector;
> +	}
> +
> +	if (rxq_vector &&
> +	    !napi_if_scheduled_mark_missed(&rxq_vector->napi))
> +		igc_trigger_rxtxq_interrupt(adapter, rxq_vector);
>  
> -	q_vector = adapter->q_vector[queue_id];
> -	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> -		igc_trigger_rxtxq_interrupt(adapter, q_vector);
> +	if (txq_vector && txq_vector != rxq_vector &&
> +	    !napi_if_scheduled_mark_missed(&txq_vector->napi))
> +		igc_trigger_rxtxq_interrupt(adapter, txq_vector);

Two things:
 - My imagination was not able to produce a scenario where this commit  would solve any problems. Can you explain better the case where the  current code would cause the wrong interrupt to be generated (or miss  generating an interrupt)? (this should be in the commit message)
 - I think that with this patch applied, there would cases (both TX and  RX flags set) that we cause two writes into the EICS register. That  could cause unnecessary wakeups.

>  
>  	return 0;
>  }
> --
> 2.17.1
>

Cheers,
-- 
Vinicius

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
