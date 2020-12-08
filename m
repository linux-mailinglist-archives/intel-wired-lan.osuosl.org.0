Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16EF2D2A9B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 13:23:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18FD98759D;
	Tue,  8 Dec 2020 12:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8va4Mzepm1pQ; Tue,  8 Dec 2020 12:23:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6CAAF875F2;
	Tue,  8 Dec 2020 12:23:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 35D1A1BF304
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 12:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 311088706D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 12:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vLRSCNSTM209 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 12:23:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 90C9387067
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 12:23:15 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B8C9hKA166692;
 Tue, 8 Dec 2020 12:23:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=k4U1Y8hj6xUCKyUuBlZ528/7o6VIzulur21OqjLbEPs=;
 b=EKWjOnWwZ4yNNM1JsiPiSr1Zalta9XUPTIU53GZbwcrSVRxhKtH1LN/jaVyFZByk/pmy
 yHLGjROgNJ56hHrAFLZ6XO8kfKOPdcyY79HkRzBdqjUcWCmpYxsTIhMjGDsHgbCNkYux
 WxRlBroW2NnTkqalNkrKnJtl8/JsH8t4WwM7GyWUShaAnqpuZPHtkMAxQPAae794bv0G
 F37bjKURaRmJPkYBIJY0dnahfqZbAgIqs+FcwEzGAaRcNplQQ+IqufbvxzzqneyQe9fZ
 ELUM4w2WMGGV7Ar1ShaCUDzpxYD7hI37o6Fz+gkatdiorh/9rhgiAZE2NPDq5UqpjSkB rw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 35825m2ft9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 08 Dec 2020 12:23:13 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B8C9g7b007139;
 Tue, 8 Dec 2020 12:21:12 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 358m4xqxqa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Dec 2020 12:21:12 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0B8CLBOW012563;
 Tue, 8 Dec 2020 12:21:11 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 08 Dec 2020 04:21:10 -0800
Date: Tue, 8 Dec 2020 15:21:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: bjorn.topel@intel.com
Message-ID: <X89vkBAEFET+IchI@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9828
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 suspectscore=3
 bulkscore=0 malwarescore=0 phishscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012080078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9828
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 adultscore=0 bulkscore=0
 phishscore=0 mlxlogscore=999 clxscore=1011 priorityscore=1501 mlxscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012080078
Subject: [Intel-wired-lan] [bug report] xsk: Propagate napi_id to XDP socket
 Rx path
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Bj=F6rn T=F6pel,

This is a semi-automatic email about new static checker warnings.

The patch b02e5a0ebb17: "xsk: Propagate napi_id to XDP socket Rx =

path" from Nov 30, 2020, leads to the following Smatch complaint:

    drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:6580 ixgbe_setup_rx_resou=
rces()
    error: we previously assumed 'rx_ring->q_vector' could be null (see lin=
e 6550)

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
  6549	=

  6550		if (rx_ring->q_vector)
                    ^^^^^^^^^^^^^^^^^
Check for NULL

  6551			ring_node =3D rx_ring->q_vector->numa_node;
  6552	=

  6553		rx_ring->rx_buffer_info =3D vmalloc_node(size, ring_node);
  6554		if (!rx_ring->rx_buffer_info)
  6555			rx_ring->rx_buffer_info =3D vmalloc(size);
  6556		if (!rx_ring->rx_buffer_info)
  6557			goto err;
  6558	=

  6559		/* Round up to nearest 4K */
  6560		rx_ring->size =3D rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
  6561		rx_ring->size =3D ALIGN(rx_ring->size, 4096);
  6562	=

  6563		set_dev_node(dev, ring_node);
  6564		rx_ring->desc =3D dma_alloc_coherent(dev,
  6565						   rx_ring->size,
  6566						   &rx_ring->dma,
  6567						   GFP_KERNEL);
  6568		set_dev_node(dev, orig_node);
  6569		if (!rx_ring->desc)
  6570			rx_ring->desc =3D dma_alloc_coherent(dev, rx_ring->size,
  6571							   &rx_ring->dma, GFP_KERNEL);
  6572		if (!rx_ring->desc)
  6573			goto err;
  6574	=

  6575		rx_ring->next_to_clean =3D 0;
  6576		rx_ring->next_to_use =3D 0;
  6577	=

  6578		/* XDP RX-queue info */
  6579		if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
  6580				     rx_ring->queue_index, rx_ring->q_vector->napi.napi_id) < 0)
                                                           ^^^^^^^^^^^^^^^^=
^^^
New unchecked dereference.

  6581			goto err;
  6582	=


regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
