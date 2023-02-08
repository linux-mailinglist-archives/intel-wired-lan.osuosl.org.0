Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DACEC68E5C3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 03:04:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10FD661085;
	Wed,  8 Feb 2023 02:04:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10FD661085
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675821845;
	bh=4hKMqdmx8eJnQFJ6jCrbEImDl4TcH9/Q8sCzs3J+QTg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LnOtACUOWtD68C/XNbolc1rAqBkOVin1IYT7NsZWnjMJ+lyGXLryIlcMe6ImAZD+o
	 Obdumg431EZTQ6PhmVcgqREH6xSczYVnd3nK9HsTkwKxUv6zRFUvXejYp7ZZevUl+O
	 +xYDDCdtw9RQN74+nOREI3SXPX4fntca/PGHaKgQVDO8hMD9on37/zPuFzFuYZapXJ
	 zejFxhu4FrVJlL4UnPfEV8KtkqVVLKDRSrhVbxjr3KigvjjAggMsFoFbFuGgPdxmdE
	 4kHv8vK4mFZuKPVbSiVBUBdqglUlzEyR6lrGkopV0DgyHCzO04w9y5td+JhM7qLiXe
	 D9OpaqRAqUhdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VGi7s-_tx-ad; Wed,  8 Feb 2023 02:04:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0879261058;
	Wed,  8 Feb 2023 02:04:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0879261058
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A65011BF418
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 02:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E96C4098E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 02:03:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E96C4098E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rvCaKJc8vJyi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 02:03:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44D9A40988
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44D9A40988
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 02:03:57 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id fj20so100492edb.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 Feb 2023 18:03:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TPQ2rAVVzlry8MPoszFMtQmu5p8pbG1Xujz8m2bINEo=;
 b=qjnfL+EkUHq6ZB7Kozxrr2iwof9ypGYMV5GDTe84I/cYw6RzAJccl03S/x1QYjPA30
 AB6dBvkZFYKeUvPggd5xLeqL+wsbWDDegODuvAw42r+JpwgObBVrviDcy0TcONCtoQJs
 iGHLW5Q70qpH5JrYcErTjX259AO1cAXEmcRkbWqgsaP13HC15JUpji2GoABkWI5PEcFs
 vYYcYpnWtQs8r+a41gl7rNae64gttiIaIVowtY1MOOT2qvEygbnyHVk6ccctXYaeU9/e
 lsmTc1Wfk1DKg0zv6YBIrGCsPgUGLOATfOTryXjZyv5dhCgdAv8koR8b6cwDETfZjO9t
 0Viw==
X-Gm-Message-State: AO0yUKXqLpFN9ir4O020VQJeAy77mYvYkTR0igwcxPajfX9I2esXhNf4
 e7IxOZ7YA1ATO2fHMT1U4/lisDXjN0taPuhvuYo=
X-Google-Smtp-Source: AK7set9W2V9ktPtG3r0UIx51DnAKvJG+uK0+1wgT4IvBtzNWoUwsQ268T6e8azJDpQS7YdjV0XLjrTz91jGEy1PG3QU=
X-Received: by 2002:a05:6402:3805:b0:4a3:43a2:f409 with SMTP id
 es5-20020a056402380500b004a343a2f409mr368249edb.2.1675821835353; Tue, 07 Feb
 2023 18:03:55 -0800 (PST)
MIME-Version: 1.0
References: <20230204133535.99921-1-kerneljasonxing@gmail.com>
 <20230204133535.99921-3-kerneljasonxing@gmail.com>
 <a8677175-0d4f-af01-23d4-ad014697bee7@intel.com>
In-Reply-To: <a8677175-0d4f-af01-23d4-ad014697bee7@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 8 Feb 2023 10:03:19 +0800
Message-ID: <CAL+tcoBZD7M04svcbadQSdWupQCHvt3i0q21YgVjZ6azkrwFLg@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=TPQ2rAVVzlry8MPoszFMtQmu5p8pbG1Xujz8m2bINEo=;
 b=EUYewLlJNgNQAL8t48+KfKzLWoFHj2VZknMfGdTJpSKqiwksiOHMkct1HiYq8GXxvL
 mmNnjaQ0L02odSByPxIE9p9MBTxP4uf718kC0w6UIXcXZcj45MHUyQg2+H/fGxuPB+OW
 MsvhpF4Sns9pl8r9KFJJ9hPma8KXO7m0n+KJh9K2NUkfofi3E48qWskTTnhKFyIaMocU
 I8UNHJjRFbiSUlQJv3Vog4bhBDpMqnOXUQN+jJ7zAKRN9J3xFh0lbQYFkOogn1R+Hem7
 GGg7KFKC4TLVzDrv+hJorMIcL5gWTuy2hcfNeHznFwXKtsuNn70381N7bMz5TT1ydzb0
 lY1g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=EUYewLlJ
Subject: Re: [Intel-wired-lan] [PATCH net 2/3] i40e: add double of VLAN
 header when computing the max MTU
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
Cc: hawk@kernel.org, daniel@iogearbox.net, intel-wired-lan@lists.osuosl.org,
 richardcochran@gmail.com, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, netdev@vger.kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 linux-kernel@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 8, 2023 at 3:03 AM Tony Nguyen <anthony.l.nguyen@intel.com> wrote:
>
>
>
> On 2/4/2023 5:35 AM, Jason Xing wrote:
> > From: Jason Xing <kernelxing@tencent.com>
> >
> > Include the second VLAN HLEN into account when computing the maximum
> > MTU size as other drivers do.
> >
> > Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
> > Signed-off-by: Jason Xing <kernelxing@tencent.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e.h      | 2 ++
> >   drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
> >   2 files changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> > index 60e351665c70..e03853d3c706 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > @@ -107,6 +107,8 @@
> >   #define I40E_BW_MBPS_DIVISOR                125000 /* rate / (1000000 / 8) Mbps */
> >   #define I40E_MAX_BW_INACTIVE_ACCUM  4 /* accumulate 4 credits max */
> >
> > +#define I40E_PACKET_HDR_PAD (ETH_HLEN + ETH_FCS_LEN + (VLAN_HLEN * 2))
>

> This already exists:
> https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/i40e/i40e_txrx.h#L112

Thanks for pointing out the duplication definition. I'll drop this in
the i40e.h file.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
