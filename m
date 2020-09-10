Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E7E2653C3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 23:40:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DEB6F20426;
	Thu, 10 Sep 2020 21:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MKKGcSjDnzCn; Thu, 10 Sep 2020 21:40:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9E06E2083F;
	Thu, 10 Sep 2020 21:40:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CFD71BF584
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 10:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 23CAF20516
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 10:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sAlhJ3wPma9x for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 10:16:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id AF43227230
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 10:16:38 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a65so5045777wme.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 03:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DqY3ytm1lW24L4dBr5ZhfVe1Kl4JG7b6aElJixa0DtQ=;
 b=TyMbFj/CCKS/yEhzmJyx0SXASPCumWs129eaMWwliNPHoe9nGlJZk2Tsw17ABtL/mL
 mWke72l5dRMmrFg9ieYmDr1jVfXiMwSmIMEMsNuXAYrMDmbRSlu2SEhpSFeukLVe3cg9
 +5O+wBu+Jx7JfEyF9JNwdrWebHIVozT6N0VTqxSNEjrIsLOZ3R3dejl3APk21PLF2Oj8
 +Kb8ACZuKGttnfzoDexc2yloyF3/YUcCQzcDsr90PZvO0KOXZEocClY8eSC4NnFPV4xO
 lvhsU6vpfnm+pvKWrckJN/8r5bLtL/kaV4lfgkeSIGRnLzVQeQ+BBL7u23nOrwhO07G+
 JHEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DqY3ytm1lW24L4dBr5ZhfVe1Kl4JG7b6aElJixa0DtQ=;
 b=HdbX54WwrrAERPcuW1rH3V/hAxisvCxKQKKiH86jIcXxPs13JI5SNEy0+UMMDJfTSB
 Zf5SIP7jJZQz0KrhhukRZ+GFcE6TG5HGGee7IDUl/YgdPZM3JHz7+iLRGbYvoVh4Caos
 z5sJFdQ6ykDLrFYbywOTjs4EUKwHWhLLd/BtJD8iJVzi7rrMDd9V63homKcrOy5Sj/Ud
 iEwCKa7woMNYVMJx/LlA3qgosuRxvie1vzZsDLw/+R/GVndh7k3RnCEs8o4HLeoLNC2v
 DYEXgq92fr0vTyBqkm+pDWvZn1Ql9lpPJg4eZ3DKZKBC45PSjXmCoUCozLLBLkRrOMwT
 fcqQ==
X-Gm-Message-State: AOAM531Ih5waLmhgevuTEeJFvk8pE7Pq6QBtf21nrK1u3KuotQVxugPt
 THFqG//qnaXsP2AqVfbBwzQ=
X-Google-Smtp-Source: ABdhPJxz+CTfYBRsr9wPZ8ehDJQEmTq++yYJr4Xo0s0U0R6hQKoUpOmBLcC8LM7TIOPThVoU3WYKbg==
X-Received: by 2002:a1c:234b:: with SMTP id j72mr7837172wmj.153.1599732997083; 
 Thu, 10 Sep 2020 03:16:37 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.201])
 by smtp.gmail.com with ESMTPSA id a127sm2936155wmh.34.2020.09.10.03.16.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Sep 2020 03:16:36 -0700 (PDT)
To: Joe Perches <joe@perches.com>, LKML <linux-kernel@vger.kernel.org>,
 Jiri Kosina <trivial@kernel.org>
References: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Message-ID: <81d852d4-115f-c6c6-ef80-17c47ec4849a@gmail.com>
Date: Thu, 10 Sep 2020 12:16:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
Content-Language: en-US
X-Mailman-Approved-At: Thu, 10 Sep 2020 21:40:28 +0000
Subject: Re: [Intel-wired-lan] [trivial PATCH] treewide: Convert switch/case
 fallthrough; to break; 
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
Cc: linux-fbdev@vger.kernel.org, oss-drivers@netronome.com,
 nouveau@lists.freedesktop.org, alsa-devel <alsa-devel@alsa-project.org>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-ide@vger.kernel.org, dm-devel@redhat.com, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-rtc@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, dccp@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 kvmarm@lists.cs.columbia.edu, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
 Kees Cook <kees.cook@canonical.com>, linux-media@vger.kernel.org,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-nvme@lists.infradead.org,
 storagedev@microchip.com, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-sctp@vger.kernel.org, iommu@lists.linux-foundation.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 09/09/2020 22:06, Joe Perches wrote:
> diff --git a/drivers/net/wireless/mediatek/mt7601u/dma.c b/drivers/net/wireless/mediatek/mt7601u/dma.c
> index 09f931d4598c..778be26d329f 100644
> --- a/drivers/net/wireless/mediatek/mt7601u/dma.c
> +++ b/drivers/net/wireless/mediatek/mt7601u/dma.c
> @@ -193,11 +193,11 @@ static void mt7601u_complete_rx(struct urb *urb)
>   	case -ESHUTDOWN:
>   	case -ENOENT:
>   		return;
> +	case 0:
> +		break;
>   	default:
>   		dev_err_ratelimited(dev->dev, "rx urb failed: %d\n",
>   				    urb->status);
> -		fallthrough;
> -	case 0:
>   		break;
>   	}
>   
> @@ -238,11 +238,11 @@ static void mt7601u_complete_tx(struct urb *urb)
>   	case -ESHUTDOWN:
>   	case -ENOENT:
>   		return;
> +	case 0:
> +		break;
>   	default:
>   		dev_err_ratelimited(dev->dev, "tx urb failed: %d\n",
>   				    urb->status);
> -		fallthrough;
> -	case 0:
>   		break;
>   	}

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
