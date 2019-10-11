Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1721FD453E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 18:20:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4670A259FF;
	Fri, 11 Oct 2019 16:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bpt0Mtz0lguQ; Fri, 11 Oct 2019 16:20:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EC985204C2;
	Fri, 11 Oct 2019 16:20:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C7E5B1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 16:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BEF4320426
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 16:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1AM494xCb7YI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 16:19:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00190b01.pphosted.com (mx0b-00190b01.pphosted.com
 [67.231.157.127])
 by silver.osuosl.org (Postfix) with ESMTPS id 542EE20421
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 16:19:46 +0000 (UTC)
Received: from pps.filterd (m0050102.ppops.net [127.0.0.1])
 by m0050102.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id
 x9BGHduf014150; Fri, 11 Oct 2019 17:18:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=jan2016.eng;
 bh=L1ICpoXk7H5dhkeuAtzhSxdm34DamlfO7tWqyE6fQpA=;
 b=dNLoVlsRUaDJIDSpFwkeoxxnParQ7GJjXYWwXEmqbEzRSzoFgNWDYva9f3kjXZqiAJO9
 winlMDuobrrt1qGJgl8FyQVf44vx1bR+64Rxod80NxftcagfKEJNKVs5TpGKmW4zAP0c
 N0FYvL3kd52irI71BBmKzcmx4DyPvEIpg/IXFRToMLvVjItoQHyW76+8xD+R2kDno7J7
 qpaDOBYLFhF4I8GVCdww4qIaEa9draWbSdqfnZqFGlLx0bfUxkBieoIW2uGLkzPciKPA
 g+p59BsPLIYi9t+9svvMje5saQ+ynVL7OkzYwZGtQDS9nxcZzChjlWjB8w21g3Np+VTp 2g== 
Received: from prod-mail-ppoint3 (prod-mail-ppoint3.akamai.com [96.6.114.86]
 (may be forged))
 by m0050102.ppops.net-00190b01. with ESMTP id 2veg8fqrvq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 17:18:34 +0100
Received: from pps.filterd (prod-mail-ppoint3.akamai.com [127.0.0.1])
 by prod-mail-ppoint3.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x9BGHPaJ030946; Fri, 11 Oct 2019 12:18:33 -0400
Received: from prod-mail-relay15.akamai.com ([172.27.17.40])
 by prod-mail-ppoint3.akamai.com with ESMTP id 2veph1bmp6-1;
 Fri, 11 Oct 2019 12:18:33 -0400
Received: from [0.0.0.0] (caldecot.sanmateo.corp.akamai.com [172.22.187.166])
 by prod-mail-relay15.akamai.com (Postfix) with ESMTP id 938AF2006B; 
 Fri, 11 Oct 2019 16:18:32 +0000 (GMT)
To: Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com
References: <1570753502-6014-1-git-send-email-johunt@akamai.com>
 <1570753502-6014-2-git-send-email-johunt@akamai.com>
 <aa9462d4a48a47250d150e0f743bf08635ee9b72.camel@linux.intel.com>
From: Josh Hunt <johunt@akamai.com>
Message-ID: <0ff6df40-d9cc-0b4c-6f1f-df4b39c3f3e3@akamai.com>
Date: Fri, 11 Oct 2019 09:18:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <aa9462d4a48a47250d150e0f743bf08635ee9b72.camel@linux.intel.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-11_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110147
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_09:2019-10-10,2019-10-11 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 impostorscore=0 phishscore=0 priorityscore=1501 clxscore=1015
 mlxlogscore=999 suspectscore=0 bulkscore=0 adultscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910110147
