Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2474B323B63
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Feb 2021 12:42:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F95B6F5ED;
	Wed, 24 Feb 2021 11:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zIwo6eOJs7Nb; Wed, 24 Feb 2021 11:42:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A75E606D0;
	Wed, 24 Feb 2021 11:42:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E00BC1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 11:42:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE202606D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 11:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6jJ4RLryKvWj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Feb 2021 11:42:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 13203600B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 11:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614166931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=R6pjX4SLHgTz0NJkBF1xScFLT/BBC4Z4bjLRPd8FdtM=;
 b=BjY2vZ+dT8aD1IhF/l8Pj4ApKZcP6jCY98hJ2qv+a0dEzAGrSUG0zj7ZXjl0qy852gQOiJ
 jukbn2fg5lLiXKlnVJ5G6y/qlse552xAsrGiv9TJ03sTuGa7+uCps863QbCETQ3Wg+1Wqw
 D0vjlmEqAS14n00SzCsXNWtO07AHESk=
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-534-n3SeOB-0PnmwwLTwadi9ww-1; Wed, 24 Feb 2021 06:42:09 -0500
X-MC-Unique: n3SeOB-0PnmwwLTwadi9ww-1
Received: by mail-pf1-f199.google.com with SMTP id d2so1648786pfa.17
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 03:42:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R6pjX4SLHgTz0NJkBF1xScFLT/BBC4Z4bjLRPd8FdtM=;
 b=RS6HA0vLmJQs3v5KA/PM1+Qrf96eRGP71ygWGaK7Vs7t8DeKfrKDex8lxRwOj3uq2P
 hfrdIH+poO8opIv02mRQPlAHQAofMt28W8oiMVoo3m9liLQOGVYM/OvaRN4gTvbAvIrn
 VvSW5IwQYTP1KRGPrEw8mWNZVB4InA0+pCAAYQAONDlDlinLOQh5hSm6KZNpGkiBqJtr
 FvT4sAJvzCfXosdrOP4Srd/Wt7Pg0+zANd5psy+NjITC6e4J08xzww9ijhW3ghW5nrYq
 mCc89mRiUGm9pV6MNdyz2tnykuI/L1UQ0SJCN6rUH0UozJn+TLijc+1AoSbgpV5KYqhT
 Ylxw==
X-Gm-Message-State: AOAM531qN5nceQy/A7ij5mxNKKGwfdHRXL0RZZi31/HNjr0DzO4wnIQ5
 f2AdWjE4e6S9g3CkK0vMa+MCiCnp3QWGvp1Z/9obtRoPeXsU6mRKNbZ8K95+kOH7zHIFWTVMaaZ
 8IZVNKtjB//rJGQn1jLjjoRWboFCvpA==
X-Received: by 2002:a17:902:b089:b029:e3:28:b8ee with SMTP id
 p9-20020a170902b089b02900e30028b8eemr32658037plr.84.1614166928541; 
 Wed, 24 Feb 2021 03:42:08 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxqpnHDahCWOdYmYR1vBlv9n4xutt88MFzERot9njK4Fmx0jTWJnpgdpd507/I2r/HCRGxxCg==
X-Received: by 2002:a17:902:b089:b029:e3:28:b8ee with SMTP id
 p9-20020a170902b089b02900e30028b8eemr32658021plr.84.1614166928325; 
 Wed, 24 Feb 2021 03:42:08 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id l190sm2602018pfl.205.2021.02.24.03.42.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Feb 2021 03:42:07 -0800 (PST)
Date: Wed, 24 Feb 2021 19:41:41 +0800
From: Coiby Xu <coxu@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210224114141.ziywca4dvn5fs6js@Rk>
References: <20210222070701.16416-1-coxu@redhat.com>
 <20210222070701.16416-5-coxu@redhat.com>
 <20210223122207.08835e0b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
In-Reply-To: <20210223122207.08835e0b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=coxu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-wired-lan] [RFC PATCH 4/4] i40e: don't open i40iw client
 for kdump
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
Cc: netdev@vger.kernel.org, kexec@lists.infradead.org,
 open list <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub,

Thank you for reviewing the patch!

On Tue, Feb 23, 2021 at 12:22:07PM -0800, Jakub Kicinski wrote:
>On Mon, 22 Feb 2021 15:07:01 +0800 Coiby Xu wrote:
>> i40iw consumes huge amounts of memory. For example, on a x86_64 machine,
>> i40iw consumed 1.5GB for Intel Corporation Ethernet Connection X722 for
>> for 1GbE while "craskernel=auto" only reserved 160M. With the module
>> parameter "resource_profile=2", we can reduce the memory usage of i40iw
>> to ~300M which is still too much for kdump.
>>
>> Disabling the client registration would spare us the client interface
>> operation open , i.e., i40iw_open for iwarp/uda device. Thus memory is
>> saved for kdump.
>>
>> Signed-off-by: Coiby Xu <coxu@redhat.com>
>
>Is i40iw or whatever the client is not itself under a CONFIG which
>kdump() kernels could be reasonably expected to disable?
>

I'm not sure if I understand you correctly. Do you mean we shouldn't
disable i40iw for kdump?

-- 
Best regards,
Coiby

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
