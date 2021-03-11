Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FFA337AA1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 18:19:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F65D60604;
	Thu, 11 Mar 2021 17:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TtCsq2y3IoFm; Thu, 11 Mar 2021 17:19:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1D3460602;
	Thu, 11 Mar 2021 17:19:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 485831BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 17:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3645D414EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 17:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: invalid data)" header.d=pensando.io
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7CggGUpf1Fpp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 17:19:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7933B414DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 17:19:22 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id l7so4602pfd.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 09:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=EJy+ZR06b2J6+Z4kkCh2cy1OXKPHHnxG093v33XSDSw=;
 b=tLx9w8R63Zel71DKconMeHJ50lxp/DVy7X7oJEXpok2YA1ynwexupfTrV73dqPhOIc
 EZQJA8VNr5eqNVfsdGhy5eY9LtpsRq941nNty/ZOyWhhscuiDHWuCJ5ERHQ8LfEbMeaa
 bOfsjQlWIwQIdeZyy0gCcP5DJhNLupaHiqJ4/C6T0lJQT1WaRgXa02mYXZryWpw8fIzE
 JgMCM5dm4/BZZUim0Hm7lkV7AA6oDdPi9wi725bDBGIyq8glz5i4U8g1eUQI/BJrVC//
 kddnoY7Mjt1KvN71BB9MSKioEujfOFKHMQ1FkdCCEXfikfBKiG9laiLJgDwEvSDZdhts
 VQxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=EJy+ZR06b2J6+Z4kkCh2cy1OXKPHHnxG093v33XSDSw=;
 b=SAd7E/MqL5liKmSpDqMUkkzQoV/2V+qs+ak4ay3O0wdF9hwsHxllcOIM0HL50DmydB
 U67R2MCW1fB03TiBE9SZCaAlIo6j4B2JZlwhRngmpdB7+xVwaO5w5W576IVb3j1WJnu4
 jIcwrtDZggbvkev4cKdzxnAou6UFGqNiuFRBkpB79imWCi1YhY/pI6+H8ZpdZwJUTjhq
 sJmWA/hXC1K/OlEOC9rv/HvAUBSiWXkyp0Bi5WS/4xj+mtzT/Swu6uFIQS7EElLqzKKn
 6LO6nf/eAbmqMleLNO6qJD26PckxcOxoQrNm68X0dnq6GPIocEKwi4KdNHASUm0JbA7B
 jH8g==
X-Gm-Message-State: AOAM530Yg/N49JEvnjD3+yZkX6anwMT3vTYODGqCaxtX+VBz2AUPxJMq
 zivgByd6x1kG4BFxRZRcq5yI7g==
X-Google-Smtp-Source: ABdhPJypLCvXSX7zrfH7ecvQibO7t+pTKnlnRXSeqd2GjQWw9Lu5oZN6L11Z+IMYO9NOSSTbmxIVkw==
X-Received: by 2002:a62:7708:0:b029:1ee:f656:51d5 with SMTP id
 s8-20020a6277080000b02901eef65651d5mr8496093pfc.59.1615483161804; 
 Thu, 11 Mar 2021 09:19:21 -0800 (PST)
Received: from Shannons-MacBook-Pro.local ([50.53.47.17])
 by smtp.gmail.com with ESMTPSA id f20sm2908390pfa.10.2021.03.11.09.19.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Mar 2021 09:19:21 -0800 (PST)
To: Alexander Duyck <alexander.duyck@gmail.com>, kuba@kernel.org
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
 <161542657729.13546.14928347259921159903.stgit@localhost.localdomain>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <a9839652-1dac-0ff4-a9a6-84d69d1a4f3d@pensando.io>
Date: Thu, 11 Mar 2021 09:19:18 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <161542657729.13546.14928347259921159903.stgit@localhost.localdomain>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [RFC PATCH 10/10] ionic: Update driver to use
 ethtool_gsprintf
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, yisen.zhuang@huawei.com, gtzalik@amazon.com,
 simon.horman@netronome.com, haiyangz@microsoft.com, drivers@pensando.io,
 salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com,
 netdev@vger.kernel.org, netanel@amazon.com, saeedb@amazon.com,
 skalluru@marvell.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/10/21 5:36 PM, Alexander Duyck wrote:
> From: Alexander Duyck <alexanderduyck@fb.com>
>
> Update the ionic driver to make use of ethtool_gsprintf. In addition add
> separate functions for Tx/Rx stats strings in order to reduce the total
> amount of indenting needed in the driver code.
>
> Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>

Thanks, Alex!

Acked-by: Shannon Nelson <snelson@pensando.io>


