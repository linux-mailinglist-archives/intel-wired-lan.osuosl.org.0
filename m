Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A73E932B64C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 10:45:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A719347E72;
	Wed,  3 Mar 2021 09:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YcCJDagURSzH; Wed,  3 Mar 2021 09:45:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6303047E3B;
	Wed,  3 Mar 2021 09:45:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2CFDF1BF5A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 09:45:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 284A96063A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 09:45:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yQ4FfDrweZMZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 09:45:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFD5760606
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 09:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614764745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cshNihsT70kA34dCPACF1CCG63bGyROQDb6b88wnZvg=;
 b=g5n58Ezx4h13LG/qOLk10HdCAdh1WLdYSPw0gWbs8wsDQ89KQY/GhwC83Yn0ZgZOqqlgQs
 Alyb8ZCShye7dI1K9BSB0ebYUGAr0rEYzIHnQPTqnulawc7Vnul4toYO7uMbz4YfKgiVHN
 4picZsTL3MkbIsG0f2HY6j0ZENzmbnA=
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-15-ShIu-htVOwWapr9X3X7BCA-1; Wed, 03 Mar 2021 04:45:41 -0500
X-MC-Unique: ShIu-htVOwWapr9X3X7BCA-1
Received: by mail-pl1-f198.google.com with SMTP id p15so13027264plq.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Mar 2021 01:45:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cshNihsT70kA34dCPACF1CCG63bGyROQDb6b88wnZvg=;
 b=jQXlmy34D1CNHARGC+aUpIUKsXogIkdsUEWr2hj9psw4Voz/f2pHiU6GZ7oREKQhHL
 2x5rkT7kS5A2mjJVcQG5DS8sz7vDmDdQUwNS5E+TFmyYKLCNh8re5/Zo7tjX1n5R2Nk2
 WkoZ4K44L3mNBjCAO6qdy4LydYId5WdzN4tKCMRO5greKn2QsA//zw00U14OpScsNgWM
 VQuAIxmYEaL19iSkxLxHQwKqbKFMH7s/I1HQNzM02YoyYJH103J9C/QPT1SA/kz2XrPQ
 HPMC6wHnOp8jBhF7QbDKuNprljTEyQ1umc/887vKNMu6PJvFkB4FpyQyjPQQsz3iDnR4
 BQ1Q==
X-Gm-Message-State: AOAM530AukeDIbp8Pn8+BNaLekNz4YbFCxWr5cqASGB0KrmgJoSbdtjw
 ThUakZHDGL0PCvEeMwuRciCVBwx6HSsrOksBGqpPUKP42O5J7kwH+BN+3bjfKqzOdFE/bqCF/Jd
 GkZCk6HymvODgQDbMC492wzscoWtRTA==
X-Received: by 2002:a17:902:968e:b029:e3:a9b8:60b4 with SMTP id
 n14-20020a170902968eb02900e3a9b860b4mr7325528plp.61.1614764740219; 
 Wed, 03 Mar 2021 01:45:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyhxw9k+pawLT6E5fKwXWvbGnWK52c80D5k5VW6r+WMv0sxJ0XABOxB+c5SZrcGoJ6gjtIdiA==
X-Received: by 2002:a17:902:968e:b029:e3:a9b8:60b4 with SMTP id
 n14-20020a170902968eb02900e3a9b860b4mr7325512plp.61.1614764739880; 
 Wed, 03 Mar 2021 01:45:39 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id x9sm6135360pjp.29.2021.03.03.01.45.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 01:45:39 -0800 (PST)
Date: Wed, 3 Mar 2021 17:44:58 +0800
From: Coiby Xu <coxu@redhat.com>
To: Bhupesh SHARMA <bhupesh.linux@gmail.com>
Message-ID: <20210303094458.7yootsa5dvn5cnba@Rk>
References: <20210222070701.16416-1-coxu@redhat.com>
 <20210222070701.16416-5-coxu@redhat.com>
 <CAFTCetS=G_JV4Ax6=Ty20uifoL1jscrqPGhdh7d2k+t=0d+L8g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFTCetS=G_JV4Ax6=Ty20uifoL1jscrqPGhdh7d2k+t=0d+L8g@mail.gmail.com>
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
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Bhupesh,

Glad to meet you here:)

On Thu, Feb 25, 2021 at 03:41:55PM +0530, Bhupesh SHARMA wrote:
>Hello Coiby,
>
>On Mon, Feb 22, 2021 at 12:40 PM Coiby Xu <coxu@redhat.com> wrote:
>>
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
>> ---
>>  drivers/net/ethernet/intel/i40e/i40e_client.c | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
>> index a2dba32383f6..aafc2587f389 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_client.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
>> @@ -4,6 +4,7 @@
>>  #include <linux/list.h>
>>  #include <linux/errno.h>
>>  #include <linux/net/intel/i40e_client.h>
>> +#include <linux/crash_dump.h>
>>
>>  #include "i40e.h"
>>  #include "i40e_prototype.h"
>> @@ -741,6 +742,12 @@ int i40e_register_client(struct i40e_client *client)
>>  {
>>         int ret = 0;
>>
>> +       /* Don't open i40iw client for kdump because i40iw will consume huge
>> +        * amounts of memory.
>> +        */
>> +       if (is_kdump_kernel())
>> +               return ret;
>> +
>
>Since crashkernel size can be manually set on the command line by a
>user, and some users might be fine with a ~300M memory usage by i40iw
>client [with resource_profile=2"], in my view, disabling the client
>for all kdump cases seems too restrictive.
>
>We can probably check the crash kernel size allocated (
>$ cat /sys/kernel/kexec_crash_size) and then make a decision
>accordingly, so for example something like:
>
> +       if (is_kdump_kernel() && kexec_crash_size < 512M)
> +               return ret;
>
>What do you think?
>

Thanks for the suggestion! After having a discussion with the team, we
think it's better to not intervene i40iw in the kernel space. Actually 
when kexec-tools is building initramfs for kdump, i40iw is not included 
by default unless a user explicitly asks to include i40iw by changing 
/etc/kdump.conf, i.e., adding 'dracut_args --add-drivers "i40iw"'.


>Regards,
>Bhupesh
>
>>         if (!client) {
>>                 ret = -EIO;
>>                 goto out;
>> --
>> 2.30.1
>>
>>
>> _______________________________________________
>> kexec mailing list
>> kexec@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/kexec
>

-- 
Best regards,
Coiby

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
