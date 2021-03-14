Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAA833A3A9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Mar 2021 09:56:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5EC1A4013A;
	Sun, 14 Mar 2021 08:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V22kOPB8EG46; Sun, 14 Mar 2021 08:56:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5661040123;
	Sun, 14 Mar 2021 08:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7095B1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 08:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50A6F60732
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 08:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7mHU0unRuUCp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Mar 2021 08:56:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78F066ECA6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 08:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1615712173;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LyaH1dab1qBISD1dv3cUf9pEcqtmk2xN7TDwrY2qafc=;
 b=RCW/wy/c0RjBjZILV9ATo8aHrg56ncoTLvYbttlcE99kyXcZ6uM2NnJoZwqiwCSFhck6JI
 YoLXXyiGoH2Z76vJSR+Hr/Wlkg8/3Jd9b4iHlvUMpgfwL7CWkqH1fwO8R4E0fHNDG4goTe
 wg6lPivJtq/kP1yqjmN2AOCE5srINbA=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-GWWLQancONm-aSifKvQqZQ-1; Sun, 14 Mar 2021 04:56:11 -0400
X-MC-Unique: GWWLQancONm-aSifKvQqZQ-1
Received: by mail-wr1-f72.google.com with SMTP id n16so12457440wro.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 00:56:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LyaH1dab1qBISD1dv3cUf9pEcqtmk2xN7TDwrY2qafc=;
 b=HAB9LvyaOb9ui2XYUjHny73ub9gdV6gSe3L9gVZeO2OWixSR8qj4c0W8TvgXWWYQtv
 H1H76ZFfek9aRzXdCImlIc2dQhEIq/myNb67sg9IO6OzZX1NKnGPZ4JPvb3apNkNVEiE
 7bexplStl3Vc/NRHz2lwwUU/P/AoBtkAT2fCtZ7Xkvbq9QWDHw/sfBlAkiJS030e4W1j
 vBfG8uoUa2+bLiJLDUTShEHw+VhUE9g3uggyXwpDfHSKb5IiR3C0s44AMBy3P4tsRlIm
 iFANmLuoqcL0PtqaHtFHl6Uj6Y2SxkDl0FJJ1MMlRtbo8kZbgixPWJ/CmGIffdiWn9gI
 6X0Q==
X-Gm-Message-State: AOAM533CHBR8N4M6+KmMyj/ubh1hI/h2MIjeuZw6mgplSM1vRDy5+/6E
 NLZ5PaxYk5KuIzakFu5qfXPNctlIs48t9+l8NfDEn+dBWTYDLxqQen5HXy0DCIdO9hWdKiOQjV3
 GzPQPvhP18R3y67IQDipGnKa1sZnepQ==
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr22950886wrk.146.1615712170217; 
 Sun, 14 Mar 2021 00:56:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx5nAlSrO335TBU3WBHpmFz/LXcg2/JrE7facrTQ+RdwLovH3VigAS7iOHC73pus5SKoqDvMg==
X-Received: by 2002:adf:d4ca:: with SMTP id w10mr22950845wrk.146.1615712169946; 
 Sun, 14 Mar 2021 00:56:09 -0800 (PST)
Received: from redhat.com (bzq-79-180-2-31.red.bezeqint.net. [79.180.2.31])
 by smtp.gmail.com with ESMTPSA id o14sm14006144wri.48.2021.03.14.00.56.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 00:56:09 -0800 (PST)
Date: Sun, 14 Mar 2021 04:56:04 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20210314045559-mutt-send-email-mst@kernel.org>
References: <161557111604.10304.1798900949114188676.stgit@localhost.localdomain>
 <161557132651.10304.9382850626606060019.stgit@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <161557132651.10304.9382850626606060019.stgit@localhost.localdomain>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-wired-lan] [net-next PATCH 07/10] virtio_net: Update
 driver to use ethtool_sprintf
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
Cc: doshir@vmware.com, oss-drivers@netronome.com, jasowang@redhat.com,
 alexanderduyck@fb.com, akiyano@amazon.com, wei.liu@kernel.org,
 sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, Kernel-team@fb.com,
 yisen.zhuang@huawei.com, gtzalik@amazon.com, simon.horman@netronome.com,
 haiyangz@microsoft.com, drivers@pensando.io, salil.mehta@huawei.com,
 GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com, netdev@vger.kernel.org,
 davem@davemloft.net, netanel@amazon.com, saeedb@amazon.com,
 snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 12, 2021 at 09:48:46AM -0800, Alexander Duyck wrote:
> From: Alexander Duyck <alexanderduyck@fb.com>
> 
> Update the code to replace instances of snprintf and a pointer update with
> just calling ethtool_sprintf.
> 
> Also replace the char pointer with a u8 pointer to avoid having to recast
> the pointer type.
> 
> Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>

Acked-by: Michael S. Tsirkin <mst@redhat.com>

> ---
>  drivers/net/virtio_net.c |   18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
> index e97288dd6e5a..77ba8e2fc11c 100644
> --- a/drivers/net/virtio_net.c
> +++ b/drivers/net/virtio_net.c
> @@ -2138,25 +2138,21 @@ static int virtnet_set_channels(struct net_device *dev,
>  static void virtnet_get_strings(struct net_device *dev, u32 stringset, u8 *data)
>  {
>  	struct virtnet_info *vi = netdev_priv(dev);
> -	char *p = (char *)data;
>  	unsigned int i, j;
> +	u8 *p = data;
>  
>  	switch (stringset) {
>  	case ETH_SS_STATS:
>  		for (i = 0; i < vi->curr_queue_pairs; i++) {
> -			for (j = 0; j < VIRTNET_RQ_STATS_LEN; j++) {
> -				snprintf(p, ETH_GSTRING_LEN, "rx_queue_%u_%s",
> -					 i, virtnet_rq_stats_desc[j].desc);
> -				p += ETH_GSTRING_LEN;
> -			}
> +			for (j = 0; j < VIRTNET_RQ_STATS_LEN; j++)
> +				ethtool_sprintf(&p, "rx_queue_%u_%s", i,
> +						virtnet_rq_stats_desc[j].desc);
>  		}
>  
>  		for (i = 0; i < vi->curr_queue_pairs; i++) {
> -			for (j = 0; j < VIRTNET_SQ_STATS_LEN; j++) {
> -				snprintf(p, ETH_GSTRING_LEN, "tx_queue_%u_%s",
> -					 i, virtnet_sq_stats_desc[j].desc);
> -				p += ETH_GSTRING_LEN;
> -			}
> +			for (j = 0; j < VIRTNET_SQ_STATS_LEN; j++)
> +				ethtool_sprintf(&p, "tx_queue_%u_%s", i,
> +						virtnet_sq_stats_desc[j].desc);
>  		}
>  		break;
>  	}
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
