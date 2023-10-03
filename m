Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6817B7028
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 19:44:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11DEC41F7A;
	Tue,  3 Oct 2023 17:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11DEC41F7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696355046;
	bh=K4ySelLA2Ptmh1pZ/ZnU6tlY/DSN62WhZVon+3sjvbs=;
	h=From:To:In-reply-to:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=goj4efzgHIcXUOvF8jrDG0sZXl1NoosMQ9dCXHuqgwhwRkfDcRE10vzfLQo4wdZr8
	 scxyG4wSQaHj52BzNc3gzwe52EV/hWPIrDqxtcU1GNsgFroSoR6gFpNz8IA5G8ksND
	 EKOYsGruJuQFUELbS1MdDYduGQWtdZWd6PIiUkNkFv4OZhmqFtWFP/OT1bEtK7YXq2
	 btp1Hpr5LTX+M9M5DsaxBmYQzdc3SbEsSn8y2eGLjmwPE0yzJ7gAEA8/ntjoLw/omj
	 0phlLmACmeL4wc2hwuYF4I/aLrLB+ahb1EZFixkxNCNkcL/7pb4WrscfIgBIk5X/7I
	 P3sUudsOyxtYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VmGE5rSqE3t9; Tue,  3 Oct 2023 17:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B133415F0;
	Tue,  3 Oct 2023 17:44:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B133415F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E12C1BF376
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12DF3416CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:43:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12DF3416CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y7cVg8-DJkWZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 17:43:57 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDC8D415F0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:43:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDC8D415F0
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id F31C23F627
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 17:43:53 +0000 (UTC)
Received: by mail-pg1-f198.google.com with SMTP id
 41be03b00d2f7-55afcc54d55so46377a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Oct 2023 10:43:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696355032; x=1696959832;
 h=message-id:date:content-transfer-encoding:content-id:mime-version
 :comments:references:in-reply-to:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RekqBXxIuo8nUJ1wOD8QPazynzzYmeoIKII5+diCjtM=;
 b=vamcCOkymHYWTckqguaoabcZgarKvta4T91OlOtKIAAAaT2+PG+ePEZjFV8PEcZnTP
 Eg3tB0Uo6UgejVZQnf7pipzNq8jiFsTAMiNLudDWrR9LlUH+bkegj8asVB6c8gDEY+qP
 NjrLCGv8NBdrO8BCElmDtz4tlxtHaPouBk/VSGkLCkJniYKanh0ovHjrB5d2So4s53TA
 P4dDIUy02oYA3cmrXv3YrzhjnvPU6cEGOlNCVwEeln29qIeEGSdWYoYpai709pXw4gGB
 wHUyCKv5+9JVUDhwdIqxvjGfENVyR/tDVpp9b4xUZTToZUDlcp2kdYlYkwi1zfs04kTF
 AMqg==
X-Gm-Message-State: AOJu0Yzlxkj5F5Lf16AuVgKTWpyl/O3qnxMWL7OO25Cru+ellJEOvyVO
 ibSzwoCB7XUuKxR7SWRV4SJMTRwiNCdghSZPBac9xxy4v/1hkLRH++dKoWRurTp6hc3yksnfwsF
 9bURxrlNOz1KPOx2A/Sz0JjHR/ZtwXtUKoOwr7JzssgUK0HI=
X-Received: by 2002:a17:90a:6b08:b0:277:422d:3a0f with SMTP id
 v8-20020a17090a6b0800b00277422d3a0fmr5126856pjj.17.1696355032648; 
 Tue, 03 Oct 2023 10:43:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGf+mJNCF8GOIgzfEETYZUhbEzNCAt0tEO+UwMr96ToEKnZHXBX0JVvdaGx2aQGr46KMJUqHA==
X-Received: by 2002:a17:90a:6b08:b0:277:422d:3a0f with SMTP id
 v8-20020a17090a6b0800b00277422d3a0fmr5126815pjj.17.1696355032293; 
 Tue, 03 Oct 2023 10:43:52 -0700 (PDT)
Received: from famine.localdomain ([50.125.80.253])
 by smtp.gmail.com with ESMTPSA id
 19-20020a17090a001300b00279951c719fsm2043254pja.35.2023.10.03.10.43.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Oct 2023 10:43:51 -0700 (PDT)
Received: by famine.localdomain (Postfix, from userid 1000)
 id 661365FEAC; Tue,  3 Oct 2023 10:43:51 -0700 (PDT)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id 5DCC59FAAE;
 Tue,  3 Oct 2023 10:43:51 -0700 (PDT)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-reply-to: <d0dc80a2-6958-5cc1-b75e-2f1dd513f826@intel.com>
