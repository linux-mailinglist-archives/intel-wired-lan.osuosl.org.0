Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E17D6657D2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 10:42:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0543B610F1;
	Wed, 11 Jan 2023 09:42:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0543B610F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673430175;
	bh=2UfQlNNLFdm9SYdN64uTRIq+Z2Zt4XDinSK6Hv/MdG0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6mBI4ok51bGJ/eK797izLJRs5ksl7S3LzXAMFWNIJETMmeebOwSjOTt/Q0PEwxpeO
	 r6rQizd+dcFdyS9T9bHphKzCJhABlS5OSaFxO1VkaK4wqlea7OccnUq/QmTBzIHO05
	 wyUpG/a8TO/Dx8PEd9KhhhkkC0iY7F2FFERj6AoTW8BLzBTtYsYv9BVw5wS7hpT4qG
	 QH9baP9Gt6kpmzA/bAeWaRsv1CT3ewh6ItZ8pB7wHbUc3/uwjc3Wcc8Js6bS3lcH5s
	 rph8zDBOl7QPc/pVRn9HEI4SmaiI+jJclxPtJpiU8IbHqeCjUjIfDVIC3iAd1DUcbP
	 Pv1oHoogMaeCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 032JZCHpGRVm; Wed, 11 Jan 2023 09:42:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C96D610E7;
	Wed, 11 Jan 2023 09:42:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C96D610E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B1AA1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 09:42:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 61C28820D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 09:42:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61C28820D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-7yKGiU6S5a for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 09:42:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96D0281FB8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96D0281FB8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 09:42:47 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-502-XRZMJZ1XNbSsvlInv2-Cbg-1; Wed, 11 Jan 2023 04:42:45 -0500
X-MC-Unique: XRZMJZ1XNbSsvlInv2-Cbg-1
Received: by mail-ed1-f69.google.com with SMTP id
 q10-20020a056402518a00b0048e5bc8cb74so9545982edd.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 01:42:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+mXlqHLDOLyFJjraZrLr0BXsWr/xXhYE6HGBmC7wCe0=;
 b=KznF8Z/Rbnj0Om3190xcX0wk6NzUJQFsqsxmi3FkxNpLqEUWhPPI1h3QmAeq3Sma1Y
 x3l8kobjCcVrvyYzUtmppwgVwV4IwhJPn58x+IEdIUKs8A6c9DagBdqZvLgzlt5SiO7i
 YfvRt5hsJzbU0gbai/gHuO7p+RP9/eNUjVI/My38uydA3TQJZCahQeEtEd1lVWJG135c
 qtADb/9vbyrC0cTpT5tk4jcPJrl5K7bvu8wz8vshOdd2t5jF1XXlU/BDHFBh2sJvgRjB
 FCiUfySf9RwRPZtGhnILvQufOTGzSyE2fT7R7GdofmHFftAxvU2cghpwRNDH3rwXVGGA
 YPRA==
X-Gm-Message-State: AFqh2koNUIOG4UNpolm4Hoe0NiAS49s+zcfc2jed2wEChYRpUrChukFG
 hARcRR2f0tMozzi2JCmEwDaEjoT0JCIuy+RYLRn64lBKK7ztmS1JWc8TgpuGlgTPd+CI7LnZ8LL
 2gYAFwRh7NfQuW7PrKbTF8CYvodj4Yj/BjUn7Rvd6nHKlOA==
X-Received: by 2002:a17:906:f218:b0:828:75be:fd81 with SMTP id
 gt24-20020a170906f21800b0082875befd81mr7274791ejb.360.1673430164003; 
 Wed, 11 Jan 2023 01:42:44 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtpXNHT4W4d5mnoYX9i6t0hHg6a7iscVqYz7rIF7qFPWDkZ14oPFi5o8iBEJ9v/6qp+913JljQ931hxedkpl78=
X-Received: by 2002:a17:906:f218:b0:828:75be:fd81 with SMTP id
 gt24-20020a170906f21800b0082875befd81mr7274785ejb.360.1673430163746; Wed, 11
 Jan 2023 01:42:43 -0800 (PST)
MIME-Version: 1.0
References: <20230110080018.2838769-1-sassmann@redhat.com>
In-Reply-To: <20230110080018.2838769-1-sassmann@redhat.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 11 Jan 2023 10:42:32 +0100
Message-ID: <CADEbmW2LLTfZ6h=Cdkbc70Z61BuBKYMbaLYq-c=STP03VJ_O2g@mail.gmail.com>
To: Stefan Assmann <sassmann@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1673430166;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+mXlqHLDOLyFJjraZrLr0BXsWr/xXhYE6HGBmC7wCe0=;
 b=F3JIK7ACzxJtCCQGQNDf63HMfWfVAaXX8+a+ALcPMSB+RdJuvMAUOhKzr9gXhHSfgFxnjV
 LmoEW3U5ol91lxl6rPGBP9c5cTrWjzC+1RBLHFmRgMNUTdCJWxP6TMuEu1Ck3zTumjDHPL
 R7k9c04tIZ3T9VjmN3trcasQ2lN8XQc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=F3JIK7AC
Subject: Re: [Intel-wired-lan] [PATCH net-queue] iavf: schedule watchdog
 immediately when changing primary MAC
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
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 patryk.piotrowski@intel.com, intel-wired-lan@lists.osuosl.org,
 sassmann@kpanic.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 10, 2023 at 9:01 AM Stefan Assmann <sassmann@redhat.com> wrote:
>
> From: Stefan Assmann <sassmann@kpanic.de>
>
> iavf_replace_primary_mac() utilizes queue_work() to schedule the
> watchdog task but that only ensures that the watchdog task is queued
> to run. To make sure the watchdog is executed asap use
> mod_delayed_work().
>
> Without this patch it may take up to 2s until the watchdog task gets
> executed, which may cause long delays when setting the MAC address.
>
> Fixes: a3e839d539e0 ("iavf: Add usage of new virtchnl format to set default MAC")
> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
> ---
> Depends on net-queue patch
> ca7facb6602f iavf: fix temporary deadlock and failure to set MAC address
>
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index fff06f876c2c..1d3aa740caea 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1033,7 +1033,7 @@ int iavf_replace_primary_mac(struct iavf_adapter *adapter,
>
>         /* schedule the watchdog task to immediately process the request */
>         if (f) {
> -               queue_work(adapter->wq, &adapter->watchdog_task.work);
> +               mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
>                 return 0;
>         }
>         return -ENOMEM;
> --
> 2.38.1

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Tested-by: Michal Schmidt <mschmidt@redhat.com>

Beautiful! On my test machine, this takes the time needed to bring up
64 VFs from 92 s down to 7 s.
Michal

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