> ---
>   drivers/net/ethernet/pensando/ionic/ionic_stats.c |  145 +++++++++------------
>   1 file changed, 60 insertions(+), 85 deletions(-)
>
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_stats.c b/drivers/net/ethernet/pensando/ionic/ionic_stats.c
> index 6ae75b771a15..1dac960386df 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_stats.c
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_stats.c
> @@ -246,98 +246,73 @@ static u64 ionic_sw_stats_get_count(struct ionic_lif *lif)
>   	return total;
>   }
>   
> +static void ionic_sw_stats_get_tx_strings(struct ionic_lif *lif, u8 **buf,
> +					  int q_num)
> +{
> +	int i;
> +
> +	for (i = 0; i < IONIC_NUM_TX_STATS; i++)
> +		ethtool_gsprintf(buf, "tx_%d_%s", q_num,
> +				 ionic_tx_stats_desc[i].name);
> +
> +	if (!test_bit(IONIC_LIF_F_UP, lif->state) ||
> +	    !test_bit(IONIC_LIF_F_SW_DEBUG_STATS, lif->state))
> +		return;
> +
> +	for (i = 0; i < IONIC_NUM_TX_Q_STATS; i++)
> +		ethtool_gsprintf(buf, "txq_%d_%s", q_num,
> +				 ionic_txq_stats_desc[i].name);
> +	for (i = 0; i < IONIC_NUM_DBG_CQ_STATS; i++)
> +		ethtool_gsprintf(buf, "txq_%d_cq_%s", q_num,
> +				 ionic_dbg_cq_stats_desc[i].name);
> +	for (i = 0; i < IONIC_NUM_DBG_INTR_STATS; i++)
> +		ethtool_gsprintf(buf, "txq_%d_intr_%s", q_num,
> +				 ionic_dbg_intr_stats_desc[i].name);
> +	for (i = 0; i < IONIC_MAX_NUM_SG_CNTR; i++)
> +		ethtool_gsprintf(buf, "txq_%d_sg_cntr_%d", q_num, i);
> +}
> +
> +static void ionic_sw_stats_get_rx_strings(struct ionic_lif *lif, u8 **buf,
> +					  int q_num)
> +{
> +	int i;
> +
> +	for (i = 0; i < IONIC_NUM_RX_STATS; i++)
> +		ethtool_gsprintf(buf, "rx_%d_%s", q_num,
> +				 ionic_rx_stats_desc[i].name);
> +
> +	if (!test_bit(IONIC_LIF_F_UP, lif->state) ||
> +	    !test_bit(IONIC_LIF_F_SW_DEBUG_STATS, lif->state))
> +		return;
> +
> +	for (i = 0; i < IONIC_NUM_DBG_CQ_STATS; i++)
> +		ethtool_gsprintf(buf, "rxq_%d_cq_%s", q_num,
> +				 ionic_dbg_cq_stats_desc[i].name);
> +	for (i = 0; i < IONIC_NUM_DBG_INTR_STATS; i++)
> +		ethtool_gsprintf(buf, "rxq_%d_intr_%s", q_num,
> +				 ionic_dbg_intr_stats_desc[i].name);
> +	for (i = 0; i < IONIC_NUM_DBG_NAPI_STATS; i++)
> +		ethtool_gsprintf(buf, "rxq_%d_napi_%s", q_num,
> +				 ionic_dbg_napi_stats_desc[i].name);
> +	for (i = 0; i < IONIC_MAX_NUM_NAPI_CNTR; i++)
> +		ethtool_gsprintf(buf, "rxq_%d_napi_work_done_%d", q_num, i);
> +}
> +
>   static void ionic_sw_stats_get_strings(struct ionic_lif *lif, u8 **buf)
>   {
>   	int i, q_num;
>   
> -	for (i = 0; i < IONIC_NUM_LIF_STATS; i++) {
> -		snprintf(*buf, ETH_GSTRING_LEN, ionic_lif_stats_desc[i].name);
> -		*buf += ETH_GSTRING_LEN;
> -	}
> +	for (i = 0; i < IONIC_NUM_LIF_STATS; i++)
> +		ethtool_gsprintf(buf, ionic_lif_stats_desc[i].name);
>   
> -	for (i = 0; i < IONIC_NUM_PORT_STATS; i++) {
> -		snprintf(*buf, ETH_GSTRING_LEN,
> -			 ionic_port_stats_desc[i].name);
> -		*buf += ETH_GSTRING_LEN;
> -	}
> +	for (i = 0; i < IONIC_NUM_PORT_STATS; i++)
> +		ethtool_gsprintf(buf, ionic_port_stats_desc[i].name);
>   
> -	for (q_num = 0; q_num < MAX_Q(lif); q_num++) {
> -		for (i = 0; i < IONIC_NUM_TX_STATS; i++) {
> -			snprintf(*buf, ETH_GSTRING_LEN, "tx_%d_%s",
> -				 q_num, ionic_tx_stats_desc[i].name);
> -			*buf += ETH_GSTRING_LEN;
> -		}
> +	for (q_num = 0; q_num < MAX_Q(lif); q_num++)
> +		ionic_sw_stats_get_tx_strings(lif, buf, q_num);
>   
> -		if (test_bit(IONIC_LIF_F_UP, lif->state) &&
> -		    test_bit(IONIC_LIF_F_SW_DEBUG_STATS, lif->state)) {
> -			for (i = 0; i < IONIC_NUM_TX_Q_STATS; i++) {
> -				snprintf(*buf, ETH_GSTRING_LEN,
> -					 "txq_%d_%s",
> -					 q_num,
> -					 ionic_txq_stats_desc[i].name);
> -				*buf += ETH_GSTRING_LEN;
> -			}
> -			for (i = 0; i < IONIC_NUM_DBG_CQ_STATS; i++) {
> -				snprintf(*buf, ETH_GSTRING_LEN,
> -					 "txq_%d_cq_%s",
> -					 q_num,
> -					 ionic_dbg_cq_stats_desc[i].name);
> -				*buf += ETH_GSTRING_LEN;
> -			}
> -			for (i = 0; i < IONIC_NUM_DBG_INTR_STATS; i++) {
> -				snprintf(*buf, ETH_GSTRING_LEN,
> -					 "txq_%d_intr_%s",
> -					 q_num,
> -					 ionic_dbg_intr_stats_desc[i].name);
> -				*buf += ETH_GSTRING_LEN;
> -			}
> -			for (i = 0; i < IONIC_MAX_NUM_SG_CNTR; i++) {
> -				snprintf(*buf, ETH_GSTRING_LEN,
> -					 "txq_%d_sg_cntr_%d",
> -					 q_num, i);
> -				*buf += ETH_GSTRING_LEN;
> -			}
> -		}
> -	}
> -	for (q_num = 0; q_num < MAX_Q(lif); q_num++) {
> -		for (i = 0; i < IONIC_NUM_RX_STATS; i++) {
> -			snprintf(*buf, ETH_GSTRING_LEN,
> -				 "rx_%d_%s",
> -				 q_num, ionic_rx_stats_desc[i].name);
> -			*buf += ETH_GSTRING_LEN;
> -		}
> -
> -		if (test_bit(IONIC_LIF_F_UP, lif->state) &&
> -		    test_bit(IONIC_LIF_F_SW_DEBUG_STATS, lif->state)) {
> -			for (i = 0; i < IONIC_NUM_DBG_CQ_STATS; i++) {
> -				snprintf(*buf, ETH_GSTRING_LEN,
> -					 "rxq_%d_cq_%s",
> -					 q_num,
> -					 ionic_dbg_cq_stats_desc[i].name);
> -				*buf += ETH_GSTRING_LEN;
> -			}
> -			for (i = 0; i < IONIC_NUM_DBG_INTR_STATS; i++) {
> -				snprintf(*buf, ETH_GSTRING_LEN,
> -					 "rxq_%d_intr_%s",
> -					 q_num,
> -					 ionic_dbg_intr_stats_desc[i].name);
> -				*buf += ETH_GSTRING_LEN;
> -			}
> -			for (i = 0; i < IONIC_NUM_DBG_NAPI_STATS; i++) {
> -				snprintf(*buf, ETH_GSTRING_LEN,
> -					 "rxq_%d_napi_%s",
> -					 q_num,
> -					 ionic_dbg_napi_stats_desc[i].name);
> -				*buf += ETH_GSTRING_LEN;
> -			}
> -			for (i = 0; i < IONIC_MAX_NUM_NAPI_CNTR; i++) {
> -				snprintf(*buf, ETH_GSTRING_LEN,
> -					 "rxq_%d_napi_work_done_%d",
> -					 q_num, i);
> -				*buf += ETH_GSTRING_LEN;
> -			}
> -		}
> -	}
> +	for (q_num = 0; q_num < MAX_Q(lif); q_num++)
> +		ionic_sw_stats_get_rx_strings(lif, buf, q_num);
>   }
>   
>   static void ionic_sw_stats_get_values(struct ionic_lif *lif, u64 **buf)
>
>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
