Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093493247D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Feb 2021 01:23:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8588A431A0;
	Thu, 25 Feb 2021 00:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OcFvp2y6odNV; Thu, 25 Feb 2021 00:23:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D85C4319A;
	Thu, 25 Feb 2021 00:23:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6103E1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 00:23:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F657606FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 00:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V0fM8jHIhvdl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Feb 2021 00:23:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA963606FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 00:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614212592;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nlfx0m5rFM5WgVSG9Q1ZGCqTh86/2WQ73ulkFBzW4yA=;
 b=HuWyonXlMzdAbwt5iuGSaFa8lQTg7YNTB6O9FoTlACO1E9pzpEQchxB/qMCFrHYYBqWtok
 NUDeK4AU5mCjCLlqjhK3WChnFkQ8f11kML9IBoiVTsTjKEFsugbS4/58rzFSFofoa7aO61
 ChbynK+JX7JXb1amJ4+OJ7jp9t9brac=
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com
 [209.85.216.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-106-4NfwrwguOxCXpvVOXoUuhg-1; Wed, 24 Feb 2021 19:23:10 -0500
X-MC-Unique: 4NfwrwguOxCXpvVOXoUuhg-1
Received: by mail-pj1-f72.google.com with SMTP id k11so3137852pjg.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 16:23:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nlfx0m5rFM5WgVSG9Q1ZGCqTh86/2WQ73ulkFBzW4yA=;
 b=ROWChbXT6y1P/nkUjfI1P80wWxWYReCn6NWcAYw7/6Yi6rN6kDxkeTCVjDWKfE4fXS
 FVqCTMhR+KQ/Pb+NhBSIEFU3IP5i3mFdA81WL6UT3pCR1CLQTHn2K0QkbWqkbxonTdHT
 6oggfz8ynzkE5v24OMY0XyqdkN5cN2thfxeRp5NBTnxA/11urCtYTm93S8AQDRUy+qtx
 T5DBhB8iSyW9uBHx7Rcw0R4Cp6gv4ik2B25LYkvDLmO/N5jMp+yq5vYNHkpRXJAIkKhN
 CYj/dOdxqO+yBbReWh0ehXBrGGUoUef6VhnbPNkalaMi0gy32r3km/x/gcKw1Gd/p218
 pXFg==
X-Gm-Message-State: AOAM532tApNsFyO3TJS3hVX5VxwwMvbAyibjFMq3+qWBl6QzJrPHWq95
 9pcbXz9M2tV/IOmby1iLHZcPJnKJwoWJ9jsXIfZbqOHk9uv+QS1iRUBcJZcUVhTOasen+CwZ88y
 DVfBmqIC7jYcwlg3/MTZcbu8F2Zp1Pw==
X-Received: by 2002:a63:505d:: with SMTP id q29mr491808pgl.218.1614212589260; 
 Wed, 24 Feb 2021 16:23:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz7LlUqC5xsHipm3PaWqEcn1NiBEW73IT1af1+fd2VqIOGg8iehmhU7p2EfqiZeIpVsWrH2cg==
X-Received: by 2002:a63:505d:: with SMTP id q29mr491779pgl.218.1614212588805; 
 Wed, 24 Feb 2021 16:23:08 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id w25sm4052439pfn.106.2021.02.24.16.23.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Feb 2021 16:23:08 -0800 (PST)
Date: Thu, 25 Feb 2021 08:21:01 +0800
From: Coiby Xu <coxu@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210225002101.hvbpq7f6zbvylqy4@Rk>
References: <20210222070701.16416-1-coxu@redhat.com>
 <20210222070701.16416-5-coxu@redhat.com>
 <20210223122207.08835e0b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210224114141.ziywca4dvn5fs6js@Rk>
 <20210224084841.50620776@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
In-Reply-To: <20210224084841.50620776@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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

On Wed, Feb 24, 2021 at 08:48:41AM -0800, Jakub Kicinski wrote:
>On Wed, 24 Feb 2021 19:41:41 +0800 Coiby Xu wrote:
>> On Tue, Feb 23, 2021 at 12:22:07PM -0800, Jakub Kicinski wrote:
>> >On Mon, 22 Feb 2021 15:07:01 +0800 Coiby Xu wrote:
>> >> i40iw consumes huge amounts of memory. For example, on a x86_64 machine,
>> >> i40iw consumed 1.5GB for Intel Corporation Ethernet Connection X722 for
>> >> for 1GbE while "craskernel=auto" only reserved 160M. With the module
>> >> parameter "resource_profile=2", we can reduce the memory usage of i40iw
>> >> to ~300M which is still too much for kdump.
>> >>
>> >> Disabling the client registration would spare us the client interface
>> >> operation open , i.e., i40iw_open for iwarp/uda device. Thus memory is
>> >> saved for kdump.
>> >>
>> >> Signed-off-by: Coiby Xu <coxu@redhat.com>
>> >
>> >Is i40iw or whatever the client is not itself under a CONFIG which
>> >kdump() kernels could be reasonably expected to disable?
>> >
>>
>> I'm not sure if I understand you correctly. Do you mean we shouldn't
>> disable i40iw for kdump?
>
>Forgive my ignorance - are the kdump kernels separate builds?
>

AFAIK we don't build a kernel exclusively for kdump. 

>If they are it'd be better to leave the choice of enabling RDMA
>to the user - through appropriate Kconfig options.
>

i40iw is usually built as a loadable module. So if we want to leave the
choce of enabling RDMA to the user, we could exclude this driver when
building the initramfs for kdump, for example, dracut provides the 
omit_drivers option for this purpose. 

On the other hand, the users expect "crashkernel=auto" to work out of
the box. So i40iw defeats this purpose. 

I'll discuss with my Red Hat team and the Intel team about whether RDMA
is needed for kdump. Thanks for bringing up this issue!

-- 
Best regards,
Coiby

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
