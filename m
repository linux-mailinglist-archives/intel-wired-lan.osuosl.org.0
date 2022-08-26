Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE2C5A26BA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 13:17:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9365D60B8D;
	Fri, 26 Aug 2022 11:17:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9365D60B8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661512667;
	bh=1JzL5dFPQdcfqlIq7qSwRsv/Amu3JOJo6/EPwZHDfb4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hLk4CBL5Qj58mQ8jEPHlzwtbkwTJuZelTExiWPRVmHsTxoSu9aAsh5ouJrxdj1wqp
	 gauP40oMmFac+4ftNhHk4d1gfouUl6jOFhYeLU32OnlW4pyK7AR+Li7r9ONLLvVSVU
	 BMyGsyhufX71EM2ZyLZXhzIgibexs4kbYS9CWZZlwUu2rnqKffn5ULoVxxJ7+80tRk
	 Qilpm3n2y1UrKo1hCSwUFSZeG3QU91Dh2fiwQZppItU4sVjtknlIcayWCENdTXBTxo
	 5ScG+/Yy7sASrMNEw9a/hvPsbQnv8BgL86LjAHoka11w8o/x+hLeNW+xwNMouBJyiB
	 ye0NCGha1aHjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cOB0ww1gkGAV; Fri, 26 Aug 2022 11:17:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 830B2610E0;
	Fri, 26 Aug 2022 11:17:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 830B2610E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60D811BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46820419F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46820419F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sWVHgFUGD-N3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 11:17:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23A2B419F0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 23A2B419F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:17:40 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id e20so1398694wri.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 04:17:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
 bh=s5HqRvr7PHDgoWZiabiLCmfMHT6gZC+dy6EsiwT3xbQ=;
 b=Jo9lJmwX5aJBSYX0nFER+Dwg8mFlUzeFlAUcAVz3ec5Ye6fYaJatfrYxW+lr6U2ao3
 ZZRMa7okwrxAjYSgowJ0sw4H3hinIc2lB8JL+uLIRCCPkEUyNPI+0K/xxg1vu6XZRvdV
 ioKq100QfWg6hMpl3kYgFnaqcNuS2hlUVjlFOIcWV6z1RSJtlQKZh2Xhu1WpGAiXUU6q
 3czKW+AgjPDM/mmYOGbVUnyLqxd0k4+7BulE252EcJgtocxgjEKPILdCz74CWCHrrG46
 Ehgvh0MhNSLDGo0O/12uke/i4t7korEmPfJCs6LqN+LiUeV2GCXX9r72AVU97fTONB9c
 OXGw==
X-Gm-Message-State: ACgBeo0EGxSFOlo4tQ4LH6bl4FzIX+tDARm28r0xdEl6HTYGV1pFwXcj
 HxRRHGcRrCKLbkIObsNPjkoq7g==
X-Google-Smtp-Source: AA6agR7O+TmV/Wg7dw7LV0qg1aUoBB0fczi0zDl0Ee3qSOIFltVBL8eS4m8i5QweusGvGcmsr9QSKw==
X-Received: by 2002:a05:6000:15ca:b0:225:4575:746d with SMTP id
 y10-20020a05600015ca00b002254575746dmr4460103wry.147.1661512658299; 
 Fri, 26 Aug 2022 04:17:38 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 by6-20020a056000098600b0021f15514e7fsm2059971wrb.0.2022.08.26.04.17.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Aug 2022 04:17:37 -0700 (PDT)
Date: Fri, 26 Aug 2022 13:17:37 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <Ywir0R7xdE7RZIhD@nanopsycho>
References: <20220826110059.119927-1-wojciech.drewek@intel.com>
 <20220826110059.119927-2-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220826110059.119927-2-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc;
 bh=s5HqRvr7PHDgoWZiabiLCmfMHT6gZC+dy6EsiwT3xbQ=;
 b=7h9g7EK9RqVul2SxQH6CNrg/bVcpzhDCrLUdI6ScWhDU7WNx4ReP5AgoC/a8qWBvS1
 jVvE5cHj0rgJGVhhf/DJjWMVYJAYGk5HqVZOqAY02dQZ+svPBzEAYE9qbgpbvEuy8smC
 qppATxVh+u+btTiaVx1FSOheR+KENUYveqzCzybJQdH6iM/C9tqrqLqc9O5nw/12qiTp
 9K0qVYLbsUfyClH99d5GboIwoku2OvJicFJ73DD2dG681QDpOF3ViGbL+GARN7fKrUkv
 wkzI10UZCVABrX5D75xc7KumSNIn9kyreUd2ohPOtQ8ojq5h+mxqi8BjK5z3tLbG1/PZ
 Rcmg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=7h9g7EK9
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next 1/5] uapi: move
 IPPROTO_L2TP to in.h
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
Cc: simon.horman@corigine.com, maksym.glubokiy@plvision.eu,
 komachi.yoshiki@gmail.com, jchapman@katalix.com, edumazet@google.com,
 boris.sukholitko@broadcom.com, louis.peens@corigine.com, gnault@redhat.com,
 intel-wired-lan@lists.osuosl.org, vladbu@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, pablo@netfilter.org, baowen.zheng@corigine.com,
 kurt@linutronix.de, paulb@nvidia.com, jhs@mojatatu.com,
 xiyou.wangcong@gmail.com, netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Aug 26, 2022 at 01:00:55PM CEST, wojciech.drewek@intel.com wrote:
>IPPROTO_L2TP is currently defined in l2tp.h, but most of
>ip protocols is defined in in.h file. Move it there in order
>to keep code clean.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> include/uapi/linux/in.h   | 2 ++
> include/uapi/linux/l2tp.h | 2 --
> 2 files changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/include/uapi/linux/in.h b/include/uapi/linux/in.h
>index 14168225cecd..5a9454c886b3 100644
>--- a/include/uapi/linux/in.h
>+++ b/include/uapi/linux/in.h
>@@ -68,6 +68,8 @@ enum {
> #define IPPROTO_PIM		IPPROTO_PIM
>   IPPROTO_COMP = 108,		/* Compression Header Protocol		*/
> #define IPPROTO_COMP		IPPROTO_COMP
>+  IPPROTO_L2TP = 115,		/* Layer 2 Tunnelling Protocol		*/
>+#define IPPROTO_L2TP		IPPROTO_L2TP
>   IPPROTO_SCTP = 132,		/* Stream Control Transport Protocol	*/
> #define IPPROTO_SCTP		IPPROTO_SCTP
>   IPPROTO_UDPLITE = 136,	/* UDP-Lite (RFC 3828)			*/
>diff --git a/include/uapi/linux/l2tp.h b/include/uapi/linux/l2tp.h
>index bab8c9708611..7d81c3e1ec29 100644
>--- a/include/uapi/linux/l2tp.h
>+++ b/include/uapi/linux/l2tp.h
>@@ -13,8 +13,6 @@
> #include <linux/in.h>
> #include <linux/in6.h>
> 
>-#define IPPROTO_L2TP		115

You most certainly cannot do this, as you would break the user including
linux/l2tp.h and using this.


>-
> /**
>  * struct sockaddr_l2tpip - the sockaddr structure for L2TP-over-IP sockets
>  * @l2tp_family:  address family number AF_L2TPIP.
>-- 
>2.31.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
