Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EF251D36
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2019 23:40:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76B078571C;
	Mon, 24 Jun 2019 21:40:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Za54xE6RIeF4; Mon, 24 Jun 2019 21:40:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9826D865B8;
	Mon, 24 Jun 2019 21:40:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71E571BF3E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 21:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C8612040D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 21:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VMULP9iN5a5R for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2019 21:40:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by silver.osuosl.org (Postfix) with ESMTPS id C73B9203A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 21:40:19 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id d23so816832qto.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2019 14:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=m5K7cZetcijY0fEJX5mutitQcqWRu/jY/9Bvg6ECf2M=;
 b=Uer0B0QCplKA+nnwbndA63xZv+UiV2tYSqMiSCap4oskQkndqun2paa/Qi9cgyj/61
 eR58eW7G+bha0NVU4XNZrFsml1cTUpxvXaIsmq/QzvD+Fn64hxkgqQDzmtaL2wsX5OK0
 VGq2JFcCQQ1nyLjIg5Ub7KZEC8eZDTQMjid4jCNlrj82wA1VM3fLj0RLDXTrepJQdH7x
 4ORur0CEnNCe89BR6MRNJ3ZBu0rHOIQfgRGpGYZaepW4pQ+Lg2D+JCdATYEDJ6YeL4c6
 2sUzOIa8QwuAL7SUq3xa2QtG5v8VZ9vbM9E7RJuniYKTb23hODIhgIEc9b1SZ37Q5sS6
 an+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=m5K7cZetcijY0fEJX5mutitQcqWRu/jY/9Bvg6ECf2M=;
 b=cJe/yJ1DgF/VeoEfUuiZFensVVZxp9It3U/R2Ox6IvZsd2WkK4dxcbM0rzcHOlmCzZ
 6je+g/Lkss+VB83PvZGkRMeTkOofbREs+3nZkbGFahqRWaPi2VzPOoAARSGQ9JrrAN6S
 QjfPt1bCzstbMuRWek7DygvAt/BE90sklTyV4tLwL4k8/8jTTMAW7Dn1UQeM3Sp/wJ/d
 Y1+TkacXzoHQnVpioxfQAbhlaeHPq3R/3SaS9C+dgewVWvdPUF5Nqfx3T6Bi4DpxyN42
 ZGsRq7RrtB7rzLy3vfq+MlOhkGir6Kon+C0u14a1Tb7rzNuBWuTR6PVp7f+zTIjNS6aq
 qGUA==
X-Gm-Message-State: APjAAAVrC28MoRoCMo7nIscbZORMAWZCwCX1KbBj3rdsn7aYQ3Fq8Wgo
 z/5yXKMGFU66KrbmMgDqkSBr+g==
X-Google-Smtp-Source: APXvYqysWXsAhZyppdBhgBmck95xmjWLSHZ0JqoopBuTkLyKgpJru1LR6LNjqsdeCjE44Ua1NVsbmw==
X-Received: by 2002:ac8:29c9:: with SMTP id 9mr105765661qtt.196.1561412418866; 
 Mon, 24 Jun 2019 14:40:18 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id d38sm7311212qtb.95.2019.06.24.14.40.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 14:40:18 -0700 (PDT)
Date: Mon, 24 Jun 2019 14:40:13 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Vedang Patel <vedang.patel@intel.com>
Message-ID: <20190624144013.3168dde2@cakuba.netronome.com>
In-Reply-To: <1561138108-12943-3-git-send-email-vedang.patel@intel.com>
References: <1561138108-12943-1-git-send-email-vedang.patel@intel.com>
 <1561138108-12943-3-git-send-email-vedang.patel@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/7] etf: Add
 skip_sock_check
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
Cc: jiri@resnulli.us, l@dorileo.org, sergei.shtylyov@cogentembedded.com,
 netdev@vger.kernel.org, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 eric.dumazet@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 21 Jun 2019 10:28:23 -0700, Vedang Patel wrote:
> diff --git a/include/uapi/linux/pkt_sched.h b/include/uapi/linux/pkt_sched.h
> index 8b2f993cbb77..409d1616472d 100644
> --- a/include/uapi/linux/pkt_sched.h
> +++ b/include/uapi/linux/pkt_sched.h
> @@ -990,6 +990,7 @@ struct tc_etf_qopt {
>  	__u32 flags;
>  #define TC_ETF_DEADLINE_MODE_ON	BIT(0)
>  #define TC_ETF_OFFLOAD_ON	BIT(1)
> +#define TC_ETF_SKIP_SOCK_CHECK	BIT(2)
>  };
>  
>  enum {

I think build bot complained about the code not building on 32bit.
When you respin could you include a patch to remove the uses of BIT()
in UAPI?  See: https://www.spinics.net/lists/netdev/msg579344.html
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
