Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FF850A94
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 14:19:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B82C581ECF;
	Mon, 24 Jun 2019 12:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z0SZfD0Dp9rN; Mon, 24 Jun 2019 12:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16D9585540;
	Mon, 24 Jun 2019 12:19:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A6DC1BF387
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 12:19:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0FC7081ECF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 12:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rmBeYCjwrWMy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 12:19:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B393784B88
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 12:19:27 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5OC8rdF098408;
 Mon, 24 Jun 2019 12:19:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=bsMzORvMI7u79mx74ebyi9TlcjT0LZlf+Ftj9C2RUws=;
 b=Lrra/iiwYpPx/vg6Vw8Fu55yE2Ulg6gqSWaDKh6oRz8vyICtCWFAIeS3I8JLeNn6wAS5
 NhoMR+HT1osqr5RdCm35SFila7ZTcQYj7AY6kVklKFeuHCmxqSokiIRo2EI+qmRaVT9Y
 pMiGgXQ0Uk9zMxCzC6pOwYoxJduhVJJx/3T8MoM1jtfh2u8M/RmTpJOWhRXf2tD2lB4I
 h+02imgiqVYz6/8sySpgQ9Qo6z/2nsUqs/wOEEQZJgPZDd3tofuztSvXGxapVF2vGXIx
 xQV7UY7d404MnoJoeXD5Tq3CW0/cNOwnIASsIhQNX616jdn/WCt9Gxa0r6IjBmEDd9Tg PA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2t9brsx322-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 12:19:11 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5OCHUJf150906;
 Mon, 24 Jun 2019 12:19:10 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2t9acbfp9k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 12:19:10 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5OCJ8F3006014;
 Mon, 24 Jun 2019 12:19:09 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Jun 2019 05:19:08 -0700
Date: Mon, 24 Jun 2019 15:19:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: mitch.a.williams@intel.com
Message-ID: <20190624121902.GR18776@kadam>
References: <20190620074516.GA12233@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620074516.GA12233@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9297
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=987
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906240101
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9297
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906240101
Subject: Re: [Intel-wired-lan] [bug report] iavf: allow null RX descriptors
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 20, 2019 at 10:45:16AM +0300, Dan Carpenter wrote:
> Hello Mitch Williams,
> 
> This is a semi-automatic email about new static checker warnings.
> 
> The patch efa14c398582: "iavf: allow null RX descriptors" from May
> 14, 2019, leads to the following Smatch complaint:
> 
>     drivers/net/ethernet/intel/iavf/iavf_txrx.c:1533 iavf_clean_rx_irq()
>     warn: variable dereferenced before check 'rx_buffer' (see line 1526)
> 
> drivers/net/ethernet/intel/iavf/iavf_txrx.c
>   1515  
>   1516                  size = (qword & IAVF_RXD_QW1_LENGTH_PBUF_MASK) >>
>   1517                         IAVF_RXD_QW1_LENGTH_PBUF_SHIFT;
>   1518  
>   1519                  iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
>   1520                  rx_buffer = iavf_get_rx_buffer(rx_ring, size);
>   1521  
>   1522                  /* retrieve a buffer from the ring */
>   1523                  if (skb)
> 
> skb is non-NULL so ignore this path.
> 
>   1524                          iavf_add_rx_frag(rx_ring, rx_buffer, skb, size);
>   1525			else if (ring_uses_build_skb(rx_ring))
>   1526				skb = iavf_build_skb(rx_ring, rx_buffer, size);
>                                                               ^^^^^^^^^
>   1527			else
>   1528				skb = iavf_construct_skb(rx_ring, rx_buffer, size);
>                                                                   ^^^^^^^^^
> These functions both dereference "rx_buffer" and might set skb to NULL.

Oh...  Huh.  They aren't *supposed* to dereference rx_buffer, but the
NULL checks are too late.

regards,
dan carpenter

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
