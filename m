Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8398D58D25C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Aug 2022 05:30:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7745860B2C;
	Tue,  9 Aug 2022 03:30:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7745860B2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660015836;
	bh=uXjBG7UTKlVKOf+5Q21Pai/VuRnio2gYEHHNrf6RqOc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l9xcDkKKA/viXmt1gaZYm4/AlCN7zHuf6r1z9tlHKfxGGNnXCEpv0exj3bsvKoWcK
	 7jUemRkKmOxiGthiIZynqebgE+nYVeGTAuiYh5uzuzpU95L7ys1/YcNNLMHwxeOsUU
	 gdqv3znP2lvj58PEVQh8F/ycj2nFgE7Jd5lKZX0wU1LurEMLRlCvnte8ivw2cJ3FYd
	 rdRNBHS6aoOqP5LdVtb7xmDxJ2V7pocmKSY2gHqwa2qclzOF9RVxA9o8jhzb/T1jnM
	 0yUDjhNjd9XJGOETpFo1M8DJt2b+EJGgtfJEhB4yAJI8RVnByErSpNmaujeF+zz8V3
	 yfYk2B5DNbG6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y866kDCseC7J; Tue,  9 Aug 2022 03:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66B7D60B4F;
	Tue,  9 Aug 2022 03:30:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66B7D60B4F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D20D1BF95E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 03:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6412981846
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 03:30:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6412981846
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yo70EL0qOJtK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Aug 2022 03:30:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B3018183D
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B3018183D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 03:30:29 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id m7so7886635qkk.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Aug 2022 20:30:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=Ni63gAQOgqL3rVx5QRs1Ql+8uMsi8IRaIfTqyv6SPMg=;
 b=DcefY3wXCnuBVLsl/cgu3T2fVsNZcdhWU7OeHJRMKimK9qu2K0CLe48aK0/DAbV1mt
 L3nHRlVHQ03CSJMwjrgfe2yyOIuYKNlfPYCYczAlp2PC/DM0fU6jFi2ndyT8y8JUd73c
 A1GMAkIOb6LQNDVwQltjvTCNT8vnR/MH5jwwEQOA3cCdvknlgSrYNm2iYfv+2BavjtH5
 GoPnbYd70mlnzRnQHWuBV/Mku884RPWTr77cr3+4BCaAME8UWYYix61zA4m0Vqd2U7JQ
 0BjJFx2p5q3fnFlxflQ6wRNDjjZGmUUgmHicVso2R/LeMoi57ARjjU82OcG/e/Svm8RK
 rN9A==
X-Gm-Message-State: ACgBeo0z/6fcM+svpC8jHBt3alrZZeow5Et15jVflYBjwDvSwTNtQFOn
 SKU4ybYe2InhUX78QXBV2FM=
X-Google-Smtp-Source: AA6agR5ysDU+Ec8zr+8uvEcFpdBosOFWEpDQaOGMEESNVEfrh63BdHRTCc7U3AiVqOtgkZmdGYgQ0Q==
X-Received: by 2002:ae9:ef82:0:b0:6b9:6e9a:3da1 with SMTP id
 d124-20020ae9ef82000000b006b96e9a3da1mr3119057qkg.696.1660015828299; 
 Mon, 08 Aug 2022 20:30:28 -0700 (PDT)
Received: from [192.168.1.3] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
 by smtp.gmail.com with ESMTPSA id
 ay36-20020a05622a22a400b0033ae41bd326sm8635779qtb.73.2022.08.08.20.30.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Aug 2022 20:30:26 -0700 (PDT)
Message-ID: <f5c4d092-eeb7-2342-605f-7d86df9b1b10@gmail.com>
Date: Mon, 8 Aug 2022 20:30:23 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.1
Content-Language: en-US
To: Lin Ma <linma@zju.edu.cn>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
References: <20220809025953.2311-1-linma@zju.edu.cn>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220809025953.2311-1-linma@zju.edu.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc;
 bh=Ni63gAQOgqL3rVx5QRs1Ql+8uMsi8IRaIfTqyv6SPMg=;
 b=iH4GEEDLr/n9fbIRXJIfL86UxTHrN+4QzzObag4OOSRbNVj/TinS+CphoSLqOC8rmn
 IgT41B7ayvLyCvW74GmwDxxAe0tGpTf8eN5wY0XSLu02un6jYjFqge94Pc3ypIg4PBja
 NmH5n9qGyZwcCotGP/GFohONvT4+dpZqj+HiDMGhoa91N+EpYjfA3BRN0Bf416vPZoSt
 DOdi50ATkHdOas4YAuMEZVm7CSCjb1+6zLprwGLQUg54Ov7kcIHQF30n7fy8shYWUX8C
 xY0ZB0J9LQ3XPru2Gfh/Tv/exIMAYtcnJWULr9CPPIqnjBu5Zp3j0LZLMSruBZe1bh2R
 R3VQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=iH4GEEDL
Subject: Re: [Intel-wired-lan] [PATCH v1] idb: Add lock to avoid data race
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/8/2022 7:59 PM, Lin Ma wrote:
> The commit c23d92b80e0b ("igb: Teardown SR-IOV before
> unregister_netdev()") places the unregister_netdev() call after the
> igb_disable_sriov() call to avoid functionality issue.
> 
> However, it introduces several race conditions when detaching a device.
> For example, when .remove() is called, the below interleaving leads to
> use-after-free.
> 
>   (FREE from device detaching)      |   (USE from netdev core)
> igb_remove                         |  igb_ndo_get_vf_config
>   igb_disable_sriov                 |  vf >= adapter->vfs_allocated_count?
>    kfree(adapter->vf_data)          |
>    adapter->vfs_allocated_count = 0 |
>                                     |    memcpy(... adapter->vf_data[vf]
> 
> Moreover, just as commit 1e53834ce541 ("ixgbe: Add locking to
> prevent panic when setting sriov_numvfs to zero") shows. The
> igb_disable_sriov function also need to watch out the requests from VF
> driver.
> 
> To this end, this commit first eliminates the data races from netdev
> core by using rtnl_lock (similar to commit 719479230893 ("dpaa2-eth: add
> MAC/PHY support through phylink")). And then adds a spinlock just as
> 1d53834ce541 did.
> 
> Fixes: c23d92b80e0b ("igb: Teardown SR-IOV before unregister_netdev()")
> Signed-off-by: Lin Ma <linma@zju.edu.cn>

You have a typo in your subject: s/idb/igb/
-- 
Florian
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
