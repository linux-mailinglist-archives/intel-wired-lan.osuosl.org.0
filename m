Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C6C502B49
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 15:51:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E49D41974;
	Fri, 15 Apr 2022 13:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pfos0QmFTHJH; Fri, 15 Apr 2022 13:51:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC1A041973;
	Fri, 15 Apr 2022 13:51:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9AC5D1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 13:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D80160AD7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 13:50:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GOkCZxRylyBx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 13:50:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0ED760A77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 13:50:56 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae925.dynamic.kabel-deutschland.de
 [95.90.233.37])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 795C061EA1928;
 Fri, 15 Apr 2022 15:50:53 +0200 (CEST)
Message-ID: <730b2502-3aa4-e5b9-be37-cc60e716e318@molgen.mpg.de>
Date: Fri, 15 Apr 2022 15:50:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>
References: <20220415103139.794790-1-karol.kolacinski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220415103139.794790-1-karol.kolacinski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH intel-next 1/3] ice: remove u16
 arithmetic in ice_gnss
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Karol,


Am 15.04.22 um 12:31 schrieb Karol Kolacinski:
> Change u16 to u32 where arithmetic occured.

occur*r*e*s*

Why does 16-bit width not work?


Kind regards,

Paul


> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_gnss.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
> index 57586a2e6dec..f0b2091c3b5f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
> +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
> @@ -23,7 +23,7 @@ static void ice_gnss_read(struct kthread_work *work)
>   	struct ice_hw *hw;
>   	__be16 data_len_b;
>   	char *buf = NULL;
> -	u16 i, data_len;
> +	u32 i, data_len;

Why does the length need to be specified at all, and no native types can 
be used?


Kind regards,

Paul


>   	int err = 0;
>   
>   	pf = gnss->back;
> @@ -65,7 +65,7 @@ static void ice_gnss_read(struct kthread_work *work)
>   		mdelay(10);
>   	}
>   
> -	data_len = min(data_len, (u16)PAGE_SIZE);
> +	data_len = min_t(typeof(data_len), data_len, PAGE_SIZE);
>   	data_len = tty_buffer_request_room(port, data_len);
>   	if (!data_len) {
>   		err = -ENOMEM;
> @@ -74,7 +74,7 @@ static void ice_gnss_read(struct kthread_work *work)
>   
>   	/* Read received data */
>   	for (i = 0; i < data_len; i += bytes_read) {
> -		u16 bytes_left = data_len - i;
> +		u32 bytes_left = data_len - i;
>   
>   		bytes_read = min_t(typeof(bytes_left), bytes_left, ICE_MAX_I2C_DATA_SIZE);
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