References: <20231002200232.3682771-1-jesse.brandeburg@intel.com>
 <17923.1696290586@famine> <d0dc80a2-6958-5cc1-b75e-2f1dd513f826@intel.com>
Comments: In-reply-to Jesse Brandeburg <jesse.brandeburg@intel.com>
 message dated "Mon, 02 Oct 2023 22:50:27 -0700."
X-Mailer: MH-E 8.6+git; nmh 1.6; Emacs 29.0.50
MIME-Version: 1.0
Content-ID: <789.1696355031.1@famine>
Date: Tue, 03 Oct 2023 10:43:51 -0700
Message-ID: <791.1696355031@famine>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1696355034;
 bh=RekqBXxIuo8nUJ1wOD8QPazynzzYmeoIKII5+diCjtM=;
 h=From:To:cc:Subject:In-reply-to:References:MIME-Version:
 Content-Type:Date:Message-ID;
 b=b/jFWKo9XX2cCl+X70MC493XMTU4UVwVY3Ur0Cr/9x5i6hFBHjH2dfQNAS3nAP+IS
 Igx5lTabdpGjWnWmq6b69y04XpVLlCFmuMbQY06CFGAXQX/ugoR2Y47duVJNRtNLc0
 Y1t8ZzQJUcAPAqhmwweXSw9Wlo+uiHXaLFmJ1aYki/5XnPcv1MrEnaK92Xrrd1+wIZ
 z/DEKL7JxW7rq26OdlNza0130VoRFCY2N0ESOtPQMEvyiFTxWY5J52lD9vgataUvqD
 JxvnamshxzP1PxxgZfqAR6csHBmc1qyDIstaCmVncxrZ1l6eJbAqf54sCRLWR05yY9
 MGkq+BWcnImbg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=b/jFWKo9
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: reset first in crash
 dump kernels
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
Cc: pmenzel@molgen.mpg.de, Vishal
 Agrawal <vagrawal@redhat.com>, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, jkc@redhat.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jesse Brandeburg <jesse.brandeburg@intel.com> wrote:

>On 10/2/2023 4:49 PM, Jay Vosburgh wrote:
>> Jesse Brandeburg <jesse.brandeburg@intel.com> wrote:
>> 
>>> When the system boots into the crash dump kernel after a panic, the ice
>>> networking device may still have pending transactions that can cause errors
>>> or machine checks when the device is re-enabled. This can prevent the crash
>>> dump kernel from loading the driver or collecting the crash data.
>>>
>>> To avoid this issue, perform a function level reset (FLR) on the ice device
>>> via PCIe config space before enabling it on the crash kernel. This will
>>> clear any outstanding transactions and stop all queues and interrupts.
>>> Restore the config space after the FLR, otherwise it was found in testing
>>> that the driver wouldn't load successfully.
>> 
>> 	How does this differ from ading "reset_devices" to the crash
>> kernel command line, per Documentation/admin-guide/kdump/kdump.rst?
>> 
>> 	-J
>> 
>
>Hi Jay, thanks for the question.
>
>That parameter is new to me, and upon looking into the parameter, it
>doesn't seem well documented. It also seems to only be used by storage
>controllers, and would basically result in the same code I already have.
>I suspect since it's a driver opt-in to the parameter, the difference
>would be 1) requiring the user to give the reset_devices parameter on
>the kdump kernel line (which is a big "if") and 2) less readable code
>than the current which does:
>
>if (is_kdump_kernel())
>...
>
>and the reset_devices way would be:
>
>if (reset_devices)
>...
>
>There are several other examples in the networking tree using the method
>I ended up with in this change. I'd argue the preferred way in the
>networking tree is to use is_kdump_kernel(), which I like better because
>it doesn't require user input and shouldn't have any bad side effects
>from doing an extra reset in kdump.
>
>Also, this issue has already been tested to be fixed by this patch.
>
>I'd prefer to keep the patch as is, if that's ok with you.

	Thanks for the explanation; I was wondering if this methodology
would conflict or compete with reset_devices in some way, or if there's
a risk that the FLR would in some cases make things worse.

	Since many device drivers have this sort of logic in them, would
it make sense to put this in the PCI core somewhere to FLR at probe time
if is_kdump_kernel()?  The manifestation of the issue that I'm familiar
with is that DMA requests from the device arrive after the IOMMU DMA
remapping tables have been reset during kexec, leading to failures.

	Regardless, the patch looks fine to me given the current state
of kdump / kexec / reset_devices.

Reviewed-by: Jay Vosburgh <jay.vosburgh@canonical.com>

	-J

---
	-Jay Vosburgh, jay.vosburgh@canonical.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
