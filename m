Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 654702FC4C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 00:35:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EEEF185569;
	Tue, 19 Jan 2021 23:35:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WGsf0bKf7eme; Tue, 19 Jan 2021 23:35:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7D4E855F6;
	Tue, 19 Jan 2021 23:35:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1AB21BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 23:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C97A86D5A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 23:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RymDRKAsAE2N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 23:35:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
 [209.85.215.176])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D258886D42
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 23:35:17 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id 15so13972716pgx.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 15:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=9yriIeABzvRqPZwPZE8XoIm4dyyxjjIHmDtEXdOpziw=;
 b=cur2Aed8J4yCDTk/+N0YzCwCVAY6hcegD67X5rDVs18VgUKnjKiGNZ9VB7QHFWSbvI
 Jbs4tfOEZ8vaORnJW9XcH9ATiS9uudOAbNM1hLNeeyKUUojvg4cim0UqRtlnq4K8xmHz
 NUNsXe77SmOBKF4j05FItX7B31YWI4tv4eSDy+SHgiYzhOd1LfJ/d6j1euUQisEvheKY
 XXqMRV1Yh/DG2q4jZpgzbTeQzO2u5fuQQootsvaINDPIrbsUifUYeqt2YYV9cMKi4cFn
 FPQLaCVr8IJSSYROeKbd6tUBM/sedZueQJd7CYda4cGeoUEVyyE6O/A630f/tgDKUiXh
 gQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=9yriIeABzvRqPZwPZE8XoIm4dyyxjjIHmDtEXdOpziw=;
 b=PMTRG5bD1sAkPDV0ZAzLa1hFWNdgl6rt7wkEFmDdzXuaBL1JatpDJO+1Ni0hGLhkd3
 MrCd/gmx3i0tly4L+jisJyCClJXap2hbCmyPxEqy3qm/c0lzZJQzICt77GgRFRIFgK5L
 s3AyrrooIr2FokoUaGGGj4iDe/yOtfcbBTqtXrZz/PoTkpFIJJPkJfNZDeqzBluUseOz
 ZuzbAp+1b4j8wHvW1wO4F4QbLLOdGkpMGIvPxy9fyC0Ghq8VUVsX80JiMYhPH6V6iIlf
 vkOelTb3OMJYj7/ejGJOaprw1xB0QXdFIEOCF6CBNpyuffzHSQTPNsYtGPMH2aCb7CCz
 kT5Q==
X-Gm-Message-State: AOAM530Gz2OKM2rr8SO0hcUDmd+KpgWmXvNdHe/PxVQN5SRekrgPjGn8
 puuuopzplIcJ5Jt1M65ZUSXlyTpaDNJuJCCv
X-Google-Smtp-Source: ABdhPJyDzrwOtXs5Wusab1hOr+Eh43N5vPEpEsZc19ka8zosde4Nvw3kWB4Za/eFHuhU/o/9XSlXXg==
X-Received: by 2002:a62:cd49:0:b029:1b5:4e48:6f1a with SMTP id
 o70-20020a62cd490000b02901b54e486f1amr6169328pfg.14.1611099317116; 
 Tue, 19 Jan 2021 15:35:17 -0800 (PST)
Received: from Shannons-MacBook-Pro.local ([50.53.47.17])
 by smtp.gmail.com with ESMTPSA id w20sm161131pga.90.2021.01.19.15.35.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Jan 2021 15:35:16 -0800 (PST)
To: Alexander Duyck <alexander.duyck@gmail.com>,
 Xin Long <lucien.xin@gmail.com>
References: <cover.1610777159.git.lucien.xin@gmail.com>
 <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
 <CAKgT0UduX4M-N1Kyo-M2=05EO_rAs2c_CDrUwWMKk2oDOgxd2Q@mail.gmail.com>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <41658acb-6607-8b4c-d29d-f71892434e0b@pensando.io>
Date: Tue, 19 Jan 2021 15:35:14 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <CAKgT0UduX4M-N1Kyo-M2=05EO_rAs2c_CDrUwWMKk2oDOgxd2Q@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/6] net: add inline function
 skb_csum_is_sctp
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Neil Horman <nhorman@tuxdriver.com>, network dev <netdev@vger.kernel.org>,
 "linux-sctp @ vger . kernel . org" <linux-sctp@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/19/21 2:23 PM, Alexander Duyck wrote:
> On Fri, Jan 15, 2021 at 10:13 PM Xin Long <lucien.xin@gmail.com> wrote:
>> This patch is to define a inline function skb_csum_is_sctp(), and
>> also replace all places where it checks if it's a SCTP CSUM skb.
>> This function would be used later in many networking drivers in
>> the following patches.
>>
>> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
>> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> One minor nit. If you had to resubmit this I might move the ionic
> driver code into a separate patch. However It can probably be accepted
> as is.
>
> Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>

Alex has a good point - if you repost, please split out the ionic bits 
to a separate patch.

Either way, for ionic:
Acked-by: Shannon Nelson <snelson@pensando.io>


>> ---
>>   drivers/net/ethernet/pensando/ionic/ionic_txrx.c | 2 +-
>>   include/linux/skbuff.h                           | 5 +++++
>>   net/core/dev.c                                   | 2 +-
>>   3 files changed, 7 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_txrx.c b/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
>> index ac4cd5d..162a1ff 100644
>> --- a/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
>> +++ b/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
>> @@ -979,7 +979,7 @@ static int ionic_tx_calc_csum(struct ionic_queue *q, struct sk_buff *skb)
>>                  stats->vlan_inserted++;
>>          }
>>
>> -       if (skb->csum_not_inet)
>> +       if (skb_csum_is_sctp(skb))
>>                  stats->crc32_csum++;
>>          else
>>                  stats->csum++;
>> diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
>> index c9568cf..46f901a 100644
>> --- a/include/linux/skbuff.h
>> +++ b/include/linux/skbuff.h
>> @@ -4621,6 +4621,11 @@ static inline void skb_reset_redirect(struct sk_buff *skb)
>>   #endif
>>   }
>>
>> +static inline bool skb_csum_is_sctp(struct sk_buff *skb)
>> +{
>> +       return skb->csum_not_inet;
>> +}
>> +
>>   static inline void skb_set_kcov_handle(struct sk_buff *skb,
>>                                         const u64 kcov_handle)
>>   {
>> diff --git a/net/core/dev.c b/net/core/dev.c
>> index 0a31d4e..bbd306f 100644
>> --- a/net/core/dev.c
>> +++ b/net/core/dev.c
>> @@ -3617,7 +3617,7 @@ static struct sk_buff *validate_xmit_vlan(struct sk_buff *skb,
>>   int skb_csum_hwoffload_help(struct sk_buff *skb,
>>                              const netdev_features_t features)
>>   {
>> -       if (unlikely(skb->csum_not_inet))
>> +       if (unlikely(skb_csum_is_sctp(skb)))
>>                  return !!(features & NETIF_F_SCTP_CRC) ? 0 :
>>                          skb_crc32c_csum_help(skb);
>>
>> --
>> 2.1.0
>>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