Subject: Re: [Intel-wired-lan] [PATCH v2 1/3] igb: Add UDP segmentation
 offload support
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
Cc: willemb@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/11/19 8:29 AM, Alexander Duyck wrote:
> On Thu, 2019-10-10 at 20:25 -0400, Josh Hunt wrote:
>> Based on a series from Alexander Duyck this change adds UDP segmentation
>> offload support to the igb driver.
>>
>> CC: Alexander Duyck <alexander.h.duyck@intel.com>
>> CC: Willem de Bruijn <willemb@google.com>
>> Signed-off-by: Josh Hunt <johunt@akamai.com>
>> ---
>>   drivers/net/ethernet/intel/igb/e1000_82575.h |  1 +
>>   drivers/net/ethernet/intel/igb/igb_main.c    | 23 +++++++++++++++++------
>>   2 files changed, 18 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.h b/drivers/net/ethernet/intel/igb/e1000_82575.h
>> index 6ad775b1a4c5..63ec253ac788 100644
>> --- a/drivers/net/ethernet/intel/igb/e1000_82575.h
>> +++ b/drivers/net/ethernet/intel/igb/e1000_82575.h
>> @@ -127,6 +127,7 @@ struct e1000_adv_tx_context_desc {
>>   };
>>   
>>   #define E1000_ADVTXD_MACLEN_SHIFT    9  /* Adv ctxt desc mac len shift */
>> +#define E1000_ADVTXD_TUCMD_L4T_UDP 0x00000000  /* L4 Packet TYPE of UDP */
>>   #define E1000_ADVTXD_TUCMD_IPV4    0x00000400  /* IP Packet Type: 1=IPv4 */
>>   #define E1000_ADVTXD_TUCMD_L4T_TCP 0x00000800  /* L4 Packet TYPE of TCP */
>>   #define E1000_ADVTXD_TUCMD_L4T_SCTP 0x00001000 /* L4 packet TYPE of SCTP */
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>> index 105b0624081a..4131bc8b079e 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -2516,6 +2516,7 @@ igb_features_check(struct sk_buff *skb, struct net_device *dev,
>>   	if (unlikely(mac_hdr_len > IGB_MAX_MAC_HDR_LEN))
>>   		return features & ~(NETIF_F_HW_CSUM |
>>   				    NETIF_F_SCTP_CRC |
>> +				    NETIF_F_GSO_UDP_L4 |
>>   				    NETIF_F_HW_VLAN_CTAG_TX |
>>   				    NETIF_F_TSO |
>>   				    NETIF_F_TSO6);
>> @@ -2524,6 +2525,7 @@ igb_features_check(struct sk_buff *skb, struct net_device *dev,
>>   	if (unlikely(network_hdr_len >  IGB_MAX_NETWORK_HDR_LEN))
>>   		return features & ~(NETIF_F_HW_CSUM |
>>   				    NETIF_F_SCTP_CRC |
>> +				    NETIF_F_GSO_UDP_L4 |
>>   				    NETIF_F_TSO |
>>   				    NETIF_F_TSO6);
>>   
>> @@ -3120,7 +3122,7 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>   			    NETIF_F_HW_CSUM;
>>   
>>   	if (hw->mac.type >= e1000_82576)
>> -		netdev->features |= NETIF_F_SCTP_CRC;
>> +		netdev->features |= NETIF_F_SCTP_CRC | NETIF_F_GSO_UDP_L4;
>>   
>>   	if (hw->mac.type >= e1000_i350)
>>   		netdev->features |= NETIF_F_HW_TC;
>> @@ -5694,6 +5696,7 @@ static int igb_tso(struct igb_ring *tx_ring,
>>   	} ip;
>>   	union {
>>   		struct tcphdr *tcp;
>> +		struct udphdr *udp;
>>   		unsigned char *hdr;
>>   	} l4;
>>   	u32 paylen, l4_offset;
>> @@ -5713,7 +5716,8 @@ static int igb_tso(struct igb_ring *tx_ring,
>>   	l4.hdr = skb_checksum_start(skb);
>>   
>>   	/* ADV DTYP TUCMD MKRLOC/ISCSIHEDLEN */
>> -	type_tucmd = E1000_ADVTXD_TUCMD_L4T_TCP;
>> +	type_tucmd = (!(skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4)) ?
>> +		      E1000_ADVTXD_TUCMD_L4T_TCP : E1000_ADVTXD_TUCMD_L4T_UDP;
> 
> The logic here seems a bit convoluted. Instead of testing for
> '!SKB_GSO_UDP_L4' why not just make L4T_UDP the first option and drop the
> '!'? That will make the TCP offload the default case rather than the UDP
> offload.
> 
> The same applies to the other 2 patches.

OK sure. I think I was trying to keep the TCP case first for some 
reason, but agree that I should probably just reverse the order. Will 
send a v3.

Josh
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
