Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5934F47D529
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 17:36:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EC8C4156E;
	Wed, 22 Dec 2021 16:36:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MBlINSVepUWd; Wed, 22 Dec 2021 16:36:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B83FF41587;
	Wed, 22 Dec 2021 16:36:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 487781BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 16:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42D5940556
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 16:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eDm8ns6G2Q0D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 16:35:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77BB6400E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 16:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640190955;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HGBvvtqDZSHAMuwLIdJ6eQ6oSRqWv1IRlZD5BDUr+8s=;
 b=ZubGA8nJexqwKCk9xjSKp4G8jtEl/edhpQh2PK1+/89IadZSvidml2A1H4GJCw/X/COA0X
 1t9xb64iko5qlHt0ZZqNSoSjvZhOkX+Xtai8Rc+7C/r2gXIQgElJmPBpsP3P6WYvdmoC2c
 heXBJmrvaKJ2ZJ74Ja/OHNMSmbWTbQM=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-638-49EbOp4lMVOPFCb3PNp59g-1; Wed, 22 Dec 2021 11:35:54 -0500
X-MC-Unique: 49EbOp4lMVOPFCb3PNp59g-1
Received: by mail-qt1-f199.google.com with SMTP id
 o12-20020a05622a008c00b002aff5552c89so1783327qtw.23
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 08:35:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=HGBvvtqDZSHAMuwLIdJ6eQ6oSRqWv1IRlZD5BDUr+8s=;
 b=V1nXDK8yO3bZleT5YcHsQ8510DbqFGx7ZsDaR/SBvyUKh53mkFPX6bxpai4zogZUD9
 EHAOGZiAu0X/FtKa16ltrrTFoYCtCy3eGBr13hNkm8wgtXt9P5WB6LK/j5Sb2ckbQxy0
 1fQlUGTDr9jD/r8hPqNEyQ/t6n7D0N/YxSmyRWn0lv7NZd3HKRyRE+1KN4jxWCTRBegg
 LOLJPimsO95WP+BXeIxaXXuvrgk/FpEaEK6z8zQd0Rxw6rpyZ0eKUjqO2BJVjBDPAiY1
 Zo8PMCMWmexN/qE0fkQXKczWOS0agWzZfuf7t/Kgh+wFPuU5O9BI4bWdJZnypuLTKYm6
 +rrQ==
X-Gm-Message-State: AOAM5328VQubEbbd18KpTKkFYc7JgDiZnOjddCet2IOhOyUx2wMLEPhS
 4X3lQJ34joQ8jXq9vZhvWjM4XuK+qZ7ADroKdQHC/fmymis1Qnv5K5AU7pWQATI4T82oIKA+4wu
 Yknj55xk9TdID1BPljZA3QYmLSPicrg==
X-Received: by 2002:ad4:4423:: with SMTP id e3mr3095530qvt.55.1640190953734;
 Wed, 22 Dec 2021 08:35:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy8Tqc9lm2A+EX2rgwjkYAjKWo22Mm2o842+9CszksUahnL1DyTFa1gz+c02JIg+VVLmAM8oQ==
X-Received: by 2002:ad4:4423:: with SMTP id e3mr3095511qvt.55.1640190953516;
 Wed, 22 Dec 2021 08:35:53 -0800 (PST)
Received: from [192.168.33.110] (c-73-19-232-221.hsd1.tn.comcast.net.
 [73.19.232.221])
 by smtp.gmail.com with ESMTPSA id m1sm2094088qtk.34.2021.12.22.08.35.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Dec 2021 08:35:53 -0800 (PST)
Message-ID: <e665d7d1-56ec-2f1b-ced6-2103336957cf@redhat.com>
Date: Wed, 22 Dec 2021 11:35:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20211220141852.695800-1-karol.kolacinski@intel.com>
From: Jonathan Toppins <jtoppins@redhat.com>
In-Reply-To: <20211220141852.695800-1-karol.kolacinski@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jtoppins@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3 intel-next] ice: Fix E810 PTP reset
 flow
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

On 12/20/21 09:18, Karol Kolacinski wrote:
> The PF reset does not reset PHC and PHY clocks so it's unnecessary to
> stop them and reinitialize after the reset.
> Configuring timestamping changes the VSI fields so it needs to be
> performed after VSIs are initialized, which was not done in case of a
> reset.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

Reviewed-by: Jonathan Toppins <jtoppins@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
